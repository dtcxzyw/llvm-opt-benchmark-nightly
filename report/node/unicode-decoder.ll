Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/unicode-decoder?download=true
inline.NumInlined: 138
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE:bb.a
  %i.u = add i64 %i.l, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.d
  %.042.prol = phi ptr [ %i.z, %bb.d ], [ %i.r, %.peel.next.preheader ] ; 3 uses
  %.01641.pn.prol = phi ptr [ %.01641.prol, %bb.d ], [ %.016.ph48, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.d ], [ 0, %.peel.next.preheader ]
  %.01641.prol = getelementptr inbounds nuw i8, ptr %.01641.pn.prol, i64 2 ; 4 uses
  %i.w = load i8, ptr %.042.prol, align 1         ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %.loopexit, !prof !8

bb.d:                                             ; preds = %.peel.next.prol
  %i.y = zext nneg i8 %i.w to i16
  store i16 %i.y, ptr %.01641.prol, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.042.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !18

.peel.next.prol.loopexit:                         ; preds = %bb.d, %.peel.next.preheader
  %.042.unr = phi ptr [ %i.r, %.peel.next.preheader ], [ %i.z, %bb.d ]
  %.01641.pn.unr = phi ptr [ %.016.ph48, %.peel.next.preheader ], [ %.01641.prol, %bb.d ]
  %i.aa = icmp ult i64 %i.v, 3
  br i1 %i.aa, label %.outer._crit_edge.thread79, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.e
  %.042 = phi ptr [ %i.aq, %bb.e ], [ %.042.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.01641.pn = phi ptr [ %.01641.3, %bb.e ], [ %.01641.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01641 = getelementptr inbounds nuw i8, ptr %.01641.pn, i64 2 ; 2 uses
  %i.ab = load i8, ptr %.042, align 1             ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  %i.ad = zext nneg i8 %i.ab to i16
  store i16 %i.ad, ptr %.01641, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.042, i64 1
  %.01641.1 = getelementptr inbounds nuw i8, ptr %.01641.pn, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit118, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.ah = zext nneg i8 %i.af to i16
  store i16 %i.ah, ptr %.01641.1, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.042, i64 2
  %.01641.2 = getelementptr inbounds nuw i8, ptr %.01641.pn, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit114, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.al = zext nneg i8 %i.aj to i16
  store i16 %i.al, ptr %.01641.2, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.042, i64 3
  %.01641.3 = getelementptr inbounds nuw i8, ptr %.01641.pn, i64 8 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.e:                                             ; preds = %.peel.next.3
  %i.ap = zext nneg i8 %i.an to i16
  store i16 %i.ap, ptr %.01641.3, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.042, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %.peel.next, label %.outer._crit_edge.thread79, !llvm.loop !19

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.as = getelementptr inbounds nuw i8, ptr %.042, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit114:   ; preds = %.peel.next.2
  %i.at = getelementptr inbounds nuw i8, ptr %.042, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit118:   ; preds = %.peel.next.1
  %i.au = getelementptr inbounds nuw i8, ptr %.042, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit118, %.loopexit.loopexit.loopexit.split.loop.exit114, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.042.lcssa = phi ptr [ %.0.ph49, %.lr.ph ], [ %.042, %.peel.next ], [ %i.au, %.loopexit.loopexit.loopexit.split.loop.exit118 ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit114 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.042.prol, %.peel.next.prol ] ; 3 uses
  %.01641.lcssa = phi ptr [ %.016.ph48, %.lr.ph ], [ %.01641, %.peel.next ], [ %.01641.1, %.loopexit.loopexit.loopexit.split.loop.exit118 ], [ %.01641.2, %.loopexit.loopexit.loopexit.split.loop.exit114 ], [ %.01641.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01641.prol, %.peel.next.prol ] ; 7 uses
  %.03340.lcssa = phi i8 [ %.033.ph46, %.lr.ph ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit114 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit118 ], [ 12, %.peel.next ]
  %.lcssa54 = phi i8 [ %i.m, %.lr.ph ], [ %i.ab, %.peel.next ], [ %i.af, %.loopexit.loopexit.loopexit.split.loop.exit118 ], [ %i.aj, %.loopexit.loopexit.loopexit.split.loop.exit114 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.w, %.peel.next.prol ] ; 2 uses
  %.lcssa = phi i1 [ %i.o, %.lr.ph ], [ true, %.peel.next.prol ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit114 ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit118 ], [ true, %.peel.next ]
  %i.av = zext i8 %.lcssa54 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %.03340.lcssa to i32
  %i.az = zext i8 %i.ax to i32                    ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1             ; 3 uses
  %i.be = shl i32 %.030.ph47, 6                   ; 3 uses
  %i.bf = zext i8 %.lcssa54 to i32
  %i.bg = lshr i32 %i.az, 1
  %i.bh = lshr i32 127, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %i.bj = or i32 %i.bi, %i.be                     ; 3 uses
  %i.bk = icmp ult i8 %i.bd, 12
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %.01641.lcssa, i64 2 ; 2 uses
  store i16 -3, ptr %.01641.lcssa, align 2
  br i1 %.lcssa, label %.outer, label %.outer.thread, !llvm.loop !20

bb.g:                                             ; preds = %.loopexit
  %i.bm = icmp eq i8 %i.bd, 12
  br i1 %i.bm, label %bb.h, label %.outer

bb.h:                                             ; preds = %bb.g
  %i.bn = icmp ult i32 %i.be, 65536
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nuw i32 %i.bj to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.01641.lcssa, i64 2
  store i16 %i.bo, ptr %.01641.lcssa, align 2
  br label %.outer

bb.j:                                             ; preds = %bb.h
  %i.bq = add i32 %i.be, 983040
  %i.br = lshr i32 %i.bq, 10
  %i.bs = getelementptr inbounds nuw i8, ptr %.01641.lcssa, i64 4
  %i.bt = trunc i32 %i.br to i16
  %i.bu = insertelement <2 x i16> poison, i16 %i.bt, i64 0
  %i.bv = trunc i32 %i.bj to i16
  %i.bw = insertelement <2 x i16> %i.bu, i16 %i.bv, i64 1
  %i.bx = and <2 x i16> %i.bw, splat (i16 1023)
  %i.by = or disjoint <2 x i16> %i.bx, <i16 -10240, i16 -9216>
  store <2 x i16> %i.by, ptr %.01641.lcssa, align 2
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.g, %bb.j, %bb.i
  %.134 = phi i8 [ 12, %bb.f ], [ %i.bd, %bb.g ], [ 12, %bb.j ], [ 12, %bb.i ] ; 2 uses
  %.131 = phi i32 [ 0, %bb.f ], [ %i.bj, %bb.g ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.2 = phi ptr [ %i.bl, %bb.f ], [ %.01641.lcssa, %bb.g ], [ %i.bs, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.042.lcssa, i64 1 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.h
  br i1 %i.ca, label %.lr.ph.backedge, label %.outer._crit_edge

.lr.ph.backedge:                                  ; preds = %.outer, %.outer.thread
  %.0.ph49.be = phi ptr [ %i.bz, %.outer ], [ %.042.lcssa, %.outer.thread ]
  %.016.ph48.be = phi ptr [ %.2, %.outer ], [ %i.bl, %.outer.thread ]
  %.030.ph47.be = phi i32 [ %.131, %.outer ], [ 0, %.outer.thread ]
  %.033.ph46.be = phi i8 [ %.134, %.outer ], [ 12, %.outer.thread ]
  br label %.lr.ph

.outer.thread:                                    ; preds = %bb.f
  %i.cb = icmp ult ptr %.042.lcssa, %i.h
  br i1 %i.cb, label %.lr.ph.backedge, label %.outer._crit_edge.thread79

.outer._crit_edge:                                ; preds = %.outer
  %i.cc = icmp eq i8 %.134, 12
  br i1 %i.cc, label %.outer._crit_edge.thread79, label %bb.k

bb.k:                                             ; preds = %.outer._crit_edge
  store i16 -3, ptr %.2, align 2
  br label %.outer._crit_edge.thread79

.outer._crit_edge.thread79:                       ; preds = %bb.c, %.outer.thread, %bb.e, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %.outer._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, !prof !27

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 15
  %i.f = add i64 %i.a, 30
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, !prof !27

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 14
  %i.h = add i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, !prof !27

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %0, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i8, ptr %i.cs, align 1
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %i.ct, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.cx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i8, ptr %1, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %0, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i16
  store i16 %i.el, ptr %i.ej, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = load i8, ptr %i.em, align 1
  %i.ep = zext i8 %i.eo to i16
  store i16 %i.ep, ptr %i.en, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i8, ptr %1, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %0, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eu = load i8, ptr %i.es, align 1
  %i.ev = zext i8 %i.eu to i16
  store i16 %i.ev, ptr %i.et, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = load i8, ptr %i.ew, align 1
  %i.ez = zext i8 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ie = load i8, ptr %i.ic, align 1
  %i.if = zext i8 %i.ie to i16
  store i16 %i.if, ptr %i.id, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ii = load i8, ptr %i.ig, align 1
  %i.ij = zext i8 %i.ii to i16
  store i16 %i.ij, ptr %i.ih, align 2
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.im = load i8, ptr %i.ik, align 1
  %i.in = zext i8 %i.im to i16
  store i16 %i.in, ptr %i.il, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i8, ptr %1, align 1
  %i.ip = zext i8 %i.io to i16
  store i16 %i.ip, ptr %0, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i16
  store i16 %i.it, ptr %i.ir, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iw = load i8, ptr %i.iu, align 1
  %i.ix = zext i8 %i.iw to i16
  store i16 %i.ix, ptr %i.iv, align 2
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ja = load i8, ptr %i.iy, align 1
  %i.jb = zext i8 %i.ja to i16
  store i16 %i.jb, ptr %i.iz, align 2
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i8, ptr %i.jc, align 1
  %i.jf = zext i8 %i.je to i16
  store i16 %i.jf, ptr %i.jd, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ji = load i8, ptr %i.jg, align 1
  %i.jj = zext i8 %i.ji to i16
  store i16 %i.jj, ptr %i.jh, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = load i8, ptr %i.jk, align 1
  %i.jn = zext i8 %i.jm to i16
  store i16 %i.jn, ptr %i.jl, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i8, ptr %1, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %0, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i8, ptr %i.kc, align 1
  %i.kf = zext i8 %i.ke to i16
  store i16 %i.kf, ptr %i.kd, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ki = load i8, ptr %i.kg, align 1
  %i.kj = zext i8 %i.ki to i16
  store i16 %i.kj, ptr %i.kh, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i8, ptr %1, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %0, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.kw = load i8, ptr %i.ku, align 1
  %i.kx = zext i8 %i.kw to i16
  store i16 %i.kx, ptr %i.kv, align 2
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load i8, ptr %i.ky, align 1
  %i.lb = zext i8 %i.la to i16
  store i16 %i.lb, ptr %i.kz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i8, ptr %1, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %0, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lk = load i8, ptr %i.li, align 1
  %i.ll = zext i8 %i.lk to i16
  store i16 %i.ll, ptr %i.lj, align 2
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lo = load i8, ptr %i.lm, align 1
  %i.lp = zext i8 %i.lo to i16
  store i16 %i.lp, ptr %i.ln, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i8, ptr %1, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %0, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lu = load i8, ptr %i.ls, align 1
  %i.lv = zext i8 %i.lu to i16
  store i16 %i.lv, ptr %i.lt, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ly = load i8, ptr %i.lw, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %i.lx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i8, ptr %1, align 1
  %i.mb = zext i8 %i.ma to i16
  store i16 %i.mb, ptr %0, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.me = load i8, ptr %i.mc, align 1
  %i.mf = zext i8 %i.me to i16
  store i16 %i.mf, ptr %i.md, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i8, ptr %1, align 1
  %i.mh = zext i8 %i.mg to i16
  store i16 %i.mh, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mj
  %scevgep147 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = shl nuw i64 %n.vec, 1
  %i.mn = getelementptr i8, ptr %0, i64 %i.mm
  %i.mo = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mp ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !alias.scope !28
  %wide.load150 = load <8 x i8>, ptr %i.mq, align 1, !alias.scope !28
  %i.mr = zext <8 x i8> %wide.load to <8 x i16>
  %i.ms = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.mt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mr, ptr %next.gep, align 2, !alias.scope !29, !noalias !28
  store <8 x i16> %i.ms, ptr %i.mt, align 2, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = shl nuw i64 %n.vec153, 1
  %i.mx = getelementptr i8, ptr %0, i64 %i.mw
  %i.my = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.mz = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %0, i64 %i.mz
  %next.gep156 = getelementptr i8, ptr %1, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !alias.scope !28
  %i.na = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.na, ptr %next.gep155, align 2, !alias.scope !29, !noalias !28
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.nd = zext i8 %i.nc to i16
  store i16 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !26

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i8>, ptr %1, align 1
  %i.nj = zext <8 x i8> %i.ni to <8 x i16>
  store <8 x i16> %i.nj, ptr %0, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load <4 x i8>, ptr %i.nk, align 1
  %i.nn = zext <4 x i8> %i.nm to <4 x i16>
  store <4 x i16> %i.nn, ptr %i.nl, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load i8, ptr %i.no, align 1
  %i.nr = zext i8 %i.nq to i16
  store i16 %i.nr, ptr %i.np, align 2
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.nu = load i8, ptr %i.ns, align 1
  %i.nv = zext i8 %i.nu to i16
  store i16 %i.nv, ptr %i.nt, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i8, ptr %1, align 1
  %i.nx = zext i8 %i.nw to i16
  store i16 %i.nx, ptr %0, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oa = load i8, ptr %i.ny, align 1
  %i.ob = zext i8 %i.oa to i16
  store i16 %i.ob, ptr %i.nz, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.oe = load i8, ptr %i.oc, align 1
  %i.of = zext i8 %i.oe to i16
  store i16 %i.of, ptr %i.od, align 2
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.oi = load i8, ptr %i.og, align 1
  %i.oj = zext i8 %i.oi to i16
  store i16 %i.oj, ptr %i.oh, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.om = load i8, ptr %i.ok, align 1
  %i.on = zext i8 %i.om to i16
  store i16 %i.on, ptr %i.ol, align 2
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.oq = load i8, ptr %i.oo, align 1
  %i.or = zext i8 %i.oq to i16
  store i16 %i.or, ptr %i.op, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ou = load i8, ptr %i.os, align 1
  %i.ov = zext i8 %i.ou to i16
  store i16 %i.ov, ptr %i.ot, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.oy = load i8, ptr %i.ow, align 1
  %i.oz = zext i8 %i.oy to i16
  store i16 %i.oz, ptr %i.ox, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pc = load i8, ptr %i.pa, align 1
  %i.pd = zext i8 %i.pc to i16
  store i16 %i.pd, ptr %i.pb, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pg = load i8, ptr %i.pe, align 1
  %i.ph = zext i8 %i.pg to i16
  store i16 %i.ph, ptr %i.pf, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pk = load i8, ptr %i.pi, align 1
  %i.pl = zext i8 %i.pk to i16
  store i16 %i.pl, ptr %i.pj, align 2
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.po = load i8, ptr %i.pm, align 1
  %i.pp = zext i8 %i.po to i16
  store i16 %i.pp, ptr %i.pn, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ps = load i8, ptr %i.pq, align 1
  %i.pt = zext i8 %i.ps to i16
  store i16 %i.pt, ptr %i.pr, align 2
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.pw = load i8, ptr %i.pu, align 1
  %i.px = zext i8 %i.pw to i16
  store i16 %i.px, ptr %i.pv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i8>, ptr %1, align 1
  %i.pz = zext <8 x i8> %i.py to <8 x i16>
  store <8 x i16> %i.pz, ptr %0, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = load <4 x i8>, ptr %i.qa, align 1
  %i.qd = zext <4 x i8> %i.qc to <4 x i16>
  store <4 x i16> %i.qd, ptr %i.qb, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qg = load i8, ptr %i.qe, align 1
  %i.qh = zext i8 %i.qg to i16
  store i16 %i.qh, ptr %i.qf, align 2
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.qk = load i8, ptr %i.qi, align 1
  %i.ql = zext i8 %i.qk to i16
  store i16 %i.ql, ptr %i.qj, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qo = load i8, ptr %i.qm, align 1
  %i.qp = zext i8 %i.qo to i16
  store i16 %i.qp, ptr %i.qn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i8, ptr %1, align 1
  %i.qr = zext i8 %i.qq to i16
  store i16 %i.qr, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qu = load i8, ptr %i.qs, align 1
  %i.qv = zext i8 %i.qu to i16
  store i16 %i.qv, ptr %i.qt, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qy = load i8, ptr %i.qw, align 1
  %i.qz = zext i8 %i.qy to i16
  store i16 %i.qz, ptr %i.qx, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rc = load i8, ptr %i.ra, align 1
  %i.rd = zext i8 %i.rc to i16
  store i16 %i.rd, ptr %i.rb, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = load i8, ptr %i.re, align 1
  %i.rh = zext i8 %i.rg to i16
  store i16 %i.rh, ptr %i.rf, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rk = load i8, ptr %i.ri, align 1
  %i.rl = zext i8 %i.rk to i16
  store i16 %i.rl, ptr %i.rj, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ro = load i8, ptr %i.rm, align 1
  %i.rp = zext i8 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.rs = load i8, ptr %i.rq, align 1
  %i.rt = zext i8 %i.rs to i16
  store i16 %i.rt, ptr %i.rr, align 2
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i8, ptr %i.ru, align 1
  %i.rx = zext i8 %i.rw to i16
  store i16 %i.rx, ptr %i.rv, align 2
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sa = load i8, ptr %i.ry, align 1
  %i.sb = zext i8 %i.sa to i16
  store i16 %i.sb, ptr %i.rz, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.se = load i8, ptr %i.sc, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.uu = load i8, ptr %i.us, align 1
  %i.uv = zext i8 %i.uu to i16
  store i16 %i.uv, ptr %i.ut, align 2
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uy = load i8, ptr %i.uw, align 1
  %i.uz = zext i8 %i.uy to i16
  store i16 %i.uz, ptr %i.ux, align 2
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.vc = load i8, ptr %i.va, align 1
  %i.vd = zext i8 %i.vc to i16
  store i16 %i.vd, ptr %i.vb, align 2
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.vg = load i8, ptr %i.ve, align 1
  %i.vh = zext i8 %i.vg to i16
  store i16 %i.vh, ptr %i.vf, align 2
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.vk = load i8, ptr %i.vi, align 1
  %i.vl = zext i8 %i.vk to i16
  store i16 %i.vl, ptr %i.vj, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.l = load i8, ptr %i.o, align 1
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !0

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa41 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i ]
  %i.n = sub i64 %.lcssa41, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02535.i44 = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.02535.i44, i64 1 ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader.i.preheader, label %.lr.ph.i, !llvm.loop !0

.preheader.i.preheader:                           ; preds = %.lr.ph, %.preheader30.i
  %.126.i.ph = phi ptr [ %1, %.preheader30.i ], [ %i.o, %.lr.ph ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.s, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.s, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = load i64, ptr %.126.i, align 8
  %i.u = and i64 %i.t, -9187201950435737472
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %.126.i to i64
  %i.w = sub i64 %i.v, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 4 uses
  %i.x = icmp ult ptr %.2.i, %i.e
  br i1 %i.x, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.y = add i64 %2, %i.d
  %i.z = sub i64 %i.y, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.z ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.af, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.336.i, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ac = ptrtoint ptr %.336.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

bb.f:                                             ; preds = %.lr.ph37.i
  %i.af = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.af, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.f, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.f ]
  %i.ag = ptrtoint ptr %.3.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

_ZNK2v84base6VectorIKhE6lengthEv.exit19:          ; preds = %._crit_edge.i, %bb.e, %bb.d, %.lr.ph.i._crit_edge
  %.1.in.i = phi i64 [ %i.n, %.lr.ph.i._crit_edge ], [ %i.ae, %bb.e ], [ %i.ai, %._crit_edge.i ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 %.1.i, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %.1.i, %i.c
  br i1 %i.ak, label %.critedge, label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  %sext = shl i64 %.1.in.i, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %.lr.ph48.preheader, label %.outer._crit_edge.thread

.lr.ph48.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = add i64 %2, %i.d
  %.fr153 = freeze i64 %i.ao
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.outer
  %i.ap = phi i32 [ %i.df, %.outer ], [ %.1.i, %.lr.ph48.preheader ] ; 2 uses
  %.011.ph57 = phi ptr [ %i.dg, %.outer ], [ %i.an, %.lr.ph48.preheader ] ; 4 uses
  %.012.ph56 = phi i32 [ %.113, %.outer ], [ 0, %.lr.ph48.preheader ]
  %.014.ph55 = phi i8 [ %.115, %.outer ], [ 1, %.lr.ph48.preheader ] ; 5 uses
  %.0.ph54 = phi i32 [ %.1, %.outer ], [ 0, %.lr.ph48.preheader ] ; 2 uses
  %.033.ph53 = phi i8 [ %.fr, %.outer ], [ 11, %.lr.ph48.preheader ] ; 2 uses
  %.011.ph57147 = ptrtoaddr ptr %.011.ph57 to i64
  %i.aq = load i8, ptr %.011.ph57, align 1        ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  %i.as = icmp eq i8 %.033.ph53, 11
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.g, label %.loopexit, !prof !8

bb.g:                                             ; preds = %.lr.ph48
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.011.ph57, i64 1 ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %.peel.next.preheader, label %.outer._crit_edge.thread

.peel.next.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %.011.ph57147, -1
  %i.ay = add i64 %.fr153, %i.ax                  ; 2 uses
  %i.az = add i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.h
  %i.ba = phi i32 [ %i.bd, %bb.h ], [ %i.au, %.peel.next.preheader ] ; 2 uses
  %.01147.prol = phi ptr [ %i.be, %bb.h ], [ %i.av, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.peel.next.preheader ]
  %i.bb = load i8, ptr %.01147.prol, align 1      ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.loopexit, !prof !8

bb.h:                                             ; preds = %.peel.next.prol
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.aj, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01147.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !33

.peel.next.prol.loopexit:                         ; preds = %bb.h, %.peel.next.preheader
  %.unr = phi i32 [ %i.au, %.peel.next.preheader ], [ %i.bd, %bb.h ]
  %.01147.unr = phi ptr [ %i.av, %.peel.next.preheader ], [ %i.be, %bb.h ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.outer._crit_edge.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.i
  %i.bg = phi i32 [ %i.bv, %bb.i ], [ %.unr, %.peel.next.prol.loopexit ] ; 5 uses
  %.01147 = phi ptr [ %i.bw, %bb.i ], [ %.01147.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.01147, align 1           ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.01147, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit177, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.bn = add nsw i32 %i.bg, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.aj, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01147, i64 2
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit173, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.br = add nsw i32 %i.bg, 3                    ; 2 uses
  store i32 %i.br, ptr %i.aj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.01147, i64 3
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.i:                                             ; preds = %.peel.next.3
  %i.bv = add nsw i32 %i.bg, 4                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.01147, i64 4 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.e
  br i1 %i.bx, label %.peel.next, label %.outer._crit_edge.thread, !llvm.loop !34

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.by = getelementptr inbounds nuw i8, ptr %.01147, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit173:   ; preds = %.peel.next.2
  %i.bz = getelementptr inbounds nuw i8, ptr %.01147, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit177:   ; preds = %.peel.next.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01147, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit177, %.loopexit.loopexit.loopexit.split.loop.exit173, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph48
  %i.cb = phi i32 [ %i.ap, %.lr.ph48 ], [ %i.bg, %.peel.next ], [ %i.bj, %.loopexit.loopexit.loopexit.split.loop.exit177 ], [ %i.bn, %.loopexit.loopexit.loopexit.split.loop.exit173 ], [ %i.br, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ba, %.peel.next.prol ] ; 3 uses
  %.01147.lcssa = phi ptr [ %.011.ph57, %.lr.ph48 ], [ %.01147, %.peel.next ], [ %i.ca, %.loopexit.loopexit.loopexit.split.loop.exit177 ], [ %i.bz, %.loopexit.loopexit.loopexit.split.loop.exit173 ], [ %i.by, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01147.prol, %.peel.next.prol ]
  %.01246.lcssa = phi i32 [ %.012.ph56, %.lr.ph48 ], [ 0, %.peel.next.prol ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit173 ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit177 ], [ 0, %.peel.next ] ; 2 uses
  %.03345.lcssa = phi i8 [ %.033.ph53, %.lr.ph48 ], [ 11, %.peel.next.prol ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit173 ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit177 ], [ 11, %.peel.next ]
  %.lcssa = phi i8 [ %i.aq, %.lr.ph48 ], [ %i.bh, %.peel.next ], [ %i.bl, %.loopexit.loopexit.loopexit.split.loop.exit177 ], [ %i.bp, %.loopexit.loopexit.loopexit.split.loop.exit173 ], [ %i.bt, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.bb, %.peel.next.prol ] ; 2 uses
  %i.cc = zext i8 %.lcssa to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %.03345.lcssa to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %.fr = freeze i8 %i.ck                          ; 4 uses
  %i.cl = shl i32 %.0.ph54, 6                     ; 3 uses
  %i.cm = zext i8 %.lcssa to i32
  %i.cn = lshr i32 %i.cg, 1
  %i.co = lshr i32 127, %i.cn
  %i.cp = and i32 %i.co, %i.cm
  %i.cq = or i32 %i.cp, %i.cl                     ; 3 uses
  %i.cr = icmp ult i8 %.fr, 11
  br i1 %i.cr, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cs = icmp eq i8 %.fr, 11
  br i1 %i.cs, label %bb.k, label %.outer

bb.k:                                             ; preds = %bb.j
  %i.ct = and i32 %.01246.lcssa, 2096128
  %i.cu = icmp eq i32 %i.ct, 55296
  %i.cv = and i32 %.0.ph54, 32752
  %i.cw = icmp eq i32 %i.cv, 880
  %i.cx = and i1 %i.cw, %i.cu
  br i1 %i.cx, label %.critedge.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = trunc nuw i8 %.014.ph55 to i1
  %i.cz = icmp ult i32 %i.cl, 256
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  %i.db = zext i1 %i.da to i8                     ; 2 uses
  %i.dc = add nsw i32 %i.cb, 1                    ; 2 uses
  store i32 %i.dc, ptr %i.aj, align 4
  %i.dd = icmp ugt i32 %i.cl, 65535
  br i1 %i.dd, label %bb.m, label %.outer

bb.m:                                             ; preds = %bb.l
  %i.de = add nsw i32 %i.cb, 2                    ; 2 uses
  store i32 %i.de, ptr %i.aj, align 4
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.m, %bb.j
  %i.df = phi i32 [ %i.cb, %bb.j ], [ %i.de, %bb.m ], [ %i.dc, %bb.l ]
  %.1 = phi i32 [ %i.cq, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ]
  %.115 = phi i8 [ %.014.ph55, %bb.j ], [ %i.db, %bb.m ], [ %i.db, %bb.l ] ; 2 uses
  %.113 = phi i32 [ %.01246.lcssa, %bb.j ], [ %i.cq, %bb.m ], [ %i.cq, %bb.l ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.01147.lcssa, i64 1 ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.e
  br i1 %i.dh, label %.lr.ph48, label %.outer._crit_edge, !llvm.loop !35

.outer._crit_edge.thread:                         ; preds = %bb.g, %bb.i, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %.014.ph.lcssa38.ph = phi i8 [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit20 ], [ %.014.ph55, %bb.i ], [ %.014.ph55, %.peel.next.prol.loopexit ], [ %.014.ph55, %bb.g ]
  %i.di = sub nuw nsw i8 2, %.014.ph.lcssa38.ph
  br label %.critedge.sink.split

.outer._crit_edge:                                ; preds = %.outer
  %i.dj = icmp eq i8 %.fr, 11
  %i.dk = sub nuw nsw i8 2, %.115
  %spec.select = select i1 %i.dj, i8 %i.dk, i8 3
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.k, %.loopexit, %.outer._crit_edge.thread, %.outer._crit_edge
  %.sink = phi i8 [ %spec.select, %.outer._crit_edge ], [ %i.di, %.outer._crit_edge.thread ], [ 3, %.loopexit ], [ 3, %bb.k ]
  store i8 %.sink, ptr %0, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEE6DecodeIhEEvPT_NS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  switch i32 %i.c, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1
  store i8 %i.e, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i16, ptr %2, align 1
  store i16 %i.f, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 1
  store i32 %i.g, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.a
  %i.h = load i64, ptr %2, align 1
  store i64 %i.h, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) %2, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) %2, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 1 dereferenceable(13) %2, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 1 dereferenceable(14) %2, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.c, 1
  br i1 %i.i, label %bb.s, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.j = icmp ult i64 %3, 2147483648
  br i1 %i.j, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %i.k = load i32, ptr %i.b, align 4
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.n = icmp sgt i64 %3, %i.l
  br i1 %i.n, label %.lr.ph.preheader, label %.outer._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.q = add i64 %3, %i.a
  %.fr = freeze i64 %i.q
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.0.ph31 = phi ptr [ %i.bm, %.outer ], [ %i.p, %.lr.ph.preheader ] ; 4 uses
  %.012.ph30 = phi ptr [ %.1, %.outer ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %.019.ph29 = phi i32 [ %.120, %.outer ], [ 0, %.lr.ph.preheader ]
  %.021.ph28 = phi i8 [ %i.bc, %.outer ], [ 11, %.lr.ph.preheader ] ; 2 uses
  %.0.ph3167 = ptrtoaddr ptr %.0.ph31 to i64
  %i.r = load i8, ptr %.0.ph31, align 1           ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  %i.t = icmp eq i8 %.021.ph28, 11
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %bb.u, label %.loopexit, !prof !8

bb.u:                                             ; preds = %.lr.ph
  store i8 %i.r, ptr %.012.ph30, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.ph31, i64 1 ; 3 uses
  %i.w = icmp ult ptr %i.v, %i.m
  br i1 %i.w, label %.peel.next.preheader, label %.outer._crit_edge

.peel.next.preheader:                             ; preds = %bb.u
  %i.x = xor i64 %.0.ph3167, -1
  %i.y = add i64 %.fr, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, -1
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.v
  %.027.prol = phi ptr [ %i.ac, %bb.v ], [ %i.v, %.peel.next.preheader ] ; 3 uses
  %.012.ph30.pn.prol = phi ptr [ %.01226.prol, %bb.v ], [ %.012.ph30, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.peel.next.preheader ]
  %.01226.prol = getelementptr inbounds nuw i8, ptr %.012.ph30.pn.prol, i64 1 ; 4 uses
  %i.aa = load i8, ptr %.027.prol, align 1        ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.v, label %.loopexit, !prof !8

bb.v:                                             ; preds = %.peel.next.prol
  store i8 %i.aa, ptr %.01226.prol, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.027.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !36

.peel.next.prol.loopexit:                         ; preds = %bb.v, %.peel.next.preheader
  %.027.unr = phi ptr [ %i.v, %.peel.next.preheader ], [ %i.ac, %bb.v ]
  %.012.ph30.pn.unr = phi ptr [ %.012.ph30, %.peel.next.preheader ], [ %.01226.prol, %bb.v ]
  %i.ad = icmp ult i64 %i.z, 3
  br i1 %i.ad, label %.outer._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.w
  %.027 = phi ptr [ %i.ap, %bb.w ], [ %.027.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.012.ph30.pn = phi ptr [ %.01226.3, %bb.w ], [ %.012.ph30.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01226 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.027, align 1             ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  store i8 %i.ae, ptr %.01226, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.027, i64 1
  %.01226.1 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 3 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit81, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  store i8 %i.ah, ptr %.01226.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.027, i64 2
  %.01226.2 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit77, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  store i8 %i.ak, ptr %.01226.2, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.027, i64 3
  %.01226.3 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 4 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.w, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.w:                                             ; preds = %.peel.next.3
  store i8 %i.an, ptr %.01226.3, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.027, i64 4 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.m
  br i1 %i.aq, label %.peel.next, label %.outer._crit_edge, !llvm.loop !37

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.027, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit77:    ; preds = %.peel.next.2
  %i.as = getelementptr inbounds nuw i8, ptr %.027, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit81:    ; preds = %.peel.next.1
  %i.at = getelementptr inbounds nuw i8, ptr %.027, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit81, %.loopexit.loopexit.loopexit.split.loop.exit77, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.027.lcssa = phi ptr [ %.0.ph31, %.lr.ph ], [ %.027, %.peel.next ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %i.ar, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.027.prol, %.peel.next.prol ]
  %.01226.lcssa = phi ptr [ %.012.ph30, %.lr.ph ], [ %.01226, %.peel.next ], [ %.01226.1, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %.01226.2, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %.01226.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01226.prol, %.peel.next.prol ] ; 3 uses
  %.02125.lcssa = phi i8 [ %.021.ph28, %.lr.ph ], [ 11, %.peel.next.prol ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ 11, %.peel.next ]
  %.lcssa = phi i8 [ %i.r, %.lr.ph ], [ %i.ae, %.peel.next ], [ %i.ah, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %i.ak, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.aa, %.peel.next.prol ] ; 2 uses
  %i.au = zext i8 %.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %.02125.lcssa to i32
  %i.ay = zext i8 %i.aw to i32                    ; 2 uses
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = shl i32 %.019.ph29, 6
  %i.be = zext i8 %.lcssa to i32
  %i.bf = lshr i32 %i.ay, 1
  %i.bg = lshr i32 127, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %i.bi = or i32 %i.bh, %i.bd                     ; 2 uses
  %i.bj = icmp eq i8 %i.bc, 11
  br i1 %i.bj, label %bb.x, label %.outer

bb.x:                                             ; preds = %.loopexit
  %i.bk = trunc i32 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01226.lcssa, i64 1
  store i8 %i.bk, ptr %.01226.lcssa, align 1
  br label %.outer

.outer:                                           ; preds = %bb.x, %.loopexit
  %.120 = phi i32 [ 0, %bb.x ], [ %i.bi, %.loopexit ]
  %.1 = phi ptr [ %i.bl, %bb.x ], [ %.01226.lcssa, %.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 1 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.m
  br i1 %i.bn, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !38

.outer._crit_edge:                                ; preds = %.outer, %bb.u, %bb.w, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.fr77 = freeze i64 %3                          ; 4 uses
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %1, ptr noundef %2, i64 noundef %i.d)
  %i.e = icmp ult i64 %.fr77, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.fr77 ; 3 uses
  %i.i = icmp sgt i64 %.fr77, %i.g
  br i1 %i.i, label %.lr.ph.preheader, label %.outer._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.j = getelementptr inbounds [2 x i8], ptr %1, i64 %i.g
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.l = add i64 %.fr77, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.0.ph36 = phi ptr [ %i.bx, %.outer ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %.014.ph35 = phi ptr [ %.2, %.outer ], [ %i.j, %.lr.ph.preheader ] ; 4 uses
  %.024.ph34 = phi i32 [ %.125, %.outer ], [ 0, %.lr.ph.preheader ]
  %.026.ph33 = phi i8 [ %i.bd, %.outer ], [ 11, %.lr.ph.preheader ] ; 2 uses
  %.0.ph3672 = ptrtoaddr ptr %.0.ph36 to i64
  %i.m = load i8, ptr %.0.ph36, align 1           ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  %i.o = icmp eq i8 %.026.ph33, 11
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %.loopexit, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.m to i16
  store i16 %i.q, ptr %.014.ph35, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.0.ph36, i64 1 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.peel.next.preheader, label %.outer._crit_edge

.peel.next.preheader:                             ; preds = %bb.c
  %i.t = xor i64 %.0.ph3672, -1
  %i.u = add i64 %i.l, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.d
  %.032.prol = phi ptr [ %i.z, %bb.d ], [ %i.r, %.peel.next.preheader ] ; 3 uses
  %.014.ph35.pn.prol = phi ptr [ %.01431.prol, %bb.d ], [ %.014.ph35, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.d ], [ 0, %.peel.next.preheader ]
  %.01431.prol = getelementptr inbounds nuw i8, ptr %.014.ph35.pn.prol, i64 2 ; 4 uses
  %i.w = load i8, ptr %.032.prol, align 1         ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %.loopexit, !prof !8

bb.d:                                             ; preds = %.peel.next.prol
  %i.y = zext nneg i8 %i.w to i16
  store i16 %i.y, ptr %.01431.prol, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.032.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !39

.peel.next.prol.loopexit:                         ; preds = %bb.d, %.peel.next.preheader
  %.032.unr = phi ptr [ %i.r, %.peel.next.preheader ], [ %i.z, %bb.d ]
  %.014.ph35.pn.unr = phi ptr [ %.014.ph35, %.peel.next.preheader ], [ %.01431.prol, %bb.d ]
  %i.aa = icmp ult i64 %i.v, 3
  br i1 %i.aa, label %.outer._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.e
  %.032 = phi ptr [ %i.aq, %bb.e ], [ %.032.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.014.ph35.pn = phi ptr [ %.01431.3, %bb.e ], [ %.014.ph35.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01431 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 2 ; 2 uses
  %i.ab = load i8, ptr %.032, align 1             ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  %i.ad = zext nneg i8 %i.ab to i16
  store i16 %i.ad, ptr %.01431, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %.01431.1 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit87, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.ah = zext nneg i8 %i.af to i16
  store i16 %i.ah, ptr %.01431.1, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.032, i64 2
  %.01431.2 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit83, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.al = zext nneg i8 %i.aj to i16
  store i16 %i.al, ptr %.01431.2, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.032, i64 3
  %.01431.3 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 8 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.e:                                             ; preds = %.peel.next.3
  %i.ap = zext nneg i8 %i.an to i16
  store i16 %i.ap, ptr %.01431.3, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %.peel.next, label %.outer._crit_edge, !llvm.loop !40

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.as = getelementptr inbounds nuw i8, ptr %.032, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit83:    ; preds = %.peel.next.2
  %i.at = getelementptr inbounds nuw i8, ptr %.032, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit87:    ; preds = %.peel.next.1
  %i.au = getelementptr inbounds nuw i8, ptr %.032, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit87, %.loopexit.loopexit.loopexit.split.loop.exit83, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.032.lcssa = phi ptr [ %.0.ph36, %.lr.ph ], [ %.032, %.peel.next ], [ %i.au, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.032.prol, %.peel.next.prol ]
  %.01431.lcssa = phi ptr [ %.014.ph35, %.lr.ph ], [ %.01431, %.peel.next ], [ %.01431.1, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %.01431.2, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %.01431.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01431.prol, %.peel.next.prol ] ; 5 uses
  %.02630.lcssa = phi i8 [ %.026.ph33, %.lr.ph ], [ 11, %.peel.next.prol ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ 11, %.peel.next ]
  %.lcssa = phi i8 [ %i.m, %.lr.ph ], [ %i.ab, %.peel.next ], [ %i.af, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.aj, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.w, %.peel.next.prol ] ; 2 uses
  %i.av = zext i8 %.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %.02630.lcssa to i32
  %i.az = zext i8 %i.ax to i32                    ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = shl i32 %.024.ph34, 6                   ; 3 uses
  %i.bf = zext i8 %.lcssa to i32
  %i.bg = lshr i32 %i.az, 1
  %i.bh = lshr i32 127, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %i.bj = or i32 %i.bi, %i.be                     ; 3 uses
  %i.bk = icmp eq i8 %i.bd, 11
  br i1 %i.bk, label %bb.f, label %.outer

bb.f:                                             ; preds = %.loopexit
  %i.bl = icmp ult i32 %i.be, 65536
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = trunc nuw i32 %i.bj to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 2
  store i16 %i.bm, ptr %.01431.lcssa, align 2
  br label %.outer

bb.h:                                             ; preds = %bb.f
  %i.bo = add i32 %i.be, 983040
  %i.bp = lshr i32 %i.bo, 10
  %i.bq = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 4
  %i.br = trunc i32 %i.bp to i16
  %i.bs = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.bt = trunc i32 %i.bj to i16
  %i.bu = insertelement <2 x i16> %i.bs, i16 %i.bt, i64 1
  %i.bv = and <2 x i16> %i.bu, splat (i16 1023)
  %i.bw = or disjoint <2 x i16> %i.bv, <i16 -10240, i16 -9216>
  store <2 x i16> %i.bw, ptr %.01431.lcssa, align 2
  br label %.outer

.outer:                                           ; preds = %bb.g, %bb.h, %.loopexit
  %.125 = phi i32 [ %i.bj, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.2 = phi ptr [ %.01431.lcssa, %.loopexit ], [ %i.bq, %bb.h ], [ %i.bn, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.h
  br i1 %i.by, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !41

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.e, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.l = load i8, ptr %i.o, align 1
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !0

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa45 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i ]
  %i.n = sub i64 %.lcssa45, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02535.i48 = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.02535.i48, i64 1 ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader.i.preheader, label %.lr.ph.i, !llvm.loop !0

.preheader.i.preheader:                           ; preds = %.lr.ph, %.preheader30.i
  %.126.i.ph = phi ptr [ %1, %.preheader30.i ], [ %i.o, %.lr.ph ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.s, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.s, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = load i64, ptr %.126.i, align 8
  %i.u = and i64 %i.t, -9187201950435737472
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %.126.i to i64
  %i.w = sub i64 %i.v, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 4 uses
  %i.x = icmp ult ptr %.2.i, %i.e
  br i1 %i.x, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.y = add i64 %2, %i.d
  %i.z = sub i64 %i.y, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.z ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.af, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.336.i, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ac = ptrtoint ptr %.336.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

bb.f:                                             ; preds = %.lr.ph37.i
  %i.af = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.af, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.f, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.f ]
  %i.ag = ptrtoint ptr %.3.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

_ZNK2v84base6VectorIKhE6lengthEv.exit19:          ; preds = %._crit_edge.i, %bb.e, %bb.d, %.lr.ph.i._crit_edge
  %.1.in.i = phi i64 [ %i.n, %.lr.ph.i._crit_edge ], [ %i.ae, %bb.e ], [ %i.ai, %._crit_edge.i ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 %.1.i, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %.1.i, %i.c
  br i1 %i.ak, label %bb.m, label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  %sext = shl i64 %.1.in.i, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %.lr.ph51.preheader, label %.outer._crit_edge.thread

.lr.ph51.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = add i64 %2, %i.d
  %.fr148 = freeze i64 %i.ao
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.outer
  %i.ap = phi i32 [ %i.da, %.outer ], [ %.1.i, %.lr.ph51.preheader ] ; 2 uses
  %.011.ph59 = phi ptr [ %i.db, %.outer ], [ %i.an, %.lr.ph51.preheader ] ; 4 uses
  %.014.ph58 = phi i8 [ %.115, %.outer ], [ 1, %.lr.ph51.preheader ] ; 5 uses
  %.0.ph57 = phi i32 [ %.133, %.outer ], [ 0, %.lr.ph51.preheader ]
  %.035.ph56 = phi i8 [ %.fr, %.outer ], [ 12, %.lr.ph51.preheader ] ; 2 uses
  %.011.ph59142 = ptrtoaddr ptr %.011.ph59 to i64
  %i.aq = load i8, ptr %.011.ph59, align 1        ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  %i.as = icmp eq i8 %.035.ph56, 12
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.g, label %.loopexit, !prof !8

bb.g:                                             ; preds = %.lr.ph51
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.011.ph59, i64 1 ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %.peel.next.preheader, label %.outer._crit_edge.thread

.peel.next.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %.011.ph59142, -1
  %i.ay = add i64 %.fr148, %i.ax                  ; 2 uses
  %i.az = add i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.h
  %i.ba = phi i32 [ %i.bd, %bb.h ], [ %i.au, %.peel.next.preheader ] ; 2 uses
  %.01150.prol = phi ptr [ %i.be, %bb.h ], [ %i.av, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.peel.next.preheader ]
  %i.bb = load i8, ptr %.01150.prol, align 1      ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.loopexit, !prof !8

bb.h:                                             ; preds = %.peel.next.prol
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.aj, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01150.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !42

.peel.next.prol.loopexit:                         ; preds = %bb.h, %.peel.next.preheader
  %.unr = phi i32 [ %i.au, %.peel.next.preheader ], [ %i.bd, %bb.h ]
  %.01150.unr = phi ptr [ %i.av, %.peel.next.preheader ], [ %i.be, %bb.h ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.outer._crit_edge.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.i
  %i.bg = phi i32 [ %i.bv, %bb.i ], [ %.unr, %.peel.next.prol.loopexit ] ; 5 uses
  %.01150 = phi ptr [ %i.bw, %bb.i ], [ %.01150.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.01150, align 1           ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.01150, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit172, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.bn = add nsw i32 %i.bg, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.aj, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01150, i64 2
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit168, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.br = add nsw i32 %i.bg, 3                    ; 2 uses
  store i32 %i.br, ptr %i.aj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.01150, i64 3
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.i:                                             ; preds = %.peel.next.3
  %i.bv = add nsw i32 %i.bg, 4                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.01150, i64 4 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.e
  br i1 %i.bx, label %.peel.next, label %.outer._crit_edge.thread, !llvm.loop !43

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.by = getelementptr inbounds nuw i8, ptr %.01150, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit168:   ; preds = %.peel.next.2
  %i.bz = getelementptr inbounds nuw i8, ptr %.01150, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit172:   ; preds = %.peel.next.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01150, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit172, %.loopexit.loopexit.loopexit.split.loop.exit168, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph51
  %i.cb = phi i32 [ %i.ap, %.lr.ph51 ], [ %i.bg, %.peel.next ], [ %i.bj, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bn, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.br, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ba, %.peel.next.prol ] ; 3 uses
  %.01150.lcssa = phi ptr [ %.011.ph59, %.lr.ph51 ], [ %.01150, %.peel.next ], [ %i.ca, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bz, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.by, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01150.prol, %.peel.next.prol ]
  %.03549.lcssa = phi i8 [ %.035.ph56, %.lr.ph51 ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ 12, %.peel.next ]
  %.lcssa = phi i8 [ %i.aq, %.lr.ph51 ], [ %i.bh, %.peel.next ], [ %i.bl, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bp, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.bt, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.bb, %.peel.next.prol ] ; 2 uses
  %i.cc = zext i8 %.lcssa to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %.03549.lcssa to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %.fr = freeze i8 %i.ck                          ; 4 uses
  %i.cl = shl i32 %.0.ph57, 6                     ; 3 uses
  %i.cm = icmp ugt i8 %.fr, 11
  br i1 %i.cm, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.loopexit
  %i.cn = lshr i32 %i.cg, 1
  %i.co = lshr i32 127, %i.cn
  %i.cp = zext i8 %.lcssa to i32
  %i.cq = and i32 %i.co, %i.cp
  %i.cr = or i32 %i.cq, %i.cl
  %i.cs = icmp eq i8 %.fr, 12
  br i1 %i.cs, label %bb.k, label %.outer

bb.k:                                             ; preds = %bb.j
  %i.ct = trunc nuw i8 %.014.ph58 to i1
  %i.cu = icmp ult i32 %i.cl, 256
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cw = zext i1 %i.cv to i8                     ; 2 uses
  %i.cx = add nsw i32 %i.cb, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.aj, align 4
  %i.cy = icmp ugt i32 %i.cl, 65535
  br i1 %i.cy, label %bb.l, label %.outer

bb.l:                                             ; preds = %bb.k
  %i.cz = add nsw i32 %i.cb, 2                    ; 2 uses
  store i32 %i.cz, ptr %i.aj, align 4
  br label %.outer

.outer:                                           ; preds = %bb.j, %bb.l, %bb.k
  %i.da = phi i32 [ %i.cb, %bb.j ], [ %i.cz, %bb.l ], [ %i.cx, %bb.k ]
  %.133 = phi i32 [ %i.cr, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.115 = phi i8 [ %.014.ph58, %bb.j ], [ %i.cw, %bb.l ], [ %i.cw, %bb.k ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01150.lcssa, i64 1 ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.e
  br i1 %i.dc, label %.lr.ph51, label %.outer._crit_edge, !llvm.loop !44

.outer._crit_edge.thread:                         ; preds = %bb.g, %bb.i, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %.014.ph.lcssa42.ph = phi i8 [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit20 ], [ %.014.ph58, %bb.i ], [ %.014.ph58, %.peel.next.prol.loopexit ], [ %.014.ph58, %bb.g ]
  %i.dd = sub nuw nsw i8 2, %.014.ph.lcssa42.ph
  br label %.sink.split

.outer._crit_edge:                                ; preds = %.outer
  %i.de = icmp eq i8 %.fr, 12
  %i.df = sub nuw nsw i8 2, %.115
  %spec.select = select i1 %i.de, i8 %i.df, i8 3
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %.outer._crit_edge.thread, %.outer._crit_edge
  %.sink = phi i8 [ %i.dd, %.outer._crit_edge.thread ], [ %spec.select, %.outer._crit_edge ], [ 3, %.loopexit ]
  store i8 %.sink, ptr %0, align 4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEE6DecodeIhEEvPT_NS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  switch i32 %i.c, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1
  store i8 %i.e, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i16, ptr %2, align 1
  store i16 %i.f, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.e:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 1
  store i32 %i.g, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.i:                                             ; preds = %bb.a
  %i.h = load i64, ptr %2, align 1
  store i64 %i.h, ptr %1, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) %2, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) %2, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 1 dereferenceable(13) %2, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 1 dereferenceable(14) %2, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.q:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.c, 1
  br i1 %i.i, label %bb.s, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.j = icmp ult i64 %3, 2147483648
  br i1 %i.j, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %i.k = load i32, ptr %i.b, align 4
  %i.l = sext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 3 uses
  %i.n = icmp sgt i64 %3, %i.l
  br i1 %i.n, label %.lr.ph.preheader, label %.outer._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.q = add i64 %3, %i.a
  %.fr = freeze i64 %i.q
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.0.ph31 = phi ptr [ %i.bm, %.outer ], [ %i.p, %.lr.ph.preheader ] ; 4 uses
  %.012.ph30 = phi ptr [ %.1, %.outer ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %.019.ph29 = phi i32 [ %.120, %.outer ], [ 0, %.lr.ph.preheader ]
  %.021.ph28 = phi i8 [ %i.bc, %.outer ], [ 12, %.lr.ph.preheader ] ; 2 uses
  %.0.ph3167 = ptrtoaddr ptr %.0.ph31 to i64
  %i.r = load i8, ptr %.0.ph31, align 1           ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  %i.t = icmp eq i8 %.021.ph28, 12
  %i.u = and i1 %i.t, %i.s
  br i1 %i.u, label %bb.u, label %.loopexit, !prof !8

bb.u:                                             ; preds = %.lr.ph
  store i8 %i.r, ptr %.012.ph30, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.ph31, i64 1 ; 3 uses
  %i.w = icmp ult ptr %i.v, %i.m
  br i1 %i.w, label %.peel.next.preheader, label %.outer._crit_edge

.peel.next.preheader:                             ; preds = %bb.u
  %i.x = xor i64 %.0.ph3167, -1
  %i.y = add i64 %.fr, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, -1
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.v
  %.027.prol = phi ptr [ %i.ac, %bb.v ], [ %i.v, %.peel.next.preheader ] ; 3 uses
  %.012.ph30.pn.prol = phi ptr [ %.01226.prol, %bb.v ], [ %.012.ph30, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.v ], [ 0, %.peel.next.preheader ]
  %.01226.prol = getelementptr inbounds nuw i8, ptr %.012.ph30.pn.prol, i64 1 ; 4 uses
  %i.aa = load i8, ptr %.027.prol, align 1        ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.v, label %.loopexit, !prof !8

bb.v:                                             ; preds = %.peel.next.prol
  store i8 %i.aa, ptr %.01226.prol, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.027.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !45

.peel.next.prol.loopexit:                         ; preds = %bb.v, %.peel.next.preheader
  %.027.unr = phi ptr [ %i.v, %.peel.next.preheader ], [ %i.ac, %bb.v ]
  %.012.ph30.pn.unr = phi ptr [ %.012.ph30, %.peel.next.preheader ], [ %.01226.prol, %bb.v ]
  %i.ad = icmp ult i64 %i.z, 3
  br i1 %i.ad, label %.outer._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.w
  %.027 = phi ptr [ %i.ap, %bb.w ], [ %.027.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.012.ph30.pn = phi ptr [ %.01226.3, %bb.w ], [ %.012.ph30.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01226 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.027, align 1             ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  store i8 %i.ae, ptr %.01226, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.027, i64 1
  %.01226.1 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 3 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit81, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  store i8 %i.ah, ptr %.01226.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.027, i64 2
  %.01226.2 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit77, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  store i8 %i.ak, ptr %.01226.2, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.027, i64 3
  %.01226.3 = getelementptr inbounds nuw i8, ptr %.012.ph30.pn, i64 4 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.w, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.w:                                             ; preds = %.peel.next.3
  store i8 %i.an, ptr %.01226.3, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.027, i64 4 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.m
  br i1 %i.aq, label %.peel.next, label %.outer._crit_edge, !llvm.loop !46

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.027, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit77:    ; preds = %.peel.next.2
  %i.as = getelementptr inbounds nuw i8, ptr %.027, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit81:    ; preds = %.peel.next.1
  %i.at = getelementptr inbounds nuw i8, ptr %.027, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit81, %.loopexit.loopexit.loopexit.split.loop.exit77, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.027.lcssa = phi ptr [ %.0.ph31, %.lr.ph ], [ %.027, %.peel.next ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %i.ar, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.027.prol, %.peel.next.prol ]
  %.01226.lcssa = phi ptr [ %.012.ph30, %.lr.ph ], [ %.01226, %.peel.next ], [ %.01226.1, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %.01226.2, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %.01226.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01226.prol, %.peel.next.prol ] ; 3 uses
  %.02125.lcssa = phi i8 [ %.021.ph28, %.lr.ph ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ 12, %.peel.next ]
  %.lcssa = phi i8 [ %i.r, %.lr.ph ], [ %i.ae, %.peel.next ], [ %i.ah, %.loopexit.loopexit.loopexit.split.loop.exit81 ], [ %i.ak, %.loopexit.loopexit.loopexit.split.loop.exit77 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.aa, %.peel.next.prol ] ; 2 uses
  %i.au = zext i8 %.lcssa to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %.02125.lcssa to i32
  %i.ay = zext i8 %i.aw to i32                    ; 2 uses
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = shl i32 %.019.ph29, 6
  %i.be = zext i8 %.lcssa to i32
  %i.bf = lshr i32 %i.ay, 1
  %i.bg = lshr i32 127, %i.bf
  %i.bh = and i32 %i.bg, %i.be
  %i.bi = or i32 %i.bh, %i.bd                     ; 2 uses
  %i.bj = icmp eq i8 %i.bc, 12
  br i1 %i.bj, label %bb.x, label %.outer

bb.x:                                             ; preds = %.loopexit
  %i.bk = trunc i32 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01226.lcssa, i64 1
  store i8 %i.bk, ptr %.01226.lcssa, align 1
  br label %.outer

.outer:                                           ; preds = %bb.x, %.loopexit
  %.120 = phi i32 [ 0, %bb.x ], [ %i.bi, %.loopexit ]
  %.1 = phi ptr [ %i.bl, %bb.x ], [ %.01226.lcssa, %.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 1 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.m
  br i1 %i.bn, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !47

.outer._crit_edge:                                ; preds = %.outer, %bb.u, %bb.w, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.fr77 = freeze i64 %3                          ; 4 uses
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.c to i64
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %1, ptr noundef %2, i64 noundef %i.d)
  %i.e = icmp ult i64 %.fr77, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.fr77 ; 3 uses
  %i.i = icmp sgt i64 %.fr77, %i.g
  br i1 %i.i, label %.lr.ph.preheader, label %.outer._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.j = getelementptr inbounds [2 x i8], ptr %1, i64 %i.g
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.l = add i64 %.fr77, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.0.ph36 = phi ptr [ %i.bx, %.outer ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %.014.ph35 = phi ptr [ %.2, %.outer ], [ %i.j, %.lr.ph.preheader ] ; 4 uses
  %.024.ph34 = phi i32 [ %.125, %.outer ], [ 0, %.lr.ph.preheader ]
  %.026.ph33 = phi i8 [ %i.bd, %.outer ], [ 12, %.lr.ph.preheader ] ; 2 uses
  %.0.ph3672 = ptrtoaddr ptr %.0.ph36 to i64
  %i.m = load i8, ptr %.0.ph36, align 1           ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  %i.o = icmp eq i8 %.026.ph33, 12
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %.loopexit, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.m to i16
  store i16 %i.q, ptr %.014.ph35, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.0.ph36, i64 1 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.peel.next.preheader, label %.outer._crit_edge

.peel.next.preheader:                             ; preds = %bb.c
  %i.t = xor i64 %.0.ph3672, -1
  %i.u = add i64 %i.l, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.d
  %.032.prol = phi ptr [ %i.z, %bb.d ], [ %i.r, %.peel.next.preheader ] ; 3 uses
  %.014.ph35.pn.prol = phi ptr [ %.01431.prol, %bb.d ], [ %.014.ph35, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.d ], [ 0, %.peel.next.preheader ]
  %.01431.prol = getelementptr inbounds nuw i8, ptr %.014.ph35.pn.prol, i64 2 ; 4 uses
  %i.w = load i8, ptr %.032.prol, align 1         ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %.loopexit, !prof !8

bb.d:                                             ; preds = %.peel.next.prol
  %i.y = zext nneg i8 %i.w to i16
  store i16 %i.y, ptr %.01431.prol, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.032.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !48

.peel.next.prol.loopexit:                         ; preds = %bb.d, %.peel.next.preheader
  %.032.unr = phi ptr [ %i.r, %.peel.next.preheader ], [ %i.z, %bb.d ]
  %.014.ph35.pn.unr = phi ptr [ %.014.ph35, %.peel.next.preheader ], [ %.01431.prol, %bb.d ]
  %i.aa = icmp ult i64 %i.v, 3
  br i1 %i.aa, label %.outer._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.e
  %.032 = phi ptr [ %i.aq, %bb.e ], [ %.032.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.014.ph35.pn = phi ptr [ %.01431.3, %bb.e ], [ %.014.ph35.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01431 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 2 ; 2 uses
  %i.ab = load i8, ptr %.032, align 1             ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.peel.next.1, label %.loopexit, !prof !8

.peel.next.1:                                     ; preds = %.peel.next
  %i.ad = zext nneg i8 %i.ab to i16
  store i16 %i.ad, ptr %.01431, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %.01431.1 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit87, !prof !8

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.ah = zext nneg i8 %i.af to i16
  store i16 %i.ah, ptr %.01431.1, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.032, i64 2
  %.01431.2 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit83, !prof !8

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.al = zext nneg i8 %i.aj to i16
  store i16 %i.al, ptr %.01431.2, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.032, i64 3
  %.01431.3 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 8 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !8

bb.e:                                             ; preds = %.peel.next.3
  %i.ap = zext nneg i8 %i.an to i16
  store i16 %i.ap, ptr %.01431.3, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %.peel.next, label %.outer._crit_edge, !llvm.loop !49

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.as = getelementptr inbounds nuw i8, ptr %.032, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit83:    ; preds = %.peel.next.2
  %i.at = getelementptr inbounds nuw i8, ptr %.032, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit87:    ; preds = %.peel.next.1
  %i.au = getelementptr inbounds nuw i8, ptr %.032, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit87, %.loopexit.loopexit.loopexit.split.loop.exit83, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.032.lcssa = phi ptr [ %.0.ph36, %.lr.ph ], [ %.032, %.peel.next ], [ %i.au, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.032.prol, %.peel.next.prol ]
  %.01431.lcssa = phi ptr [ %.014.ph35, %.lr.ph ], [ %.01431, %.peel.next ], [ %.01431.1, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %.01431.2, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %.01431.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01431.prol, %.peel.next.prol ] ; 5 uses
  %.02630.lcssa = phi i8 [ %.026.ph33, %.lr.ph ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ 12, %.peel.next ]
  %.lcssa = phi i8 [ %i.m, %.lr.ph ], [ %i.ab, %.peel.next ], [ %i.af, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.aj, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.w, %.peel.next.prol ] ; 2 uses
  %i.av = zext i8 %.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %.02630.lcssa to i32
  %i.az = zext i8 %i.ax to i32                    ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = shl i32 %.024.ph34, 6                   ; 3 uses
  %i.bf = zext i8 %.lcssa to i32
  %i.bg = lshr i32 %i.az, 1
  %i.bh = lshr i32 127, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %i.bj = or i32 %i.bi, %i.be                     ; 3 uses
  %i.bk = icmp eq i8 %i.bd, 12
  br i1 %i.bk, label %bb.f, label %.outer

bb.f:                                             ; preds = %.loopexit
  %i.bl = icmp ult i32 %i.be, 65536
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = trunc nuw i32 %i.bj to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 2
  store i16 %i.bm, ptr %.01431.lcssa, align 2
  br label %.outer

bb.h:                                             ; preds = %bb.f
  %i.bo = add i32 %i.be, 983040
  %i.bp = lshr i32 %i.bo, 10
  %i.bq = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 4
  %i.br = trunc i32 %i.bp to i16
  %i.bs = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.bt = trunc i32 %i.bj to i16
  %i.bu = insertelement <2 x i16> %i.bs, i16 %i.bt, i64 1
  %i.bv = and <2 x i16> %i.bu, splat (i16 1023)
  %i.bw = or disjoint <2 x i16> %i.bv, <i16 -10240, i16 -9216>
  store <2 x i16> %i.bw, ptr %.01431.lcssa, align 2
  br label %.outer

.outer:                                           ; preds = %bb.g, %bb.h, %.loopexit
  %.125 = phi i32 [ %i.bj, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.2 = phi ptr [ %.01431.lcssa, %.loopexit ], [ %i.bq, %bb.h ], [ %i.bn, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.h
  br i1 %i.by, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !50

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.e, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = distinct !{!2, !9}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !9, !11}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !9, !11}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !9, !11}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !9, !30, !31}
!25 = distinct !{!25, !9, !30, !31}
!26 = distinct !{!26, !9, !30}
!27 = !{!"branch_weights", i32 1, i32 1048575}
!28 = !{!22}
!29 = !{!23}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !9, !11}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !9, !11}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !10}
!40 = distinct !{!40, !9, !11}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !9, !11}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !9, !11}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !9, !11}
!50 = distinct !{!50, !9}
end_hunk_2
