inline.NumInlined: 1817
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvh6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_11APFloatBase12roundingModeE:bb.a
bb.h:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN4llvh5APIntD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.au) #25
  %.pre11 = load i32, ptr %i.g, align 8, !tbaa !20
  %.pre13 = load ptr, ptr %4, align 8
  br label %_ZN4llvh5APIntD2Ev.exit6

_ZN4llvh5APIntD2Ev.exit6:                         ; preds = %_ZN4llvh5APIntD2Ev.exit.thread20, %bb.i, %bb.h, %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit.thread, %bb.d, %_ZN4llvh5APIntC2ERKS0_.exit
  %i.aw = phi ptr [ %.pre13, %bb.i ], [ %i.at, %bb.h ], [ %i.at, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ao, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre14, %bb.d ], [ %.pre14, %_ZN4llvh5APIntC2ERKS0_.exit ], [ %i.ar, %_ZN4llvh5APIntD2Ev.exit.thread20 ]
  %i.ax = phi i32 [ %.pre11, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre12, %bb.d ], [ %.pre12, %_ZN4llvh5APIntC2ERKS0_.exit ], [ %i.ak, %_ZN4llvh5APIntD2Ev.exit.thread20 ]
  %i.ay = icmp ult i32 %i.ax, 65
  %.0.i = select i1 %i.ay, ptr %4, ptr %i.aw
  %i.az = call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.0.i, i32 noundef %i.f, i32 noundef %3)
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !20
  %i.bb = icmp ugt i32 %i.ba, 64
  br i1 %i.bb, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit7

bb.j:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit6
  %i.bc = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4llvh5APIntD2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #25
  br label %_ZN4llvh5APIntD2Ev.exit7

_ZN4llvh5APIntD2Ev.exit7:                         ; preds = %_ZN4llvh5APIntD2Ev.exit6, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK4llvh6detail9IEEEFloat28convertToSignExtendedIntegerENS_15MutableArrayRefImEEjbNS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef writeonly captures(none) initializes((0, 1)) %6) local_unnamed_addr #2 align 2 {
bb.a:
  store i8 0, ptr %6, align 1, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %switch = icmp samesign ult i8 %i.c, 2
  br i1 %switch, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %3, 63
  %i.e = lshr i32 %i.d, 6                         ; 9 uses
  %i.f = icmp eq i8 %i.c, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %1, i64 noundef 0, i32 noundef %i.e) #26
  %i.g = load i8, ptr %i.a, align 2
  %i.h = lshr i8 %i.g, 3
  %.lobit = and i8 %i.h, 1
  %i.i = xor i8 %.lobit, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 4 uses
  %i.m = add i32 %i.l, -64
  %i.n = icmp ult i32 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i.i = select i1 %i.n, ptr %i.p, ptr %i.o    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %1, i64 noundef 0, i32 noundef %i.e) #26
  %i.t = load ptr, ptr %0, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = load i16, ptr %i.q, align 8, !tbaa !19
  %i.x = xor i16 %i.w, -1
  %i.y = sext i16 %i.x to i32
  %i.z = add i32 %i.v, %i.y
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = zext nneg i16 %i.r to i32               ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 4 uses
  %.not = icmp ugt i32 %3, %i.aa
  br i1 %.not, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp ult i32 %i.ab, %i.l
  br i1 %i.ac, label %bb.h, label %.thread.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = sub nuw i32 %i.l, %i.ab                 ; 2 uses
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %1, i32 noundef %i.e, ptr noundef %.0.i.i, i32 noundef %i.ab, i32 noundef %i.ad) #26
  br label %.thread

.thread.thread:                                   ; preds = %bb.g
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %1, i32 noundef %i.e, ptr noundef %.0.i.i, i32 noundef %i.l, i32 noundef 0) #26
  %i.ae = load ptr, ptr %0, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = sub i32 %i.ab, %i.ag
  tail call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.e, i32 noundef %i.ah) #26
  br label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

.thread:                                          ; preds = %bb.h, %bb.e
  %.246 = phi i32 [ %i.z, %bb.e ], [ %i.ad, %bb.h ] ; 6 uses
  %.not53 = icmp eq i32 %.246, 0
  br i1 %.not53, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ai = load ptr, ptr %0, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = add i32 %i.ak, 64                       ; 2 uses
  %i.am = lshr i32 %i.al, 6
  %i.an = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i, i32 noundef %i.am) #26 ; 2 uses
  %.not.i = icmp ugt i32 %.246, %i.an
  br i1 %.not.i, label %bb.j, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = add nuw i32 %i.an, 1
  %i.ap = icmp eq i32 %.246, %i.ao
  br i1 %i.ap, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = and i32 %i.al, -64
  %.not12.i = icmp ugt i32 %.246, %i.aq
  br i1 %.not12.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add i32 %.246, -1
  %i.as = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i, i32 noundef %i.ar) #26
  %.not13.i = icmp eq i32 %i.as, 0
  br i1 %.not13.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.l
  %.not84.a = phi i1 [ false, %bb.l ], [ false, %bb.j ], [ true, %bb.m ]
  %.0.i.ph = phi i32 [ 3, %bb.l ], [ 2, %bb.j ], [ 1, %bb.m ]
  switch i32 %5, label %bb.t [
    i32 4, label %bb.o
    i32 0, label %bb.p
    i32 3, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
    i32 1, label %bb.s
    i32 2, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %.not84.a, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77

bb.p:                                             ; preds = %bb.n
  switch i32 %.0.i.ph, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit [
    i32 3, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77
    i32 2, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.a, align 2
  %i.au = and i8 %i.at, 7
  %.not8.i = icmp eq i8 %i.au, 3
  br i1 %.not8.i, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %0, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = add i32 %i.ax, -64
  %i.az = icmp ult i32 %i.ay, -128
  %i.ba = load ptr, ptr %i.o, align 8
  %.0.i.i.i = select i1 %i.az, ptr %i.ba, ptr %i.o
  %i.bb = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i.i, i32 noundef %.246) #26
  %.not83.a = icmp eq i32 %i.bb, 0
  br i1 %.not83.a, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77

bb.s:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.a, align 2
  %i.bd = and i8 %i.bc, 8
  %.not.i63 = icmp eq i8 %i.bd, 0
  br i1 %.not.i63, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.t:                                             ; preds = %bb.n
  unreachable

_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit: ; preds = %bb.n
  %i.be = load i8, ptr %i.a, align 2
  %i.bf = and i8 %i.be, 8
  %.not82 = icmp eq i8 %i.bf, 0
  br i1 %.not82, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77

_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77: ; preds = %bb.p, %bb.r, %bb.s, %bb.o, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit
  %i.bg = tail call noundef i64 @_ZN4llvh5APInt9tcAddPartEPmmj(ptr noundef %1, i64 noundef 1, i32 noundef %i.e) #26
  %.not55 = icmp eq i64 %i.bg, 0
  br i1 %.not55, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.ab

_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit: ; preds = %bb.p, %bb.q, %bb.n, %bb.r, %bb.s, %bb.o, %bb.i, %.thread.thread, %.thread, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77
  %i.bh = phi i1 [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77 ], [ false, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit ], [ true, %.thread.thread ], [ true, %.thread ], [ true, %bb.i ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.p ] ; 2 uses
  %i.bi = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %1, i32 noundef %i.e) #26 ; 2 uses
  %i.bj = add i32 %i.bi, 1                        ; 4 uses
  %i.bk = load i8, ptr %i.a, align 2
  %i.bl = and i8 %i.bk, 8
  %.not56 = icmp eq i8 %i.bl, 0
  br i1 %.not56, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  br i1 %4, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not58 = icmp eq i32 %i.bj, 0
  br i1 %.not58, label %bb.z, label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bm = icmp eq i32 %i.bj, %3
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bn = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %1, i32 noundef %i.e) #26
  %.not59.not = icmp eq i32 %i.bn, %i.bi
  br i1 %.not59.not, label %bb.z, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %.old = icmp ugt i32 %i.bj, %3
  br i1 %.old, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  tail call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef %1, i32 noundef %i.e) #26
  br i1 %i.bh, label %.sink.split, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  %i.bo = xor i1 %4, true
  %i.bp = zext i1 %i.bo to i32
  %i.bq = add i32 %3, %i.bp
  %.not57 = icmp ult i32 %i.bj, %i.bq             ; 2 uses
  %brmerge.not = and i1 %i.bh, %.not57
  %.mux = select i1 %.not57, i32 16, i32 1
  br i1 %brmerge.not, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %bb.z, %bb.aa, %bb.c
  %.sink = phi i8 [ %i.i, %bb.c ], [ 1, %bb.aa ], [ 1, %bb.z ]
  store i8 %.sink, ptr %6, align 1, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa, %bb.a, %bb.f, %bb.v, %bb.x, %bb.y, %bb.z, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77
  %.2 = phi i32 [ 1, %bb.y ], [ %.mux, %bb.aa ], [ 16, %bb.z ], [ 1, %_ZNK4llvh6detail9IEEEFloat17roundAwayFromZeroENS_11APFloatBase12roundingModeENS_12lostFractionEj.exit.thread77 ], [ 1, %bb.f ], [ 1, %bb.a ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %.sink.split ]
  ret i32 %.2
}

declare void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -8
  %i.d = or disjoint i8 %i.c, 2
  store i8 %i.d, ptr %i.a, align 2
  %i.e = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %1, i32 noundef %2) #26 ; 2 uses
  %i.f = add i32 %i.e, 1                          ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 6 uses
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i = select i1 %i.k, ptr %i.m, ptr %i.l      ; 2 uses
  %i.n = add i32 %i.i, 64
  %i.o = lshr i32 %i.n, 6                         ; 2 uses
  %.not = icmp ugt i32 %i.i, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i32 %i.e to i16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = sub nuw i32 %i.f, %i.i                   ; 5 uses
  %i.s = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %1, i32 noundef %2) #26 ; 2 uses
  %.not.i = icmp ugt i32 %i.r, %i.s
  br i1 %.not.i, label %bb.c, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw i32 %i.s, 1
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl i32 %2, 6
  %.not12.i = icmp ugt i32 %i.r, %i.v
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i32 %i.r, -1
  %i.x = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %1, i32 noundef %i.w) #26
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.f, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i25 = phi i32 [ 1, %bb.f ], [ 0, %bb.b ], [ 2, %bb.c ], [ 3, %bb.e ]
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %.0.i, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.i, i32 noundef %i.r) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.i to i16
  %i.z = add i16 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !19
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %.0.i, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.f, i32 noundef 0) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  %.0 = phi i32 [ %.0.i25, %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit ], [ 0, %bb.g ]
  %i.ab = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %3, i32 noundef %.0)
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %2, 6
  %i.b = add i32 %i.a, -1
  %i.c = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %1, i32 noundef %i.b) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = or i8 %i.e, 8
  store i8 %i.f, ptr %i.d, align 2
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #24 ; 4 uses
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef nonnull %i.i, ptr noundef %1, i32 noundef %2) #26
  tail call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef nonnull %i.i, i32 noundef %2) #26
  %i.j = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i, i32 noundef %2, i32 noundef %4)
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -9
  store i8 %i.m, ptr %i.k, align 2
  %i.n = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  ret i32 %.0
}

declare void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -8
  %i.d = or disjoint i8 %i.c, 2
  store i8 %i.d, ptr %i.a, align 2
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = add i32 %i.g, -64
  %i.i = icmp ult i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %i.l = add i32 %i.g, 64
  %i.m = lshr i32 %i.l, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i, i64 noundef 0, i32 noundef %i.m) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 0, ptr %i.n, align 8, !tbaa !19
  %i.o = load ptr, ptr %0, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 3 uses
  %i.r = add i32 %i.q, -64
  %i.s = icmp ult i32 %i.r, -128
  %i.t = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.s, ptr %i.t, ptr %i.j
  %i.u = and i32 %i.q, -64
  %i.v = add i32 %i.u, 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %.not23.i = icmp samesign eq i64 %2, 0
  br i1 %.not23.i, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.024.i = phi ptr [ %i.y, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.x = load i8, ptr %.024.i, align 1, !tbaa !18
  switch i8 %i.x, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit [
    i8 48, label %bb.b
    i8 46, label %.preheader
  ]

.preheader:                                       ; preds = %.lr.ph.i
  %.1.i135 = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %.not20.i136 = icmp eq ptr %.1.i135, %i.w
  br i1 %.not20.i136, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph138

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph.i, !llvm.loop !63

bb.c:                                             ; preds = %.lr.ph138
  %.1.i = getelementptr inbounds nuw i8, ptr %.1.i137, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %.1.i, %i.w
  br i1 %.not20.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph138, !llvm.loop !64

.lr.ph138:                                        ; preds = %.preheader, %bb.c
  %.1.i137 = phi ptr [ %.1.i, %bb.c ], [ %.1.i135, %.preheader ] ; 3 uses
  %i.z = load i8, ptr %.1.i137, align 1, !tbaa !18
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %bb.c, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit, !llvm.loop !64

_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit: ; preds = %.lr.ph.i, %.lr.ph138, %bb.a
  %.4 = phi ptr [ %i.w, %bb.a ], [ %.024.i, %.lr.ph138 ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.2.i = phi ptr [ %1, %bb.a ], [ %.1.i137, %.lr.ph138 ], [ %.024.i, %.lr.ph.i ] ; 4 uses
  %.not86 = icmp eq ptr %.2.i, %i.w
  br i1 %.not86, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit
  %i.ab = ptrtoint ptr %i.w to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit
  %.04091 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 4 uses
  %.04190 = phi ptr [ %.2.i, %.lr.ph ], [ %.142, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 5 uses
  %.04489 = phi i32 [ %i.v, %.lr.ph ], [ %.246, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 3 uses
  %.04788 = phi i1 [ false, %.lr.ph ], [ %.249, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 3 uses
  %.087 = phi ptr [ %.4, %.lr.ph ], [ %.1, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 7 uses
  %i.ac = load i8, ptr %.04190, align 1, !tbaa !18 ; 5 uses
  %i.ad = icmp eq i8 %i.ac, 46
  br i1 %i.ad, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN4llvh6detail9IEEEFloat4nextEb:bb.a
  %i.at = load ptr, ptr %0, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.aw = add i32 %i.av, -64
  %i.ax = icmp ult i32 %i.aw, -128
  %i.ay = load ptr, ptr %i.am, align 8
  %.0.i.i9 = select i1 %i.ax, ptr %i.ay, ptr %i.am ; 3 uses
  %i.az = add i32 %i.av, 64
  %i.ba = lshr i32 %i.az, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i9, i64 noundef 0, i32 noundef %i.ba) #26
  %.pre42.i = load ptr, ptr %0, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre42.i, i64 4
  %.pre43.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !7 ; 2 uses
  %i.bb = add i32 %.pre43.i, -2
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i.i9, i32 noundef %i.bb) #26
  %i.bc = load ptr, ptr %0, align 8, !tbaa !13
  %i.bd = icmp eq ptr %i.bc, @_ZN4llvhL20semX87DoubleExtendedE
  br i1 %i.bd, label %bb.f, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

bb.f:                                             ; preds = %bb.e
  %i.be = add i32 %.pre43.i, -1
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i.i9, i32 noundef %i.be) #26
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bf = and i8 %i.d, -16
  %i.bg = or disjoint i8 %i.bf, 2
  store i8 %i.bg, ptr %i.e, align 2
  %i.bh = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.bj, ptr %i.bk, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 2 uses
  %i.bn = add i32 %i.bm, -64
  %i.bo = icmp ult i32 %i.bn, -128
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %.0.i.i10 = select i1 %i.bo, ptr %i.bq, ptr %i.bp
  %i.br = add i32 %i.bm, 64
  %i.bs = lshr i32 %i.br, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i10, i64 noundef 1, i32 noundef %i.bs) #26
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bt = and i8 %i.d, 6
  %spec.select.i.not.i.i.not = icmp eq i8 %i.bt, 0
  br i1 %spec.select.i.not.i.i.not, label %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !19
  %i.bw = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !11
  %i.bz = icmp eq i16 %i.bv, %i.by
  br i1 %i.bz, label %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit, label %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit:    ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7  ; 2 uses
  %i.cc = add i32 %i.cb, -64
  %i.cd = icmp ult i32 %i.cc, -128
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %.0.i.i.i.i = select i1 %i.cd, ptr %i.cf, ptr %i.ce
  %i.cg = add i32 %i.cb, 64
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = tail call noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr noundef %.0.i.i.i.i, i32 noundef %i.ch) #26
  %i.cj = icmp ne i32 %i.ci, 0
  %.pre46 = load i8, ptr %i.e, align 2            ; 2 uses
  %i.ck = and i8 %.pre46, 8
  %.not38 = icmp eq i8 %i.ck, 0
  %or.cond81 = select i1 %i.cj, i1 true, i1 %.not38
  br i1 %or.cond81, label %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7  ; 2 uses
  %i.co = add i32 %i.cn, -64
  %i.cp = icmp ult i32 %i.co, -128
  %i.cq = load ptr, ptr %i.ce, align 8
  %.0.i11 = select i1 %i.cp, ptr %i.cq, ptr %i.ce
  %i.cr = add i32 %i.cn, 64
  %i.cs = lshr i32 %i.cr, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i11, i64 noundef 0, i32 noundef %i.cs) #26
  %i.ct = load i8, ptr %i.e, align 2
  %i.cu = and i8 %i.ct, -8
  %i.cv = or disjoint i8 %i.cu, 3
  store i8 %i.cv, ptr %i.e, align 2
  store i16 0, ptr %i.bu, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread: ; preds = %bb.h, %bb.i, %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit
  %i.cw = phi i8 [ %i.d, %bb.h ], [ %i.d, %bb.i ], [ %.pre46, %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit ] ; 6 uses
  %i.cx = and i8 %i.cw, 6
  %spec.select.i.not.i.i12 = icmp ne i8 %i.cx, 0
  %i.cy = and i8 %i.cw, 7
  %i.cz = icmp ne i8 %i.cy, 3
  %i.da = and i1 %spec.select.i.not.i.i12, %i.cz
  %i.db = load ptr, ptr %0, align 8, !tbaa !13    ; 8 uses
  br i1 %i.da, label %bb.k, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread

bb.k:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !19 ; 4 uses
  %i.de = load i16, ptr %i.db, align 4, !tbaa !10
  %i.df = icmp eq i16 %i.dd, %i.de
  br i1 %i.df, label %bb.l, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread35

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7  ; 3 uses
  %i.di = add i32 %i.dh, -64
  %i.dj = icmp ult i32 %i.di, -128
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %.0.i.i.i.i13 = select i1 %i.dj, ptr %i.dl, ptr %i.dk ; 3 uses
  %i.dm = add i32 %i.dh, 64                       ; 2 uses
  %i.dn = lshr i32 %i.dm, 6                       ; 2 uses
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  %.not1418.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not1418.not.i.i, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %wide.trip.count.i.i = zext i32 %i.do to i64    ; 2 uses
  br label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit, label %.lr.ph.i.i, !llvm.loop !31

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i13, i64 %indvars.iv.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !22
  %.not.i.i = icmp eq i64 %i.dq, -1
  br i1 %.not.i.i, label %bb.m, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.loopexit

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit:      ; preds = %bb.m, %bb.l
  %.pre-phi.i.i = phi i64 [ 0, %bb.l ], [ %wide.trip.count.i.i, %bb.m ]
  %i.dr = and i32 %i.dm, -64
  %.neg.i.i = add i32 %i.dh, 63
  %i.ds = sub i32 %.neg.i.i, %i.dr
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nsw i64 -1, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i13, i64 %.pre-phi.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !22
  %i.dx = or i64 %i.dw, %i.du
  %.not15.i.i = icmp ne i64 %i.dx, -1
  %i.dy = and i8 %i.cw, 8                         ; 2 uses
  %i.dz = icmp ne i8 %i.dy, 0
  %or.cond = or i1 %i.dz, %.not15.i.i
  br i1 %or.cond, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i.i.i13, i64 noundef 0, i32 noundef %i.dn) #26
  %i.ea = load i8, ptr %i.e, align 2
  %i.eb = and i8 %i.ea, -8
  store i8 %i.eb, ptr %i.e, align 2
  %i.ec = load ptr, ptr %0, align 8, !tbaa !13
  %i.ed = load i16, ptr %i.ec, align 4, !tbaa !10
  %i.ee = add i16 %i.ed, 1
  store i16 %i.ee, ptr %i.dc, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.loopexit: ; preds = %.lr.ph.i.i
  %.pre61 = and i8 %i.cw, 8
  br label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread: ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.loopexit, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit
  %.pre-phi = phi i8 [ %.pre61, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.loopexit ], [ %i.dy, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit ]
  %.not41 = icmp eq i8 %.pre-phi, 0
  br i1 %.not41, label %.thread36, label %bb.o

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread35: ; preds = %bb.k
  %i.ef = and i8 %i.cw, 8
  %.not40 = icmp eq i8 %i.ef, 0
  br i1 %.not40, label %.thread36, label %bb.o

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread: ; preds = %_ZNK4llvh6detail9IEEEFloat10isSmallestEv.exit.thread
  %i.eg = and i8 %i.cw, 8
  %.not39 = icmp eq i8 %i.eg, 0
  br i1 %.not39, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread, label %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread._crit_edge

_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread._crit_edge: ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre48 = load i16, ptr %.phi.trans.insert47, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread._crit_edge, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread35, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread
  %i.eh = phi i16 [ %.pre48, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread._crit_edge ], [ %i.dd, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread35 ], [ %i.dd, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !11
  %.not = icmp eq i16 %i.eh, %i.ek
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.pre51 = load i32, ptr %.phi.trans.insert50, align 4, !tbaa !7 ; 3 uses
  %2 = add i32 %.pre51, -64
  %3 = icmp ult i32 %2, -128
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %5 = load ptr, ptr %4, align 8
  %.0.i20 = select i1 %3, ptr %5, ptr %4          ; 6 uses
  %6 = add i32 %.pre51, 64                        ; 2 uses
  %7 = lshr i32 %6, 6                             ; 4 uses
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = add nsw i32 %7, -1                      ; 2 uses
  %.not1417.not.i = icmp eq i32 %i.el, 0
  br i1 %.not1417.not.i, label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %wide.trip.count.i = zext i32 %i.el to i64      ; 2 uses
  br label %.lr.ph.i

bb.q:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit, label %.lr.ph.i, !llvm.loop !32

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0.i20, i64 %indvars.iv.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !22
  %.not.i16 = icmp eq i64 %i.en, 0
  br i1 %.not.i16, label %bb.q, label %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread

_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread: ; preds = %.lr.ph.i
  %i.eo = tail call noundef i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr noundef nonnull %.0.i20, i64 noundef 1, i32 noundef %7) #26 ; 0 uses
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit: ; preds = %bb.q, %bb.p
  %.pre-phi.i = phi i64 [ 0, %bb.p ], [ %wide.trip.count.i, %bb.q ]
  %i.ep = and i32 %6, -64
  %reass.sub = sub i32 %i.ep, %.pre51
  %i.eq = add i32 %reass.sub, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = lshr i64 -1, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0.i20, i64 %.pre-phi.i
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !22
  %i.ev = and i64 %i.eu, %i.es
  %.not15.i = icmp eq i64 %i.ev, 0
  %i.ew = tail call noundef i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr noundef %.0.i20, i64 noundef 1, i32 noundef %7) #26 ; 0 uses
  br i1 %.not15.i, label %bb.r, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

bb.r:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit
  %i.ex = load ptr, ptr %0, align 8, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = add i32 %i.ez, -1
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef nonnull %.0.i20, i32 noundef %i.fa) #26
  %i.fb = load i16, ptr %i.ei, align 8, !tbaa !19
  %i.fc = add i16 %i.fb, -1
  store i16 %i.fc, ptr %i.ei, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

.critedge:                                        ; preds = %bb.o
  %8 = tail call noundef i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr noundef %.0.i20, i64 noundef 1, i32 noundef %7) #26 ; 0 uses
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

.thread36:                                        ; preds = %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread35
  %i.fd = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !11
  %i.ff = icmp eq i16 %i.dd, %i.fe
  br i1 %i.ff, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit:    ; preds = %.thread36
  %i.fg = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7  ; 2 uses
  %i.fi = add i32 %i.fh, -64
  %i.fj = icmp ult i32 %i.fi, -128
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.0.i.i.i19 = select i1 %i.fj, ptr %i.fl, ptr %i.fk
  %i.fm = add i32 %i.fh, -1
  %i.fn = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i.i19, i32 noundef %i.fm) #26
  %i.fo = icmp eq i32 %i.fn, 0
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !13  ; 2 uses
  br i1 %i.fo, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge: ; preds = %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 4
  %.pre58 = load i32, ptr %.phi.trans.insert57, align 4, !tbaa !7 ; 2 uses
  %.pre60 = load ptr, ptr %i.fk, align 8
  %.pre62 = add i32 %.pre58, -64
  %.pre64 = add i32 %.pre58, 64
  %.pre66 = lshr i32 %.pre64, 6
  br label %.critedge.a

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread: ; preds = %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread, %.thread36
  %i.fp = phi ptr [ %i.db, %.thread36 ], [ %i.db, %_ZNK4llvh6detail9IEEEFloat9isLargestEv.exit.thread.thread ], [ %.pre56, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7  ; 3 uses
  %i.fs = add i32 %i.fr, -64                      ; 3 uses
  %i.ft = icmp ult i32 %i.fs, -128
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 3 uses
  %.0.i.i.i20 = select i1 %i.ft, ptr %i.fv, ptr %i.fu ; 4 uses
  %i.fw = add i32 %i.fr, 64                       ; 2 uses
  %i.fx = lshr i32 %i.fw, 6                       ; 4 uses
  %i.fy = add nsw i32 %i.fx, -1                   ; 2 uses
  %.not1418.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not1418.not.i, label %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread
  %wide.trip.count.i22 = zext i32 %i.fy to i64    ; 2 uses
  br label %.lr.ph.i23

bb.s:                                             ; preds = %.lr.ph.i23
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i22
  br i1 %exitcond.not.i28, label %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit, label %.lr.ph.i23, !llvm.loop !31

.lr.ph.i23:                                       ; preds = %bb.s, %.lr.ph.preheader.i21
  %indvars.iv.i24 = phi i64 [ 0, %.lr.ph.preheader.i21 ], [ %indvars.iv.next.i27, %bb.s ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i20, i64 %indvars.iv.i24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !22
  %.not.i25 = icmp eq i64 %i.ga, -1
  br i1 %.not.i25, label %bb.s, label %.critedge.a

_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit: ; preds = %bb.s, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread
  %.pre-phi.i30 = phi i64 [ 0, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread ], [ %wide.trip.count.i22, %bb.s ]
  %i.gb = and i32 %i.fw, -64
  %.neg.i = add i32 %i.fr, 63
  %i.gc = sub i32 %.neg.i, %i.gb
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nsw i64 -1, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i20, i64 %.pre-phi.i30
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !22
  %i.gh = or i64 %i.gg, %i.ge
  %.not15.i31 = icmp eq i64 %i.gh, -1
  br i1 %.not15.i31, label %bb.t, label %.critedge.a

bb.t:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef nonnull %.0.i.i.i20, i64 noundef 0, i32 noundef %i.fx) #26
  %i.gi = load ptr, ptr %0, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = add i32 %i.gk, -1
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef nonnull %.0.i.i.i20, i32 noundef %i.gl) #26
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 8, !tbaa !19
  %i.go = add i16 %i.gn, 1
  store i16 %i.go, ptr %i.gm, align 8, !tbaa !19
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

.critedge.a:                                      ; preds = %.lr.ph.i23, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge, %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit
  %.pre-phi67 = phi i32 [ %.pre66, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge ], [ %i.fx, %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit ], [ %i.fx, %.lr.ph.i23 ]
  %.pre-phi63 = phi i32 [ %.pre62, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge ], [ %i.fs, %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit ], [ %i.fs, %.lr.ph.i23 ]
  %i.gp = phi ptr [ %.pre60, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit..critedge_crit_edge ], [ %i.fv, %_ZNK4llvh6detail9IEEEFloat20isSignificandAllOnesEv.exit ], [ %i.fv, %.lr.ph.i23 ]
  %i.gq = icmp ult i32 %.pre-phi63, -128
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.i.i33 = select i1 %i.gq, ptr %i.gp, ptr %i.gr
  %i.gs = tail call noundef i64 @_ZN4llvh5APInt9tcAddPartEPmmj(ptr noundef %.0.i.i33, i64 noundef 1, i32 noundef %.pre-phi67) #26 ; 0 uses
  br label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit

_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit: ; preds = %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread, %bb.f, %bb.e, %bb.t, %.critedge.a, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit, %bb.r, %.critedge, %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit, %bb.c, %bb.n, %bb.j, %bb.g, %bb.d, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.t ], [ 0, %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit ], [ 0, %.critedge ], [ 0, %bb.r ], [ 0, %.critedge.a ], [ 1, %bb.e ], [ 1, %bb.f ], [ 0, %_ZNK4llvh6detail9IEEEFloat21isSignificandAllZerosEv.exit.thread ]
  br i1 %1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit
  %i.gt = load i8, ptr %i.e, align 2
  %i.gu = xor i8 %i.gt, 8
  store i8 %i.gu, ptr %i.e, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail9IEEEFloat9makeQuietEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %i.d = add i32 %i.c, -64
  %i.e = icmp ult i32 %i.d, -128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.0.i = select i1 %i.e, ptr %i.g, ptr %i.f
  %i.h = add i32 %i.c, -2
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i, i32 noundef %i.h) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail5frexpERKNS0_9IEEEFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias writable sret(%"class.llvh::detail::IEEEFloat") align 8 initializes((0, 8), (16, 18)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZN4llvh6detail5ilogbERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  store i32 %i.a, ptr %2, align 4, !tbaa !3
  switch i32 %i.a, label %bb.d [
    i32 -2147483648, label %bb.b
    i32 2147483647, label %bb.c
    i32 -2147483647, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %i.e = add i32 %i.d, -64
  %i.f = icmp ult i32 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.0.i.i = select i1 %i.f, ptr %i.h, ptr %i.g
  %i.i = add i32 %i.d, -2
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i.i, i32 noundef %i.i) #26
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.a, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.k = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ]
  store i32 %i.k, ptr %2, align 4, !tbaa !3
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.l = load i32, ptr %2, align 4, !tbaa !3
  %i.m = sub nsw i32 0, %i.l
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.n = load ptr, ptr %4, align 8, !tbaa !13, !noalias !163 ; 3 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !10, !noalias !163
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !11, !noalias !163
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7, !noalias !163
  %i.t = sext i16 %i.o to i32
  %i.u = xor i16 %i.q, -1
  %i.v = sext i16 %i.u to i32
  %.neg.i = add nsw i32 %i.v, %i.t
  %i.w = add i32 %.neg.i, %i.s                    ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  %i.y = sub nsw i32 -2, %i.w
  %.sroa.speculated8.i = call i32 @llvm.smax.i32(i32 %i.m, i32 %i.y)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated8.i)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !19, !noalias !163
  %i.ab = trunc i32 %.sroa.speculated.i to i16
  %i.ac = add i16 %i.aa, %i.ab
  store i16 %i.ac, ptr %i.z, align 8, !tbaa !19, !noalias !163
  %i.ad = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %3, i32 noundef 0), !noalias !163 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 2, !noalias !163 ; 2 uses
  %i.ag = and i8 %i.af, 7
  %i.ah = icmp eq i8 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %4, align 8, !tbaa !13, !noalias !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7, !noalias !163 ; 2 uses
  %i.al = add i32 %i.ak, -64
  %i.am = icmp ult i32 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !163
  %.0.i.i.i = select i1 %i.am, ptr %i.ao, ptr %i.an
  %i.ap = add i32 %i.ak, -2
  call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i.i.i, i32 noundef %i.ap) #26, !noalias !163
  %.pre.i = load i8, ptr %i.ae, align 2, !noalias !163
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.f, %bb.e
  %i.aq = phi i8 [ %.pre.i, %bb.f ], [ %i.af, %bb.e ]
  %i.ar = load ptr, ptr %4, align 8, !tbaa !13, !noalias !163
  store ptr %i.ar, ptr %0, align 8, !tbaa !13, !alias.scope !163
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !163
  store i64 %i.au, ptr %i.at, align 8, !tbaa !18, !alias.scope !163
  %i.av = load i16, ptr %i.z, align 8, !tbaa !19, !noalias !163
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.av, ptr %i.aw, align 8, !tbaa !19, !alias.scope !163
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2, !alias.scope !163
  %i.az = and i8 %i.ay, -16
  %i.ba = and i8 %i.aq, 15
  %i.bb = or disjoint i8 %i.az, %i.ba
  store i8 %i.bb, ptr %i.ax, align 2, !alias.scope !163
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #2 align 2 {
_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit2:
  store ptr %1, ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #24 ; 6 uses
  store i64 2, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 3, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 3, ptr %i.g, align 2
  store ptr %i.c, ptr %i.a, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 %2) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #24 ; 6 uses
  store i64 2, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 3, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 3, ptr %i.g, align 2
  store ptr %i.c, ptr %i.a, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsEm(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 noundef %2) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #24 ; 8 uses
  store i64 2, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.d, align 16, !tbaa !13
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 2, ptr %i.e, align 2
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef nonnull %.phi.trans.insert.i.i, i64 noundef 0, i32 noundef 1) #26, !inline_history !166
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 52, ptr %i.f, align 16, !tbaa !19
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %.0.i.i.i = select i1 %i.k, ptr %i.l, ptr %.phi.trans.insert.i.i
  store i64 %2, ptr %.0.i.i.i, align 8, !tbaa !22
  %i.m = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef 0, i32 noundef 0), !inline_history !166 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.n, align 16, !tbaa !13
end_hunk_1
