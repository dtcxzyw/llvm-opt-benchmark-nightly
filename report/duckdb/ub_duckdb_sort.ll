inline.NumInlined: 29521
inline.NumDeleted: 7045
begin_hunk_0_@_ZN6duckdb25SortedRunMergerLocalState35TemplatedComputePartitionBoundariesINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERKNS_12optional_idxERNS_6vectorIT_Lb0ESaISC_EEE:bb.a
_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i96, %.noexc102
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc102 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i96 ]
  %.not.i35.i = icmp eq ptr %.sroa.0141.0220, null
  br i1 %.not.i35.i, label %.noexc83, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0141.0220) #30
  br label %.noexc83

.noexc83:                                         ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bc
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.noexc83
  %.sroa.19.2 = phi ptr [ %i.bn, %.noexc83 ], [ %.sroa.19.0218, %bb.f ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc83 ], [ %.sroa.12.0219, %bb.f ]
  %.sroa.0141.5 = phi ptr [ %i.be, %.noexc83 ], [ %.sroa.0141.0220, %bb.f ] ; 4 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !1459 ; 4 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %storemerge222 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1512
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1521
  %.not68 = icmp eq i64 %i.bq, %i.bs
  br i1 %.not68, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i84 = icmp eq ptr %.sroa.16.0216, %.sroa.27.0215
  br i1 %.not.i84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %storemerge222, ptr %.sroa.16.0216, align 8, !tbaa !168
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.16.0216, i64 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bu = ptrtoint ptr %.sroa.16.0216 to i64
  %i.bv = ptrtoint ptr %.sroa.0125.0217 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #31
          to label %.noexc85 unwind label %.loopexit.split-lp189

.noexc85:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #28
          to label %.noexc86 unwind label %.loopexit188 ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store i64 %storemerge222, ptr %i.cf, align 8, !tbaa !168
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %.sroa.0125.0217, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0125.0217, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0217) #30
  %.pre.pre = load ptr, ptr %i.an, align 8, !tbaa !1459
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.p ], [ %i.bo, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  br label %bb.q

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit188:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp189:                            ; preds = %bb.n
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.q:                                             ; preds = %bb.j, %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cj = phi ptr [ %i.bo, %bb.j ], [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bo, %bb.l ]
  %.sroa.27.1 = phi ptr [ %.sroa.27.0215, %bb.j ], [ %i.ci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.27.0215, %bb.l ]
  %.sroa.16.1 = phi ptr [ %.sroa.16.0216, %bb.j ], [ %i.ch, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bt, %bb.l ] ; 2 uses
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.0217, %bb.j ], [ %i.ce, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0125.0217, %bb.l ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %storemerge222
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1512
  %i.cm = sub i64 %.0156221, %i.cl                ; 2 uses
  %i.cn = add nuw i64 %storemerge222, 1           ; 2 uses
  %i.co = load i64, ptr %i.ae, align 8, !tbaa !1458
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.e, label %.preheader187, !llvm.loop !11183

bb.r:                                             ; preds = %.lr.ph244, %bb.ag
  %.1243 = phi i64 [ %.0156.lcssa, %.lr.ph244 ], [ %i.gr, %bb.ag ] ; 2 uses
  %.sroa.16.2242 = phi ptr [ %.sroa.16.0.lcssa, %.lr.ph244 ], [ %.sroa.16.3, %bb.ag ] ; 6 uses
  %i.cq = ptrtoint ptr %.sroa.16.2242 to i64      ; 3 uses
  %i.cr = sub i64 %i.cq, %i.ao                    ; 4 uses
  %i.cs = ashr exact i64 %i.cr, 3                 ; 4 uses
  %i.ct = load i64, ptr %.sroa.0125.0.lcssa, align 8, !tbaa !168 ; 4 uses
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !1459 ; 4 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %.val78 = load i64, ptr %i.cv, align 8, !tbaa !1512 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val79 = load i64, ptr %i.cw, align 8, !tbaa !1521 ; 2 uses
  %i.cx = sub i64 %.val79, %.val78
  %i.cy = add i64 %.1243, -1
  %i.cz = add i64 %i.cy, %i.cs
  %i.da = udiv i64 %i.cz, %i.cs                   ; 2 uses
  %i.db = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx) ; 3 uses
  %i.dc = icmp ugt i64 %i.cs, 1
  br i1 %i.dc, label %.lr.ph230.preheader, label %._crit_edge

.lr.ph230.preheader:                              ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0141.0.lcssa, i64 %i.ct
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11180 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1241
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1227
  %i.dj = zext i64 %i.di to i128
  %i.dk = add i64 %.val78, -1
  %i.dl = add i64 %i.dk, %i.db                    ; 2 uses
  %i.dm = zext i64 %i.dl to i128
  %i.dn = mul nuw i128 %i.dj, %i.dm
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64             ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1046
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1229
  %i.du = mul i64 %i.dt, %i.dp
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dv
  %.val2.val.i.pre = load i64, ptr %i.dw, align 8, !tbaa !168
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %.val2.val.i = phi i64 [ %5, %.lr.ph230 ], [ %.val2.val.i.pre, %.lr.ph230.preheader ] ; 2 uses
  %.055229 = phi i64 [ %.156, %.lr.ph230 ], [ %i.db, %.lr.ph230.preheader ]
  %.057228 = phi i64 [ %i.ey, %.lr.ph230 ], [ 1, %.lr.ph230.preheader ] ; 2 uses
  %.0157226 = phi i64 [ %.1158, %.lr.ph230 ], [ %i.ct, %.lr.ph230.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0125.0.lcssa, i64 %.057228
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !168 ; 3 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.dy ; 2 uses
  %.val74 = load i64, ptr %i.dz, align 8, !tbaa !1512 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.val75 = load i64, ptr %i.ea, align 8, !tbaa !1521
  %i.eb = sub i64 %.val75, %.val74
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %i.eb) ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0141.0.lcssa, i64 %i.dy
  %i.ee = add i64 %.val74, -1
  %i.ef = add i64 %i.ee, %i.ec                    ; 2 uses
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !11180 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = zext i64 %i.ef to i128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1227
  %i.el = zext i64 %i.ek to i128
  %i.em = mul nuw i128 %i.ei, %i.el
  %i.en = lshr i128 %i.em, 64
  %i.eo = trunc nuw i128 %i.en to i64             ; 2 uses
  %i.ep = load i64, ptr %i.eh, align 8, !tbaa !1229
  %i.eq = mul i64 %i.ep, %i.eo
  %i.er = sub i64 %i.ef, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1241
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eo
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1046
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.er
  %.val.val.i = load i64, ptr %i.ew, align 8, !tbaa !168 ; 2 uses
  %i.ex = icmp ult i64 %.val.val.i, %.val2.val.i  ; 2 uses
  %.1158 = select i1 %i.ex, i64 %i.dy, i64 %.0157226 ; 3 uses
  %.156 = select i1 %i.ex, i64 %i.ec, i64 %.055229 ; 2 uses
  %i.ey = add nuw i64 %.057228, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.cs
  %5 = call i64 @llvm.umin.i64(i64 %.val.val.i, i64 %.val2.val.i)
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph230, !llvm.loop !11184

._crit_edge.loopexit:                             ; preds = %.lr.ph230
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.1158 ; 2 uses
  %.pre272 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1512
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre274 = load i64, ptr %.phi.trans.insert273, align 8, !tbaa !1521
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %i.ez = phi i64 [ %.val79, %bb.r ], [ %.pre274, %._crit_edge.loopexit ]
  %i.fa = phi i64 [ %.val78, %bb.r ], [ %.pre272, %._crit_edge.loopexit ]
  %.0157.lcssa = phi i64 [ %i.ct, %bb.r ], [ %.1158, %._crit_edge.loopexit ] ; 8 uses
  %.055.lcssa = phi i64 [ %i.db, %bb.r ], [ %.156, %._crit_edge.loopexit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.0157.lcssa
  %i.fc = add i64 %i.fa, %.055.lcssa              ; 2 uses
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !1512
  %i.fd = icmp eq i64 %i.fc, %i.ez
  br i1 %i.fd, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %._crit_edge
  %i.fe = ashr i64 %i.cr, 5                       ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.fg = and i64 %i.cr, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0125.0.lcssa, i64 %i.fg ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i ], [ %i.ft, %bb.x ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.0125.0.lcssa, %.lr.ph.i.i.i ], [ %i.fs, %bb.x ] ; 9 uses
  %i.fh = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !168
  %i.fi = icmp eq i64 %i.fh, %.0157.lcssa
  br i1 %i.fi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !168
  %i.fl = icmp eq i64 %i.fk, %.0157.lcssa
  br i1 %i.fl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !168
  %i.fo = icmp eq i64 %i.fn, %.0157.lcssa
  br i1 %i.fo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !168
  %i.fr = icmp eq i64 %i.fq, %.0157.lcssa
  br i1 %i.fr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.ft = add nsw i64 %.052.i.i.i, -1
  %i.fu = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.fu, label %bb.t, label %._crit_edge.loopexit.i.i.i, !llvm.loop !11185

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.x
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cq, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.s
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cr, %bb.s ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.0125.0.lcssa, %bb.s ] ; 5 uses
  %i.fv = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.fv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit [
    i64 3, label %bb.y
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.fw = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !168
  %i.fx = icmp eq i64 %i.fw, %.0157.lcssa
  br i1 %i.fx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.z
  %.sroa.032.1.i.i.i = phi ptr [ %i.fy, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fz = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !168
  %i.ga = icmp eq i64 %i.fz, %.0157.lcssa
  br i1 %i.ga, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.aa
  %.sroa.032.2.i.i.i = phi ptr [ %i.gb, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.gc = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !168
  %i.gd = icmp eq i64 %i.gc, %.0157.lcssa
  %spec.select.i.i.i = select i1 %i.gd, ptr %.sroa.032.2.i.i.i, ptr %.sroa.16.2242
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314: ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316: ; preds = %bb.u
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.t, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.y, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.16.2242, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.y ], [ %i.gg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316 ], [ %i.ge, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %i.gf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314 ], [ %.sroa.032.051.i.i.i, %bb.t ]
  %i.gh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.gi = sub i64 %i.gh, %i.ao
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0125.0.lcssa, i64 %i.gi ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.gk, %.sroa.16.2242
  br i1 %.not.i.i87, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.cq, %i.gl                    ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, 8
  br i1 %i.gn, label %bb.ac, label %bb.ad, !prof !337

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gk, i64 %i.gm, i1 false)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %i.gm, 8
  br i1 %i.go, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !168
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !168
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  %i.gq = getelementptr inbounds i8, ptr %.sroa.16.2242, i64 -8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %.sroa.16.3 = phi ptr [ %i.gq, %bb.af ], [ %.sroa.16.2242, %._crit_edge ]
  %i.gr = sub i64 %.1243, %.055.lcssa             ; 2 uses
  %.not = icmp eq i64 %i.gr, 0
  br i1 %.not, label %._crit_edge245, label %bb.r, !llvm.loop !11186

._crit_edge245:                                   ; preds = %bb.ag, %.preheader187
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !11187 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !11187 ; 2 uses
  %.not186246 = icmp eq ptr %i.gt, %i.gv
  br i1 %.not186246, label %._crit_edge250, label %.lr.ph249

._crit_edge250:                                   ; preds = %.lr.ph249, %._crit_edge245
  %.not.i.i.i88 = icmp eq ptr %.sroa.0125.0.lcssa, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge250
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0.lcssa) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge250, %bb.ah
  %.not.i.i.i89 = icmp eq ptr %.sroa.0141.0.lcssa, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEESaIS8_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0141.0.lcssa) #30
  br label %_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEESaIS8_EED2Ev.exit

.lr.ph249:                                        ; preds = %._crit_edge245, %.lr.ph249
  %.sroa.0103.0247 = phi ptr [ %i.gy, %.lr.ph249 ], [ %i.gt, %._crit_edge245 ] ; 3 uses
  %i.gw = load i64, ptr %.sroa.0103.0247, align 8, !tbaa !1512
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0103.0247, i64 8
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !1521
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0103.0247, i64 16 ; 2 uses
  %.not186 = icmp eq ptr %i.gy, %i.gv
  br i1 %.not186, label %._crit_edge250, label %.lr.ph249

_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE1EEEEESaIS8_EED2Ev.exit: ; preds = %bb.b, %.preheader, %bb.ai, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.aj:                                            ; preds = %.loopexit188, %.loopexit.split-lp189, %.loopexit, %.loopexit.split-lp
  %.sroa.0141.2 = phi ptr [ %.sroa.0141.0220, %.loopexit.split-lp ], [ %.sroa.0141.0220, %.loopexit ], [ %.sroa.0141.5, %.loopexit188 ], [ %.sroa.0141.5, %.loopexit.split-lp189 ] ; 2 uses
  %.pn69.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ] ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %.sroa.0125.0217, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorImSaImEED2Ev.exit91, label %.thread172

.thread172:                                       ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0217) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit91

_ZNSt6vectorImSaImEED2Ev.exit91:                  ; preds = %.thread172, %bb.aj
  %.not.i.i.i92 = icmp eq ptr %.sroa.0141.2, null
end_hunk_0
begin_hunk_1_@_ZN6duckdb25SortedRunMergerLocalState35TemplatedComputePartitionBoundariesINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE0EEELNS_11SortKeyTypeE6EEEvRNS_26SortedRunMergerGlobalStateERKNS_12optional_idxERNS_6vectorIT_Lb0ESaISC_EEE:bb.a
_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i96, %.noexc102
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc102 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i96 ]
  %.not.i35.i = icmp eq ptr %.sroa.0141.0220, null
  br i1 %.not.i35.i, label %.noexc83, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0141.0220) #30
  br label %.noexc83

.noexc83:                                         ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEES9_SaIS8_EET0_T_SC_SB_RT1_.exit34.i
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bc
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.noexc83
  %.sroa.19.2 = phi ptr [ %i.bn, %.noexc83 ], [ %.sroa.19.0218, %bb.f ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc83 ], [ %.sroa.12.0219, %bb.f ]
  %.sroa.0141.5 = phi ptr [ %i.be, %.noexc83 ], [ %.sroa.0141.0220, %bb.f ] ; 4 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !1459 ; 4 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %storemerge222 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1512
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !1521
  %.not68 = icmp eq i64 %i.bq, %i.bs
  br i1 %.not68, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i84 = icmp eq ptr %.sroa.16.0216, %.sroa.27.0215
  br i1 %.not.i84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %storemerge222, ptr %.sroa.16.0216, align 8, !tbaa !168
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.16.0216, i64 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.bu = ptrtoint ptr %.sroa.16.0216 to i64
  %i.bv = ptrtoint ptr %.sroa.0125.0217 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #31
          to label %.noexc85 unwind label %.loopexit.split-lp189

.noexc85:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #28
          to label %.noexc86 unwind label %.loopexit188 ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store i64 %storemerge222, ptr %i.cf, align 8, !tbaa !168
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %.sroa.0125.0217, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0125.0217, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0217) #30
  %.pre.pre = load ptr, ptr %i.an, align 8, !tbaa !1459
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.p ], [ %i.bo, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  br label %bb.q

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEESaIS8_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit188:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp189:                            ; preds = %bb.n
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.q:                                             ; preds = %bb.j, %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.cj = phi ptr [ %i.bo, %bb.j ], [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bo, %bb.l ]
  %.sroa.27.1 = phi ptr [ %.sroa.27.0215, %bb.j ], [ %i.ci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.27.0215, %bb.l ]
  %.sroa.16.1 = phi ptr [ %.sroa.16.0216, %bb.j ], [ %i.ch, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bt, %bb.l ] ; 2 uses
  %.sroa.0125.1 = phi ptr [ %.sroa.0125.0217, %bb.j ], [ %i.ce, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0125.0217, %bb.l ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %storemerge222
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1512
  %i.cm = sub i64 %.0156221, %i.cl                ; 2 uses
  %i.cn = add nuw i64 %storemerge222, 1           ; 2 uses
  %i.co = load i64, ptr %i.ae, align 8, !tbaa !1458
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.e, label %.preheader187, !llvm.loop !11220

bb.r:                                             ; preds = %.lr.ph244, %bb.ag
  %.1243 = phi i64 [ %.0156.lcssa, %.lr.ph244 ], [ %i.gr, %bb.ag ] ; 2 uses
  %.sroa.16.2242 = phi ptr [ %.sroa.16.0.lcssa, %.lr.ph244 ], [ %.sroa.16.3, %bb.ag ] ; 6 uses
  %i.cq = ptrtoint ptr %.sroa.16.2242 to i64      ; 3 uses
  %i.cr = sub i64 %i.cq, %i.ao                    ; 4 uses
  %i.cs = ashr exact i64 %i.cr, 3                 ; 4 uses
  %i.ct = load i64, ptr %.sroa.0125.0.lcssa, align 8, !tbaa !168 ; 4 uses
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !1459 ; 4 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %.val78 = load i64, ptr %i.cv, align 8, !tbaa !1512 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %.val79 = load i64, ptr %i.cw, align 8, !tbaa !1521 ; 2 uses
  %i.cx = sub i64 %.val79, %.val78
  %i.cy = add i64 %.1243, -1
  %i.cz = add i64 %i.cy, %i.cs
  %i.da = udiv i64 %i.cz, %i.cs                   ; 2 uses
  %i.db = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx) ; 3 uses
  %i.dc = icmp ugt i64 %i.cs, 1
  br i1 %i.dc, label %.lr.ph230.preheader, label %._crit_edge

.lr.ph230.preheader:                              ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0141.0.lcssa, i64 %i.ct
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !11217 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1241
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1227
  %i.dj = zext i64 %i.di to i128
  %i.dk = add i64 %.val78, -1
  %i.dl = add i64 %i.dk, %i.db                    ; 2 uses
  %i.dm = zext i64 %i.dl to i128
  %i.dn = mul nuw i128 %i.dj, %i.dm
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64             ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1046
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !1229
  %i.du = mul i64 %i.dt, %i.dp
  %i.dv = sub i64 %i.dl, %i.du
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dv
  %.val2.val.i.pre = load i64, ptr %i.dw, align 8, !tbaa !168
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %.val2.val.i = phi i64 [ %5, %.lr.ph230 ], [ %.val2.val.i.pre, %.lr.ph230.preheader ] ; 2 uses
  %.055229 = phi i64 [ %.156, %.lr.ph230 ], [ %i.db, %.lr.ph230.preheader ]
  %.057228 = phi i64 [ %i.ey, %.lr.ph230 ], [ 1, %.lr.ph230.preheader ] ; 2 uses
  %.0157226 = phi i64 [ %.1158, %.lr.ph230 ], [ %i.ct, %.lr.ph230.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0125.0.lcssa, i64 %.057228
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !168 ; 3 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.dy ; 2 uses
  %.val74 = load i64, ptr %i.dz, align 8, !tbaa !1512 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.val75 = load i64, ptr %i.ea, align 8, !tbaa !1521
  %i.eb = sub i64 %.val75, %.val74
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %i.eb) ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0141.0.lcssa, i64 %i.dy
  %i.ee = add i64 %.val74, -1
  %i.ef = add i64 %i.ee, %i.ec                    ; 2 uses
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !11217 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = zext i64 %i.ef to i128
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1227
  %i.el = zext i64 %i.ek to i128
  %i.em = mul nuw i128 %i.ei, %i.el
  %i.en = lshr i128 %i.em, 64
  %i.eo = trunc nuw i128 %i.en to i64             ; 2 uses
  %i.ep = load i64, ptr %i.eh, align 8, !tbaa !1229
  %i.eq = mul i64 %i.ep, %i.eo
  %i.er = sub i64 %i.ef, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1241
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eo
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1046
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.er
  %.val.val.i = load i64, ptr %i.ew, align 8, !tbaa !168 ; 2 uses
  %i.ex = icmp ult i64 %.val.val.i, %.val2.val.i  ; 2 uses
  %.1158 = select i1 %i.ex, i64 %i.dy, i64 %.0157226 ; 3 uses
  %.156 = select i1 %i.ex, i64 %i.ec, i64 %.055229 ; 2 uses
  %i.ey = add nuw i64 %.057228, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ey, %i.cs
  %5 = call i64 @llvm.umin.i64(i64 %.val.val.i, i64 %.val2.val.i)
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph230, !llvm.loop !11221

._crit_edge.loopexit:                             ; preds = %.lr.ph230
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.1158 ; 2 uses
  %.pre272 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1512
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre274 = load i64, ptr %.phi.trans.insert273, align 8, !tbaa !1521
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %i.ez = phi i64 [ %.val79, %bb.r ], [ %.pre274, %._crit_edge.loopexit ]
  %i.fa = phi i64 [ %.val78, %bb.r ], [ %.pre272, %._crit_edge.loopexit ]
  %.0157.lcssa = phi i64 [ %i.ct, %bb.r ], [ %.1158, %._crit_edge.loopexit ] ; 8 uses
  %.055.lcssa = phi i64 [ %i.db, %bb.r ], [ %.156, %._crit_edge.loopexit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.0157.lcssa
  %i.fc = add i64 %i.fa, %.055.lcssa              ; 2 uses
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !1512
  %i.fd = icmp eq i64 %i.fc, %i.ez
  br i1 %i.fd, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %._crit_edge
  %i.fe = ashr i64 %i.cr, 5                       ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.fg = and i64 %i.cr, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0125.0.lcssa, i64 %i.fg ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.fe, %.lr.ph.i.i.i ], [ %i.ft, %bb.x ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.0125.0.lcssa, %.lr.ph.i.i.i ], [ %i.fs, %bb.x ] ; 9 uses
  %i.fh = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !168
  %i.fi = icmp eq i64 %i.fh, %.0157.lcssa
  br i1 %i.fi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !168
  %i.fl = icmp eq i64 %i.fk, %.0157.lcssa
  br i1 %i.fl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !168
  %i.fo = icmp eq i64 %i.fn, %.0157.lcssa
  br i1 %i.fo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !168
  %i.fr = icmp eq i64 %i.fq, %.0157.lcssa
  br i1 %i.fr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.ft = add nsw i64 %.052.i.i.i, -1
  %i.fu = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.fu, label %bb.t, label %._crit_edge.loopexit.i.i.i, !llvm.loop !11185

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.x
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cq, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.s
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cr, %bb.s ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.0125.0.lcssa, %bb.s ] ; 5 uses
  %i.fv = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.fv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit [
    i64 3, label %bb.y
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i
  %i.fw = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !168
  %i.fx = icmp eq i64 %i.fw, %.0157.lcssa
  br i1 %i.fx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.z
  %.sroa.032.1.i.i.i = phi ptr [ %i.fy, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.fz = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !168
  %i.ga = icmp eq i64 %i.fz, %.0157.lcssa
  br i1 %i.ga, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.aa
  %.sroa.032.2.i.i.i = phi ptr [ %i.gb, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.gc = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !168
  %i.gd = icmp eq i64 %i.gc, %.0157.lcssa
  %spec.select.i.i.i = select i1 %i.gd, ptr %.sroa.032.2.i.i.i, ptr %.sroa.16.2242
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314: ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316: ; preds = %bb.u
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.t, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.y, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.16.2242, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.y ], [ %i.gg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit316 ], [ %i.ge, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %i.gf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit314 ], [ %.sroa.032.051.i.i.i, %bb.t ]
  %i.gh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.gi = sub i64 %i.gh, %i.ao
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0125.0.lcssa, i64 %i.gi ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.gk, %.sroa.16.2242
  br i1 %.not.i.i87, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.cq, %i.gl                    ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, 8
  br i1 %i.gn, label %bb.ac, label %bb.ad, !prof !337

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gk, i64 %i.gm, i1 false)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.go = icmp eq i64 %i.gm, 8
  br i1 %i.go, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !168
  store i64 %i.gp, ptr %i.gj, align 8, !tbaa !168
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  %i.gq = getelementptr inbounds i8, ptr %.sroa.16.2242, i64 -8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %.sroa.16.3 = phi ptr [ %i.gq, %bb.af ], [ %.sroa.16.2242, %._crit_edge ]
  %i.gr = sub i64 %.1243, %.055.lcssa             ; 2 uses
  %.not = icmp eq i64 %i.gr, 0
  br i1 %.not, label %._crit_edge245, label %bb.r, !llvm.loop !11222

._crit_edge245:                                   ; preds = %bb.ag, %.preheader187
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !11187 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !11187 ; 2 uses
  %.not186246 = icmp eq ptr %i.gt, %i.gv
  br i1 %.not186246, label %._crit_edge250, label %.lr.ph249

._crit_edge250:                                   ; preds = %.lr.ph249, %._crit_edge245
  %.not.i.i.i88 = icmp eq ptr %.sroa.0125.0.lcssa, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge250
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0.lcssa) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge250, %bb.ah
  %.not.i.i.i89 = icmp eq ptr %.sroa.0141.0.lcssa, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEESaIS8_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0141.0.lcssa) #30
  br label %_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEESaIS8_EED2Ev.exit

.lr.ph249:                                        ; preds = %._crit_edge245, %.lr.ph249
  %.sroa.0103.0247 = phi ptr [ %i.gy, %.lr.ph249 ], [ %i.gt, %._crit_edge245 ] ; 3 uses
  %i.gw = load i64, ptr %.sroa.0103.0247, align 8, !tbaa !1512
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0103.0247, i64 8
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !1521
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0103.0247, i64 16 ; 2 uses
  %.not186 = icmp eq ptr %i.gy, %i.gv
  br i1 %.not186, label %._crit_edge250, label %.lr.ph249

_ZNSt6vectorIN6duckdb16block_iterator_tINS0_18BlockIteratorStateILNS0_22BlockIteratorStateTypeE0EEENS0_7SortKeyILNS0_11SortKeyTypeE6EEEEESaIS8_EED2Ev.exit: ; preds = %bb.b, %.preheader, %bb.ai, %_ZNSt6vectorImSaImEED2Ev.exit
  ret void

bb.aj:                                            ; preds = %.loopexit188, %.loopexit.split-lp189, %.loopexit, %.loopexit.split-lp
  %.sroa.0141.2 = phi ptr [ %.sroa.0141.0220, %.loopexit.split-lp ], [ %.sroa.0141.0220, %.loopexit ], [ %.sroa.0141.5, %.loopexit188 ], [ %.sroa.0141.5, %.loopexit.split-lp189 ] ; 2 uses
  %.pn69.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ] ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %.sroa.0125.0217, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorImSaImEED2Ev.exit91, label %.thread172

.thread172:                                       ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0125.0217) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit91

_ZNSt6vectorImSaImEED2Ev.exit91:                  ; preds = %.thread172, %bb.aj
  %.not.i.i.i92 = icmp eq ptr %.sroa.0141.2, null
end_hunk_1
