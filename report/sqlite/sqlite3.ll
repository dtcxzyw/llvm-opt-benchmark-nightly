Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@jsonUnescapeOneChar:bb.a
  %i.be = add i32 %.035.i, 2                      ; 4 uses
  %i.bf = icmp ult i32 %i.be, %.tr66129
  br i1 %i.bf, label %bb.aa, label %.backedge.i

bb.aa:                                            ; preds = %bb.z
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr128, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !729
  %i.bj = icmp eq i8 %i.bi, 10
  %i.bk = add i32 %.035.i, 3
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 %i.be
  br label %.backedge.i

bb.ab:                                            ; preds = %bb.x
  %i.bl = add i32 %.035.i, 3                      ; 2 uses
  %i.bm = icmp ult i32 %i.bl, %.tr66129
  br i1 %i.bm, label %bb.ac, label %jsonBytesToBypass.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bn = add i32 %.035.i, 2
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr128, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !729
  %i.br = icmp eq i8 %i.bq, -128
  br i1 %i.br, label %bb.ad, label %jsonBytesToBypass.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bs = zext i32 %i.bl to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr128, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !729
  %i.bv = and i8 %i.bu, -2
  %switch.i = icmp eq i8 %i.bv, -88
  br i1 %switch.i, label %bb.ae, label %jsonBytesToBypass.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bw = add i32 %.035.i, 4
  br label %.backedge.i

jsonBytesToBypass.exit:                           ; preds = %bb.w, %bb.x, %.backedge.i, %bb.ab, %bb.ac, %bb.ad
  %.0.lcssa.i = phi i32 [ %.035.i, %bb.ad ], [ %.0.be.i, %.backedge.i ], [ %.035.i, %bb.ac ], [ %.035.i, %bb.ab ], [ %.035.i, %bb.x ], [ %.035.i, %bb.w ] ; 6 uses
  %i.bx = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.bx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %jsonBytesToBypass.exit
  store i32 629145, ptr %2, align 4, !tbaa !566
  br label %bb.al

bb.ag:                                            ; preds = %jsonBytesToBypass.exit
  %i.by = icmp eq i32 %.0.lcssa.i, %.tr66129
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %2, align 4, !tbaa !566
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.bz = zext i32 %.0.lcssa.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr128, i64 %i.bz ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !729
  %i.cc = icmp eq i8 %i.cb, 92
  %i.cd = sub i32 %.tr66129, %.0.lcssa.i          ; 4 uses
  br i1 %i.cc, label %tailrecurse, label %bb.aj

tailrecurse:                                      ; preds = %bb.ai
  %i.ce = add i32 %.0.lcssa.i, %accumulator.tr127 ; 2 uses
  %i.cf = icmp ult i32 %i.cd, 2
  br i1 %i.cf, label %tailrecurse._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  %i.cg = tail call fastcc i32 @sqlite3Utf8ReadLimited(ptr noundef nonnull %i.ca, i32 noundef %i.cd, ptr noundef %2)
  %i.ch = add i32 %i.cg, %.0.lcssa.i
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  store i32 629145, ptr %2, align 4, !tbaa !566
  br label %bb.al

bb.al:                                            ; preds = %bb.af, %bb.ah, %bb.aj, %bb.c, %bb.h, %bb.i, %bb.ak, %bb.v, %bb.u, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %tailrecurse._crit_edge
  %accumulator.tr110 = phi i32 [ %accumulator.tr.lcssa, %tailrecurse._crit_edge ], [ %accumulator.tr127, %bb.ak ], [ %accumulator.tr127, %bb.i ], [ %accumulator.tr127, %bb.j ], [ %accumulator.tr127, %bb.k ], [ %accumulator.tr127, %bb.l ], [ %accumulator.tr127, %bb.m ], [ %accumulator.tr127, %bb.n ], [ %accumulator.tr127, %bb.o ], [ %accumulator.tr127, %bb.r ], [ %accumulator.tr127, %bb.s ], [ %accumulator.tr127, %bb.u ], [ %accumulator.tr127, %bb.v ], [ %accumulator.tr127, %bb.c ], [ %accumulator.tr127, %bb.h ], [ %accumulator.tr127, %bb.af ], [ %accumulator.tr127, %bb.ah ], [ %accumulator.tr127, %bb.aj ]
  %.2 = phi i32 [ %.tr66.lcssa, %tailrecurse._crit_edge ], [ 2, %bb.ak ], [ 6, %bb.i ], [ 2, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.n ], [ 2, %bb.o ], [ 2, %bb.r ], [ 2, %bb.s ], [ %.tr66129, %bb.u ], [ 4, %bb.v ], [ %.tr66129, %bb.c ], [ 12, %bb.h ], [ %.tr66129, %bb.af ], [ %.tr66129, %bb.ah ], [ %i.ch, %bb.aj ]
  %accumulator.ret.tr = add i32 %.2, %accumulator.tr110
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 65536) i32 @jsonHexToInt4(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load <2 x i8>, ptr %0, align 1, !tbaa !729 ; 2 uses
  %i.b = and <2 x i8> %i.a, splat (i8 64)
  %i.c = icmp eq <2 x i8> %i.b, zeroinitializer
  %i.d = select <2 x i1> %i.c, <2 x i8> zeroinitializer, <2 x i8> splat (i8 9)
  %i.e = add <2 x i8> %i.d, %i.a
  %i.f = and <2 x i8> %i.e, splat (i8 15)
  %i.g = zext nneg <2 x i8> %i.f to <2 x i16>
  %i.h = shl nuw <2 x i16> %i.g, <i16 12, i16 8>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !729   ; 2 uses
  %i.k = and i8 %i.j, 64
  %.not.i5 = icmp eq i8 %i.k, 0
  %i.l = select i1 %.not.i5, i8 0, i8 9
  %i.m = add i8 %i.l, %i.j
  %i.n = shl i8 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !729   ; 2 uses
  %i.q = and i8 %i.p, 64
  %.not.i6 = icmp eq i8 %i.q, 0
  %i.r = select i1 %.not.i6, i8 0, i8 9
  %i.s = add i8 %i.r, %i.p
  %i.t = and i8 %i.s, 15
  %i.u = tail call i16 @llvm.vector.reduce.or.v2i16(<2 x i16> %i.h)
  %i.v = zext i8 %i.n to i16
  %op.rdx8 = or disjoint i16 %i.u, %i.v
  %i.w = zext nneg i8 %i.t to i16
  %op.rdx79 = or disjoint i16 %op.rdx8, %i.w
  %op.rdx7 = zext i16 %op.rdx79 to i32
  ret i32 %op.rdx7
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @sqlite3Utf8ReadLimited(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !729     ; 3 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp ugt i8 %i.a, -65
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.a to i64
  %i.e = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -192
  %i.g = load i8, ptr %i.f, align 1, !tbaa !729
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 4) ; 3 uses
  %i.i = icmp sgt i32 %1, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !729
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %i.n = icmp eq i32 %i.m, 128
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.o = shl nuw nsw i32 %i.h, 6
  %i.p = and i32 %i.l, 63
  %i.q = or disjoint i32 %i.p, %i.o               ; 3 uses
  %exitcond.not = icmp eq i32 %1, 2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !729
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 192
  %i.v = icmp eq i32 %i.u, 128
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.1
  %i.w = shl nuw nsw i32 %i.q, 6
  %i.x = and i32 %i.t, 63
  %i.y = or disjoint i32 %i.x, %i.w               ; 3 uses
  %exitcond.not.1 = icmp eq i32 %1, 3
  br i1 %exitcond.not.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !729
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %i.ad = icmp eq i32 %i.ac, 128
  br i1 %i.ad, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph.2
  %i.ae = shl nuw nsw i32 %i.y, 6
  %i.af = and i32 %i.ab, 63
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.e, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.b, %bb.a
  %.115 = phi i32 [ %i.b, %bb.a ], [ %i.h, %bb.b ], [ %i.y, %.lr.ph.2 ], [ %i.h, %.lr.ph ], [ %i.q, %.lr.ph.1 ], [ %i.q, %bb.c ], [ %i.y, %bb.d ], [ %i.ag, %bb.e ]
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 3, %.lr.ph.2 ], [ 1, %.lr.ph ], [ 2, %.lr.ph.1 ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.d ], [ %spec.store.select, %bb.c ]
  store i32 %.115, ptr %2, align 4, !tbaa !566
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jsonTranslateTextToBlob(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1953 ; 53 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 17 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0489 = phi i32 [ %1, %bb.a ], [ %.0489.be, %.backedge.backedge ] ; 43 uses
  %i.e = zext i32 %.0489 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 26 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !729   ; 30 uses
  switch i8 %i.g, label %sqlite3_strnicmp.exit607.thread637.4 [
    i8 123, label %bb.b
    i8 91, label %bb.bh
    i8 39, label %bb.ce
    i8 34, label %.loopexit644
    i8 116, label %bb.di
    i8 102, label %bb.do
    i8 43, label %bb.du
    i8 46, label %bb.dv
    i8 45, label %.loopexit645
    i8 48, label %.loopexit645
    i8 49, label %.loopexit645
    i8 50, label %.loopexit645
    i8 51, label %.loopexit645
    i8 52, label %.loopexit645
    i8 53, label %.loopexit645
    i8 54, label %.loopexit645
    i8 55, label %.loopexit645
    i8 56, label %.loopexit645
    i8 57, label %.loopexit645
    i8 125, label %bb.gh
    i8 93, label %bb.gi
    i8 44, label %bb.gj
    i8 58, label %bb.gk
    i8 0, label %jsonBlobAppendOneByte.exit
    i8 9, label %bb.gl
    i8 10, label %bb.gl
    i8 13, label %bb.gl
    i8 32, label %bb.gl
    i8 11, label %bb.gm
    i8 12, label %bb.gm
    i8 47, label %bb.gm
    i8 -62, label %bb.gm
    i8 -31, label %bb.gm
    i8 -30, label %bb.gm
    i8 -29, label %bb.gm
    i8 -17, label %bb.gm
    i8 110, label %bb.gp
    i8 105, label %.preheader.i
    i8 73, label %.preheader.i.fold.split
    i8 78, label %.preheader.i.2
    i8 113, label %.preheader.i.3
    i8 81, label %.preheader.i.3
    i8 115, label %.preheader.i.4
    i8 83, label %.preheader.i.4
  ]

bb.b:                                             ; preds = %.backedge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1958 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1954
  %i.l = sub i32 %i.k, %.0489                     ; 9 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 9
  %i.p = add nuw nsw i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1955
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ugt i64 %i.p, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @jsonBlobExpandAndAppendNode(ptr noundef nonnull %0, i8 noundef zeroext 12, i64 noundef range(i64 -2147483648, 4294967296) %i.m, ptr noundef null) #60, !inline_history !4474
  br label %jsonBlobAppendNode.exit

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !1956
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.n ; 7 uses
  %i.w = icmp ult i32 %i.l, 12
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.tr.i = trunc nuw nsw i32 %i.l to i8
  %i.x = shl nuw i8 %.tr.i, 4
  %i.y = or disjoint i8 %i.x, 12
  store i8 %i.y, ptr %i.v, align 1, !tbaa !729
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %i.l, 256
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 -52, ptr %i.v, align 1, !tbaa !729
  %i.aa = trunc nuw i32 %i.l to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !729
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ac = icmp ult i32 %i.l, 65536
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 -36, ptr %i.v, align 1, !tbaa !729
  %i.ae = lshr i32 %i.l, 8
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !729
  %i.ag = trunc i32 %i.l to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !729
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 -20, ptr %i.v, align 1, !tbaa !729
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.ai, ptr %i.ad, align 1, !tbaa !729
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e
  %.sink49.i = phi i32 [ 2, %bb.g ], [ 5, %bb.j ], [ 3, %bb.i ], [ 1, %bb.e ]
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !1958
  %i.ak = add i32 %i.aj, %.sink49.i
  store i32 %i.ak, ptr %i.h, align 8, !tbaa !1958
  br label %jsonBlobAppendNode.exit

jsonBlobAppendNode.exit:                          ; preds = %bb.c, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !1962
  %i.an = add i16 %i.am, 1                        ; 2 uses
  store i16 %i.an, ptr %i.al, align 4, !tbaa !1962
  %i.ao = icmp ugt i16 %i.an, 1000
  br i1 %i.ao, label %bb.l, label %.preheader1003

bb.l:                                             ; preds = %jsonBlobAppendNode.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.ap, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

.preheader1003:                                   ; preds = %jsonBlobAppendNode.exit
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !1958 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  br label %bb.m

bb.m:                                             ; preds = %.backedge1222, %.preheader1003
  %.0482.in = phi i32 [ %.0489, %.preheader1003 ], [ %.0482.in.be, %.backedge1222 ]
  %.0482 = add i32 %.0482.in, 1                   ; 4 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !1958
  %i.au = tail call fastcc i32 @jsonTranslateTextToBlob(ptr noundef nonnull %0, i32 noundef %.0482) ; 4 uses
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.aw = icmp eq i32 %i.au, -2
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.as, align 8, !tbaa !1964
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !1958
  %.not552 = icmp eq i32 %i.ay, %i.aq
  br i1 %.not552, label %bb.bf, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.d, align 1, !tbaa !1929
  br label %bb.bf

bb.q:                                             ; preds = %bb.n
  %i.az = zext i32 %.0482 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.az
  %i.bb = tail call fastcc i32 @json5Whitespace(ptr noundef %i.ba)
  %i.bc = add i32 %i.bb, %.0482                   ; 6 uses
  store i32 7, ptr %i.a, align 4, !tbaa !566
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bd ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !729 ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !729
  %i.bj = and i8 %i.bi, 66
  %.not547 = icmp eq i8 %i.bj, 0
  br i1 %.not547, label %bb.r, label %.critedge.preheader

bb.r:                                             ; preds = %bb.q
  %i.bk = icmp eq i8 %i.bf, 92
  br i1 %i.bk, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.bl = add i32 %i.bc, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  %i.bo = call fastcc i32 @jsonIs4HexB(ptr noundef %i.bn, ptr noundef %i.a)
  %.not548 = icmp eq i32 %i.bo, 0
  br i1 %.not548, label %bb.ah, label %._crit_edge882

._crit_edge882:                                   ; preds = %bb.s
  %.promoted.pre = load i32, ptr %i.a, align 4
  %i.bp = trunc i32 %.promoted.pre to i8
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %._crit_edge882, %bb.q
  %.ph = phi i8 [ %i.bp, %._crit_edge882 ], [ 7, %bb.q ]
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %.critedge.preheader, %jsonIs4Hex.exit.i
  %.ph1221 = phi i8 [ %.ph, %.critedge.preheader ], [ 8, %jsonIs4Hex.exit.i ] ; 5 uses
  %.0471.in.ph = phi i32 [ %i.bc, %.critedge.preheader ], [ %.0471, %jsonIs4Hex.exit.i ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.t
  %.0471.in = phi i32 [ %.0471, %bb.t ], [ %.0471.in.ph, %.critedge.outer ] ; 2 uses
  %.0471 = add i32 %.0471.in, 1                   ; 5 uses
  %i.bq = sext i32 %.0471 to i64
  %i.br = getelementptr inbounds i8, ptr %i.c, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !729 ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !729
  %i.bw = and i8 %i.bv, 70
  %.not550 = icmp eq i8 %i.bw, 0
  br i1 %.not550, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.bx = tail call fastcc i32 @json5Whitespace(ptr noundef nonnull %i.br)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.critedge, label %bb.u, !llvm.loop !4469

bb.u:                                             ; preds = %bb.t, %.critedge
  %i.bz = icmp eq i8 %i.bs, 92
  br i1 %i.bz, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u
  %i.ca = add i32 %.0471.in, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.c, i64 %i.cb ; 5 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !729
  %.not.i = icmp eq i8 %i.cd, 117
  br i1 %.not.i, label %bb.w, label %.critedge2

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !729
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !729
  %i.cj = and i8 %i.ci, 8
  %.not.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i, label %.critedge2, label %jsonIs2Hex.exit.i.i

jsonIs2Hex.exit.i.i:                              ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
end_hunk_0
begin_hunk_1_@jsonTranslateTextToBlob:bb.a
  %i.wy = add i32 %.18.in.lcssa.lcssa.lcssa, -1   ; 2 uses
  %.not528 = icmp ult i32 %i.wy, %.0489
  br i1 %.not528, label %bb.fx, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !729
  %i.xc = add i8 %i.xb, -58
  %.not529 = icmp ult i8 %i.xc, -10
  br i1 %.not529, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  store i8 1, ptr %i.d, align 1, !tbaa !1929
  %i.xd = or i8 %.2476.ph1259.lcssa.lcssa, 1
  br label %.loopexit641

bb.fx:                                            ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.18.lcssa.lcssa.lcssa, ptr %i.xe, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

.loopexit641:                                     ; preds = %bb.ew, %bb.eb, %bb.fs, %bb.fw
  %.21 = phi i32 [ %.16, %bb.eb ], [ %.18.lcssa.lcssa.lcssa, %bb.fw ], [ %.18.lcssa.lcssa.lcssa, %bb.fs ], [ %.17, %bb.ew ] ; 3 uses
  %.5479 = phi i8 [ 1, %bb.eb ], [ %i.xd, %bb.fw ], [ %.2476.ph1259.lcssa.lcssa, %bb.fs ], [ 1, %bb.ew ]
  %i.xf = load i8, ptr %i.f, align 1, !tbaa !729
  %i.xg = icmp eq i8 %i.xf, 43
  %i.xh = zext i1 %i.xg to i32
  %spec.select565 = add i32 %.0489, %i.xh         ; 2 uses
  %i.xi = add nuw nsw i8 %.5479, 3                ; 5 uses
  %i.xj = sub i32 %.21, %spec.select565           ; 10 uses
  %i.xk = zext i32 %i.xj to i64                   ; 4 uses
  %i.xl = zext i32 %spec.select565 to i64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.xl ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !1958
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = add nuw nsw i64 %i.xp, 9
  %i.xr = add nuw nsw i64 %i.xq, %i.xk
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !1955
  %i.xu = zext i32 %i.xt to i64
  %i.xv = icmp samesign ugt i64 %i.xr, %i.xu
  br i1 %i.xv, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.loopexit641
  tail call fastcc void @jsonBlobExpandAndAppendNode(ptr noundef nonnull %0, i8 noundef zeroext %i.xi, i64 noundef range(i64 -2147483648, 4294967296) %i.xk, ptr noundef nonnull readonly %i.xm) #60, !inline_history !4474
  br label %jsonBlobAppendOneByte.exit

bb.fz:                                            ; preds = %.loopexit641
  %i.xw = load ptr, ptr %0, align 8, !tbaa !1956
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xp ; 7 uses
  %i.xy = icmp ult i32 %i.xj, 12
  br i1 %i.xy, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %.tr.i595 = trunc nuw nsw i32 %i.xj to i8
  %i.xz = shl nuw i8 %.tr.i595, 4
  %i.ya = or i8 %i.xz, %i.xi
  store i8 %i.ya, ptr %i.xx, align 1, !tbaa !729
  br label %bb.gg

bb.gb:                                            ; preds = %bb.fz
  %i.yb = icmp ult i32 %i.xj, 256
  br i1 %i.yb, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.yc = or i8 %i.xi, -64
  store i8 %i.yc, ptr %i.xx, align 1, !tbaa !729
  %i.yd = trunc nuw i32 %i.xj to i8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  store i8 %i.yd, ptr %i.ye, align 1, !tbaa !729
  br label %bb.gg

bb.gd:                                            ; preds = %bb.gb
  %i.yf = icmp ult i32 %i.xj, 65536
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xx, i64 1 ; 2 uses
  br i1 %i.yf, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.yh = or i8 %i.xi, -48
  store i8 %i.yh, ptr %i.xx, align 1, !tbaa !729
  %i.yi = lshr i32 %i.xj, 8
  %i.yj = trunc nuw i32 %i.yi to i8
  store i8 %i.yj, ptr %i.yg, align 1, !tbaa !729
  %i.yk = trunc i32 %i.xj to i8
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xx, i64 2
  store i8 %i.yk, ptr %i.yl, align 1, !tbaa !729
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.ym = or i8 %i.xi, -32
  store i8 %i.ym, ptr %i.xx, align 1, !tbaa !729
  %i.yn = tail call i32 @llvm.bswap.i32(i32 %i.xj)
  store i32 %i.yn, ptr %i.yg, align 1, !tbaa !729
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ga, %bb.gc, %bb.ge, %bb.gf
  %.sink49.i593 = phi i32 [ 2, %bb.gc ], [ 5, %bb.gf ], [ 3, %bb.ge ], [ 1, %bb.ga ]
  %i.yo = load i32, ptr %i.xn, align 8, !tbaa !1958
  %i.yp = add i32 %.sink49.i593, %i.xj
  %i.yq = add i32 %i.yp, %i.yo                    ; 2 uses
  store i32 %i.yq, ptr %i.xn, align 8, !tbaa !1958
  %i.yr = load ptr, ptr %0, align 8, !tbaa !1956
  %i.ys = zext i32 %i.yq to i64
  %i.yt = sub nsw i64 %i.ys, %i.xk
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yu, ptr nonnull readonly align 1 %i.xm, i64 range(i64 -2147483648, 4294967296) %i.xk, i1 false)
  br label %jsonBlobAppendOneByte.exit

bb.gh:                                            ; preds = %.backedge
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.yv, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

bb.gi:                                            ; preds = %.backedge
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.yw, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

bb.gj:                                            ; preds = %.backedge
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.yx, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

bb.gk:                                            ; preds = %.backedge
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.yy, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

bb.gl:                                            ; preds = %.backedge, %.backedge, %.backedge, %.backedge
  %i.yz = add i32 %.0489, 1                       ; 2 uses
  %i.za = zext i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.za
  %i.zc = tail call i64 @strspn(ptr noundef %i.zb, ptr noundef nonnull @jsonSpaces) #58
  %i.zd = trunc i64 %i.zc to i32
  %i.ze = add i32 %i.yz, %i.zd
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.gl, %bb.gn
  %.0489.be = phi i32 [ %i.ze, %bb.gl ], [ %i.zg, %bb.gn ]
  br label %.backedge

bb.gm:                                            ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  %i.zf = tail call fastcc i32 @json5Whitespace(ptr noundef nonnull %i.f) ; 2 uses
  %.not519 = icmp eq i32 %i.zf, 0
  br i1 %.not519, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zg = add i32 %i.zf, %.0489
  store i8 1, ptr %i.d, align 1, !tbaa !1929
  br label %.backedge.backedge

bb.go:                                            ; preds = %bb.gm
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.zh, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

bb.gp:                                            ; preds = %.backedge
  %i.zi = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(5) @.str.1, i64 noundef 4) #58
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %bb.gq, label %.lr.ph.i600.2.1

bb.gq:                                            ; preds = %bb.gp
  %i.zk = add i32 %.0489, 4                       ; 3 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !729
  %i.zo = zext i8 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !729
  %i.zr = and i8 %i.zq, 6
  %.not = icmp eq i8 %i.zr, 0
  br i1 %.not, label %bb.gr, label %.lr.ph.i600.2.1

bb.gr:                                            ; preds = %bb.gq
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !1958 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !1955
  %.not.i597 = icmp ult i32 %i.zt, %i.zv
  br i1 %.not.i597, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call fastcc void @jsonBlobExpandAndAppendOneByte(ptr noundef nonnull %0, i8 noundef zeroext 0), !inline_history !4471
  br label %jsonBlobAppendOneByte.exit

bb.gt:                                            ; preds = %bb.gr
  %i.zw = load ptr, ptr %0, align 8, !tbaa !1956
  %i.zx = add nuw i32 %i.zt, 1
  store i32 %i.zx, ptr %i.zs, align 8, !tbaa !1958
  %i.zy = zext i32 %i.zt to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zy
  store i8 0, ptr %i.zz, align 1, !tbaa !729
  br label %jsonBlobAppendOneByte.exit

.preheader.i.fold.split:                          ; preds = %.backedge
  br label %.preheader.i

.preheader.i:                                     ; preds = %.backedge, %.preheader.i.fold.split
  %.not560980 = phi i1 [ true, %.backedge ], [ false, %.preheader.i.fold.split ]
  %.not.i604 = icmp eq i8 %i.g, 0
  br i1 %.not.i604, label %sqlite3_strnicmp.exit607, label %bb.gu

bb.gu:                                            ; preds = %.preheader.i
  %i.aaa = zext i8 %i.g to i64
  %i.aab = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aaa
  %i.aac = and i8 %i.g, -33
  %i.aad = icmp eq i8 %i.aac, 73
  br i1 %i.aad, label %.lr.ph.i600.1876, label %split.i605

.lr.ph.i600.1876:                                 ; preds = %bb.gu
  %i.aae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1875 = icmp eq i8 %i.aaf, 0
  br i1 %.not.i604.1875, label %sqlite3_strnicmp.exit607, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i600.1876
  %i.aag = zext i8 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aag
  %i.aai = and i8 %i.aaf, -33
  %i.aaj = icmp eq i8 %i.aai, 78
  br i1 %i.aaj, label %.lr.ph.i600.2878, label %split.i605

.lr.ph.i600.2878:                                 ; preds = %bb.gv
  %i.aak = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !729 ; 3 uses
  %.not.i604.2877 = icmp eq i8 %i.aal, 0
  br i1 %.not.i604.2877, label %sqlite3_strnicmp.exit607, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph.i600.2878
  %i.aam = zext i8 %i.aal to i64
  %i.aan = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aam
  %i.aao = and i8 %i.aal, -33
  %i.aap = icmp eq i8 %i.aao, 70
  br i1 %i.aap, label %sqlite3_strnicmp.exit607.thread, label %split.i605

split.i605:                                       ; preds = %bb.gw, %bb.gv, %bb.gu
  %.lcssa.in = phi ptr [ %i.aab, %bb.gu ], [ %i.aah, %bb.gv ], [ %i.aan, %bb.gw ]
  %.023.i602.lcssa770 = phi ptr [ @.str.623, %bb.gu ], [ getelementptr inbounds nuw (i8, ptr @.str.623, i64 1), %bb.gv ], [ getelementptr inbounds nuw (i8, ptr @.str.623, i64 2), %bb.gw ]
  %.lcssa = load i8, ptr %.lcssa.in, align 1, !tbaa !729
  %i.aaq = zext i8 %.lcssa to i32
  br label %sqlite3_strnicmp.exit607

sqlite3_strnicmp.exit607:                         ; preds = %.preheader.i, %.lr.ph.i600.1876, %.lr.ph.i600.2878, %split.i605
  %.023.i602772 = phi ptr [ %.023.i602.lcssa770, %split.i605 ], [ @.str.623, %.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @.str.623, i64 1), %.lr.ph.i600.1876 ], [ getelementptr inbounds nuw (i8, ptr @.str.623, i64 2), %.lr.ph.i600.2878 ]
  %i.aar = phi i32 [ %i.aaq, %split.i605 ], [ 0, %.preheader.i ], [ 0, %.lr.ph.i600.1876 ], [ 0, %.lr.ph.i600.2878 ]
  %i.aas = load i8, ptr %.023.i602772, align 1, !tbaa !729
  %i.aat = zext i8 %i.aas to i64
  %i.aau = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !729
  %i.aaw = zext i8 %i.aav to i32
  %.not562 = icmp eq i32 %i.aar, %i.aaw
  br i1 %.not562, label %sqlite3_strnicmp.exit607.thread, label %sqlite3_strnicmp.exit607.thread637

sqlite3_strnicmp.exit607.thread:                  ; preds = %bb.gw, %sqlite3_strnicmp.exit607
  %i.aax = add i32 %.0489, 3                      ; 2 uses
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !729
  %i.abb = zext i8 %i.aba to i64
  %i.abc = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !729
  %i.abe = and i8 %i.abd, 6
  %.not563 = icmp eq i8 %i.abe, 0
  br i1 %.not563, label %bb.gx, label %sqlite3_strnicmp.exit607.thread637

bb.gx:                                            ; preds = %sqlite3_strnicmp.exit607.thread, %sqlite3_strnicmp.exit607.thread.1
  %.lcssa774 = phi i32 [ %i.aax, %sqlite3_strnicmp.exit607.thread ], [ %i.ado, %sqlite3_strnicmp.exit607.thread.1 ]
  tail call fastcc void @jsonBlobAppendNode(ptr noundef %0, i8 noundef zeroext 5, i64 noundef 5, ptr noundef nonnull @.str.625)
  br label %jsonBlobAppendOneByte.exit609

bb.gy:                                            ; preds = %sqlite3_strnicmp.exit607.thread.2, %sqlite3_strnicmp.exit607.thread.3, %sqlite3_strnicmp.exit607.thread.4
  %.lcssa774.ph = phi i32 [ %i.ahm, %sqlite3_strnicmp.exit607.thread.4 ], [ %i.agc, %sqlite3_strnicmp.exit607.thread.3 ], [ %i.aes, %sqlite3_strnicmp.exit607.thread.2 ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !1958 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !1955
  %.not.i608 = icmp ult i32 %i.abg, %i.abi
  br i1 %.not.i608, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call fastcc void @jsonBlobExpandAndAppendOneByte(ptr noundef nonnull %0, i8 noundef zeroext 0), !inline_history !4471
  br label %jsonBlobAppendOneByte.exit609

bb.ha:                                            ; preds = %bb.gy
  %i.abj = load ptr, ptr %0, align 8, !tbaa !1956
  %i.abk = add nuw i32 %i.abg, 1
  store i32 %i.abk, ptr %i.abf, align 8, !tbaa !1958
  %i.abl = zext i32 %i.abg to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abl
  store i8 0, ptr %i.abm, align 1, !tbaa !729
  br label %jsonBlobAppendOneByte.exit609

jsonBlobAppendOneByte.exit609:                    ; preds = %bb.ha, %bb.gz, %bb.gx
  %.lcssa774987 = phi i32 [ %.lcssa774.ph, %bb.ha ], [ %.lcssa774.ph, %bb.gz ], [ %.lcssa774, %bb.gx ]
  store i8 1, ptr %i.d, align 1, !tbaa !1929
  br label %jsonBlobAppendOneByte.exit

sqlite3_strnicmp.exit607.thread637:               ; preds = %sqlite3_strnicmp.exit607.thread, %sqlite3_strnicmp.exit607
  br i1 %.not560980, label %.preheader.i.1, label %sqlite3_strnicmp.exit607.thread637.thread

sqlite3_strnicmp.exit607.thread637.thread:        ; preds = %sqlite3_strnicmp.exit607.thread637
  switch i8 %i.g, label %sqlite3_strnicmp.exit607.thread637.4 [
    i8 110, label %bb.hj
    i8 73, label %bb.hb
    i8 113, label %bb.hm
    i8 78, label %bb.hj
    i8 81, label %bb.hm
    i8 83, label %bb.hq
    i8 115, label %bb.hq
  ]

.preheader.i.1:                                   ; preds = %sqlite3_strnicmp.exit607.thread637
  %.not.i604.1 = icmp eq i8 %i.g, 0
  br i1 %.not.i604.1, label %sqlite3_strnicmp.exit607.1, label %bb.hb

bb.hb:                                            ; preds = %sqlite3_strnicmp.exit607.thread637.thread, %.preheader.i.1
  %i.abn = zext i8 %i.g to i64
  %i.abo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abn
  %i.abp = and i8 %i.g, -33
  %i.abq = icmp eq i8 %i.abp, 73
  br i1 %i.abq, label %.lr.ph.i600.1.1, label %split.i605.1

split.i605.1:                                     ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb
  %.lcssa.1.in = phi ptr [ %i.abo, %bb.hb ], [ %i.abv, %bb.hc ], [ %i.acb, %bb.hd ], [ %i.ach, %bb.he ], [ %i.acn, %bb.hf ], [ %i.act, %bb.hg ], [ %i.acz, %bb.hh ], [ %i.adf, %bb.hi ]
  %.023.i602.lcssa770.1 = phi ptr [ @.str.628, %bb.hb ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 1), %bb.hc ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 2), %bb.hd ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 3), %bb.he ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 4), %bb.hf ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 5), %bb.hg ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 6), %bb.hh ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 7), %bb.hi ]
  %.lcssa.1 = load i8, ptr %.lcssa.1.in, align 1, !tbaa !729
  %i.abr = zext i8 %.lcssa.1 to i32
  br label %sqlite3_strnicmp.exit607.1

.lr.ph.i600.1.1:                                  ; preds = %bb.hb
  %i.abs = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.1 = icmp eq i8 %i.abt, 0
  br i1 %.not.i604.1.1, label %sqlite3_strnicmp.exit607.1, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph.i600.1.1
  %i.abu = zext i8 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abu
  %i.abw = and i8 %i.abt, -33
  %i.abx = icmp eq i8 %i.abw, 78
  br i1 %i.abx, label %.lr.ph.i600.1.2, label %split.i605.1

.lr.ph.i600.1.2:                                  ; preds = %bb.hc
  %i.aby = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.2 = icmp eq i8 %i.abz, 0
  br i1 %.not.i604.1.2, label %sqlite3_strnicmp.exit607.1, label %bb.hd

bb.hd:                                            ; preds = %.lr.ph.i600.1.2
  %i.aca = zext i8 %i.abz to i64
  %i.acb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aca
  %i.acc = and i8 %i.abz, -33
  %i.acd = icmp eq i8 %i.acc, 70
  br i1 %i.acd, label %.lr.ph.i600.1.3, label %split.i605.1

.lr.ph.i600.1.3:                                  ; preds = %bb.hd
  %i.ace = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.3 = icmp eq i8 %i.acf, 0
  br i1 %.not.i604.1.3, label %sqlite3_strnicmp.exit607.1, label %bb.he

bb.he:                                            ; preds = %.lr.ph.i600.1.3
  %i.acg = zext i8 %i.acf to i64
  %i.ach = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acg
  %i.aci = and i8 %i.acf, -33
  %i.acj = icmp eq i8 %i.aci, 73
  br i1 %i.acj, label %.lr.ph.i600.1.4, label %split.i605.1

.lr.ph.i600.1.4:                                  ; preds = %bb.he
  %i.ack = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.4 = icmp eq i8 %i.acl, 0
  br i1 %.not.i604.1.4, label %sqlite3_strnicmp.exit607.1, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i600.1.4
  %i.acm = zext i8 %i.acl to i64
  %i.acn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acm
  %i.aco = and i8 %i.acl, -33
  %i.acp = icmp eq i8 %i.aco, 78
  br i1 %i.acp, label %.lr.ph.i600.1.5, label %split.i605.1

.lr.ph.i600.1.5:                                  ; preds = %bb.hf
  %i.acq = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.5 = icmp eq i8 %i.acr, 0
  br i1 %.not.i604.1.5, label %sqlite3_strnicmp.exit607.1, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i600.1.5
  %i.acs = zext i8 %i.acr to i64
  %i.act = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acs
  %i.acu = and i8 %i.acr, -33
  %i.acv = icmp eq i8 %i.acu, 73
  br i1 %i.acv, label %.lr.ph.i600.1.6, label %split.i605.1

.lr.ph.i600.1.6:                                  ; preds = %bb.hg
  %i.acw = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.6 = icmp eq i8 %i.acx, 0
  br i1 %.not.i604.1.6, label %sqlite3_strnicmp.exit607.1, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph.i600.1.6
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acy
  %i.ada = and i8 %i.acx, -33
  %i.adb = icmp eq i8 %i.ada, 84
  br i1 %i.adb, label %.lr.ph.i600.1.7, label %split.i605.1

.lr.ph.i600.1.7:                                  ; preds = %bb.hh
  %i.adc = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !729 ; 3 uses
  %.not.i604.1.7 = icmp eq i8 %i.add, 0
  br i1 %.not.i604.1.7, label %sqlite3_strnicmp.exit607.1, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph.i600.1.7
  %i.ade = zext i8 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ade
  %i.adg = and i8 %i.add, -33
  %i.adh = icmp eq i8 %i.adg, 89
  br i1 %i.adh, label %sqlite3_strnicmp.exit607.thread.1, label %split.i605.1

sqlite3_strnicmp.exit607.1:                       ; preds = %.preheader.i.1, %.lr.ph.i600.1.1, %.lr.ph.i600.1.2, %.lr.ph.i600.1.3, %.lr.ph.i600.1.4, %.lr.ph.i600.1.5, %.lr.ph.i600.1.6, %.lr.ph.i600.1.7, %split.i605.1
  %.023.i602772.1 = phi ptr [ %.023.i602.lcssa770.1, %split.i605.1 ], [ @.str.628, %.preheader.i.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 1), %.lr.ph.i600.1.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 2), %.lr.ph.i600.1.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 3), %.lr.ph.i600.1.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 4), %.lr.ph.i600.1.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 5), %.lr.ph.i600.1.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 6), %.lr.ph.i600.1.6 ], [ getelementptr inbounds nuw (i8, ptr @.str.628, i64 7), %.lr.ph.i600.1.7 ]
  %i.adi = phi i32 [ %i.abr, %split.i605.1 ], [ 0, %.preheader.i.1 ], [ 0, %.lr.ph.i600.1.1 ], [ 0, %.lr.ph.i600.1.2 ], [ 0, %.lr.ph.i600.1.3 ], [ 0, %.lr.ph.i600.1.4 ], [ 0, %.lr.ph.i600.1.5 ], [ 0, %.lr.ph.i600.1.6 ], [ 0, %.lr.ph.i600.1.7 ]
  %i.adj = load i8, ptr %.023.i602772.1, align 1, !tbaa !729
  %i.adk = zext i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !729
  %i.adn = zext i8 %i.adm to i32
  %.not562.1 = icmp eq i32 %i.adi, %i.adn
  br i1 %.not562.1, label %sqlite3_strnicmp.exit607.thread.1, label %sqlite3_strnicmp.exit607.thread637.1.thread

sqlite3_strnicmp.exit607.thread.1:                ; preds = %bb.hi, %sqlite3_strnicmp.exit607.1
  %i.ado = add i32 %.0489, 8                      ; 2 uses
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !729
  %i.ads = zext i8 %i.adr to i64
  %i.adt = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !729
  %i.adv = and i8 %i.adu, 6
  %.not563.1 = icmp eq i8 %i.adv, 0
  br i1 %.not563.1, label %bb.gx, label %sqlite3_strnicmp.exit607.thread637.1.thread

sqlite3_strnicmp.exit607.thread637.1.thread:      ; preds = %sqlite3_strnicmp.exit607.1, %sqlite3_strnicmp.exit607.thread.1
  switch i8 %i.g, label %sqlite3_strnicmp.exit607.thread637.4 [
    i8 113, label %bb.hm
    i8 78, label %bb.hj
    i8 81, label %bb.hm
    i8 83, label %bb.hq
    i8 115, label %bb.hq
  ]

.preheader.i.2:                                   ; preds = %.backedge
  %.not.i604.2 = icmp eq i8 %i.g, 0
  br i1 %.not.i604.2, label %sqlite3_strnicmp.exit607.2, label %bb.hj

bb.hj:                                            ; preds = %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %.preheader.i.2
  %i.adw = zext i8 %i.g to i64
  %i.adx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.adw
  %i.ady = and i8 %i.g, -33
  %i.adz = icmp eq i8 %i.ady, 78
  br i1 %i.adz, label %.lr.ph.i600.2.1, label %split.i605.2

split.i605.2:                                     ; preds = %bb.hl, %bb.hk, %bb.hj
  %.lcssa.2.in = phi ptr [ %i.adx, %bb.hj ], [ %i.aee, %bb.hk ], [ %i.aek, %bb.hl ]
  %.023.i602.lcssa770.2 = phi ptr [ @.str.2, %bb.hj ], [ getelementptr inbounds nuw (i8, ptr @.str.2, i64 1), %bb.hk ], [ getelementptr inbounds nuw (i8, ptr @.str.2, i64 2), %bb.hl ]
  %.lcssa.2 = load i8, ptr %.lcssa.2.in, align 1, !tbaa !729
  %i.aea = zext i8 %.lcssa.2 to i32
  br label %sqlite3_strnicmp.exit607.2

.lr.ph.i600.2.1:                                  ; preds = %bb.gp, %bb.gq, %bb.hj
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !729 ; 3 uses
  %.not.i604.2.1 = icmp eq i8 %i.aec, 0
  br i1 %.not.i604.2.1, label %sqlite3_strnicmp.exit607.2, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph.i600.2.1
  %i.aed = zext i8 %i.aec to i64
  %i.aee = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aed
  %i.aef = and i8 %i.aec, -33
  %i.aeg = icmp eq i8 %i.aef, 65
  br i1 %i.aeg, label %.lr.ph.i600.2.2, label %split.i605.2

.lr.ph.i600.2.2:                                  ; preds = %bb.hk
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !729 ; 3 uses
  %.not.i604.2.2 = icmp eq i8 %i.aei, 0
  br i1 %.not.i604.2.2, label %sqlite3_strnicmp.exit607.2, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.i600.2.2
  %i.aej = zext i8 %i.aei to i64
  %i.aek = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aej
  %i.ael = and i8 %i.aei, -33
  %i.aem = icmp eq i8 %i.ael, 78
  br i1 %i.aem, label %sqlite3_strnicmp.exit607.thread.2, label %split.i605.2

sqlite3_strnicmp.exit607.2:                       ; preds = %.preheader.i.2, %.lr.ph.i600.2.1, %.lr.ph.i600.2.2, %split.i605.2
  %.023.i602772.2 = phi ptr [ %.023.i602.lcssa770.2, %split.i605.2 ], [ @.str.2, %.preheader.i.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.2, i64 1), %.lr.ph.i600.2.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.2, i64 2), %.lr.ph.i600.2.2 ]
  %2 = phi i32 [ %i.aea, %split.i605.2 ], [ 0, %.preheader.i.2 ], [ 0, %.lr.ph.i600.2.1 ], [ 0, %.lr.ph.i600.2.2 ]
  %i.aen = load i8, ptr %.023.i602772.2, align 1, !tbaa !729
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !729
  %i.aer = zext i8 %i.aeq to i32
  %.not562.2 = icmp eq i32 %2, %i.aer
  br i1 %.not562.2, label %sqlite3_strnicmp.exit607.thread.2, label %sqlite3_strnicmp.exit607.thread637.4

sqlite3_strnicmp.exit607.thread.2:                ; preds = %bb.hl, %sqlite3_strnicmp.exit607.2
  %i.aes = add i32 %.0489, 3                      ; 2 uses
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aet
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !729
  %i.aew = zext i8 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !729
  %i.aez = and i8 %i.aey, 6
  %.not563.2 = icmp eq i8 %i.aez, 0
  br i1 %.not563.2, label %bb.gy, label %sqlite3_strnicmp.exit607.thread637.4

.preheader.i.3:                                   ; preds = %.backedge, %.backedge
  %.not.i604.3 = icmp eq i8 %i.g, 0
  br i1 %.not.i604.3, label %sqlite3_strnicmp.exit607.3, label %bb.hm

bb.hm:                                            ; preds = %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %.preheader.i.3
  %i.afa = zext i8 %i.g to i64
  %i.afb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.afa
  %i.afc = and i8 %i.g, -33
  %i.afd = icmp eq i8 %i.afc, 81
  br i1 %i.afd, label %.lr.ph.i600.3.1, label %split.i605.3

split.i605.3:                                     ; preds = %bb.hp, %bb.ho, %bb.hn, %bb.hm
  %.lcssa.3.in = phi ptr [ %i.afb, %bb.hm ], [ %i.afi, %bb.hn ], [ %i.afo, %bb.ho ], [ %i.afu, %bb.hp ]
  %.023.i602.lcssa770.3 = phi ptr [ @.str.629, %bb.hm ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 1), %bb.hn ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 2), %bb.ho ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 3), %bb.hp ]
  %.lcssa.3 = load i8, ptr %.lcssa.3.in, align 1, !tbaa !729
  %i.afe = zext i8 %.lcssa.3 to i32
  br label %sqlite3_strnicmp.exit607.3

.lr.ph.i600.3.1:                                  ; preds = %bb.hm
  %i.aff = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !729 ; 3 uses
  %.not.i604.3.1 = icmp eq i8 %i.afg, 0
  br i1 %.not.i604.3.1, label %sqlite3_strnicmp.exit607.3, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph.i600.3.1
  %i.afh = zext i8 %i.afg to i64
  %i.afi = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.afh
  %i.afj = and i8 %i.afg, -33
  %i.afk = icmp eq i8 %i.afj, 78
  br i1 %i.afk, label %.lr.ph.i600.3.2, label %split.i605.3

.lr.ph.i600.3.2:                                  ; preds = %bb.hn
  %i.afl = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !729 ; 3 uses
  %.not.i604.3.2 = icmp eq i8 %i.afm, 0
  br i1 %.not.i604.3.2, label %sqlite3_strnicmp.exit607.3, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph.i600.3.2
  %i.afn = zext i8 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.afn
  %i.afp = and i8 %i.afm, -33
  %i.afq = icmp eq i8 %i.afp, 65
  br i1 %i.afq, label %.lr.ph.i600.3.3, label %split.i605.3

.lr.ph.i600.3.3:                                  ; preds = %bb.ho
  %i.afr = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !729 ; 3 uses
  %.not.i604.3.3 = icmp eq i8 %i.afs, 0
  br i1 %.not.i604.3.3, label %sqlite3_strnicmp.exit607.3, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph.i600.3.3
  %i.aft = zext i8 %i.afs to i64
  %i.afu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aft
  %i.afv = and i8 %i.afs, -33
  %i.afw = icmp eq i8 %i.afv, 78
  br i1 %i.afw, label %sqlite3_strnicmp.exit607.thread.3, label %split.i605.3

sqlite3_strnicmp.exit607.3:                       ; preds = %.preheader.i.3, %.lr.ph.i600.3.1, %.lr.ph.i600.3.2, %.lr.ph.i600.3.3, %split.i605.3
  %.023.i602772.3 = phi ptr [ %.023.i602.lcssa770.3, %split.i605.3 ], [ @.str.629, %.preheader.i.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 1), %.lr.ph.i600.3.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 2), %.lr.ph.i600.3.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.629, i64 3), %.lr.ph.i600.3.3 ]
  %3 = phi i32 [ %i.afe, %split.i605.3 ], [ 0, %.preheader.i.3 ], [ 0, %.lr.ph.i600.3.1 ], [ 0, %.lr.ph.i600.3.2 ], [ 0, %.lr.ph.i600.3.3 ]
  %i.afx = load i8, ptr %.023.i602772.3, align 1, !tbaa !729
  %i.afy = zext i8 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !729
  %i.agb = zext i8 %i.aga to i32
  %.not562.3 = icmp eq i32 %3, %i.agb
  br i1 %.not562.3, label %sqlite3_strnicmp.exit607.thread.3, label %sqlite3_strnicmp.exit607.thread637.4

sqlite3_strnicmp.exit607.thread.3:                ; preds = %bb.hp, %sqlite3_strnicmp.exit607.3
  %i.agc = add i32 %.0489, 4                      ; 2 uses
  %i.agd = zext i32 %i.agc to i64
  %i.age = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.agd
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !729
  %i.agg = zext i8 %i.agf to i64
  %i.agh = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !729
  %i.agj = and i8 %i.agi, 6
  %.not563.3 = icmp eq i8 %i.agj, 0
  br i1 %.not563.3, label %bb.gy, label %sqlite3_strnicmp.exit607.thread637.4

.preheader.i.4:                                   ; preds = %.backedge, %.backedge
  %.not.i604.4 = icmp eq i8 %i.g, 0
  br i1 %.not.i604.4, label %sqlite3_strnicmp.exit607.4, label %bb.hq

bb.hq:                                            ; preds = %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %.preheader.i.4
  %i.agk = zext i8 %i.g to i64
  %i.agl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agk
  %i.agm = and i8 %i.g, -33
  %i.agn = icmp eq i8 %i.agm, 83
  br i1 %i.agn, label %.lr.ph.i600.4.1, label %split.i605.4

split.i605.4:                                     ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hq
  %.lcssa.4.in = phi ptr [ %i.agl, %bb.hq ], [ %i.ags, %bb.hr ], [ %i.agy, %bb.hs ], [ %i.ahe, %bb.ht ]
  %.023.i602.lcssa770.4 = phi ptr [ @.str.630, %bb.hq ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 1), %bb.hr ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 2), %bb.hs ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 3), %bb.ht ]
  %.lcssa.4 = load i8, ptr %.lcssa.4.in, align 1, !tbaa !729
  %i.ago = zext i8 %.lcssa.4 to i32
  br label %sqlite3_strnicmp.exit607.4

.lr.ph.i600.4.1:                                  ; preds = %bb.hq
  %i.agp = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !729 ; 3 uses
  %.not.i604.4.1 = icmp eq i8 %i.agq, 0
  br i1 %.not.i604.4.1, label %sqlite3_strnicmp.exit607.4, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph.i600.4.1
  %i.agr = zext i8 %i.agq to i64
  %i.ags = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agr
  %i.agt = and i8 %i.agq, -33
  %i.agu = icmp eq i8 %i.agt, 78
  br i1 %i.agu, label %.lr.ph.i600.4.2, label %split.i605.4

.lr.ph.i600.4.2:                                  ; preds = %bb.hr
  %i.agv = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.agw = load i8, ptr %i.agv, align 1, !tbaa !729 ; 3 uses
  %.not.i604.4.2 = icmp eq i8 %i.agw, 0
  br i1 %.not.i604.4.2, label %sqlite3_strnicmp.exit607.4, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i600.4.2
  %i.agx = zext i8 %i.agw to i64
  %i.agy = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agx
  %i.agz = and i8 %i.agw, -33
  %i.aha = icmp eq i8 %i.agz, 65
  br i1 %i.aha, label %.lr.ph.i600.4.3, label %split.i605.4

.lr.ph.i600.4.3:                                  ; preds = %bb.hs
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !729 ; 3 uses
  %.not.i604.4.3 = icmp eq i8 %i.ahc, 0
  br i1 %.not.i604.4.3, label %sqlite3_strnicmp.exit607.4, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.i600.4.3
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ahd
  %i.ahf = and i8 %i.ahc, -33
  %i.ahg = icmp eq i8 %i.ahf, 78
  br i1 %i.ahg, label %sqlite3_strnicmp.exit607.thread.4, label %split.i605.4

sqlite3_strnicmp.exit607.4:                       ; preds = %.preheader.i.4, %.lr.ph.i600.4.1, %.lr.ph.i600.4.2, %.lr.ph.i600.4.3, %split.i605.4
  %.023.i602772.4 = phi ptr [ %.023.i602.lcssa770.4, %split.i605.4 ], [ @.str.630, %.preheader.i.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 1), %.lr.ph.i600.4.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 2), %.lr.ph.i600.4.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.630, i64 3), %.lr.ph.i600.4.3 ]
  %4 = phi i32 [ %i.ago, %split.i605.4 ], [ 0, %.preheader.i.4 ], [ 0, %.lr.ph.i600.4.1 ], [ 0, %.lr.ph.i600.4.2 ], [ 0, %.lr.ph.i600.4.3 ]
  %i.ahh = load i8, ptr %.023.i602772.4, align 1, !tbaa !729
  %i.ahi = zext i8 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ahi
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !729
  %i.ahl = zext i8 %i.ahk to i32
  %.not562.4 = icmp eq i32 %4, %i.ahl
  br i1 %.not562.4, label %sqlite3_strnicmp.exit607.thread.4, label %sqlite3_strnicmp.exit607.thread637.4

sqlite3_strnicmp.exit607.thread.4:                ; preds = %bb.ht, %sqlite3_strnicmp.exit607.4
  %i.ahm = add i32 %.0489, 4                      ; 2 uses
  %i.ahn = zext i32 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !729
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !729
  %i.aht = and i8 %i.ahs, 6
  %.not563.4 = icmp eq i8 %i.aht, 0
  br i1 %.not563.4, label %bb.gy, label %sqlite3_strnicmp.exit607.thread637.4

sqlite3_strnicmp.exit607.thread637.4:             ; preds = %sqlite3_strnicmp.exit607.thread637.thread, %sqlite3_strnicmp.exit607.thread637.1.thread, %.backedge, %sqlite3_strnicmp.exit607.thread.3, %sqlite3_strnicmp.exit607.3, %sqlite3_strnicmp.exit607.2, %sqlite3_strnicmp.exit607.thread.2, %sqlite3_strnicmp.exit607.thread.4, %sqlite3_strnicmp.exit607.4
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0489, ptr %i.ahu, align 8, !tbaa !1964
  br label %jsonBlobAppendOneByte.exit

jsonBlobAppendOneByte.exit:                       ; preds = %.backedge, %bb.as, %bb.ak, %bb.bg, %bb.ax, %bb.be, %bb.aw, %bb.at, %bb.am, %bb.gt, %bb.gs, %bb.gg, %bb.fy, %bb.ds, %bb.dr, %bb.dm, %bb.dl, %jsonBlobAppendOneByte.exit609, %sqlite3_strnicmp.exit607.thread637.4, %bb.bv, %._crit_edge763, %jsonBlobAppendNode.exit572, %bb.go, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.fx, %bb.fr, %bb.fq, %bb.ff, %.loopexit1344, %bb.es, %bb.ep, %sqlite3_strnicmp.exit592.thread632, %bb.ed, %bb.dw, %bb.dt, %bb.dn, %jsonBlobAppendNode.exit579, %bb.cu, %jsonIs4Hex.exit.thread, %.loopexit, %bb.cc, %bb.bs, %.thread621, %bb.l
  %.5 = phi i32 [ %i.fi, %bb.as ], [ -1, %bb.l ], [ -1, %bb.ax ], [ %i.gk, %.thread621 ], [ %.21, %bb.gg ], [ -1, %bb.bs ], [ %i.je, %.loopexit ], [ -1, %jsonBlobAppendNode.exit572 ], [ -1, %bb.cc ], [ %i.or, %jsonBlobAppendNode.exit579 ], [ -1, %jsonIs4Hex.exit.thread ], [ -1, %bb.cu ], [ -1, %bb.dn ], [ %i.zk, %bb.gt ], [ -1, %bb.dt ], [ %i.ou, %bb.dm ], [ %i.pn, %bb.ds ], [ -1, %bb.ed ], [ -1, %.loopexit1344 ], [ -1, %bb.fq ], [ -1, %bb.fr ], [ -1, %bb.ff ], [ -1, %bb.fx ], [ -1, %bb.es ], [ %i.ua, %sqlite3_strnicmp.exit592.thread632 ], [ -1, %bb.ep ], [ -1, %bb.dw ], [ -2, %bb.gh ], [ -3, %bb.gi ], [ -4, %bb.gj ], [ -5, %bb.gk ], [ -1, %bb.bv ], [ -1, %bb.go ], [ %.lcssa665, %._crit_edge763 ], [ %.lcssa774987, %jsonBlobAppendOneByte.exit609 ], [ -1, %sqlite3_strnicmp.exit607.thread637.4 ], [ %i.ou, %bb.dl ], [ %i.pn, %bb.dr ], [ %.21, %bb.fy ], [ %i.zk, %bb.gs ], [ -1, %bb.am ], [ -1, %bb.at ], [ -1, %bb.aw ], [ -1, %bb.be ], [ -1, %bb.bg ], [ -1, %bb.ak ], [ 0, %.backedge ]
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @json5Whitespace(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.087 = phi i32 [ 0, %bb.a ], [ %.087.be, %.backedge ] ; 11 uses
  %i.a = sext i32 %.087 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 13 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !729
  switch i8 %i.c, label %.thread101 [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
    i8 47, label %bb.d
    i8 -62, label %bb.o
    i8 -31, label %bb.q
    i8 -30, label %bb.t
    i8 -29, label %bb.z
    i8 -17, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.d = add nsw i32 %.087, 1
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !729
  switch i8 %i.f, label %.thread101 [
    i8 42, label %bb.e
    i8 47, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.b, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !729
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.thread101, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.087, 3
  %i.j = sext i32 %i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread, %bb.f
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.critedge.thread ], [ %i.j, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %indvars.iv114 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !729
  switch i8 %i.l, label %.critedge.thread [
    i8 47, label %bb.h
    i8 0, label %.thread101
  ]

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %i.k, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !729
  %.not97 = icmp eq i8 %i.n, 42
  br i1 %.not97, label %.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %bb.h
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1
  br label %bb.g, !llvm.loop !4475

.thread:                                          ; preds = %bb.h
  %i.o = trunc nsw i64 %indvars.iv114 to i32
  %i.p = add nsw i32 %i.o, 1
  br label %.backedge

bb.i:                                             ; preds = %bb.d
  %i.q = add i32 %.087, 2
  %i.r = sext i32 %i.q to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ %i.r, %bb.i ] ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !729
  switch i8 %i.t, label %bb.m [
    i8 0, label %.split.loop.exit121
    i8 13, label %.split.loop.exit121
    i8 10, label %.split.loop.exit121
    i8 -30, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !729
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !729
  %i.aa = and i8 %i.z, -2
  %switch = icmp eq i8 %i.aa, -88
  br i1 %switch, label %.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.j, !llvm.loop !4476

.split.loop.exit:                                 ; preds = %bb.l
  %indvars113.le = trunc i64 %indvars.iv to i32
  %i.ab = add nsw i32 %indvars113.le, 2
  br label %bb.n

.split.loop.exit121:                              ; preds = %bb.j, %bb.j, %bb.j
  %indvars113.le123 = trunc i64 %indvars.iv to i32
  br label %bb.n

bb.n:                                             ; preds = %.split.loop.exit121, %.split.loop.exit
  %.1 = phi i32 [ %i.ab, %.split.loop.exit ], [ %indvars113.le123, %.split.loop.exit121 ] ; 2 uses
  %i.ac = sext i32 %.1 to i64
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !729
  %.not95 = icmp ne i8 %i.ae, 0
  %i.af = zext i1 %.not95 to i32
  %spec.select = add nsw i32 %.1, %i.af
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.ag = getelementptr i8, ptr %i.b, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !729
  %i.ai = icmp eq i8 %i.ah, -96
  br i1 %i.ai, label %bb.p, label %.thread101

bb.p:                                             ; preds = %bb.o
  %i.aj = add nsw i32 %.087, 2
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %i.ak = getelementptr i8, ptr %i.b, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !729
  %i.am = icmp eq i8 %i.al, -102
  br i1 %i.am, label %bb.r, label %.thread101

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %i.b, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !729
  %i.ap = icmp eq i8 %i.ao, -128
  br i1 %i.ap, label %bb.s, label %.thread101

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %.087, 3
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %i.b, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !729
  switch i8 %i.as, label %.thread101 [
    i8 -128, label %bb.u
    i8 -127, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr i8, ptr %i.b, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !729
  %.fr = freeze i8 %i.au                          ; 3 uses
  %i.av = icmp sgt i8 %.fr, -1
  br i1 %i.av, label %.thread101, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = icmp samesign ult i8 %.fr, -117
  br i1 %i.aw, label %bb.w, label %switch.early.test

switch.early.test:                                ; preds = %bb.v
  switch i8 %.fr, label %.thread101 [
    i8 -81, label %bb.w
    i8 -87, label %bb.w
    i8 -88, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %switch.early.test, %switch.early.test, %switch.early.test
  %i.ax = add nsw i32 %.087, 3
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %.thread, %bb.ae, %bb.ab, %bb.y, %bb.s, %bb.p, %bb.n, %bb.c
  %.087.be = phi i32 [ %i.d, %bb.c ], [ %i.p, %.thread ], [ %spec.select, %bb.n ], [ %i.aj, %bb.p ], [ %i.aq, %bb.s ], [ %i.ax, %bb.w ], [ %i.bb, %bb.y ], [ %i.bi, %bb.ab ], [ %i.bp, %bb.ae ]
  br label %bb.b

bb.x:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %i.b, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !729
  %i.ba = icmp eq i8 %i.az, -97
  br i1 %i.ba, label %bb.y, label %.thread101

end_hunk_1
