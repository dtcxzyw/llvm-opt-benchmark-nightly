Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjh:bb.a
  store <16 x i8> %i.kr, ptr %2, align 1, !tbaa !19682
  store <16 x i8> %i.ks, ptr %i.kq, align 1, !tbaa !19682
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load724.1 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !19682
  %wide.load725.1 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !19682
  %i.kv = or <16 x i8> %wide.load724.1, %broadcast.splat721
  %i.kw = or <16 x i8> %wide.load725.1, %broadcast.splat721
  store <16 x i8> %i.kv, ptr %i.kt, align 1, !tbaa !19682
  store <16 x i8> %i.kw, ptr %i.ku, align 1, !tbaa !19682
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load724.2 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !19682
  %wide.load725.2 = load <16 x i8>, ptr %i.ky, align 1, !tbaa !19682
  %i.kz = or <16 x i8> %wide.load724.2, %broadcast.splat721
  %i.la = or <16 x i8> %wide.load725.2, %broadcast.splat721
  store <16 x i8> %i.kz, ptr %i.kx, align 1, !tbaa !19682
  store <16 x i8> %i.la, ptr %i.ky, align 1, !tbaa !19682
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load724.3 = load <16 x i8>, ptr %i.lb, align 1, !tbaa !19682
  %wide.load725.3 = load <16 x i8>, ptr %i.lc, align 1, !tbaa !19682
  %i.ld = or <16 x i8> %wide.load724.3, %broadcast.splat721
  %i.le = or <16 x i8> %wide.load725.3, %broadcast.splat721
  store <16 x i8> %i.ld, ptr %i.lb, align 1, !tbaa !19682
  store <16 x i8> %i.le, ptr %i.lc, align 1, !tbaa !19682
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load724.4 = load <16 x i8>, ptr %i.lf, align 1, !tbaa !19682
  %wide.load725.4 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !19682
  %i.lh = or <16 x i8> %wide.load724.4, %broadcast.splat721
  %i.li = or <16 x i8> %wide.load725.4, %broadcast.splat721
  store <16 x i8> %i.lh, ptr %i.lf, align 1, !tbaa !19682
  store <16 x i8> %i.li, ptr %i.lg, align 1, !tbaa !19682
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load724.5 = load <16 x i8>, ptr %i.lj, align 1, !tbaa !19682
  %wide.load725.5 = load <16 x i8>, ptr %i.lk, align 1, !tbaa !19682
  %i.ll = or <16 x i8> %wide.load724.5, %broadcast.splat721
  %i.lm = or <16 x i8> %wide.load725.5, %broadcast.splat721
  store <16 x i8> %i.ll, ptr %i.lj, align 1, !tbaa !19682
  store <16 x i8> %i.lm, ptr %i.lk, align 1, !tbaa !19682
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load724.6 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !19682
  %wide.load725.6 = load <16 x i8>, ptr %i.lo, align 1, !tbaa !19682
  %i.lp = or <16 x i8> %wide.load724.6, %broadcast.splat721
  %i.lq = or <16 x i8> %wide.load725.6, %broadcast.splat721
  store <16 x i8> %i.lp, ptr %i.ln, align 1, !tbaa !19682
  store <16 x i8> %i.lq, ptr %i.lo, align 1, !tbaa !19682
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load724.7 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !19682
  %wide.load725.7 = load <16 x i8>, ptr %i.ls, align 1, !tbaa !19682
  %i.lt = or <16 x i8> %wide.load724.7, %broadcast.splat721
  %i.lu = or <16 x i8> %wide.load725.7, %broadcast.splat721
  store <16 x i8> %i.lt, ptr %i.lr, align 1, !tbaa !19682
  store <16 x i8> %i.lu, ptr %i.ls, align 1, !tbaa !19682
  %.pre.i286 = load i8, ptr %2, align 1, !tbaa !19682
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit288

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %i.x, i8 %4, i64 255, i1 false)
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit288

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit288: ; preds = %bb.bv, %vector.body722
  %i.lv = phi i8 [ %.pre.i286, %vector.body722 ], [ %4, %bb.bv ]
  %i.lw = or i8 %i.lv, 4
  store i8 %i.lw, ptr %2, align 1, !tbaa !19682
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.bw:                                            ; preds = %bb.g
  br i1 %.not.i309, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = load i8, ptr %2, align 1, !tbaa !19682
  %i.ly = or i8 %i.lx, 4
  store i8 %i.ly, ptr %2, align 1, !tbaa !19682
  %i.lz = trunc nuw i8 %.0196422 to i1
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %.0206417, i64 16
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.cc
  %indvars.iv503 = phi i64 [ 0, %bb.bx ], [ %indvars.iv.next504, %bb.cc ] ; 3 uses
  %i.mc = trunc i64 %indvars.iv503 to i8          ; 2 uses
  br i1 %i.lz, label %bb.bz, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit290

bb.bz:                                            ; preds = %bb.by
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !20070, !nonnull !1339, !align !19737
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !19858
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !19838 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !797
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = invoke noundef signext i8 %i.mj(ptr noundef nonnull align 8 dereferenceable(570) %i.mg, i8 noundef signext %i.mc)
          to label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit290 unwind label %bb.cb, !inline_history !21005

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit290: ; preds = %bb.by, %bb.bz
  %i.ml = phi i8 [ %i.mc, %bb.by ], [ %i.mk, %bb.bz ]
  %i.mm = zext i8 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !19682
  %.not233 = icmp eq i8 %i.mo, 0
  br i1 %.not233, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit290
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv503 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19682
  %i.mr = or i8 %i.mq, %4
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !19682
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.cc:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit290, %bb.ca
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next504, 256
  br i1 %exitcond506.not, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.by, !llvm.loop !21010

bb.cd:                                            ; preds = %bb.g
  %i.mt = getelementptr inbounds nuw i8, ptr %.0206417, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !19682
  br label %bb.dt

bb.ce:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.mv = getelementptr inbounds nuw i8, ptr %.0206417, i64 24 ; 3 uses
  %i.mw = load i8, ptr %i.mv, align 8, !tbaa !19682
  %i.mx = and i8 %i.mw, 4
  %.not226 = icmp eq i8 %i.mx, 0
  br i1 %.not226, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %.not.i309, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.my = load i8, ptr %2, align 1, !tbaa !19682
  %i.mz = or i8 %i.my, 4
  store i8 %i.mz, ptr %2, align 1, !tbaa !19682
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cl, %bb.cg
  %indvars.iv = phi i64 [ 0, %bb.cg ], [ %indvars.iv.next.1, %bb.cl ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 %indvars.iv
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !19682
  %i.nc = and i8 %i.nb, 3
  %.not231 = icmp eq i8 %i.nc, 0
  br i1 %.not231, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !19682
  %i.nf = or i8 %i.ne, %4
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !19682
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 %indvars.iv.next
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !19682
  %i.ni = and i8 %i.nh, 3
  %.not231.1 = icmp eq i8 %i.ni, 0
  br i1 %.not231.1, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !19682
  %i.nl = or i8 %i.nk, %4
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !19682
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit, label %bb.ch, !llvm.loop !21011

.loopexit:                                        ; preds = %bb.cl, %bb.cf
  %.not229 = icmp eq ptr %3, null
  br i1 %.not229, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cm

bb.cm:                                            ; preds = %.loopexit
  %i.nm = getelementptr inbounds nuw i8, ptr %.0206417, i64 280
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !20160
  %i.no = and i32 %i.nn, 3
  %.not230 = icmp eq i32 %i.no, 0
  br i1 %.not230, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.np = zext i8 %4 to i32
  %i.nq = load i32, ptr %3, align 4, !tbaa !19786
  %i.nr = or i32 %i.nq, %i.np
  store i32 %i.nr, ptr %3, align 4, !tbaa !19786
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.co:                                            ; preds = %bb.ce
  switch i32 %i.an, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit [
    i32 18, label %9
    i32 22, label %9
    i32 23, label %9
    i32 24, label %9
    i32 25, label %9
  ]

9:                                                ; preds = %bb.co, %bb.co, %bb.co, %bb.co, %bb.co
  %10 = getelementptr inbounds nuw i8, ptr %.0206417, i64 304
  %11 = load i32, ptr %10, align 8, !tbaa !20083  ; 2 uses
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit: ; preds = %9
  %i.ns = zext nneg i32 %11 to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !20067 ; 2 uses
  %i.nv = shl nuw i64 1, %i.ns                    ; 2 uses
  %i.nw = and i64 %i.nu, %i.nv
  %.not337 = icmp eq i64 %i.nw, 0
  br i1 %.not337, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a: ; preds = %9, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit
  br i1 %.not.i309, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit299, label %bb.cp

bb.cp:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a
  %i.nx = load i8, ptr %2, align 1, !tbaa !19682
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.cq, label %vector.body713

vector.body713:                                   ; preds = %bb.cp
  %broadcast.splatinsert711 = insertelement <16 x i8> poison, i8 %4, i64 0
  %broadcast.splat712 = shufflevector <16 x i8> %broadcast.splatinsert711, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load715 = load <16 x i8>, ptr %2, align 1, !tbaa !19682
  %wide.load716 = load <16 x i8>, ptr %i.nz, align 1, !tbaa !19682
  %i.oa = or <16 x i8> %wide.load715, %broadcast.splat712
  %i.ob = or <16 x i8> %wide.load716, %broadcast.splat712
  store <16 x i8> %i.oa, ptr %2, align 1, !tbaa !19682
  store <16 x i8> %i.ob, ptr %i.nz, align 1, !tbaa !19682
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load715.1 = load <16 x i8>, ptr %i.oc, align 1, !tbaa !19682
  %wide.load716.1 = load <16 x i8>, ptr %i.od, align 1, !tbaa !19682
  %i.oe = or <16 x i8> %wide.load715.1, %broadcast.splat712
  %i.of = or <16 x i8> %wide.load716.1, %broadcast.splat712
  store <16 x i8> %i.oe, ptr %i.oc, align 1, !tbaa !19682
  store <16 x i8> %i.of, ptr %i.od, align 1, !tbaa !19682
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load715.2 = load <16 x i8>, ptr %i.og, align 1, !tbaa !19682
  %wide.load716.2 = load <16 x i8>, ptr %i.oh, align 1, !tbaa !19682
  %i.oi = or <16 x i8> %wide.load715.2, %broadcast.splat712
  %i.oj = or <16 x i8> %wide.load716.2, %broadcast.splat712
  store <16 x i8> %i.oi, ptr %i.og, align 1, !tbaa !19682
  store <16 x i8> %i.oj, ptr %i.oh, align 1, !tbaa !19682
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load715.3 = load <16 x i8>, ptr %i.ok, align 1, !tbaa !19682
  %wide.load716.3 = load <16 x i8>, ptr %i.ol, align 1, !tbaa !19682
  %i.om = or <16 x i8> %wide.load715.3, %broadcast.splat712
  %i.on = or <16 x i8> %wide.load716.3, %broadcast.splat712
  store <16 x i8> %i.om, ptr %i.ok, align 1, !tbaa !19682
  store <16 x i8> %i.on, ptr %i.ol, align 1, !tbaa !19682
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load715.4 = load <16 x i8>, ptr %i.oo, align 1, !tbaa !19682
  %wide.load716.4 = load <16 x i8>, ptr %i.op, align 1, !tbaa !19682
  %i.oq = or <16 x i8> %wide.load715.4, %broadcast.splat712
  %i.or = or <16 x i8> %wide.load716.4, %broadcast.splat712
  store <16 x i8> %i.oq, ptr %i.oo, align 1, !tbaa !19682
  store <16 x i8> %i.or, ptr %i.op, align 1, !tbaa !19682
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load715.5 = load <16 x i8>, ptr %i.os, align 1, !tbaa !19682
  %wide.load716.5 = load <16 x i8>, ptr %i.ot, align 1, !tbaa !19682
  %i.ou = or <16 x i8> %wide.load715.5, %broadcast.splat712
  %i.ov = or <16 x i8> %wide.load716.5, %broadcast.splat712
  store <16 x i8> %i.ou, ptr %i.os, align 1, !tbaa !19682
  store <16 x i8> %i.ov, ptr %i.ot, align 1, !tbaa !19682
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load715.6 = load <16 x i8>, ptr %i.ow, align 1, !tbaa !19682
  %wide.load716.6 = load <16 x i8>, ptr %i.ox, align 1, !tbaa !19682
  %i.oy = or <16 x i8> %wide.load715.6, %broadcast.splat712
  %i.oz = or <16 x i8> %wide.load716.6, %broadcast.splat712
  store <16 x i8> %i.oy, ptr %i.ow, align 1, !tbaa !19682
  store <16 x i8> %i.oz, ptr %i.ox, align 1, !tbaa !19682
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load715.7 = load <16 x i8>, ptr %i.pa, align 1, !tbaa !19682
  %wide.load716.7 = load <16 x i8>, ptr %i.pb, align 1, !tbaa !19682
  %i.pc = or <16 x i8> %wide.load715.7, %broadcast.splat712
  %i.pd = or <16 x i8> %wide.load716.7, %broadcast.splat712
  store <16 x i8> %i.pc, ptr %i.pa, align 1, !tbaa !19682
  store <16 x i8> %i.pd, ptr %i.pb, align 1, !tbaa !19682
  %.pre.i297 = load i8, ptr %2, align 1, !tbaa !19682
  br label %.loopexit.i298

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %i.x, i8 %4, i64 255, i1 false)
  br label %.loopexit.i298

.loopexit.i298:                                   ; preds = %vector.body713, %bb.cq
  %i.pe = phi i8 [ %.pre.i297, %vector.body713 ], [ %4, %bb.cq ]
  %i.pf = or i8 %i.pe, 4
  store i8 %i.pf, ptr %2, align 1, !tbaa !19682
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit299

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit299: ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread.a, %.loopexit.i298
  %.not227 = icmp eq ptr %3, null
  br i1 %.not227, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit299
  %i.pg = zext i8 %4 to i32
  %i.ph = load i32, ptr %3, align 4, !tbaa !19786
  %i.pi = or i32 %i.ph, %i.pg
  store i32 %i.pi, ptr %3, align 4, !tbaa !19786
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.cs:                                            ; preds = %bb.cw, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327: ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit
  switch i32 %i.an, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit [
    i32 18, label %bb.ct
    i32 22, label %bb.ct
    i32 23, label %bb.ct
    i32 24, label %bb.ct
    i32 25, label %bb.ct
  ]

bb.ct:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327
  %i.pk = or i64 %i.nu, %i.nv
  store i64 %i.pk, ptr %i.nt, align 8, !tbaa !20067
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit: ; preds = %bb.co, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13is_bad_repeatEPNS0_14re_syntax_baseE.exit.thread327, %bb.ct
  %i.pl = getelementptr inbounds nuw i8, ptr %.0206417, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !19682
  invoke void @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.pm, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
          to label %bb.cu unwind label %bb.cs

bb.cu:                                            ; preds = %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14set_bad_repeatEPNS0_14re_syntax_baseE.exit
  %i.pn = load i32, ptr %.0206417, align 8, !tbaa !20056
  %i.po = icmp eq i32 %i.pn, 17
  br i1 %i.po, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pp = getelementptr inbounds nuw i8, ptr %.0206417, i64 288
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !20115
  %i.pr = icmp eq i64 %i.pq, 0
  %i.ps = icmp eq i32 %.0204418, 0
  %or.cond = select i1 %i.pr, i1 true, i1 %i.ps
  br i1 %or.cond, label %bb.cw, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.pt = getelementptr inbounds nuw i8, ptr %.0206417, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !19682
  invoke void @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15create_startmapEPNS0_14re_syntax_baseEPhPjh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.pu, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4)
          to label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit unwind label %bb.cs

bb.cx:                                            ; preds = %bb.g
  br i1 %.not.i309, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pv = load i8, ptr %2, align 1, !tbaa !19682
  %i.pw = or i8 %i.pv, 4
  store i8 %i.pw, ptr %2, align 1, !tbaa !19682
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !19682
  %i.pz = or i8 %i.py, %4
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !19682
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !19682
  %i.qc = or i8 %i.qb, %4
  store i8 %i.qc, ptr %i.qa, align 1, !tbaa !19682
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.not225 = icmp eq ptr %3, null
  br i1 %.not225, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qd = zext i8 %4 to i32
  %i.qe = load i32, ptr %3, align 4, !tbaa !19786
  %i.qf = or i32 %i.qe, %i.qd
  store i32 %i.qf, ptr %3, align 4, !tbaa !19786
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit

bb.db:                                            ; preds = %bb.g
  %i.qg = getelementptr inbounds nuw i8, ptr %.0206417, i64 16
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !20058 ; 5 uses
  %i.qi = icmp slt i32 %i.qh, 0
  br i1 %i.qi, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %.not.i309, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13set_all_masksEPhh.exit308, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qj = load i8, ptr %2, align 1, !tbaa !19682
  %i.qk = icmp eq i8 %i.qj, 0
  br i1 %i.qk, label %bb.de, label %vector.body704

vector.body704:                                   ; preds = %bb.dd
  %broadcast.splatinsert702 = insertelement <16 x i8> poison, i8 %4, i64 0
  %broadcast.splat703 = shufflevector <16 x i8> %broadcast.splatinsert702, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load706 = load <16 x i8>, ptr %2, align 1, !tbaa !19682
  %wide.load707 = load <16 x i8>, ptr %i.ql, align 1, !tbaa !19682
  %i.qm = or <16 x i8> %wide.load706, %broadcast.splat703
  %i.qn = or <16 x i8> %wide.load707, %broadcast.splat703
  store <16 x i8> %i.qm, ptr %2, align 1, !tbaa !19682
  store <16 x i8> %i.qn, ptr %i.ql, align 1, !tbaa !19682
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load706.1 = load <16 x i8>, ptr %i.qo, align 1, !tbaa !19682
  %wide.load707.1 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !19682
  %i.qq = or <16 x i8> %wide.load706.1, %broadcast.splat703
  %i.qr = or <16 x i8> %wide.load707.1, %broadcast.splat703
  store <16 x i8> %i.qq, ptr %i.qo, align 1, !tbaa !19682
end_hunk_0
