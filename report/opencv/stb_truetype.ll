Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2cvL23stbtt_InitFont_internalEPNS_14stbtt_fontinfoEPhji:bb.a
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1: ; preds = %bb.cx, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i
  %i.sf = phi i32 [ %i.rz, %bb.cx ], [ %i.rx, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %.0.i.i19.i.1 = phi i32 [ %i.se, %bb.cx ], [ %i.ry, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.sf, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i19.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ]
  %lcmp.mod1061 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod1061)
  %i.sg = shl i32 %.056.i16.i.epil.init, 8        ; 2 uses
  %.not.i.i17.i.epil = icmp slt i32 %.epil.init, %i.qe
  br i1 %.not.i.i17.i.epil, label %bb.cy, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i

bb.cy:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.sh = add nsw i32 %.epil.init, 1
  %i.si = sext i32 %.epil.init to i64
  %i.sj = getelementptr inbounds i8, ptr %i.rn, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !32
  %i.sl = zext i8 %i.sk to i32
  %i.sm = or disjoint i32 %i.sg, %i.sl
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.cy, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa
  %.lcssa1032 = phi i32 [ %i.sf, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ], [ %i.sh, %bb.cy ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i19.i.lcssa = phi i32 [ %.0.i.i19.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ], [ %i.sm, %bb.cy ], [ %i.sg, %.lr.ph.i.i.epil.preheader ]
  %i.sn = add i32 %.0.i.i19.i.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.so = phi i32 [ %..i.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %.lcssa1032, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %i.sn, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i ]
  %i.sp = add nsw i32 %.05.lcssa.i.i, %i.so       ; 2 uses
  %i.sq = icmp slt i32 %i.sp, 0
  %i.sr = tail call i32 @llvm.smin.i32(i32 %i.sp, i32 %i.qe)
  %..i.i22.i = select i1 %i.sq, i32 %i.qe, i32 %i.sr ; 2 uses
  store i32 %..i.i22.i, ptr %i.qa, align 8, !tbaa !111
  br label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i
  %i.ss = phi i32 [ %..i.i22.i, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i ], [ %i.rc, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i ] ; 7 uses
  %.not.i.i.i361 = icmp slt i32 %i.ss, %i.qe
  br i1 %.not.i.i.i361, label %bb.cz, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362

bb.cz:                                            ; preds = %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit
  %i.st = load ptr, ptr %4, align 8, !tbaa !113
  %i.su = add nsw i32 %i.ss, 1                    ; 2 uses
  store i32 %i.su, ptr %i.qa, align 8, !tbaa !111
  %i.sv = sext i32 %i.ss to i64
  %i.sw = getelementptr inbounds i8, ptr %i.st, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !32
  %i.sy = zext i8 %i.sx to i32
  %i.sz = shl nuw nsw i32 %i.sy, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362: ; preds = %bb.cz, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit
  %i.ta = phi i32 [ %i.su, %bb.cz ], [ %i.ss, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit ] ; 4 uses
  %.0.i.i.i363 = phi i32 [ %i.sz, %bb.cz ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit ] ; 2 uses
  %.not.i.i.1.i364 = icmp slt i32 %i.ta, %i.qe
  br i1 %.not.i.i.1.i364, label %bb.da, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365

bb.da:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362
  %i.tb = load ptr, ptr %4, align 8, !tbaa !113
  %i.tc = add nsw i32 %i.ta, 1                    ; 2 uses
  store i32 %i.tc, ptr %i.qa, align 8, !tbaa !111
  %i.td = sext i32 %i.ta to i64
  %i.te = getelementptr inbounds i8, ptr %i.tb, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !32
  %i.tg = zext i8 %i.tf to i32
  %i.th = or disjoint i32 %.0.i.i.i363, %i.tg
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365: ; preds = %bb.da, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362
  %i.ti = phi i32 [ %i.tc, %bb.da ], [ %i.ta, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362 ] ; 5 uses
  %.0.i.i.1.i366 = phi i32 [ %i.th, %bb.da ], [ %.0.i.i.i363, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i362 ] ; 2 uses
  %.not.i367 = icmp eq i32 %.0.i.i.1.i366, 0
  br i1 %.not.i367, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365
  %.not.i.i368 = icmp slt i32 %i.ti, %i.qe
  br i1 %.not.i.i368, label %bb.dc, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369

bb.dc:                                            ; preds = %bb.db
  %i.tj = load ptr, ptr %4, align 8, !tbaa !113
  %i.tk = add nsw i32 %i.ti, 1
  %i.tl = sext i32 %i.ti to i64
  %i.tm = getelementptr inbounds i8, ptr %i.tj, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !32
  %i.to = zext i8 %i.tn to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369: ; preds = %bb.dc, %bb.db
  %.promoted794 = phi i32 [ %i.tk, %bb.dc ], [ %i.ti, %bb.db ]
  %.0.i.i370 = phi i32 [ %i.to, %bb.dc ], [ 0, %bb.db ] ; 6 uses
  %i.tp = mul nuw nsw i32 %.0.i.i370, %.0.i.i.1.i366
  %i.tq = add nsw i32 %i.tp, %.promoted794        ; 2 uses
  %i.tr = icmp slt i32 %i.tq, 0
  %i.ts = tail call i32 @llvm.smin.i32(i32 %i.tq, i32 %i.qe)
  %..i.i.i371 = select i1 %i.tr, i32 %i.qe, i32 %i.ts ; 3 uses
  %.not.i13.i372 = icmp eq i32 %.0.i.i370, 0
  br i1 %.not.i13.i372, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i381, label %.lr.ph.i.i373.preheader

.lr.ph.i.i373.preheader:                          ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369
  %i.tt = load ptr, ptr %4, align 8               ; 3 uses
  %xtraiter1062 = and i32 %.0.i.i370, 1
  %i.tu = icmp eq i32 %.0.i.i370, 1
  br i1 %i.tu, label %.lr.ph.i.i373.epil.preheader, label %.lr.ph.i.i373.preheader.new

.lr.ph.i.i373.preheader.new:                      ; preds = %.lr.ph.i.i373.preheader
  %unroll_iter1069 = and i32 %.0.i.i370, 254
  br label %.lr.ph.i.i373

.lr.ph.i.i373:                                    ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1, %.lr.ph.i.i373.preheader.new
  %i.tv = phi i32 [ %..i.i.i371, %.lr.ph.i.i373.preheader.new ], [ %i.ul, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1 ] ; 4 uses
  %.056.i16.i375 = phi i32 [ 0, %.lr.ph.i.i373.preheader.new ], [ %.0.i.i19.i378.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1 ]
  %niter1070 = phi i32 [ 0, %.lr.ph.i.i373.preheader.new ], [ %niter1070.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1 ]
  %i.tw = shl i32 %.056.i16.i375, 8               ; 2 uses
  %.not.i.i17.i376 = icmp slt i32 %i.tv, %i.qe
  br i1 %.not.i.i17.i376, label %bb.dd, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377

bb.dd:                                            ; preds = %.lr.ph.i.i373
  %i.tx = add nsw i32 %i.tv, 1
  %i.ty = sext i32 %i.tv to i64
  %i.tz = getelementptr inbounds i8, ptr %i.tt, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !32
  %i.ub = zext i8 %i.ua to i32
  %i.uc = or disjoint i32 %i.tw, %i.ub
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377: ; preds = %bb.dd, %.lr.ph.i.i373
  %i.ud = phi i32 [ %i.tx, %bb.dd ], [ %i.tv, %.lr.ph.i.i373 ] ; 4 uses
  %.0.i.i19.i378 = phi i32 [ %i.uc, %bb.dd ], [ %i.tw, %.lr.ph.i.i373 ]
  %i.ue = shl i32 %.0.i.i19.i378, 8               ; 2 uses
  %.not.i.i17.i376.1 = icmp slt i32 %i.ud, %i.qe
  br i1 %.not.i.i17.i376.1, label %bb.de, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1

bb.de:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377
  %i.uf = add nsw i32 %i.ud, 1
  %i.ug = sext i32 %i.ud to i64
  %i.uh = getelementptr inbounds i8, ptr %i.tt, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !32
  %i.uj = zext i8 %i.ui to i32
  %i.uk = or disjoint i32 %i.ue, %i.uj
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1: ; preds = %bb.de, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377
  %i.ul = phi i32 [ %i.uf, %bb.de ], [ %i.ud, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377 ] ; 3 uses
  %.0.i.i19.i378.1 = phi i32 [ %i.uk, %bb.de ], [ %i.ue, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377 ] ; 3 uses
  %niter1070.next.1 = add nuw nsw i32 %niter1070, 2 ; 2 uses
  %niter1070.ncmp.1 = icmp eq i32 %niter1070.next.1, %unroll_iter1069
  br i1 %niter1070.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa, label %.lr.ph.i.i373, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i377.1
  %lcmp.mod1065.not = icmp eq i32 %xtraiter1062, 0
  br i1 %lcmp.mod1065.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380, label %.lr.ph.i.i373.epil.preheader

.lr.ph.i.i373.epil.preheader:                     ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa, %.lr.ph.i.i373.preheader
  %.epil.init1064 = phi i32 [ %..i.i.i371, %.lr.ph.i.i373.preheader ], [ %i.ul, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa ] ; 4 uses
  %.056.i16.i375.epil.init = phi i32 [ 0, %.lr.ph.i.i373.preheader ], [ %.0.i.i19.i378.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa ]
  %lcmp.mod1068 = trunc i32 %.0.i.i370 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1068)
  %i.um = shl i32 %.056.i16.i375.epil.init, 8     ; 2 uses
  %.not.i.i17.i376.epil = icmp slt i32 %.epil.init1064, %i.qe
  br i1 %.not.i.i17.i376.epil, label %bb.df, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380

bb.df:                                            ; preds = %.lr.ph.i.i373.epil.preheader
  %i.un = add nsw i32 %.epil.init1064, 1
  %i.uo = sext i32 %.epil.init1064 to i64
  %i.up = getelementptr inbounds i8, ptr %i.tt, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !32
  %i.ur = zext i8 %i.uq to i32
  %i.us = or disjoint i32 %i.um, %i.ur
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380: ; preds = %.lr.ph.i.i373.epil.preheader, %bb.df, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa
  %.lcssa1031 = phi i32 [ %i.ul, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa ], [ %i.un, %bb.df ], [ %.epil.init1064, %.lr.ph.i.i373.epil.preheader ]
  %.0.i.i19.i378.lcssa = phi i32 [ %.0.i.i19.i378.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380.unr-lcssa ], [ %i.us, %bb.df ], [ %i.um, %.lr.ph.i.i373.epil.preheader ]
  %i.ut = add i32 %.0.i.i19.i378.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i381

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i381: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369
  %i.uu = phi i32 [ %..i.i.i371, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369 ], [ %.lcssa1031, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380 ]
  %.05.lcssa.i.i382 = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i369 ], [ %i.ut, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i380 ]
  %i.uv = add nsw i32 %.05.lcssa.i.i382, %i.uu    ; 2 uses
  %i.uw = icmp slt i32 %i.uv, 0
  %i.ux = tail call i32 @llvm.smin.i32(i32 %i.uv, i32 %i.qe)
  %..i.i22.i383 = select i1 %i.uw, i32 %i.qe, i32 %i.ux ; 2 uses
  store i32 %..i.i22.i383, ptr %i.qa, align 8, !tbaa !111
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i381, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365
  %i.uy = phi i32 [ %..i.i22.i383, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i381 ], [ %i.ti, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i365 ] ; 6 uses
  %i.uz = sub nsw i32 %i.uy, %i.ss                ; 4 uses
  %i.va = or i32 %i.uz, %i.ss
  %or.cond.not.i.i384 = icmp slt i32 %i.va, 0
  %i.vb = icmp sgt i32 %i.uy, %i.qe
  %or.cond.i385 = or i1 %i.vb, %or.cond.not.i.i384
  br i1 %or.cond.i385, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i, label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390: ; preds = %bb.dg
  %i.vc = load ptr, ptr %4, align 8, !tbaa !113
  %i.vd = zext nneg i32 %i.ss to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vd ; 15 uses
  %.not.i.i.i391.not = icmp eq i32 %i.uz, 0
  br i1 %.not.i.i.i391.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i, label %bb.dh

bb.dh:                                            ; preds = %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !32
  %i.vg = zext i8 %i.vf to i32
  %i.vh = shl nuw nsw i32 %i.vg, 8                ; 2 uses
  %.not.i.i.1.i394.not = icmp eq i32 %i.uz, 1
  br i1 %.not.i.i.1.i394.not, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !32
  %i.vk = zext i8 %i.vj to i32
  %i.vl = or disjoint i32 %i.vh, %i.vk
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395: ; preds = %bb.di, %bb.dh
  %.sroa.18.8.extract.trunc.i737924 = phi i32 [ %i.uz, %bb.di ], [ 1, %bb.dh ] ; 12 uses
  %.sroa.6.1.1.i = phi i32 [ 2, %bb.di ], [ 1, %bb.dh ] ; 3 uses
  %.0.i.i.1.i396 = phi i32 [ %i.vl, %bb.di ], [ %i.vh, %bb.dh ] ; 5 uses
  %.not.i.i397 = icmp samesign ult i32 %.sroa.6.1.1.i, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i397, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395
  %6 = zext nneg i32 %.sroa.6.1.1.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 %6
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !32  ; 4 uses
  %i.vo = zext i8 %i.vn to i32                    ; 8 uses
  %.not.i9.i = icmp eq i8 %i.vn, 0
  br i1 %.not.i9.i, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403
  %i.vp = add nuw nsw i32 %.sroa.6.1.1.i, 1       ; 4 uses
  %i.vq = add nsw i32 %i.vo, -1                   ; 2 uses
  %xtraiter1071 = and i32 %i.vo, 1
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %.lr.ph.i.i405.epil.preheader, label %.lr.ph.i.preheader.i.new

.lr.ph.i.preheader.i.new:                         ; preds = %.lr.ph.i.preheader.i
  %unroll_iter1078 = and i32 %i.vo, 254
  br label %.lr.ph.i.i405

.lr.ph.i.i405:                                    ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1, %.lr.ph.i.preheader.i.new
  %.sroa.6.3.i = phi i32 [ %i.vp, %.lr.ph.i.preheader.i.new ], [ %.sroa.6.4.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1 ]
  %i.vs = phi i32 [ %i.vp, %.lr.ph.i.preheader.i.new ], [ %i.wi, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1 ] ; 4 uses
  %.056.i12.i = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %.0.i.i15.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1 ]
  %niter1079 = phi i32 [ 0, %.lr.ph.i.preheader.i.new ], [ %niter1079.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1 ]
  %i.vt = shl i32 %.056.i12.i, 8                  ; 2 uses
  %.not.i.i13.i = icmp slt i32 %i.vs, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i13.i, label %bb.dj, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i

bb.dj:                                            ; preds = %.lr.ph.i.i405
  %i.vu = add nsw i32 %i.vs, 1                    ; 2 uses
  %i.vv = sext i32 %i.vs to i64
  %i.vw = getelementptr inbounds i8, ptr %i.ve, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !32
  %i.vy = zext i8 %i.vx to i32
  %i.vz = or disjoint i32 %i.vt, %i.vy
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i: ; preds = %bb.dj, %.lr.ph.i.i405
  %.sroa.6.4.i = phi i32 [ %i.vu, %bb.dj ], [ %.sroa.6.3.i, %.lr.ph.i.i405 ]
  %i.wa = phi i32 [ %i.vu, %bb.dj ], [ %i.vs, %.lr.ph.i.i405 ] ; 4 uses
  %.0.i.i15.i = phi i32 [ %i.vz, %bb.dj ], [ %i.vt, %.lr.ph.i.i405 ]
  %i.wb = shl i32 %.0.i.i15.i, 8                  ; 2 uses
  %.not.i.i13.i.1 = icmp slt i32 %i.wa, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i13.i.1, label %bb.dk, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1

bb.dk:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i
  %i.wc = add nsw i32 %i.wa, 1                    ; 2 uses
  %i.wd = sext i32 %i.wa to i64
  %i.we = getelementptr inbounds i8, ptr %i.ve, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !32
  %i.wg = zext i8 %i.wf to i32
  %i.wh = or disjoint i32 %i.wb, %i.wg
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1: ; preds = %bb.dk, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i
  %.sroa.6.4.i.1 = phi i32 [ %i.wc, %bb.dk ], [ %.sroa.6.4.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i ] ; 3 uses
  %i.wi = phi i32 [ %i.wc, %bb.dk ], [ %i.wa, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i ] ; 2 uses
  %.0.i.i15.i.1 = phi i32 [ %i.wh, %bb.dk ], [ %i.wb, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i ] ; 3 uses
  %niter1079.next.1 = add i32 %niter1079, 2       ; 2 uses
  %niter1079.ncmp.1 = icmp eq i32 %niter1079.next.1, %unroll_iter1078
  br i1 %niter1079.ncmp.1, label %.lr.ph.i19.i.preheader.unr-lcssa, label %.lr.ph.i.i405, !llvm.loop !17

.lr.ph.i19.i.preheader.unr-lcssa:                 ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.i.1
  %lcmp.mod1074.not = icmp eq i32 %xtraiter1071, 0
  br i1 %lcmp.mod1074.not, label %.lr.ph.i19.i.preheader, label %.lr.ph.i.i405.epil.preheader

.lr.ph.i.i405.epil.preheader:                     ; preds = %.lr.ph.i19.i.preheader.unr-lcssa, %.lr.ph.i.preheader.i
  %.sroa.6.3.i.epil.init = phi i32 [ %i.vp, %.lr.ph.i.preheader.i ], [ %.sroa.6.4.i.1, %.lr.ph.i19.i.preheader.unr-lcssa ]
  %.epil.init1073 = phi i32 [ %i.vp, %.lr.ph.i.preheader.i ], [ %i.wi, %.lr.ph.i19.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ %.0.i.i15.i.1, %.lr.ph.i19.i.preheader.unr-lcssa ]
  %lcmp.mod1077 = trunc i8 %i.vn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1077)
  %i.wj = shl i32 %.056.i12.i.epil.init, 8        ; 2 uses
  %.not.i.i13.i.epil = icmp slt i32 %.epil.init1073, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i13.i.epil, label %bb.dl, label %.lr.ph.i19.i.preheader

bb.dl:                                            ; preds = %.lr.ph.i.i405.epil.preheader
  %i.wk = add nsw i32 %.epil.init1073, 1
  %i.wl = sext i32 %.epil.init1073 to i64
  %i.wm = getelementptr inbounds i8, ptr %i.ve, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !32
  %i.wo = zext i8 %i.wn to i32
  %i.wp = or disjoint i32 %i.wj, %i.wo
  br label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %.lr.ph.i.i405.epil.preheader, %bb.dl, %.lr.ph.i19.i.preheader.unr-lcssa
  %.sroa.6.4.i.lcssa = phi i32 [ %.sroa.6.4.i.1, %.lr.ph.i19.i.preheader.unr-lcssa ], [ %i.wk, %bb.dl ], [ %.sroa.6.3.i.epil.init, %.lr.ph.i.i405.epil.preheader ] ; 2 uses
  %.0.i.i15.i.lcssa = phi i32 [ %.0.i.i15.i.1, %.lr.ph.i19.i.preheader.unr-lcssa ], [ %i.wp, %bb.dl ], [ %i.wj, %.lr.ph.i.i405.epil.preheader ] ; 3 uses
  %xtraiter1080 = and i32 %i.vo, 1
  %i.wq = icmp eq i32 %i.vq, 0
  br i1 %i.wq, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter1086 = and i32 %i.vo, 254
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1, %.lr.ph.i19.i.preheader.new
  %i.wr = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i19.i.preheader.new ], [ %i.xh, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1 ] ; 4 uses
  %.056.i22.i = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %.0.i.i25.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1 ]
  %niter1087 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter1087.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1 ]
  %i.ws = shl i32 %.056.i22.i, 8                  ; 2 uses
  %.not.i.i23.i = icmp slt i32 %i.wr, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i23.i, label %bb.dm, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i

bb.dm:                                            ; preds = %.lr.ph.i19.i
  %i.wt = add nsw i32 %i.wr, 1
  %i.wu = sext i32 %i.wr to i64
  %i.wv = getelementptr inbounds i8, ptr %i.ve, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !32
  %i.wx = zext i8 %i.ww to i32
  %i.wy = or disjoint i32 %i.ws, %i.wx
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i: ; preds = %bb.dm, %.lr.ph.i19.i
  %i.wz = phi i32 [ %i.wt, %bb.dm ], [ %i.wr, %.lr.ph.i19.i ] ; 4 uses
  %.0.i.i25.i = phi i32 [ %i.wy, %bb.dm ], [ %i.ws, %.lr.ph.i19.i ]
  %i.xa = shl i32 %.0.i.i25.i, 8                  ; 2 uses
  %.not.i.i23.i.1 = icmp slt i32 %i.wz, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i23.i.1, label %bb.dn, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1

bb.dn:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i
  %i.xb = add nsw i32 %i.wz, 1
  %i.xc = sext i32 %i.wz to i64
  %i.xd = getelementptr inbounds i8, ptr %i.ve, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !32
  %i.xf = zext i8 %i.xe to i32
  %i.xg = or disjoint i32 %i.xa, %i.xf
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1: ; preds = %bb.dn, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i
  %i.xh = phi i32 [ %i.xb, %bb.dn ], [ %i.wz, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i ] ; 2 uses
  %.0.i.i25.i.1 = phi i32 [ %i.xg, %bb.dn ], [ %i.xa, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i ] ; 3 uses
  %niter1087.next.1 = add i32 %niter1087, 2       ; 2 uses
  %niter1087.ncmp.1 = icmp eq i32 %niter1087.next.1, %unroll_iter1086
  br i1 %niter1087.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa, label %.lr.ph.i19.i, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.i.1
  %lcmp.mod1083.not = icmp eq i32 %xtraiter1080, 0
  br i1 %lcmp.mod1083.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %.epil.init1082 = phi i32 [ %.sroa.6.4.i.lcssa, %.lr.ph.i19.i.preheader ], [ %i.xh, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.preheader ], [ %.0.i.i25.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ]
  %lcmp.mod1085 = trunc i8 %i.vn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1085)
  %i.xi = shl i32 %.056.i22.i.epil.init, 8        ; 2 uses
  %.not.i.i23.i.epil = icmp slt i32 %.epil.init1082, %.sroa.18.8.extract.trunc.i737924
  br i1 %.not.i.i23.i.epil, label %bb.do, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i

bb.do:                                            ; preds = %.lr.ph.i19.i.epil.preheader
  %i.xj = sext i32 %.epil.init1082 to i64
  %i.xk = getelementptr inbounds i8, ptr %i.ve, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !32
  %i.xm = zext i8 %i.xl to i32
  %i.xn = or disjoint i32 %i.xi, %i.xm
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa, %bb.do, %.lr.ph.i19.i.epil.preheader, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390, %bb.dg, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395
  %.0.i.i.1.i396752 = phi i32 [ %.0.i.i.1.i396, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ %.0.i.i.1.i396, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ 0, %bb.dg ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %.0.i.i.1.i396, %.lr.ph.i19.i.epil.preheader ], [ %.0.i.i.1.i396, %bb.do ], [ %.0.i.i.1.i396, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i737743751 = phi i32 [ %.sroa.18.8.extract.trunc.i737924, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ %.sroa.18.8.extract.trunc.i737924, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ 0, %bb.dg ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %.sroa.18.8.extract.trunc.i737924, %.lr.ph.i19.i.epil.preheader ], [ %.sroa.18.8.extract.trunc.i737924, %bb.do ], [ %.sroa.18.8.extract.trunc.i737924, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i386736744750 = phi ptr [ %i.ve, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ %i.ve, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ null, %bb.dg ], [ %i.ve, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %i.ve, %.lr.ph.i19.i.epil.preheader ], [ %i.ve, %bb.do ], [ %i.ve, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ]
  %.0.i55.i = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ 0, %bb.dg ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %i.vo, %.lr.ph.i19.i.epil.preheader ], [ %i.vo, %bb.do ], [ %i.vo, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ 0, %bb.dg ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %.0.i.i15.i.lcssa, %.lr.ph.i19.i.epil.preheader ], [ %.0.i.i15.i.lcssa, %bb.do ], [ %.0.i.i15.i.lcssa, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i403 ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i395 ], [ 0, %bb.dg ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit390 ], [ %.0.i.i25.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i.loopexit.unr-lcssa ], [ %i.xn, %bb.do ], [ %i.xi, %.lr.ph.i19.i.epil.preheader ]
  %i.xo = add nuw nsw i32 %.0.i.i.1.i396752, 1
  %i.xp = mul nuw nsw i32 %.0.i55.i, %i.xo
  %i.xq = add nuw nsw i32 %i.xp, 2
  %i.xr = add nsw i32 %i.xq, %.05.lcssa.i42.i     ; 4 uses
  %i.xs = sub nsw i32 %.05.lcssa.i27.i, %.05.lcssa.i42.i ; 3 uses
  %i.xt = or i32 %i.xs, %i.xr
  %or.cond.not.i.i398 = icmp sgt i32 %i.xt, -1
  br i1 %or.cond.not.i.i398, label %bb.dp, label %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit

bb.dp:                                            ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i
  %i.xu = icmp sgt i32 %i.xr, %.sroa.18.8.extract.trunc.i737743751
  %i.xv = sub nsw i32 %.sroa.18.8.extract.trunc.i737743751, %i.xr
  %i.xw = icmp sgt i32 %i.xs, %i.xv
  %or.cond.i.i = select i1 %i.xu, i1 true, i1 %i.xw
  br i1 %or.cond.i.i, label %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xx = zext nneg i32 %i.xr to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i386736744750, i64 %i.xx
  %i.xz = zext nneg i32 %i.xs to i64
  %i.ya = shl nuw nsw i64 %i.xz, 32
  br label %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit

_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i, %bb.dp, %bb.dq
  %.sroa.0.0.i.i399 = phi ptr [ null, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i ], [ null, %bb.dp ], [ %i.xy, %bb.dq ]
  %.sroa.5.0.i.i400 = phi i64 [ 0, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.i ], [ 0, %bb.dp ], [ %i.ya, %bb.dq ]
  store ptr %.sroa.0.0.i.i399, ptr %5, align 8, !tbaa !75
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i400, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !34
  %.not.i.i.i406 = icmp slt i32 %i.uy, %i.qe
  br i1 %.not.i.i.i406, label %bb.dr, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407

bb.dr:                                            ; preds = %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit
  %i.yb = load ptr, ptr %4, align 8, !tbaa !113
  %i.yc = add nsw i32 %i.uy, 1                    ; 2 uses
  store i32 %i.yc, ptr %i.qa, align 8, !tbaa !111
  %i.yd = sext i32 %i.uy to i64
  %i.ye = getelementptr inbounds i8, ptr %i.yb, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !32
  %i.yg = zext i8 %i.yf to i32
  %i.yh = shl nuw nsw i32 %i.yg, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407: ; preds = %bb.dr, %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit
  %i.yi = phi i32 [ %i.yc, %bb.dr ], [ %i.uy, %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit ] ; 4 uses
  %.0.i.i.i408 = phi i32 [ %i.yh, %bb.dr ], [ 0, %_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi.exit ] ; 2 uses
  %.not.i.i.1.i409 = icmp slt i32 %i.yi, %i.qe
  br i1 %.not.i.i.1.i409, label %bb.ds, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410

bb.ds:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407
  %i.yj = load ptr, ptr %4, align 8, !tbaa !113
  %i.yk = add nsw i32 %i.yi, 1                    ; 2 uses
  store i32 %i.yk, ptr %i.qa, align 8, !tbaa !111
  %i.yl = sext i32 %i.yi to i64
  %i.ym = getelementptr inbounds i8, ptr %i.yj, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !32
  %i.yo = zext i8 %i.yn to i32
  %i.yp = or disjoint i32 %.0.i.i.i408, %i.yo
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410: ; preds = %bb.ds, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407
  %i.yq = phi i32 [ %i.yk, %bb.ds ], [ %i.yi, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407 ] ; 5 uses
  %.0.i.i.1.i411 = phi i32 [ %i.yp, %bb.ds ], [ %.0.i.i.i408, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i407 ] ; 2 uses
  %.not.i412 = icmp eq i32 %.0.i.i.1.i411, 0
  br i1 %.not.i412, label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435, label %bb.dt

bb.dt:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410
  %.not.i.i413 = icmp slt i32 %i.yq, %i.qe
  br i1 %.not.i.i413, label %bb.du, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414

bb.du:                                            ; preds = %bb.dt
  %i.yr = load ptr, ptr %4, align 8, !tbaa !113
  %i.ys = add nsw i32 %i.yq, 1
  %i.yt = sext i32 %i.yq to i64
  %i.yu = getelementptr inbounds i8, ptr %i.yr, i64 %i.yt
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !32
  %i.yw = zext i8 %i.yv to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414: ; preds = %bb.du, %bb.dt
  %.promoted796 = phi i32 [ %i.ys, %bb.du ], [ %i.yq, %bb.dt ]
  %.0.i.i415 = phi i32 [ %i.yw, %bb.du ], [ 0, %bb.dt ] ; 6 uses
  %i.yx = mul nuw nsw i32 %.0.i.i415, %.0.i.i.1.i411
  %i.yy = add nsw i32 %i.yx, %.promoted796        ; 2 uses
  %i.yz = icmp slt i32 %i.yy, 0
  %i.za = tail call i32 @llvm.smin.i32(i32 %i.yy, i32 %i.qe)
  %..i.i.i416 = select i1 %i.yz, i32 %i.qe, i32 %i.za ; 3 uses
  %.not.i13.i417 = icmp eq i32 %.0.i.i415, 0
  br i1 %.not.i13.i417, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i426, label %.lr.ph.i.i418.preheader

.lr.ph.i.i418.preheader:                          ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414
  %i.zb = load ptr, ptr %4, align 8               ; 3 uses
  %xtraiter1088 = and i32 %.0.i.i415, 1
  %i.zc = icmp eq i32 %.0.i.i415, 1
  br i1 %i.zc, label %.lr.ph.i.i418.epil.preheader, label %.lr.ph.i.i418.preheader.new

.lr.ph.i.i418.preheader.new:                      ; preds = %.lr.ph.i.i418.preheader
  %unroll_iter1095 = and i32 %.0.i.i415, 254
  br label %.lr.ph.i.i418

.lr.ph.i.i418:                                    ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1, %.lr.ph.i.i418.preheader.new
  %i.zd = phi i32 [ %..i.i.i416, %.lr.ph.i.i418.preheader.new ], [ %i.zt, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1 ] ; 4 uses
  %.056.i16.i420 = phi i32 [ 0, %.lr.ph.i.i418.preheader.new ], [ %.0.i.i19.i423.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1 ]
  %niter1096 = phi i32 [ 0, %.lr.ph.i.i418.preheader.new ], [ %niter1096.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1 ]
  %i.ze = shl i32 %.056.i16.i420, 8               ; 2 uses
  %.not.i.i17.i421 = icmp slt i32 %i.zd, %i.qe
  br i1 %.not.i.i17.i421, label %bb.dv, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422

bb.dv:                                            ; preds = %.lr.ph.i.i418
  %i.zf = add nsw i32 %i.zd, 1
  %i.zg = sext i32 %i.zd to i64
  %i.zh = getelementptr inbounds i8, ptr %i.zb, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !32
  %i.zj = zext i8 %i.zi to i32
  %i.zk = or disjoint i32 %i.ze, %i.zj
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422: ; preds = %bb.dv, %.lr.ph.i.i418
  %i.zl = phi i32 [ %i.zf, %bb.dv ], [ %i.zd, %.lr.ph.i.i418 ] ; 4 uses
  %.0.i.i19.i423 = phi i32 [ %i.zk, %bb.dv ], [ %i.ze, %.lr.ph.i.i418 ]
  %i.zm = shl i32 %.0.i.i19.i423, 8               ; 2 uses
  %.not.i.i17.i421.1 = icmp slt i32 %i.zl, %i.qe
  br i1 %.not.i.i17.i421.1, label %bb.dw, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1

bb.dw:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422
  %i.zn = add nsw i32 %i.zl, 1
  %i.zo = sext i32 %i.zl to i64
  %i.zp = getelementptr inbounds i8, ptr %i.zb, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !32
  %i.zr = zext i8 %i.zq to i32
  %i.zs = or disjoint i32 %i.zm, %i.zr
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1: ; preds = %bb.dw, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422
  %i.zt = phi i32 [ %i.zn, %bb.dw ], [ %i.zl, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422 ] ; 3 uses
  %.0.i.i19.i423.1 = phi i32 [ %i.zs, %bb.dw ], [ %i.zm, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422 ] ; 3 uses
  %niter1096.next.1 = add nuw nsw i32 %niter1096, 2 ; 2 uses
  %niter1096.ncmp.1 = icmp eq i32 %niter1096.next.1, %unroll_iter1095
  br i1 %niter1096.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa, label %.lr.ph.i.i418, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i422.1
  %lcmp.mod1091.not = icmp eq i32 %xtraiter1088, 0
  br i1 %lcmp.mod1091.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425, label %.lr.ph.i.i418.epil.preheader

.lr.ph.i.i418.epil.preheader:                     ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa, %.lr.ph.i.i418.preheader
  %.epil.init1090 = phi i32 [ %..i.i.i416, %.lr.ph.i.i418.preheader ], [ %i.zt, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa ] ; 4 uses
  %.056.i16.i420.epil.init = phi i32 [ 0, %.lr.ph.i.i418.preheader ], [ %.0.i.i19.i423.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa ]
  %lcmp.mod1094 = trunc i32 %.0.i.i415 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1094)
  %i.zu = shl i32 %.056.i16.i420.epil.init, 8     ; 2 uses
  %.not.i.i17.i421.epil = icmp slt i32 %.epil.init1090, %i.qe
  br i1 %.not.i.i17.i421.epil, label %bb.dx, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425

bb.dx:                                            ; preds = %.lr.ph.i.i418.epil.preheader
  %i.zv = add nsw i32 %.epil.init1090, 1
  %i.zw = sext i32 %.epil.init1090 to i64
  %i.zx = getelementptr inbounds i8, ptr %i.zb, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !32
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = or disjoint i32 %i.zu, %i.zz
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425: ; preds = %.lr.ph.i.i418.epil.preheader, %bb.dx, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa
  %.lcssa1030 = phi i32 [ %i.zt, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa ], [ %i.zv, %bb.dx ], [ %.epil.init1090, %.lr.ph.i.i418.epil.preheader ]
  %.0.i.i19.i423.lcssa = phi i32 [ %.0.i.i19.i423.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425.unr-lcssa ], [ %i.aaa, %bb.dx ], [ %i.zu, %.lr.ph.i.i418.epil.preheader ]
  %i.aab = add i32 %.0.i.i19.i423.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i426

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i426: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414
  %i.aac = phi i32 [ %..i.i.i416, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414 ], [ %.lcssa1030, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425 ]
  %.05.lcssa.i.i427 = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i414 ], [ %i.aab, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i425 ]
  %i.aad = add nsw i32 %.05.lcssa.i.i427, %i.aac  ; 2 uses
  %i.aae = icmp slt i32 %i.aad, 0
  %i.aaf = tail call i32 @llvm.smin.i32(i32 %i.aad, i32 %i.qe)
  %..i.i22.i428 = select i1 %i.aae, i32 %i.qe, i32 %i.aaf ; 2 uses
  store i32 %..i.i22.i428, ptr %i.qa, align 8, !tbaa !111
  br label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i426, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410
  %i.aag = phi i32 [ %..i.i22.i428, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i426 ], [ %i.yq, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i410 ] ; 7 uses
  %.not.i.i.i436 = icmp slt i32 %i.aag, %i.qe
  br i1 %.not.i.i.i436, label %bb.dy, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437

bb.dy:                                            ; preds = %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435
  %i.aah = load ptr, ptr %4, align 8, !tbaa !113
  %i.aai = add nsw i32 %i.aag, 1                  ; 2 uses
  store i32 %i.aai, ptr %i.qa, align 8, !tbaa !111
  %i.aaj = sext i32 %i.aag to i64
  %i.aak = getelementptr inbounds i8, ptr %i.aah, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !32
  %i.aam = zext i8 %i.aal to i32
  %i.aan = shl nuw nsw i32 %i.aam, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437: ; preds = %bb.dy, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435
  %i.aao = phi i32 [ %i.aai, %bb.dy ], [ %i.aag, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435 ] ; 4 uses
  %.0.i.i.i438 = phi i32 [ %i.aan, %bb.dy ], [ 0, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit435 ] ; 2 uses
  %.not.i.i.1.i439 = icmp slt i32 %i.aao, %i.qe
  br i1 %.not.i.i.1.i439, label %bb.dz, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440

bb.dz:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437
  %i.aap = load ptr, ptr %4, align 8, !tbaa !113
  %i.aaq = add nsw i32 %i.aao, 1                  ; 2 uses
  store i32 %i.aaq, ptr %i.qa, align 8, !tbaa !111
  %i.aar = sext i32 %i.aao to i64
  %i.aas = getelementptr inbounds i8, ptr %i.aap, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !32
  %i.aau = zext i8 %i.aat to i32
  %i.aav = or disjoint i32 %.0.i.i.i438, %i.aau
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440: ; preds = %bb.dz, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437
  %i.aaw = phi i32 [ %i.aaq, %bb.dz ], [ %i.aao, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437 ] ; 5 uses
  %.0.i.i.1.i441 = phi i32 [ %i.aav, %bb.dz ], [ %.0.i.i.i438, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i437 ] ; 2 uses
  %.not.i442 = icmp eq i32 %.0.i.i.1.i441, 0
  br i1 %.not.i442, label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465, label %bb.ea

bb.ea:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440
  %.not.i.i443 = icmp slt i32 %i.aaw, %i.qe
  br i1 %.not.i.i443, label %bb.eb, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444

bb.eb:                                            ; preds = %bb.ea
  %i.aax = load ptr, ptr %4, align 8, !tbaa !113
  %i.aay = add nsw i32 %i.aaw, 1
  %i.aaz = sext i32 %i.aaw to i64
  %i.aba = getelementptr inbounds i8, ptr %i.aax, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !32
  %i.abc = zext i8 %i.abb to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444: ; preds = %bb.eb, %bb.ea
  %.promoted798 = phi i32 [ %i.aay, %bb.eb ], [ %i.aaw, %bb.ea ]
  %.0.i.i445 = phi i32 [ %i.abc, %bb.eb ], [ 0, %bb.ea ] ; 6 uses
  %i.abd = mul nuw nsw i32 %.0.i.i445, %.0.i.i.1.i441
  %i.abe = add nsw i32 %i.abd, %.promoted798      ; 2 uses
  %i.abf = icmp slt i32 %i.abe, 0
  %i.abg = tail call i32 @llvm.smin.i32(i32 %i.abe, i32 %i.qe)
  %..i.i.i446 = select i1 %i.abf, i32 %i.qe, i32 %i.abg ; 3 uses
  %.not.i13.i447 = icmp eq i32 %.0.i.i445, 0
  br i1 %.not.i13.i447, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456, label %.lr.ph.i.i448.preheader

.lr.ph.i.i448.preheader:                          ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444
  %i.abh = load ptr, ptr %4, align 8              ; 3 uses
  %xtraiter1097 = and i32 %.0.i.i445, 1
  %i.abi = icmp eq i32 %.0.i.i445, 1
  br i1 %i.abi, label %.lr.ph.i.i448.epil.preheader, label %.lr.ph.i.i448.preheader.new

.lr.ph.i.i448.preheader.new:                      ; preds = %.lr.ph.i.i448.preheader
  %unroll_iter1104 = and i32 %.0.i.i445, 254
  br label %.lr.ph.i.i448

.lr.ph.i.i448:                                    ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1, %.lr.ph.i.i448.preheader.new
  %i.abj = phi i32 [ %..i.i.i446, %.lr.ph.i.i448.preheader.new ], [ %i.abz, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1 ] ; 4 uses
  %.056.i16.i450 = phi i32 [ 0, %.lr.ph.i.i448.preheader.new ], [ %.0.i.i19.i453.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1 ]
  %niter1105 = phi i32 [ 0, %.lr.ph.i.i448.preheader.new ], [ %niter1105.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1 ]
  %i.abk = shl i32 %.056.i16.i450, 8              ; 2 uses
  %.not.i.i17.i451 = icmp slt i32 %i.abj, %i.qe
  br i1 %.not.i.i17.i451, label %bb.ec, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452

bb.ec:                                            ; preds = %.lr.ph.i.i448
  %i.abl = add nsw i32 %i.abj, 1
  %i.abm = sext i32 %i.abj to i64
  %i.abn = getelementptr inbounds i8, ptr %i.abh, i64 %i.abm
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !32
  %i.abp = zext i8 %i.abo to i32
  %i.abq = or disjoint i32 %i.abk, %i.abp
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452: ; preds = %bb.ec, %.lr.ph.i.i448
  %i.abr = phi i32 [ %i.abl, %bb.ec ], [ %i.abj, %.lr.ph.i.i448 ] ; 4 uses
  %.0.i.i19.i453 = phi i32 [ %i.abq, %bb.ec ], [ %i.abk, %.lr.ph.i.i448 ]
  %i.abs = shl i32 %.0.i.i19.i453, 8              ; 2 uses
  %.not.i.i17.i451.1 = icmp slt i32 %i.abr, %i.qe
  br i1 %.not.i.i17.i451.1, label %bb.ed, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1

bb.ed:                                            ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452
  %i.abt = add nsw i32 %i.abr, 1
  %i.abu = sext i32 %i.abr to i64
  %i.abv = getelementptr inbounds i8, ptr %i.abh, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !32
  %i.abx = zext i8 %i.abw to i32
  %i.aby = or disjoint i32 %i.abs, %i.abx
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1: ; preds = %bb.ed, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452
  %i.abz = phi i32 [ %i.abt, %bb.ed ], [ %i.abr, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452 ] ; 3 uses
  %.0.i.i19.i453.1 = phi i32 [ %i.aby, %bb.ed ], [ %i.abs, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452 ] ; 3 uses
  %niter1105.next.1 = add nuw nsw i32 %niter1105, 2 ; 2 uses
  %niter1105.ncmp.1 = icmp eq i32 %niter1105.next.1, %unroll_iter1104
  br i1 %niter1105.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa, label %.lr.ph.i.i448, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i452.1
  %lcmp.mod1100.not = icmp eq i32 %xtraiter1097, 0
  br i1 %lcmp.mod1100.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455, label %.lr.ph.i.i448.epil.preheader

.lr.ph.i.i448.epil.preheader:                     ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa, %.lr.ph.i.i448.preheader
  %.epil.init1099 = phi i32 [ %..i.i.i446, %.lr.ph.i.i448.preheader ], [ %i.abz, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ] ; 4 uses
  %.056.i16.i450.epil.init = phi i32 [ 0, %.lr.ph.i.i448.preheader ], [ %.0.i.i19.i453.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ]
  %lcmp.mod1103 = trunc i32 %.0.i.i445 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1103)
  %i.aca = shl i32 %.056.i16.i450.epil.init, 8    ; 2 uses
  %.not.i.i17.i451.epil = icmp slt i32 %.epil.init1099, %i.qe
  br i1 %.not.i.i17.i451.epil, label %bb.ee, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455

bb.ee:                                            ; preds = %.lr.ph.i.i448.epil.preheader
  %i.acb = add nsw i32 %.epil.init1099, 1
  %i.acc = sext i32 %.epil.init1099 to i64
  %i.acd = getelementptr inbounds i8, ptr %i.abh, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !32
  %i.acf = zext i8 %i.ace to i32
  %i.acg = or disjoint i32 %i.aca, %i.acf
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455: ; preds = %.lr.ph.i.i448.epil.preheader, %bb.ee, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa
  %.lcssa1029 = phi i32 [ %i.abz, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ], [ %i.acb, %bb.ee ], [ %.epil.init1099, %.lr.ph.i.i448.epil.preheader ]
  %.0.i.i19.i453.lcssa = phi i32 [ %.0.i.i19.i453.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455.unr-lcssa ], [ %i.acg, %bb.ee ], [ %i.aca, %.lr.ph.i.i448.epil.preheader ]
  %i.ach = add i32 %.0.i.i19.i453.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444
  %i.aci = phi i32 [ %..i.i.i446, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444 ], [ %.lcssa1029, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455 ]
  %.05.lcssa.i.i457 = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i444 ], [ %i.ach, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i455 ]
  %i.acj = add nsw i32 %.05.lcssa.i.i457, %i.aci  ; 2 uses
  %i.ack = icmp slt i32 %i.acj, 0
  %i.acl = tail call i32 @llvm.smin.i32(i32 %i.acj, i32 %i.qe)
  %..i.i22.i458 = select i1 %i.ack, i32 %i.qe, i32 %i.acl ; 2 uses
  store i32 %..i.i22.i458, ptr %i.qa, align 8, !tbaa !111
  br label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440
  %i.acm = phi i32 [ %..i.i22.i458, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i456 ], [ %i.aaw, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i440 ] ; 2 uses
  %i.acn = sub nsw i32 %i.acm, %i.aag             ; 2 uses
  %i.aco = or i32 %i.acn, %i.aag
  %or.cond.not.i.i459 = icmp slt i32 %i.aco, 0
  %i.acp = icmp sgt i32 %i.acm, %i.qe
  %or.cond.i460 = or i1 %i.acp, %or.cond.not.i.i459 ; 2 uses
  %i.acq = load ptr, ptr %4, align 8              ; 2 uses
  %i.acr = zext nneg i32 %i.aag to i64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.acr
  %i.act = zext nneg i32 %i.acn to i64
  %i.acu = shl nuw nsw i64 %i.act, 32
  %.sroa.0.0.i.i461 = select i1 %or.cond.i460, ptr null, ptr %i.acs
  %.sroa.5.0.i.i462 = select i1 %or.cond.i460, i64 0, i64 %i.acu
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %.sroa.0.0.i.i461, ptr %i.acv, align 8, !tbaa !75
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %.sroa.5.0.i.i462, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !34
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 17, i32 noundef 1, ptr noundef %i.b)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 262, i32 noundef 1, ptr noundef %i.a)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 292, i32 noundef 1, ptr noundef %i.c)
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 293, i32 noundef 1, ptr noundef %i.d)
  %.sroa.210.0.copyload = load i64, ptr %i.qa, align 8 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %5, align 8, !tbaa !75
  %.sroa.2.0.copyload = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !34
  %i.acw = tail call fastcc { ptr, i64 } @_ZN2cvL16stbtt__get_subrsENS_10stbtt__bufES0_(ptr %i.acq, i64 %.sroa.210.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.acx = extractvalue { ptr, i64 } %i.acw, 0
  %i.acy = extractvalue { ptr, i64 } %i.acw, 1
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.acx, ptr %i.acz, align 8, !tbaa !75
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.acy, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !34
  %i.ada = load i32, ptr %i.a, align 4, !tbaa !34
  %.not166 = icmp ne i32 %i.ada, 2
  %i.adb = load i32, ptr %i.b, align 4            ; 3 uses
  %i.adc = icmp eq i32 %i.adb, 0
  %or.cond = select i1 %.not166, i1 true, i1 %i.adc
  br i1 %or.cond, label %.critedge, label %bb.ef

bb.ef:                                            ; preds = %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit465
  %i.add = lshr i64 %.sroa.210.0.copyload, 32
  %i.ade = trunc nuw i64 %i.add to i32
  %i.adf = load i32, ptr %i.c, align 4, !tbaa !34 ; 3 uses
  %.not167 = icmp eq i32 %i.adf, 0
  br i1 %.not167, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.adg = load i32, ptr %i.d, align 4, !tbaa !34 ; 5 uses
  %.not168 = icmp eq i32 %i.adg, 0
  br i1 %.not168, label %.critedge, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %bb.eg
  %i.adh = icmp slt i32 %i.adf, 0
  %i.adi = tail call i32 @llvm.smin.i32(i32 %i.adf, i32 %i.qe)
  %..i = select i1 %i.adh, i32 %i.qe, i32 %i.adi
  store i32 %..i, ptr %i.qa, align 8, !tbaa !111
  %i.adj = call fastcc { ptr, i64 } @_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE(ptr noundef %4) ; 2 uses
  %i.adk = extractvalue { ptr, i64 } %i.adj, 0
  %i.adl = extractvalue { ptr, i64 } %i.adj, 1
  store ptr %i.adk, ptr %i.pu, align 8, !tbaa !75
  store i64 %i.adl, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !34
  %i.adm = load i32, ptr %i.qd, align 4, !tbaa !112 ; 3 uses
  %i.adn = sub i32 %i.adm, %i.adg                 ; 2 uses
  %i.ado = or i32 %i.adn, %i.adg
  %or.cond.not.i = icmp slt i32 %i.ado, 0
  %i.adp = icmp sgt i32 %i.adg, %i.adm
  %or.cond760 = or i1 %i.adp, %or.cond.not.i      ; 2 uses
  %i.adq = load ptr, ptr %4, align 8
  %i.adr = zext nneg i32 %i.adg to i64
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adr
  %i.adt = zext nneg i32 %i.adn to i64
  %i.adu = shl nuw nsw i64 %i.adt, 32
  %.sroa.0.0.i = select i1 %or.cond760, ptr null, ptr %i.ads
  %.sroa.5.0.i = select i1 %or.cond760, i64 0, i64 %i.adu
  store ptr %.sroa.0.0.i, ptr %i.pv, align 8, !tbaa !75
  store i64 %.sroa.5.0.i, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !34
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, %bb.ef
  %i.adv = phi i32 [ %i.adm, %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit ], [ %i.ade, %bb.ef ] ; 2 uses
  %i.adw = icmp slt i32 %i.adb, 0
  %i.adx = tail call i32 @llvm.smin.i32(i32 %i.adb, i32 %i.adv)
  %..i469 = select i1 %i.adw, i32 %i.adv, i32 %i.adx
  store i32 %..i469, ptr %i.qa, align 8, !tbaa !111
  %i.ady = call fastcc { ptr, i64 } @_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE(ptr noundef %4) ; 2 uses
  %i.adz = extractvalue { ptr, i64 } %i.ady, 0
  %i.aea = extractvalue { ptr, i64 } %i.ady, 1
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.adz, ptr %i.aeb, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.aea, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.cg
  br i1 %.not.i, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aec = add i32 %3, 12                         ; 3 uses
  %.not37.i471 = icmp ult i32 %i.aec, %2
  br i1 %.not37.i471, label %bb.ek, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

bb.ek:                                            ; preds = %bb.ej
  %i.aed = zext i32 %3 to i64
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 %i.aed ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %.val.i473 = load i8, ptr %i.aef, align 1, !tbaa !32
  %i.aeg = getelementptr i8, ptr %i.aee, i64 5
  %.val39.i474 = load i8, ptr %i.aeg, align 1, !tbaa !32
  %i.aeh = zext i8 %.val.i473 to i32
  %i.aei = shl nuw nsw i32 %i.aeh, 8
  %i.aej = zext i8 %.val39.i474 to i32
  %i.aek = or disjoint i32 %i.aei, %i.aej         ; 3 uses
  %i.ael = shl nuw nsw i32 %i.aek, 4
  %i.aem = add i32 %i.ael, %i.aec
  %.not38.i475 = icmp ult i32 %i.aem, %2
  %i.aen = icmp ne i32 %i.aek, 0
  %or.cond.i476 = and i1 %i.aen, %.not38.i475
  br i1 %or.cond.i476, label %.lr.ph.i477, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

.lr.ph.i477:                                      ; preds = %bb.ek
  %wide.trip.count.i478 = zext nneg i32 %i.aek to i64
  br label %bb.el

bb.el:                                            ; preds = %bb.eq, %.lr.ph.i477
  %indvars.iv.i479 = phi i64 [ 0, %.lr.ph.i477 ], [ %indvars.iv.next.i481, %bb.eq ] ; 2 uses
  %indvars.iv.tr.i480 = trunc nuw nsw i64 %indvars.iv.i479 to i32
  %i.aeo = shl nuw nsw i32 %indvars.iv.tr.i480, 4
  %i.aep = add i32 %i.aeo, %i.aec
  %i.aeq = zext i32 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 %i.aeq ; 5 uses
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !32
  %i.aet = icmp eq i8 %i.aes, 109
  br i1 %i.aet, label %bb.em, label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 1
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !32
  %i.aew = icmp eq i8 %i.aev, 97
  br i1 %i.aew, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aer, i64 2
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !32
  %i.aez = icmp eq i8 %i.aey, 120
  br i1 %i.aez, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aer, i64 3
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !32
  %i.afc = icmp eq i8 %i.afb, 112
  br i1 %i.afc, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.afe = load i32, ptr %i.afd, align 1          ; 2 uses
  %i.aff = tail call i32 @llvm.bswap.i32(i32 %i.afe) ; 2 uses
  %i.afg = icmp uge i32 %i.aff, %2
  %.not170 = icmp eq i32 %i.afe, 0
  %or.cond761 = or i1 %i.afg, %.not170
  br i1 %or.cond761, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.er

bb.eq:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %indvars.iv.next.i481 = add nuw nsw i64 %indvars.iv.i479, 1 ; 2 uses
  %exitcond.not.i482 = icmp eq i64 %indvars.iv.next.i481, %wide.trip.count.i478
  br i1 %exitcond.not.i482, label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread, label %bb.el, !llvm.loop !0

bb.er:                                            ; preds = %bb.ep
  %i.afh = zext i32 %i.aff to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 %i.afh ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  %.val188 = load i8, ptr %i.afj, align 1, !tbaa !32
  %i.afk = getelementptr i8, ptr %i.afi, i64 5
  %.val189 = load i8, ptr %i.afk, align 1, !tbaa !32
  %i.afl = zext i8 %.val188 to i32
  %i.afm = shl nuw nsw i32 %i.afl, 8
  %i.afn = zext i8 %.val189 to i32
  %i.afo = or disjoint i32 %i.afm, %i.afn
  br label %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread

_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread: ; preds = %bb.eq, %bb.ei, %bb.ej, %bb.ek, %bb.ep, %bb.er
  %.sink970 = phi i32 [ %i.afo, %bb.er ], [ 65535, %bb.ei ], [ 65535, %bb.ep ], [ 65535, %bb.ek ], [ 65535, %bb.ej ], [ 65535, %bb.eq ]
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sink970, ptr %i.afp, align 8, !tbaa !36
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %i.afq, align 8, !tbaa !235
  %i.afr = zext i32 %.3.i486492505520541565595622653680711 to i64
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 %i.afr ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 2
  %.val186 = load i8, ptr %i.aft, align 1, !tbaa !32
  %i.afu = getelementptr i8, ptr %i.afs, i64 3
  %.val187 = load i8, ptr %i.afu, align 1, !tbaa !32
  %i.afv = zext i8 %.val186 to i32
  %i.afw = shl nuw nsw i32 %i.afv, 8
  %i.afx = zext i8 %.val187 to i32
  %i.afy = or disjoint i32 %i.afw, %i.afx         ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.afz, align 4, !tbaa !31
  %.not801 = icmp eq i32 %i.afy, 0
  br i1 %.not801, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cvL17stbtt__find_tableEPhjjPKc.exit483.thread
  %i.aga = add i32 %.3.i486492505520541565595622653680711, 4
  %wide.trip.count = zext nneg i32 %i.afy to i64
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph, %bb.eu
  %i.agb = phi i32 [ 0, %.lr.ph ], [ %i.agv, %bb.eu ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.eu ] ; 2 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.agc = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.agd = add i32 %i.aga, %i.agc
  %i.age = zext i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 %i.age ; 5 uses
  %.val184 = load i8, ptr %i.agf, align 1, !tbaa !32
  %i.agg = getelementptr i8, ptr %i.agf, i64 1
  %.val185 = load i8, ptr %i.agg, align 1, !tbaa !32
  %i.agh = zext i8 %.val184 to i16
  %i.agi = shl nuw i16 %i.agh, 8
  %i.agj = zext i8 %.val185 to i16
  %i.agk = or disjoint i16 %i.agi, %i.agj
  switch i16 %i.agk, label %bb.eu [
    i16 3, label %bb.et
    i16 0, label %.sink.split
  ]

bb.et:                                            ; preds = %bb.es
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  %.val182 = load i8, ptr %i.agl, align 1, !tbaa !32
  %i.agm = getelementptr i8, ptr %i.agf, i64 3
  %.val183 = load i8, ptr %i.agm, align 1, !tbaa !32
  %i.agn = zext i8 %.val182 to i16
  %i.ago = shl nuw i16 %i.agn, 8
  %i.agp = zext i8 %.val183 to i16
  %i.agq = or disjoint i16 %i.ago, %i.agp
  switch i16 %i.agq, label %bb.eu [
    i16 1, label %.sink.split
    i16 10, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.es, %bb.et, %bb.et
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.ags = load i32, ptr %i.agr, align 1
  %i.agt = tail call i32 @llvm.bswap.i32(i32 %i.ags)
  %i.agu = add i32 %i.agt, %.3.i486492505520541565595622653680711 ; 2 uses
  store i32 %i.agu, ptr %i.afz, align 4, !tbaa !31
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split, %bb.et, %bb.es
  %i.agv = phi i32 [ %i.agb, %bb.et ], [ %i.agb, %bb.es ], [ %i.agu, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.es, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.eu
  %i.agw = icmp eq i32 %i.agv, 0
  br i1 %i.agw, label %._crit_edge.thread, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge
  %i.agx = load i32, ptr %i.ol, align 8, !tbaa !63
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds i8, ptr %1, i64 %i.agy ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 50
  %.val = load i8, ptr %i.aha, align 1, !tbaa !32
  %i.ahb = getelementptr i8, ptr %i.agz, i64 51
  %.val181 = load i8, ptr %i.ahb, align 1, !tbaa !32
  %i.ahc = zext i8 %.val to i32
end_hunk_0
begin_hunk_1_@_ZN2cvL20stbtt__cff_index_getENS_10stbtt__bufEi:bb.a
bb.c:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.g = add nsw i32 %.sroa.6.1, 1
  %i.h = sext i32 %.sroa.6.1 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !32
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %.0.i.i, %i.k
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1: ; preds = %bb.c, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %.sroa.6.1.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.6.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ] ; 3 uses
  %.0.i.i.1 = phi i32 [ %i.l, %bb.c ], [ %.0.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ]
  %.not.i = icmp slt i32 %.sroa.6.1.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit:  ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1
  %i.m = sext i32 %.sroa.6.1.1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32    ; 4 uses
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %.not.i9 = icmp eq i8 %i.o, 0
  br i1 %.not.i9, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.q = add nsw i32 %.sroa.6.1.1, 1
  %i.r = mul nsw i32 %2, %i.p
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.sroa.18.8.extract.trunc)
  %..i.i = select i1 %i.t, i32 %.sroa.18.8.extract.trunc, i32 %i.u ; 4 uses
  %i.v = add nsw i32 %i.p, -1                     ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.p, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1, %.lr.ph.i.preheader.new
  %.sroa.6.3 = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %.sroa.6.4.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1 ]
  %i.x = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.an, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1 ] ; 4 uses
  %.056.i12 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i15.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1 ]
  %i.y = shl i32 %.056.i12, 8                     ; 2 uses
  %.not.i.i13 = icmp slt i32 %i.x, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13, label %bb.d, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.x, 1                      ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.y, %i.ad
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14: ; preds = %bb.d, %.lr.ph.i
  %.sroa.6.4 = phi i32 [ %i.z, %bb.d ], [ %.sroa.6.3, %.lr.ph.i ]
  %i.af = phi i32 [ %i.z, %bb.d ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.0.i.i15 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.i ]
  %i.ag = shl i32 %.0.i.i15, 8                    ; 2 uses
  %.not.i.i13.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.1, label %bb.e, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1

bb.e:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1: ; preds = %bb.e, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14 ] ; 2 uses
  %.0.i.i15.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14 ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i19.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

.lr.ph.i19.preheader.unr-lcssa:                   ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i14.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i19.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i19.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i19.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ao = shl i32 %.056.i12.epil.init, 8          ; 2 uses
  %.not.i.i13.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.epil, label %bb.f, label %.lr.ph.i19.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i19.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i15.lcssa = phi i32 [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter59 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i19.epil.preheader, label %.lr.ph.i19.preheader.new

.lr.ph.i19.preheader.new:                         ; preds = %.lr.ph.i19.preheader
  %unroll_iter65 = and i32 %i.p, 254
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1, %.lr.ph.i19.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader.new ], [ %i.bm, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1 ] ; 4 uses
  %.056.i22 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %.0.i.i25.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1 ]
  %niter66 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %niter66.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1 ]
  %i.ax = shl i32 %.056.i22, 8                    ; 2 uses
  %.not.i.i23 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23, label %bb.g, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24

bb.g:                                             ; preds = %.lr.ph.i19
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24: ; preds = %bb.g, %.lr.ph.i19
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i19 ] ; 4 uses
  %.0.i.i25 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i19 ]
  %i.bf = shl i32 %.0.i.i25, 8                    ; 2 uses
  %.not.i.i23.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.1, label %bb.h, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1

bb.h:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !32
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1: ; preds = %bb.h, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24 ] ; 2 uses
  %.0.i.i25.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24 ] ; 3 uses
  %niter66.next.1 = add i32 %niter66, 2           ; 2 uses
  %niter66.ncmp.1 = icmp eq i32 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa, label %.lr.ph.i19, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i24.1
  %lcmp.mod62.not = icmp eq i32 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28, label %.lr.ph.i19.epil.preheader

.lr.ph.i19.epil.preheader:                        ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa, %.lr.ph.i19.preheader
  %.epil.init61 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader ], [ %i.bm, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.epil.init = phi i32 [ 0, %.lr.ph.i19.preheader ], [ %.0.i.i25.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bn = shl i32 %.056.i22.epil.init, 8          ; 2 uses
  %.not.i.i23.epil = icmp slt i32 %.epil.init61, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.epil, label %bb.i, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28

bb.i:                                             ; preds = %.lr.ph.i19.epil.preheader
  %i.bo = sext i32 %.epil.init61 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa, %bb.i, %.lr.ph.i19.epil.preheader, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %.0.i55 = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1 ], [ %i.p, %.lr.ph.i19.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa ]
  %.05.lcssa.i42 = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1 ], [ %.0.i.i15.lcssa, %.lr.ph.i19.epil.preheader ], [ %.0.i.i15.lcssa, %bb.i ], [ %.0.i.i15.lcssa, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27 = phi i32 [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ 0, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1 ], [ %.0.i.i25.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i19.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i55, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i42       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i27, %.05.lcssa.i42 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

bb.j:                                             ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext nneg i32 %i.bx to i64
  %i.cf = shl nuw nsw i64 %i.ce, 32
  br label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit28 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL21stbtt__csctx_rmove_toEPNS_12stbtt__csctxEff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !127 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !64 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !128 ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge.i, label %_ZN2cvL24stbtt__csctx_close_shapeEPNS_12stbtt__csctxE.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !121
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !122
  %i.o = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !123
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.o, ptr %i.m, align 4, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !124
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !124
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !125
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !123
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !126
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !123
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !126
  br label %_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i

_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !123
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !55
  br label %_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !55 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !43
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !127
  br label %_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i

_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i: ; preds = %bb.o, %_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i
  %.pre = phi float [ %i.c, %_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZN2cvL19stbtt__track_vertexEPNS_12stbtt__csctxEii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !128
  br label %_ZN2cvL24stbtt__csctx_close_shapeEPNS_12stbtt__csctxE.exit

_ZN2cvL24stbtt__csctx_close_shapeEPNS_12stbtt__csctxE.exit: ; preds = %bb.b, %_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZN2cvL14stbtt__csctx_vEPNS_12stbtt__csctxEhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !127
  store float %i.ax, ptr %i.a, align 8, !tbaa !259
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !128
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !260
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !121
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZN2cvL24stbtt__csctx_close_shapeEPNS_12stbtt__csctxE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !122
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !123
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !122
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !124
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !123
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !124
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !125
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !123
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cvL14stbtt__cff_intEPNS_10stbtt__bufE:bb.a

bb.b:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.l = add nsw i32 %i.j, -139
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.c:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %or.cond3 = icmp slt i8 %i.i, -5
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 %i.j, 8
  %i.n = add nsw i32 %i.m, -63232                 ; 2 uses
  %.not.i22 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i22, label %bb.e, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.b, 2
  store i32 %i.o, ptr %i.a, align 8, !tbaa !111
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.n, %i.s
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24: ; preds = %bb.d, %bb.e
  %.0.i23 = phi i32 [ %i.t, %bb.e ], [ %i.n, %bb.d ]
  %i.u = add nuw nsw i32 %.0.i23, 108
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.f:                                             ; preds = %bb.c
  %or.cond5 = icmp slt i8 %i.i, -1
  br i1 %or.cond5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw nsw i32 %i.j, 8                  ; 2 uses
  %.not.i25 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i25, label %bb.h, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit27

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.b, 2
  store i32 %i.w, ptr %i.a, align 8, !tbaa !111
  %i.x = sext i32 %i.f to i64
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.v, %i.aa
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit27

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit27: ; preds = %bb.g, %bb.h
  %.0.i26 = phi i32 [ %i.ab, %bb.h ], [ %i.v, %bb.g ]
  %i.ac = sub nsw i32 64148, %.0.i26
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.i:                                             ; preds = %bb.f
  switch i8 %i.i, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit [
    i8 28, label %bb.j
    i8 29, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i, label %bb.k, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !111
  %i.ae = sext i32 %i.f to i64
  %i.af = getelementptr inbounds i8, ptr %i.e, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !32
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i: ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ %i.ad, %bb.k ], [ %i.f, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.aj, %i.d
  br i1 %.not.i.i.1, label %bb.l, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.l:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !111
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds i8, ptr %i.e, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  %i.ao = zext i8 %i.an to i32
  %i.ap = or disjoint i32 %.0.i.i, %i.ao
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.m:                                             ; preds = %bb.i
  %.not.i.i31 = icmp slt i32 %i.f, %i.d
  br i1 %.not.i.i31, label %bb.n, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.b, 2                     ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !111
  %i.ar = sext i32 %i.f to i64
  %i.as = getelementptr inbounds i8, ptr %i.e, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32: ; preds = %bb.n, %bb.m
  %i.aw = phi i32 [ %i.aq, %bb.n ], [ %i.f, %bb.m ] ; 4 uses
  %.0.i.i33 = phi i32 [ %i.av, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i.i31.1 = icmp slt i32 %i.aw, %i.d
  br i1 %.not.i.i31.1, label %bb.o, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1

bb.o:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !111
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.e, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %.0.i.i33, %i.bb
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1: ; preds = %bb.o, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32
  %i.bd = phi i32 [ %i.ax, %bb.o ], [ %i.aw, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32 ] ; 4 uses
  %.0.i.i33.1 = phi i32 [ %i.bc, %bb.o ], [ %.0.i.i33, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32 ]
  %i.be = shl nuw nsw i32 %.0.i.i33.1, 8          ; 2 uses
  %.not.i.i31.2 = icmp slt i32 %i.bd, %i.d
  br i1 %.not.i.i31.2, label %bb.p, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2

bb.p:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1
  %i.bf = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.a, align 8, !tbaa !111
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !32
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.be, %i.bj
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2: ; preds = %bb.p, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1
  %i.bl = phi i32 [ %i.bf, %bb.p ], [ %i.bd, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1 ] ; 3 uses
  %.0.i.i33.2 = phi i32 [ %i.bk, %bb.p ], [ %i.be, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.1 ]
  %i.bm = shl nuw i32 %.0.i.i33.2, 8              ; 2 uses
  %.not.i.i31.3 = icmp slt i32 %i.bl, %i.d
  br i1 %.not.i.i31.3, label %bb.q, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

bb.q:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2
  %i.bn = add nsw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !111
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.e, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bm, %i.br
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit:  ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2, %bb.q, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i, %bb.l, %bb.a, %bb.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit27, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.u, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24 ], [ %i.ac, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit27 ], [ %.0.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ 0, %bb.a ], [ 0, %bb.i ], [ %i.ap, %bb.l ], [ %i.bs, %bb.q ], [ %i.bm, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.2 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZN2cvL16stbtt__get_subrsENS_10stbtt__bufES0_(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.cv::stbtt__buf", align 8   ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %5 = alloca %"struct.cv::stbtt__buf", align 8   ; 5 uses
  %.sroa.15.8.extract.shift = lshr i64 %1, 32
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.8.extract.shift to i32 ; 15 uses
  store ptr %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %4, i32 noundef 18, i32 noundef 2, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 6 uses
  %i.f = icmp ne i32 %i.e, 0
  %i.g = load i32, ptr %i.b, align 8              ; 4 uses
  %i.h = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i, label %bb.c, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.e, %.sroa.15.8.extract.trunc
  %i.k = sub nsw i32 %.sroa.15.8.extract.trunc, %i.e
  %i.l = icmp sgt i32 %i.g, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %i.e to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = zext nneg i32 %i.g to i64
  %i.p = shl nuw nsw i64 %i.o, 32
  br label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  store ptr %.sroa.0.0.i, ptr %5, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34
  call fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr noundef %5, i32 noundef 19, i32 noundef 1, ptr noundef %i.a)
  %i.q = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit
  %i.r = add i32 %i.q, %i.e                       ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.sroa.15.8.extract.trunc)
  %..i = select i1 %i.s, i32 %.sroa.15.8.extract.trunc, i32 %i.t ; 7 uses
  %.not.i.i.i = icmp slt i32 %..i, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.i, label %bb.f, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %..i, 1
  %i.v = sext i32 %..i to i64
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !32
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.u, %bb.f ], [ %..i, %bb.e ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.z, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.aa, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i.1.i, label %bb.g, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i

bb.g:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %.0.i.i.i, %i.af
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i: ; preds = %bb.g, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i
  %i.ah = phi i32 [ %i.ab, %bb.g ], [ %i.aa, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.ag, %bb.g ], [ %.0.i.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i, label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i
  %.not.i.i = icmp slt i32 %i.ah, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i, label %bb.i, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %i.am = zext i8 %i.al to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i: ; preds = %bb.i, %bb.h
  %i.an = phi i32 [ %i.ai, %bb.i ], [ %i.ah, %bb.h ]
  %.0.i.i = phi i32 [ %i.am, %bb.i ], [ 0, %bb.h ] ; 6 uses
  %i.ao = mul nuw nsw i32 %.0.i.i, %.0.i.i.1.i
  %i.ap = add nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.sroa.15.8.extract.trunc)
  %..i.i.i = select i1 %i.aq, i32 %.sroa.15.8.extract.trunc, i32 %i.ar ; 3 uses
  %.not.i13.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i13.i, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %xtraiter = and i32 %.0.i.i, 1
  %i.as = icmp eq i32 %.0.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %.0.i.i, 254
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1, %.lr.ph.i.i.preheader.new
  %i.at = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.bj, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ] ; 4 uses
  %.056.i16.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.0.i.i19.i.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1 ]
  %i.au = shl i32 %.056.i16.i, 8                  ; 2 uses
  %.not.i.i17.i = icmp slt i32 %i.at, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i, label %bb.j, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.av = add nsw i32 %i.at, 1
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.au, %i.az
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i: ; preds = %bb.j, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.av, %bb.j ], [ %i.at, %.lr.ph.i.i ] ; 4 uses
  %.0.i.i19.i = phi i32 [ %i.ba, %bb.j ], [ %i.au, %.lr.ph.i.i ]
  %i.bc = shl i32 %.0.i.i19.i, 8                  ; 2 uses
  %.not.i.i17.i.1 = icmp slt i32 %i.bb, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i.1, label %bb.k, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1

bb.k:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i
  %i.bd = add nsw i32 %i.bb, 1
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bc, %i.bh
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1: ; preds = %bb.k, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i
  %i.bj = phi i32 [ %i.bd, %bb.k ], [ %i.bb, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %.0.i.i19.i.1 = phi i32 [ %i.bi, %bb.k ], [ %i.bc, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %..i.i.i, %.lr.ph.i.i.preheader ], [ %i.bj, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.0.i.i19.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.bk = shl i32 %.056.i16.i.epil.init, 8        ; 2 uses
  %.not.i.i17.i.epil = icmp slt i32 %.epil.init, %.sroa.15.8.extract.trunc
  br i1 %.not.i.i17.i.epil, label %bb.l, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.bl = add nsw i32 %.epil.init, 1
  %i.bm = sext i32 %.epil.init to i64
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bk, %i.bp
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i: ; preds = %.lr.ph.i.i.epil.preheader, %bb.l, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bj, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ], [ %i.bl, %bb.l ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0.i.i19.i.lcssa = phi i32 [ %.0.i.i19.i.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i.unr-lcssa ], [ %i.bq, %bb.l ], [ %i.bk, %.lr.ph.i.i.epil.preheader ]
  %i.br = add i32 %.0.i.i19.i.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.bs = phi i32 [ %..i.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %.lcssa, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %i.br, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.i ]
  %i.bt = add nsw i32 %.05.lcssa.i.i, %i.bs       ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %.sroa.15.8.extract.trunc)
  %..i.i22.i = select i1 %i.bu, i32 %.sroa.15.8.extract.trunc, i32 %i.bv
  br label %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit

_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i
  %i.bw = phi i32 [ %..i.i22.i, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.i ], [ %i.ah, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1.i ] ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %..i                 ; 2 uses
  %i.by = or i32 %i.bx, %..i
  %or.cond.not.i.i = icmp slt i32 %i.by, 0
  %i.bz = icmp sgt i32 %i.bw, %.sroa.15.8.extract.trunc
  %or.cond.i8 = or i1 %i.bz, %or.cond.not.i.i     ; 2 uses
  %i.ca = zext nneg i32 %..i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.cc = zext nneg i32 %i.bx to i64
  %i.cd = shl nuw nsw i64 %i.cc, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i8, ptr null, ptr %i.cb
  %.sroa.5.0.i.i = select i1 %or.cond.i8, i64 0, i64 %i.cd
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.5.0.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, %bb.a, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i.i, %_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE.exit ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL20stbtt__dict_get_intsEPNS_10stbtt__bufEiiPj(ptr nofree noundef nonnull captures(none) initializes((8, 12)) %0, i32 noundef range(i32 17, 294) %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"struct.cv::stbtt__buf", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112  ; 17 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %i.b, i32 0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !111
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.preheader.i, label %._crit_edge

.preheader.i:                                     ; preds = %bb.a, %.thread38.i
  %.promoted5759.i = phi i32 [ %.promoted55.i, %.thread38.i ], [ %i.c, %bb.a ] ; 7 uses
  %.not.i52.i = icmp slt i32 %.promoted5759.i, %i.b
  br i1 %.not.i52.i, label %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.lr.ph.i, label %.thread38.i

_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.lr.ph.i: ; preds = %.preheader.i
  %i.f = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  br label %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i

_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i: ; preds = %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i, %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.lr.ph.i
  %spec.select454853.i = phi i32 [ %.promoted5759.i, %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.lr.ph.i ], [ %spec.select4549.i, %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i ] ; 11 uses
  %i.g = sext i32 %spec.select454853.i to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32    ; 2 uses
  %i.j = icmp ugt i8 %i.i, 27
  br i1 %i.j, label %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i.i, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i.i: ; preds = %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i
  %i.k = icmp eq i8 %i.i, 30
  %i.l = add nsw i32 %spec.select454853.i, 1      ; 14 uses
  br i1 %i.k, label %bb.b, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i34.i

bb.b:                                             ; preds = %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i.i
  %i.m = icmp slt i32 %spec.select454853.i, -1
  %..i.i.i.i = select i1 %i.m, i32 %i.b, i32 %i.l ; 4 uses
  store i32 %..i.i.i.i, ptr %i.d, align 8, !tbaa !111
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %..i.i.i.i, i32 %i.b)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i52.not = icmp slt i32 %..i.i.i.i, %i.b
  br i1 %exitcond.not.i.i52.not, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.lr.ph, label %._crit_edge

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.lr.ph: ; preds = %bb.b
  %i.n = sext i32 %..i.i.i.i to i64
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i

bb.c:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i, !llvm.loop !263

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.lr.ph, %bb.c
  %indvars.iv.i.i53 = phi i64 [ %i.n, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.lr.ph ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i53, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %i.d, align 8, !tbaa !111
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.i.i53
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 15
  %i.s = icmp eq i32 %i.r, 15
  %.mask.i.i = and i32 %i.q, 240
  %i.t = icmp eq i32 %.mask.i.i, 240
  %or.cond.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i, label %bb.c, !llvm.loop !263

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i34.i: ; preds = %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i.i
  store i32 %i.l, ptr %i.d, align 8, !tbaa !111
  %i.u = load i8, ptr %i.h, align 1, !tbaa !32    ; 4 uses
  %i.v = add i8 %i.u, -32
  %or.cond.i35.i = icmp ult i8 %i.v, -41
  br i1 %or.cond.i35.i, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i34.i
  %or.cond3.i.i = icmp slt i8 %i.u, -5
  br i1 %or.cond3.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i22.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i22.i.i, label %bb.f, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %spec.select454853.i, 2
  br label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i

bb.g:                                             ; preds = %bb.d
  %or.cond5.i.i = icmp slt i8 %i.u, -1
  br i1 %or.cond5.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i25.i.i = icmp slt i32 %i.l, %i.b
  br i1 %.not.i25.i.i, label %bb.i, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %spec.select454853.i, 2
  br label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i

bb.j:                                             ; preds = %bb.g
  switch i8 %i.u, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i [
    i8 28, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.i
    i8 29, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.i.i
  ]

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.i: ; preds = %bb.j
  %.not.i.i.i.i = icmp slt i32 %i.l, %i.b         ; 2 uses
  %i.y = add nsw i32 %spec.select454853.i, 2
  %i.z = select i1 %.not.i.i.i.i, i32 %i.y, i32 %i.l ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %i.z, %i.b       ; 2 uses
  %i.aa = or i1 %.not.i.i.i.i, %.not.i.i.1.i.i
  br i1 %i.aa, label %bb.k, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.i.i: ; preds = %bb.j
  %.not.i.i31.i.i = icmp slt i32 %i.l, %i.b       ; 2 uses
  %i.ab = add nsw i32 %spec.select454853.i, 2
  %i.ac = select i1 %.not.i.i31.i.i, i32 %i.ab, i32 %i.l ; 2 uses
  %.not.i.i31.1.i.i = icmp slt i32 %i.ac, %i.b    ; 2 uses
  %i.ad = zext i1 %.not.i.i31.1.i.i to i32
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  %i.af = or i1 %.not.i.i31.i.i, %.not.i.i31.1.i.i
  %.not.i.i31.2.i.i = icmp slt i32 %i.ae, %i.b    ; 2 uses
  %i.ag = zext i1 %.not.i.i31.2.i.i to i32
  %spec.select.i = add nsw i32 %i.ae, %i.ag       ; 2 uses
  %i.ah = or i1 %i.af, %.not.i.i31.2.i.i
  %.not.i.i31.3.i.i = icmp slt i32 %spec.select.i, %i.b ; 2 uses
  %i.ai = or i1 %i.ah, %.not.i.i31.3.i.i
  br i1 %i.ai, label %bb.l, label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i

bb.k:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.i
  %i.aj = zext i1 %.not.i.i.1.i.i to i32
  %simplifycfg.merge.i = add nsw i32 %i.z, %i.aj
  br label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i

bb.l:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.i.i
  %i.ak = zext i1 %.not.i.i31.3.i.i to i32
  %spec.select45.i = add nsw i32 %spec.select.i, %i.ak
  br label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i

_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.f
  %spec.select45.sink.i = phi i32 [ %spec.select45.i, %bb.l ], [ %simplifycfg.merge.i, %bb.k ], [ %i.x, %bb.i ], [ %i.w, %bb.f ] ; 2 uses
  store i32 %spec.select45.sink.i, ptr %i.d, align 8, !tbaa !111
  br label %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i

_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i, %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.i, %bb.j, %bb.h, %bb.e, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i34.i
  %spec.select4549.i = phi i32 [ %i.l, %bb.j ], [ %i.l, %bb.e ], [ %i.l, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i32.i.i ], [ %spec.select45.sink.i, %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.sink.split.i ], [ %i.l, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i.i ], [ %i.l, %bb.h ], [ %i.l, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i34.i ], [ %indvars.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.i ] ; 3 uses
  %.not.i.i = icmp slt i32 %spec.select4549.i, %i.b
  br i1 %.not.i.i, label %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i, label %.thread38.i, !llvm.loop !264

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i: ; preds = %_ZN2cvL16stbtt__buf_peek8EPNS_10stbtt__bufE.exit.i
  %i.al = add nsw i32 %spec.select454853.i, 1     ; 5 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !111
  %i.am = load i8, ptr %i.h, align 1, !tbaa !32   ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 12
  br i1 %i.ao, label %bb.m, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i

bb.m:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %.not.i22.i = icmp slt i32 %i.al, %i.b
  br i1 %.not.i22.i, label %bb.n, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %spec.select454853.i, 2     ; 2 uses
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !111
  %i.aq = sext i32 %i.al to i64
  %i.ar = getelementptr inbounds i8, ptr %i.f, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.at, 256
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i: ; preds = %bb.n, %bb.m, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %.promoted58.i = phi i32 [ %i.al, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %i.ap, %bb.n ], [ %i.al, %bb.m ]
  %.017.i = phi i32 [ %i.an, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ], [ %i.au, %bb.n ], [ 256, %bb.m ]
  %i.av = icmp eq i32 %.017.i, %1
  br i1 %i.av, label %bb.o, label %.thread38.i

bb.o:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i
  %i.aw = sub nsw i32 %spec.select454853.i, %.promoted5759.i ; 2 uses
  %i.ax = or i32 %i.aw, %.promoted5759.i
  %or.cond.not.i.i = icmp slt i32 %i.ax, 0
  br i1 %or.cond.not.i.i, label %._crit_edge, label %_ZN2cvL15stbtt__dict_getEPNS_10stbtt__bufEi.exit

.thread38.i:                                      ; preds = %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i, %.preheader.i
  %.promoted55.i = phi i32 [ %.promoted58.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit24.i ], [ %.promoted5759.i, %.preheader.i ], [ %spec.select4549.i, %_ZN2cvL23stbtt__cff_skip_operandEPNS_10stbtt__bufE.exit.i ] ; 2 uses
  %i.ay = icmp slt i32 %.promoted55.i, %i.b
  br i1 %i.ay, label %.preheader.i, label %._crit_edge

_ZN2cvL15stbtt__dict_getEPNS_10stbtt__bufEi.exit: ; preds = %bb.o
  %i.az = zext nneg i32 %.promoted5759.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.az
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  store ptr %i.ba, ptr %4, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.not = icmp eq i32 %spec.select454853.i, %.promoted5759.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cvL15stbtt__dict_getEPNS_10stbtt__bufEi.exit
  %i.bf = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bg = call fastcc noundef i32 @_ZN2cvL14stbtt__cff_intEPNS_10stbtt__bufE(ptr noundef %4)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bf
  %i.bj = load i32, ptr %i.bd, align 8
  %i.bk = load i32, ptr %i.be, align 4
  %i.bl = icmp slt i32 %i.bj, %i.bk
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !265

._crit_edge:                                      ; preds = %.thread38.i, %bb.b, %bb.c, %.lr.ph, %bb.a, %bb.o, %_ZN2cvL15stbtt__dict_getEPNS_10stbtt__bufEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_ZN2cvL20stbtt__cff_get_indexEPNS_10stbtt__bufE(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !112  ; 11 uses
  %.not.i.i = icmp slt i32 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !113
  %i.f = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !111
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i: ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %i.l, %i.d
  br i1 %.not.i.i.1, label %bb.c, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1

bb.c:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !113
  %i.n = add nsw i32 %i.l, 1                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !111
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %.0.i.i, %i.r
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1: ; preds = %bb.c, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i
  %i.t = phi i32 [ %i.n, %bb.c ], [ %i.l, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ] ; 5 uses
  %.0.i.i.1 = phi i32 [ %i.s, %bb.c ], [ %.0.i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i.i.1, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1
  %.not.i = icmp slt i32 %i.t, %i.d
  br i1 %.not.i, label %bb.e, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !113
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !111
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %i.z = zext i8 %i.y to i32
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit:  ; preds = %bb.d, %bb.e
  %i.aa = phi i32 [ %i.v, %bb.e ], [ %i.t, %bb.d ]
  %.0.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 6 uses
  %i.ab = mul nuw nsw i32 %.0.i, %.0.i.i.1
  %i.ac = add nsw i32 %i.aa, %i.ab                ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.d)
  %..i.i = select i1 %i.ad, i32 %i.d, i32 %i.ae   ; 3 uses
  %.not.i13 = icmp eq i32 %.0.i, 0
  br i1 %.not.i13, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %xtraiter = and i32 %.0.i, 1
  %i.af = icmp eq i32 %.0.i, 1
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.0.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1, %.lr.ph.i.preheader.new
  %i.ag = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.ay, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ] ; 4 uses
  %.056.i16 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i19.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1 ]
  %i.ah = shl i32 %.056.i16, 8                    ; 2 uses
  %.not.i.i17 = icmp slt i32 %i.ag, %i.d
  br i1 %.not.i.i17, label %bb.f, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !113
  %i.aj = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !111
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ah, %i.an
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18: ; preds = %bb.f, %.lr.ph.i
  %i.ap = phi i32 [ %i.aj, %bb.f ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.0.i.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ah, %.lr.ph.i ]
  %i.aq = shl i32 %.0.i.i19, 8                    ; 2 uses
  %.not.i.i17.1 = icmp slt i32 %i.ap, %i.d
  br i1 %.not.i.i17.1, label %bb.g, label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1

bb.g:                                             ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !113
  %i.as = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !111
  %i.at = sext i32 %i.ap to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !32
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.aq, %i.aw
  br label %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1

_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1: ; preds = %bb.g, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18
  %i.ay = phi i32 [ %i.as, %bb.g ], [ %i.ap, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18 ] ; 3 uses
  %.0.i.i19.1 = phi i32 [ %i.ax, %bb.g ], [ %i.aq, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa: ; preds = %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i18.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.ay, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ] ; 4 uses
  %.056.i16.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i19.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %.0.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.az = shl i32 %.056.i16.epil.init, 8          ; 2 uses
  %.not.i.i17.epil = icmp slt i32 %.epil.init, %i.d
  br i1 %.not.i.i17.epil, label %bb.h, label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ba = load ptr, ptr %0, align 8, !tbaa !113
  %i.bb = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !111
  %i.bc = sext i32 %.epil.init to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.az, %i.bf
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit: ; preds = %.lr.ph.i.epil.preheader, %bb.h, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ], [ %i.bb, %bb.h ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %.0.i.i19.lcssa = phi i32 [ %.0.i.i19.1, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit.unr-lcssa ], [ %i.bg, %bb.h ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %i.bh = add i32 %.0.i.i19.lcssa, -1
  br label %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21

_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21: ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit
  %i.bi = phi i32 [ %..i.i, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ %.lcssa, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit ]
  %.05.lcssa.i = phi i32 [ -1, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit ], [ %i.bh, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21.loopexit ]
  %i.bj = add nsw i32 %.05.lcssa.i, %i.bi         ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.d)
  %..i.i22 = select i1 %i.bk, i32 %i.d, i32 %i.bl ; 2 uses
  store i32 %..i.i22, ptr %i.a, align 8, !tbaa !111
  br label %bb.i

bb.i:                                             ; preds = %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1
  %i.bm = phi i32 [ %..i.i22, %_ZN2cvL14stbtt__buf_getEPNS_10stbtt__bufEi.exit21 ], [ %i.t, %_ZN2cvL15stbtt__buf_get8EPNS_10stbtt__bufE.exit.i.1 ] ; 2 uses
  %i.bn = sub nsw i32 %i.bm, %i.b                 ; 2 uses
  %i.bo = or i32 %i.bn, %i.b
  %or.cond.not.i = icmp slt i32 %i.bo, 0
  %i.bp = icmp sgt i32 %i.bm, %i.d
  %or.cond = or i1 %or.cond.not.i, %i.bp
  br i1 %or.cond, label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8, !tbaa !113
  %i.br = zext nneg i32 %i.b to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = shl nuw nsw i64 %i.bt, 32
  br label %_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit

_ZN2cvL16stbtt__buf_rangeEPKNS_10stbtt__bufEii.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i = phi ptr [ null, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %bb.i ], [ %i.bu, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL23stbtt__VaryGlyphShapeTTEPKNS_14stbtt_fontinfoEiiiiPNS_12stbtt_vertexEiPiS5_S5_S5_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9, ptr nofree noundef captures(address_is_null) %10) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %.not = icmp slt i32 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.bp

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load i32, ptr %i.k, align 8, !tbaa !129
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 9 uses
  %i.p = sext i32 %i.g to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val497 = load i8, ptr %i.t, align 1, !tbaa !32
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val498 = load i8, ptr %i.u, align 1, !tbaa !32
  %i.v = zext i8 %.val497 to i32
  %i.w = zext i8 %.val498 to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val495 = load i8, ptr %i.aa, align 1, !tbaa !32
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val496 = load i8, ptr %i.ab, align 1, !tbaa !32
  %i.ac = zext i8 %.val495 to i32
  %i.ad = zext i8 %.val496 to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0413 = phi i32 [ %i.z, %bb.e ], [ %i.al, %bb.f ] ; 2 uses
  %.0412 = phi i32 [ %i.ag, %bb.e ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !130 ; 2 uses
  %i.ar = add nsw i32 %i.aq, %.0413               ; 3 uses
  %.not455 = icmp sgt i32 %.0412, %.0413
  br i1 %.not455, label %bb.h, label %bb.bp

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %i.aq, %.0412
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !61 ; 4 uses
  %i.av = icmp ugt i32 %i.as, %i.au
  br i1 %i.av, label %bb.bp, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 %i.aw ; 4 uses
  %.val493 = load i8, ptr %i.ax, align 1, !tbaa !32 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %.val494 = load i8, ptr %i.ay, align 1, !tbaa !32 ; 2 uses
  %i.az = zext i8 %.val493 to i16
  %i.ba = shl nuw i16 %i.az, 8                    ; 2 uses
  %i.bb = zext i8 %.val494 to i16
  %i.bc = or disjoint i16 %i.ba, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %.val491 = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.be = getelementptr i8, ptr %i.ax, i64 3
  %.val492 = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bf = zext i8 %.val491 to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = zext i8 %.val492 to i32
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = add nsw i32 %i.bi, %i.ar                ; 3 uses
  %.not456 = icmp ult i32 %i.bj, %i.au
  br i1 %.not456, label %bb.j, label %bb.bp

bb.j:                                             ; preds = %bb.i
  %i.bk = add nsw i32 %i.ar, 4
  %i.bl = icmp eq i16 %i.bc, 0
  br i1 %i.bl, label %bb.bp, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !114 ; 4 uses
  %.not457 = icmp sgt i16 %i.ba, -1
  %i.bo = and i16 %i.bc, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.bp = icmp ne i32 %2, 0                       ; 3 uses
  %i.bq = select i1 %i.bp, i32 %3, i32 %6         ; 9 uses
  %i.br = add nsw i32 %i.bq, 4                    ; 4 uses
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.bs, 20
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #22 ; 15 uses
  %.not458 = icmp eq ptr %i.bu, null
  br i1 %.not458, label %.thread528, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = shl i32 %i.br, 1                        ; 4 uses
  %i.bw = sext i32 %i.bv to i64                   ; 4 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bx, i64 %i.bs ; 3 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bs ; 15 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.bw ; 5 uses
  %i.cb = select i1 %i.bp, i16 0, i16 -32768      ; 6 uses
  %i.cc = icmp sgt i32 %i.bq, -4                  ; 2 uses
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %i.cd = zext nneg i32 %smax to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bu, i8 0, i64 %i.ce, i1 false), !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.l
  br i1 %.not457, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = call fastcc noundef i32 @_ZN2cvL23stbtt__ReadPointNumbersEPKNS_14stbtt_fontinfoEiPiPt(ptr noundef nonnull %0, i32 noundef %i.bj, ptr noundef %i.a, ptr noundef %i.by) ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread532, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.0389 = phi i32 [ %i.cf, %bb.m ], [ %i.bj, %._crit_edge ]
  %.not601 = icmp eq i16 %i.bo, 0
  br i1 %.not601, label %.preheader, label %.lr.ph596

.lr.ph596:                                        ; preds = %bb.n
  %i.ch = shl i32 %i.bn, 1                        ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ck = sext i32 %i.ch to i64
  %i.cl = shl nsw i32 %i.bn, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.cn = icmp sgt i32 %i.bn, 0
  %wide.trip.count93.i = zext nneg i32 %i.bn to i64 ; 2 uses
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = shl i32 %i.bq, 1                        ; 3 uses
  %i.cq = icmp sgt i32 %i.bq, 0
  %i.cr = icmp slt i32 %3, 1
  %i.cs = sext i32 %4 to i64
  %i.ct = getelementptr inbounds i8, ptr %i.o, i64 %i.cs
  %i.cu = mul nsw i64 %i.bw, 6
  %i.cv = sext i32 %i.bq to i64                   ; 3 uses
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = getelementptr i8, ptr %i.bu, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw
  %scevgep = getelementptr i8, ptr %i.cy, i64 16
  %smax621 = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 1)
  %i.cz = add nsw i64 %i.cv, %i.bw
  %i.da = shl nsw i64 %i.cz, 2
  %smax661 = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %i.db = zext i8 %.val493 to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val494 to i32
  %.masked = and i32 %i.dc, 3840
  %i.de = or disjoint i32 %.masked, %i.dd
  %wide.trip.count622 = zext nneg i32 %smax621 to i64 ; 6 uses
end_hunk_2
