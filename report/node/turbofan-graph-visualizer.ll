Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbofan-graph-visualizer?download=true
inline.NumInlined: 6273
inline.NumDeleted: 2546
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.af = ptrtoint ptr %i.ac to i64
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = phi i64 [ %.pre, %._crit_edge ], [ %i.af, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.ae, %bb.d ]
  store i64 %i.ag, ptr %i.x, align 8
  store i32 1, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ai), !inline_history !579
  store i64 %.sroa.029.0.copyload, ptr %i.x, align 8
  br label %tailrecurse.backedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp slt i32 %i.z, 2
  br i1 %i.aj, label %bb.g, label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.z, 1
  store i32 %i.ak, ptr %i.y, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = load i64, ptr %i.al, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !579
  %i.an = load i32, ptr %i.y, align 8
  %i.ao = add nsw i32 %i.an, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.ao, %bb.g ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.y, align 8
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.o, %bb.f
  %.tr37.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr37.be = load i64, ptr %.tr37.be.in, align 8 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.tr37.be ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.aq, %tailrecurse.backedge ], [ %i.ef, %tailrecurse ]
  %.tr3751.be = phi i64 [ %.tr37.be, %tailrecurse.backedge ], [ %i.ed, %tailrecurse ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.at = load i8, ptr %i.m, align 4, !range !38, !noundef !39
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.aw), !inline_history !580
  %i.ax = load i8, ptr %i.m, align 4, !range !38, !noundef !39
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751), !inline_history !580
  br label %common.ret

common.ret:                                       ; preds = %bb.v, %bb.w, %bb.h, %bb.i, %bb.j, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.a, %bb.s, %bb.p, %bb.n, %bb.q, %tailrecurse.backedge, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ad, %bb.ae, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8
  %i.bd = load i64, ptr %i.g, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bf), !inline_history !581
  store ptr %.sroa.0.0.copyload.i, ptr %i.bc, align 8
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bk = load i64, ptr %i.g, align 8
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = load <2 x i64>, ptr %i.bj, align 8
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bn = load i64, ptr %i.bl, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bn), !inline_history !582
  store <2 x i64> %i.bm, ptr %i.bj, align 8
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.k, align 8
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.j, align 8             ; 2 uses
  %i.bs = and i32 %i.br, 1
  %.not.i26 = icmp eq i32 %i.bs, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bt = and i32 %i.br, 128
  %.not3.i = icmp eq i32 %i.bt, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.i, align 8, !nonnull !39, !align !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 2064
  %i.ca = icmp eq i32 %i.bz, 2064
  br i1 %i.ca, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.i, align 8, !nonnull !39, !align !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, 2064
  %i.ch = icmp eq i32 %i.cg, 2064
  br i1 %i.ch, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cj)
  br i1 %i.ck, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cm = load ptr, ptr %i.h, align 8
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.co = load i32, ptr %i.j, align 8
  %i.cp = and i32 %i.co, 2
  %.not.i28 = icmp eq i32 %i.cp, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.i, align 8, !nonnull !39, !align !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = and i32 %i.cu, 2064
  %i.cw = icmp eq i32 %i.cv, 2064
  br i1 %i.cw, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cx = load i8, ptr %i.cl, align 1
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cx)
  br i1 %i.cy, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cz = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !583
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.db = load i8, ptr %i.da, align 8, !range !38, !noundef !39
  %i.dc = zext i1 %i.cz to i8
  %.not.i = icmp eq i8 %i.db, %i.dc
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.de), !inline_history !584
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !range !38, !noundef !39
  %i.di = zext i1 %i.df to i8
  %.not.i24 = icmp eq i8 %i.dh, %i.di
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.dj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dk = load ptr, ptr %i.k, align 8
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %i.j, align 8
  %i.dn = and i32 %i.dm, 32
  %.not.i25 = icmp eq i32 %i.dn, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %3 = icmp eq i8 %1, 1
  %i.do = load ptr, ptr %i.h, align 8
  %i.dp = icmp eq ptr %i.dj, %i.do
  %or.cond.i = select i1 %3, i1 true, i1 %i.dp
  br i1 %or.cond.i, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i8, ptr %i.m, align 4, !range !38, !noundef !39
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !39, !align !46
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !585
  %i.ea = load i8, ptr %i.m, align 4, !range !38, !noundef !39 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !range !38, !noundef !39
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !585
  %i.ek = load i8, ptr %i.m, align 4, !range !38, !noundef !39
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4
  br label %common.ret
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.213) #26
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = load ptr, ptr %3, align 8                ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %bb.d, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !47

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
  %.pre = load ptr, ptr %3, align 8
  %.pre32 = load ptr, ptr %i.t, align 8
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ac = phi ptr [ %.pre32, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ] ; 4 uses
  store ptr %i.ae, ptr %i.s, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ai, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ac
  br i1 %i.al, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !32

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.af, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.am = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !594, !noalias !593
  store i64 %i.am, ptr %.012.i.i.i, align 8, !alias.scope !593, !noalias !594
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !594, !noalias !593
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !alias.scope !593, !noalias !594
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !594, !noalias !593
  store ptr %i.as, ptr %i.aq, align 8, !alias.scope !593, !noalias !594
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false), !alias.scope !594, !noalias !593
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !589

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ], [ %i.au, %.lr.ph.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i18 ], [ %i.av, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i20 = phi ptr [ %i.bd, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.aw = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !596, !noalias !595
  store i64 %i.aw, ptr %.012.i.i.i19, align 8, !alias.scope !595, !noalias !596
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !596, !noalias !595
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !alias.scope !595, !noalias !596
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !596, !noalias !595
  store ptr %i.bc, ptr %i.ba, align 8, !alias.scope !595, !noalias !596
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !alias.scope !596, !noalias !595
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !589

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.av, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.be, %.lr.ph.i.i.i18 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, %bb.e
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
