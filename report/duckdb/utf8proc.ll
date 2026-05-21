inline.NumInlined: 34
inline.NumDeleted: 5
begin_hunk_0_@_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_:bb.a
  %or.cond211.peel = select i1 %or.cond210.not225.peel, i1 %or.cond32.peel, i1 false
  br i1 %or.cond211.peel, label %bb.z, label %.loopexit265

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
  %.not206 = icmp eq i64 %2, 1
  br i1 %.not206, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = udiv i16 %i.ak, 28
  %narrow = add nuw nsw i16 %i.an, 4449
  %i.ao = zext nneg i16 %narrow to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.w
  %i.aq = urem i16 %.lhs.trunc, 28                ; 2 uses
  %.not207 = icmp eq i16 %i.aq, 0
  br i1 %.not207, label %.thread216, label %bb.x

.thread:                                          ; preds = %bb.v
  %i.ar = urem i16 %.lhs.trunc, 28
  %.not207214 = icmp eq i16 %i.ar, 0
  %spec.select = select i1 %.not207214, i64 2, i64 3
  br label %.thread216

bb.x:                                             ; preds = %._crit_edge
  %i.as = icmp sgt i64 %2, 2
  br i1 %i.as, label %bb.y, label %.thread216

bb.y:                                             ; preds = %bb.x
  %narrow227 = add nuw nsw i16 %i.aq, 4519
  %i.at = zext nneg i16 %narrow227 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  br label %.thread216

bb.z:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.r, %bb.s, %bb.j, %bb.q, %bb.t, %bb.p, %switch.early.test209.peel, %switch.early.test209.peel, %bb.o, %bb.i, %switch.early.test.peel, %switch.early.test.peel, %bb.h, %bb.g
  %.tr.be.peel = phi i32 [ 39, %bb.h ], [ 45, %bb.i ], [ 94, %bb.o ], [ 47, %bb.n ], [ 58, %bb.m ], [ 60, %bb.l ], [ 62, %bb.k ], [ 126, %bb.q ], [ 95, %bb.p ], [ 10, %bb.t ], [ 96, %bb.s ], [ 124, %bb.r ], [ 92, %bb.j ], [ 94, %switch.early.test209.peel ], [ 94, %switch.early.test209.peel ], [ 39, %switch.early.test.peel ], [ 39, %switch.early.test.peel ], [ 32, %bb.g ] ; 2 uses
  %.tr230.be.peel = and i32 %3, -4097
  %i.av = zext nneg i32 %.tr.be.peel to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr @_ZN6duckdbL20utf8proc_stage2tableE, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !8
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr @_ZN6duckdbL19utf8proc_propertiesE, i64 %i.ay ; 3 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !14 ; 2 uses
  %i.bb = and i32 %3, 24
  %.not = icmp ne i32 %i.bb, 0
  %i.bc = and i32 %3, 64
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = icmp ne i16 %i.ba, 0                    ; 2 uses
  %or.cond40 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond40, label %bb.aa, label %.thread216

bb.aa:                                            ; preds = %bb.z
  %i.bf = and i32 %3, 32
  %.not194 = icmp eq i32 %i.bf, 0
  br i1 %.not194, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = and i16 %i.bh, 4
  %.not195 = icmp eq i16 %i.bi, 0
  br i1 %.not195, label %bb.ac, label %.thread216

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = and i32 %3, 16384
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond42 = select i1 %i.bk, i1 true, i1 %i.be
  br i1 %or.cond42, label %.loopexit265, label %.thread216

.loopexit265:                                     ; preds = %bb.ac, %bb.t, %bb.f
  %.tr230244.lcssa263 = phi i32 [ %3, %bb.f ], [ %3, %bb.t ], [ %.tr230.be.peel, %bb.ac ] ; 6 uses
  %.tr243.lcssa261 = phi i32 [ %0, %bb.f ], [ %0, %bb.t ], [ %.tr.be.peel, %bb.ac ] ; 2 uses
  %.lcssa259 = phi ptr [ %i.l, %bb.f ], [ %i.l, %bb.t ], [ %i.az, %bb.ac ] ; 4 uses
  %.lcssa256 = phi i16 [ %i.m, %bb.f ], [ %i.m, %bb.t ], [ %i.ba, %bb.ac ]
  %.not.lcssa251 = phi i1 [ %.not.peel, %bb.f ], [ %.not.peel, %bb.t ], [ %.not, %bb.ac ]
  %i.bl = and i32 %.tr230244.lcssa263, 8192
  %.not199 = icmp ne i32 %i.bl, 0
  %i.bm = add i16 %.lcssa256, -6
  %or.cond38 = icmp ult i16 %i.bm, 3
  %or.cond212 = select i1 %.not199, i1 %or.cond38, i1 false
  br i1 %or.cond212, label %.thread216, label %bb.ad

bb.ad:                                            ; preds = %.loopexit265
  %i.bn = and i32 %.tr230244.lcssa263, 1024
  %.not200 = icmp eq i32 %i.bn, 0
  br i1 %.not200, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa259, i64 10
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !15 ; 2 uses
  %.not201 = icmp eq i16 %i.bp, -1
  br i1 %.not201, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = tail call fastcc noundef i64 @_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_(i16 noundef zeroext %i.bp, ptr noundef %1, i64 noundef %2, i32 noundef %.tr230244.lcssa263, ptr noundef %4)
  br label %.thread216

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not.lcssa251, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa259, i64 8
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !16 ; 2 uses
  %.not202 = icmp eq i16 %i.bs, -1
  br i1 %.not202, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa259, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !17
  %.not203 = icmp ne i16 %i.bu, 0
  %i.bv = and i32 %.tr230244.lcssa263, 4
  %.not204 = icmp eq i32 %i.bv, 0
  %or.cond213 = and i1 %.not204, %.not203
  br i1 %or.cond213, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = tail call fastcc noundef i64 @_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_(i16 noundef zeroext %i.bs, ptr noundef %1, i64 noundef %2, i32 noundef %.tr230244.lcssa263, ptr noundef %4)
  br label %.thread216

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.bx = and i32 %.tr230244.lcssa263, 2048
  %.not205 = icmp eq i32 %i.bx, 0
  br i1 %.not205, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa259, i64 20
  %i.bz = load i16, ptr %i.by, align 4            ; 2 uses
  %i.ca = lshr i16 %i.bz, 8
  %i.cb = and i16 %i.ca, 63
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = lshr i16 %i.bz, 14
  %i.ce = zext nneg i16 %i.cd to i32
  %i.cf = tail call fastcc noundef zeroext i1 @_ZN6duckdbL23grapheme_break_extendedEiiiiPi(i32 noundef 0, i32 noundef %i.cc, i32 noundef 0, i32 noundef %i.ce, ptr noundef %4)
  br i1 %i.cf, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.cg = icmp sgt i64 %2, 0
  br i1 %i.cg, label %bb.an, label %.thread216

bb.an:                                            ; preds = %bb.am
  store i32 -1, ptr %1, align 4, !tbaa !3
  %.not226 = icmp eq i64 %2, 1
  br i1 %.not226, label %.thread216, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.tr243.lcssa261, ptr %i.ch, align 4, !tbaa !3
  br label %.thread216

.critedge:                                        ; preds = %bb.al, %bb.ak
  %i.ci = icmp sgt i64 %2, 0
  br i1 %i.ci, label %bb.ap, label %.thread216

bb.ap:                                            ; preds = %.critedge
  store i32 %.tr243.lcssa261, ptr %1, align 4, !tbaa !3
  br label %.thread216

.thread216:                                       ; preds = %bb.b, %bb.d, %bb.e, %bb.z, %bb.ab, %bb.ac, %bb.a, %.thread, %bb.am, %bb.ao, %bb.an, %.critedge, %bb.ap, %.loopexit265, %._crit_edge, %bb.y, %bb.x, %bb.aj, %bb.af
  %.2 = phi i64 [ 3, %bb.x ], [ 0, %.loopexit265 ], [ %i.bw, %bb.aj ], [ 2, %bb.an ], [ 2, %bb.ao ], [ %spec.select, %.thread ], [ 1, %.critedge ], [ 1, %bb.ap ], [ 3, %bb.y ], [ 2, %._crit_edge ], [ %i.bq, %bb.af ], [ 2, %bb.am ], [ -4, %bb.a ], [ -4, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.ac ], [ -4, %bb.z ], [ 0, %bb.ab ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i64 -2, -9223372036854775808) i64 @_ZN6duckdbL30seqindex_write_char_decomposedEtPilNS_17utf8proc_option_tES0_(i16 noundef zeroext %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, ptr noundef captures(address_is_null) %4) unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = and i32 %i.a, 16383
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZN6duckdbL18utf8proc_sequencesE, i64 %i.c ; 3 uses
  %i.e = lshr i32 %i.a, 14                        ; 2 uses
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.d, align 2, !tbaa !8
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ]  ; 2 uses
  %.020 = phi i32 [ %i.h, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.e
  %.12128.us = phi i32 [ %i.aa, %bb.e ], [ %.020, %bb.c ] ; 2 uses
  %.02227.us = phi i64 [ %i.x, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.126.us = phi ptr [ %i.z, %bb.e ], [ %.0, %bb.c ] ; 3 uses
  %i.j = load i16, ptr %.126.us, align 2, !tbaa !8
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = and i32 %i.k, 63488
  %i.m = icmp eq i32 %i.l, 55296
  br i1 %i.m, label %bb.d, label %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us

bb.d:                                             ; preds = %.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %.126.us, i64 2 ; 2 uses
  %i.o = shl nuw nsw i32 %i.k, 10
  %i.p = and i32 %i.o, 1047552
  %i.q = load i16, ptr %i.n, align 2, !tbaa !8
  %i.r = and i16 %i.q, 1023
  %i.s = zext nneg i16 %i.r to i32
  %i.t = add nuw nsw i32 %i.p, 65536
  %i.u = or disjoint i32 %i.t, %i.s
  br label %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us

_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us:  ; preds = %bb.d, %.split.us
  %.225.us = phi ptr [ %i.n, %bb.d ], [ %.126.us, %.split.us ]
  %.0.i.us = phi i32 [ %i.u, %bb.d ], [ %i.k, %.split.us ]
  %5 = tail call i64 @llvm.smin.i64(i64 %.02227.us, i64 %2)
  %i.v = sub nsw i64 %2, %5
  %i.w = tail call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %.0.i.us, ptr noundef null, i64 noundef %i.v, i32 noundef %3, ptr noundef %4)
  %i.x = add nsw i64 %i.w, %.02227.us             ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.e, label %.split30.us

bb.e:                                             ; preds = %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us
  %i.z = getelementptr inbounds nuw i8, ptr %.225.us, i64 2
  %i.aa = add nsw i32 %.12128.us, -1
  %i.ab = icmp sgt i32 %.12128.us, 0
  br i1 %i.ab, label %.split.us, label %.split30.us, !llvm.loop !18

.split:                                           ; preds = %bb.c, %bb.g
  %.12128 = phi i32 [ %i.au, %bb.g ], [ %.020, %bb.c ] ; 2 uses
  %.02227 = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %.126 = phi ptr [ %i.at, %bb.g ], [ %.0, %bb.c ] ; 3 uses
  %i.ac = load i16, ptr %.126, align 2, !tbaa !8
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = and i32 %i.ad, 63488
  %i.af = icmp eq i32 %i.ae, 55296
  br i1 %i.af, label %bb.f, label %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit

bb.f:                                             ; preds = %.split
  %i.ag = getelementptr inbounds nuw i8, ptr %.126, i64 2 ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ad, 10
  %i.ai = and i32 %i.ah, 1047552
  %i.aj = load i16, ptr %i.ag, align 2, !tbaa !8
  %i.ak = and i16 %i.aj, 1023
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = add nuw nsw i32 %i.ai, 65536
  %i.an = or disjoint i32 %i.am, %i.al
  br label %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit

_ZN6duckdbL21seqindex_decode_entryEPPKt.exit:     ; preds = %.split, %bb.f
  %.225 = phi ptr [ %i.ag, %bb.f ], [ %.126, %.split ]
  %.0.i = phi i32 [ %i.an, %bb.f ], [ %i.ad, %.split ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02227
  %6 = tail call i64 @llvm.smin.i64(i64 %.02227, i64 %2)
  %i.ap = sub nsw i64 %2, %6
  %i.aq = tail call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %.0.i, ptr noundef nonnull %i.ao, i64 noundef %i.ap, i32 noundef %3, ptr noundef %4)
  %i.ar = add nsw i64 %i.aq, %.02227              ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.g, label %.split30.us

bb.g:                                             ; preds = %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.225, i64 2
  %i.au = add nsw i32 %.12128, -1
  %i.av = icmp sgt i32 %.12128, 0
  br i1 %i.av, label %.split, label %.split30.us, !llvm.loop !18

.split30.us:                                      ; preds = %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit, %bb.g, %bb.e, %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us
  %.us-phi = phi i64 [ %i.x, %bb.e ], [ -2, %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit.us ], [ -2, %_ZN6duckdbL21seqindex_decode_entryEPPKt.exit ], [ %i.ar, %bb.g ]
  ret i64 %.us-phi
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -9223372036854775808, 1152921504606846976) i64 @_ZN6duckdb18utf8proc_decomposeEPKhlPilNS_17utf8proc_option_tE(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef captures(address_is_null) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -9223372036854775808, 1152921504606846976) i64 @_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef captures(address_is_null) %2, i64 noundef %3, i32 noundef %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = and i32 %4, 24                           ; 2 uses
  %or.cond.not = icmp eq i32 %i.c, 24
  %i.d = and i32 %4, 8216
  %or.cond85 = icmp eq i32 %i.d, 8192
  %or.cond = or i1 %or.cond.not, %or.cond85
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.e = and i32 %4, 1
  %.not79 = icmp eq i32 %i.e, 0
  %.not81 = icmp eq ptr %5, null                  ; 2 uses
  %.not82 = icmp eq ptr %2, null                  ; 3 uses
  br i1 %.not79, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.g
  %.064.us = phi i64 [ %i.i, %bb.g ], [ 0, %bb.b ] ; 4 uses
  %.061.us = phi i64 [ %i.s, %bb.g ], [ 0, %bb.b ] ; 4 uses
  %.not80.us = icmp slt i64 %.064.us, %1
  br i1 %.not80.us, label %bb.c, label %.split94.us

bb.c:                                             ; preds = %.split.us
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.064.us
  %i.g = sub nsw i64 %1, %.064.us
  %i.h = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a)
  %i.i = add nsw i64 %i.h, %.064.us
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 %5(i32 noundef %i.j, ptr noundef %6) ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061.us
  %i.o = select i1 %.not82, ptr null, ptr %i.n
  %7 = call i64 @llvm.smin.i64(i64 %.061.us, i64 %3)
  %i.p = sub nsw i64 %3, %7
  %i.q = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.m, ptr noundef %i.o, i64 noundef %i.p, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i64 %i.q, %.061.us           ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %.thread, label %.split.us, !llvm.loop !20

.split:                                           ; preds = %bb.b
  br i1 %.not81, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.k
  %.064.us97 = phi i64 [ %i.w, %bb.k ], [ 0, %.split ] ; 2 uses
  %.061.us98 = phi i64 [ %i.ag, %bb.k ], [ 0, %.split ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.064.us97
  %i.v = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.u, i64 noundef -1, ptr noundef nonnull %i.a)
  %i.w = add nsw i64 %i.v, %.064.us97             ; 2 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %.split.split.us
  %i.z = icmp slt i64 %i.w, 0
  br i1 %i.z, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.x, 0
  br i1 %i.aa, label %.split94.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061.us98
  %i.ac = select i1 %.not82, ptr null, ptr %i.ab
  %8 = call i64 @llvm.smin.i64(i64 %.061.us98, i64 %3)
  %i.ad = sub nsw i64 %3, %8
  %i.ae = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ad, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw nsw i64 %i.ae, %.061.us98       ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1152921504606846975
  br i1 %i.ah, label %.thread, label %.split.split.us, !llvm.loop !20

.split.split:                                     ; preds = %.split, %bb.o
  %.064 = phi i64 [ %i.ak, %bb.o ], [ 0, %.split ] ; 2 uses
  %.061 = phi i64 [ %i.av, %bb.o ], [ 0, %.split ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.064
  %i.aj = call noundef i64 @_ZN6duckdb16utf8proc_iterateEPKhlPi(ptr noundef %i.ai, i64 noundef -1, ptr noundef nonnull %i.a)
  %i.ak = add nsw i64 %i.aj, %.064                ; 2 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.l

bb.l:                                             ; preds = %.split.split
  %i.an = icmp slt i64 %i.ak, 0
  br i1 %i.an, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp eq i32 %i.al, 0
  br i1 %i.ao, label %.split94.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = call noundef i32 %5(i32 noundef %i.al, ptr noundef %6) ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.061
  %i.ar = select i1 %.not82, ptr null, ptr %i.aq
  %9 = call i64 @llvm.smin.i64(i64 %.061, i64 %3)
  %i.as = sub nsw i64 %3, %9
  %i.at = call noundef i64 @_ZN6duckdb23utf8proc_decompose_charEiPilNS_17utf8proc_option_tES0_(i32 noundef %i.ap, ptr noundef %i.ar, i64 noundef %i.as, i32 noundef %4, ptr noundef nonnull %i.b) ; 3 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nuw nsw i64 %i.at, %.061            ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 1152921504606846975
  br i1 %i.aw, label %.thread, label %.split.split, !llvm.loop !20

.thread:                                          ; preds = %bb.l, %.split.split, %bb.o, %bb.n, %bb.k, %bb.j, %bb.h, %.split.split.us, %bb.c, %bb.f, %bb.g
  %.us-phi = phi i64 [ -3, %.split.split.us ], [ -2, %bb.g ], [ %i.q, %bb.f ], [ -3, %bb.c ], [ %i.ae, %bb.j ], [ -2, %bb.h ], [ -2, %bb.k ], [ -2, %bb.l ], [ -2, %bb.o ], [ -3, %.split.split ], [ %i.at, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.split94.us:                                      ; preds = %bb.m, %bb.i, %.split.us
  %.us-phi95 = phi i64 [ %.061.us, %.split.us ], [ %.061.us98, %bb.i ], [ %.061, %bb.m ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not83 = icmp eq i32 %i.c, 0
  %.not84 = icmp slt i64 %3, %.us-phi95
  %or.cond86 = or i1 %.not83, %.not84
  br i1 %or.cond86, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.split94.us
  %i.ax = add nsw i64 %.us-phi95, -1
  %i.ay = icmp sgt i64 %.us-phi95, 1
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.066102 = phi i64 [ %.167, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %2, i64 %.066102 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 3 uses
  %i.bb = add nsw i64 %.066102, 1                 ; 3 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 3 uses
  %i.be = ashr i32 %i.ba, 8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr @_ZN6duckdbL20utf8proc_stage1tableE, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !8
  %i.bi = zext i16 %i.bh to i32
  %i.bj = and i32 %i.ba, 255
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN6duckdbL20utf8proc_stage2tableE, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !8
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr @_ZN6duckdbL19utf8proc_propertiesE, i64 %i.bo
  %i.bq = ashr i32 %i.bd, 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr @_ZN6duckdbL20utf8proc_stage1tableE, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !8
  %i.bu = zext i16 %i.bt to i32
  %i.bv = and i32 %i.bd, 255
  %i.bw = add nuw nsw i32 %i.bv, %i.bu
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZN6duckdbL20utf8proc_stage2tableE, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !8
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr @_ZN6duckdbL19utf8proc_propertiesE, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !21 ; 2 uses
  %i.cg = icmp sgt i16 %i.cd, %i.cf
  %i.ch = icmp sgt i16 %i.cf, 0
  %or.cond87 = and i1 %i.cg, %i.ch
  br i1 %or.cond87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !3
  %i.ci = icmp sgt i64 %.066102, 0
  %i.cj = add nsw i64 %.066102, -1
  %spec.select = select i1 %i.ci, i64 %i.cj, i64 %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %.167 = phi i64 [ %i.bb, %.lr.ph ], [ %spec.select, %bb.p ] ; 2 uses
  %i.ck = icmp slt i64 %.167, %i.ax
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %bb.q, %.preheader, %.thread, %.split94.us, %bb.a
  %.1 = phi i64 [ -5, %bb.a ], [ %.us-phi95, %.split94.us ], [ %.us-phi, %.thread ], [ %.us-phi95, %.preheader ], [ %.us-phi95, %bb.q ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6duckdb24utf8proc_normalize_utf32EPilNS_17utf8proc_option_tE(ptr noundef captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %2, 896
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit196, label %.preheader195

.preheader195:                                    ; preds = %bb.a
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader195
  %i.c = add nsw i64 %1, -1                       ; 4 uses
  %i.d = and i32 %2, 512
  %.not164 = icmp ne i32 %i.d, 0                  ; 3 uses
  %i.e = and i32 %2, 128
  %.not165 = icmp eq i32 %i.e, 0
  %i.f = and i32 %2, 256
  %.not167 = icmp eq i32 %i.f, 0                  ; 3 uses
  br i1 %.not165, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.0123198.us = phi i64 [ %i.y, %bb.l ], [ 0, %.lr.ph ] ; 11 uses
  %.0127197.us = phi i64 [ %.1128.us, %bb.l ], [ 0, %.lr.ph ] ; 7 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %.0123198.us
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 7 uses
  %i.i = icmp eq i32 %i.h, 13
  %i.j = icmp slt i64 %.0123198.us, %i.c
  %or.cond.us = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.us, label %.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  switch i32 %i.h, label %bb.c [
    i32 133, label %bb.i
    i32 13, label %bb.i
    i32 10, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.h, -11
  %or.cond7.us = icmp ult i32 %i.k, 2
  %or.cond169.us = and i1 %.not164, %or.cond7.us
  br i1 %or.cond169.us, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not164, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.h, 32
  %i.m = add nsw i32 %i.h, -127
  %or.cond9.us = icmp ult i32 %i.m, 33
  %or.cond170.us = select i1 %i.l, i1 true, i1 %or.cond9.us
  br i1 %or.cond170.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = add nsw i64 %.0127197.us, 1
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.0127197.us
  store i32 %i.h, ptr %i.o, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.h, 9
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %.0127197.us, 1
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %.0127197.us
  store i32 32, ptr %i.r, align 4, !tbaa !3
  br label %bb.l

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.s = add nsw i64 %.0123198.us, 1              ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = icmp eq i32 %i.u, 10
  %spec.select.us = select i1 %i.v, i64 %i.s, i64 %.0123198.us
  br label %bb.i

bb.i:                                             ; preds = %.thread.us, %bb.c, %bb.b, %bb.b, %bb.b
  %.1124176.us = phi i64 [ %spec.select.us, %.thread.us ], [ %.0123198.us, %bb.c ], [ %.0123198.us, %bb.b ], [ %.0123198.us, %bb.b ], [ %.0123198.us, %bb.b ] ; 2 uses
  %i.w = add nsw i64 %.0127197.us, 1              ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %.0127197.us ; 2 uses
  br i1 %.not167, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 8233, ptr %i.x, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 32, ptr %i.x, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.f
  %.1124175.us = phi i64 [ %.0123198.us, %bb.f ], [ %.0123198.us, %bb.g ], [ %.1124176.us, %bb.j ], [ %.1124176.us, %bb.k ], [ %.0123198.us, %bb.h ]
  %.1128.us = phi i64 [ %i.n, %bb.f ], [ %.0127197.us, %bb.g ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.q, %bb.h ] ; 2 uses
  %i.y = add nsw i64 %.1124175.us, 1              ; 2 uses
  %i.z = icmp slt i64 %i.y, %1
  br i1 %i.z, label %.lr.ph.split.us, label %.loopexit196, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not164, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.v
  %.0123198.us199 = phi i64 [ %i.as, %bb.v ], [ 0, %.lr.ph.split ] ; 11 uses
  %.0127197.us200 = phi i64 [ %.1128.us210, %bb.v ], [ 0, %.lr.ph.split ] ; 7 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.0123198.us199
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 7 uses
  %i.ac = icmp eq i32 %i.ab, 13
  %i.ad = icmp slt i64 %.0123198.us199, %i.c
  %or.cond.us201 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.us201, label %.thread.us206, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us
  switch i32 %i.ab, label %bb.n [
end_hunk_0
begin_hunk_1_@_ZN6duckdb17utf8proc_reencodeEPilNS_17utf8proc_option_tE:bb.a
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, -64
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !7
  %i.bf = trunc i32 %i.aw to i8
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !7
  br label %_ZN6duckdb20utf8proc_encode_charEiPh.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = icmp samesign ult i32 %i.aw, 65536
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = lshr i32 %i.aw, 12
  %i.bl = trunc nuw nsw i32 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -32
  store i8 %i.bm, ptr %i.ax, align 1, !tbaa !7
  %i.bn = lshr i32 %i.aw, 6
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = and i8 %i.bo, 63
  %i.bq = or disjoint i8 %i.bp, -128
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !7
  %i.bs = trunc i32 %i.aw to i8
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !7
  br label %_ZN6duckdb20utf8proc_encode_charEiPh.exit

bb.s:                                             ; preds = %bb.q
  %i.bw = icmp samesign ult i32 %i.aw, 1114112
  br i1 %i.bw, label %bb.t, label %_ZN6duckdb20utf8proc_encode_charEiPh.exit

bb.t:                                             ; preds = %bb.s
  %i.bx = lshr i32 %i.aw, 6
  %i.by = lshr i32 %i.aw, 12
  %i.bz = lshr i32 %i.aw, 18
  %i.ca = trunc i32 %i.aw to i8
  %i.cb = trunc i32 %i.bx to i8
  %i.cc = trunc i32 %i.by to i8
  %i.cd = trunc nuw nsw i32 %i.bz to i8
  %i.ce = insertelement <4 x i8> poison, i8 %i.cd, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cc, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cb, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.ca, i64 3
  %i.ci = and <4 x i8> %i.ch, <i8 -1, i8 63, i8 63, i8 63>
  %i.cj = or disjoint <4 x i8> %i.ci, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.cj, ptr %i.ax, align 1, !tbaa !7
  br label %_ZN6duckdb20utf8proc_encode_charEiPh.exit

_ZN6duckdb20utf8proc_encode_charEiPh.exit:        ; preds = %.lr.ph39, %bb.n, %bb.p, %bb.r, %bb.s, %bb.t
  %.0.i32 = phi i64 [ 0, %.lr.ph39 ], [ 1, %bb.n ], [ 2, %bb.p ], [ 3, %bb.r ], [ 4, %bb.t ], [ 0, %bb.s ]
  %i.ck = add nuw nsw i64 %.0.i32, %.138          ; 2 uses
  %i.cl = add nuw nsw i64 %.12837, 1              ; 2 uses
  %exitcond45.not = icmp eq i64 %i.cl, %i.a
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph39, !llvm.loop !27

.loopexit:                                        ; preds = %_ZN6duckdbL21charbound_encode_charEiPh.exit, %_ZN6duckdb20utf8proc_encode_charEiPh.exit, %.preheader33, %.preheader
  %.2 = phi i64 [ %i.ck, %_ZN6duckdb20utf8proc_encode_charEiPh.exit ], [ 0, %.preheader ], [ 0, %.preheader33 ], [ %i.at, %_ZN6duckdbL21charbound_encode_charEiPh.exit ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %0, i64 %.2
  store i8 0, ptr %i.cm, align 1, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %.loopexit
  %.029 = phi i64 [ %.2, %.loopexit ], [ %i.a, %bb.a ]
  ret i64 %.029
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb12utf8proc_mapEPKhlPPhNS_17utf8proc_option_tE(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !28
  %i.a = tail call noundef i64 @_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_(ptr noundef %0, i64 noundef %1, ptr noundef null, i64 noundef 0, i32 noundef %3, ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = or disjoint i64 %i.c, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #12 ; 7 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_ZN6duckdb25utf8proc_decompose_customEPKhlPilNS_17utf8proc_option_tEPFiiPvES4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.e, i64 noundef %i.a, i32 noundef %3, ptr noundef %4, ptr noundef %5) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef i64 @_ZN6duckdb17utf8proc_reencodeEPilNS_17utf8proc_option_tE(ptr noundef nonnull %i.e, i64 noundef %i.f, i32 noundef %3) ; 4 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = add nuw i64 %i.h, 1
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.j) #13 ; 2 uses
  %.not41 = icmp eq ptr %i.k, null
  %spec.select = select i1 %.not41, ptr %i.e, ptr %i.k
  store ptr %spec.select, ptr %2, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi i64 [ %i.a, %bb.a ], [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb12utf8proc_NFDEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 18, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb12utf8proc_NFCEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb13utf8proc_NFKDEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 22, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb23utf8proc_remove_accentsEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 8202, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb13utf8proc_NFKCEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 14, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb22utf8proc_NFKC_CasefoldEPKhl(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call noundef i64 @_ZN6duckdb19utf8proc_map_customEPKhlPPhNS_17utf8proc_option_tEPFiiPvES5_(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1070, ptr noundef null, ptr noundef null) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!11, !9, i64 14}
!11 = !{!"_ZTSN6duckdb24utf8proc_property_structE", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !9, i64 8, !9, i64 10, !9, i64 12, !9, i64 14, !9, i64 16, !9, i64 18, !4, i64 20, !4, i64 20, !4, i64 20, !4, i64 20, !4, i64 20, !4, i64 20, !4, i64 21, !4, i64 21}
!12 = !{!11, !9, i64 12}
!13 = !{!11, !9, i64 16}
!14 = !{!11, !9, i64 0}
!15 = !{!11, !9, i64 10}
!16 = !{!11, !9, i64 8}
!17 = !{!11, !9, i64 6}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!11, !9, i64 2}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = !{!11, !9, i64 18}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 omnipotent char", !30, i64 0}
!30 = !{!"any pointer", !5, i64 0}
end_hunk_1
