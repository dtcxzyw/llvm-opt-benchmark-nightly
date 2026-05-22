inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %.0.lcssa.i42.i = phi double [ 0.000000e+00, %bb.k ], [ %i.bc, %._crit_edge.loopexit.i48.i ]
  %i.bd = zext nneg i32 %i.ao to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !7
  %i.bg = fmul double %.0.lcssa.i42.i, %i.bf
  %i.bh = sext i32 %i.ap to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !7
  %i.bk = fmul double %i.bg, %i.bj
  br label %.sink.split

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.bl = icmp sgt i32 %1, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.i.i, label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.l
  %i.bm = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = sext i8 %i.bo to i64
  %i.bq = mul nuw i64 %.09.i.i.i, 10
  %i.br = add i64 %i.bq, -48
  %i.bs = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bm
  %i.bu = icmp ult i64 %i.bs, 1844674407370955161
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i

_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i: ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %.07.lcssa.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bw, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bs, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.bx = icmp eq i32 %1, %.07.lcssa.i.i.i
  br i1 %i.bx, label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i, label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i

_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i
  %i.by = zext nneg i32 %.07.lcssa.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = icmp sgt i8 %i.ca, 52
  %i.cc = zext i1 %i.cb to i64
  %spec.select.i.i = add i64 %.0.lcssa.i.i.i, %i.cc
  %i.cd = sub i32 %i.c, %.07.lcssa.i.i.i
  br label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i

_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i: ; preds = %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i
  %i.ce = phi i32 [ %i.cd, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ %2, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ] ; 4 uses
  %spec.select.sink.i102.i = phi i64 [ %spec.select.i.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ %.0.lcssa.i.i.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ] ; 3 uses
  %i.cf = phi i64 [ 4, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ 0, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ]
  %i.cg = icmp ult i64 %spec.select.sink.i102.i, 18014398509481984
  br i1 %i.cg, label %.lr.ph.i.i15, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i15, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i
  %.08.lcssa.i.i = phi i32 [ 0, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ], [ %i.cj, %.lr.ph.i.i15 ] ; 2 uses
  %.0.lcssa.i.i13 = phi i64 [ %spec.select.sink.i102.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ], [ %i.ci, %.lr.ph.i.i15 ] ; 3 uses
  %i.ch = icmp sgt i64 %.0.lcssa.i.i13, -1
  br i1 %i.ch, label %.lr.ph15.i.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i

.lr.ph.i.i15:                                     ; preds = %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i, %.lr.ph.i.i15
  %.011.i.i = phi i64 [ %i.ci, %.lr.ph.i.i15 ], [ %spec.select.sink.i102.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ] ; 2 uses
  %.0810.i.i = phi i32 [ %i.cj, %.lr.ph.i.i15 ], [ 0, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ]
  %i.ci = shl nuw i64 %.011.i.i, 10               ; 2 uses
  %i.cj = add nsw i32 %.0810.i.i, -10             ; 2 uses
  %i.ck = icmp ult i64 %.011.i.i, 17592186044416
  br i1 %i.ck, label %.lr.ph.i.i15, label %.preheader.i.i, !llvm.loop !12

.lr.ph15.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph15.i.i
  %.114.i.i = phi i64 [ %i.cl, %.lr.ph15.i.i ], [ %.0.lcssa.i.i13, %.preheader.i.i ]
  %.1913.i.i = phi i32 [ %i.cm, %.lr.ph15.i.i ], [ %.08.lcssa.i.i, %.preheader.i.i ]
  %i.cl = shl nuw i64 %.114.i.i, 1                ; 3 uses
  %i.cm = add nsw i32 %.1913.i.i, -1              ; 2 uses
  %i.cn = icmp sgt i64 %i.cl, -1
  br i1 %i.cn, label %.lr.ph15.i.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i, !llvm.loop !13

_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i: ; preds = %.lr.ph15.i.i, %.preheader.i.i
  %.19.lcssa.i.i = phi i32 [ %.08.lcssa.i.i, %.preheader.i.i ], [ %i.cm, %.lr.ph15.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i64 [ %.0.lcssa.i.i13, %.preheader.i.i ], [ %i.cl, %.lr.ph15.i.i ] ; 3 uses
  %i.co = sub nsw i32 0, %.19.lcssa.i.i
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl i64 %i.cf, %i.cp                    ; 3 uses
  %i.cr = icmp slt i32 %i.ce, -348
  br i1 %i.cr, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache32GetCachedPowerForDecimalExponentEiPNS0_5DiyFpEPi(i32 noundef %i.ce, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i = icmp eq i32 %i.ct, %i.ce
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sub nsw i32 %i.ce, %i.ct                ; 3 uses
  %i.cv = icmp ult i32 %i.cu, 8
  br i1 %i.cv, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #6
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %switch.tableidx = add nsw i32 %i.cu, -1        ; 2 uses
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd, i64 %i.cw
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cx = zext nneg i32 %switch.tableidx to i64
  %switch.gep96 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd.1, i64 %i.cx
  %switch.load97 = load i64, ptr %switch.gep96, align 8 ; 2 uses
  %i.cy = lshr i64 %.1.lcssa.i.i, 32
  %i.cz = and i64 %.1.lcssa.i.i, 4294967295
  %i.da = mul nuw i64 %switch.load97, %i.cy
  %i.db = mul nuw i64 %switch.load97, %i.cz       ; 2 uses
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = add nuw nsw i64 %i.dc, 2147483648
  %i.de = add nsw i32 %switch.load, %.19.lcssa.i.i
  %i.df = lshr i64 %i.db, 32
  %i.dg = add nuw i64 %i.df, %i.da
  %i.dh = lshr i64 %i.dd, 32
  %i.di = add nuw i64 %i.dg, %i.dh
  %i.dj = sub nsw i32 19, %1
  %.not59.i = icmp slt i32 %i.dj, %i.cu
  %i.dk = add i64 %i.cq, 4
  %spec.select.i = select i1 %.not59.i, i64 %i.dk, i64 %i.cq
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.m
  %.sroa.080.0.i = phi i64 [ %.1.lcssa.i.i, %bb.m ], [ %i.di, %switch.lookup ] ; 2 uses
  %.sroa.16.0.i = phi i32 [ %.19.lcssa.i.i, %bb.m ], [ %i.de, %switch.lookup ]
  %.153.i = phi i64 [ %i.cq, %bb.m ], [ %spec.select.i, %switch.lookup ] ; 2 uses
  %i.dl = lshr i64 %.sroa.080.0.i, 32             ; 2 uses
  %i.dm = and i64 %.sroa.080.0.i, 4294967295      ; 2 uses
  %i.dn = load i64, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.do = lshr i64 %i.dn, 32                      ; 2 uses
  %i.dp = and i64 %i.dn, 4294967295               ; 2 uses
  %i.dq = mul nuw i64 %i.do, %i.dl
  %i.dr = mul nuw i64 %i.do, %i.dm                ; 2 uses
  %i.ds = mul nuw i64 %i.dp, %i.dl                ; 2 uses
  %i.dt = mul nuw i64 %i.dp, %i.dm
  %i.du = lshr i64 %i.dt, 32
  %i.dv = and i64 %i.ds, 4294967295
  %i.dw = and i64 %i.dr, 4294967295
  %i.dx = add nuw nsw i64 %i.dv, 2147483648
  %i.dy = add nuw nsw i64 %i.dx, %i.du
  %i.dz = add nuw nsw i64 %i.dy, %i.dw
  %i.ea = load i32, ptr %i.cs, align 8, !tbaa !17
  %i.eb = add i32 %.sroa.16.0.i, 64
  %i.ec = add i32 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ds, 32
  %i.ee = add nuw i64 %i.ed, %i.dq
  %i.ef = lshr i64 %i.dr, 32
  %i.eg = add nuw i64 %i.ee, %i.ef
  %i.eh = lshr i64 %i.dz, 32
  %i.ei = add i64 %i.eg, %i.eh                    ; 3 uses
  %.not60.i = icmp eq i64 %.153.i, 0
  %i.ej = select i1 %.not60.i, i64 8, i64 9
  %i.ek = add i64 %i.ej, %.153.i
  %i.el = icmp ult i64 %i.ei, 18014398509481984
  br i1 %i.el, label %.lr.ph.i70.i, label %.preheader.i62.i

.preheader.i62.i:                                 ; preds = %.lr.ph.i70.i, %bb.p
  %.08.lcssa.i63.i = phi i32 [ %i.ec, %bb.p ], [ %i.eo, %.lr.ph.i70.i ] ; 2 uses
  %.0.lcssa.i64.i = phi i64 [ %i.ei, %bb.p ], [ %i.en, %.lr.ph.i70.i ] ; 3 uses
  %i.em = icmp sgt i64 %.0.lcssa.i64.i, -1
  br i1 %i.em, label %.lr.ph15.i67.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i

.lr.ph.i70.i:                                     ; preds = %bb.p, %.lr.ph.i70.i
  %.011.i71.i = phi i64 [ %i.en, %.lr.ph.i70.i ], [ %i.ei, %bb.p ] ; 2 uses
  %.0810.i72.i = phi i32 [ %i.eo, %.lr.ph.i70.i ], [ %i.ec, %bb.p ]
  %i.en = shl nuw i64 %.011.i71.i, 10             ; 2 uses
  %i.eo = add nsw i32 %.0810.i72.i, -10           ; 2 uses
  %i.ep = icmp ult i64 %.011.i71.i, 17592186044416
  br i1 %i.ep, label %.lr.ph.i70.i, label %.preheader.i62.i, !llvm.loop !12

.lr.ph15.i67.i:                                   ; preds = %.preheader.i62.i, %.lr.ph15.i67.i
  %.114.i68.i = phi i64 [ %i.eq, %.lr.ph15.i67.i ], [ %.0.lcssa.i64.i, %.preheader.i62.i ]
  %.1913.i69.i = phi i32 [ %i.er, %.lr.ph15.i67.i ], [ %.08.lcssa.i63.i, %.preheader.i62.i ]
  %i.eq = shl nuw i64 %.114.i68.i, 1              ; 3 uses
  %i.er = add nsw i32 %.1913.i69.i, -1            ; 2 uses
  %i.es = icmp sgt i64 %i.eq, -1
  br i1 %i.es, label %.lr.ph15.i67.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i, !llvm.loop !13

_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i: ; preds = %.lr.ph15.i67.i, %.preheader.i62.i
  %.19.lcssa.i65.i = phi i32 [ %.08.lcssa.i63.i, %.preheader.i62.i ], [ %i.er, %.lr.ph15.i67.i ] ; 5 uses
  %.1.lcssa.i66.i = phi i64 [ %.0.lcssa.i64.i, %.preheader.i62.i ], [ %i.eq, %.lr.ph15.i67.i ] ; 2 uses
  %i.et = sub nsw i32 %i.ec, %.19.lcssa.i65.i
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl i64 %i.ek, %i.eu                    ; 2 uses
  %i.ew = add nsw i32 %.19.lcssa.i65.i, 64
  %spec.select.i74.i = call i32 @llvm.usub.sat.i32(i32 %i.ew, i32 -1074)
  %.narrow.i.i = icmp sgt i32 %.19.lcssa.i65.i, -1085
  %.0.i.i = select i1 %.narrow.i.i, i32 53, i32 %spec.select.i74.i ; 3 uses
  %i.ex = sub nsw i32 64, %.0.i.i
  %i.ey = icmp samesign ult i32 %.0.i.i, 4
  br i1 %i.ey, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i
  %i.ez = sub nuw nsw i32 4, %.0.i.i              ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fb = lshr i64 %.1.lcssa.i66.i, %i.fa
  %i.fc = add nsw i32 %i.ez, %.19.lcssa.i65.i
  %i.fd = lshr i64 %i.ev, %i.fa
  %i.fe = add nuw i64 %i.fd, 9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i
  %.sroa.080.1.i = phi i64 [ %i.fb, %bb.q ], [ %.1.lcssa.i66.i, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %.sroa.16.1.i = phi i32 [ %i.fc, %bb.q ], [ %.19.lcssa.i65.i, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ]
  %.054.i = phi i32 [ 60, %bb.q ], [ %i.ex, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 3 uses
  %.2.i14 = phi i64 [ %i.fe, %bb.q ], [ %i.ev, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %i.ff = zext i32 %.054.i to i64                 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i, -1
  %i.fh = and i64 %.sroa.080.1.i, %i.fg
  %i.fi = add nsw i32 %.054.i, -1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl i64 %i.fh, 3                        ; 2 uses
  %i.fl = shl i64 8, %i.fj                        ; 2 uses
  %i.fm = lshr i64 %.sroa.080.1.i, %i.ff
  %i.fn = add nsw i32 %.054.i, %.sroa.16.1.i      ; 2 uses
  %i.fo = add i64 %i.fl, %.2.i14
  %.not61.i = icmp uge i64 %i.fk, %i.fo           ; 2 uses
  %i.fp = zext i1 %.not61.i to i64
  %spec.select105.i = add i64 %i.fm, %i.fp        ; 3 uses
  %i.fq = icmp ugt i64 %spec.select105.i, 9007199254740991
  br i1 %i.fq, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i

.lr.ph.i.i75.i:                                   ; preds = %bb.r, %.lr.ph.i.i75.i
  %.01521.i.i.i = phi i32 [ %i.fs, %.lr.ph.i.i75.i ], [ %i.fn, %bb.r ]
  %.01620.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i75.i ], [ %spec.select105.i, %bb.r ] ; 2 uses
  %i.fr = lshr i64 %.01620.i.i.i, 1               ; 2 uses
  %i.fs = add nsw i32 %.01521.i.i.i, 1            ; 2 uses
  %i.ft = icmp ugt i64 %.01620.i.i.i, 18014398509481983
  br i1 %i.ft, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i, !llvm.loop !18

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i75.i, %bb.r
  %.016.lcssa.i.i.i = phi i64 [ %spec.select105.i, %bb.r ], [ %i.fr, %.lr.ph.i.i75.i ] ; 3 uses
  %.015.lcssa.i.i.i = phi i32 [ %i.fn, %bb.r ], [ %i.fs, %.lr.ph.i.i75.i ] ; 5 uses
  %i.fu = icmp sgt i32 %.015.lcssa.i.i.i, 971
  br i1 %i.fu, label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.fv = icmp slt i32 %.015.lcssa.i.i.i, -1074
  br i1 %i.fv, label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.fw = icmp ne i32 %.015.lcssa.i.i.i, -1074
  %i.fx = and i64 %.016.lcssa.i.i.i, 4503599627370496
  %i.fy = icmp eq i64 %i.fx, 0                    ; 2 uses
  %i.fz = and i1 %i.fw, %i.fy
  br i1 %i.fz, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph25.i.i.i
  %.124.i.i.i = phi i32 [ %i.gb, %.lr.ph25.i.i.i ], [ %.015.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.11723.i.i.i = phi i64 [ %i.ga, %.lr.ph25.i.i.i ], [ %.016.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.ga = shl i64 %.11723.i.i.i, 1                ; 2 uses
  %i.gb = add nsw i32 %.124.i.i.i, -1             ; 2 uses
  %i.gc = icmp sgt i32 %.124.i.i.i, -1073
  %i.gd = and i64 %.11723.i.i.i, 2251799813685248
  %i.ge = icmp eq i64 %i.gd, 0                    ; 2 uses
  %i.gf = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %i.gf, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i, !llvm.loop !19

._crit_edge26.i.i.i:                              ; preds = %.lr.ph25.i.i.i, %.preheader.i.i.i
  %.117.lcssa.i.i.i = phi i64 [ %.016.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.ga, %.lr.ph25.i.i.i ]
  %.1.lcssa.i.i.i = phi i32 [ %.015.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.gb, %.lr.ph25.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.fy, %.preheader.i.i.i ], [ %i.ge, %.lr.ph25.i.i.i ]
  %i.gg = icmp eq i32 %.1.lcssa.i.i.i, -1074
  %brmerge.not.i.i.i = select i1 %i.gg, i1 %.lcssa.i.i.i, i1 false
  %i.gh = add nsw i32 %.1.lcssa.i.i.i, 1075
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 52
  %.0.i.i.i = select i1 %brmerge.not.i.i.i, i64 0, i64 %i.gj
  %i.gk = and i64 %.117.lcssa.i.i.i, 4503599627370495
  %i.gl = or disjoint i64 %.0.i.i.i, %i.gk
  %i.gm = bitcast i64 %i.gl to double
  br label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit

_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit: ; preds = %._crit_edge.i.i.i, %bb.s, %._crit_edge26.i.i.i
  %i.gn = phi double [ %i.gm, %._crit_edge26.i.i.i ], [ +inf, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.s ] ; 2 uses
  store double %i.gn, ptr %3, align 8, !tbaa !7
  %i.go = sub i64 %i.fl, %.2.i14
  %i.gp = icmp uge i64 %i.go, %i.fk
  %or.cond.not.i = or i1 %i.gp, %.not61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.gq = fcmp oeq double %i.gn, +inf
  %spec.select = select i1 %or.cond.not.i, i1 true, i1 %i.gq
  br label %bb.t

.sink.split:                                      ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i, %bb.c, %bb.b, %bb.a
  %.sink = phi double [ %i.w, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.bk, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i ], [ %i.am, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i ], [ 0.000000e+00, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i ]
  store double %.sink, ptr %3, align 8, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, %.sink.split
  %.0 = phi i1 [ true, %.sink.split ], [ %spec.select, %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN14arrow_vendored17double_conversionL22CompareBufferWithDiyFpENS0_6VectorIKcEEiNS0_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %3, i32 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 8 uses
  %6 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i16 0, ptr %5, align 4, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store i16 0, ptr %6, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !23
  call void @_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr %0, i32 %1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %6, i64 noundef %3)
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nsw i32 0, %2
  call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %4)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %4
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr noundef nonnull align 4 dereferenceable(516) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN14arrow_vendored17double_conversion6StrtodENS0_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [780 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.e, 48
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i, label %.lr.ph.i.i, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.h = sub nsw i32 %1, %i.g
  br label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.i = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.i, label %.lr.ph, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %i.j = zext nneg i32 %.sroa.3.1.i.i to i64
end_hunk_0
