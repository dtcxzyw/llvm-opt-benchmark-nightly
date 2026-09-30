Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/bench?download=true
inline.NumInlined: 54229
inline.NumDeleted: 19446
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.af = ptrtoint ptr %i.ac to i64
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = phi i64 [ %.pre, %._crit_edge ], [ %i.af, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.ae, %bb.d ]
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !326
  store i32 1, ptr %i.y, align 8, !tbaa !730
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !285
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ai), !inline_history !4068
  store i64 %.sroa.029.0.copyload, ptr %i.x, align 8, !tbaa !326
  br label %tailrecurse.backedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp slt i32 %i.z, 2
  br i1 %i.aj, label %bb.g, label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.z, 1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !730
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !285
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !4068
  %i.an = load i32, ptr %i.y, align 8, !tbaa !730
  %i.ao = add nsw i32 %i.an, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.ao, %bb.g ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !730
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.o, %bb.f
  %.tr37.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr37.be = load i64, ptr %.tr37.be.in, align 8, !tbaa !755 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !716
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.tr37.be ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !310, !range !346, !noundef !347
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.aq, %tailrecurse.backedge ], [ %i.ef, %tailrecurse ]
  %.tr3751.be = phi i64 [ %.tr37.be, %tailrecurse.backedge ], [ %i.ed, %tailrecurse ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.at = load i8, ptr %i.m, align 4, !tbaa !750, !range !346, !noundef !347
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !755
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.aw), !inline_history !4069
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !750, !range !346, !noundef !347
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751), !inline_history !4069
  br label %common.ret

common.ret:                                       ; preds = %bb.v, %bb.w, %bb.h, %bb.i, %bb.j, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.a, %bb.s, %bb.p, %bb.n, %bb.q, %tailrecurse.backedge, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ad, %bb.ae, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !285
  %i.bb = load ptr, ptr %0, align 8, !tbaa !678
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !tbaa !326
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !326
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !326
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !755
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bf), !inline_history !4070
  store ptr %.sroa.0.0.copyload.i, ptr %i.bc, align 8, !tbaa !326
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !285
  %i.bi = load ptr, ptr %0, align 8, !tbaa !678
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !326
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !741
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !755
  %i.bn = load <2 x i64>, ptr %i.bj, align 8
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !326
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bm), !inline_history !4071
  store <2 x i64> %i.bn, ptr %i.bj, align 8, !tbaa !326
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !741
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !326
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.j, align 8, !tbaa !713 ; 2 uses
  %i.bs = and i32 %i.br, 1
  %.not.i26 = icmp eq i32 %i.bs, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bt = and i32 %i.br, 128
  %.not3.i = icmp eq i32 %i.bt, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !756, !nonnull !347, !align !743
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !682
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !757
  %i.bz = and i32 %i.by, 2064
  %i.ca = icmp eq i32 %i.bz, 2064
  br i1 %i.ca, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !756, !nonnull !347, !align !743
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !682
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !757
  %i.cg = and i32 %i.cf, 2064
  %i.ch = icmp eq i32 %i.cg, 2064
  br i1 %i.ch, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !285
  %i.ck = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cj)
  br i1 %i.ck, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.co = load i32, ptr %i.j, align 8, !tbaa !713
  %i.cp = and i32 %i.co, 2
  %.not.i28 = icmp eq i32 %i.cp, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !756, !nonnull !347, !align !743
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !682
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !757
  %i.cv = and i32 %i.cu, 2064
  %i.cw = icmp eq i32 %i.cv, 2064
  br i1 %i.cw, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cx = load i8, ptr %i.cl, align 1, !tbaa !285
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cx)
  br i1 %i.cy, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cz = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !4072
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.db = load i8, ptr %i.da, align 8, !tbaa !285, !range !346, !noundef !347
  %i.dc = zext i1 %i.cz to i8
  %.not.i = icmp eq i8 %i.db, %i.dc
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !285
  %i.df = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.de), !inline_history !4073
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !285, !range !346, !noundef !347
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
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !326 ; 2 uses
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !326
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.y, label %3

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %i.j, align 8, !tbaa !713
  %i.dn = and i32 %i.dm, 32
  %.not.i25 = icmp eq i32 %i.dn, 0
  br i1 %.not.i25, label %3, label %common.ret

3:                                                ; preds = %bb.y, %bb.x
  %4 = icmp eq i8 %1, 1
  br i1 %4, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %3
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z, %3
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !750, !range !346, !noundef !347
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4, !tbaa !750
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !747, !nonnull !347, !align !743
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !757
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !285
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !4074
  %i.ea = load i8, ptr %i.m, align 4, !tbaa !750, !range !346, !noundef !347 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !755 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !716
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !310, !range !346, !noundef !347
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4, !tbaa !750
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !755
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !4074
  %i.ek = load i8, ptr %i.m, align 4, !tbaa !750, !range !346, !noundef !347
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4, !tbaa !750
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !717    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #54
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
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #53 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !340
  store i64 %i.r, ptr %i.q, align 8, !tbaa !749
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !745  ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !678    ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i, label %.noexc27.thread, label %bb.c

.noexc27.thread:                                  ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !679
  br label %.loopexit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ac = sdiv exact i64 %i.y, 24
  %i.ad = icmp ugt i64 %i.ac, 384307168202282325
  br i1 %i.ad, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !297

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #53
          to label %.noexc27 unwind label %bb.f   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !678
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !745
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !679
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %.noexc27 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.u
  br i1 %i.ak, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc27.thread
  %i.al = phi ptr [ %i.z, %.noexc27.thread ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %.noexc27.thread ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !745
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %i.p, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4083)
  %i.am = load i64, ptr %.0911.i.i.i, align 8, !tbaa !749, !alias.scope !4083, !noalias !4082
  store i64 %i.am, ptr %.012.i.i.i, align 8, !tbaa !749, !alias.scope !4082, !noalias !4083
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !738, !alias.scope !4083, !noalias !4082
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !738, !alias.scope !4082, !noalias !4083
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !679, !alias.scope !4083, !noalias !4082
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !679, !alias.scope !4082, !noalias !4083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false), !alias.scope !4083, !noalias !4082
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !4078

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %.loopexit ], [ %i.au, %.lr.ph.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.be, %.lr.ph.i.i.i29 ], [ %i.av, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  %i.aw = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !749, !alias.scope !4085, !noalias !4084
  store i64 %i.aw, ptr %.012.i.i.i30, align 8, !tbaa !749, !alias.scope !4084, !noalias !4085
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !738, !alias.scope !4085, !noalias !4084
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !738, !alias.scope !4084, !noalias !4085
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !679, !alias.scope !4085, !noalias !4084
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !679, !alias.scope !4084, !noalias !4085
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !alias.scope !4085, !noalias !4084
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !4078

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.av, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.be, %.lr.ph.i.i.i29 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !719
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #52
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt5dequeISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEESaISF_EE16_M_pop_front_auxEv:bb.a

_ZNSt10_Head_baseILm2ESt8functionIFN7coro_io9data_viewEvEELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !627  ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt10destroy_atISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_Head_baseILm2ESt8functionIFN7coro_io9data_viewEvEELb0EED2Ev.exit.i.i.i.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 3)
          to label %_ZSt10destroy_atISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEEEvPT_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #51
  unreachable

_ZSt10destroy_atISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_St8functionIFN7coro_io9data_viewEvEES7_IFvSt10error_codemEEEEEvPT_.exit: ; preds = %_ZNSt10_Head_baseILm2ESt8functionIFN7coro_io9data_viewEvEELb0EED2Ev.exit.i.i.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8934
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef 512) #52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3465
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !3461
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3463 ; 3 uses
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !3462
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !3460
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !3468
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::ssl::detail::io_op.4651", align 8 ; 15 uses
  %6 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.a, align 8, !tbaa !3525
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.b = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !3526, !noalias !8942
  br label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %bb.b
  %i.c = phi i64 [ %.pre, %bb.b ], [ %i.bq, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 2 uses
  %.0 = phi i64 [ %i.b, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !3527, !nonnull !347, !align !743 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %.idx.i = shl nsw i64 %i.c, 4                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.g = icmp ne i64 %i.c, 3
  %i.h = icmp ne i64 %.0, 0
  %or.cond21.i = and i1 %i.h, %i.g
  br i1 %or.cond21.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3528, !noalias !8942 ; 2 uses
  %.017.ptr.peel.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %.017.ptr.peel.i, align 8, !tbaa !416, !noalias !8942
  %.sroa.4.0..sroa_idx10.peel.i = getelementptr inbounds nuw i8, ptr %.017.ptr.peel.i, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx10.peel.i, align 8, !tbaa !340, !noalias !8942 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.l = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i7.peel.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.0) ; 2 uses
  store ptr %i.k, ptr %6, align 8
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i7.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8
  %i.m = sub nsw i64 %.0, %spec.select.i7.peel.i  ; 2 uses
  %.not.not.peel.i = icmp ugt i64 %.sroa.4.0.copyload.peel.i, %i.j
  br i1 %.not.not.peel.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader.i
  store i64 1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i
  %i.n = phi i64 [ 1, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %.017.add.peel.i = add nsw i64 %.idx.i, 16      ; 2 uses
  %i.o = icmp ne i64 %.017.add.peel.i, 48
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !416, !noalias !8942
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !340, !noalias !8942 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !189

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !2011, !nonnull !347, !align !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.z, ptr %5, align 8, !tbaa !1351
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !2013
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !3533
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !3534
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !863
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !8937 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !864
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !3535
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !1363
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !3536
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !3525
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1563
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !1563
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !8938
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.j

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !3537
  %i.ar = add i64 %i.aq, %3                       ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !3537
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !3526 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.at, 4                ; 2 uses
  %i.au = icmp ne i64 %i.at, 3
  %i.av = icmp ne i64 %3, 0                       ; 2 uses
  %i.aw = and i1 %i.av, %i.au
  br i1 %i.aw, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted.i = load i64, ptr %i.ax, align 8, !tbaa !3528 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !340
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted.i) ; 2 uses
  %i.az = icmp ult i64 %3, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.ba = sub nuw i64 %3, %i.ay                   ; 2 uses
  %i.bb = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !3526
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !3528
  %i.bc = icmp ne i64 %.012.add.i.peel, 48
  %i.bd = icmp ne i64 %i.ba, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

.peel.next:                                       ; preds = %bb.g, %bb.h
  %i.bf = phi i64 [ %i.bk, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
  %.018.i = phi i64 [ %i.bj, %bb.h ], [ %i.ba, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !340 ; 2 uses
  %i.bg = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bg, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bh = phi i64 [ %i.at, %.lr.ph.i14 ], [ %i.bf, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bi = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !3528
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bj = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bk = add i64 %i.bf, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.as, align 8, !tbaa !3526
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !3528
  %i.bl = icmp ne i64 %.012.add.i, 48
  %i.bm = icmp ne i64 %i.bj, 0
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !8939

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bo = phi i64 [ %i.bh, %.thread.i ], [ %i.at, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bk, %bb.h ]
  %i.bp = icmp ne i32 %1, 0
  %or.cond.not = or i1 %i.bp, %i.av
  br i1 %or.cond.not, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, label %bb.i

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bq = phi i64 [ %i.bo, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ], [ %i.bb, %bb.g ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !3538
  %.not = icmp ult i64 %i.ar, %i.bs
  %.not.i.i17.not = icmp eq i32 %1, 0
  %or.cond = select i1 %.not, i1 %.not.i.i17.not, i1 false
  br i1 %or.cond, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.i, !llvm.loop !8940

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1757 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %1, ptr %i.bv, align 8, !tbaa !286
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !452
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 %i.ar, ptr %i.bw, align 8, !tbaa !340
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !1113 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr nonnull %i.bx), !inline_history !8941
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENKUlSX_E_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.4674", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !3533
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8948, !nonnull !347, !align !743
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3539
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i ; 2 uses
  br label %.outer.split.i.preheader.i.i

.outer.split.i.preheader.i.i:                     ; preds = %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %bb.b
  %.sroa.6.0.ph.fr.i12.i.i = phi i64 [ %i.q, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ 8192, %bb.b ] ; 5 uses
  %.0.ph.i11.i.i = phi ptr [ %i.k, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.c, %bb.b ]
  %.sroa.0.0.ph.i10.i.i = phi ptr [ %i.p, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  br label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %bb.c, %.outer.split.i.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.0.ph.i11.i.i, %.outer.split.i.preheader.i.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !340 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !190

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !416 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph.fr.i12.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph.fr.i12.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.ph.i10.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i10.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph.fr.i12.i.i, %.fr.i.i ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !190

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph.fr.i12.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph.fr.i12.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %i.f, align 8, !tbaa !286
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !3534
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3534
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !8948, !nonnull !347, !align !743 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1987 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1784
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1988
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1987 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1988
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !8948, !nonnull !347, !align !743 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !416
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !340
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !340
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1316, !range !346, !noundef !347
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !1314 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1329, !nonnull !347, !align !743
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !1316
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !8948
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !340
  %i.ba = load ptr, ptr %0, align 8, !tbaa !8949, !nonnull !347, !align !743 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1357
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base13async_receiveINS_17mutable_buffers_1ENS_3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS5_8write_opINS0_16prepared_buffersINS_12const_bufferELm3EEEEENS0_8write_opINS4_6streamIRSB_EESt5arrayISE_Lm3EEPKSE_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSQ_11async_writeISK_SM_EEN12async_simple4coro4LazyISU_EERT_T0_EUlOS10_E_SK_EENSY_IS10_EES12_RT1_ENKUlS10_E_clINSQ_21callback_awaitor_baseISU_NSQ_16callback_awaitorISU_EEE15awaitor_handlerEEEDaS10_EUlDpOT_E_EEEESA_EEvRNS1_24base_implementation_typeERKS10_iRS12_RKS16_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bg), !inline_history !8943
end_hunk_1
begin_hunk_2_@_ZN4asio6detail17executor_function8completeINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSQ_EUlvE_EESaIvEEEvPNS1_9impl_baseEb:bb.a
  store ptr %0, ptr %i.p, align 8, !tbaa !416
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #43
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !3586
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSQ_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #55
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 125, ptr %i.t, align 8, !tbaa !286
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !452
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1113 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr nonnull %i.u)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSQ_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !9021

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSQ_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.w

_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSQ_E_SI_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSQ_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEESt5arrayINS_12const_bufferELm3EEPKSC_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISA_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SA_EENSP_ISR_EEST_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EclESK_mi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::ssl::detail::io_op.4703", align 8 ; 15 uses
  %6 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.a, align 8, !tbaa !3582
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.b = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !3526, !noalias !9030
  br label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %bb.b
  %i.c = phi i64 [ %.pre, %bb.b ], [ %i.bp, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 2 uses
  %.0 = phi i64 [ %i.b, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !3587, !nonnull !347, !align !743 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %.idx.i = shl nsw i64 %i.c, 4                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.g = icmp ne i64 %i.c, 3
  %i.h = icmp ne i64 %.0, 0
  %or.cond21.i = and i1 %i.h, %i.g
  br i1 %or.cond21.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3528, !noalias !9030 ; 2 uses
  %.017.ptr.peel.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %.017.ptr.peel.i, align 8, !tbaa !416, !noalias !9030
  %.sroa.4.0..sroa_idx10.peel.i = getelementptr inbounds nuw i8, ptr %.017.ptr.peel.i, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx10.peel.i, align 8, !tbaa !340, !noalias !9030 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.l = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i7.peel.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.0) ; 2 uses
  store ptr %i.k, ptr %6, align 8
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %spec.select.i7.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8
  %i.m = sub nsw i64 %.0, %spec.select.i7.peel.i  ; 2 uses
  %.not.not.peel.i = icmp ugt i64 %.sroa.4.0.copyload.peel.i, %i.j
  br i1 %.not.not.peel.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader.i
  store i64 1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i
  %i.n = phi i64 [ 1, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %.017.add.peel.i = add nsw i64 %.idx.i, 16      ; 2 uses
  %i.o = icmp ne i64 %.017.add.peel.i, 48
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !416, !noalias !9030
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !340, !noalias !9030 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !189

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !2011, !nonnull !347, !align !743
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.z, ptr %5, align 8, !tbaa !1351
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !2013
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %i.ad, align 8, !tbaa !3589
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !3590
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i32 0, ptr %i.af, align 8, !tbaa !863
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55, !inline_history !9025 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !864
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 0, ptr %i.ai, align 8, !tbaa !3591
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.d, ptr %i.aj, align 8, !tbaa !1363
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !3536
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i32 %4, ptr %i.al, align 8, !tbaa !3582
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !1760
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %5, i32 0, ptr nonnull %i.ah, i64 noundef 0, i32 noundef 1), !inline_history !9026
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.j

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !3537
  %i.aq = add i64 %i.ap, %3                       ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !3537
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !3526 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.as, 4                ; 2 uses
  %i.at = icmp ne i64 %i.as, 3
  %i.au = icmp ne i64 %3, 0                       ; 2 uses
  %i.av = and i1 %i.au, %i.at
  br i1 %i.av, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted.i = load i64, ptr %i.aw, align 8, !tbaa !3528 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !340
  %i.ax = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted.i) ; 2 uses
  %i.ay = icmp ult i64 %3, %i.ax
  br i1 %i.ay, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.az = sub nuw i64 %3, %i.ax                   ; 2 uses
  %i.ba = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !3526
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !3528
  %i.bb = icmp ne i64 %.012.add.i.peel, 48
  %i.bc = icmp ne i64 %i.az, 0
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

.peel.next:                                       ; preds = %bb.g, %bb.h
  %i.be = phi i64 [ %i.bj, %bb.h ], [ %i.ba, %bb.g ] ; 2 uses
  %.018.i = phi i64 [ %i.bi, %bb.h ], [ %i.az, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !340 ; 2 uses
  %i.bf = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.bf, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.bg = phi i64 [ %i.as, %.lr.ph.i14 ], [ %i.be, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.bh = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.bh, ptr %i.aw, align 8, !tbaa !3528
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.bi = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.bj = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bj, ptr %i.ar, align 8, !tbaa !3526
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !3528
  %i.bk = icmp ne i64 %.012.add.i, 48
  %i.bl = icmp ne i64 %i.bi, 0
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !9027

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bn = phi i64 [ %i.bg, %.thread.i ], [ %i.as, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.bj, %bb.h ]
  %i.bo = icmp ne i32 %1, 0
  %or.cond.not = or i1 %i.bo, %i.au
  br i1 %or.cond.not, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, label %bb.i

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bp = phi i64 [ %i.bn, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ], [ %i.ba, %bb.g ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !3538
  %.not = icmp ult i64 %i.aq, %i.br
  %.not.i.i17.not = icmp eq i32 %1, 0
  %or.cond = select i1 %.not, i1 %.not.i.i17.not, i1 false
  br i1 %or.cond, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.i, !llvm.loop !9028

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9031, !nonnull !347, !align !743
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1512
  %i.bw = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 noundef 1) ; 0 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !1757 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %1, ptr %i.by, align 8, !tbaa !286
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !452
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %i.aq, ptr %i.bz, align 8, !tbaa !340
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !1113 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr nonnull %i.ca), !inline_history !9029
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEENS9_8write_opINS0_6streamIRS7_EESt5arrayISB_Lm3EEPKSB_NS9_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSN_11async_writeISH_SJ_EEN12async_simple4coro4LazyISR_EERT_T0_EUlOSX_E_SH_EENSV_ISX_EESZ_RT1_ENUlSX_E0_clINSN_21callback_awaitor_baseISR_NSN_16callback_awaitorISR_EEE15awaitor_handlerEEEDaSX_EUlDpOT_E_EEEclESQ_mi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.4725", align 8 ; 17 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %4, ptr %i.b, align 8, !tbaa !3589
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a, %bb.ae
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ae ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9037, !nonnull !347, !align !743
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3539
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i ; 2 uses
  br label %.outer.split.i.preheader.i.i

.outer.split.i.preheader.i.i:                     ; preds = %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %bb.b
  %.sroa.6.0.ph.fr.i12.i.i = phi i64 [ %i.q, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ 8192, %bb.b ] ; 5 uses
  %.0.ph.i11.i.i = phi ptr [ %i.k, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.c, %bb.b ]
  %.sroa.0.0.ph.i10.i.i = phi ptr [ %i.p, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ], [ %i.a, %bb.b ] ; 2 uses
  br label %.outer.split.i.i.i

.outer.split.i.i.i:                               ; preds = %bb.c, %.outer.split.i.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.k, %bb.c ], [ %.0.ph.i11.i.i, %.outer.split.i.preheader.i.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i, label %bb.c

bb.c:                                             ; preds = %.outer.split.i.i.i
  %.sroa.4.0..0.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i, align 8, !tbaa !340 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 3 uses
  %i.l = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.l, label %.outer.split.i.i.i, label %bb.d, !llvm.loop !190

bb.d:                                             ; preds = %bb.c
  %.sroa.020.0.copyload.le.i.i.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !416 ; 2 uses
  %i.m = icmp eq i64 %.sroa.6.0.ph.fr.i12.i.i, 8192
  br i1 %i.m, label %bb.e, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.k, %i.j
  %.not13.i.i.i = icmp ult i64 %.sroa.4.0.copyload.i.i.i, 8192
  %or.cond24.i.i.i = and i1 %i.n, %.not13.i.i.i
  br i1 %or.cond24.i.i.i, label %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.o = call i64 @llvm.umin.i64(i64 %.sroa.6.0.ph.fr.i12.i.i, i64 %.sroa.4.0.copyload.i.i.i)
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.ph.i10.i.i, ptr align 1 %.sroa.020.0.copyload.le.i.i.i, i64 %.fr.i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i10.i.i, i64 %.fr.i.i
  %i.q = sub i64 %.sroa.6.0.ph.fr.i12.i.i, %.fr.i.i ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i.i.i, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit, label %.outer.split.i.preheader.i.i, !llvm.loop !190

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i: ; preds = %.outer.split.i.i.i
  %i.r = sub i64 8192, %.sroa.6.0.ph.fr.i12.i.i
  %i.s = icmp eq i64 %.sroa.6.0.ph.fr.i12.i.i, 8192
  br i1 %i.s, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #55
  store i32 0, ptr %i.f, align 8, !tbaa !286
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !3590
  br label %bb.p

_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.e, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i
  %.sroa.020.0.i.i12.i = phi ptr [ %i.a, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.020.0.copyload.le.i.i.i, %bb.e ], [ %i.a, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %.sroa.4.0.i.i11.i = phi i64 [ %i.r, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9lineariseERKS4_RKNS_14mutable_bufferE.exit.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.e ], [ 8192, %_ZN4asio11buffer_copyINS_14mutable_bufferENS_12const_bufferEEEmRKT_RKT0_.exit.i.i.i ]
  %i.v = call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine8do_writeEPvm to i64), i64 0, ptr noundef %.sroa.020.0.i.i12.i, i64 noundef %.sroa.4.0.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3590
  switch i32 %i.v, label %bb.p [
    i32 -2, label %bb.f
    i32 -1, label %bb.l
    i32 1, label %bb.l
  ]

bb.f:                                             ; preds = %_ZNK4asio3ssl6detail8write_opINS_6detail16prepared_buffersINS_12const_bufferELm3EEEEclERNS1_6engineERSt10error_codeRm.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !9037, !nonnull !347, !align !743 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1987 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1784
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !1988
  %i.ae = trunc i64 %i.z to i32
  %i.af = call i32 @BIO_write(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.ae)
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !1987 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1988
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %spec.select.i.i
  %i.ak = sub i64 %i.ah, %spec.select.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !9037, !nonnull !347, !align !743 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !416
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 %i.ak, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !340
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !340
  %i.ap = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1316, !range !346, !noundef !347
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !1314 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1329, !nonnull !347, !align !743
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ay = call noundef i64 @_ZN4asio6detail13epoll_reactor12cancel_timerINS0_18chrono_time_traitsINSt6chrono3_V212steady_clockENS_11wait_traitsIS6_EEEEEEmRNS0_11timer_queueIT_EERNSC_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(216) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 noundef -1) ; 0 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !1316
  %.pre72 = load ptr, ptr %i.d, align 8, !tbaa !9037
  br label %_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS_11wait_traitsIS3_EENS_15any_io_executorEE10expires_atERKNS1_10time_pointIS3_NS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.x, %bb.i ], [ %.pre72, %bb.j ] ; 2 uses
  store i64 9223372036854775807, ptr %i.ao, align 8, !tbaa !340
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9038, !nonnull !347, !align !743 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 320
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 328
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !340
  store ptr %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1357
end_hunk_2
begin_hunk_3_@_ZN7coro_io21callback_awaitor_baseISt4pairISt10error_codemENS_16callback_awaitorIS3_EEE21callback_awaitor_implIZNS_8async_ioIS3_ZNS_11async_writeIN4asio19basic_stream_socketINSA_2ip3tcpENSA_15any_io_executorEEESt5arrayINSA_12const_bufferELm3EEEEN12async_simple4coro4LazyIS3_EERT_T0_EUlOSN_E_SF_EENSL_ISN_EESP_RT1_EUlSN_E_E13await_suspendENSt7__n486116coroutine_handleIvEE:bb.a
  store i64 %spec.select.i7.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !340, !alias.scope !9110
  %i.t = sub nsw i64 %i.r, %spec.select.i7.i.i.i.i.i.i.i.i.i
  %.not.not.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.i.i.i.i.i.i.i.i, label %.lr.ph._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.c

.lr.ph._crit_edge.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !9110
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store i64 %.ph, ptr %i.q, align 8, !tbaa !3539, !alias.scope !9110
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph._crit_edge.i.i.i.i.i.i.i.i.i
  %i.u = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i.i.i.i.i.i ], [ %.ph, %bb.c ] ; 3 uses
  %i.v = icmp ugt i64 %i.r, %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i
  %i.w = icmp ult i64 %i.u, 3
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.1, label %_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i

.lr.ph.i.i.i.i.i.i.i.i.i.1:                       ; preds = %bb.d
  %.017.ptr.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %.017.ptr.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !416, !noalias !9110
  %.sroa.4.0..sroa_idx10.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx10.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !340, !noalias !9110 ; 2 uses
  %spec.select.i7.i.i.i.i.i.i.i.i.i.1 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.1, i64 %i.t)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.u ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.1, ptr %i.y, align 8, !tbaa !416, !alias.scope !9110
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %spec.select.i7.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !340, !alias.scope !9110
  %.not.not.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.not.not.i.i.i.i.i.i.i.i.i.1, label %_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.1
  %i.z = add nuw nsw i64 %i.u, 1
  store i64 %i.z, ptr %i.q, align 8, !tbaa !3539, !alias.scope !9110
  br label %_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i

_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.1, %bb.e, %bb.b
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !1357
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS4_Lm3EEPKS4_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISB_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SB_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESA_EEvRNS1_24base_implementation_typeERKSR_iRST_RKSX_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void

bb.g:                                             ; preds = %_ZZN7coro_io11async_writeIN4asio19basic_stream_socketINS1_2ip3tcpENS1_15any_io_executorEEESt5arrayINS1_12const_bufferELm3EEEEN12async_simple4coro4LazyISt4pairISt10error_codemEEERT_T0_ENKUlOSH_E_clIZZNS_8async_ioISF_SL_S6_EENSC_ISH_EESJ_RT1_ENKUlSH_E_clINS_21callback_awaitor_baseISF_NS_16callback_awaitorISF_EEE15awaitor_handlerEEEDaSH_EUlDpOT_E_EEDaSK_.exit.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #51
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKS8_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSD_11async_writeIS6_S9_EEN12async_simple4coro4LazyISH_EERT_T0_EUlOSN_E_S6_EENSL_ISN_EESP_RT1_ENKUlSN_E_clINSD_21callback_awaitor_baseISH_NSD_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EclESG_mi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.a, align 8, !tbaa !3641
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.b = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !3526, !noalias !9117
  br label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %bb.b
  %i.c = phi i64 [ %.pre, %bb.b ], [ %i.be, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 2 uses
  %.0 = phi i64 [ %i.b, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !3642, !nonnull !347, !align !743 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9117)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !alias.scope !9117
  %.idx.i = shl nsw i64 %i.c, 4                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.g = icmp ne i64 %i.c, 3
  %i.h = icmp ne i64 %.0, 0
  %or.cond21.i = and i1 %i.h, %i.g
  br i1 %or.cond21.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3528, !noalias !9117 ; 2 uses
  %.017.ptr.peel.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %.017.ptr.peel.i, align 8, !tbaa !416, !noalias !9117
  %.sroa.4.0..sroa_idx10.peel.i = getelementptr inbounds nuw i8, ptr %.017.ptr.peel.i, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx10.peel.i, align 8, !tbaa !340, !noalias !9117 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.l = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i7.peel.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.0) ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !416, !alias.scope !9117
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i7.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !340, !alias.scope !9117
  %i.m = sub nsw i64 %.0, %spec.select.i7.peel.i  ; 2 uses
  %.not.not.peel.i = icmp ugt i64 %.sroa.4.0.copyload.peel.i, %i.j
  br i1 %.not.not.peel.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader.i
  store i64 1, ptr %i.f, align 8, !tbaa !3539, !alias.scope !9117
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i
  %i.n = phi i64 [ 1, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %.017.add.peel.i = add nsw i64 %.idx.i, 16      ; 2 uses
  %i.o = icmp ne i64 %.017.add.peel.i, 48
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !416, !noalias !9117
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !340, !noalias !9117 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8, !tbaa !416, !alias.scope !9117
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !340, !alias.scope !9117
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !9117
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !3539, !alias.scope !9117
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !189

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1357
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS4_Lm3EEPKS4_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISB_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SB_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESA_EEvRNS1_24base_implementation_typeERKSR_iRST_RKSX_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ac), !inline_history !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.j

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3537
  %i.af = add i64 %i.ae, %3                       ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !3537
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3526 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.ah, 4                ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 3
  %i.aj = icmp ne i64 %3, 0                       ; 2 uses
  %i.ak = and i1 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted.i = load i64, ptr %i.al, align 8, !tbaa !3528 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !340
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted.i) ; 2 uses
  %i.an = icmp ult i64 %3, %i.am
  br i1 %i.an, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.ao = sub nuw i64 %3, %i.am                   ; 2 uses
  %i.ap = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !3526
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !3528
  %i.aq = icmp ne i64 %.012.add.i.peel, 48
  %i.ar = icmp ne i64 %i.ao, 0
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

.peel.next:                                       ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.ay, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %.018.i = phi i64 [ %i.ax, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !340 ; 2 uses
  %i.au = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.au, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.av = phi i64 [ %i.ah, %.lr.ph.i14 ], [ %i.at, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.aw = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !3528
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.ax = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.ay = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !3526
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !3528
  %i.az = icmp ne i64 %.012.add.i, 48
  %i.ba = icmp ne i64 %i.ax, 0
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !9114

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bc = phi i64 [ %i.av, %.thread.i ], [ %i.ah, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.ay, %bb.h ]
  %i.bd = icmp ne i32 %1, 0
  %or.cond.not = or i1 %i.bd, %i.aj
  br i1 %or.cond.not, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, label %bb.i

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.be = phi i64 [ %i.bc, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ], [ %i.ap, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !3538
  %.not = icmp ult i64 %i.af, %i.bg
  %.not.i.i17.not = icmp eq i32 %1, 0
  %or.cond = select i1 %.not, i1 %.not.i.i17.not, i1 false
  br i1 %or.cond, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.i, !llvm.loop !9115

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1757 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %1, ptr %i.bj, align 8, !tbaa !286
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !452
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.af, ptr %i.bk, align 8, !tbaa !340
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !1113 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr nonnull %i.bl), !inline_history !9116
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS4_Lm3EEPKS4_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISB_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SB_EENSP_ISR_EEST_RT1_ENKUlSR_E_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESA_EEvRNS1_24base_implementation_typeERKSR_iRST_RKSX_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_send_op<asio::detail::prepared_buffers<asio::const_buffer, 3>, asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::const_buffer, 3>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:281:15)>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3641
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %4, ptr %6, align 8, !tbaa !3646
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !971  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !972
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 296, i64 noundef 16) ; 19 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !3647
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !1358
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !1361
  store ptr null, ptr %i.j, align 8, !tbaa !947
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E11do_completeEPvPNS0_19scheduler_operationERKSJ_m, ptr %i.p, align 8, !tbaa !955
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !991
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !453
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail28reactive_socket_send_op_baseINS0_16prepared_buffersINS_12const_bufferELm3EEEE10do_performEPNS0_10reactor_opE, ptr %i.t, align 8, !tbaa !1065
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %i.m, ptr %i.u, align 8, !tbaa !3649
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i8 %i.o, ptr %i.v, align 4, !tbaa !3650
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !3540
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 %3, ptr %i.x, align 8, !tbaa !3651
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.z = load ptr, ptr %4, align 8, !tbaa !3642, !nonnull !347, !align !743
  store ptr %i.z, ptr %i.y, align 8, !tbaa !1351
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false), !tbaa.struct !3536
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !3641
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !3641
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1563
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !1563
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  tail call void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5) #43, !inline_history !9118
  store ptr %i.j, ptr %i.k, align 8, !tbaa !3652
  %i.ai = load i8, ptr %i.n, align 4, !tbaa !1361 ; 2 uses
  %i.aj = and i8 %i.ai, 16
  %.not = icmp eq i8 %i.aj, 0
  br i1 %.not, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !3539 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.an = add i64 %i.al, 1152921504606846975
  %i.ao = and i64 %i.an, 1152921504606846975
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 63)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %.013.i.i = phi i64 [ %i.aq, %bb.e ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0712.i.i = phi ptr [ %i.ap, %bb.e ], [ %2, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.3.0..07.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..07.sroa_idx.i.i, align 8, !tbaa !340
  %.not.i.i20 = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i20, label %bb.e, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 16
  %i.aq = add nuw nsw i64 %.013.i.i, 1
  %exitcond.i = icmp eq i64 %.013.i.i, %umin.i
  br i1 %exitcond.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread, label %.lr.ph.i.i, !llvm.loop !193

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.c
  %i.ar = and i8 %i.ai, 3
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit
  %i.as = load i32, ptr %1, align 8, !tbaa !1358
  %i.at = invoke noundef zeroext i1 @_ZN4asio6detail10socket_ops25set_internal_non_blockingEiRhbRSt10error_code(i32 noundef %i.as, ptr noundef nonnull align 1 dereferenceable(1) %i.n, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %bb.f
  br i1 %i.at, label %bb.g, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread

bb.g:                                             ; preds = %.noexc21, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !347, !align !743
  %i.av = load i32, ptr %1, align 8, !tbaa !1358
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4asio6detail13epoll_reactor8start_opEiiRPNS1_16descriptor_stateEPNS0_10reactor_opEbb(ptr noundef nonnull align 8 dereferenceable(216) %i.au, i32 noundef 1, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext true)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit unwind label %bb.h

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread: ; preds = %bb.e, %bb.d, %.noexc21
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !347, !align !743
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !953, !nonnull !347, !align !743
  invoke void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.az, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit unwind label %bb.h

_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit: ; preds = %bb.g, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  ret void

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3652 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !810
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !824
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_ED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #51
  unreachable

_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_ED2Ev.exit.i: ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !3652
  br label %bb.d

end_hunk_3
begin_hunk_4_@_ZN4asio6detail17executor_function8completeINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSM_EUlvE_EESaIvEEEvPNS1_9impl_baseEb:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !972  ; 4 uses
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %.thread.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !416
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !416
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %.lcssa.i.i.i = phi i64 [ 4, %.preheader.preheader.i.i.i ], [ 5, %.preheader.1.i.i.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.lcssa.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !285
  store i8 %i.r, ptr %0, align 8, !tbaa !285
  store ptr %0, ptr %i.p, align 8, !tbaa !416
  br label %bb.c

.thread.i.i.i:                                    ; preds = %.preheader.1.i.i.i, %_ZN4asio6detail14thread_context24top_of_thread_call_stackEv.exit.i.i, %bb.a
  call void @free(ptr noundef nonnull %0) #43
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !3665
  br i1 %1, label %bb.d, label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSM_EUlvE_EESaIvEE3ptrD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #55
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 125, ptr %i.t, align 8, !tbaa !286
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !452
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !1113 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr nonnull %i.u)
          to label %_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSM_EUlvE_EESaIvEE3ptrD2Ev.exit unwind label %bb.e, !inline_history !9160

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSM_EUlvE_EESaIvEE3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.w

_ZN4asio6detail17executor_function4implINS0_7binder0IZZN7coro_io8async_ioISt4pairISt10error_codemEZNS4_11async_writeINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEEEN12async_simple4coro4LazyIS8_EERT_T0_EUlOSM_E_SE_EENSK_ISM_EESO_RT1_ENUlSM_E0_clINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEDaSM_EUlvE_EESaIvEE3ptrD2Ev.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayINS_12const_bufferELm3EEPKS8_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSD_11async_writeIS6_S9_EEN12async_simple4coro4LazyISH_EERT_T0_EUlOSN_E_S6_EENSL_ISN_EESP_RT1_ENUlSN_E0_clINSD_21callback_awaitor_baseISH_NSD_16callback_awaitorISH_EEE15awaitor_handlerEEEDaSN_EUlDpOT_E_EclESG_mi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.asio::detail::prepared_buffers", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.a, align 8, !tbaa !3661
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0
  %i.b = select i1 %.not.i.i, i64 65536, i64 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !3526, !noalias !9168
  br label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %bb.b
  %i.c = phi i64 [ %.pre, %bb.b ], [ %i.be, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 2 uses
  %.0 = phi i64 [ %i.b, %bb.b ], [ 65536, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !3666, !nonnull !347, !align !743 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9168)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !alias.scope !9168
  %.idx.i = shl nsw i64 %i.c, 4                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.g = icmp ne i64 %i.c, 3
  %i.h = icmp ne i64 %.0, 0
  %or.cond21.i = and i1 %i.h, %i.g
  br i1 %or.cond21.i, label %.lr.ph.preheader.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3528, !noalias !9168 ; 2 uses
  %.017.ptr.peel.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.sroa.0.0.copyload.peel.i = load ptr, ptr %.017.ptr.peel.i, align 8, !tbaa !416, !noalias !9168
  %.sroa.4.0..sroa_idx10.peel.i = getelementptr inbounds nuw i8, ptr %.017.ptr.peel.i, i64 8
  %.sroa.4.0.copyload.peel.i = load i64, ptr %.sroa.4.0..sroa_idx10.peel.i, align 8, !tbaa !340, !noalias !9168 ; 3 uses
  %spec.select.i.peel.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.4.0.copyload.peel.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.peel.i, i64 %spec.select.i.peel.i
  %i.l = sub nuw i64 %.sroa.4.0.copyload.peel.i, %spec.select.i.peel.i
  %spec.select.i7.peel.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.0) ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !416, !alias.scope !9168
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %spec.select.i7.peel.i, ptr %.sroa.4.0..sroa_idx.peel.i, align 8, !tbaa !340, !alias.scope !9168
  %i.m = sub nsw i64 %.0, %spec.select.i7.peel.i  ; 2 uses
  %.not.not.peel.i = icmp ugt i64 %.sroa.4.0.copyload.peel.i, %i.j
  br i1 %.not.not.peel.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader.i
  store i64 1, ptr %i.f, align 8, !tbaa !3539, !alias.scope !9168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i
  %i.n = phi i64 [ 1, %bb.c ], [ 0, %.lr.ph.preheader.i ]
  %.017.add.peel.i = add nsw i64 %.idx.i, 16      ; 2 uses
  %i.o = icmp ne i64 %.017.add.peel.i, 48
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.peel.i = and i1 %i.o, %i.p
  br i1 %or.cond.peel.i, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.q = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %.024.i = phi i64 [ %i.s, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %.017.idx22.i = phi i64 [ %.017.add.i, %bb.f ], [ %.017.add.peel.i, %bb.d ] ; 2 uses
  %.017.ptr.i = getelementptr inbounds i8, ptr %i.e, i64 %.017.idx22.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.017.ptr.i, align 8, !tbaa !416, !noalias !9168
  %.sroa.4.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.017.ptr.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx10.i, align 8, !tbaa !340, !noalias !9168 ; 2 uses
  %spec.select.i7.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i, i64 %.024.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.q ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.r, align 8, !tbaa !416, !alias.scope !9168
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %spec.select.i7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !340, !alias.scope !9168
  %i.s = sub i64 %.024.i, %spec.select.i7.i       ; 2 uses
  %.not.not.not.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.not.not.i, label %.lr.ph._crit_edge.i, label %bb.e

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !9168
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %i.q, 1                  ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !tbaa !3539, !alias.scope !9168
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph._crit_edge.i
  %i.u = phi i64 [ %.pre.i, %.lr.ph._crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %.017.add.i = add nsw i64 %.017.idx22.i, 16     ; 2 uses
  %i.v = icmp ne i64 %.017.add.i, 48
  %i.w = icmp ne i64 %i.s, 0
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp ult i64 %i.u, 3
  %i.y = select i1 %or.cond.i, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit, !llvm.loop !189

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit: ; preds = %bb.f, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !1357
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS4_Lm3EEPKS4_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISB_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SB_EENSP_ISR_EEST_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESA_EEvRNS1_24base_implementation_typeERKSR_iRST_RKSX_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ac), !inline_history !9164
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.j

_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3537
  %i.af = add i64 %i.ae, %3                       ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !3537
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3526 ; 5 uses
  %.idx.i10 = shl nsw i64 %i.ah, 4                ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 3
  %i.aj = icmp ne i64 %3, 0                       ; 2 uses
  %i.ak = and i1 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph.i14, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

.lr.ph.i14:                                       ; preds = %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %.promoted.i = load i64, ptr %i.al, align 8, !tbaa !3528 ; 2 uses
  %.012.ptr.i.peel = getelementptr i8, ptr %0, i64 %.idx.i10
  %.sroa.4.0..sroa_idx.i15.peel = getelementptr i8, ptr %.012.ptr.i.peel, i64 16
  %.sroa.4.0.copyload.i16.peel = load i64, ptr %.sroa.4.0..sroa_idx.i15.peel, align 8, !tbaa !340
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i16.peel, i64 %.promoted.i) ; 2 uses
  %i.an = icmp ult i64 %3, %i.am
  br i1 %i.an, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i14
  %i.ao = sub nuw i64 %3, %i.am                   ; 2 uses
  %i.ap = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !3526
  %.012.add.i.peel = add nsw i64 %.idx.i10, 16    ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !3528
  %i.aq = icmp ne i64 %.012.add.i.peel, 48
  %i.ar = icmp ne i64 %i.ao, 0
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread

.peel.next:                                       ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.ay, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %.018.i = phi i64 [ %i.ax, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  %.012.idx17.i = phi i64 [ %.012.add.i, %bb.h ], [ %.012.add.i.peel, %bb.g ] ; 2 uses
  %.012.ptr.i = getelementptr i8, ptr %0, i64 %.012.idx17.i
  %.sroa.4.0..sroa_idx.i15 = getelementptr i8, ptr %.012.ptr.i, i64 16
  %.sroa.4.0.copyload.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !340 ; 2 uses
  %i.au = icmp ult i64 %.018.i, %.sroa.4.0.copyload.i16
  br i1 %i.au, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %.peel.next, %.lr.ph.i14
  %i.av = phi i64 [ %i.ah, %.lr.ph.i14 ], [ %i.at, %.peel.next ]
  %.lcssa = phi i64 [ %.promoted.i, %.lr.ph.i14 ], [ 0, %.peel.next ]
  %.018.i.lcssa = phi i64 [ %3, %.lr.ph.i14 ], [ %.018.i, %.peel.next ]
  %i.aw = add i64 %.018.i.lcssa, %.lcssa
  store i64 %i.aw, ptr %i.al, align 8, !tbaa !3528
  br label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit

bb.h:                                             ; preds = %.peel.next
  %i.ax = sub nuw i64 %.018.i, %.sroa.4.0.copyload.i16 ; 2 uses
  %i.ay = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !3526
  %.012.add.i = add nsw i64 %.012.idx17.i, 16     ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !3528
  %i.az = icmp ne i64 %.012.add.i, 48
  %i.ba = icmp ne i64 %i.ax, 0
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.peel.next, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit, !llvm.loop !9165

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit: ; preds = %bb.h, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12, %.thread.i
  %i.bc = phi i64 [ %i.av, %.thread.i ], [ %i.ah, %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i12 ], [ %i.ay, %bb.h ]
  %i.bd = icmp ne i32 %1, 0
  %or.cond.not = or i1 %i.bd, %i.aj
  br i1 %or.cond.not, label %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, label %bb.i

_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread: ; preds = %bb.g, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.be = phi i64 [ %i.bc, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit ], [ %i.ap, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !3538
  %.not = icmp ult i64 %i.af, %i.bg
  %.not.i.i17.not = icmp eq i32 %1, 0
  %or.cond = select i1 %.not, i1 %.not.i.i17.not, i1 false
  br i1 %or.cond, label %_ZSt9__advanceIPKN4asio12const_bufferElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.i, !llvm.loop !9166

bb.i:                                             ; preds = %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit.thread, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7consumeEm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9169, !nonnull !347, !align !743
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1512
  %i.bl = tail call noundef zeroext i1 @_ZN12async_simple4Slot5clearENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, i64 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !1757 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i32 %1, ptr %i.bn, align 8, !tbaa !286
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !452
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.af, ptr %i.bo, align 8, !tbaa !340
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !1113 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr nonnull %i.bp), !inline_history !9167
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4asio6detail17consuming_buffersINS_12const_bufferESt5arrayIS2_Lm3EEPKS2_E7prepareEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail28reactive_socket_service_base10async_sendINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS4_Lm3EEPKS4_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSH_11async_writeISB_SD_EEN12async_simple4coro4LazyISL_EERT_T0_EUlOSR_E_SB_EENSP_ISR_EEST_RT1_ENUlSR_E0_clINSH_21callback_awaitor_baseISL_NSH_16callback_awaitorISL_EEE15awaitor_handlerEEEDaSR_EUlDpOT_E_EESA_EEvRNS1_24base_implementation_typeERKSR_iRST_RKSX_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(56) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.asio::detail::reactive_socket_send_op<asio::detail::prepared_buffers<asio::const_buffer, 3>, asio::detail::write_op<asio::basic_stream_socket<asio::ip::tcp>, std::array<asio::const_buffer, 3>, const asio::const_buffer *, asio::detail::transfer_all_t, (lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:321:17)>, asio::any_io_executor>::ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3661
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %4, ptr %6, align 8, !tbaa !3670
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !971  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !972
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = tail call noundef ptr @_ZN4asio6detail16thread_info_base8allocateINS1_11default_tagEEEPvT_PS1_mm(ptr noundef %i.i, i64 noundef 304, i64 noundef 16) ; 19 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !3671
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %1, align 8, !tbaa !1358
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !1361
  store ptr null, ptr %i.j, align 8, !tbaa !947
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E11do_completeEPvPNS0_19scheduler_operationERKSJ_m, ptr %i.p, align 8, !tbaa !955
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !991
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !453
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr @_ZN4asio6detail28reactive_socket_send_op_baseINS0_16prepared_buffersINS_12const_bufferELm3EEEE10do_performEPNS0_10reactor_opE, ptr %i.t, align 8, !tbaa !1065
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %i.m, ptr %i.u, align 8, !tbaa !3649
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i8 %i.o, ptr %i.v, align 4, !tbaa !3650
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !3540
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 %3, ptr %i.x, align 8, !tbaa !3651
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.z = load ptr, ptr %4, align 8, !tbaa !3666, !nonnull !347, !align !743
  store ptr %i.z, ptr %i.y, align 8, !tbaa !1351
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false), !tbaa.struct !3536
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !3661
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !3661
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !1760
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  tail call void @_ZN4asio6detail17handler_work_baseINS_15any_io_executorEvNS_10io_contextENS_8executorEvEC2EiiRKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %5) #43, !inline_history !9170
  store ptr %i.j, ptr %i.k, align 8, !tbaa !3672
  %i.ah = load i8, ptr %i.n, align 4, !tbaa !1361 ; 2 uses
  %i.ai = and i8 %i.ah, 16
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !3539 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.am = add i64 %i.ak, 1152921504606846975
  %i.an = and i64 %i.am, 1152921504606846975
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 63)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %.013.i.i = phi i64 [ %i.ap, %bb.e ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0712.i.i = phi ptr [ %i.ao, %bb.e ], [ %2, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.3.0..07.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..07.sroa_idx.i.i, align 8, !tbaa !340
  %.not.i.i20 = icmp eq i64 %.sroa.3.0.copyload.i.i, 0
  br i1 %.not.i.i20, label %bb.e, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 16
  %i.ap = add nuw nsw i64 %.013.i.i, 1
  %exitcond.i = icmp eq i64 %.013.i.i, %umin.i
  br i1 %exitcond.i, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread, label %.lr.ph.i.i, !llvm.loop !193

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit: ; preds = %.lr.ph.i.i, %bb.c
  %i.aq = and i8 %i.ah, 3
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit
  %i.ar = load i32, ptr %1, align 8, !tbaa !1358
  %i.as = invoke noundef zeroext i1 @_ZN4asio6detail10socket_ops25set_internal_non_blockingEiRhbRSt10error_code(i32 noundef %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %i.n, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %bb.f
  br i1 %i.as, label %bb.g, label %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread

bb.g:                                             ; preds = %.noexc21, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit
  %i.at = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !347, !align !743
  %i.au = load i32, ptr %1, align 8, !tbaa !1358
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4asio6detail13epoll_reactor8start_opEiiRPNS1_16descriptor_stateEPNS0_10reactor_opEbb(ptr noundef nonnull align 8 dereferenceable(216) %i.at, i32 noundef 1, i32 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c, i1 noundef zeroext true)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit unwind label %bb.h

_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread: ; preds = %bb.e, %bb.d, %.noexc21
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1360, !nonnull !347, !align !743
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !953, !nonnull !347, !align !743
  invoke void @_ZN4asio6detail9scheduler25post_immediate_completionEPNS0_19scheduler_operationEb(ptr noundef nonnull align 8 dereferenceable(256) %i.ay, ptr noundef nonnull %i.j, i1 noundef zeroext %i.c)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit unwind label %bb.h

_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev.exit: ; preds = %bb.g, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  ret void

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN4asio6detail23buffer_sequence_adapterINS_12const_bufferENS0_16prepared_buffersIS2_Lm3EEEE9all_emptyERKS4_.exit.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_E3ptrD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3672 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !810
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !824
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_ED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #51
  unreachable

_ZN4asio6detail23reactive_socket_send_opINS0_16prepared_buffersINS_12const_bufferELm3EEENS0_8write_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEESt5arrayIS3_Lm3EEPKS3_NS0_14transfer_all_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_11async_writeISA_SC_EEN12async_simple4coro4LazyISK_EERT_T0_EUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENUlSQ_E0_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EES9_ED2Ev.exit.i: ; preds = %bb.b
end_hunk_4
