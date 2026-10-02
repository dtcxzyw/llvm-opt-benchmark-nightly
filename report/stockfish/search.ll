Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi:._crit_edge.i.i
  store ptr %i.bf, ptr %11, align 8, !tbaa !135
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.as, align 8, !tbaa !541
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ar, align 8, !tbaa !221
  %i.bg = call { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11) #33
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !221 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #33, !inline_history !512 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bj = load ptr, ptr %9, align 8, !tbaa !180   ; 5 uses
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !180 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = sdiv exact i64 %i.bn, 72
  %i.bp = ashr i64 %i.bo, 2                       ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i16, ptr %i.bd, align 2, !tbaa !234 ; 4 uses
  %i.bs = mul nuw nsw i64 %i.bp, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.bj, i64 %i.bs ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ %i.ck, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %i.cj, %bb.h ] ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !234
  %i.bw = icmp eq i16 %i.bv, %i.br
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !194
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !234
  %i.ca = icmp eq i16 %i.bz, %i.br
  br i1 %i.ca, label %.loopexit.split.loop.exit42.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !194
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !234
  %i.ce = icmp eq i16 %i.cd, %i.br
  br i1 %i.ce, label %.loopexit.split.loop.exit44.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !194
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !234
  %i.ci = icmp eq i16 %i.ch, %i.br
  br i1 %i.ci, label %.loopexit.split.loop.exit46.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.ck = add nsw i64 %.052.i.i.i, -1
  %i.cl = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cl, label %bb.d, label %._crit_edge.loopexit.i.i.i, !llvm.loop !1

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.h
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bl, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bn, %_ZNSt14_Function_baseD2Ev.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bj, %_ZNSt14_Function_baseD2Ev.exit ] ; 5 uses
  %i.cm = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i16, ptr %i.bd, align 2, !tbaa !234
  br label %bb.m

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i16, ptr %i.bd, align 2, !tbaa !234
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !194
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !234
  %i.cq = load i16, ptr %i.bd, align 2, !tbaa !234 ; 2 uses
  %i.cr = icmp eq i16 %i.cp, %i.cq
  br i1 %i.cr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i.i
  %i.ct = phi i16 [ %i.cq, %bb.j ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cs, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !194
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !234
  %i.cx = icmp eq i16 %i.cw, %i.ct
  br i1 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 72
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i.i
  %i.cz = phi i16 [ %i.ct, %bb.l ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cy, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !194
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !234
  %i.dd = icmp eq i16 %i.dc, %i.cz
  %spec.select.i.i.i = select i1 %i.dd, ptr %.sroa.032.2.i.i.i, ptr %i.bk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit42.i.i.i:                ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 72
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit44.i.i.i:                ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 144
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit46.i.i.i:                ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 216
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit: ; preds = %bb.d, %._crit_edge.i.i.i, %bb.i, %bb.k, %bb.m, %.loopexit.split.loop.exit42.i.i.i, %.loopexit.split.loop.exit44.i.i.i, %.loopexit.split.loop.exit46.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.k ], [ %spec.select.i.i.i, %bb.m ], [ %i.bk, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.i ], [ %i.df, %.loopexit.split.loop.exit44.i.i.i ], [ %i.de, %.loopexit.split.loop.exit42.i.i.i ], [ %i.dg, %.loopexit.split.loop.exit46.i.i.i ], [ %.sroa.032.051.i.i.i, %bb.d ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !193
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !193
  %.not108 = icmp eq i32 %i.di, %i.dk
  br i1 %.not108, label %bb.r, label %bb.x

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit
  %i.dl = phi ptr [ %i.fl, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit ], [ %.pre, %.lr.ph.preheader ] ; 14 uses
  %.098209 = phi ptr [ %i.fm, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit ], [ %10, %.lr.ph.preheader ] ; 3 uses
  %i.dm = load ptr, ptr %i.aq, align 8, !tbaa !181
  %.not.i119 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i = load i16, ptr %.098209, align 2, !tbaa !196
  store i64 0, ptr %i.dl, align 8, !tbaa !188
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.dn, align 8, !tbaa !150
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 -32001, ptr %i.do, align 8, !tbaa !189
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.dp, align 4, !tbaa !190
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  store i8 0, ptr %i.dq, align 1, !tbaa !191
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i32 0, ptr %i.dr, align 8, !tbaa !192
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i32 0, ptr %i.ds, align 4, !tbaa !193
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.du = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !194
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.du, align 2, !tbaa !196
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !197
  %i.dy = load ptr, ptr %i.ap, align 8, !tbaa !198
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72 ; 2 uses
  store ptr %i.dz, ptr %i.ap, align 8, !tbaa !198
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ea = load ptr, ptr %9, align 8, !tbaa !232   ; 5 uses
  %i.eb = ptrtoint ptr %i.dl to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %bb.p, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.ef = sdiv exact i64 %i.ed, 72                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 128102389400760775)
  %i.ej = select i1 %i.eh, i64 128102389400760775, i64 %i.ei ; 2 uses
  %i.ek = mul nuw nsw i64 %i.ej, 72
  %i.el = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #36 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed ; 10 uses
  %.sroa.0.0.copyload.i.i151 = load i16, ptr %.098209, align 2, !tbaa !196
  store i64 0, ptr %i.em, align 8, !tbaa !188
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.en, align 8, !tbaa !150
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i32 -32001, ptr %i.eo, align 8, !tbaa !189
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  store i8 0, ptr %i.ep, align 4, !tbaa !190
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 29
  store i8 0, ptr %i.eq, align 1, !tbaa !191
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i32 0, ptr %i.er, align 8, !tbaa !192
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  store i32 0, ptr %i.es, align 4, !tbaa !193
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eu = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !194
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i151, ptr %i.eu, align 2, !tbaa !196
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !197
  %.not10.i.i.i.i = icmp eq ptr %i.ea, %i.dl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i152

.lr.ph.i.i.i.i152:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i152
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i152 ], [ %i.el, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i152 ], [ %i.ea, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i, i64 44, i1 false), !alias.scope !544
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !262, !alias.scope !543, !noalias !542
  store <2 x ptr> %i.fa, ptr %i.ey, align 8, !tbaa !262, !alias.scope !542, !noalias !543
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !195, !alias.scope !543, !noalias !542
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !195, !alias.scope !542, !noalias !543
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false), !alias.scope !543, !noalias !542
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.fe, %i.dl
  br i1 %.not.i.i.i.i153, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i152, !llvm.loop !2

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i152, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.el, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ff, %.lr.ph.i.i.i.i152 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 72 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ea, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.fh = load ptr, ptr %i.aq, align 8, !tbaa !181
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.fj) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.q
  store ptr %i.el, ptr %9, align 8, !tbaa !232
  store ptr %i.fg, ptr %i.ap, align 8, !tbaa !198
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.fk, ptr %i.aq, align 8, !tbaa !181
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit: ; preds = %bb.n, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.fl = phi ptr [ %i.dz, %bb.n ], [ %i.fg, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.098209, i64 2 ; 2 uses
  %.not107 = icmp eq ptr %i.fm, %i.be
  br i1 %.not107, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %.fca.0.extract37 = extractvalue { i64, i32 } %i.bg, 0
  %i.fn = add nsw i32 %.0, 1                      ; 4 uses
  %i.fo = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #36 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.fp, i8 0, i64 192, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  %i.fq = load i64, ptr %i.aa, align 8, !tbaa !537
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.aa, align 8, !tbaa !537
  %i.fs = load ptr, ptr %i.z, align 8, !tbaa !531
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.031.0.copyload = load i16, ptr %i.bd, align 2, !tbaa !196 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  %i.fu = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.031.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.031.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.ft, i1 noundef zeroext %i.fu, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  %i.fv = and i64 %.fca.0.extract37, 4294967296
  %.not109 = icmp eq i64 %i.fv, 0
  br i1 %.not109, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not106, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fw = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef %i.fn) #33
  br i1 %i.fw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fx = call noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef %i.fn) #33
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.030.0.copyload = load i16, ptr %i.bd, align 2, !tbaa !196
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.030.0.copyload) #33
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.fz = load i64, ptr %i.at, align 8, !tbaa !55
  %.not.i.i = icmp ne i64 %i.fz, 0
  %i.ga = load i64, ptr %i.au, align 8
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = select i1 %.not.i.i, i1 true, i1 %i.gb
  br i1 %i.gc, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit", label %.critedge

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit": ; preds = %bb.w
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %5, align 8, !tbaa !55
  %i.gd = sub nsw i64 %i.fy, %.sroa.0.0.copyload.i2.i.i
  %i.ge = sitofp i64 %i.gd to double
  %i.gf = fdiv nnan double %i.ge, 1.000000e+06
  %i.gg = fmul nnan double %i.gf, 2.000000e+00
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !150
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = fcmp ogt double %i.gg, %i.gi
  br i1 %i.gj, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.r, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit"
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %.critedge, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit", %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %i.gk = phi i1 [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ], [ false, %bb.v ], [ true, %.critedge ], [ false, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit" ]
  %.2 = phi i32 [ %.0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ], [ %.0, %bb.v ], [ %i.fn, %.critedge ], [ %i.fn, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit" ] ; 2 uses
  %i.gl = load ptr, ptr %9, align 8, !tbaa !232   ; 3 uses
  %i.gm = load ptr, ptr %i.ap, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, label %.lr.ph.i.i.i120

.lr.ph.i.i.i120:                                  ; preds = %bb.x, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i ], [ %i.gl, %bb.x ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i120
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !195
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #38
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i120
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gu, %i.gm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i120, !llvm.loop !3

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !232
  br label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, %bb.x
  %i.gv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i ], [ %i.gl, %bb.x ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i
  %i.gw = load ptr, ptr %i.aq, align 8, !tbaa !181
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.gk, label %bb.a, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit
  %.pre239.a = load ptr, ptr %i.an, align 8, !tbaa !197 ; 2 uses
  %.pre240.a = load ptr, ptr %i.ah, align 8, !tbaa !194 ; 2 uses
  %.pre243 = sext i32 %.2 to i64
  %.pre244.a = ptrtoint ptr %.pre239.a to i64
  %.pre246.a = ptrtoint ptr %.pre240.a to i64
  %.pre248.a = sub i64 %.pre244.a, %.pre246.a
  %.pre250 = ashr exact i64 %.pre248.a, 1
  br label %split

split:                                            ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge
  %.pre-phi251 = phi i64 [ %.pre250, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.bb, %bb.a ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre243, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.av, %bb.a ] ; 4 uses
  %i.ha = phi ptr [ %.pre240.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.ax, %bb.a ]
  %i.hb = phi ptr [ %.pre239.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.aw, %bb.a ]
  %i.hc = icmp ult i64 %.pre-phi251, %.pre-phi
  br i1 %i.hc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %split
  %i.hd = sub nuw nsw i64 %.pre-phi, %.pre-phi251
  call void @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.hd)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.ab:                                            ; preds = %split
  %i.he = icmp ugt i64 %.pre-phi251, %.pre-phi
  br i1 %i.he, label %bb.ac, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %.pre-phi ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.hb, %i.hf
  br i1 %.not.i.i121, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.hf, ptr %i.an, align 8, !tbaa !197
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 512
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %invariant.op = sub i64 -2, %i.c
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  br i1 %.not106, label %.critedge113, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef 0) #33
  br i1 %i.hm, label %bb.bd, label %.critedge113

.critedge113:                                     ; preds = %bb.ae, %bb.af
  %i.hn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.ho = load i64, ptr %i.at, align 8, !tbaa !55
  %.not.i.i122 = icmp ne i64 %i.ho, 0
  %i.hp = load i64, ptr %i.au, align 8
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = select i1 %.not.i.i122, i1 true, i1 %i.hq
  br i1 %i.hr, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124", label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124": ; preds = %.critedge113
  %.sroa.0.0.copyload.i2.i.i123 = load i64, ptr %5, align 8, !tbaa !55
  %i.hs = sub nsw i64 %i.hn, %.sroa.0.0.copyload.i2.i.i123
  %i.ht = sitofp i64 %i.hs to double
  %i.hu = fdiv nnan double %i.ht, 1.000000e+06
  %i.hv = fmul nnan double %i.hu, 2.000000e+00
  %i.hw = load i32, ptr %i.b, align 4, !tbaa !150
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fcmp ogt double %i.hv, %i.hx
  br i1 %i.hy, label %bb.bd, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread": ; preds = %.critedge113, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.hz = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %13) #33 ; 3 uses
  store ptr %i.hz, ptr %i.hg, align 8, !tbaa !539
  %.not110215 = icmp eq ptr %13, %i.hz
  br i1 %.not110215, label %._crit_edge218, label %.lr.ph217

._crit_edge218:                                   ; preds = %bb.ak, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ia = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 6 uses
  %i.ib = load ptr, ptr %12, align 8, !tbaa !232  ; 13 uses
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = icmp eq ptr %i.ia, %i.ib
  br i1 %i.id, label %bb.ba, label %bb.al

.lr.ph217:                                        ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread", %bb.ak
  %.0104216 = phi ptr [ %i.xw, %bb.ak ], [ %13, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread" ] ; 5 uses
  %i.ie = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 14 uses
  %i.if = load ptr, ptr %i.hi, align 8, !tbaa !181
  %.not.i125 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i125, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph217
  %.sroa.0.0.copyload.i.i126 = load i16, ptr %.0104216, align 2, !tbaa !196
  store i64 0, ptr %i.ie, align 8, !tbaa !188
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.ig, align 8, !tbaa !150
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i32 -32001, ptr %i.ih, align 8, !tbaa !189
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store i8 0, ptr %i.ii, align 4, !tbaa !190
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 29
  store i8 0, ptr %i.ij, align 1, !tbaa !191
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 0, ptr %i.ik, align 8, !tbaa !192
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 36
  store i32 0, ptr %i.il, align 4, !tbaa !193
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %i.in = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !194
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i126, ptr %i.in, align 2, !tbaa !196
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !197
  %i.ir = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  store ptr %i.is, ptr %i.hh, align 8, !tbaa !198
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

bb.ah:                                            ; preds = %.lr.ph217
  %i.it = load ptr, ptr %12, align 8, !tbaa !232  ; 5 uses
  %i.iu = ptrtoint ptr %i.ie to i64
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv                    ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775800
  br i1 %i.ix, label %bb.ai, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154: ; preds = %bb.ah
  %i.iy = sdiv exact i64 %i.iw, 72                ; 3 uses
  %.sroa.speculated.i.i155 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i155, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 128102389400760775)
  %i.jc = select i1 %i.ja, i64 128102389400760775, i64 %i.jb ; 2 uses
  %i.jd = mul nuw nsw i64 %i.jc, 72
  %i.je = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #36 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iw ; 10 uses
  %.sroa.0.0.copyload.i.i157 = load i16, ptr %.0104216, align 2, !tbaa !196
  store i64 0, ptr %i.jf, align 8, !tbaa !188
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.jg, align 8, !tbaa !150
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store i32 -32001, ptr %i.jh, align 8, !tbaa !189
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 28
  store i8 0, ptr %i.ji, align 4, !tbaa !190
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 29
  store i8 0, ptr %i.jj, align 1, !tbaa !191
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store i32 0, ptr %i.jk, align 8, !tbaa !192
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 36
  store i32 0, ptr %i.jl, align 4, !tbaa !193
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jn = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !194
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i157, ptr %i.jn, align 2, !tbaa !196
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  store ptr %i.jo, ptr %i.jq, align 8, !tbaa !197
  %.not10.i.i.i.i158 = icmp eq ptr %i.it, %i.ie
  br i1 %.not10.i.i.i.i158, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154, %.lr.ph.i.i.i.i159
  %.012.i.i.i.i160 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i159 ], [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  %.0911.i.i.i.i161 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i159 ], [ %i.it, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i160, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i161, i64 44, i1 false), !alias.scope !547
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 48 ; 2 uses
  %i.jt = load <2 x ptr>, ptr %i.js, align 8, !tbaa !262, !alias.scope !546, !noalias !545
  store <2 x ptr> %i.jt, ptr %i.jr, align 8, !tbaa !262, !alias.scope !545, !noalias !546
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !195, !alias.scope !546, !noalias !545
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !195, !alias.scope !545, !noalias !546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false), !alias.scope !546, !noalias !545
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 72 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 72 ; 2 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.jx, %i.ie
  br i1 %.not.i.i.i.i162, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159, !llvm.loop !2

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170: ; preds = %.lr.ph.i.i.i.i159, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154
  %.0.lcssa.i.i.i.i164 = phi ptr [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ], [ %i.jy, %.lr.ph.i.i.i.i159 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i164, i64 72
  %.not.i23.i172 = icmp eq ptr %i.it, null
  br i1 %.not.i23.i172, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170
  %i.ka = load ptr, ptr %i.hi, align 8, !tbaa !181
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.kc) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, %bb.aj
  store ptr %i.je, ptr %12, align 8, !tbaa !232
  store ptr %i.jz, ptr %i.hh, align 8, !tbaa !198
  %i.kd = getelementptr inbounds nuw [72 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.kd, ptr %i.hi, align 8, !tbaa !181
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128: ; preds = %bb.ag, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173
  %i.ke = phi ptr [ %.0.lcssa.i.i.i.i164, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173 ], [ %i.ir, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.019.0.copyload = load i16, ptr %.0104216, align 2, !tbaa !196 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  %i.kf = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %14, i1 noundef zeroext %i.kf, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.kg = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %15) #33 ; 3 uses
  %.not210 = icmp eq ptr %15, %i.kg
  br i1 %.not210, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128
  %i.kh = ptrtoaddr ptr %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 36 ; 2 uses
  %.promoted = load i32, ptr %i.ki, align 4, !tbaa !193 ; 3 uses
  %.reass = add i64 %i.kh, %invariant.op          ; 3 uses
  %i.kj = lshr i64 %.reass, 1
  %i.kk = add nuw i64 %i.kj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check364 = icmp ult i64 %.reass, 126
  br i1 %min.iters.check364, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kl = and i64 %i.kk, 56
  %n.vec = and i64 %i.kk, -64                     ; 4 uses
  %i.km = shl i64 %n.vec, 1
  %i.kn = getelementptr i8, ptr %15, i64 %i.km
  %i.ko = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ko, %vector.ph ], [ %i.vv, %vector.body ]
  %vec.phi365.a = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vw, %vector.body ]
  %vec.phi366 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vx, %vector.body ]
  %vec.phi367 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vy, %vector.body ]
  %i.kp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %i.kp ; 4 uses
  %i.kq = getelementptr i8, ptr %next.gep, i64 32
  %i.kr = getelementptr i8, ptr %next.gep, i64 64
  %i.ks = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !196 ; 3 uses
  %wide.load368.a = load <16 x i16>, ptr %i.kq, align 8, !tbaa !196 ; 3 uses
  %wide.load369 = load <16 x i16>, ptr %i.kr, align 8, !tbaa !196 ; 3 uses
  %wide.load370 = load <16 x i16>, ptr %i.ks, align 8, !tbaa !196 ; 3 uses
  %i.kt = and <16 x i16> %wide.load, splat (i16 63)
  %i.ku = and <16 x i16> %wide.load368.a, splat (i16 63)
  %i.kv = and <16 x i16> %wide.load369, splat (i16 63)
  %i.kw = and <16 x i16> %wide.load370, splat (i16 63)
  %i.kx = zext nneg <16 x i16> %i.kt to <16 x i64> ; 16 uses
  %i.ky = zext nneg <16 x i16> %i.ku to <16 x i64> ; 16 uses
  %i.kz = zext nneg <16 x i16> %i.kv to <16 x i64> ; 16 uses
  %i.la = zext nneg <16 x i16> %i.kw to <16 x i64> ; 16 uses
  %i.lb = extractelement <16 x i64> %i.kx, i64 0
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %i.lb
  %i.ld = extractelement <16 x i64> %i.kx, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 %i.ld
  %i.lf = extractelement <16 x i64> %i.kx, i64 2
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %i.lf
  %i.lh = extractelement <16 x i64> %i.kx, i64 3
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh
  %i.lj = extractelement <16 x i64> %i.kx, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %i.lj
  %i.ll = extractelement <16 x i64> %i.kx, i64 5
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ll
  %i.ln = extractelement <16 x i64> %i.kx, i64 6
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  %i.lp = extractelement <16 x i64> %i.kx, i64 7
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %i.lp
  %i.lr = extractelement <16 x i64> %i.kx, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 %i.lr
  %i.lt = extractelement <16 x i64> %i.kx, i64 9
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 %i.lt
  %i.lv = extractelement <16 x i64> %i.kx, i64 10
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  %i.lx = extractelement <16 x i64> %i.kx, i64 11
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 %i.lx
  %i.lz = extractelement <16 x i64> %i.kx, i64 12
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz
  %i.mb = extractelement <16 x i64> %i.kx, i64 13
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.mb
  %i.md = extractelement <16 x i64> %i.kx, i64 14
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 %i.md
  %i.mf = extractelement <16 x i64> %i.kx, i64 15
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %i.mf
  %i.mh = extractelement <16 x i64> %i.ky, i64 0
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 %i.mh
  %i.mj = extractelement <16 x i64> %i.ky, i64 1
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.ml = extractelement <16 x i64> %i.ky, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ml
  %i.mn = extractelement <16 x i64> %i.ky, i64 3
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 %i.mn
  %i.mp = extractelement <16 x i64> %i.ky, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 %i.mp
  %i.mr = extractelement <16 x i64> %i.ky, i64 5
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 %i.mr
  %i.mt = extractelement <16 x i64> %i.ky, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 %i.mt
  %i.mv = extractelement <16 x i64> %i.ky, i64 7
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 %i.mv
  %i.mx = extractelement <16 x i64> %i.ky, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mx
  %i.mz = extractelement <16 x i64> %i.ky, i64 9
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 %i.mz
  %i.nb = extractelement <16 x i64> %i.ky, i64 10
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 %i.nb
  %i.nd = extractelement <16 x i64> %i.ky, i64 11
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = extractelement <16 x i64> %i.ky, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nh = extractelement <16 x i64> %i.ky, i64 13
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %i.nh
  %i.nj = extractelement <16 x i64> %i.ky, i64 14
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj
  %i.nl = extractelement <16 x i64> %i.ky, i64 15
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 %i.nl
  %i.nn = extractelement <16 x i64> %i.kz, i64 0
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.nn
  %i.np = extractelement <16 x i64> %i.kz, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 %i.np
  %i.nr = extractelement <16 x i64> %i.kz, i64 2
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.nr
  %i.nt = extractelement <16 x i64> %i.kz, i64 3
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 %i.nt
  %i.nv = extractelement <16 x i64> %i.kz, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
end_hunk_0
begin_hunk_1_@_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_:bb.a

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %.09, i64 noundef %1) #37
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !55
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !389
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #36 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.an, align 8, !tbaa !55
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !264
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !681, !alias.scope !682
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !677

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !389
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !388
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.au = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.av = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.aw = icmp ugt i64 %.09, %1
  br i1 %i.aw, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %.09, i64 noundef %1) #37
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.ax = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !264
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.az, ptr %i.f, align 8, !tbaa !389
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.ba = ptrtoint ptr %i.h to i64
  %i.bb = ptrtoint ptr %i.j to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i16, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #36 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !264
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19 ], [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !681, !alias.scope !683
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bm, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !677

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bn, %.lr.ph.i.i.i.i.i19 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bc) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bk, ptr %0, align 8, !tbaa !387
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !389
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !388
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

declare noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !382    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !376
  store i64 %i.r, ptr %i.q, align 8, !tbaa !376
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.u, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !363
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !65
  store ptr null, ptr %i.t, align 8, !tbaa !62
  store ptr %i.v, ptr %i.y, align 8, !tbaa !63
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !64
  store i64 0, ptr %i.ad, align 8, !tbaa !65
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !62
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

_ZN9Stockfish8L3DomainC2EOS0_.exit:               ; preds = %bb.c, %bb.d
  %.sink36 = phi ptr [ %i.s, %bb.d ], [ %i.z, %bb.c ]
  %.sink35 = phi ptr [ %i.s, %bb.d ], [ %i.ab, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sink36, ptr %i.ag, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sink35, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sink, ptr %i.ai, align 8, !tbaa !65
  store i32 %.sink.i.i.i.i.i, ptr %i.s, align 8, !tbaa !61
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !376, !alias.scope !692, !noalias !691
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !376, !alias.scope !691, !noalias !692
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62, !alias.scope !692, !noalias !691 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !61, !alias.scope !692, !noalias !691
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63, !alias.scope !692, !noalias !691
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64, !alias.scope !692, !noalias !691
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !363, !noalias !693
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !65, !alias.scope !692, !noalias !691
  store ptr null, ptr %i.al, align 8, !tbaa !62, !alias.scope !692, !noalias !691
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !63, !alias.scope !692, !noalias !691
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !64, !alias.scope !692, !noalias !691
  store i64 0, ptr %i.au, align 8, !tbaa !65, !alias.scope !692, !noalias !691
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !62, !alias.scope !691, !noalias !692
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink6.i.i.i.i, ptr %i.ax, align 8, !tbaa !63, !alias.scope !691, !noalias !692
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink5.i.i.i.i, ptr %i.ay, align 8, !tbaa !64, !alias.scope !691, !noalias !692
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %.sink.i.i.i.i, ptr %i.az, align 8, !tbaa !65, !alias.scope !691, !noalias !692
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !61, !alias.scope !691, !noalias !692
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !687

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish8L3DomainC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !376, !alias.scope !695, !noalias !694
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !376, !alias.scope !694, !noalias !695
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62, !alias.scope !695, !noalias !694 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !61, !alias.scope !695, !noalias !694
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !63, !alias.scope !695, !noalias !694
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64, !alias.scope !695, !noalias !694
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !363, !noalias !696
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !65, !alias.scope !695, !noalias !694
  store ptr null, ptr %i.bf, align 8, !tbaa !62, !alias.scope !695, !noalias !694
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !63, !alias.scope !695, !noalias !694
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !64, !alias.scope !695, !noalias !694
  store i64 0, ptr %i.bo, align 8, !tbaa !65, !alias.scope !695, !noalias !694
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.f, %.lr.ph.i.i.i17
  %.sink6.i.i.i.i22 = phi ptr [ %i.bk, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink5.i.i.i.i23 = phi ptr [ %i.bm, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i24 = phi i64 [ %i.bp, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.bi, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !62, !alias.scope !694, !noalias !695
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store ptr %.sink6.i.i.i.i22, ptr %i.br, align 8, !tbaa !63, !alias.scope !694, !noalias !695
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store ptr %.sink5.i.i.i.i23, ptr %i.bs, align 8, !tbaa !64, !alias.scope !694, !noalias !695
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %.sink.i.i.i.i24, ptr %i.bt, align 8, !tbaa !65, !alias.scope !694, !noalias !695
  store i32 %.sink.i.i.i.i.i.i.i.i.i25, ptr %i.be, align 8, !tbaa !61, !alias.scope !694, !noalias !695
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !687

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !380
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !382
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !379
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %i.g = icmp ult i64 %i.f, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !143
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38, !inline_history !353
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !229  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !143
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #38, !inline_history !353
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !143
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #38, !inline_history !353
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.d:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !142   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.aa) #33, !inline_history !11
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEEaSEOSD_EUlOT_T0_E_JRSt7variantIJS4_SA_SC_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %class.anon.398, align 1            ; 3 uses
  %3 = alloca %class.anon.398, align 1            ; 3 uses
  %4 = alloca %class.anon.398, align 1            ; 3 uses
  %5 = alloca %class.anon.398, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !140
  %i.c = load ptr, ptr %0, align 8, !tbaa !324    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !140   ; 4 uses
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 -1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !349

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  ], !prof !349

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE14_M_move_assignEOS7_(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(153) %1) #33
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  store i8 -1, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !343
  %i.h = load i8, ptr %i.f, align 8, !tbaa !343, !range !223, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(153) %i.c, ptr noundef nonnull align 8 dereferenceable(153) %1) #33
  store i8 1, ptr %i.g, align 8, !tbaa !343
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  store i8 1, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.h:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.j [
    i8 2, label %bb.i
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !349

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !142
  store ptr null, ptr %1, align 8, !tbaa !142
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.k) #33, !inline_history !11
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.j, %bb.h
  %i.l = load i64, ptr %1, align 8, !tbaa !142
  store i64 %i.l, ptr %i.c, align 8, !tbaa !142
  store ptr null, ptr %1, align 8, !tbaa !142
  store i8 2, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.k:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit, label %bb.l, !prof !297

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  store i8 -1, ptr %i.d, align 8, !tbaa !140
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.m:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit: ; preds = %bb.l, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %bb.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.e, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !232    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %2, align 2, !tbaa !196
  store i64 0, ptr %i.q, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.r, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 -32001, ptr %i.s, align 8, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i8 0, ptr %i.t, align 4, !tbaa !190
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 29
  store i8 0, ptr %i.u, align 1, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 0, ptr %i.v, align 8, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 0, ptr %i.w, align 4, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.y = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i, ptr %i.y, align 2, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !197
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 44, i1 false), !alias.scope !776
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !262, !alias.scope !775, !noalias !774
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !262, !alias.scope !774, !noalias !775
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !195, !alias.scope !775, !noalias !774
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !195, !alias.scope !774, !noalias !775
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !775, !noalias !774
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.as, %.lr.ph.i.i.i17 ], [ %i.ak, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ar, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i19, i64 44, i1 false), !alias.scope !779
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !262, !alias.scope !778, !noalias !777
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !262, !alias.scope !777, !noalias !778
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !195, !alias.scope !778, !noalias !777
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !195, !alias.scope !777, !noalias !778
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !778, !noalias !777
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ak, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.as, %.lr.ph.i.i.i17 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !181
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !232
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !198
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !181
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 3 uses
  %6 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %7 = alloca %"class.std::tuple.201", align 8    ; 12 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %9 = alloca %"struct.Stockfish::MoveList", align 8 ; 4 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !249
  %i.e = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.d) #33
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2                          ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %.not.not = icmp sgt i32 %i.i, %4
  br i1 %.not.not, label %bb.bw, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0246 = phi i32 [ %i.j, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %5, ptr %i.k, align 8, !tbaa !250
  %i.l = load ptr, ptr %2, align 8, !tbaa !250
  store i16 0, ptr %i.l, align 2, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !219
  %i.q = icmp ne i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 4, !tbaa !270
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 2 uses
  %i.u = load i32, ptr %i.t, align 16, !tbaa !256
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !249  ; 3 uses
  %.not153 = icmp sgt i32 %i.u, %i.w
  br i1 %.not153, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.t, align 16, !tbaa !256
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.w) #33
  %.pr = load i32, ptr %i.v, align 8, !tbaa !249
  %i.z = icmp sgt i32 %.pr, 245                   ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %.thread, label %bb.m

bb.h:                                             ; preds = %bb.f
  br i1 %i.z, label %.thread, label %bb.bv

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = load i8, ptr %i.r, align 4, !tbaa !270, !range !223, !noundef !72
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.bv, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 noundef %.sroa.0.0.copyload.i)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !138
  %i.ah = getelementptr inbounds nuw [160 x i8], ptr %i.ag, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !140
  switch i8 %i.aj, label %bb.l [
    i8 -1, label %bb.j
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @abort() #37
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.i, %bb.k
end_hunk_2
