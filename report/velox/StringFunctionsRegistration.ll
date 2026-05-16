inline.NumInlined: 89673
inline.NumDeleted: 14427
begin_hunk_0_@_ZL23utf8proc_decompose_chariPilsS_:bb.a

bb.j:                                             ; preds = %bb.i
  switch i32 %0, label %bb.o [
    i32 8725, label %bb.n
    i32 8260, label %bb.n
    i32 8758, label %bb.m
    i32 12296, label %bb.l
    i32 9001, label %bb.l
    i32 8249, label %bb.l
    i32 12297, label %bb.k
    i32 9002, label %bb.k
    i32 8250, label %bb.k
    i32 8726, label %bb.z
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j
  br label %bb.z

bb.m:                                             ; preds = %bb.j
  br label %bb.z

bb.n:                                             ; preds = %bb.j, %bb.j
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.ad = and i32 %0, 2097149
  %or.cond23.peel = icmp eq i32 %i.ad, 708
  br i1 %or.cond23.peel, label %bb.z, label %switch.early.test210.peel

switch.early.test210.peel:                        ; preds = %bb.o
  switch i32 %0, label %bb.p [
    i32 8963, label %bb.z
    i32 8248, label %bb.z
  ]

bb.p:                                             ; preds = %switch.early.test210.peel
  %i.ae = icmp eq i16 %i.m, 12
  %i.af = icmp eq i32 %0, 717
  %or.cond29.peel = or i1 %i.af, %i.ae
  br i1 %or.cond29.peel, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %0, label %bb.t [
    i32 715, label %bb.s
    i32 8739, label %bb.r
    i32 8764, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %i.ag = and i16 %3, 384
  %or.cond211.not226.peel = icmp eq i16 %i.ag, 384
  %i.ah = and i16 %i.m, -2
  %or.cond32.peel = icmp eq i16 %i.ah, 24
  %or.cond212.peel = select i1 %or.cond211.not226.peel, i1 %or.cond32.peel, i1 false
  br i1 %or.cond212.peel, label %bb.z, label %.loopexit266

bb.u:                                             ; preds = %.lr.ph.preheader
  %i.ai = icmp sgt i64 %2, 0
  %.lhs.trunc = trunc nuw nsw i32 %i.n to i16     ; 4 uses
  br i1 %i.ai, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.aj = udiv i16 %.lhs.trunc, 588
  %i.ak = urem i16 %.lhs.trunc, 588
  %i.al = or disjoint i16 %i.aj, 4352
  %i.am = zext nneg i16 %i.al to i32
  store i32 %i.am, ptr %1, align 4, !tbaa !3
  %.not207 = icmp eq i64 %2, 1
  br i1 %.not207, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = udiv i16 %i.ak, 28
  %narrow = add nuw nsw i16 %i.an, 4449
  %i.ao = zext nneg i16 %narrow to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.w
  %i.aq = urem i16 %.lhs.trunc, 28                ; 2 uses
  %.not208 = icmp eq i16 %i.aq, 0
  br i1 %.not208, label %.thread217, label %bb.x

.thread:                                          ; preds = %bb.v
  %i.ar = urem i16 %.lhs.trunc, 28
  %.not208215 = icmp eq i16 %i.ar, 0
  %spec.select = select i1 %.not208215, i64 2, i64 3
  br label %.thread217

bb.x:                                             ; preds = %._crit_edge
  %i.as = icmp sgt i64 %2, 2
  br i1 %i.as, label %bb.y, label %.thread217

bb.y:                                             ; preds = %bb.x
  %narrow228 = add nuw nsw i16 %i.aq, 4519
  %i.at = zext nneg i16 %narrow228 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  br label %.thread217

bb.z:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.r, %bb.s, %bb.j, %bb.q, %bb.t, %bb.p, %switch.early.test210.peel, %switch.early.test210.peel, %bb.o, %bb.i, %switch.early.test.peel, %switch.early.test.peel, %bb.h, %bb.g
  %.tr.be.peel = phi i32 [ 39, %bb.h ], [ 45, %bb.i ], [ 94, %bb.o ], [ 47, %bb.n ], [ 58, %bb.m ], [ 60, %bb.l ], [ 62, %bb.k ], [ 126, %bb.q ], [ 95, %bb.p ], [ 10, %bb.t ], [ 96, %bb.s ], [ 124, %bb.r ], [ 92, %bb.j ], [ 94, %switch.early.test210.peel ], [ 94, %switch.early.test210.peel ], [ 39, %switch.early.test.peel ], [ 39, %switch.early.test.peel ], [ 32, %bb.g ] ; 2 uses
  %.tr231.be.peel = and i16 %3, -4097
  %i.av = zext nneg i32 %.tr.be.peel to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @_ZL20utf8proc_stage2table, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !2495
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @_ZL19utf8proc_properties, i64 %i.ay ; 3 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !44520 ; 2 uses
  %i.bb = and i16 %3, 24
  %.not = icmp ne i16 %i.bb, 0
  %i.bc = and i16 %3, 64
  %i.bd = icmp eq i16 %i.bc, 0
  %i.be = icmp ne i16 %i.ba, 0                    ; 2 uses
  %or.cond40 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond40, label %bb.aa, label %.thread217

bb.aa:                                            ; preds = %bb.z
  %i.bf = and i16 %3, 32
  %.not195 = icmp eq i16 %i.bf, 0
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = and i16 %i.bh, 4
  %.not196 = icmp eq i16 %i.bi, 0
  br i1 %.not196, label %bb.ac, label %.thread217

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = and i16 %3, 16384
  %i.bk = icmp eq i16 %i.bj, 0
  %or.cond42 = select i1 %i.bk, i1 true, i1 %i.be
  br i1 %or.cond42, label %.loopexit266, label %.thread217

.loopexit266:                                     ; preds = %bb.ac, %bb.t, %bb.f
  %.tr231245.lcssa264 = phi i16 [ %3, %bb.f ], [ %3, %bb.t ], [ %.tr231.be.peel, %bb.ac ] ; 6 uses
  %.tr244.lcssa262 = phi i32 [ %0, %bb.f ], [ %0, %bb.t ], [ %.tr.be.peel, %bb.ac ] ; 2 uses
  %.lcssa260 = phi ptr [ %i.l, %bb.f ], [ %i.l, %bb.t ], [ %i.az, %bb.ac ] ; 4 uses
  %.lcssa257 = phi i16 [ %i.m, %bb.f ], [ %i.m, %bb.t ], [ %i.ba, %bb.ac ]
  %.not.lcssa252 = phi i1 [ %.not.peel, %bb.f ], [ %.not.peel, %bb.t ], [ %.not, %bb.ac ]
  %i.bl = and i16 %.tr231245.lcssa264, 8192
  %.not200 = icmp ne i16 %i.bl, 0
  %i.bm = add i16 %.lcssa257, -6
  %or.cond38 = icmp ult i16 %i.bm, 3
  %or.cond213 = select i1 %.not200, i1 %or.cond38, i1 false
  br i1 %or.cond213, label %.thread217, label %bb.ad

bb.ad:                                            ; preds = %.loopexit266
  %i.bn = and i16 %.tr231245.lcssa264, 1024
  %.not201 = icmp eq i16 %i.bn, 0
  br i1 %.not201, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 10
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !44521 ; 2 uses
  %.not202 = icmp eq i16 %i.bp, -1
  br i1 %.not202, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = tail call fastcc noundef i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %i.bp, ptr noundef %1, i64 noundef %2, i16 noundef signext %.tr231245.lcssa264, ptr noundef %4)
  br label %.thread217

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not.lcssa252, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 8
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !44522 ; 2 uses
  %.not203 = icmp eq i16 %i.bs, -1
  br i1 %.not203, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !44523
  %.not204 = icmp ne i16 %i.bu, 0
  %i.bv = and i16 %.tr231245.lcssa264, 4
  %.not205 = icmp eq i16 %i.bv, 0
  %or.cond214 = and i1 %.not205, %.not204
  br i1 %or.cond214, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = tail call fastcc noundef i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %i.bs, ptr noundef %1, i64 noundef %2, i16 noundef signext %.tr231245.lcssa264, ptr noundef %4)
  br label %.thread217

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.bx = and i16 %.tr231245.lcssa264, 2048
  %.not206 = icmp eq i16 %i.bx, 0
  br i1 %.not206, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa260, i64 21
  %5 = load i8, ptr %i.by, align 1
  %i.bz = zext i8 %5 to i32
  %i.ca = load i32, ptr %4, align 4, !tbaa !3
  %i.cb = tail call fastcc noundef zeroext i1 @_ZL23grapheme_break_extendediiPi(i32 noundef %i.ca, i32 noundef %i.bz, ptr noundef %4)
  br i1 %i.cb, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.cc = icmp sgt i64 %2, 0
  br i1 %i.cc, label %bb.an, label %.thread217

bb.an:                                            ; preds = %bb.am
  store i32 -1, ptr %1, align 4, !tbaa !3
  %.not227 = icmp eq i64 %2, 1
  br i1 %.not227, label %.thread217, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.tr244.lcssa262, ptr %i.cd, align 4, !tbaa !3
  br label %.thread217

.critedge:                                        ; preds = %bb.al, %bb.ak
  %i.ce = icmp sgt i64 %2, 0
  br i1 %i.ce, label %bb.ap, label %.thread217

bb.ap:                                            ; preds = %.critedge
  store i32 %.tr244.lcssa262, ptr %1, align 4, !tbaa !3
  br label %.thread217

.thread217:                                       ; preds = %bb.b, %bb.d, %bb.e, %bb.z, %bb.ab, %bb.ac, %bb.a, %.thread, %bb.am, %bb.ao, %bb.an, %.critedge, %bb.ap, %.loopexit266, %._crit_edge, %bb.y, %bb.x, %bb.aj, %bb.af
  %.2 = phi i64 [ 3, %bb.x ], [ 0, %.loopexit266 ], [ %i.bw, %bb.aj ], [ 2, %bb.an ], [ 2, %bb.ao ], [ %spec.select, %.thread ], [ 1, %.critedge ], [ 1, %bb.ap ], [ 3, %bb.y ], [ 2, %._crit_edge ], [ %i.bq, %bb.af ], [ 2, %bb.am ], [ -4, %bb.a ], [ -4, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.ac ], [ -4, %bb.z ], [ 0, %bb.ab ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -2, -9223372036854775808) i64 @_ZL30seqindex_write_char_decomposedtPilsS_(i16 noundef zeroext %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef %2, i16 noundef signext %3, ptr noundef nonnull captures(none) %4) unnamed_addr #41 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 8191
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZL18utf8proc_sequences, i64 %i.c ; 3 uses
  %i.e = lshr i32 %i.a, 13                        ; 2 uses
  %i.f = icmp eq i32 %i.e, 7
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.d, align 2, !tbaa !2495
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ]  ; 2 uses
  %.021 = phi i32 [ %i.h, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.12229.us = phi i32 [ %i.ac, %bb.e ], [ %.021, %bb.c ] ; 2 uses
  %.02328.us = phi i64 [ %i.z, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.127.us = phi ptr [ %i.ab, %bb.e ], [ %.0, %bb.c ] ; 3 uses
  %i.j = load i16, ptr %.127.us, align 2, !tbaa !2495
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = and i32 %i.k, 63488
  %i.m = icmp eq i32 %i.l, 55296
  br i1 %i.m, label %bb.d, label %_ZL21seqindex_decode_entryPPKt.exit.us

bb.d:                                             ; preds = %.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.127.us, i64 2 ; 2 uses
  %i.o = shl nuw nsw i32 %i.k, 10
  %i.p = and i32 %i.o, 1047552
  %i.q = load i16, ptr %i.n, align 2, !tbaa !2495
  %i.r = and i16 %i.q, 1023
  %i.s = zext nneg i16 %i.r to i32
  %i.t = add nuw nsw i32 %i.p, 65536
  %i.u = or disjoint i32 %i.t, %i.s
  br label %_ZL21seqindex_decode_entryPPKt.exit.us

_ZL21seqindex_decode_entryPPKt.exit.us:           ; preds = %bb.d, %.split.us
  %.226.us = phi ptr [ %i.n, %bb.d ], [ %.127.us, %.split.us ]
  %.0.i.us = phi i32 [ %i.u, %bb.d ], [ %i.k, %.split.us ]
  %i.v = icmp sgt i64 %2, %.02328.us
  %i.w = sub nsw i64 %2, %.02328.us
  %i.x = select i1 %i.v, i64 %i.w, i64 0
  %i.y = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i.us, ptr noundef null, i64 noundef %i.x, i16 noundef signext %3, ptr noundef %4)
  %i.z = add nsw i64 %i.y, %.02328.us             ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  br i1 %i.aa, label %bb.e, label %.split31.us

bb.e:                                             ; preds = %_ZL21seqindex_decode_entryPPKt.exit.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.226.us, i64 2
  %i.ac = add nsw i32 %.12229.us, -1
  %i.ad = icmp sgt i32 %.12229.us, 0
  br i1 %i.ad, label %.split.us, label %.split31.us, !llvm.loop !44524

.split:                                           ; preds = %bb.c, %bb.g
  %.12229 = phi i32 [ %i.ay, %bb.g ], [ %.021, %bb.c ] ; 2 uses
  %.02328 = phi i64 [ %i.av, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.127 = phi ptr [ %i.ax, %bb.g ], [ %.0, %bb.c ] ; 3 uses
  %i.ae = load i16, ptr %.127, align 2, !tbaa !2495
  %i.af = zext i16 %i.ae to i32                   ; 3 uses
  %i.ag = and i32 %i.af, 63488
  %i.ah = icmp eq i32 %i.ag, 55296
  br i1 %i.ah, label %bb.f, label %_ZL21seqindex_decode_entryPPKt.exit

bb.f:                                             ; preds = %.split
  %i.ai = getelementptr inbounds nuw i8, ptr %.127, i64 2 ; 2 uses
  %i.aj = shl nuw nsw i32 %i.af, 10
  %i.ak = and i32 %i.aj, 1047552
  %i.al = load i16, ptr %i.ai, align 2, !tbaa !2495
  %i.am = and i16 %i.al, 1023
  %i.an = zext nneg i16 %i.am to i32
  %i.ao = add nuw nsw i32 %i.ak, 65536
  %i.ap = or disjoint i32 %i.ao, %i.an
  br label %_ZL21seqindex_decode_entryPPKt.exit

_ZL21seqindex_decode_entryPPKt.exit:              ; preds = %.split, %bb.f
  %.226 = phi ptr [ %i.ai, %bb.f ], [ %.127, %.split ]
  %.0.i = phi i32 [ %i.ap, %bb.f ], [ %i.af, %.split ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02328
  %i.ar = icmp sgt i64 %2, %.02328
  %i.as = sub nsw i64 %2, %.02328
  %i.at = select i1 %i.ar, i64 %i.as, i64 0
  %i.au = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i, ptr noundef nonnull %i.aq, i64 noundef %i.at, i16 noundef signext %3, ptr noundef %4)
  %i.av = add nsw i64 %i.au, %.02328              ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.g, label %.split31.us

bb.g:                                             ; preds = %_ZL21seqindex_decode_entryPPKt.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.226, i64 2
  %i.ay = add nsw i32 %.12229, -1
  %i.az = icmp sgt i32 %.12229, 0
  br i1 %i.az, label %.split, label %.split31.us, !llvm.loop !44524

.split31.us:                                      ; preds = %_ZL21seqindex_decode_entryPPKt.exit, %bb.g, %bb.e, %_ZL21seqindex_decode_entryPPKt.exit.us
  %.us-phi = phi i64 [ %i.z, %bb.e ], [ -2, %_ZL21seqindex_decode_entryPPKt.exit.us ], [ -2, %_ZL21seqindex_decode_entryPPKt.exit ], [ %i.av, %bb.g ]
  ret i64 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZL23grapheme_break_extendediiPi(i32 noundef %0, i32 noundef range(i32 0, 256) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #44 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !3      ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i32 %0, i32 %i.a        ; 8 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZL21grapheme_break_simpleii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 2
  %i.e = icmp eq i32 %1, 3
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.b, -2
  %or.cond3.i = icmp ult i32 %i.f, 3
  %i.g = add nsw i32 %1, -2
  %or.cond5.i = icmp ult i32 %i.g, 3
  %or.cond57.i = select i1 %or.cond3.i, i1 true, i1 %or.cond5.i
  br i1 %or.cond57.i, label %_ZL21grapheme_break_simpleii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %bb.g [
    i32 6, label %bb.e
    i32 9, label %bb.f
    i32 7, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %1, 254
  %or.cond7.i = icmp eq i32 %i.h, 6
  %i.i = add nsw i32 %1, -9
  %i.j = icmp ult i32 %i.i, 2
  %or.cond11.i = or i1 %or.cond7.i, %i.j
  br i1 %or.cond11.i, label %_ZL21grapheme_break_simpleii.exit, label %.thread.i

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.k = add nsw i32 %1, -7
  %or.cond15.i = icmp ult i32 %i.k, 2
  br i1 %or.cond15.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = and i32 %i.b, -3
  %or.cond17.i = icmp eq i32 %i.l, 8
  %i.m = icmp eq i32 %1, 8
  %or.cond19.i = and i1 %i.m, %or.cond17.i
  br i1 %or.cond19.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.e
  %i.n = icmp eq i32 %1, 5
  %i.o = and i32 %1, 253
  %i.p = icmp eq i32 %i.o, 12
  %or.cond23.i = or i1 %i.n, %i.p
  %i.q = icmp eq i32 %i.b, 13
  %or.cond25.i = or i1 %or.cond23.i, %i.q
  br i1 %or.cond25.i, label %_ZL21grapheme_break_simpleii.exit, label %bb.h

bb.h:                                             ; preds = %.thread.i
  %i.r = icmp eq i32 %i.b, 20
  %i.s = icmp eq i32 %1, 19
  %or.cond27.i = and i1 %i.s, %i.r
  br i1 %or.cond27.i, label %_ZL21grapheme_break_simpleii.exit.thread, label %bb.i
end_hunk_0
