inline.NumInlined: 138
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE:bb.a
.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.j = getelementptr inbounds [2 x i8], ptr %1, i64 %i.g
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.l = add i64 %.fr107, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.0.ph49 = phi ptr [ %i.j, %.lr.ph.preheader ], [ %.0.ph49.be, %.lr.ph.backedge ] ; 4 uses
  %.016.ph48 = phi ptr [ %i.k, %.lr.ph.preheader ], [ %.016.ph48.be, %.lr.ph.backedge ] ; 4 uses
  %.030.ph47 = phi i32 [ 0, %.lr.ph.preheader ], [ %.030.ph47.be, %.lr.ph.backedge ]
  %.033.ph46 = phi i8 [ 12, %.lr.ph.preheader ], [ %.033.ph46.be, %.lr.ph.backedge ] ; 2 uses
  %.016.ph48102 = ptrtoint ptr %.016.ph48 to i64
  %i.m = load i8, ptr %.016.ph48, align 1         ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  %i.o = icmp eq i8 %.033.ph46, 12                ; 2 uses
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %.loopexit, !prof !5

bb.c:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.m to i16
  store i16 %i.q, ptr %.0.ph49, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.016.ph48, i64 1 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.peel.next.preheader, label %.outer._crit_edge.thread78

.peel.next.preheader:                             ; preds = %bb.c
  %i.t = xor i64 %.016.ph48102, -1
  %i.u = add i64 %i.l, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.d
  %.042.pn.prol = phi ptr [ %.042.prol, %bb.d ], [ %.0.ph49, %.peel.next.preheader ]
  %.01641.prol = phi ptr [ %i.z, %bb.d ], [ %i.r, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.d ], [ 0, %.peel.next.preheader ]
  %.042.prol = getelementptr inbounds nuw i8, ptr %.042.pn.prol, i64 2 ; 4 uses
  %i.w = load i8, ptr %.01641.prol, align 1       ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %.loopexit, !prof !5

bb.d:                                             ; preds = %.peel.next.prol
  %i.y = zext nneg i8 %i.w to i16
  store i16 %i.y, ptr %.042.prol, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.01641.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !18

.peel.next.prol.loopexit:                         ; preds = %bb.d, %.peel.next.preheader
  %.042.pn.unr = phi ptr [ %.0.ph49, %.peel.next.preheader ], [ %.042.prol, %bb.d ]
  %.01641.unr = phi ptr [ %i.r, %.peel.next.preheader ], [ %i.z, %bb.d ]
  %i.aa = icmp ult i64 %i.v, 3
  br i1 %i.aa, label %.outer._crit_edge.thread78, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.e
  %.042.pn = phi ptr [ %.042.3, %bb.e ], [ %.042.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01641 = phi ptr [ %i.aq, %bb.e ], [ %.01641.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.042 = getelementptr inbounds nuw i8, ptr %.042.pn, i64 2 ; 2 uses
  %i.ab = load i8, ptr %.01641, align 1           ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.peel.next.1, label %.loopexit, !prof !5

.peel.next.1:                                     ; preds = %.peel.next
  %i.ad = zext nneg i8 %i.ab to i16
  store i16 %i.ad, ptr %.042, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.01641, i64 1
  %.042.1 = getelementptr inbounds nuw i8, ptr %.042.pn, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit117, !prof !5

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.ah = zext nneg i8 %i.af to i16
  store i16 %i.ah, ptr %.042.1, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.01641, i64 2
  %.042.2 = getelementptr inbounds nuw i8, ptr %.042.pn, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit113, !prof !5

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.al = zext nneg i8 %i.aj to i16
  store i16 %i.al, ptr %.042.2, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.01641, i64 3
  %.042.3 = getelementptr inbounds nuw i8, ptr %.042.pn, i64 8 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !5

bb.e:                                             ; preds = %.peel.next.3
  %i.ap = zext nneg i8 %i.an to i16
  store i16 %i.ap, ptr %.042.3, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.01641, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %.peel.next, label %.outer._crit_edge.thread78, !llvm.loop !19

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.as = getelementptr inbounds nuw i8, ptr %.01641, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit113:   ; preds = %.peel.next.2
  %i.at = getelementptr inbounds nuw i8, ptr %.01641, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit117:   ; preds = %.peel.next.1
  %i.au = getelementptr inbounds nuw i8, ptr %.01641, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit117, %.loopexit.loopexit.loopexit.split.loop.exit113, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.042.lcssa = phi ptr [ %.0.ph49, %.lr.ph ], [ %.042, %.peel.next ], [ %.042.1, %.loopexit.loopexit.loopexit.split.loop.exit117 ], [ %.042.2, %.loopexit.loopexit.loopexit.split.loop.exit113 ], [ %.042.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.042.prol, %.peel.next.prol ] ; 7 uses
  %.01641.lcssa = phi ptr [ %.016.ph48, %.lr.ph ], [ %.01641, %.peel.next ], [ %i.au, %.loopexit.loopexit.loopexit.split.loop.exit117 ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit113 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01641.prol, %.peel.next.prol ] ; 3 uses
  %.03340.lcssa = phi i8 [ %.033.ph46, %.lr.ph ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit113 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit117 ], [ 12, %.peel.next ]
  %.lcssa54 = phi i8 [ %i.m, %.lr.ph ], [ %i.ab, %.peel.next ], [ %i.af, %.loopexit.loopexit.loopexit.split.loop.exit117 ], [ %i.aj, %.loopexit.loopexit.loopexit.split.loop.exit113 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.w, %.peel.next.prol ] ; 2 uses
  %.lcssa = phi i1 [ %i.o, %.lr.ph ], [ true, %.peel.next.prol ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit113 ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit117 ], [ true, %.peel.next ]
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
  %i.bl = getelementptr inbounds nuw i8, ptr %.042.lcssa, i64 2 ; 2 uses
  store i16 -3, ptr %.042.lcssa, align 2
  br i1 %.lcssa, label %.outer, label %.outer.thread, !llvm.loop !20

bb.g:                                             ; preds = %.loopexit
  %i.bm = icmp eq i8 %i.bd, 12
  br i1 %i.bm, label %bb.h, label %.outer

bb.h:                                             ; preds = %bb.g
  %i.bn = icmp ult i32 %i.be, 65536
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = trunc nuw i32 %i.bj to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.042.lcssa, i64 2
  store i16 %i.bo, ptr %.042.lcssa, align 2
  br label %.outer

bb.j:                                             ; preds = %bb.h
  %i.bq = add i32 %i.be, 983040
  %i.br = lshr i32 %i.bq, 10
  %i.bs = getelementptr inbounds nuw i8, ptr %.042.lcssa, i64 4
  %i.bt = trunc i32 %i.br to i16
  %i.bu = insertelement <2 x i16> poison, i16 %i.bt, i64 0
  %i.bv = trunc i32 %i.bj to i16
  %i.bw = insertelement <2 x i16> %i.bu, i16 %i.bv, i64 1
  %i.bx = and <2 x i16> %i.bw, splat (i16 1023)
  %i.by = or disjoint <2 x i16> %i.bx, <i16 -10240, i16 -9216>
  store <2 x i16> %i.by, ptr %.042.lcssa, align 2
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.g, %bb.j, %bb.i
  %.134 = phi i8 [ 12, %bb.f ], [ %i.bd, %bb.g ], [ 12, %bb.j ], [ 12, %bb.i ] ; 2 uses
  %.131 = phi i32 [ 0, %bb.f ], [ %i.bj, %bb.g ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.2 = phi ptr [ %i.bl, %bb.f ], [ %.042.lcssa, %bb.g ], [ %i.bs, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01641.lcssa, i64 1 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.h
  br i1 %i.ca, label %.lr.ph.backedge, label %.outer._crit_edge

.lr.ph.backedge:                                  ; preds = %.outer, %.outer.thread
  %.0.ph49.be = phi ptr [ %.2, %.outer ], [ %i.bl, %.outer.thread ]
  %.016.ph48.be = phi ptr [ %i.bz, %.outer ], [ %.01641.lcssa, %.outer.thread ]
  %.030.ph47.be = phi i32 [ %.131, %.outer ], [ 0, %.outer.thread ]
  %.033.ph46.be = phi i8 [ %.134, %.outer ], [ 12, %.outer.thread ]
  br label %.lr.ph

.outer.thread:                                    ; preds = %bb.f
  %i.cb = icmp ult ptr %.01641.lcssa, %i.h
  br i1 %i.cb, label %.lr.ph.backedge, label %.outer._crit_edge.thread78

.outer._crit_edge:                                ; preds = %.outer
  %i.cc = icmp eq i8 %.134, 12
  br i1 %i.cc, label %.outer._crit_edge.thread78, label %bb.k

bb.k:                                             ; preds = %.outer._crit_edge
  store i16 -3, ptr %.2, align 2
  br label %.outer._crit_edge.thread78

.outer._crit_edge.thread78:                       ; preds = %bb.c, %.outer.thread, %bb.e, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %.outer._crit_edge, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
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
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i16
  store i16 %4, ptr %0, align 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 2
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %31 = load i8, ptr %29, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %39 = load i8, ptr %37, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 2
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i8, ptr %41, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 2
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 2
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %58, align 2
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %65 = load i8, ptr %1, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %0, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load i8, ptr %79, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %80, align 2
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %84, align 2
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %88, align 2
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %92, align 2
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %97 = load i8, ptr %95, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %123 = load i8, ptr %1, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %0, align 2
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %126, align 2
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %131 = load i8, ptr %129, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %130, align 2
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %134, align 2
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %139 = load i8, ptr %137, align 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %138, align 2
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %142, align 2
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %147 = load i8, ptr %145, align 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %146, align 2
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %151 = load i8, ptr %149, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %150, align 2
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %154, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 2
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %162, align 2
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %167 = load i8, ptr %165, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %166, align 2
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %171 = load i8, ptr %169, align 1
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %170, align 2
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %174, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !21
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !21
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !24, !noalias !21
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !21
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !24, !noalias !21
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !31

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = and i64 %i.d, 7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.preheader, %.preheader30.i
  %.126.i.ph = phi ptr [ %i.k, %.lr.ph.preheader ], [ %1, %.preheader30.i ], [ %i.q, %.lr.ph ], [ %i.w, %.lr.ph.1 ], [ %i.ac, %.lr.ph.2 ], [ %i.ai, %.lr.ph.3 ], [ %i.ao, %.lr.ph.4 ], [ %i.au, %.lr.ph.5 ], [ %i.ba, %.lr.ph.6 ]
  br label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.i = load i8, ptr %1, align 1
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 7
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !6

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.o = load i8, ptr %i.k, align 1
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = and i64 %i.r, 7
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !6

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %i.u = load i8, ptr %i.q, align 1
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.1, !llvm.loop !6

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !6

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %i.aa = load i8, ptr %i.w, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.2, !llvm.loop !6

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = and i64 %i.ad, 7
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !6

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %i.ag = load i8, ptr %i.ac, align 1
  %i.ah = icmp slt i8 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.3, !llvm.loop !6

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 7
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !6

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %i.am = load i8, ptr %i.ai, align 1
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.4, !llvm.loop !6

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 7
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !6

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %i.as = load i8, ptr %i.ao, align 1
  %i.at = icmp slt i8 %i.as, 0
  br i1 %i.at, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.5, !llvm.loop !6

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = and i64 %i.av, 7
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !6

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp slt i8 %i.ay, 0
  br i1 %i.az, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19, label %.lr.ph.6, !llvm.loop !6

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.i.preheader, !llvm.loop !6

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.bb, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.bb, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.bc = load i64, ptr %.126.i, align 8
  %i.bd = and i64 %i.bc, -9187201950435737472
  %.not28.i = icmp eq i64 %i.bd, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.be = ptrtoint ptr %.126.i to i64
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoint ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 2 uses
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 3 uses
  %i.bf = icmp ult ptr %.2.i, %i.e
  br i1 %i.bf, label %.lr.ph37.preheader.i, label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.bg = add i64 %2, %i.d
  %i.bh = sub i64 %i.bg, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.bh ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.bl, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.bi = load i8, ptr %.336.i, align 1
  %i.bj = icmp slt i8 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.bk = ptrtoint ptr %.336.i to i64
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

bb.f:                                             ; preds = %.lr.ph37.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bl, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph37.i, !llvm.loop !9

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre45.i = ptrtoint ptr %scevgep.i to i64
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

_ZNK2v84base6VectorIKhE6lengthEv.exit19:          ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader, %._crit_edge.loopexit.i, %bb.e, %.thread.i, %bb.d
  %.pn.i = phi i64 [ %i.be, %bb.d ], [ %i.bk, %bb.e ], [ %.244.pre-phi.i, %.thread.i ], [ %.pre45.i, %._crit_edge.loopexit.i ], [ %i.d, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.lr.ph ], [ %i.r, %.lr.ph.i.1 ], [ %i.x, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.3 ], [ %i.aj, %.lr.ph.i.4 ], [ %i.ap, %.lr.ph.i.5 ], [ %i.av, %.lr.ph.i.6 ]
  %.1.in.i = sub i64 %.pn.i, %i.d                 ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 %.1.i, ptr %i.bm, align 4
  %i.bn = icmp eq i32 %.1.i, %i.c
  br i1 %i.bn, label %.critedge, label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  %sext = shl i64 %.1.in.i, 32
  %i.bo = ashr exact i64 %sext, 32                ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %2
  br i1 %i.bp, label %.lr.ph49.preheader, label %.outer._crit_edge.thread

.lr.ph49.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.br = add i64 %2, %i.d
  %.fr153 = freeze i64 %i.br
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.outer
  %i.bs = phi i32 [ %i.ei, %.outer ], [ %.1.i, %.lr.ph49.preheader ] ; 2 uses
  %.011.ph58 = phi i8 [ %.1, %.outer ], [ 1, %.lr.ph49.preheader ] ; 5 uses
  %.012.ph57 = phi i32 [ %.113, %.outer ], [ 0, %.lr.ph49.preheader ]
end_hunk_1
