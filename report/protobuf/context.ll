inline.NumInlined: 382
inline.NumDeleted: 175
begin_hunk_0_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.cy = load i128, ptr %i.cx, align 1
  %i.cz = xor i128 %i.cy, 133501156087149224510585114757392529509
  %i.da = getelementptr i8, ptr %i.cx, i64 16
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = zext i32 %i.db to i128
  %i.dd = xor i128 %i.dc, 1852139365
  %i.de = or i128 %i.cz, %i.dd
  %i.df = icmp ne i128 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = icmp eq i64 %i.cw, 7
  %or.cond.i.i25.i.i.i.i.i.i = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond.i.i25.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i": ; preds = %bb.f
  %i.dj = load i32, ptr %i.ct, align 1
  %i.dk = xor i32 %i.dj, 1650552421
  %i.dl = getelementptr i8, ptr %i.ct, i64 3
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = xor i32 %i.dm, 1684368482
  %i.do = or i32 %i.dk, %i.dn
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i", %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i.i.i"
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.042.052.i.i.i.i.i.i, i64 256
  %i.dt = add nsw i64 %.053.i.i.i.i.i.i, -1
  %i.du = icmp sgt i64 %.053.i.i.i.i.i.i, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !16

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre54.i.i.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi55.i.i.i.i.i.i = phi i64 [ %.pre54.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.d, %bb.b ]
  %.sroa.042.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %bb.b ] ; 8 uses
  %i.dv = ashr exact i64 %.pre-phi55.i.i.i.i.i.i, 6
  switch i64 %i.dv, label %.thread [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i.i, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i.i, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15 ; 2 uses
  %i.ea = icmp eq i64 %i.dx, 20
  br i1 %i.ea, label %bb.h, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i.i, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = load ptr, ptr %.sroa.042.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ee = load i128, ptr %i.ed, align 1
  %i.ef = xor i128 %i.ee, 133501156087149224510585114757392529509
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = zext i32 %i.eh to i128
  %i.ej = xor i128 %i.ei, 1852139365
  %i.ek = or i128 %i.ef, %i.ej
  %i.el = icmp ne i128 %i.ek, 0
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = icmp eq i64 %i.ec, 7
  %or.cond.i.i29.i.i.i.i.i.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond.i.i29.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i.i.i": ; preds = %bb.h
  %i.ep = load i32, ptr %i.dz, align 1
  %i.eq = xor i32 %i.ep, 1650552421
  %i.er = getelementptr i8, ptr %i.dz, i64 3
  %i.es = load i32, ptr %i.er, align 1
  %i.et = xor i32 %i.es, 1684368482
  %i.eu = or i32 %i.eq, %i.et
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i.i.i", %bb.h, %bb.g
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i.i.i, i64 64
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.sroa.042.1.i.i.i.i.i.i = phi ptr [ %i.ey, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i.i.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i.i.i, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 2 uses
  %i.fd = icmp eq i64 %i.fa, 20
  br i1 %i.fd, label %bb.j, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i.i.i, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = load ptr, ptr %.sroa.042.1.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.fh = load i128, ptr %i.fg, align 1
  %i.fi = xor i128 %i.fh, 133501156087149224510585114757392529509
  %i.fj = getelementptr i8, ptr %i.fg, i64 16
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = zext i32 %i.fk to i128
  %i.fm = xor i128 %i.fl, 1852139365
  %i.fn = or i128 %i.fi, %i.fm
  %i.fo = icmp ne i128 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  %i.fr = icmp eq i64 %i.ff, 7
  %or.cond.i.i33.i.i.i.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond.i.i33.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i.i.i": ; preds = %bb.j
  %i.fs = load i32, ptr %i.fc, align 1
  %i.ft = xor i32 %i.fs, 1650552421
  %i.fu = getelementptr i8, ptr %i.fc, i64 3
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = xor i32 %i.fv, 1684368482
  %i.fx = or i32 %i.ft, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.loopexit, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i.i.i", %bb.j, %bb.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i.i.i, i64 64
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.sroa.042.2.i.i.i.i.i.i = phi ptr [ %i.gb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.042.2.i.i.i.i.i.i, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.042.2.i.i.i.i.i.i, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !15 ; 2 uses
  %i.gg = icmp eq i64 %i.gd, 20
  br i1 %i.gg, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.042.2.i.i.i.i.i.i, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !10
  %i.gj = load ptr, ptr %.sroa.042.2.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.gk = load i128, ptr %i.gj, align 1
  %i.gl = xor i128 %i.gk, 133501156087149224510585114757392529509
  %i.gm = getelementptr i8, ptr %i.gj, i64 16
  %i.gn = load i32, ptr %i.gm, align 1
  %i.go = zext i32 %i.gn to i128
  %i.gp = xor i128 %i.go, 1852139365
  %i.gq = or i128 %i.gl, %i.gp
  %i.gr = icmp ne i128 %i.gq, 0
  %i.gs = zext i1 %i.gr to i32
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = icmp eq i64 %i.gi, 7
  %or.cond.i.i37.i.i.i.i.i.i = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond.i.i37.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i.i.i", label %.thread

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i.i.i": ; preds = %bb.l
  %i.gv = load i32, ptr %i.gf, align 1
  %i.gw = xor i32 %i.gv, 1650552421
  %i.gx = getelementptr i8, ptr %i.gf, i64 3
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = xor i32 %i.gy, 1684368482
  %i.ha = or i32 %i.gw, %i.gz
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = zext i1 %i.hb to i32
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.042.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i.i.i" ], [ %.sroa.042.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i.i.i" ], [ %i.aj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i.i.i" ], [ %.sroa.042.052.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i.i.i" ], [ %i.cp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i.i.i" ], [ %i.bm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i.i.i" ]
  %.not = icmp eq ptr %.val33, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.k, %bb.l, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_0EclINS_17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, i64 178, ptr nonnull @.str)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %.thread
  %i.he = load i64, ptr %5, align 8, !tbaa !18    ; 2 uses
  store i64 %i.he, ptr %0, align 8, !tbaa !18
  store i64 55, ptr %5, align 8, !tbaa !18
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.n, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !20

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit unwind label %.body

.body:                                            ; preds = %bb.n
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #13
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #13
  br label %bb.s

_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit: ; preds = %bb.n
  %.pre312 = load i64, ptr %5, align 8, !tbaa !18 ; 2 uses
  %i.hh = trunc i64 %.pre312 to i1
  br i1 %i.hh, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit
  %10 = inttoptr i64 %.pre312 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #14
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.m, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bk

bb.q:                                             ; preds = %bb.a
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.r:                                             ; preds = %.thread
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.r
  %.pn = phi { ptr, i32 } [ %i.hg, %.body ], [ %i.hl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bm

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  store ptr %i.hn, ptr %i.hm, align 8, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i64 0, ptr %i.ho, align 8, !tbaa !10
  store i8 0, ptr %i.hn, align 8, !tbaa !22
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i8 0, ptr %i.hp, align 8, !tbaa !23
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 41 ; 2 uses
  store i8 0, ptr %i.hq, align 1, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 9 uses
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hs, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  store i64 12, ptr %i.ht, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 76
  store i8 0, ptr %i.hu, align 4, !tbaa !22
  br i1 %i.f, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.hv = and i64 %i.d, -256
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.hv ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i", %.lr.ph.preheader.i.i.i.i
  %.062.i.i.i.i = phi i64 [ %i.jw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i" ], [ %i.e, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.042.061.i.i.i.i = phi ptr [ %i.jv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i" ], [ %.val, %.lr.ph.preheader.i.i.i.i ] ; 13 uses
  %i.hw = getelementptr i8, ptr %.sroa.042.061.i.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.hw, align 8, !tbaa !10
  %i.hx = icmp eq i64 %.val1.i.i.i.i.i, 6
  br i1 %i.hx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.042.061.i.i.i.i, align 8 ; 2 uses
  %i.hy = load i32, ptr %.val.i.i.i.i.i, align 1
  %i.hz = xor i32 %i.hy, 1852990827
  %i.ia = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4
  %i.ib = load i16, ptr %i.ia, align 1
  %i.ic = zext i16 %i.ib to i32
  %i.id = xor i32 %i.ic, 27749
  %i.ie = or i32 %i.hz, %i.id
  %i.if = icmp ne i32 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.ii = getelementptr i8, ptr %.sroa.042.061.i.i.i.i, i64 72
  %.val1.i16.i.i.i.i = load i64, ptr %i.ii, align 8, !tbaa !10
  %i.ij = icmp eq i64 %.val1.i16.i.i.i.i, 6
  br i1 %i.ij, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 64
  %.val.i17.i.i.i.i = load ptr, ptr %i.ik, align 8 ; 2 uses
  %i.il = load i32, ptr %.val.i17.i.i.i.i, align 1
  %i.im = xor i32 %i.il, 1852990827
  %i.in = getelementptr i8, ptr %.val.i17.i.i.i.i, i64 4
  %i.io = load i16, ptr %i.in, align 1
  %i.ip = zext i16 %i.io to i32
  %i.iq = xor i32 %i.ip, 27749
  %i.ir = or i32 %i.im, %i.iq
  %i.is = icmp ne i32 %i.ir, 0
  %i.it = zext i1 %i.is to i32
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit355", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.iv = getelementptr i8, ptr %.sroa.042.061.i.i.i.i, i64 136
  %.val1.i20.i.i.i.i = load i64, ptr %i.iv, align 8, !tbaa !10
  %i.iw = icmp eq i64 %.val1.i20.i.i.i.i, 6
  br i1 %i.iw, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 128
  %.val.i21.i.i.i.i = load ptr, ptr %i.ix, align 8 ; 2 uses
  %i.iy = load i32, ptr %.val.i21.i.i.i.i, align 1
  %i.iz = xor i32 %i.iy, 1852990827
  %i.ja = getelementptr i8, ptr %.val.i21.i.i.i.i, i64 4
  %i.jb = load i16, ptr %i.ja, align 1
  %i.jc = zext i16 %i.jb to i32
  %i.jd = xor i32 %i.jc, 27749
  %i.je = or i32 %i.iz, %i.jd
  %i.jf = icmp ne i32 %i.je, 0
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit353", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.ji = getelementptr i8, ptr %.sroa.042.061.i.i.i.i, i64 200
  %.val1.i24.i.i.i.i = load i64, ptr %i.ji, align 8, !tbaa !10
  %i.jj = icmp eq i64 %.val1.i24.i.i.i.i, 6
  br i1 %i.jj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 192
  %.val.i25.i.i.i.i = load ptr, ptr %i.jk, align 8 ; 2 uses
  %i.jl = load i32, ptr %.val.i25.i.i.i.i, align 1
  %i.jm = xor i32 %i.jl, 1852990827
  %i.jn = getelementptr i8, ptr %.val.i25.i.i.i.i, i64 4
  %i.jo = load i16, ptr %i.jn, align 1
  %i.jp = zext i16 %i.jo to i32
  %i.jq = xor i32 %i.jp, 27749
  %i.jr = or i32 %i.jm, %i.jq
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = zext i1 %i.js to i32
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 256
  %i.jw = add nsw i64 %.062.i.i.i.i, -1
  %i.jx = icmp sgt i64 %.062.i.i.i.i, 1
  br i1 %i.jx, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !28

._crit_edge.loopexit.i.i.i.i:                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre67.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.t
  %.pre-phi68.i.i.i.i = phi i64 [ %.pre67.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.t ]
  %.sroa.042.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val, %bb.t ] ; 6 uses
  %i.jy = ashr exact i64 %.pre-phi68.i.i.i.i, 6
  switch i64 %i.jy, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread" [
    i64 3, label %bb.u
    i64 2, label %bb.v
    i64 1, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.jz = getelementptr i8, ptr %.sroa.042.0.lcssa.i.i.i.i, i64 8
  %.val1.i28.i.i.i.i = load i64, ptr %i.jz, align 8, !tbaa !10
  %i.ka = icmp eq i64 %.val1.i28.i.i.i.i, 6
  br i1 %i.ka, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i": ; preds = %bb.u
  %.val.i29.i.i.i.i = load ptr, ptr %.sroa.042.0.lcssa.i.i.i.i, align 8 ; 2 uses
  %i.kb = load i32, ptr %.val.i29.i.i.i.i, align 1
  %i.kc = xor i32 %i.kb, 1852990827
  %i.kd = getelementptr i8, ptr %.val.i29.i.i.i.i, i64 4
  %i.ke = load i16, ptr %i.kd, align 1
  %i.kf = zext i16 %i.ke to i32
  %i.kg = xor i32 %i.kf, 27749
  %i.kh = or i32 %i.kc, %i.kg
  %i.ki = icmp ne i32 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i", %bb.u
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i, i64 64
  br label %bb.v

bb.v:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i", %._crit_edge.i.i.i.i
  %.sroa.042.1.i.i.i.i = phi ptr [ %i.kl, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.km = getelementptr i8, ptr %.sroa.042.1.i.i.i.i, i64 8
  %.val1.i32.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !10
  %i.kn = icmp eq i64 %.val1.i32.i.i.i.i, 6
  br i1 %i.kn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i": ; preds = %bb.v
  %.val.i33.i.i.i.i = load ptr, ptr %.sroa.042.1.i.i.i.i, align 8 ; 2 uses
  %i.ko = load i32, ptr %.val.i33.i.i.i.i, align 1
  %i.kp = xor i32 %i.ko, 1852990827
  %i.kq = getelementptr i8, ptr %.val.i33.i.i.i.i, i64 4
  %i.kr = load i16, ptr %i.kq, align 1
  %i.ks = zext i16 %i.kr to i32
  %i.kt = xor i32 %i.ks, 27749
  %i.ku = or i32 %i.kp, %i.kt
  %i.kv = icmp ne i32 %i.ku, 0
  %i.kw = zext i1 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i", %bb.v
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i.i.i, i64 64
  br label %bb.w

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i", %._crit_edge.i.i.i.i
  %.sroa.042.2.i.i.i.i = phi ptr [ %i.ky, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.kz = getelementptr i8, ptr %.sroa.042.2.i.i.i.i, i64 8
  %.val1.i36.i.i.i.i = load i64, ptr %i.kz, align 8, !tbaa !10
  %i.la = icmp eq i64 %.val1.i36.i.i.i.i, 6
  br i1 %i.la, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i", label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i": ; preds = %bb.w
  %.val.i37.i.i.i.i = load ptr, ptr %.sroa.042.2.i.i.i.i, align 8 ; 2 uses
  %i.lb = load i32, ptr %.val.i37.i.i.i.i, align 1
  %i.lc = xor i32 %i.lb, 1852990827
  %i.ld = getelementptr i8, ptr %.val.i37.i.i.i.i, i64 4
  %i.le = load i16, ptr %i.ld, align 1
  %i.lf = zext i16 %i.le to i32
  %i.lg = xor i32 %i.lf, 27749
  %i.lh = or i32 %i.lc, %i.lg
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = zext i1 %i.li to i32
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i"
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 192
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit353": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i"
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 128
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit355": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i"
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i, i64 64
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit", %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit353", %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit355", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.042.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i" ], [ %.sroa.042.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i" ], [ %i.ln, %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit355" ], [ %i.ll, %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit" ], [ %i.lm, %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit353" ], [ %.sroa.042.061.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i" ] ; 3 uses
  %i.lo = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.val33
  br i1 %i.lo, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread", label %bb.ad

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread": ; preds = %bb.w, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_1EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i", %._crit_edge.i.i.i.i, %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %7, i64 65, ptr nonnull @.str.1)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"
  %i.lp = load i64, ptr %7, align 8, !tbaa !18    ; 2 uses
  store i64 %i.lp, ptr %0, align 8, !tbaa !18
  store i64 55, ptr %7, align 8, !tbaa !18
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.y, label %_ZN4absl12lts_202505126StatusD2Ev.exit47, !prof !20

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit46 unwind label %.body44

.body44:                                          ; preds = %bb.y
  %i.lr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #13
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  br label %bb.ac

_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit46: ; preds = %bb.y
  %.pre311 = load i64, ptr %7, align 8, !tbaa !18 ; 2 uses
  %i.ls = trunc i64 %.pre311 to i1
  br i1 %i.ls, label %_ZN4absl12lts_202505126StatusD2Ev.exit47, label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit46
  %11 = inttoptr i64 %.pre311 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit47 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #14
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit47:         ; preds = %bb.x, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit46, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bi

bb.ab:                                            ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.body44, %bb.ab
  %.pn27 = phi { ptr, i32 } [ %i.lr, %.body44 ], [ %i.lv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bj

bb.ad:                                            ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_1EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 32
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 40
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !10 ; 2 uses
  %cond = icmp eq i64 %i.ly, 3
  %.pre = load ptr, ptr %i.lw, align 8, !tbaa !15 ; 5 uses
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread235

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ad
  %i.lz = load i16, ptr %.pre, align 1
  %i.ma = xor i16 %i.lz, 28789
  %i.mb = getelementptr i8, ptr %.pre, i64 2
  %i.mc = load i8, ptr %i.mb, align 1
  %i.md = zext i8 %i.mc to i16
  %i.me = xor i16 %i.md, 98
  %i.mf = or i16 %i.ma, %i.me
  %i.mg = icmp ne i16 %i.mf, 0
  %i.mh = zext i1 %i.mg to i32
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.mj = load i16, ptr %.pre, align 1
  %i.mk = xor i16 %i.mj, 28771
  %i.ml = getelementptr i8, ptr %.pre, i64 2
  %i.mm = load i8, ptr %i.ml, align 1
  %i.mn = zext i8 %i.mm to i16
  %i.mo = xor i16 %i.mn, 112
  %i.mp = or i16 %i.mk, %i.mo
  %i.mq = icmp ne i16 %i.mp, 0
  %i.mr = zext i1 %i.mq to i32
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread235

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread235: ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.mt, ptr %9, align 8, !tbaa !21, !alias.scope !29
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.mu, align 8, !tbaa !10, !alias.scope !29
  store i8 0, ptr %i.mt, align 8, !tbaa !22, !alias.scope !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !29
  store i64 %i.ly, ptr %3, align 16, !noalias !29
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.pre, ptr %i.mv, align 8, !noalias !29
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %9, i64 51, ptr nonnull @.str.4, ptr noundef nonnull %3, i64 noundef 1)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread235
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mx = load ptr, ptr %9, align 8, !tbaa !15, !alias.scope !29 ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.mt
  br i1 %i.my, label %.body50, label %.body50.sink.split

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread235
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !29
  %i.mz = load ptr, ptr %9, align 8, !tbaa !15
  %i.na = load i64, ptr %i.mu, align 8, !tbaa !10
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %8, i64 %i.na, ptr %i.mz)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.nb = load i64, ptr %8, align 8, !tbaa !18    ; 2 uses
  store i64 %i.nb, ptr %0, align 8, !tbaa !18
  store i64 55, ptr %8, align 8, !tbaa !18
  %i.nc = icmp eq i64 %i.nb, 1
  br i1 %i.nc, label %bb.ah, label %_ZN4absl12lts_202505126StatusD2Ev.exit55, !prof !20

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit54 unwind label %.body52

.body52:                                          ; preds = %bb.ah
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %0) #13
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  br label %bb.al

_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit54: ; preds = %bb.ah
  %.pre304 = load i64, ptr %8, align 8, !tbaa !18 ; 2 uses
  %i.ne = trunc i64 %.pre304 to i1
  br i1 %i.ne, label %_ZN4absl12lts_202505126StatusD2Ev.exit55, label %bb.ai

bb.ai:                                            ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit54
  %12 = inttoptr i64 %.pre304 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit55 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #14
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit55:         ; preds = %bb.ag, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf8compiler4rust7OptionsEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES6_T_EE5valueEiE4typeELi0EEEOSB_.exit54, %bb.ai
  %i.nh = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.mt
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit55
  %i.nj = load i64, ptr %i.mt, align 8, !tbaa !22
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.bi

bb.ak:                                            ; preds = %bb.af
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.body52, %bb.ak
  %.pn19 = phi { ptr, i32 } [ %i.nd, %.body52 ], [ %i.nl, %bb.ak ] ; 2 uses
  %i.nm = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.mt
  br i1 %i.nn, label %.body50, label %.body50.sink.split

.body50.sink.split:                               ; preds = %bb.al, %bb.ae
  %.sink = phi ptr [ %i.mx, %bb.ae ], [ %i.nm, %bb.al ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.mw, %bb.ae ], [ %.pn19, %bb.al ]
  %i.no = load i64, ptr %i.mt, align 8, !tbaa !22
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.np) #15
  br label %.body50

.body50:                                          ; preds = %.body50.sink.split, %bb.al, %bb.ae
  %.pn19.pn = phi { ptr, i32 } [ %i.mw, %bb.ae ], [ %.pn19, %bb.al ], [ %.pn19.pn.ph, %.body50.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.bj

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %storemerge = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49 ]
  store i32 %storemerge, ptr %6, align 8, !tbaa !32
  br i1 %i.f, label %.lr.ph.preheader.i.i.i.i74, label %._crit_edge.i.i.i.i59

.lr.ph.preheader.i.i.i.i74:                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.nq = and i64 %i.d, -256
  %scevgep.i.i.i.i75 = getelementptr i8, ptr %.val, i64 %i.nq ; 2 uses
  br label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i", %.lr.ph.preheader.i.i.i.i74
  %.062.i.i.i.i77 = phi i64 [ %i.pn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i" ], [ %i.e, %.lr.ph.preheader.i.i.i.i74 ] ; 2 uses
  %.sroa.042.061.i.i.i.i78 = phi ptr [ %i.pm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i" ], [ %.val, %.lr.ph.preheader.i.i.i.i74 ] ; 13 uses
  %i.nr = getelementptr i8, ptr %.sroa.042.061.i.i.i.i78, i64 8
  %.val1.i.i.i.i.i79 = load i64, ptr %i.nr, align 8, !tbaa !10
  %i.ns = icmp eq i64 %.val1.i.i.i.i.i79, 13
  br i1 %i.ns, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i76
  %.val.i.i.i.i.i92 = load ptr, ptr %.sroa.042.061.i.i.i.i78, align 8 ; 2 uses
  %i.nt = load i64, ptr %.val.i.i.i.i.i92, align 1
  %i.nu = xor i64 %i.nt, 7020372283489350243
  %i.nv = getelementptr i8, ptr %.val.i.i.i.i.i92, i64 5
  %i.nw = load i64, ptr %i.nv, align 1
  %i.nx = xor i64 %i.nw, 7453010364987436383
  %i.ny = or i64 %i.nu, %i.nx
  %i.nz = icmp ne i64 %i.ny, 0
  %i.oa = zext i1 %i.nz to i32
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_2EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", %.lr.ph.i.i.i.i76
  %i.oc = getelementptr i8, ptr %.sroa.042.061.i.i.i.i78, i64 72
  %.val1.i16.i.i.i.i80 = load i64, ptr %i.oc, align 8, !tbaa !10
  %i.od = icmp eq i64 %.val1.i16.i.i.i.i80, 13
  br i1 %i.od, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i78, i64 64
  %.val.i17.i.i.i.i90 = load ptr, ptr %i.oe, align 8 ; 2 uses
  %i.of = load i64, ptr %.val.i17.i.i.i.i90, align 1
  %i.og = xor i64 %i.of, 7020372283489350243
  %i.oh = getelementptr i8, ptr %.val.i17.i.i.i.i90, i64 5
  %i.oi = load i64, ptr %i.oh, align 1
  %i.oj = xor i64 %i.oi, 7453010364987436383
  %i.ok = or i64 %i.og, %i.oj
  %i.ol = icmp ne i64 %i.ok, 0
  %i.om = zext i1 %i.ol to i32
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_2EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit363", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i.i.i"
  %i.oo = getelementptr i8, ptr %.sroa.042.061.i.i.i.i78, i64 136
  %.val1.i20.i.i.i.i81 = load i64, ptr %i.oo, align 8, !tbaa !10
  %i.op = icmp eq i64 %.val1.i20.i.i.i.i81, 13
  br i1 %i.op, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i78, i64 128
  %.val.i21.i.i.i.i88 = load ptr, ptr %i.oq, align 8 ; 2 uses
  %i.or = load i64, ptr %.val.i21.i.i.i.i88, align 1
  %i.os = xor i64 %i.or, 7020372283489350243
  %i.ot = getelementptr i8, ptr %.val.i21.i.i.i.i88, i64 5
  %i.ou = load i64, ptr %i.ot, align 1
  %i.ov = xor i64 %i.ou, 7453010364987436383
  %i.ow = or i64 %i.os, %i.ov
  %i.ox = icmp ne i64 %i.ow, 0
  %i.oy = zext i1 %i.ox to i32
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_2EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit361", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit19.thread.i.i.i.i"
  %i.pa = getelementptr i8, ptr %.sroa.042.061.i.i.i.i78, i64 200
  %.val1.i24.i.i.i.i82 = load i64, ptr %i.pa, align 8, !tbaa !10
  %i.pb = icmp eq i64 %.val1.i24.i.i.i.i82, 13
  br i1 %i.pb, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i78, i64 192
  %.val.i25.i.i.i.i86 = load ptr, ptr %i.pc, align 8 ; 2 uses
  %i.pd = load i64, ptr %.val.i25.i.i.i.i86, align 1
  %i.pe = xor i64 %i.pd, 7020372283489350243
  %i.pf = getelementptr i8, ptr %.val.i25.i.i.i.i86, i64 5
  %i.pg = load i64, ptr %i.pf, align 1
  %i.ph = xor i64 %i.pg, 7453010364987436383
  %i.pi = or i64 %i.pe, %i.ph
  %i.pj = icmp ne i64 %i.pi, 0
  %i.pk = zext i1 %i.pj to i32
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_2EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit23.thread.i.i.i.i"
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.042.061.i.i.i.i78, i64 256
  %i.pn = add nsw i64 %.062.i.i.i.i77, -1
  %i.po = icmp sgt i64 %.062.i.i.i.i77, 1
  br i1 %i.po, label %.lr.ph.i.i.i.i76, label %._crit_edge.loopexit.i.i.i.i83, !llvm.loop !33

._crit_edge.loopexit.i.i.i.i83:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit27.thread.i.i.i.i"
  %.pre.i.i.i.i84 = ptrtoint ptr %scevgep.i.i.i.i75 to i64
  %.pre67.i.i.i.i85 = sub i64 %i.b, %.pre.i.i.i.i84
  br label %._crit_edge.i.i.i.i59

._crit_edge.i.i.i.i59:                            ; preds = %._crit_edge.loopexit.i.i.i.i83, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre-phi68.i.i.i.i60 = phi i64 [ %.pre67.i.i.i.i85, %._crit_edge.loopexit.i.i.i.i83 ], [ %i.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.sroa.042.0.lcssa.i.i.i.i61 = phi ptr [ %scevgep.i.i.i.i75, %._crit_edge.loopexit.i.i.i.i83 ], [ %.val, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 6 uses
  %i.pp = ashr exact i64 %.pre-phi68.i.i.i.i60, 6
  switch i64 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit [
    i64 3, label %bb.am
    i64 2, label %bb.an
    i64 1, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i59
  %i.pq = getelementptr i8, ptr %.sroa.042.0.lcssa.i.i.i.i61, i64 8
  %.val1.i28.i.i.i.i71 = load i64, ptr %i.pq, align 8, !tbaa !10
  %i.pr = icmp eq i64 %.val1.i28.i.i.i.i71, 13
  br i1 %i.pr, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i": ; preds = %bb.am
  %.val.i29.i.i.i.i72 = load ptr, ptr %.sroa.042.0.lcssa.i.i.i.i61, align 8 ; 2 uses
  %i.ps = load i64, ptr %.val.i29.i.i.i.i72, align 1
  %i.pt = xor i64 %i.ps, 7020372283489350243
  %i.pu = getelementptr i8, ptr %.val.i29.i.i.i.i72, i64 5
  %i.pv = load i64, ptr %i.pu, align 1
  %i.pw = xor i64 %i.pv, 7453010364987436383
  %i.px = or i64 %i.pt, %i.pw
  %i.py = icmp ne i64 %i.px, 0
  %i.pz = zext i1 %i.py to i32
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_2EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i", %bb.am
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.042.0.lcssa.i.i.i.i61, i64 64
  br label %bb.an

bb.an:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i", %._crit_edge.i.i.i.i59
  %.sroa.042.1.i.i.i.i67 = phi ptr [ %i.qb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit31.thread.i.i.i.i" ], [ %.sroa.042.0.lcssa.i.i.i.i61, %._crit_edge.i.i.i.i59 ] ; 4 uses
  %i.qc = getelementptr i8, ptr %.sroa.042.1.i.i.i.i67, i64 8
  %.val1.i32.i.i.i.i68 = load i64, ptr %i.qc, align 8, !tbaa !10
  %i.qd = icmp eq i64 %.val1.i32.i.i.i.i68, 13
  br i1 %i.qd, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_2EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit35.i.i.i.i": ; preds = %bb.an
  %.val.i33.i.i.i.i69 = load ptr, ptr %.sroa.042.1.i.i.i.i67, align 8 ; 2 uses
  %i.qe = load i64, ptr %.val.i33.i.i.i.i69, align 1
  %i.qf = xor i64 %i.qe, 7020372283489350243
  %i.qg = getelementptr i8, ptr %.val.i33.i.i.i.i69, i64 5
  %i.qh = load i64, ptr %i.qg, align 1
  %i.qi = xor i64 %i.qh, 7453010364987436383
  %i.qj = or i64 %i.qf, %i.qi
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.be:                                            ; preds = %bb.bd
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i170, i64 32
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !15
  %i.xp = load i32, ptr %i.xo, align 1
  %i.xq = icmp ne i32 %i.xp, 1702195828
  %i.xr = zext i1 %i.xq to i32
  %i.xs = icmp eq i32 %i.xr, 0
  %i.xt = zext i1 %i.xs to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit201: ; preds = %bb.bd, %bb.be
  %i.xu = phi i8 [ 0, %bb.bd ], [ %i.xt, %bb.be ]
  store i8 %i.xu, ptr %i.hq, align 1, !tbaa !27
  br label %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_5EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"

"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_5EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread": ; preds = %bb.bc, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcSt11char_traitsIcEEE3$_5EclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcS9_SaIcEEESJ_ESt6vectorISK_SaISK_EEEEEEbT_.exit39.i.i.i.i", %._crit_edge.i.i.i.i165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit201, %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_5EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit"
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xw = load i32, ptr %6, align 8, !tbaa !32
  store i32 %i.xw, ptr %i.xv, align 8, !tbaa !32
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.xy, ptr %i.xx, align 8, !tbaa !21
  %i.xz = load ptr, ptr %i.hm, align 8, !tbaa !15 ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.hn
  br i1 %i.ya, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.bf:                                            ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_5EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"
  %i.yb = load i64, ptr %i.ho, align 8, !tbaa !10 ; 3 uses
  %i.yc = icmp ult i64 %i.yb, 16
  call void @llvm.assume(i1 %i.yc)
  %i.yd = add nuw nsw i64 %i.yb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xy, ptr noundef nonnull align 8 dereferenceable(1) %i.hn, i64 %i.yd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %"_ZN4absl12lts_202505129c_find_ifISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_ESaISA_EEZN6google8protobuf8compiler4rust7Options5ParseESt17basic_string_viewIcS7_EE3$_5EEDTcl5beginclsr3stdE7declvalIRT_EEEESM_OT0_.exit.thread"
  store ptr %i.xz, ptr %i.xx, align 8, !tbaa !15
  %i.ye = load i64, ptr %i.hn, align 8, !tbaa !22
  store i64 %i.ye, ptr %i.xy, align 8, !tbaa !22
  %.pre309 = load i64, ptr %i.ho, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bf
  %i.yf = phi i64 [ %.pre309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.yb, %bb.bf ]
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.yf, ptr %i.yg, align 8, !tbaa !10
  store ptr %i.hn, ptr %i.hm, align 8, !tbaa !15
  store i64 0, ptr %i.ho, align 8, !tbaa !10
  store i8 0, ptr %i.hn, align 8, !tbaa !22
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yi = load i16, ptr %i.hp, align 8
  store i16 %i.yi, ptr %i.yh, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.yk, ptr %i.yj, align 8, !tbaa !21
  %i.yl = load ptr, ptr %i.hr, align 8, !tbaa !15 ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.hs
  br i1 %i.ym, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.yn = load i64, ptr %i.ht, align 8, !tbaa !10 ; 3 uses
  %i.yo = icmp ult i64 %i.yn, 16
  call void @llvm.assume(i1 %i.yo)
  %i.yp = add nuw nsw i64 %i.yn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yk, ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i64 %i.yp, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.yl, ptr %i.yj, align 8, !tbaa !15
  %i.yq = load i64, ptr %i.hs, align 8, !tbaa !22
  store i64 %i.yq, ptr %i.yk, align 8, !tbaa !22
  %.pre310 = load i64, ptr %i.ht, align 8, !tbaa !10
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i, %bb.bg
  %i.yr = phi i64 [ %.pre310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i.i.i.i ], [ %i.yn, %bb.bg ]
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.yr, ptr %i.ys, align 8, !tbaa !10
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !15
  store i64 0, ptr %i.ht, align 8, !tbaa !10
  store i8 0, ptr %i.hs, align 8, !tbaa !22
  store i64 1, ptr %0, align 8, !tbaa !18
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit47
  %i.yt = load ptr, ptr %i.hr, align 8, !tbaa !15 ; 2 uses
  %i.yu = icmp eq ptr %i.yt, %i.hs
  br i1 %i.yu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202: ; preds = %bb.bi
  %i.yv = load i64, ptr %i.hs, align 8, !tbaa !22
  %i.yw = add i64 %i.yv, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yw) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202
  %i.yx = load ptr, ptr %i.hm, align 8, !tbaa !15 ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.hn
  br i1 %i.yy, label %_ZN6google8protobuf8compiler4rust7OptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203
  %i.yz = load i64, ptr %i.hn, align 8, !tbaa !22
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #15
  br label %_ZN6google8protobuf8compiler4rust7OptionsD2Ev.exit

_ZN6google8protobuf8compiler4rust7OptionsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.bk

bb.bj:                                            ; preds = %bb.aq, %bb.az, %.body50, %bb.ac
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.ac ], [ %i.rd, %bb.aq ], [ %.pn19.pn, %.body50 ], [ %i.tw, %bb.az ]
  call void @_ZN6google8protobuf8compiler4rust7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.bm

bb.bk:                                            ; preds = %_ZN6google8protobuf8compiler4rust7OptionsD2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.zb = load ptr, ptr %4, align 8, !tbaa !37    ; 3 uses
  %i.zc = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zb, %i.zc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bk, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.zo, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.zb, %bb.bk ] ; 5 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !15 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.zg = icmp eq ptr %i.ze, %i.zf
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.zh = load i64, ptr %i.zf, align 8, !tbaa !22
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.ze, i64 noundef %i.zi) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.zj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.zl = icmp eq ptr %i.zj, %i.zk
  br i1 %i.zl, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.zm = load i64, ptr %i.zk, align 8, !tbaa !22
  %i.zn = add i64 %i.zm, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zn) #15
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.zo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.zo, %i.zc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.bk
  %i.zp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.zb, %bb.bk ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.zp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.zq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !41
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %i.zp to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.zu) #15
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.bm:                                            ; preds = %bb.s, %bb.bj, %bb.q
  %.pn27.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hk, %bb.q ], [ %.pn27.pn, %bb.bj ], [ %.pn, %bb.s ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6google8protobuf8compiler23ParseGeneratorParameterESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcS4_SaIcEEESB_ESaISC_EE(i64, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #14
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler4rust7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !22
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #15
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !40

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #15
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler4rust28IsInCurrentlyGeneratingCrateERNS2_7ContextERKNS0_14FileDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(184) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72, !nonnull !76, !align !77 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr i64 %i.i, 5                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.l = and i64 %i.i, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.l ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.x, %bb.f ] ; 9 uses
  %i.m = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !80
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.q = icmp eq ptr %i.p, %1
  br i1 %i.q, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit.loopexit.split.loop.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit.loopexit.split.loop.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.y = add nsw i64 %.052.i.i.i.i, -1
  %i.z = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !82

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.g, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.aa = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.aa, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !80
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !80
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !80
  %i.ai = icmp eq ptr %i.ah, %1
  %spec.select.i.i.i.i = select i1 %i.ai, ptr %.sroa.032.2.i.i.i.i, ptr %i.f
  br label %_ZNK6google8protobuf8compiler4rust20RustGeneratorContext24is_file_in_current_crateERKNS0_14FileDescriptorE.exit

end_hunk_1
