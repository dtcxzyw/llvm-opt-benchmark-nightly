Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjhj:bb.a
  store <16 x i8> %i.lu, ptr %2, align 1, !tbaa !60
  store <16 x i8> %i.lv, ptr %i.lt, align 1, !tbaa !60
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load821.1 = load <16 x i8>, ptr %i.lw, align 1, !tbaa !60
  %wide.load822.1 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !60
  %i.ly = or <16 x i8> %wide.load821.1, %broadcast.splat818
  %i.lz = or <16 x i8> %wide.load822.1, %broadcast.splat818
  store <16 x i8> %i.ly, ptr %i.lw, align 1, !tbaa !60
  store <16 x i8> %i.lz, ptr %i.lx, align 1, !tbaa !60
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load821.2 = load <16 x i8>, ptr %i.ma, align 1, !tbaa !60
  %wide.load822.2 = load <16 x i8>, ptr %i.mb, align 1, !tbaa !60
  %i.mc = or <16 x i8> %wide.load821.2, %broadcast.splat818
  %i.md = or <16 x i8> %wide.load822.2, %broadcast.splat818
  store <16 x i8> %i.mc, ptr %i.ma, align 1, !tbaa !60
  store <16 x i8> %i.md, ptr %i.mb, align 1, !tbaa !60
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load821.3 = load <16 x i8>, ptr %i.me, align 1, !tbaa !60
  %wide.load822.3 = load <16 x i8>, ptr %i.mf, align 1, !tbaa !60
  %i.mg = or <16 x i8> %wide.load821.3, %broadcast.splat818
  %i.mh = or <16 x i8> %wide.load822.3, %broadcast.splat818
  store <16 x i8> %i.mg, ptr %i.me, align 1, !tbaa !60
  store <16 x i8> %i.mh, ptr %i.mf, align 1, !tbaa !60
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load821.4 = load <16 x i8>, ptr %i.mi, align 1, !tbaa !60
  %wide.load822.4 = load <16 x i8>, ptr %i.mj, align 1, !tbaa !60
  %i.mk = or <16 x i8> %wide.load821.4, %broadcast.splat818
  %i.ml = or <16 x i8> %wide.load822.4, %broadcast.splat818
  store <16 x i8> %i.mk, ptr %i.mi, align 1, !tbaa !60
  store <16 x i8> %i.ml, ptr %i.mj, align 1, !tbaa !60
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load821.5 = load <16 x i8>, ptr %i.mm, align 1, !tbaa !60
  %wide.load822.5 = load <16 x i8>, ptr %i.mn, align 1, !tbaa !60
  %i.mo = or <16 x i8> %wide.load821.5, %broadcast.splat818
  %i.mp = or <16 x i8> %wide.load822.5, %broadcast.splat818
  store <16 x i8> %i.mo, ptr %i.mm, align 1, !tbaa !60
  store <16 x i8> %i.mp, ptr %i.mn, align 1, !tbaa !60
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load821.6 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !60
  %wide.load822.6 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !60
  %i.ms = or <16 x i8> %wide.load821.6, %broadcast.splat818
  %i.mt = or <16 x i8> %wide.load822.6, %broadcast.splat818
  store <16 x i8> %i.ms, ptr %i.mq, align 1, !tbaa !60
  store <16 x i8> %i.mt, ptr %i.mr, align 1, !tbaa !60
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load821.7 = load <16 x i8>, ptr %i.mu, align 1, !tbaa !60
  %wide.load822.7 = load <16 x i8>, ptr %i.mv, align 1, !tbaa !60
  %i.mw = or <16 x i8> %wide.load821.7, %broadcast.splat818
  %i.mx = or <16 x i8> %wide.load822.7, %broadcast.splat818
  store <16 x i8> %i.mw, ptr %i.mu, align 1, !tbaa !60
  store <16 x i8> %i.mx, ptr %i.mv, align 1, !tbaa !60
  %.pre.i315 = load i8, ptr %2, align 1, !tbaa !60
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit317

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %i.z, i8 %4, i64 255, i1 false)
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit317

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit317: ; preds = %bb.cd, %vector.body819
  %i.my = phi i8 [ %.pre.i315, %vector.body819 ], [ %4, %bb.cd ]
  %i.mz = or i8 %i.my, 4
  store i8 %i.mz, ptr %2, align 1, !tbaa !60
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.ce:                                            ; preds = %bb.o
  br i1 %.not.i338, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.na = load i8, ptr %2, align 1, !tbaa !60
  %i.nb = or i8 %i.na, 4
  store i8 %i.nb, ptr %2, align 1, !tbaa !60
  %i.nc = trunc nuw i8 %.0206468 to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %.0220462, i64 16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ck
  %indvars.iv565 = phi i64 [ 0, %bb.cf ], [ %indvars.iv.next566, %bb.ck ] ; 3 uses
  %i.nf = trunc i64 %indvars.iv565 to i8          ; 2 uses
  br i1 %i.nc, label %bb.ch, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit319

bb.ch:                                            ; preds = %bb.cg
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !293, !nonnull !108, !align !109
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !201
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !191 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !62
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef signext i8 %i.nm(ptr noundef nonnull align 8 dereferenceable(570) %i.nj, i8 noundef signext %i.nf)
          to label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit319 unwind label %bb.cj, !inline_history !1054

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit319: ; preds = %bb.cg, %bb.ch
  %i.no = phi i8 [ %i.nf, %bb.cg ], [ %i.nn, %bb.ch ]
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !60
  %.not249 = icmp eq i8 %i.nr, 0
  br i1 %.not249, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit319
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv565 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !60
  %i.nu = or i8 %i.nt, %4
  store i8 %i.nu, ptr %i.ns, align 1, !tbaa !60
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ck:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit319, %bb.ci
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next566, 256
  br i1 %exitcond568.not, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cg, !llvm.loop !1059

bb.cl:                                            ; preds = %bb.o
  %i.nw = getelementptr inbounds nuw i8, ptr %.0220462, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !60
  br label %bb.eb

bb.cm:                                            ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.ny = getelementptr inbounds nuw i8, ptr %.0220462, i64 24 ; 3 uses
  %i.nz = load i8, ptr %i.ny, align 8, !tbaa !60
  %i.oa = and i8 %i.nz, 4
  %.not242 = icmp eq i8 %i.oa, 0
  br i1 %.not242, label %bb.cw, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not.i338, label %.loopexit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ob = load i8, ptr %2, align 1, !tbaa !60
  %i.oc = or i8 %i.ob, 4
  store i8 %i.oc, ptr %2, align 1, !tbaa !60
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ct, %bb.co
  %indvars.iv = phi i64 [ 0, %bb.co ], [ %indvars.iv.next.1, %bb.ct ] ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 %indvars.iv
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !60
  %i.of = and i8 %i.oe, 3
  %.not247 = icmp eq i8 %i.of, 0
  br i1 %.not247, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !60
  %i.oi = or i8 %i.oh, %4
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !60
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ny, i64 %indvars.iv.next
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !60
  %i.ol = and i8 %i.ok, 3
  %.not247.1 = icmp eq i8 %i.ol, 0
  br i1 %.not247.1, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !60
  %i.oo = or i8 %i.on, %4
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !60
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit, label %bb.cp, !llvm.loop !1060

.loopexit:                                        ; preds = %bb.ct, %bb.cn
  %.not245 = icmp eq ptr %3, null
  br i1 %.not245, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cu

bb.cu:                                            ; preds = %.loopexit
  %i.op = getelementptr inbounds nuw i8, ptr %.0220462, i64 280
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !396
  %i.or = and i32 %i.oq, 3
  %.not246 = icmp eq i32 %i.or, 0
  br i1 %.not246, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.os = zext i8 %4 to i32
  %i.ot = load i32, ptr %3, align 4, !tbaa !132
  %i.ou = or i32 %i.ot, %i.os
  store i32 %i.ou, ptr %3, align 4, !tbaa !132
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.cw:                                            ; preds = %bb.cm
  switch i32 %i.bn, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit [
    i32 18, label %12
    i32 22, label %12
    i32 23, label %12
    i32 24, label %12
    i32 25, label %12
  ]

12:                                               ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %13 = getelementptr inbounds nuw i8, ptr %.0220462, i64 304
  %14 = load i32, ptr %13, align 8, !tbaa !307    ; 2 uses
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit: ; preds = %12
  %i.ov = zext nneg i32 %14 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !290 ; 2 uses
  %i.oy = shl nuw i64 1, %i.ov                    ; 2 uses
  %i.oz = and i64 %i.ox, %i.oy
  %.not366 = icmp eq i64 %i.oz, 0
  br i1 %.not366, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a: ; preds = %12, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit
  br i1 %.not.i338, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit328, label %bb.cx

bb.cx:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a
  %i.pa = load i8, ptr %2, align 1, !tbaa !60
  %i.pb = icmp eq i8 %i.pa, 0
  br i1 %i.pb, label %bb.cy, label %vector.body810

vector.body810:                                   ; preds = %bb.cx
  %broadcast.splatinsert808 = insertelement <16 x i8> poison, i8 %4, i64 0
  %broadcast.splat809 = shufflevector <16 x i8> %broadcast.splatinsert808, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load812 = load <16 x i8>, ptr %2, align 1, !tbaa !60
  %wide.load813 = load <16 x i8>, ptr %i.pc, align 1, !tbaa !60
  %i.pd = or <16 x i8> %wide.load812, %broadcast.splat809
  %i.pe = or <16 x i8> %wide.load813, %broadcast.splat809
  store <16 x i8> %i.pd, ptr %2, align 1, !tbaa !60
  store <16 x i8> %i.pe, ptr %i.pc, align 1, !tbaa !60
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load812.1 = load <16 x i8>, ptr %i.pf, align 1, !tbaa !60
  %wide.load813.1 = load <16 x i8>, ptr %i.pg, align 1, !tbaa !60
  %i.ph = or <16 x i8> %wide.load812.1, %broadcast.splat809
  %i.pi = or <16 x i8> %wide.load813.1, %broadcast.splat809
  store <16 x i8> %i.ph, ptr %i.pf, align 1, !tbaa !60
  store <16 x i8> %i.pi, ptr %i.pg, align 1, !tbaa !60
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load812.2 = load <16 x i8>, ptr %i.pj, align 1, !tbaa !60
  %wide.load813.2 = load <16 x i8>, ptr %i.pk, align 1, !tbaa !60
  %i.pl = or <16 x i8> %wide.load812.2, %broadcast.splat809
  %i.pm = or <16 x i8> %wide.load813.2, %broadcast.splat809
  store <16 x i8> %i.pl, ptr %i.pj, align 1, !tbaa !60
  store <16 x i8> %i.pm, ptr %i.pk, align 1, !tbaa !60
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load812.3 = load <16 x i8>, ptr %i.pn, align 1, !tbaa !60
  %wide.load813.3 = load <16 x i8>, ptr %i.po, align 1, !tbaa !60
  %i.pp = or <16 x i8> %wide.load812.3, %broadcast.splat809
  %i.pq = or <16 x i8> %wide.load813.3, %broadcast.splat809
  store <16 x i8> %i.pp, ptr %i.pn, align 1, !tbaa !60
  store <16 x i8> %i.pq, ptr %i.po, align 1, !tbaa !60
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load812.4 = load <16 x i8>, ptr %i.pr, align 1, !tbaa !60
  %wide.load813.4 = load <16 x i8>, ptr %i.ps, align 1, !tbaa !60
  %i.pt = or <16 x i8> %wide.load812.4, %broadcast.splat809
  %i.pu = or <16 x i8> %wide.load813.4, %broadcast.splat809
  store <16 x i8> %i.pt, ptr %i.pr, align 1, !tbaa !60
  store <16 x i8> %i.pu, ptr %i.ps, align 1, !tbaa !60
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load812.5 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !60
  %wide.load813.5 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !60
  %i.px = or <16 x i8> %wide.load812.5, %broadcast.splat809
  %i.py = or <16 x i8> %wide.load813.5, %broadcast.splat809
  store <16 x i8> %i.px, ptr %i.pv, align 1, !tbaa !60
  store <16 x i8> %i.py, ptr %i.pw, align 1, !tbaa !60
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load812.6 = load <16 x i8>, ptr %i.pz, align 1, !tbaa !60
  %wide.load813.6 = load <16 x i8>, ptr %i.qa, align 1, !tbaa !60
  %i.qb = or <16 x i8> %wide.load812.6, %broadcast.splat809
  %i.qc = or <16 x i8> %wide.load813.6, %broadcast.splat809
  store <16 x i8> %i.qb, ptr %i.pz, align 1, !tbaa !60
  store <16 x i8> %i.qc, ptr %i.qa, align 1, !tbaa !60
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load812.7 = load <16 x i8>, ptr %i.qd, align 1, !tbaa !60
  %wide.load813.7 = load <16 x i8>, ptr %i.qe, align 1, !tbaa !60
  %i.qf = or <16 x i8> %wide.load812.7, %broadcast.splat809
  %i.qg = or <16 x i8> %wide.load813.7, %broadcast.splat809
  store <16 x i8> %i.qf, ptr %i.qd, align 1, !tbaa !60
  store <16 x i8> %i.qg, ptr %i.qe, align 1, !tbaa !60
  %.pre.i326 = load i8, ptr %2, align 1, !tbaa !60
  br label %.loopexit.i327

bb.cy:                                            ; preds = %bb.cx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %i.z, i8 %4, i64 255, i1 false)
  br label %.loopexit.i327

.loopexit.i327:                                   ; preds = %vector.body810, %bb.cy
  %i.qh = phi i8 [ %.pre.i326, %vector.body810 ], [ %4, %bb.cy ]
  %i.qi = or i8 %i.qh, 4
  store i8 %i.qi, ptr %2, align 1, !tbaa !60
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit328

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit328: ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a, %.loopexit.i327
  %.not243 = icmp eq ptr %3, null
  br i1 %.not243, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit328
  %i.qj = zext i8 %4 to i32
  %i.qk = load i32, ptr %3, align 4, !tbaa !132
  %i.ql = or i32 %i.qk, %i.qj
  store i32 %i.ql, ptr %3, align 4, !tbaa !132
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.da:                                            ; preds = %bb.de, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356: ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit
  switch i32 %i.bn, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit [
    i32 18, label %bb.db
    i32 22, label %bb.db
    i32 23, label %bb.db
    i32 24, label %bb.db
    i32 25, label %bb.db
  ]

bb.db:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356
  %i.qn = or i64 %i.ox, %i.oy
  store i64 %i.qn, ptr %i.ow, align 8, !tbaa !290
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit

_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit: ; preds = %bb.cw, %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread356, %bb.db
  %i.qo = getelementptr inbounds nuw i8, ptr %.0220462, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !60
  %i.qq = add i32 %.0216463, 1
  invoke void @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjhj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.qp, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %i.qq)
          to label %bb.dc unwind label %bb.da

bb.dc:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit
  %i.qr = load i32, ptr %.0220462, align 8, !tbaa !279
  %i.qs = icmp eq i32 %i.qr, 17
  br i1 %i.qs, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qt = getelementptr inbounds nuw i8, ptr %.0220462, i64 288
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !341
  %i.qv = icmp eq i64 %i.qu, 0
  %i.qw = icmp eq i32 %.0214464, 0
  %or.cond = select i1 %i.qv, i1 true, i1 %i.qw
  br i1 %or.cond, label %bb.de, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.qx = getelementptr inbounds nuw i8, ptr %.0220462, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !60
  %i.qz = add i32 %.0216463, 2
  invoke void @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjhj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.qy, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %i.qz)
          to label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit unwind label %bb.da

bb.df:                                            ; preds = %bb.o
  br i1 %.not.i338, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ra = load i8, ptr %2, align 1, !tbaa !60
  %i.rb = or i8 %i.ra, 4
  store i8 %i.rb, ptr %2, align 1, !tbaa !60
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !60
  %i.re = or i8 %i.rd, %4
  store i8 %i.re, ptr %i.rc, align 1, !tbaa !60
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !60
  %i.rh = or i8 %i.rg, %4
  store i8 %i.rh, ptr %i.rf, align 1, !tbaa !60
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.not241 = icmp eq ptr %3, null
  br i1 %.not241, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ri = zext i8 %4 to i32
  %i.rj = load i32, ptr %3, align 4, !tbaa !132
  %i.rk = or i32 %i.rj, %i.ri
  store i32 %i.rk, ptr %3, align 4, !tbaa !132
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.dj:                                            ; preds = %bb.o
  %i.rl = getelementptr inbounds nuw i8, ptr %.0220462, i64 16
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !281 ; 5 uses
  %i.rn = icmp slt i32 %i.rm, 0
  br i1 %i.rn, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  br i1 %.not.i338, label %_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit337, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ro = load i8, ptr %2, align 1, !tbaa !60
  %i.rp = icmp eq i8 %i.ro, 0
  br i1 %i.rp, label %bb.dm, label %vector.body801

vector.body801:                                   ; preds = %bb.dl
  %broadcast.splatinsert799 = insertelement <16 x i8> poison, i8 %4, i64 0
  %broadcast.splat800 = shufflevector <16 x i8> %broadcast.splatinsert799, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load803 = load <16 x i8>, ptr %2, align 1, !tbaa !60
  %wide.load804 = load <16 x i8>, ptr %i.rq, align 1, !tbaa !60
  %i.rr = or <16 x i8> %wide.load803, %broadcast.splat800
  %i.rs = or <16 x i8> %wide.load804, %broadcast.splat800
  store <16 x i8> %i.rr, ptr %2, align 1, !tbaa !60
  store <16 x i8> %i.rs, ptr %i.rq, align 1, !tbaa !60
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load803.1 = load <16 x i8>, ptr %i.rt, align 1, !tbaa !60
  %wide.load804.1 = load <16 x i8>, ptr %i.ru, align 1, !tbaa !60
  %i.rv = or <16 x i8> %wide.load803.1, %broadcast.splat800
end_hunk_0
