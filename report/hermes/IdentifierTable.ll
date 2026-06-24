inline.NumInlined: 965
inline.NumDeleted: 556
begin_hunk_0_@_ZN6hermes2vm15IdentifierTable19freeUnmarkedSymbolsERKN4llvh9BitVectorERNS0_6GCBase9IDTrackerE:bb.a
  %i.bh = xor <2 x i64> %wide.load107, splat (i64 -1)
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !58
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !tbaa !58
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.bi, label %middle.block109, label %vector.body104, !llvm.loop !134

middle.block109:                                  ; preds = %vector.body104
  %cmp.n110 = icmp eq i64 %n.vec103, %wide.trip.count.i
  br i1 %cmp.n110, label %._crit_edge.i, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %.lr.ph.i19, %middle.block109
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i19 ], [ %n.vec103, %middle.block109 ]
  br label %scalar.ph99

._crit_edge.i:                                    ; preds = %scalar.ph99, %middle.block109, %_ZN4llvh9BitVectoroRERKS0_.exit
  %.pre-phi.i = phi i64 [ 0, %_ZN4llvh9BitVectoroRERKS0_.exit ], [ %wide.trip.count.i, %middle.block109 ], [ %wide.trip.count.i, %scalar.ph99 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !103 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, %.pre-phi.i
  br i1 %i.bl, label %bb.d, label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.bm = sub nuw i64 %i.bk, %.pre-phi.i
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.pre-phi.i
  %i.bp = shl i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bp, i1 false)
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !102
  br label %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i

_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i: ; preds = %bb.d, %._crit_edge.i
  %i.bq = phi i32 [ %.pre.i.i.i, %bb.d ], [ %i.ba, %._crit_edge.i ]
  %i.br = and i32 %i.bq, 63                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i, label %_ZN4llvh9BitVector4flipEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nsw i64 -1, %i.bs
  %i.bu = xor i64 %i.bt, -1
  %i.bv = add nsw i32 %i.bc, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !58
  %i.ca = and i64 %i.bz, %i.bu
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !58
  br label %_ZN4llvh9BitVector4flipEv.exit

scalar.ph99:                                      ; preds = %scalar.ph99.preheader, %scalar.ph99
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph99 ], [ %indvars.iv.i.ph, %scalar.ph99.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.cd = xor i64 %i.cc, -1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph99, !llvm.loop !135

_ZN4llvh9BitVector4flipEv.exit:                   ; preds = %_ZN4llvh9BitVector10init_wordsENS_15MutableArrayRefImEEb.exit.i.i.i, %bb.e
  %i.ce = tail call noundef zeroext i1 @_ZN6hermes2vm6GCBase9IDTracker19hasTrackedObjectIDsEv(ptr noundef nonnull align 8 dereferenceable(200) %2) #15
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !102 ; 2 uses
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !102, !noalias !136 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh9BitVector4flipEv.exit
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  %i.cj = lshr i32 %i.ci, 6                       ; 3 uses
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !136 ; 2 uses
  %i.cl = and i32 %i.ci, 63
  %i.cm = xor i32 %i.cl, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = lshr i64 -1, %i.cn                      ; 2 uses
  %i.cp = zext nneg i32 %i.cj to i64
  %i.cq = add nuw nsw i32 %i.cj, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.cq to i64
  %i.cr = load i64, ptr %i.ck, align 8, !tbaa !58, !noalias !136
  %i.cs = icmp eq i32 %i.cj, 0                    ; 2 uses
  %i.ct = select i1 %i.cs, i64 %i.co, i64 -1
  %.128.peel.i.i.i.i.i = and i64 %i.cr, %i.ct     ; 2 uses
  %.not34.peel.i.i.i.i.i = icmp eq i64 %.128.peel.i.i.i.i.i, 0
  br i1 %.not34.peel.i.i.i.i.i, label %bb.g, label %_ZNK4llvh9BitVector8set_bitsEv.exit

bb.g:                                             ; preds = %bb.f
  br i1 %i.cs, label %.critedge, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.h ], [ 1, %bb.g ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i.i.i
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58, !noalias !136
  %i.cw = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.cp
  %i.cx = select i1 %i.cw, i64 %i.co, i64 -1
  %.128.i.i.i.i.i = and i64 %i.cx, %i.cv          ; 2 uses
  %.not34.i.i.i.i.i = icmp eq i64 %.128.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.h, label %.loopexit43.i.i.i.i.i

.loopexit43.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.cy = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvh9BitVector8set_bitsEv.exit

bb.h:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge, label %.peel.next.i.i.i.i.i, !llvm.loop !139

_ZNK4llvh9BitVector8set_bitsEv.exit:              ; preds = %bb.f, %.loopexit43.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.cy, %.loopexit43.i.i.i.i.i ], [ 0, %bb.f ]
  %.128.lcssa.i.i.i.i.i = phi i64 [ %.128.i.i.i.i.i, %.loopexit43.i.i.i.i.i ], [ %.128.peel.i.i.i.i.i, %bb.f ]
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.128.lcssa.i.i.i.i.i, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.da ; 3 uses
  %i.dc = icmp ne i32 %i.db, -1
  %.not46 = icmp ult i32 %i.db, %i.cf
  %or.cond47 = select i1 %i.dc, i1 %.not46, i1 false
  br i1 %or.cond47, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK4llvh9BitVector8set_bitsEv.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %i.df = phi i32 [ %i.cg, %.lr.ph ], [ %i.ee, %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ]
  %.sroa.4.048 = phi i32 [ %i.db, %.lr.ph ], [ %i.fj, %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ] ; 4 uses
  %i.dg = zext i32 %.sroa.4.048 to i64            ; 5 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !7
  %.not.i25 = icmp ne ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i32, ptr %i.dk, align 8            ; 2 uses
  %.mask.i = and i32 %i.dl, -4
  %i.dm = icmp eq i32 %.mask.i, -8
  %i.dn = select i1 %.not.i25, i1 %i.dm, i1 false
  br i1 %i.dn, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6hermes2vm6GCBase9IDTracker13untrackSymbolEj(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %.sroa.4.048) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !63    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.dg
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre58 = load i32, ptr %.phi.trans.insert57, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.do = phi i32 [ %.pre58, %bb.k ], [ %i.dl, %bb.j ] ; 2 uses
  %i.dp = phi ptr [ %.pre, %bb.k ], [ %i.dh, %bb.j ] ; 2 uses
  %i.dq = and i32 %i.do, 2
  %.not.i26 = icmp eq i32 %i.dq, 0
  br i1 %.not.i26, label %bb.m, label %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit, !prof !57

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dg
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !7  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !65
  %i.dv = and i32 %i.du, 2147483647
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !65
  tail call void @_ZN6hermes2vm6detail19IdentifierHashTable6removeEPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull %i.ds) #15
  %.pre.i27 = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %.pre.i27, i64 %i.dg
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %.pre6.i = load i32, ptr %.phi.trans.insert5.i, align 8
  br label %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit

_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit: ; preds = %bb.l, %bb.m
  %i.dw = phi i32 [ %.pre6.i, %bb.m ], [ %i.do, %bb.l ]
  %i.dx = phi ptr [ %.pre.i27, %bb.m ], [ %i.dp, %bb.l ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dg ; 2 uses
  %i.dz = load i32, ptr %i.de, align 8, !tbaa !26
  store ptr null, ptr %i.dy, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = shl i32 %i.dz, 2
  %i.ec = and i32 %i.dw, 3
  %i.ed = or disjoint i32 %i.eb, %i.ec
  store i32 %i.ed, ptr %i.ea, align 8
  store i32 %.sroa.4.048, ptr %i.de, align 8, !tbaa !26
  %.pre59 = load i32, ptr %i.b, align 8, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit, %bb.i
  %i.ee = phi i32 [ %.pre59, %_ZN6hermes2vm15IdentifierTable10freeSymbolEj.exit ], [ %i.df, %bb.i ] ; 3 uses
  %i.ef = add nuw i32 %.sroa.4.048, 1             ; 3 uses
  %i.eg = icmp eq i32 %i.ef, %i.ee
  br i1 %i.eg, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = lshr i32 %i.ef, 6                       ; 4 uses
  %i.ei = add i32 %i.ee, -1                       ; 2 uses
  %i.ej = lshr i32 %i.ei, 6                       ; 4 uses
  %.not38.i.i.i.i = icmp samesign ugt i32 %i.eh, %i.ej
  br i1 %.not38.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.el = and i32 %i.ef, 63                       ; 2 uses
  %i.em = sub nuw nsw i32 64, %i.el
  %.not.i.i.i28 = icmp eq i32 %i.el, 0
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = lshr i64 -1, %i.en
  %i.ep = xor i64 %i.eo, -1
  %i.eq = and i32 %i.ei, 63
  %i.er = xor i32 %i.eq, 63
  %i.es = zext nneg i32 %i.er to i64
  %i.et = lshr i64 -1, %i.es                      ; 2 uses
  %i.eu = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ev = zext nneg i32 %i.ej to i64
  %i.ew = add nuw nsw i32 %i.ej, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ew to i64 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eu
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !58
  %i.ez = select i1 %.not.i.i.i28, i64 -1, i64 %i.ep
  %i.fa = icmp eq i32 %i.eh, %i.ej
  %i.fb = select i1 %i.fa, i64 %i.et, i64 -1
  %spec.select.peel.i.i.i.i = and i64 %i.fb, %i.ez
  %.128.peel.i.i.i.i = and i64 %spec.select.peel.i.i.i.i, %i.ey ; 2 uses
  %.not34.peel.i.i.i.i = icmp eq i64 %.128.peel.i.i.i.i, 0
  br i1 %.not34.peel.i.i.i.i, label %bb.p, label %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.us.i.i.i = add nuw nsw i64 %i.eu, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.critedge, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.p, %bb.q
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.q ], [ %indvars.iv.next.i.us.i.i.i, %bb.p ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i.i
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !58
  %i.fe = icmp eq i64 %indvars.iv.i.i.i.i, %i.ev
  %i.ff = select i1 %i.fe, i64 %i.et, i64 -1
  %spec.select.i.i.i.i = and i64 %i.ff, %i.fd     ; 2 uses
  %.not34.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not34.i.i.i.i, label %bb.q, label %.loopexit43.i.i.i.i

.loopexit43.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.q:                                             ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.critedge, label %.peel.next.i.i.i.i, !llvm.loop !139

_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit43.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit43.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i ]
  %.128.lcssa.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.loopexit43.i.i.i.i ], [ %.128.peel.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.fg = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.128.lcssa.i.i.i.i, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi            ; 3 uses
  %i.fk = icmp ne i32 %i.fj, -1
  %.not = icmp ult i32 %i.fj, %i.cf
  %or.cond = select i1 %i.fk, i1 %.not, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.p, %bb.o, %bb.n, %_ZN4llvh28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.q, %bb.g, %_ZN4llvh9BitVector4flipEv.exit, %_ZNK4llvh9BitVector8set_bitsEv.exit
  %.sroa.2.0.copyload.i30 = load i64, ptr %i.bj, align 8 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i30, 0
  br i1 %.not.i.i, label %_ZN4llvh9BitVector5resetEv.exit, label %bb.r

bb.r:                                             ; preds = %.critedge
  %.sroa.0.0.copyload.i31 = load ptr, ptr %i.a, align 8
  %i.fl = shl i64 %.sroa.2.0.copyload.i30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0.0.copyload.i31, i8 0, i64 %i.fl, i1 false)
  br label %_ZN4llvh9BitVector5resetEv.exit

_ZN4llvh9BitVector5resetEv.exit:                  ; preds = %.critedge, %bb.r
  ret void
}

declare noundef zeroext i1 @_ZN6hermes2vm6GCBase9IDTracker19hasTrackedObjectIDsEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare void @_ZN6hermes2vm6GCBase9IDTracker13untrackSymbolEj(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 268435456, 0) i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes2vm15IdentifierTable11allocNextIDEv(ptr noundef nonnull align 8 dereferenceable(84) %0) ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = trunc i64 %2 to i32
  %i.g = shl i32 %i.f, 2
  %i.h = or disjoint i32 %i.g, 2
  store i32 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !8
  %i.j = or i32 %i.a, 268435456
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes2vm15IdentifierTable22createNotUniquedSymbolERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 8 uses
  %4 = alloca %"class.llvh::SmallVector", align 8 ; 8 uses
  %i.a = tail call noundef i32 @_ZN6hermes2vm15IdentifierTable11allocNextIDEv(ptr noundef nonnull align 8 dereferenceable(84) %0) ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !58 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474972516352
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.b to ptr                 ; 10 uses
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = and i32 %i.i, 16777216
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !65   ; 2 uses
  %i.n = icmp ugt i32 %i.i, 150994943             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.i, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !58
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  br label %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.x = and i32 %i.m, 2147483647
  %i.y = zext nneg i32 %i.x to i64
  %i.z = tail call ptr @_ZN6hermes2vm15IdentifierTable21allocateDynamicStringIcLb0EEENS0_10CallResultINS0_12PseudoHandleINS0_15StringPrimitiveEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeEN4llvh8ArrayRefIT_EENS0_6HandleIS5_EE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i, i64 %i.y, ptr nonnull %2)
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.j, label %bb.k, !prof !43

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.k:                                             ; preds = %bb.i
  %.mask.i.i.i.i.i.i.i.i.i.i15 = and i32 %i.i, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i15, label %bb.n [
    i32 117440512, label %bb.l
    i32 50331648, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i19 = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i.i19, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  br label %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit

_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit: ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %.0.i.i.i16 = phi ptr [ %i.ab, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = and i32 %i.m, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = tail call ptr @_ZN6hermes2vm15IdentifierTable21allocateDynamicStringIDsLb0EEENS0_10CallResultINS0_12PseudoHandleINS0_15StringPrimitiveEEELNS0_6detail20CallResultSpecializeE6EEERNS0_7RuntimeEN4llvh8ArrayRefIT_EENS0_6HandleIS5_EE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i16, i64 %i.ak, ptr nonnull %2)
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit
  %storemerge = phi ptr [ %i.al, %_ZNK6hermes2vm15StringPrimitive14castToUTF16RefEv.exit ], [ %i.z, %_ZNK6hermes2vm15StringPrimitive14castToASCIIRefEv.exit ] ; 3 uses
  %.not = icmp eq ptr %storemerge, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %.thread, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  %i.am = zext i32 %i.a to i64                    ; 2 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.am ; 3 uses
  store ptr %storemerge, ptr %i.ao, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -6, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 32, ptr %i.at, align 4, !tbaa !15
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %storemerge, ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  %i.au = load ptr, ptr %4, align 8, !tbaa !11    ; 4 uses
  %i.av = load i32, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i = icmp eq i32 %i.av, 0
  br i1 %.not10.i.i, label %_ZN6hermes10hashStringIDsEEjN4llvh8ArrayRefIT_EE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw i64 %i.aw, 9223372036854775807
  %i.ay = and i64 %i.ax, 9223372036854775807      ; 2 uses
  %i.az = add nuw i64 %i.ay, 1                    ; 2 uses
  %xtraiter47 = and i64 %i.az, 3                  ; 3 uses
  %i.ba = icmp samesign ult i64 %i.ay, 3
  br i1 %i.ba, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter52 = and i64 %i.az, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.cc, %.lr.ph.i.i ] ; 5 uses
  %niter53 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter53.next.3, %.lr.ph.i.i ]
  %i.bb = load i16, ptr %.0811.i.i, align 2, !tbaa !16
  %i.bc = zext i16 %i.bb to i32
  %i.bd = add i32 %.012.i.i, %i.bc
  %i.be = mul i32 %i.bd, 1025                     ; 2 uses
  %i.bf = lshr i32 %i.be, 6
  %i.bg = xor i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !16
  %i.bj = zext i16 %i.bi to i32
  %i.bk = add i32 %i.bg, %i.bj
  %i.bl = mul i32 %i.bk, 1025                     ; 2 uses
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !16
  %i.bq = zext i16 %i.bp to i32
end_hunk_0
