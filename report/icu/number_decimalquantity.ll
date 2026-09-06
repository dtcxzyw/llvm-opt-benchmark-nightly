Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_decimalquantity?download=true
inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK6icu_786number4impl15DecimalQuantity16getPluralOperandENS_13PluralOperandE:bb.a
  br label %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit

_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.1
  %i.eb = and i64 %i.bq, 1
  %lcmp.mod126.not.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod126.not.not, label %.lr.ph.split.us.i13.epil.preheader, label %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit

.lr.ph.split.us.i13.epil.preheader:               ; preds = %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa, %.lr.ph.split.us.i13.preheader
  %indvars.iv20.i14.epil.init = phi i64 [ %i.bq, %.lr.ph.split.us.i13.preheader ], [ %indvars.iv.next21.i20.1, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa ]
  %.0815.us.i15.epil.init = phi i64 [ 0, %.lr.ph.split.us.i13.preheader ], [ %i.co, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa ]
  %lcmp.mod128 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ec = mul i64 %.0815.us.i15.epil.init, 10
  %i.ed = trunc nuw nsw i64 %indvars.iv20.i14.epil.init to i32
  %i.ee = sub i32 %i.ed, %i.h                     ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  %.not.i.us.i16.epil = icmp slt i32 %i.ee, %i.j
  %or.cond10.i.us.i17.epil = and i1 %i.ef, %.not.i.us.i16.epil
  br i1 %or.cond10.i.us.i17.epil, label %bb.j, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.epil

bb.j:                                             ; preds = %.lr.ph.split.us.i13.epil.preheader
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.cast.i6, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !27
  %i.ej = sext i8 %i.ei to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.epil

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.epil: ; preds = %bb.j, %.lr.ph.split.us.i13.epil.preheader
  %.0.i.us.i19.epil = phi i64 [ 0, %.lr.ph.split.us.i13.epil.preheader ], [ %i.ej, %bb.j ]
  %i.ek = add i64 %.0.i.us.i19.epil, %i.ec
  br label %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit

_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa: ; preds = %.lr.ph.split.i7
  %i.el = and i64 %i.bq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.el, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.i7.epil.preheader, label %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit

.lr.ph.split.i7.epil.preheader:                   ; preds = %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa, %.lr.ph.split.i7.preheader
  %indvars.iv.i8.epil.init = phi i64 [ %i.bq, %.lr.ph.split.i7.preheader ], [ %indvars.iv.next.i11.1, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa ]
  %.0815.i9.epil.init = phi i64 [ 0, %.lr.ph.split.i7.preheader ], [ %i.dg, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa ]
  %lcmp.mod124 = trunc i64 %i.br to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.em = mul i64 %.0815.i9.epil.init, 10
  %i.en = trunc nuw nsw i64 %indvars.iv.i8.epil.init to i32
  %i.eo = sub i32 %i.en, %i.h                     ; 2 uses
  %or.cond.i.i10.epil = icmp ugt i32 %i.eo, 15
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.bp, %i.eq
  %i.es = and i64 %i.er, 15
  %i.et = select i1 %or.cond.i.i10.epil, i64 0, i64 %i.es
  %i.eu = add i64 %i.et, %i.em
  br label %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit

_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit: ; preds = %.lr.ph.split.i7.epil.preheader, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.epil, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa, %.lr.ph.split.i.epil.preheader, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit111.unr-lcssa, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i.epil, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit.unr-lcssa, %bb.f, %bb.c
  %i.ev = phi i64 [ %i.dq, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i.epil ], [ 0, %bb.c ], [ %i.ek, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i18.epil ], [ 0, %bb.f ], [ %i.ea, %.lr.ph.split.i.epil.preheader ], [ %i.ar, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit.unr-lcssa ], [ %i.bj, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit111.unr-lcssa ], [ %i.co, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit113.unr-lcssa ], [ %i.dg, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit.loopexit115.unr-lcssa ], [ %i.eu, %.lr.ph.split.i7.epil.preheader ]
  %i.ew = sitofp i64 %i.ev to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.k:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ez = xor i32 %i.ey, -1                       ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !28 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fd = load i32, ptr %i.fc, align 8
  %.sroa.speculated.i22 = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.fb) ; 3 uses
  %.not.i23 = icmp sgt i32 %.sroa.speculated.i22, %i.ez
  br i1 %.not.i23, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !23, !range !25, !noundef !26
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fk = load i32, ptr %i.fj, align 8
  %.cast.i25 = inttoptr i64 %i.fi to ptr
  br i1 %i.fg, label %.lr.ph.split.us.i28, label %.lr.ph.split.i26

.lr.ph.split.us.i28:                              ; preds = %.lr.ph.i24, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31
  %.022.us.i = phi i32 [ %i.ft, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31 ], [ %i.ez, %.lr.ph.i24 ] ; 3 uses
  %.01321.us.i = phi i64 [ %i.fs, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31 ], [ 0, %.lr.ph.i24 ]
  %i.fl = mul nuw i64 %.01321.us.i, 10
  %i.fm = sub nsw i32 %.022.us.i, %i.fb           ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  %.not.i.us.i29 = icmp slt i32 %i.fm, %i.fk
  %or.cond10.i.us.i30 = select i1 %i.fn, i1 %.not.i.us.i29, i1 false
  br i1 %or.cond10.i.us.i30, label %bb.l, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31

bb.l:                                             ; preds = %.lr.ph.split.us.i28
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.cast.i25, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = sext i8 %i.fq to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31: ; preds = %bb.l, %.lr.ph.split.us.i28
  %.0.i.us.i32 = phi i64 [ 0, %.lr.ph.split.us.i28 ], [ %i.fr, %bb.l ]
  %i.fs = add i64 %.0.i.us.i32, %i.fl             ; 3 uses
  %i.ft = add nsw i32 %.022.us.i, -1
  %i.fu = icmp sgt i32 %.022.us.i, %.sroa.speculated.i22
  %i.fv = icmp ult i64 %i.fs, 1000000000000000001
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %i.fw, label %.lr.ph.split.us.i28, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit, !llvm.loop !6

.lr.ph.split.i26:                                 ; preds = %.lr.ph.i24, %.lr.ph.split.i26
  %.022.i = phi i32 [ %i.gf, %.lr.ph.split.i26 ], [ %i.ez, %.lr.ph.i24 ] ; 3 uses
  %.01321.i = phi i64 [ %i.ge, %.lr.ph.split.i26 ], [ 0, %.lr.ph.i24 ]
  %i.fx = mul nuw i64 %.01321.i, 10
  %i.fy = sub nsw i32 %.022.i, %i.fb              ; 2 uses
  %or.cond.i.i27 = icmp ugt i32 %i.fy, 15
  %i.fz = shl nuw nsw i32 %i.fy, 2
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = lshr i64 %i.fi, %i.ga
  %i.gc = and i64 %i.gb, 15
  %i.gd = select i1 %or.cond.i.i27, i64 0, i64 %i.gc
  %i.ge = add nuw i64 %i.gd, %i.fx                ; 3 uses
  %i.gf = add nsw i32 %.022.i, -1
  %i.gg = icmp sgt i32 %.022.i, %.sroa.speculated.i22
  %i.gh = icmp ult i64 %i.ge, 1000000000000000001
  %i.gi = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %i.gi, label %.lr.ph.split.i26, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit, !llvm.loop !6

_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit: ; preds = %.lr.ph.split.i26, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31, %bb.k
  %.2.i = phi i64 [ 0, %bb.k ], [ %i.fs, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i31 ], [ %i.ge, %.lr.ph.split.i26 ]
  %i.gj = uitofp i64 %.2.i to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.m:                                             ; preds = %bb.a
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !33
  %i.gm = xor i32 %i.gl, -1                       ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !28 ; 5 uses
  %.not.i34 = icmp sgt i32 %i.go, %i.gm
  br i1 %.not.i34, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.m
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !23, !range !25, !noundef !26
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load i64, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gv = load i32, ptr %i.gu, align 8
  %.cast.i36 = inttoptr i64 %i.gt to ptr
  br i1 %i.gr, label %.lr.ph.split.us.i44, label %.lr.ph.split.i37

.lr.ph.split.us.i44:                              ; preds = %.lr.ph.i35, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49
  %.022.us.i45 = phi i32 [ %i.he, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49 ], [ %i.gm, %.lr.ph.i35 ] ; 3 uses
  %.01321.us.i46 = phi i64 [ %i.hd, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49 ], [ 0, %.lr.ph.i35 ]
  %i.gw = mul nuw i64 %.01321.us.i46, 10
  %i.gx = sub nsw i32 %.022.us.i45, %i.go         ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, -1
  %.not.i.us.i47 = icmp slt i32 %i.gx, %i.gv
  %or.cond10.i.us.i48 = select i1 %i.gy, i1 %.not.i.us.i47, i1 false
  br i1 %or.cond10.i.us.i48, label %bb.n, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49

bb.n:                                             ; preds = %.lr.ph.split.us.i44
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %.cast.i36, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !27
  %i.hc = sext i8 %i.hb to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49: ; preds = %bb.n, %.lr.ph.split.us.i44
  %.0.i.us.i50 = phi i64 [ 0, %.lr.ph.split.us.i44 ], [ %i.hc, %bb.n ]
  %i.hd = add i64 %.0.i.us.i50, %i.gw             ; 3 uses
  %i.he = add nsw i32 %.022.us.i45, -1
  %i.hf = icmp sgt i32 %.022.us.i45, %i.go
  %i.hg = icmp ult i64 %i.hd, 1000000000000000001
  %i.hh = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %i.hh, label %.lr.ph.split.us.i44, label %._crit_edge.i41, !llvm.loop !6

.lr.ph.split.i37:                                 ; preds = %.lr.ph.i35, %.lr.ph.split.i37
  %.022.i38 = phi i32 [ %i.hq, %.lr.ph.split.i37 ], [ %i.gm, %.lr.ph.i35 ] ; 3 uses
  %.01321.i39 = phi i64 [ %i.hp, %.lr.ph.split.i37 ], [ 0, %.lr.ph.i35 ]
  %i.hi = mul nuw i64 %.01321.i39, 10
  %i.hj = sub nsw i32 %.022.i38, %i.go            ; 2 uses
  %or.cond.i.i40 = icmp ugt i32 %i.hj, 15
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = lshr i64 %i.gt, %i.hl
  %i.hn = and i64 %i.hm, 15
  %i.ho = select i1 %or.cond.i.i40, i64 0, i64 %i.hn
  %i.hp = add nuw i64 %i.ho, %i.hi                ; 3 uses
  %i.hq = add nsw i32 %.022.i38, -1
  %i.hr = icmp sgt i32 %.022.i38, %i.go
  %i.hs = icmp ult i64 %i.hp, 1000000000000000001
  %i.ht = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %i.ht, label %.lr.ph.split.i37, label %._crit_edge.i41, !llvm.loop !6

._crit_edge.i41:                                  ; preds = %.lr.ph.split.i37, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49
  %.013.lcssa.i42 = phi i64 [ %i.hd, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.i49 ], [ %i.hp, %.lr.ph.split.i37 ] ; 2 uses
  %i.hu = icmp eq i64 %.013.lcssa.i42, 0
  br i1 %i.hu, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i41, %.preheader.i
  %.1.i = phi i64 [ %i.hw, %.preheader.i ], [ %.013.lcssa.i42, %._crit_edge.i41 ] ; 4 uses
  %i.hv = urem i64 %.1.i, 10
  %2 = icmp ne i64 %i.hv, 0
  %i.hw = udiv exact i64 %.1.i, 10
  %i.hx = icmp eq i64 %.1.i, 0
  %or.cond = or i1 %2, %i.hx
  br i1 %or.cond, label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51.loopexit, label %.preheader.i

_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51.loopexit: ; preds = %.preheader.i
  %i.hy = uitofp i64 %.1.i to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.o:                                             ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !28
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !35
  %..i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.ic, i32 %i.ia)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !33
  %i.if = add i32 %..i.i, %i.ie
  %i.ig = sub i32 0, %i.if
  %i.ih = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ig, i32 0)
  %i.ii = uitofp nneg i32 %i.ih to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.p:                                             ; preds = %bb.a
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !28
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.im = load i32, ptr %i.il, align 4, !tbaa !33
  %i.in = add i32 %i.ik, %i.im
  %i.io = sub i32 0, %i.in
  %i.ip = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = uitofp nneg i32 %i.ip to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.q:                                             ; preds = %bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !33
  %i.it = sitofp i32 %i.is to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.r:                                             ; preds = %bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !33
  %i.iw = sitofp i32 %i.iv to double
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

bb.s:                                             ; preds = %bb.a
  %i.ix = tail call noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  %i.iy = tail call noundef double @llvm.fabs.f64(double %i.ix)
  br label %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51

_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51: ; preds = %._crit_edge.i41, %bb.m, %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51.loopexit, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit
  %.0 = phi double [ %i.iy, %bb.s ], [ %i.ew, %_ZNK6icu_786number4impl15DecimalQuantity6toLongEb.exit ], [ %i.gj, %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit ], [ %i.iw, %bb.r ], [ %i.ii, %bb.o ], [ %i.iq, %bb.p ], [ %i.it, %bb.q ], [ 0.000000e+00, %._crit_edge.i41 ], [ 0.000000e+00, %bb.m ], [ %i.hy, %_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb.exit51.loopexit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity10isNegativeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !36
  %i.c = trunc i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  %i.e = add i32 %i.d, %i.b                       ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %i.h = add i32 %i.g, -1
  %i.i = add i32 %i.h, %i.e                       ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 17)
  %.014 = select i1 %1, i32 %.sroa.speculated, i32 %i.i ; 4 uses
  %i.j = icmp sgt i32 %.014, -1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8, !tbaa !23, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  %.cast = inttoptr i64 %i.o to ptr               ; 3 uses
  %i.p = zext nneg i32 %.014 to i64               ; 8 uses
  br i1 %i.m, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp eq i32 %.014, 0
  br i1 %i.r, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.q, 4294967294
  %i.s = xor i32 %i.e, -1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.u = icmp eq i32 %.014, 0
  br i1 %i.u, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter35 = and i64 %i.t, 4294967294
  %i.v = xor i32 %i.e, -1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1, %.lr.ph.split.us.preheader.new
  %indvars.iv20 = phi i64 [ %i.p, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next21.1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1 ] ; 3 uses
  %.0815.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.an, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1 ]
  %niter36 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter36.next.1, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1 ]
  %i.w = mul i64 %.0815.us, 10
  %i.x = trunc nuw nsw i64 %indvars.iv20 to i32
  %i.y = sub i32 %i.x, %i.e                       ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  %.not.i.us = icmp slt i32 %i.y, %i.g
  %or.cond10.i.us = and i1 %i.z, %.not.i.us
  br i1 %or.cond10.i.us, label %bb.b, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.cast, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.ad = sext i8 %i.ac to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us: ; preds = %bb.b, %.lr.ph.split.us
  %.0.i.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ad, %bb.b ]
  %i.ae = add i64 %.0.i.us, %i.w
  %i.af = mul i64 %i.ae, 10
  %i.ag = trunc i64 %indvars.iv20 to i32
  %i.ah = add i32 %i.v, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  %.not.i.us.1 = icmp slt i32 %i.ah, %i.g
  %or.cond10.i.us.1 = and i1 %i.ai, %.not.i.us.1
  br i1 %or.cond10.i.us.1, label %bb.c, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1

bb.c:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.cast, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !27
  %i.am = sext i8 %i.al to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1: ; preds = %bb.c, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us
  %.0.i.us.1 = phi i64 [ 0, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us ], [ %i.am, %bb.c ]
  %i.an = add i64 %.0.i.us.1, %i.af               ; 3 uses
  %indvars.iv.next21.1 = add nsw i64 %indvars.iv20, -2 ; 2 uses
  %niter36.next.1 = add i64 %niter36, 2           ; 2 uses
  %niter36.ncmp.1.not = icmp eq i64 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !5

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.1
  %i.ao = and i64 %i.p, 1
  %lcmp.mod32.not.not = icmp eq i64 %i.ao, 0
  br i1 %lcmp.mod32.not.not, label %.lr.ph.split.us.epil.preheader, label %._crit_edge

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv20.epil.init = phi i64 [ %i.p, %.lr.ph.split.us.preheader ], [ %indvars.iv.next21.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0815.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.ap = mul i64 %.0815.us.epil.init, 10
  %i.aq = trunc nuw nsw i64 %indvars.iv20.epil.init to i32
  %i.ar = sub i32 %i.aq, %i.e                     ; 3 uses
  %i.as = icmp sgt i32 %i.ar, -1
  %.not.i.us.epil = icmp slt i32 %i.ar, %i.g
  %or.cond10.i.us.epil = and i1 %i.as, %.not.i.us.epil
  br i1 %or.cond10.i.us.epil, label %bb.d, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.epil

bb.d:                                             ; preds = %.lr.ph.split.us.epil.preheader
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.cast, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27
  %i.aw = sext i8 %i.av to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.epil

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.epil: ; preds = %bb.d, %.lr.ph.split.us.epil.preheader
  %.0.i.us.epil = phi i64 [ 0, %.lr.ph.split.us.epil.preheader ], [ %i.aw, %bb.d ]
  %i.ax = add i64 %.0.i.us.epil, %i.ap
  br label %._crit_edge

._crit_edge.loopexit27.unr-lcssa:                 ; preds = %.lr.ph.split
  %i.ay = and i64 %i.p, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.epil.preheader, label %._crit_edge

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit27.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ %i.p, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit27.unr-lcssa ]
  %.0815.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.cd, %._crit_edge.loopexit27.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.az = mul i64 %.0815.epil.init, 10
  %i.ba = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bb = sub i32 %i.ba, %i.e                     ; 2 uses
  %or.cond.i.epil = icmp ugt i32 %i.bb, 15
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.o, %i.bd
  %i.bf = and i64 %i.be, 15
  %i.bg = select i1 %or.cond.i.epil, i64 0, i64 %i.bf
  %i.bh = add i64 %i.bg, %i.az
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit27.unr-lcssa, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.ax, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us.epil ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.cd, %._crit_edge.loopexit27.unr-lcssa ], [ %i.bh, %.lr.ph.split.epil.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !36
  %i.bk = trunc i8 %i.bj to i1
  %i.bl = sub i64 0, %.08.lcssa
  %.09 = select i1 %i.bk, i64 %i.bl, i64 %.08.lcssa
  ret i64 %.09

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ %i.p, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %.0815 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.cd, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.bm = mul i64 %.0815, 10
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = sub i32 %i.bn, %i.e                     ; 2 uses
  %or.cond.i = icmp ugt i32 %i.bo, 15
  %i.bp = shl nuw nsw i32 %i.bo, 2
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.o, %i.bq
  %i.bs = and i64 %i.br, 15
  %i.bt = select i1 %or.cond.i, i64 0, i64 %i.bs
  %i.bu = add i64 %i.bt, %i.bm
  %i.bv = mul i64 %i.bu, 10
  %i.bw = trunc i64 %indvars.iv to i32
  %i.bx = add i32 %i.s, %i.bw                     ; 2 uses
  %or.cond.i.1 = icmp ugt i32 %i.bx, 15
  %i.by = shl nuw nsw i32 %i.bx, 2
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 %i.o, %i.bz
  %i.cb = and i64 %i.ca, 15
  %i.cc = select i1 %or.cond.i.1, i64 0, i64 %i.cb
  %i.cd = add i64 %i.cc, %i.bv                    ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit27.unr-lcssa, label %.lr.ph.split, !llvm.loop !5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 -128, -8446744073709551488) i64 @_ZNK6icu_786number4impl15DecimalQuantity14toFractionLongEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = xor i32 %i.b, -1                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.e)
  %.020 = select i1 %1, i32 %.sroa.speculated, i32 %i.e ; 3 uses
  %.not = icmp sgt i32 %.020, %i.c
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i8, ptr %i.h, align 8, !tbaa !23, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %.cast = inttoptr i64 %i.l to ptr
  br i1 %i.j, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us
  %.022.us = phi i32 [ %i.w, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us ], [ %i.c, %.lr.ph ] ; 3 uses
  %.01321.us = phi i64 [ %i.v, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us ], [ 0, %.lr.ph ]
  %i.o = mul nuw i64 %.01321.us, 10
  %i.p = sub nsw i32 %.022.us, %i.e               ; 3 uses
  %i.q = icmp sgt i32 %i.p, -1
  %.not.i.us = icmp slt i32 %i.p, %i.n
  %or.cond10.i.us = select i1 %i.q, i1 %.not.i.us, i1 false
  br i1 %or.cond10.i.us, label %bb.b, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.cast, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = sext i8 %i.t to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us: ; preds = %bb.b, %.lr.ph.split.us
  %.0.i.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.u, %bb.b ]
  %i.v = add i64 %.0.i.us, %i.o                   ; 3 uses
  %i.w = add nsw i32 %.022.us, -1
  %i.x = icmp sgt i32 %.022.us, %.020
  %i.y = icmp ult i64 %i.v, 1000000000000000001
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !6

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.022 = phi i32 [ %i.ai, %.lr.ph.split ], [ %i.c, %.lr.ph ] ; 3 uses
  %.01321 = phi i64 [ %i.ah, %.lr.ph.split ], [ 0, %.lr.ph ]
  %i.aa = mul nuw i64 %.01321, 10
  %i.ab = sub nsw i32 %.022, %i.e                 ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ab, 15
  %i.ac = shl nuw nsw i32 %i.ab, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 %i.l, %i.ad
  %i.af = and i64 %i.ae, 15
  %i.ag = select i1 %or.cond.i, i64 0, i64 %i.af
  %i.ah = add nuw i64 %i.ag, %i.aa                ; 3 uses
  %i.ai = add nsw i32 %.022, -1
  %i.aj = icmp sgt i32 %.022, %.020
  %i.ak = icmp ult i64 %i.ah, 1000000000000000001
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.split, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us
  %.013.lcssa = phi i64 [ %i.v, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit.us ], [ %i.ah, %.lr.ph.split ] ; 3 uses
  %i.am = icmp eq i64 %.013.lcssa, 0
  %or.cond.not = select i1 %1, i1 true, i1 %i.am
  br i1 %or.cond.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %bb.c
  %.1 = phi i64 [ %i.ao, %bb.c ], [ %.013.lcssa, %._crit_edge ] ; 4 uses
  %i.an = urem i64 %.1, 10
  %i.ao = udiv exact i64 %.1, 10
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %.old1.not = icmp eq i64 %.1, 0
  br i1 %.old1.not, label %.critedge, label %.preheader

.critedge:                                        ; preds = %.preheader, %bb.c, %bb.a, %._crit_edge
  %.2 = phi i64 [ %.013.lcssa, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.c ], [ %.1, %.preheader ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -2147483648) i32 @_ZNK6icu_786number4impl15DecimalQuantity13fractionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = add i32 %..i, %i.f
  %i.h = sub i32 0, %i.g
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -2147483648) i32 @_ZNK6icu_786number4impl15DecimalQuantity33fractionCountWithoutTrailingZerosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = add i32 %i.b, %i.d
  %i.f = sub i32 0, %i.e
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_786number4impl15DecimalQuantity11getExponentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 9 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(66) %0)
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(66) %0)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !36
  %i.l = trunc i8 %i.k to i1
  %i.m = select i1 %i.l, double -inf, double +inf
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i32 0, ptr %1, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @.str.1, ptr %i.p, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i16 0, ptr %i.q, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK6icu_786number4impl15DecimalQuantity18toScientificStringEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(66) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !27   ; 4 uses
  %i.t = and i16 %i.s, 17
  %.not.i = icmp eq i16 %i.t, 0
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = and i16 %i.s, 2
  %.not2.i = icmp eq i16 %i.u, 0
  br i1 %.not2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i = phi ptr [ %i.x, %bb.g ], [ %i.v, %bb.f ], [ null, %bb.d ]
  %i.y = icmp slt i16 %i.s, 0
  %i.z = ashr i16 %i.s, 5
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = select i1 %i.y, i32 %i.ac, i32 %i.aa
  %i.ae = invoke noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKtiPi(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef %.0.i, i32 noundef %i.ad, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %bb.a, %bb.i, %bb.c
  %.0 = phi double [ %i.ae, %bb.i ], [ %i.m, %bb.c ], [ +qnan, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity14adjustExponentEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = add nsw i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity13resetExponentEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  %i.h = tail call signext i8 @uprv_add32_overflow_78(i32 noundef %i.g, i32 noundef %i.e, ptr noundef nonnull %i.f)
  %i.i = icmp ne i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = tail call signext i8 @uprv_add32_overflow_78(i32 noundef %i.k, i32 noundef %i.e, ptr noundef nonnull %i.j)
  %i.m = icmp ne i8 %i.l, 0
  %i.n = select i1 %i.m, i1 true, i1 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.f, align 4, !tbaa !28
  %i.p = load i32, ptr %i.c, align 8, !tbaa !29
  %i.q = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi.exit

_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi.exit: ; preds = %bb.a, %bb.d
  store i32 0, ptr %i.b, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity15hasIntegerValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp sgt i32 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK6icu_786number4impl15DecimalQuantity24getUpperDisplayMagnitudeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
