Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.bc = sdiv i32 %i.bb, 4                       ; 3 uses
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !9
  %i.bd = icmp sgt i32 %i.bb, 3
  br i1 %i.bd, label %_ZN4ncnn3MatD2Ev.exit2281.lr.ph, label %._crit_edge7513

_ZN4ncnn3MatD2Ev.exit2281.lr.ph:                  ; preds = %._crit_edge7220
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bp = sext i32 %i.ba to i64
  %wide.trip.count8351 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2281

_ZN4ncnn3MatD2Ev.exit2341:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, %._crit_edge7218.split
  %indvars.iv8261 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %indvars.iv.next8262, %._crit_edge7218.split ] ; 2 uses
  %i.bq = load i32, ptr %i.an, align 8, !tbaa !15
  %.fr = freeze i32 %i.bq                         ; 8 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !16
  %i.bs = mul i32 %i.br, %.fr                     ; 15 uses
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !22 ; 6 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !23 ; 5 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !22 ; 2 uses
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.preheader6934.lr.ph, label %._crit_edge7218.split

.preheader6934.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2341
  %i.bz = shl nuw nsw i64 %indvars.iv8261, 3
  %i.ca = add nsw i64 %i.bz, %i.ay                ; 2 uses
  %i.cb = trunc nsw i64 %i.ca to i32              ; 3 uses
  %i.cc = icmp sgt i32 %i.bv, 0
  %i.cd = sdiv i32 %i.cb, 16
  %i.ce = srem i32 %i.cb, 16
  %i.cf = ashr exact i32 %i.ce, 3
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp sgt i32 %i.bs, 15
  %i.cj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ck = icmp eq i32 %i.cj, 1
  %i.cl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.cm = icmp eq i32 %.fr, 1
  %i.cn = load i32, ptr %i.g, align 4
  br i1 %i.cc, label %.preheader6934.preheader, label %._crit_edge7218.split

.preheader6934.preheader:                         ; preds = %.preheader6934.lr.ph
  %i.co = load ptr, ptr %1, align 8, !tbaa !19, !noalias !216
  %i.cp = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !216
  %i.cq = sdiv i32 %i.cb, %i.bx
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cp, %i.cr
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !24, !noalias !216
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cu
  %i.cw = add i32 %i.bs, -16                      ; 3 uses
  %i.cx = lshr i32 %i.cw, 3
  %i.cy = and i32 %i.cx, 536870910
  %narrow = add nuw nsw i32 %i.cy, 2
  %i.cz = zext nneg i32 %narrow to i64
  %i.da = and i32 %i.cw, -16
  %i.db = add nuw i32 %i.da, 16
  %i.dc = sext i32 %i.bs to i64
  %i.dd = and i32 %i.cw, -16
  %i.de = add i32 %i.dd, 16
  %invariant.op8792 = add nsw i64 %i.dc, -15
  br label %.preheader6934

.preheader6934:                                   ; preds = %.preheader6934.preheader, %._crit_edge
  %.018087217 = phi ptr [ %.4, %._crit_edge ], [ %i.cv, %.preheader6934.preheader ]
  %.018297216 = phi i32 [ %.neg6858, %._crit_edge ], [ 0, %.preheader6934.preheader ]
  %i.df = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dg = icmp sgt i32 %i.df, 0                   ; 5 uses
  %.neg6858 = add nuw nsw i32 %.018297216, 1      ; 7 uses
  %i.dh = load i32, ptr %i.k, align 4             ; 5 uses
  %i.di = shl i32 %i.dh, 7
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = shl i32 %i.dh, 6
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = shl i32 %i.dh, 5
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = shl i32 %i.dh, 4
  %i.dp = sext i32 %i.do to i64                   ; 3 uses
  %i.dq = shl nsw i32 %i.dh, 3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.cz, %i.dj
  %wide.trip.count8190 = zext nneg i32 %i.df to i64
  %wide.trip.count8204 = zext nneg i32 %i.df to i64
  %wide.trip.count8224 = zext nneg i32 %i.df to i64
  %wide.trip.count8241 = zext nneg i32 %i.df to i64
  %wide.trip.count8254 = zext nneg i32 %i.df to i64
  br label %bb.b

._crit_edge7218.split:                            ; preds = %._crit_edge, %.preheader6934.lr.ph, %_ZN4ncnn3MatD2Ev.exit2341
  %indvars.iv.next8262 = add nuw nsw i64 %indvars.iv8261, 1 ; 2 uses
  %exitcond8265.not = icmp eq i64 %indvars.iv.next8262, %wide.trip.count8264
  br i1 %exitcond8265.not, label %._crit_edge7220, label %_ZN4ncnn3MatD2Ev.exit2341, !llvm.loop !35

._crit_edge:                                      ; preds = %.thread6743
  %exitcond8260.not = icmp eq i32 %.neg6858, %i.bw
  br i1 %exitcond8260.not, label %._crit_edge7218.split, label %.preheader6934, !llvm.loop !36

bb.b:                                             ; preds = %.preheader6934, %.thread6743
  %.17215 = phi ptr [ %.018087217, %.preheader6934 ], [ %.4, %.thread6743 ] ; 15 uses
  %.018307214 = phi i32 [ 0, %.preheader6934 ], [ %i.bnx, %.thread6743 ] ; 6 uses
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !21  ; 2 uses
  %.not2153 = icmp eq ptr %i.dt, null
  br i1 %.not2153, label %_ZN4ncnn3MatD2Ev.exit2340, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ca
  %i.dv = load <8 x float>, ptr %i.du, align 1, !tbaa !26
  br label %_ZN4ncnn3MatD2Ev.exit2340

_ZN4ncnn3MatD2Ev.exit2340:                        ; preds = %bb.c, %bb.b
  %.06535 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.dv, %bb.c ] ; 3 uses
  %i.dw = load ptr, ptr %2, align 8, !tbaa !19, !noalias !217 ; 2 uses
  %i.dx = load i64, ptr %i.au, align 8, !tbaa !17, !noalias !217
  %i.dy = mul i64 %i.dx, %i.ch
  %i.dz = load i64, ptr %i.av, align 8, !tbaa !24, !noalias !217
  %i.ea = mul i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ea ; 2 uses
  br i1 %i.ci, label %.preheader6929.lr.ph, label %.preheader6933

.preheader6929.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  %i.ec = load i32, ptr %i.j, align 4
  %invariant.op6957 = sub i32 %.neg6858, %i.ec
  %i.ed = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ee = load i32, ptr %i.a, align 4
  %.fr8030 = freeze i32 %i.ee                     ; 2 uses
  %i.ef = icmp sgt i32 %.fr8030, 0
  %i.eg = load i32, ptr %i.i, align 4
  %.neg6860 = add nuw nsw i32 %.018307214, 1
  %invariant.op = sub i32 %.neg6860, %i.eg
  %i.eh = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.dg, label %.preheader6929.us.preheader, label %.preheader6929.preheader

.preheader6929.preheader:                         ; preds = %.preheader6929.lr.ph
  %scevgep = getelementptr i8, ptr %i.dw, i64 %i.ds
  %scevgep8185 = getelementptr i8, ptr %scevgep, i64 %i.ea
  br label %.preheader6933

.preheader6929.us.preheader:                      ; preds = %.preheader6929.lr.ph
  %i.ei = load i32, ptr %i.c, align 4
  %i.ej = load i32, ptr %i.d, align 4
  %i.ek = zext i32 %.fr8030 to i64                ; 2 uses
  br label %.preheader6929.us

.preheader6929.us:                                ; preds = %.preheader6929.us.preheader, %._crit_edge.us
  %indvars.iv8192 = phi i64 [ 0, %.preheader6929.us.preheader ], [ %indvars.iv.next8193, %._crit_edge.us ] ; 20 uses
  %.018316976.us = phi ptr [ %i.eb, %.preheader6929.us.preheader ], [ %i.ajj, %._crit_edge.us ] ; 2 uses
  %.165366974.us = phi <8 x float> [ %.06535, %.preheader6929.us.preheader ], [ %.us-phi6969.us, %._crit_edge.us ] ; 2 uses
  %.065466973.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6968.us, %._crit_edge.us ] ; 2 uses
  %.065696972.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6967.us, %._crit_edge.us ] ; 2 uses
  %.065876971.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 2 uses
  %i.el = or disjoint i64 %indvars.iv8192, 15
  %i.em = lshr exact i64 %indvars.iv8192, 4
  %i.en = lshr exact i64 %indvars.iv8192, 3       ; 2 uses
  %i.eo = or disjoint i64 %i.en, 1
  %i.ep = lshr exact i64 %indvars.iv8192, 2       ; 4 uses
  %i.eq = or disjoint i64 %i.ep, 1
  %i.er = or disjoint i64 %i.ep, 2
  %i.es = or disjoint i64 %i.ep, 3
  %i.et = or disjoint i64 %indvars.iv8192, 1
  %i.eu = or disjoint i64 %indvars.iv8192, 2
  %i.ev = or disjoint i64 %indvars.iv8192, 3
  %i.ew = or disjoint i64 %indvars.iv8192, 4
  %i.ex = or disjoint i64 %indvars.iv8192, 5
  %i.ey = or disjoint i64 %indvars.iv8192, 6
  %i.ez = or disjoint i64 %indvars.iv8192, 7
  %i.fa = or disjoint i64 %indvars.iv8192, 8
  %i.fb = or disjoint i64 %indvars.iv8192, 9
  %i.fc = or disjoint i64 %indvars.iv8192, 10
  %i.fd = or disjoint i64 %indvars.iv8192, 11
  %i.fe = or disjoint i64 %indvars.iv8192, 12
  %i.ff = or disjoint i64 %indvars.iv8192, 13
  %i.fg = or disjoint i64 %indvars.iv8192, 14
  br i1 %i.ef, label %.lr.ph6953.split.us.us, label %._crit_edge.us

.lr.ph6953.split.us.us:                           ; preds = %.preheader6929.us, %..loopexit6924_crit_edge.us.us
  %indvars.iv8187 = phi i64 [ %indvars.iv.next8188, %..loopexit6924_crit_edge.us.us ], [ 0, %.preheader6929.us ] ; 3 uses
  %.265376951.us.us = phi <8 x float> [ %.8.us.us, %..loopexit6924_crit_edge.us.us ], [ %.165366974.us, %.preheader6929.us ] ; 4 uses
  %.165476950.us.us = phi <8 x float> [ %.76553.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065466973.us, %.preheader6929.us ] ; 4 uses
  %.165706949.us.us = phi <8 x float> [ %.76576.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065696972.us, %.preheader6929.us ] ; 4 uses
  %.165886948.us.us = phi <8 x float> [ %.76594.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065876971.us, %.preheader6929.us ] ; 4 uses
  %i.fh = trunc i64 %indvars.iv8187 to i32
  %i.fi = mul i32 %i.ej, %i.fh
  %.reass6958.us.us = add i32 %i.fi, %invariant.op6957 ; 3 uses
  %i.fj = icmp slt i32 %.reass6958.us.us, 0
  br i1 %i.fj, label %..loopexit6924_crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph6953.split.us.us
  %i.fk = srem i32 %.reass6958.us.us, %i.ed
  %i.fl = sdiv i32 %.reass6958.us.us, %i.ed       ; 2 uses
  %.not2176.us.us = icmp eq i32 %i.fk, 0
  %.not2177.us.us = icmp slt i32 %i.fl, %i.bu
  %or.cond8983 = select i1 %.not2176.us.us, i1 %.not2177.us.us, i1 false
  br i1 %or.cond8983, label %.preheader6923.us.us, label %..loopexit6924_crit_edge.us.us

.preheader6923.us.us:                             ; preds = %bb.d
  %i.fm = mul nuw nsw i64 %indvars.iv8187, %i.ek
  %i.fn = sext i32 %i.fl to i64                   ; 5 uses
  br i1 %i.ck, label %.lr.ph.split.us.us.us, label %..loopexit6924_crit_edge.us.us

.lr.ph.split.us.us.us:                            ; preds = %.preheader6923.us.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader6923.us.us ] ; 3 uses
  %.365386940.us.us.us = phi <8 x float> [ %.7.us.us.us, %bb.f ], [ %.265376951.us.us, %.preheader6923.us.us ] ; 7 uses
  %.265486939.us.us.us = phi <8 x float> [ %.66552.us.us.us, %bb.f ], [ %.165476950.us.us, %.preheader6923.us.us ] ; 7 uses
  %.265716938.us.us.us = phi <8 x float> [ %.66575.us.us.us, %bb.f ], [ %.165706949.us.us, %.preheader6923.us.us ] ; 7 uses
  %.265896937.us.us.us = phi <8 x float> [ %.66593.us.us.us, %bb.f ], [ %.165886948.us.us, %.preheader6923.us.us ] ; 7 uses
  %i.fo = trunc i64 %indvars.iv to i32
  %i.fp = mul i32 %i.ei, %i.fo
  %.reass.us.us.us = add i32 %i.fp, %invariant.op ; 3 uses
  %i.fq = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.fq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.us.us
  %i.fr = srem i32 %.reass.us.us.us, %i.eh
  %i.fs = sdiv i32 %.reass.us.us.us, %i.eh        ; 5 uses
  %.not2178.us.us.us = icmp eq i32 %i.fr, 0
  %.not2179.us.us.us = icmp slt i32 %i.fs, %i.bt
  %or.cond8984 = select i1 %.not2178.us.us.us, i1 %.not2179.us.us.us, i1 false
  br i1 %or.cond8984, label %.split.us.us.us, label %bb.f

.split.us.us.us:                                  ; preds = %bb.e
  %i.ft = add nuw nsw i64 %i.fm, %indvars.iv
  %i.fu = shl i64 %i.ft, 7
  %i.fv = and i64 %i.fu, 4294967168
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.018316976.us, i64 %i.fv ; 64 uses
  switch i32 %i.cl, label %bb.f [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2339.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2338.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2336.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2332.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2339.us.us.us:               ; preds = %.split.us.us.us
  %i.fx = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !218
  %i.fy = load ptr, ptr %0, align 8, !tbaa !19, !noalias !218
  %i.fz = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !218
  %i.ga = mul i64 %i.fz, %i.em
  %i.gb = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !218 ; 2 uses
  %i.gc = mul i64 %i.ga, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.ge = sext i32 %i.fx to i64
  %i.gf = mul nsw i64 %i.ge, %i.fn
  %i.gg = mul i64 %i.gf, %i.gb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %i.gi = shl nsw i32 %i.fs, 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %i.gj ; 9 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !28
  %i.gm = zext i16 %i.gl to i32
  %i.gn = shl nuw i32 %i.gm, 16
  %i.go = insertelement <8 x i32> poison, i32 %i.gn, i64 0
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>
  %i.gq = shufflevector <8 x float> %i.gp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !28
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = insertelement <8 x i32> poison, i32 %i.gu, i64 0
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !28
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw i32 %i.ha, 16
  %i.hc = insertelement <8 x i32> poison, i32 %i.hb, i64 0
  %i.hd = bitcast <8 x i32> %i.hc to <8 x float>
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gk, i64 6
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !28
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = insertelement <8 x i32> poison, i32 %i.hi, i64 0
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !28
  %i.ho = zext i16 %i.hn to i32
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = insertelement <8 x i32> poison, i32 %i.hp, i64 0
  %i.hr = bitcast <8 x i32> %i.hq to <8 x float>
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !28
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %i.hy = bitcast <8 x i32> %i.hx to <8 x float>
  %i.hz = shufflevector <8 x float> %i.hy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !28
  %i.ic = zext i16 %i.ib to i32
  %i.id = shl nuw i32 %i.ic, 16
  %i.ie = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %i.if = bitcast <8 x i32> %i.ie to <8 x float>
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gk, i64 14
  %i.ii = load <8 x i16>, ptr %i.ih, align 2, !tbaa !28
  %i.ij = zext <8 x i16> %i.ii to <8 x i32>
  %i.ik = shl nuw <8 x i32> %i.ij, splat (i32 16) ; 8 uses
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = bitcast <8 x i32> %i.ik to <8 x float>
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ip = bitcast <8 x i32> %i.ik to <8 x float>
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ir = bitcast <8 x i32> %i.ik to <8 x float>
  %i.is = shufflevector <8 x float> %i.ir, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.it = bitcast <8 x i32> %i.ik to <8 x float>
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iv = bitcast <8 x i32> %i.ik to <8 x float>
  %i.iw = shufflevector <8 x float> %i.iv, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ix = bitcast <8 x i32> %i.ik to <8 x float>
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.iz = bitcast <8 x i32> %i.ik to <8 x float>
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gk, i64 30
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !28
  %i.jd = zext i16 %i.jc to i32
  %i.je = shl nuw i32 %i.jd, 16
  %i.jf = insertelement <8 x i32> poison, i32 %i.je, i64 0
  %i.jg = bitcast <8 x i32> %i.jf to <8 x float>
  %i.jh = shufflevector <8 x float> %i.jg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ji = load <8 x bfloat>, ptr %i.fw, align 16, !tbaa !26
  %i.jj = fpext fast <8 x bfloat> %i.ji to <8 x float>
  %i.jk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gq, <8 x float> nofpclass(nan inf) %i.jj, <8 x float> nofpclass(nan inf) %.365386940.us.us.us)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.jm = load <8 x bfloat>, ptr %i.jl, align 16, !tbaa !26
  %i.jn = fpext fast <8 x bfloat> %i.jm to <8 x float>
  %i.jo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> nofpclass(nan inf) %i.jn, <8 x float> nofpclass(nan inf) %.265486939.us.us.us)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.jq = load <8 x bfloat>, ptr %i.jp, align 16, !tbaa !26
  %i.jr = fpext fast <8 x bfloat> %i.jq to <8 x float>
  %i.js = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.jr, <8 x float> nofpclass(nan inf) %.265716938.us.us.us)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.ju = load <8 x bfloat>, ptr %i.jt, align 16, !tbaa !26
  %i.jv = fpext fast <8 x bfloat> %i.ju to <8 x float>
  %i.jw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hl, <8 x float> nofpclass(nan inf) %i.jv, <8 x float> nofpclass(nan inf) %.265896937.us.us.us)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.jy = load <8 x bfloat>, ptr %i.jx, align 16, !tbaa !26
  %i.jz = fpext fast <8 x bfloat> %i.jy to <8 x float>
  %i.ka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hs, <8 x float> nofpclass(nan inf) %i.jz, <8 x float> nofpclass(nan inf) %i.jk)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.kc = load <8 x bfloat>, ptr %i.kb, align 16, !tbaa !26
  %i.kd = fpext fast <8 x bfloat> %i.kc to <8 x float>
  %i.ke = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) %i.kd, <8 x float> nofpclass(nan inf) %i.jo)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.kg = load <8 x bfloat>, ptr %i.kf, align 16, !tbaa !26
  %i.kh = fpext fast <8 x bfloat> %i.kg to <8 x float>
  %i.ki = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %i.kh, <8 x float> nofpclass(nan inf) %i.js)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %i.kk = load <8 x bfloat>, ptr %i.kj, align 16, !tbaa !26
  %i.kl = fpext fast <8 x bfloat> %i.kk to <8 x float>
  %i.km = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %i.kl, <8 x float> nofpclass(nan inf) %i.jw)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.ko = load <8 x bfloat>, ptr %i.kn, align 16, !tbaa !26
  %i.kp = fpext fast <8 x bfloat> %i.ko to <8 x float>
  %i.kq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.io, <8 x float> nofpclass(nan inf) %i.kp, <8 x float> nofpclass(nan inf) %i.ka)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.ks = load <8 x bfloat>, ptr %i.kr, align 16, !tbaa !26
  %i.kt = fpext fast <8 x bfloat> %i.ks to <8 x float>
  %i.ku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iq, <8 x float> nofpclass(nan inf) %i.kt, <8 x float> nofpclass(nan inf) %i.ke)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.fw, i64 160
  %i.kw = load <8 x bfloat>, ptr %i.kv, align 16, !tbaa !26
  %i.kx = fpext fast <8 x bfloat> %i.kw to <8 x float>
  %i.ky = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.is, <8 x float> nofpclass(nan inf) %i.kx, <8 x float> nofpclass(nan inf) %i.ki)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fw, i64 176
  %i.la = load <8 x bfloat>, ptr %i.kz, align 16, !tbaa !26
  %i.lb = fpext fast <8 x bfloat> %i.la to <8 x float>
  %i.lc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iu, <8 x float> nofpclass(nan inf) %i.lb, <8 x float> nofpclass(nan inf) %i.km)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.le = load <8 x bfloat>, ptr %i.ld, align 16, !tbaa !26
  %i.lf = fpext fast <8 x bfloat> %i.le to <8 x float>
  %i.lg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iw, <8 x float> nofpclass(nan inf) %i.lf, <8 x float> nofpclass(nan inf) %i.kq) ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fw, i64 208
  %i.li = load <8 x bfloat>, ptr %i.lh, align 16, !tbaa !26
  %i.lj = fpext fast <8 x bfloat> %i.li to <8 x float>
  %i.lk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iy, <8 x float> nofpclass(nan inf) %i.lj, <8 x float> nofpclass(nan inf) %i.ku) ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fw, i64 224
  %i.lm = load <8 x bfloat>, ptr %i.ll, align 16, !tbaa !26
  %i.ln = fpext fast <8 x bfloat> %i.lm to <8 x float>
  %i.lo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %i.ln, <8 x float> nofpclass(nan inf) %i.ky) ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fw, i64 240
  %i.lq = load <8 x bfloat>, ptr %i.lp, align 16, !tbaa !26
  %i.lr = fpext fast <8 x bfloat> %i.lq to <8 x float>
  %i.ls = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jh, <8 x float> nofpclass(nan inf) %i.lr, <8 x float> nofpclass(nan inf) %i.lc) ; 4 uses
  switch i32 %.fr, label %bb.f [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2338.us.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2336.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2332.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2338.us.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.us.us, %.split.us.us.us
  %.36590.us.us.us = phi nsz <8 x float> [ %i.ls, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265896937.us.us.us, %.split.us.us.us ]
  %.36572.us.us.us = phi nsz <8 x float> [ %i.lo, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265716938.us.us.us, %.split.us.us.us ]
  %.36549.us.us.us = phi nsz <8 x float> [ %i.lk, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265486939.us.us.us, %.split.us.us.us ]
  %.46539.us.us.us = phi nsz <8 x float> [ %i.lg, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.365386940.us.us.us, %.split.us.us.us ]
  %i.lt = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !219
  %i.lu = load ptr, ptr %0, align 8, !tbaa !19, !noalias !219 ; 2 uses
  %i.lv = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !219 ; 2 uses
  %i.lw = mul i64 %i.lv, %i.en
  %i.lx = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !219 ; 3 uses
  %i.ly = mul i64 %i.lw, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ly
  %i.ma = sext i32 %i.lt to i64
  %i.mb = mul nsw i64 %i.ma, %i.fn
  %i.mc = mul i64 %i.mb, %i.lx                    ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mc
  %i.me = shl nsw i32 %i.fs, 3
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [2 x i8], ptr %i.md, i64 %i.mf ; 5 uses
  %i.mh = mul i64 %i.lv, %i.eo
  %i.mi = mul i64 %i.mh, %i.lx
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mc
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.mk, i64 %i.mf ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.afy = shl nuw i32 %i.afx, 16
  %i.afz = insertelement <8 x i32> poison, i32 %i.afy, i64 0
  %i.aga = bitcast <8 x i32> %i.afz to <8 x float>
  %i.agb = shufflevector <8 x float> %i.aga, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agc = mul i64 %i.adu, %i.fg
  %i.agd = mul i64 %i.agc, %i.adw
  %i.age = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.aeb
  %i.agg = getelementptr inbounds [2 x i8], ptr %i.agf, i64 %i.aaa
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !28
  %i.agi = zext i16 %i.agh to i32
  %i.agj = shl nuw i32 %i.agi, 16
  %i.agk = insertelement <8 x i32> poison, i32 %i.agj, i64 0
  %i.agl = bitcast <8 x i32> %i.agk to <8 x float>
  %i.agm = shufflevector <8 x float> %i.agl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agn = mul i64 %i.adu, %i.el
  %i.ago = mul i64 %i.agn, %i.adw
  %i.agp = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.ago
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.aeb
  %i.agr = getelementptr inbounds [2 x i8], ptr %i.agq, i64 %i.aaa
  %i.ags = load i16, ptr %i.agr, align 2, !tbaa !28
  %i.agt = zext i16 %i.ags to i32
  %i.agu = shl nuw i32 %i.agt, 16
  %i.agv = insertelement <8 x i32> poison, i32 %i.agu, i64 0
  %i.agw = bitcast <8 x i32> %i.agv to <8 x float>
  %i.agx = shufflevector <8 x float> %i.agw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agy = load <8 x bfloat>, ptr %i.fw, align 16, !tbaa !26
  %i.agz = fpext fast <8 x bfloat> %i.agy to <8 x float>
  %i.aha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aah, <8 x float> nofpclass(nan inf) %i.agz, <8 x float> nofpclass(nan inf) %.6.us.us.us)
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ahc = load <8 x bfloat>, ptr %i.ahb, align 16, !tbaa !26
  %i.ahd = fpext fast <8 x bfloat> %i.ahc to <8 x float>
  %i.ahe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aas, <8 x float> nofpclass(nan inf) %i.ahd, <8 x float> nofpclass(nan inf) %.56551.us.us.us)
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.ahg = load <8 x bfloat>, ptr %i.ahf, align 16, !tbaa !26
  %i.ahh = fpext fast <8 x bfloat> %i.ahg to <8 x float>
  %i.ahi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abd, <8 x float> nofpclass(nan inf) %i.ahh, <8 x float> nofpclass(nan inf) %.56574.us.us.us)
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.ahk = load <8 x bfloat>, ptr %i.ahj, align 16, !tbaa !26
  %i.ahl = fpext fast <8 x bfloat> %i.ahk to <8 x float>
  %i.ahm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abo, <8 x float> nofpclass(nan inf) %i.ahl, <8 x float> nofpclass(nan inf) %.56592.us.us.us)
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.aho = load <8 x bfloat>, ptr %i.ahn, align 16, !tbaa !26
  %i.ahp = fpext fast <8 x bfloat> %i.aho to <8 x float>
  %i.ahq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abz, <8 x float> nofpclass(nan inf) %i.ahp, <8 x float> nofpclass(nan inf) %i.aha)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.fw, i64 80
  %i.ahs = load <8 x bfloat>, ptr %i.ahr, align 16, !tbaa !26
  %i.aht = fpext fast <8 x bfloat> %i.ahs to <8 x float>
  %i.ahu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) %i.aht, <8 x float> nofpclass(nan inf) %i.ahe)
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.fw, i64 96
  %i.ahw = load <8 x bfloat>, ptr %i.ahv, align 16, !tbaa !26
  %i.ahx = fpext fast <8 x bfloat> %i.ahw to <8 x float>
  %i.ahy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acv, <8 x float> nofpclass(nan inf) %i.ahx, <8 x float> nofpclass(nan inf) %i.ahi)
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.fw, i64 112
  %i.aia = load <8 x bfloat>, ptr %i.ahz, align 16, !tbaa !26
  %i.aib = fpext fast <8 x bfloat> %i.aia to <8 x float>
  %i.aic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adg, <8 x float> nofpclass(nan inf) %i.aib, <8 x float> nofpclass(nan inf) %i.ahm)
  %i.aid = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.aie = load <8 x bfloat>, ptr %i.aid, align 16, !tbaa !26
  %i.aif = fpext fast <8 x bfloat> %i.aie to <8 x float>
  %i.aig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adr, <8 x float> nofpclass(nan inf) %i.aif, <8 x float> nofpclass(nan inf) %i.ahq)
  %i.aih = getelementptr inbounds nuw i8, ptr %i.fw, i64 144
  %i.aii = load <8 x bfloat>, ptr %i.aih, align 16, !tbaa !26
  %i.aij = fpext fast <8 x bfloat> %i.aii to <8 x float>
  %i.aik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aej, <8 x float> nofpclass(nan inf) %i.aij, <8 x float> nofpclass(nan inf) %i.ahu)
  %i.ail = getelementptr inbounds nuw i8, ptr %i.fw, i64 160
  %i.aim = load <8 x bfloat>, ptr %i.ail, align 16, !tbaa !26
  %i.ain = fpext fast <8 x bfloat> %i.aim to <8 x float>
  %i.aio = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %i.ain, <8 x float> nofpclass(nan inf) %i.ahy)
  %i.aip = getelementptr inbounds nuw i8, ptr %i.fw, i64 176
  %i.aiq = load <8 x bfloat>, ptr %i.aip, align 16, !tbaa !26
  %i.air = fpext fast <8 x bfloat> %i.aiq to <8 x float>
  %i.ais = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aff, <8 x float> nofpclass(nan inf) %i.air, <8 x float> nofpclass(nan inf) %i.aic)
  %i.ait = getelementptr inbounds nuw i8, ptr %i.fw, i64 192
  %i.aiu = load <8 x bfloat>, ptr %i.ait, align 16, !tbaa !26
  %i.aiv = fpext fast <8 x bfloat> %i.aiu to <8 x float>
  %i.aiw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) %i.aiv, <8 x float> nofpclass(nan inf) %i.aig)
  %i.aix = getelementptr inbounds nuw i8, ptr %i.fw, i64 208
  %i.aiy = load <8 x bfloat>, ptr %i.aix, align 16, !tbaa !26
  %i.aiz = fpext fast <8 x bfloat> %i.aiy to <8 x float>
  %i.aja = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agb, <8 x float> nofpclass(nan inf) %i.aiz, <8 x float> nofpclass(nan inf) %i.aik)
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.fw, i64 224
  %i.ajc = load <8 x bfloat>, ptr %i.ajb, align 16, !tbaa !26
  %i.ajd = fpext fast <8 x bfloat> %i.ajc to <8 x float>
  %i.aje = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agm, <8 x float> nofpclass(nan inf) %i.ajd, <8 x float> nofpclass(nan inf) %i.aio)
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.fw, i64 240
  %i.ajg = load <8 x bfloat>, ptr %i.ajf, align 16, !tbaa !26
  %i.ajh = fpext fast <8 x bfloat> %i.ajg to <8 x float>
  %i.aji = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agx, <8 x float> nofpclass(nan inf) %i.ajh, <8 x float> nofpclass(nan inf) %i.ais)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.us.us, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us, %.split.us.us.us, %bb.e, %.lr.ph.split.us.us.us
  %.66593.us.us.us = phi nsz <8 x float> [ %.265896937.us.us.us, %.lr.ph.split.us.us.us ], [ %.265896937.us.us.us, %.split.us.us.us ], [ %i.ls, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rw, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aji, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zo, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265896937.us.us.us, %bb.e ] ; 2 uses
  %.66575.us.us.us = phi nsz <8 x float> [ %.265716938.us.us.us, %.lr.ph.split.us.us.us ], [ %.265716938.us.us.us, %.split.us.us.us ], [ %i.lo, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rs, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aje, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zk, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265716938.us.us.us, %bb.e ] ; 2 uses
  %.66552.us.us.us = phi nsz <8 x float> [ %.265486939.us.us.us, %.lr.ph.split.us.us.us ], [ %.265486939.us.us.us, %.split.us.us.us ], [ %i.lk, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.ro, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aja, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zg, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265486939.us.us.us, %bb.e ] ; 2 uses
  %.7.us.us.us = phi nsz <8 x float> [ %.365386940.us.us.us, %.lr.ph.split.us.us.us ], [ %.365386940.us.us.us, %.split.us.us.us ], [ %i.lg, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rk, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aiw, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zc, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.365386940.us.us.us, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ek
  br i1 %exitcond.not, label %..loopexit6924_crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !49

..loopexit6924_crit_edge.us.us:                   ; preds = %bb.f, %.preheader6923.us.us, %bb.d, %.lr.ph6953.split.us.us
  %.76594.us.us = phi nsz <8 x float> [ %.165886948.us.us, %.lr.ph6953.split.us.us ], [ %.165886948.us.us, %bb.d ], [ %.165886948.us.us, %.preheader6923.us.us ], [ %.66593.us.us.us, %bb.f ] ; 2 uses
  %.76576.us.us = phi nsz <8 x float> [ %.165706949.us.us, %.lr.ph6953.split.us.us ], [ %.165706949.us.us, %bb.d ], [ %.165706949.us.us, %.preheader6923.us.us ], [ %.66575.us.us.us, %bb.f ] ; 2 uses
  %.76553.us.us = phi nsz <8 x float> [ %.165476950.us.us, %.lr.ph6953.split.us.us ], [ %.165476950.us.us, %bb.d ], [ %.165476950.us.us, %.preheader6923.us.us ], [ %.66552.us.us.us, %bb.f ] ; 2 uses
  %.8.us.us = phi nsz <8 x float> [ %.265376951.us.us, %.lr.ph6953.split.us.us ], [ %.265376951.us.us, %bb.d ], [ %.265376951.us.us, %.preheader6923.us.us ], [ %.7.us.us.us, %bb.f ] ; 2 uses
  %indvars.iv.next8188 = add nuw nsw i64 %indvars.iv8187, 1 ; 2 uses
  %exitcond8191.not = icmp eq i64 %indvars.iv.next8188, %wide.trip.count8190
  br i1 %exitcond8191.not, label %._crit_edge.us, label %.lr.ph6953.split.us.us, !llvm.loop !50

._crit_edge.us:                                   ; preds = %..loopexit6924_crit_edge.us.us, %.preheader6929.us
  %.us-phi6966.us = phi <8 x float> [ %.065876971.us, %.preheader6929.us ], [ %.76594.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6967.us = phi <8 x float> [ %.065696972.us, %.preheader6929.us ], [ %.76576.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6968.us = phi <8 x float> [ %.065466973.us, %.preheader6929.us ], [ %.76553.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6969.us = phi <8 x float> [ %.165366974.us, %.preheader6929.us ], [ %.8.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %i.ajj = getelementptr inbounds [2 x i8], ptr %.018316976.us, i64 %i.dj ; 2 uses
  %indvars.iv.next8193 = add nuw nsw i64 %indvars.iv8192, 16 ; 2 uses
  %i.ajk = icmp slt i64 %indvars.iv.next8193, %invariant.op8792
  br i1 %i.ajk, label %.preheader6929.us, label %.preheader6933, !llvm.loop !51

.preheader6933:                                   ; preds = %._crit_edge.us, %.preheader6929.preheader, %_ZN4ncnn3MatD2Ev.exit2340
  %.06587.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 3 uses
  %.06569.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6967.us, %._crit_edge.us ] ; 3 uses
  %.06546.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6968.us, %._crit_edge.us ] ; 3 uses
  %.16536.lcssa = phi <8 x float> [ %.06535, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %.06535, %.preheader6929.preheader ], [ %.us-phi6969.us, %._crit_edge.us ] ; 3 uses
  %.01836.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %i.db, %.preheader6929.preheader ], [ %i.de, %._crit_edge.us ] ; 6 uses
  %.01831.lcssa = phi ptr [ %i.eb, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %scevgep8185, %.preheader6929.preheader ], [ %i.ajj, %._crit_edge.us ] ; 3 uses
  %i.ajl = or disjoint i32 %.01836.lcssa, 7       ; 2 uses
  %i.ajm = icmp slt i32 %i.ajl, %i.bs
  br i1 %i.ajm, label %.preheader6928.lr.ph, label %.preheader6932

.preheader6928.lr.ph:                             ; preds = %.preheader6933
  %i.ajn = load i32, ptr %i.j, align 4
  %invariant.op7015 = sub i32 %.neg6858, %i.ajn
  %i.ajo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ajp = load i32, ptr %i.a, align 4
  %.fr8031 = freeze i32 %i.ajp                    ; 2 uses
  %i.ajq = icmp sgt i32 %.fr8031, 0
  %i.ajr = load i32, ptr %i.i, align 4
  %.neg6856 = add nuw nsw i32 %.018307214, 1
  %invariant.op7004 = sub i32 %.neg6856, %i.ajr
  %i.ajs = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dg, label %.preheader6928.us.preheader, label %.preheader6928.preheader

.preheader6928.preheader:                         ; preds = %.preheader6928.lr.ph
  %i.ajt = add i32 %.01836.lcssa, 15
  %smax = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.ajt)
  %i.aju = add i32 %smax, -8
  %i.ajv = sub i32 %i.aju, %.01836.lcssa          ; 2 uses
  %i.ajw = lshr i32 %i.ajv, 2
  %i.ajx = and i32 %i.ajw, 1073741822
  %narrow8752 = add nuw nsw i32 %i.ajx, 2
  %i.ajy = zext nneg i32 %narrow8752 to i64
  %i.ajz = mul nsw i64 %i.dl, %i.ajy
  %scevgep8195 = getelementptr i8, ptr %.01831.lcssa, i64 %i.ajz
  %i.aka = add i32 %.01836.lcssa, 8
  %i.akb = and i32 %i.ajv, -8
  %i.akc = add i32 %i.aka, %i.akb
  br label %.preheader6932

.preheader6928.us.preheader:                      ; preds = %.preheader6928.lr.ph
  %i.akd = load i32, ptr %i.c, align 4
  %i.ake = load i32, ptr %i.d, align 4
  %i.akf = zext i32 %.fr8031 to i64               ; 2 uses
  %i.akg = zext i32 %.01836.lcssa to i64
  %i.akh = zext nneg i32 %i.ajl to i64
  br label %.preheader6928.us

.preheader6928.us:                                ; preds = %.preheader6928.us.preheader, %._crit_edge.us7043
  %indvars.iv8206 = phi i64 [ %i.akg, %.preheader6928.us.preheader ], [ %indvars.iv.next8207, %._crit_edge.us7043 ] ; 10 uses
  %i.aki = phi i64 [ %i.akh, %.preheader6928.us.preheader ], [ %i.aup, %._crit_edge.us7043 ]
  %.118327027.us = phi ptr [ %.01831.lcssa, %.preheader6928.us.preheader ], [ %i.auo, %._crit_edge.us7043 ] ; 2 uses
  %.97025.us = phi <8 x float> [ %.16536.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7020.us, %._crit_edge.us7043 ] ; 2 uses
  %.865547024.us = phi <8 x float> [ %.06546.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7019.us, %._crit_edge.us7043 ] ; 2 uses
  %.865777023.us = phi <8 x float> [ %.06569.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7018.us, %._crit_edge.us7043 ] ; 2 uses
  %.865957022.us = phi <8 x float> [ %.06587.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7017.us, %._crit_edge.us7043 ] ; 2 uses
  %i.akj = or disjoint i64 %indvars.iv8206, 1
  %i.akk = or disjoint i64 %indvars.iv8206, 2
  %i.akl = or disjoint i64 %indvars.iv8206, 3
  %i.akm = or disjoint i64 %indvars.iv8206, 4
  %i.akn = or disjoint i64 %indvars.iv8206, 5
  %i.ako = or disjoint i64 %indvars.iv8206, 6
  %i.akp = lshr exact i64 %indvars.iv8206, 2      ; 2 uses
  %i.akq = or disjoint i64 %i.akp, 1
  %i.akr = lshr exact i64 %indvars.iv8206, 3
  br i1 %i.ajq, label %.lr.ph7010.split.us.us, label %._crit_edge.us7043

.lr.ph7010.split.us.us:                           ; preds = %.preheader6928.us, %..loopexit6922_crit_edge.us.us
  %indvars.iv8201 = phi i64 [ %indvars.iv.next8202, %..loopexit6922_crit_edge.us.us ], [ 0, %.preheader6928.us ] ; 3 uses
  %.107008.us.us = phi <8 x float> [ %.13.us.us, %..loopexit6922_crit_edge.us.us ], [ %.97025.us, %.preheader6928.us ] ; 3 uses
  %.965557007.us.us = phi <8 x float> [ %.126558.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865547024.us, %.preheader6928.us ] ; 3 uses
  %.965787006.us.us = phi <8 x float> [ %.126581.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865777023.us, %.preheader6928.us ] ; 3 uses
  %.965967005.us.us = phi <8 x float> [ %.126599.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865957022.us, %.preheader6928.us ] ; 3 uses
  %i.aks = trunc i64 %indvars.iv8201 to i32
  %i.akt = mul i32 %i.ake, %i.aks
  %.reass7016.us.us = add i32 %i.akt, %invariant.op7015 ; 3 uses
  %i.aku = icmp slt i32 %.reass7016.us.us, 0
  br i1 %i.aku, label %..loopexit6922_crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph7010.split.us.us
  %i.akv = srem i32 %.reass7016.us.us, %i.ajo
  %i.akw = sdiv i32 %.reass7016.us.us, %i.ajo     ; 2 uses
  %.not2172.us.us = icmp eq i32 %i.akv, 0
  %.not2173.us.us = icmp slt i32 %i.akw, %i.bu
  %or.cond8985 = select i1 %.not2172.us.us, i1 %.not2173.us.us, i1 false
  br i1 %or.cond8985, label %.preheader6921.us.us, label %..loopexit6922_crit_edge.us.us

.preheader6921.us.us:                             ; preds = %bb.g
  %i.akx = mul nuw nsw i64 %indvars.iv8201, %i.akf
  %i.aky = sext i32 %i.akw to i64                 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.preheader6921.us.us
  %indvars.iv8196 = phi i64 [ %indvars.iv.next8197, %bb.k ], [ 0, %.preheader6921.us.us ] ; 3 uses
  %.116998.us.us = phi <8 x float> [ %.12.us.us, %bb.k ], [ %.107008.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065566997.us.us = phi <8 x float> [ %.116557.us.us, %bb.k ], [ %.965557007.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065796996.us.us = phi <8 x float> [ %.116580.us.us, %bb.k ], [ %.965787006.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065976995.us.us = phi <8 x float> [ %.116598.us.us, %bb.k ], [ %.965967005.us.us, %.preheader6921.us.us ] ; 4 uses
  %i.akz = trunc i64 %indvars.iv8196 to i32
  %i.ala = mul i32 %i.akd, %i.akz
  %.reass.us.us = add i32 %i.ala, %invariant.op7004 ; 3 uses
  %i.alb = icmp slt i32 %.reass.us.us, 0
  br i1 %i.alb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.alc = srem i32 %.reass.us.us, %i.ajs
  %i.ald = sdiv i32 %.reass.us.us, %i.ajs         ; 4 uses
  %.not2174.us.us = icmp eq i32 %i.alc, 0
  %.not2175.us.us = icmp slt i32 %i.ald, %i.bt
  %or.cond8986 = select i1 %.not2174.us.us, i1 %.not2175.us.us, i1 false
  br i1 %or.cond8986, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ale = add nuw nsw i64 %i.akx, %indvars.iv8196
  %i.alf = shl i64 %i.ale, 6
  %i.alg = and i64 %i.alf, 4294967232
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %.118327027.us, i64 %i.alg ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2300.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2299.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2297.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2297.us.us:                  ; preds = %bb.j
  %i.ali = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !223
  %i.alj = load ptr, ptr %0, align 8, !tbaa !19, !noalias !223 ; 8 uses
  %i.alk = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !223 ; 8 uses
  %i.all = mul i64 %i.alk, %indvars.iv8206
  %i.alm = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !223 ; 9 uses
  %i.aln = mul i64 %i.all, %i.alm
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.aln
  %i.alp = sext i32 %i.ali to i64
  %i.alq = mul nsw i64 %i.alp, %i.aky
  %i.alr = mul i64 %i.alq, %i.alm                 ; 8 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.alr
  %i.alt = sext i32 %i.ald to i64                 ; 8 uses
  %i.alu = getelementptr inbounds [2 x i8], ptr %i.als, i64 %i.alt
  %i.alv = mul i64 %i.alk, %i.akj
  %i.alw = mul i64 %i.alv, %i.alm
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 %i.alr
  %i.alz = getelementptr inbounds [2 x i8], ptr %i.aly, i64 %i.alt
  %i.ama = mul i64 %i.alk, %i.akk
  %i.amb = mul i64 %i.ama, %i.alm
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.alr
  %i.ame = getelementptr inbounds [2 x i8], ptr %i.amd, i64 %i.alt
  %i.amf = mul i64 %i.alk, %i.akl
  %i.amg = mul i64 %i.amf, %i.alm
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.amg
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.alr
  %i.amj = getelementptr inbounds [2 x i8], ptr %i.ami, i64 %i.alt
  %i.amk = mul i64 %i.alk, %i.akm
  %i.aml = mul i64 %i.amk, %i.alm
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.aml
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 %i.alr
  %i.amo = getelementptr inbounds [2 x i8], ptr %i.amn, i64 %i.alt
  %i.amp = mul i64 %i.alk, %i.akn
  %i.amq = mul i64 %i.amp, %i.alm
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 %i.alr
  %i.amt = getelementptr inbounds [2 x i8], ptr %i.ams, i64 %i.alt
  %i.amu = mul i64 %i.alk, %i.ako
  %i.amv = mul i64 %i.amu, %i.alm
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.alr
  %i.amy = getelementptr inbounds [2 x i8], ptr %i.amx, i64 %i.alt
  %i.amz = mul i64 %i.alk, %i.aki
  %i.ana = mul i64 %i.amz, %i.alm
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 %i.alr
  %i.and = getelementptr inbounds [2 x i8], ptr %i.anc, i64 %i.alt
  %i.ane = load i16, ptr %i.alu, align 2, !tbaa !28
  %i.anf = zext i16 %i.ane to i32
  %i.ang = shl nuw i32 %i.anf, 16
  %i.anh = insertelement <8 x i32> poison, i32 %i.ang, i64 0
  %i.ani = bitcast <8 x i32> %i.anh to <8 x float>
  %i.anj = shufflevector <8 x float> %i.ani, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ank = load i16, ptr %i.alz, align 2, !tbaa !28
  %i.anl = zext i16 %i.ank to i32
  %i.anm = shl nuw i32 %i.anl, 16
  %i.ann = insertelement <8 x i32> poison, i32 %i.anm, i64 0
  %i.ano = bitcast <8 x i32> %i.ann to <8 x float>
  %i.anp = shufflevector <8 x float> %i.ano, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anq = load i16, ptr %i.ame, align 2, !tbaa !28
  %i.anr = zext i16 %i.anq to i32
  %i.ans = shl nuw i32 %i.anr, 16
  %i.ant = insertelement <8 x i32> poison, i32 %i.ans, i64 0
  %i.anu = bitcast <8 x i32> %i.ant to <8 x float>
  %i.anv = shufflevector <8 x float> %i.anu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anw = load i16, ptr %i.amj, align 2, !tbaa !28
  %i.anx = zext i16 %i.anw to i32
  %i.any = shl nuw i32 %i.anx, 16
  %i.anz = insertelement <8 x i32> poison, i32 %i.any, i64 0
  %i.aoa = bitcast <8 x i32> %i.anz to <8 x float>
  %i.aob = shufflevector <8 x float> %i.aoa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aoc = load i16, ptr %i.amo, align 2, !tbaa !28
  %i.aod = zext i16 %i.aoc to i32
  %i.aoe = shl nuw i32 %i.aod, 16
  %i.aof = insertelement <8 x i32> poison, i32 %i.aoe, i64 0
  %i.aog = bitcast <8 x i32> %i.aof to <8 x float>
  %i.aoh = shufflevector <8 x float> %i.aog, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aoi = load i16, ptr %i.amt, align 2, !tbaa !28
  %i.aoj = zext i16 %i.aoi to i32
  %i.aok = shl nuw i32 %i.aoj, 16
  %i.aol = insertelement <8 x i32> poison, i32 %i.aok, i64 0
  %i.aom = bitcast <8 x i32> %i.aol to <8 x float>
  %i.aon = shufflevector <8 x float> %i.aom, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aoo = load i16, ptr %i.amy, align 2, !tbaa !28
  %i.aop = zext i16 %i.aoo to i32
  %i.aoq = shl nuw i32 %i.aop, 16
  %i.aor = insertelement <8 x i32> poison, i32 %i.aoq, i64 0
  %i.aos = bitcast <8 x i32> %i.aor to <8 x float>
  %i.aot = shufflevector <8 x float> %i.aos, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit2299.us.us:                  ; preds = %bb.j
  %i.aou = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !224
  %i.aov = load ptr, ptr %0, align 8, !tbaa !19, !noalias !224 ; 2 uses
  %i.aow = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !224 ; 2 uses
  %i.aox = mul i64 %i.aow, %i.akp
  %i.aoy = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !224 ; 3 uses
  %i.aoz = mul i64 %i.aox, %i.aoy
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aoz
  %i.apb = sext i32 %i.aou to i64
  %i.apc = mul nsw i64 %i.apb, %i.aky
  %i.apd = mul i64 %i.apc, %i.aoy                 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apa, i64 %i.apd
  %i.apf = shl nsw i32 %i.ald, 2
  %i.apg = sext i32 %i.apf to i64                 ; 2 uses
  %i.aph = getelementptr inbounds [2 x i8], ptr %i.ape, i64 %i.apg ; 4 uses
  %i.api = mul i64 %i.aow, %i.akq
  %i.apj = mul i64 %i.api, %i.aoy
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.apj
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 %i.apd
  %i.apm = getelementptr inbounds [2 x i8], ptr %i.apl, i64 %i.apg ; 4 uses
  %i.apn = load i16, ptr %i.aph, align 2, !tbaa !28
  %i.apo = zext i16 %i.apn to i32
  %i.app = shl nuw i32 %i.apo, 16
  %i.apq = insertelement <8 x i32> poison, i32 %i.app, i64 0
  %i.apr = bitcast <8 x i32> %i.apq to <8 x float>
  %i.aps = shufflevector <8 x float> %i.apr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aph, i64 2
  %i.apu = load i16, ptr %i.apt, align 2, !tbaa !28
  %i.apv = zext i16 %i.apu to i32
  %i.apw = shl nuw i32 %i.apv, 16
  %i.apx = insertelement <8 x i32> poison, i32 %i.apw, i64 0
  %i.apy = bitcast <8 x i32> %i.apx to <8 x float>
  %i.apz = shufflevector <8 x float> %i.apy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.aph, i64 4
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !28
  %i.aqc = zext i16 %i.aqb to i32
  %i.aqd = shl nuw i32 %i.aqc, 16
  %i.aqe = insertelement <8 x i32> poison, i32 %i.aqd, i64 0
  %i.aqf = bitcast <8 x i32> %i.aqe to <8 x float>
  %i.aqg = shufflevector <8 x float> %i.aqf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aph, i64 6
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !28
  %i.aqj = zext i16 %i.aqi to i32
  %i.aqk = shl nuw i32 %i.aqj, 16
  %i.aql = insertelement <8 x i32> poison, i32 %i.aqk, i64 0
  %i.aqm = bitcast <8 x i32> %i.aql to <8 x float>
  %i.aqn = shufflevector <8 x float> %i.aqm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqo = load i16, ptr %i.apm, align 2, !tbaa !28
  %i.aqp = zext i16 %i.aqo to i32
  %i.aqq = shl nuw i32 %i.aqp, 16
  %i.aqr = insertelement <8 x i32> poison, i32 %i.aqq, i64 0
  %i.aqs = bitcast <8 x i32> %i.aqr to <8 x float>
  %i.aqt = shufflevector <8 x float> %i.aqs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apm, i64 2
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !28
  %i.aqw = zext i16 %i.aqv to i32
  %i.aqx = shl nuw i32 %i.aqw, 16
  %i.aqy = insertelement <8 x i32> poison, i32 %i.aqx, i64 0
  %i.aqz = bitcast <8 x i32> %i.aqy to <8 x float>
  %i.ara = shufflevector <8 x float> %i.aqz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arb = getelementptr inbounds nuw i8, ptr %i.apm, i64 4
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !28
  %i.ard = zext i16 %i.arc to i32
  %i.are = shl nuw i32 %i.ard, 16
  %i.arf = insertelement <8 x i32> poison, i32 %i.are, i64 0
  %i.arg = bitcast <8 x i32> %i.arf to <8 x float>
  %i.arh = shufflevector <8 x float> %i.arg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apm, i64 6
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit2300.us.us:                  ; preds = %bb.j
  %i.arj = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !225
  %i.ark = load ptr, ptr %0, align 8, !tbaa !19, !noalias !225
  %i.arl = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !225
  %i.arm = mul i64 %i.arl, %i.akr
  %i.arn = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !225 ; 2 uses
  %i.aro = mul i64 %i.arm, %i.arn
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ark, i64 %i.aro
  %i.arq = sext i32 %i.arj to i64
  %i.arr = mul nsw i64 %i.arq, %i.aky
  %i.ars = mul i64 %i.arr, %i.arn
  %i.art = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.ars
  %i.aru = shl nsw i32 %i.ald, 3
  %i.arv = sext i32 %i.aru to i64
  %i.arw = getelementptr inbounds [2 x i8], ptr %i.art, i64 %i.arv ; 5 uses
  %i.arx = load i16, ptr %i.arw, align 2, !tbaa !28
  %i.ary = zext i16 %i.arx to i32
  %i.arz = shl nuw i32 %i.ary, 16
  %i.asa = insertelement <8 x i32> poison, i32 %i.arz, i64 0
  %i.asb = bitcast <8 x i32> %i.asa to <8 x float>
  %i.asc = shufflevector <8 x float> %i.asb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !28
  %i.asf = zext i16 %i.ase to i32
  %i.asg = shl nuw i32 %i.asf, 16
  %i.ash = insertelement <8 x i32> poison, i32 %i.asg, i64 0
  %i.asi = bitcast <8 x i32> %i.ash to <8 x float>
  %i.asj = shufflevector <8 x float> %i.asi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ask = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.asl = load i16, ptr %i.ask, align 2, !tbaa !28
  %i.asm = zext i16 %i.asl to i32
  %i.asn = shl nuw i32 %i.asm, 16
  %i.aso = insertelement <8 x i32> poison, i32 %i.asn, i64 0
  %i.asp = bitcast <8 x i32> %i.aso to <8 x float>
  %i.asq = shufflevector <8 x float> %i.asp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arw, i64 6
  %i.ass = load <4 x i16>, ptr %i.asr, align 2, !tbaa !28
  %i.ast = zext <4 x i16> %i.ass to <4 x i32>
  %i.asu = shl nuw <4 x i32> %i.ast, splat (i32 16) ; 4 uses
  %i.asv = bitcast <4 x i32> %i.asu to <4 x float>
  %i.asw = shufflevector <4 x float> %i.asv, <4 x float> poison, <8 x i32> zeroinitializer
  %i.asx = bitcast <4 x i32> %i.asu to <4 x float>
  %i.asy = shufflevector <4 x float> %i.asx, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.asz = bitcast <4 x i32> %i.asu to <4 x float>
  %i.ata = shufflevector <4 x float> %i.asz, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.atb = bitcast <4 x i32> %i.asu to <4 x float>
  %i.atc = shufflevector <4 x float> %i.atb, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.atd = getelementptr inbounds nuw i8, ptr %i.arw, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit2297.us.us, %_ZN4ncnn3MatD2Ev.exit2299.us.us, %_ZN4ncnn3MatD2Ev.exit2300.us.us
  %.sink8832.in = phi ptr [ %i.atd, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.ari, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.and, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8827 = phi <8 x float> [ %i.asc, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aps, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.anj, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8823 = phi <8 x float> [ %i.asj, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.apz, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.anp, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8819 = phi <8 x float> [ %i.asq, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqg, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.anv, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8815 = phi <8 x float> [ %i.asw, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqn, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aob, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8810 = phi <8 x float> [ %i.asy, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqt, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aoh, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8805 = phi <8 x float> [ %i.ata, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.ara, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aon, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8800 = phi <8 x float> [ %i.atc, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.arh, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aot, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8832 = load i16, ptr %.sink8832.in, align 2, !tbaa !28
  %i.ate = zext i16 %.sink8832 to i32
  %i.atf = shl nuw i32 %i.ate, 16
  %i.atg = insertelement <8 x i32> poison, i32 %i.atf, i64 0
  %i.ath = bitcast <8 x i32> %i.atg to <8 x float>
  %i.ati = shufflevector <8 x float> %i.ath, <8 x float> poison, <8 x i32> zeroinitializer
  %i.atj = load <8 x bfloat>, ptr %i.alh, align 16, !tbaa !26
  %i.atk = fpext fast <8 x bfloat> %i.atj to <8 x float>
  %i.atl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8827, <8 x float> nofpclass(nan inf) %i.atk, <8 x float> nofpclass(nan inf) %.116998.us.us)
  %i.atm = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  %i.atn = load <8 x bfloat>, ptr %i.atm, align 16, !tbaa !26
  %i.ato = fpext fast <8 x bfloat> %i.atn to <8 x float>
  %i.atp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8823, <8 x float> nofpclass(nan inf) %i.ato, <8 x float> nofpclass(nan inf) %.1065566997.us.us)
  %i.atq = getelementptr inbounds nuw i8, ptr %i.alh, i64 32
  %i.atr = load <8 x bfloat>, ptr %i.atq, align 16, !tbaa !26
  %i.ats = fpext fast <8 x bfloat> %i.atr to <8 x float>
  %i.att = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8819, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) %.1065796996.us.us)
  %i.atu = getelementptr inbounds nuw i8, ptr %i.alh, i64 48
  %i.atv = load <8 x bfloat>, ptr %i.atu, align 16, !tbaa !26
  %i.atw = fpext fast <8 x bfloat> %i.atv to <8 x float>
  %i.atx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8815, <8 x float> nofpclass(nan inf) %i.atw, <8 x float> nofpclass(nan inf) %.1065976995.us.us)
  %i.aty = getelementptr inbounds nuw i8, ptr %i.alh, i64 64
  %i.atz = load <8 x bfloat>, ptr %i.aty, align 16, !tbaa !26
  %i.aua = fpext fast <8 x bfloat> %i.atz to <8 x float>
  %i.aub = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8810, <8 x float> nofpclass(nan inf) %i.aua, <8 x float> nofpclass(nan inf) %i.atl)
  %i.auc = getelementptr inbounds nuw i8, ptr %i.alh, i64 80
  %i.aud = load <8 x bfloat>, ptr %i.auc, align 16, !tbaa !26
  %i.aue = fpext fast <8 x bfloat> %i.aud to <8 x float>
  %i.auf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8805, <8 x float> nofpclass(nan inf) %i.aue, <8 x float> nofpclass(nan inf) %i.atp)
  %i.aug = getelementptr inbounds nuw i8, ptr %i.alh, i64 96
  %i.auh = load <8 x bfloat>, ptr %i.aug, align 16, !tbaa !26
  %i.aui = fpext fast <8 x bfloat> %i.auh to <8 x float>
  %i.auj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8800, <8 x float> nofpclass(nan inf) %i.aui, <8 x float> nofpclass(nan inf) %i.att)
  %i.auk = getelementptr inbounds nuw i8, ptr %i.alh, i64 112
  %i.aul = load <8 x bfloat>, ptr %i.auk, align 16, !tbaa !26
  %i.aum = fpext fast <8 x bfloat> %i.aul to <8 x float>
  %i.aun = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) %i.aum, <8 x float> nofpclass(nan inf) %i.atx)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h
  %.116598.us.us = phi nsz <8 x float> [ %.1065976995.us.us, %bb.h ], [ %.1065976995.us.us, %bb.j ], [ %.1065976995.us.us, %bb.i ], [ %i.aun, %.sink.split ] ; 2 uses
  %.116580.us.us = phi nsz <8 x float> [ %.1065796996.us.us, %bb.h ], [ %.1065796996.us.us, %bb.j ], [ %.1065796996.us.us, %bb.i ], [ %i.auj, %.sink.split ] ; 2 uses
  %.116557.us.us = phi nsz <8 x float> [ %.1065566997.us.us, %bb.h ], [ %.1065566997.us.us, %bb.j ], [ %.1065566997.us.us, %bb.i ], [ %i.auf, %.sink.split ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.116998.us.us, %bb.h ], [ %.116998.us.us, %bb.j ], [ %.116998.us.us, %bb.i ], [ %i.aub, %.sink.split ] ; 2 uses
  %indvars.iv.next8197 = add nuw nsw i64 %indvars.iv8196, 1 ; 2 uses
  %exitcond8200.not = icmp eq i64 %indvars.iv.next8197, %i.akf
  br i1 %exitcond8200.not, label %..loopexit6922_crit_edge.us.us, label %bb.h, !llvm.loop !58

..loopexit6922_crit_edge.us.us:                   ; preds = %bb.k, %bb.g, %.lr.ph7010.split.us.us
  %.126599.us.us = phi nsz <8 x float> [ %.965967005.us.us, %.lr.ph7010.split.us.us ], [ %.965967005.us.us, %bb.g ], [ %.116598.us.us, %bb.k ] ; 2 uses
  %.126581.us.us = phi nsz <8 x float> [ %.965787006.us.us, %.lr.ph7010.split.us.us ], [ %.965787006.us.us, %bb.g ], [ %.116580.us.us, %bb.k ] ; 2 uses
  %.126558.us.us = phi nsz <8 x float> [ %.965557007.us.us, %.lr.ph7010.split.us.us ], [ %.965557007.us.us, %bb.g ], [ %.116557.us.us, %bb.k ] ; 2 uses
  %.13.us.us = phi nsz <8 x float> [ %.107008.us.us, %.lr.ph7010.split.us.us ], [ %.107008.us.us, %bb.g ], [ %.12.us.us, %bb.k ] ; 2 uses
  %indvars.iv.next8202 = add nuw nsw i64 %indvars.iv8201, 1 ; 2 uses
  %exitcond8205.not = icmp eq i64 %indvars.iv.next8202, %wide.trip.count8204
  br i1 %exitcond8205.not, label %._crit_edge.us7043, label %.lr.ph7010.split.us.us, !llvm.loop !59

._crit_edge.us7043:                               ; preds = %..loopexit6922_crit_edge.us.us, %.preheader6928.us
  %.us-phi7017.us = phi <8 x float> [ %.865957022.us, %.preheader6928.us ], [ %.126599.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7018.us = phi <8 x float> [ %.865777023.us, %.preheader6928.us ], [ %.126581.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7019.us = phi <8 x float> [ %.865547024.us, %.preheader6928.us ], [ %.126558.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7020.us = phi <8 x float> [ %.97025.us, %.preheader6928.us ], [ %.13.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %i.auo = getelementptr inbounds [2 x i8], ptr %.118327027.us, i64 %i.dl ; 2 uses
  %indvars.iv.next8207 = add nuw nsw i64 %indvars.iv8206, 8 ; 3 uses
  %i.aup = or disjoint i64 %indvars.iv.next8207, 7 ; 2 uses
  %i.auq = trunc nuw i64 %i.aup to i32
  %i.aur = icmp sgt i32 %i.bs, %i.auq
  br i1 %i.aur, label %.preheader6928.us, label %.preheader6932.loopexit, !llvm.loop !60

.preheader6932.loopexit:                          ; preds = %._crit_edge.us7043
  %i.aus = trunc nuw i64 %indvars.iv.next8207 to i32
  br label %.preheader6932

.preheader6932:                                   ; preds = %.preheader6928.preheader, %.preheader6932.loopexit, %.preheader6933
  %.86595.lcssa = phi <8 x float> [ %.06587.lcssa, %.preheader6933 ], [ %.us-phi7017.us, %.preheader6932.loopexit ], [ %.06587.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.86577.lcssa = phi <8 x float> [ %.06569.lcssa, %.preheader6933 ], [ %.us-phi7018.us, %.preheader6932.loopexit ], [ %.06569.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.86554.lcssa = phi <8 x float> [ %.06546.lcssa, %.preheader6933 ], [ %.us-phi7019.us, %.preheader6932.loopexit ], [ %.06546.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.9.lcssa = phi <8 x float> [ %.16536.lcssa, %.preheader6933 ], [ %.us-phi7020.us, %.preheader6932.loopexit ], [ %.16536.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.11837.lcssa = phi i32 [ %.01836.lcssa, %.preheader6933 ], [ %i.aus, %.preheader6932.loopexit ], [ %i.akc, %.preheader6928.preheader ] ; 6 uses
  %.11832.lcssa = phi ptr [ %.01831.lcssa, %.preheader6933 ], [ %i.auo, %.preheader6932.loopexit ], [ %scevgep8195, %.preheader6928.preheader ] ; 3 uses
  %i.aut = or disjoint i32 %.11837.lcssa, 3       ; 2 uses
  %i.auu = icmp slt i32 %i.aut, %i.bs
  br i1 %i.auu, label %.preheader6927.lr.ph, label %.preheader6931

.preheader6927.lr.ph:                             ; preds = %.preheader6932
  %i.auv = load i32, ptr %i.j, align 4
  %invariant.op7096 = sub i32 %.neg6858, %i.auv
  %i.auw = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aux = load i32, ptr %i.a, align 4
  %.fr8032 = freeze i32 %i.aux                    ; 2 uses
  %i.auy = icmp sgt i32 %.fr8032, 0
  %i.auz = load i32, ptr %i.i, align 4
  %.neg6852 = add nuw nsw i32 %.018307214, 1
  %invariant.op7059 = sub i32 %.neg6852, %i.auz   ; 2 uses
  %i.ava = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.dg, label %.preheader6927.us.preheader, label %.preheader6927.preheader

.preheader6927.preheader:                         ; preds = %.preheader6927.lr.ph
  %i.avb = add i32 %.11837.lcssa, 7
  %smax8209 = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.avb)
  %i.avc = add i32 %smax8209, -4
  %i.avd = sub i32 %i.avc, %.11837.lcssa          ; 2 uses
  %i.ave = lshr i32 %i.avd, 1
  %i.avf = and i32 %i.ave, 2147483646
  %narrow8753 = add nuw i32 %i.avf, 2
  %i.avg = zext i32 %narrow8753 to i64
  %i.avh = mul nsw i64 %i.dn, %i.avg
  %scevgep8210 = getelementptr i8, ptr %.11832.lcssa, i64 %i.avh
  %i.avi = add i32 %.11837.lcssa, 4
  %i.avj = and i32 %i.avd, -4
  %i.avk = add i32 %i.avi, %i.avj
  br label %.preheader6931

.preheader6927.us.preheader:                      ; preds = %.preheader6927.lr.ph
  %i.avl = load i32, ptr %i.c, align 4            ; 2 uses
  %i.avm = load i32, ptr %i.d, align 4
  %i.avn = zext i32 %.fr8032 to i64               ; 3 uses
  %i.avo = zext i32 %.11837.lcssa to i64
  %i.avp = zext nneg i32 %i.aut to i64
  br label %.preheader6927.us

.preheader6927.us:                                ; preds = %.preheader6927.us.preheader, %._crit_edge.us7133
  %indvars.iv8226 = phi i64 [ %i.avo, %.preheader6927.us.preheader ], [ %indvars.iv.next8227, %._crit_edge.us7133 ] ; 5 uses
  %i.avq = phi i64 [ %i.avp, %.preheader6927.us.preheader ], [ %i.bbn, %._crit_edge.us7133 ]
  %.218337116.us = phi ptr [ %.11832.lcssa, %.preheader6927.us.preheader ], [ %i.bbm, %._crit_edge.us7133 ] ; 3 uses
  %.147114.us = phi <8 x float> [ %.9.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7109.us, %._crit_edge.us7133 ] ; 2 uses
  %.1365597113.us = phi <8 x float> [ %.86554.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7108.us, %._crit_edge.us7133 ] ; 2 uses
  %.1365827112.us = phi <8 x float> [ %.86577.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7107.us, %._crit_edge.us7133 ] ; 2 uses
  %.1366007111.us = phi <8 x float> [ %.86595.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7106.us, %._crit_edge.us7133 ] ; 2 uses
  %i.avr = or disjoint i64 %indvars.iv8226, 1
  %i.avs = or disjoint i64 %indvars.iv8226, 2
  %i.avt = lshr exact i64 %indvars.iv8226, 2
  br i1 %i.auy, label %.lr.ph7091.split.us.us, label %._crit_edge.us7133

.lr.ph7091.split.us.us:                           ; preds = %.preheader6927.us, %..loopexit6920_crit_edge.us.us
  %indvars.iv8221 = phi i64 [ %indvars.iv.next8222, %..loopexit6920_crit_edge.us.us ], [ 0, %.preheader6927.us ] ; 3 uses
  %.1565407089.us.us = phi <8 x float> [ %.18.us.us, %..loopexit6920_crit_edge.us.us ], [ %.147114.us, %.preheader6927.us ] ; 5 uses
  %.1465607088.us.us = phi <8 x float> [ %.176563.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1365597113.us, %.preheader6927.us ] ; 5 uses
  %.1465837087.us.us = phi <8 x float> [ %.176586.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1365827112.us, %.preheader6927.us ] ; 5 uses
  %.1466017086.us.us = phi <8 x float> [ %.176604.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1366007111.us, %.preheader6927.us ] ; 5 uses
  %i.avu = trunc i64 %indvars.iv8221 to i32
  %i.avv = mul i32 %i.avm, %i.avu
  %.reass7097.us.us = add i32 %i.avv, %invariant.op7096 ; 3 uses
  %i.avw = icmp slt i32 %.reass7097.us.us, 0
  br i1 %i.avw, label %..loopexit6920_crit_edge.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph7091.split.us.us
  %i.avx = srem i32 %.reass7097.us.us, %i.auw
  %i.avy = sdiv i32 %.reass7097.us.us, %i.auw     ; 2 uses
  %.not2168.us.us = icmp eq i32 %i.avx, 0
  %.not2169.us.us = icmp slt i32 %i.avy, %i.bu
  %or.cond8987 = select i1 %.not2168.us.us, i1 %.not2169.us.us, i1 false
  br i1 %or.cond8987, label %.preheader6919.us.us, label %..loopexit6920_crit_edge.us.us

.preheader6919.us.us:                             ; preds = %bb.l
  %i.avz = mul nuw nsw i64 %indvars.iv8221, %i.avn ; 2 uses
  %i.awa = sext i32 %i.avy to i64                 ; 2 uses
  switch i32 %.fr, label %..loopexit6920_crit_edge.us.us [
    i32 4, label %.lr.ph.split.us.us.us7131
    i32 1, label %.lr.ph.split.us7064.us.us
  ]

.lr.ph.split.us7064.us.us:                        ; preds = %.preheader6919.us.us, %bb.n
  %indvars.iv8211 = phi i64 [ %indvars.iv.next8212, %bb.n ], [ 0, %.preheader6919.us.us ] ; 3 uses
  %.167053.us7066.us.us = phi <8 x float> [ %.17.us7076.us.us, %bb.n ], [ %.1565407089.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565617052.us7067.us.us = phi <8 x float> [ %.166562.us7075.us.us, %bb.n ], [ %.1465607088.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565847051.us7068.us.us = phi <8 x float> [ %.166585.us7074.us.us, %bb.n ], [ %.1465837087.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1566027050.us7069.us.us = phi <8 x float> [ %.166603.us7073.us.us, %bb.n ], [ %.1466017086.us.us, %.preheader6919.us.us ] ; 3 uses
  %i.awb = trunc i64 %indvars.iv8211 to i32
  %i.awc = mul i32 %i.avl, %i.awb
  %.reass.us7070.us.us = add i32 %i.awc, %invariant.op7059 ; 3 uses
  %i.awd = icmp slt i32 %.reass.us7070.us.us, 0
  br i1 %i.awd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us7064.us.us
  %i.awe = srem i32 %.reass.us7070.us.us, %i.ava
  %i.awf = sdiv i32 %.reass.us7070.us.us, %i.ava  ; 2 uses
  %.not2170.us7071.us.us = icmp eq i32 %i.awe, 0
  %.not2171.us7072.us.us = icmp slt i32 %i.awf, %i.bt
  %or.cond8988 = select i1 %.not2170.us7071.us.us, i1 %.not2171.us7072.us.us, i1 false
  br i1 %or.cond8988, label %_ZN4ncnn3MatD2Ev.exit2288.us.us.us, label %bb.n

_ZN4ncnn3MatD2Ev.exit2288.us.us.us:               ; preds = %bb.m
  %i.awg = add nuw nsw i64 %i.avz, %indvars.iv8211
  %i.awh = shl i64 %i.awg, 5
  %i.awi = and i64 %i.awh, 4294967264
  %i.awj = getelementptr inbounds nuw [2 x i8], ptr %.218337116.us, i64 %i.awi ; 4 uses
  %i.awk = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !226
  %i.awl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !226 ; 4 uses
  %i.awm = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !226 ; 4 uses
  %i.awn = mul i64 %i.awm, %indvars.iv8226
  %i.awo = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !226 ; 5 uses
  %i.awp = mul i64 %i.awn, %i.awo
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.awp
  %i.awr = sext i32 %i.awk to i64
  %i.aws = mul nsw i64 %i.awr, %i.awa
  %i.awt = mul i64 %i.aws, %i.awo                 ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awq, i64 %i.awt
  %i.awv = sext i32 %i.awf to i64                 ; 4 uses
  %i.aww = getelementptr inbounds [2 x i8], ptr %i.awu, i64 %i.awv
  %i.awx = mul i64 %i.awm, %i.avr
  %i.awy = mul i64 %i.awx, %i.awo
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.awy
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 %i.awt
  %i.axb = getelementptr inbounds [2 x i8], ptr %i.axa, i64 %i.awv
  %i.axc = mul i64 %i.awm, %i.avs
  %i.axd = mul i64 %i.axc, %i.awo
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.awt
  %i.axg = getelementptr inbounds [2 x i8], ptr %i.axf, i64 %i.awv
  %i.axh = mul i64 %i.awm, %i.avq
  %i.axi = mul i64 %i.axh, %i.awo
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awl, i64 %i.axi
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 %i.awt
  %i.axl = getelementptr inbounds [2 x i8], ptr %i.axk, i64 %i.awv
  %i.axm = load i16, ptr %i.aww, align 2, !tbaa !28
  %i.axn = zext i16 %i.axm to i32
  %i.axo = shl nuw i32 %i.axn, 16
  %i.axp = insertelement <8 x i32> poison, i32 %i.axo, i64 0
  %i.axq = bitcast <8 x i32> %i.axp to <8 x float>
  %i.axr = shufflevector <8 x float> %i.axq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axs = load i16, ptr %i.axb, align 2, !tbaa !28
  %i.axt = zext i16 %i.axs to i32
  %i.axu = shl nuw i32 %i.axt, 16
  %i.axv = insertelement <8 x i32> poison, i32 %i.axu, i64 0
  %i.axw = bitcast <8 x i32> %i.axv to <8 x float>
  %i.axx = shufflevector <8 x float> %i.axw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axy = load i16, ptr %i.axg, align 2, !tbaa !28
  %i.axz = zext i16 %i.axy to i32
  %i.aya = shl nuw i32 %i.axz, 16
  %i.ayb = insertelement <8 x i32> poison, i32 %i.aya, i64 0
  %i.ayc = bitcast <8 x i32> %i.ayb to <8 x float>
  %i.ayd = shufflevector <8 x float> %i.ayc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aye = load i16, ptr %i.axl, align 2, !tbaa !28
  %i.ayf = zext i16 %i.aye to i32
  %i.ayg = shl nuw i32 %i.ayf, 16
  %i.ayh = insertelement <8 x i32> poison, i32 %i.ayg, i64 0
  %i.ayi = bitcast <8 x i32> %i.ayh to <8 x float>
  %i.ayj = shufflevector <8 x float> %i.ayi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ayk = load <8 x bfloat>, ptr %i.awj, align 16, !tbaa !26
  %i.ayl = fpext fast <8 x bfloat> %i.ayk to <8 x float>
  %i.aym = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axr, <8 x float> nofpclass(nan inf) %i.ayl, <8 x float> nofpclass(nan inf) %.167053.us7066.us.us)
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.awj, i64 16
  %i.ayo = load <8 x bfloat>, ptr %i.ayn, align 16, !tbaa !26
  %i.ayp = fpext fast <8 x bfloat> %i.ayo to <8 x float>
  %i.ayq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axx, <8 x float> nofpclass(nan inf) %i.ayp, <8 x float> nofpclass(nan inf) %.1565617052.us7067.us.us)
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.awj, i64 32
  %i.ays = load <8 x bfloat>, ptr %i.ayr, align 16, !tbaa !26
  %i.ayt = fpext fast <8 x bfloat> %i.ays to <8 x float>
  %i.ayu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ayd, <8 x float> nofpclass(nan inf) %i.ayt, <8 x float> nofpclass(nan inf) %.1565847051.us7068.us.us)
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.awj, i64 48
  %i.ayw = load <8 x bfloat>, ptr %i.ayv, align 16, !tbaa !26
  %i.ayx = fpext fast <8 x bfloat> %i.ayw to <8 x float>
  %i.ayy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ayj, <8 x float> nofpclass(nan inf) %i.ayx, <8 x float> nofpclass(nan inf) %.1566027050.us7069.us.us)
  br label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2288.us.us.us, %bb.m, %.lr.ph.split.us7064.us.us
  %.166603.us7073.us.us = phi nsz <8 x float> [ %.1566027050.us7069.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayy, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1566027050.us7069.us.us, %bb.m ] ; 2 uses
  %.166585.us7074.us.us = phi nsz <8 x float> [ %.1565847051.us7068.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayu, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1565847051.us7068.us.us, %bb.m ] ; 2 uses
  %.166562.us7075.us.us = phi nsz <8 x float> [ %.1565617052.us7067.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayq, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1565617052.us7067.us.us, %bb.m ] ; 2 uses
  %.17.us7076.us.us = phi nsz <8 x float> [ %.167053.us7066.us.us, %.lr.ph.split.us7064.us.us ], [ %i.aym, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.167053.us7066.us.us, %bb.m ] ; 2 uses
  %indvars.iv.next8212 = add nuw nsw i64 %indvars.iv8211, 1 ; 2 uses
  %exitcond8215.not = icmp eq i64 %indvars.iv.next8212, %i.avn
  br i1 %exitcond8215.not, label %..loopexit6920_crit_edge.us.us, label %.lr.ph.split.us7064.us.us, !llvm.loop !63

.lr.ph.split.us.us.us7131:                        ; preds = %.preheader6919.us.us, %bb.p
  %indvars.iv8216 = phi i64 [ %indvars.iv.next8217, %bb.p ], [ 0, %.preheader6919.us.us ] ; 3 uses
  %.167053.us.us.us = phi <8 x float> [ %.17.us.us.us, %bb.p ], [ %.1565407089.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565617052.us.us.us = phi <8 x float> [ %.166562.us.us.us, %bb.p ], [ %.1465607088.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565847051.us.us.us = phi <8 x float> [ %.166585.us.us.us, %bb.p ], [ %.1465837087.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1566027050.us.us.us = phi <8 x float> [ %.166603.us.us.us, %bb.p ], [ %.1466017086.us.us, %.preheader6919.us.us ] ; 3 uses
  %i.ayz = trunc i64 %indvars.iv8216 to i32
  %i.aza = mul i32 %i.avl, %i.ayz
  %.reass.us.us7098.us = add i32 %i.aza, %invariant.op7059 ; 3 uses
  %i.azb = icmp slt i32 %.reass.us.us7098.us, 0
  br i1 %i.azb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us.us.us7131
  %i.azc = srem i32 %.reass.us.us7098.us, %i.ava
  %i.azd = sdiv i32 %.reass.us.us7098.us, %i.ava  ; 2 uses
  %.not2170.us.us.us = icmp eq i32 %i.azc, 0
  %.not2171.us.us.us = icmp slt i32 %i.azd, %i.bt
  %or.cond8989 = select i1 %.not2170.us.us.us, i1 %.not2171.us.us.us, i1 false
  br i1 %or.cond8989, label %_ZN4ncnn3MatD2Ev.exit2289.us.us.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit2289.us.us.us:               ; preds = %bb.o
  %i.aze = add nuw nsw i64 %i.avz, %indvars.iv8216
  %i.azf = shl i64 %i.aze, 5
  %i.azg = and i64 %i.azf, 4294967264
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %.218337116.us, i64 %i.azg ; 4 uses
  %i.azi = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !227
  %i.azj = load ptr, ptr %0, align 8, !tbaa !19, !noalias !227
  %i.azk = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !227
  %i.azl = mul i64 %i.azk, %i.avt
  %i.azm = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !227 ; 2 uses
  %i.azn = mul i64 %i.azl, %i.azm
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azn
  %i.azp = sext i32 %i.azi to i64
  %i.azq = mul nsw i64 %i.azp, %i.awa
  %i.azr = mul i64 %i.azq, %i.azm
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azo, i64 %i.azr
  %i.azt = shl nsw i32 %i.azd, 2
  %i.azu = sext i32 %i.azt to i64
  %i.azv = getelementptr inbounds [2 x i8], ptr %i.azs, i64 %i.azu ; 4 uses
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !28
  %i.azx = zext i16 %i.azw to i32
  %i.azy = shl nuw i32 %i.azx, 16
  %i.azz = insertelement <8 x i32> poison, i32 %i.azy, i64 0
  %i.baa = bitcast <8 x i32> %i.azz to <8 x float>
  %i.bab = shufflevector <8 x float> %i.baa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azv, i64 2
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !28
  %i.bae = zext i16 %i.bad to i32
  %i.baf = shl nuw i32 %i.bae, 16
  %i.bag = insertelement <8 x i32> poison, i32 %i.baf, i64 0
  %i.bah = bitcast <8 x i32> %i.bag to <8 x float>
  %i.bai = shufflevector <8 x float> %i.bah, <8 x float> poison, <8 x i32> zeroinitializer
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azv, i64 4
  %i.bak = load i16, ptr %i.baj, align 2, !tbaa !28
  %i.bal = zext i16 %i.bak to i32
  %i.bam = shl nuw i32 %i.bal, 16
  %i.ban = insertelement <8 x i32> poison, i32 %i.bam, i64 0
  %i.bao = bitcast <8 x i32> %i.ban to <8 x float>
  %i.bap = shufflevector <8 x float> %i.bao, <8 x float> poison, <8 x i32> zeroinitializer
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azv, i64 6
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !28
  %i.bas = zext i16 %i.bar to i32
  %i.bat = shl nuw i32 %i.bas, 16
  %i.bau = insertelement <8 x i32> poison, i32 %i.bat, i64 0
  %i.bav = bitcast <8 x i32> %i.bau to <8 x float>
  %i.baw = shufflevector <8 x float> %i.bav, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bax = load <8 x bfloat>, ptr %i.azh, align 16, !tbaa !26
  %i.bay = fpext fast <8 x bfloat> %i.bax to <8 x float>
  %i.baz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bab, <8 x float> nofpclass(nan inf) %i.bay, <8 x float> nofpclass(nan inf) %.167053.us.us.us)
  %i.bba = getelementptr inbounds nuw i8, ptr %i.azh, i64 16
  %i.bbb = load <8 x bfloat>, ptr %i.bba, align 16, !tbaa !26
  %i.bbc = fpext fast <8 x bfloat> %i.bbb to <8 x float>
  %i.bbd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bai, <8 x float> nofpclass(nan inf) %i.bbc, <8 x float> nofpclass(nan inf) %.1565617052.us.us.us)
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.azh, i64 32
  %i.bbf = load <8 x bfloat>, ptr %i.bbe, align 16, !tbaa !26
  %i.bbg = fpext fast <8 x bfloat> %i.bbf to <8 x float>
  %i.bbh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bap, <8 x float> nofpclass(nan inf) %i.bbg, <8 x float> nofpclass(nan inf) %.1565847051.us.us.us)
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.azh, i64 48
  %i.bbj = load <8 x bfloat>, ptr %i.bbi, align 16, !tbaa !26
  %i.bbk = fpext fast <8 x bfloat> %i.bbj to <8 x float>
  %i.bbl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.baw, <8 x float> nofpclass(nan inf) %i.bbk, <8 x float> nofpclass(nan inf) %.1566027050.us.us.us)
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2289.us.us.us, %bb.o, %.lr.ph.split.us.us.us7131
  %.166603.us.us.us = phi nsz <8 x float> [ %.1566027050.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1566027050.us.us.us, %bb.o ], [ %i.bbl, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.166585.us.us.us = phi nsz <8 x float> [ %.1565847051.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1565847051.us.us.us, %bb.o ], [ %i.bbh, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.166562.us.us.us = phi nsz <8 x float> [ %.1565617052.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1565617052.us.us.us, %bb.o ], [ %i.bbd, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.17.us.us.us = phi nsz <8 x float> [ %.167053.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.167053.us.us.us, %bb.o ], [ %i.baz, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %indvars.iv.next8217 = add nuw nsw i64 %indvars.iv8216, 1 ; 2 uses
  %exitcond8220.not = icmp eq i64 %indvars.iv.next8217, %i.avn
  br i1 %exitcond8220.not, label %..loopexit6920_crit_edge.us.us, label %.lr.ph.split.us.us.us7131, !llvm.loop !63

..loopexit6920_crit_edge.us.us:                   ; preds = %bb.n, %bb.p, %.preheader6919.us.us, %bb.l, %.lr.ph7091.split.us.us
  %.176604.us.us = phi nsz <8 x float> [ %.1466017086.us.us, %.lr.ph7091.split.us.us ], [ %.1466017086.us.us, %bb.l ], [ %.166603.us.us.us, %bb.p ], [ %.1466017086.us.us, %.preheader6919.us.us ], [ %.166603.us7073.us.us, %bb.n ] ; 2 uses
  %.176586.us.us = phi nsz <8 x float> [ %.1465837087.us.us, %.lr.ph7091.split.us.us ], [ %.1465837087.us.us, %bb.l ], [ %.166585.us.us.us, %bb.p ], [ %.1465837087.us.us, %.preheader6919.us.us ], [ %.166585.us7074.us.us, %bb.n ] ; 2 uses
  %.176563.us.us = phi nsz <8 x float> [ %.1465607088.us.us, %.lr.ph7091.split.us.us ], [ %.1465607088.us.us, %bb.l ], [ %.166562.us.us.us, %bb.p ], [ %.1465607088.us.us, %.preheader6919.us.us ], [ %.166562.us7075.us.us, %bb.n ] ; 2 uses
  %.18.us.us = phi nsz <8 x float> [ %.1565407089.us.us, %.lr.ph7091.split.us.us ], [ %.1565407089.us.us, %bb.l ], [ %.17.us.us.us, %bb.p ], [ %.1565407089.us.us, %.preheader6919.us.us ], [ %.17.us7076.us.us, %bb.n ] ; 2 uses
  %indvars.iv.next8222 = add nuw nsw i64 %indvars.iv8221, 1 ; 2 uses
  %exitcond8225.not = icmp eq i64 %indvars.iv.next8222, %wide.trip.count8224
  br i1 %exitcond8225.not, label %._crit_edge.us7133, label %.lr.ph7091.split.us.us, !llvm.loop !66

._crit_edge.us7133:                               ; preds = %..loopexit6920_crit_edge.us.us, %.preheader6927.us
  %.us-phi7106.us = phi <8 x float> [ %.1366007111.us, %.preheader6927.us ], [ %.176604.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7107.us = phi <8 x float> [ %.1365827112.us, %.preheader6927.us ], [ %.176586.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7108.us = phi <8 x float> [ %.1365597113.us, %.preheader6927.us ], [ %.176563.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7109.us = phi <8 x float> [ %.147114.us, %.preheader6927.us ], [ %.18.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %i.bbm = getelementptr inbounds [2 x i8], ptr %.218337116.us, i64 %i.dn ; 2 uses
  %indvars.iv.next8227 = add nuw nsw i64 %indvars.iv8226, 4 ; 3 uses
  %i.bbn = or disjoint i64 %indvars.iv.next8227, 3 ; 2 uses
  %i.bbo = trunc nuw i64 %i.bbn to i32
  %i.bbp = icmp sgt i32 %i.bs, %i.bbo
  br i1 %i.bbp, label %.preheader6927.us, label %.preheader6931.loopexit, !llvm.loop !67

.preheader6931.loopexit:                          ; preds = %._crit_edge.us7133
  %i.bbq = trunc nuw i64 %indvars.iv.next8227 to i32
  br label %.preheader6931

.preheader6931:                                   ; preds = %.preheader6927.preheader, %.preheader6931.loopexit, %.preheader6932
  %.136600.lcssa = phi <8 x float> [ %.86595.lcssa, %.preheader6932 ], [ %.us-phi7106.us, %.preheader6931.loopexit ], [ %.86595.lcssa, %.preheader6927.preheader ]
  %.136582.lcssa = phi <8 x float> [ %.86577.lcssa, %.preheader6932 ], [ %.us-phi7107.us, %.preheader6931.loopexit ], [ %.86577.lcssa, %.preheader6927.preheader ]
  %.136559.lcssa = phi <8 x float> [ %.86554.lcssa, %.preheader6932 ], [ %.us-phi7108.us, %.preheader6931.loopexit ], [ %.86554.lcssa, %.preheader6927.preheader ] ; 4 uses
  %.14.lcssa = phi <8 x float> [ %.9.lcssa, %.preheader6932 ], [ %.us-phi7109.us, %.preheader6931.loopexit ], [ %.9.lcssa, %.preheader6927.preheader ] ; 4 uses
  %.21838.lcssa = phi i32 [ %.11837.lcssa, %.preheader6932 ], [ %i.bbq, %.preheader6931.loopexit ], [ %i.avk, %.preheader6927.preheader ] ; 9 uses
  %.21833.lcssa = phi ptr [ %.11832.lcssa, %.preheader6932 ], [ %i.bbm, %.preheader6931.loopexit ], [ %scevgep8210, %.preheader6927.preheader ] ; 4 uses
  %i.bbr = or disjoint i32 %.21838.lcssa, 1       ; 2 uses
  %i.bbs = icmp slt i32 %i.bbr, %i.bs
  br i1 %i.bbs, label %.preheader6926.lr.ph, label %.preheader6930

.preheader6926.lr.ph:                             ; preds = %.preheader6931
  %i.bbt = load i32, ptr %i.d, align 4
  %i.bbu = load i32, ptr %i.j, align 4
  %invariant.op7152 = sub i32 %.neg6858, %i.bbu
  %i.bbv = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bbw = load i32, ptr %i.a, align 4
  %.fr8033 = freeze i32 %i.bbw                    ; 2 uses
  %i.bbx = load i32, ptr %i.c, align 4
  %i.bby = load i32, ptr %i.i, align 4
  %.neg6848 = add nuw nsw i32 %.018307214, 1
  %invariant.op7145 = sub i32 %.neg6848, %i.bby
  %i.bbz = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dg, label %.preheader6926.lr.ph.split.us, label %.preheader6926.preheader

.preheader6926.preheader:                         ; preds = %.preheader6926.lr.ph
  %i.bca = add i32 %.21838.lcssa, 3
  %smax8229 = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bca)
  %i.bcb = add i32 %smax8229, -2
  %i.bcc = sub i32 %i.bcb, %.21838.lcssa          ; 2 uses
  %i.bcd = and i32 %i.bcc, -2
  %i.bce = zext i32 %i.bcd to i64
  %i.bcf = add nuw nsw i64 %i.bce, 2
  %i.bcg = mul nsw i64 %i.bcf, %i.dp
  %scevgep8230 = getelementptr i8, ptr %.21833.lcssa, i64 %i.bcg
  %i.bch = add i32 %.21838.lcssa, 2
  %i.bci = and i32 %i.bcc, -2
  %i.bcj = add i32 %i.bch, %i.bci
  br label %.preheader6930

.preheader6926.lr.ph.split.us:                    ; preds = %.preheader6926.lr.ph
  %i.bck = icmp sgt i32 %.fr8033, 0
  br i1 %i.bck, label %.preheader6926.us.us.preheader, label %.preheader6926.us.preheader

.preheader6926.us.preheader:                      ; preds = %.preheader6926.lr.ph.split.us
  %i.bcl = add i32 %.21838.lcssa, 3
  %smax8231 = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bcl)
  %i.bcm = add i32 %smax8231, -2
  %i.bcn = sub i32 %i.bcm, %.21838.lcssa          ; 2 uses
  %i.bco = and i32 %i.bcn, -2
  %i.bcp = zext i32 %i.bco to i64
  %i.bcq = add nuw nsw i64 %i.bcp, 2
  %i.bcr = mul nsw i64 %i.bcq, %i.dp
  %scevgep8232 = getelementptr i8, ptr %.21833.lcssa, i64 %i.bcr
  %i.bcs = add i32 %.21838.lcssa, 2
  %i.bct = and i32 %i.bcn, -2
  %i.bcu = add i32 %i.bcs, %i.bct
  br label %.preheader6930

.preheader6926.us.us.preheader:                   ; preds = %.preheader6926.lr.ph.split.us
  %i.bcv = zext nneg i32 %.fr8033 to i64          ; 2 uses
  %i.bcw = zext i32 %.21838.lcssa to i64
  %i.bcx = zext nneg i32 %i.bbr to i64
  br label %.preheader6926.us.us

.preheader6926.us.us:                             ; preds = %.preheader6926.us.us.preheader, %._crit_edge.split.us.us7174.us
  %indvars.iv8243 = phi i64 [ %i.bcw, %.preheader6926.us.us.preheader ], [ %indvars.iv.next8244, %._crit_edge.split.us.us7174.us ] ; 2 uses
  %i.bcy = phi i64 [ %i.bcx, %.preheader6926.us.us.preheader ], [ %i.bfb, %._crit_edge.split.us.us7174.us ]
  %.318347160.us.us = phi ptr [ %.21833.lcssa, %.preheader6926.us.us.preheader ], [ %i.bfa, %._crit_edge.split.us.us7174.us ] ; 2 uses
  %.197158.us.us = phi <8 x float> [ %.14.lcssa, %.preheader6926.us.us.preheader ], [ %.23.us.us.us, %._crit_edge.split.us.us7174.us ]
  %.1865647157.us.us = phi <8 x float> [ %.136559.lcssa, %.preheader6926.us.us.preheader ], [ %.226568.us.us.us, %._crit_edge.split.us.us7174.us ]
  br label %bb.q

bb.q:                                             ; preds = %..loopexit6918_crit_edge.us.us.us, %.preheader6926.us.us
  %indvars.iv8238 = phi i64 [ %indvars.iv.next8239, %..loopexit6918_crit_edge.us.us.us ], [ 0, %.preheader6926.us.us ] ; 3 uses
  %.207147.us.us.us = phi <8 x float> [ %.23.us.us.us, %..loopexit6918_crit_edge.us.us.us ], [ %.197158.us.us, %.preheader6926.us.us ] ; 3 uses
  %.1965657146.us.us.us = phi <8 x float> [ %.226568.us.us.us, %..loopexit6918_crit_edge.us.us.us ], [ %.1865647157.us.us, %.preheader6926.us.us ] ; 3 uses
  %i.bcz = trunc i64 %indvars.iv8238 to i32
  %i.bda = mul i32 %i.bbt, %i.bcz
  %.reass7153.us.us.us = add i32 %i.bda, %invariant.op7152 ; 3 uses
  %i.bdb = icmp slt i32 %.reass7153.us.us.us, 0
  br i1 %i.bdb, label %..loopexit6918_crit_edge.us.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bdc = srem i32 %.reass7153.us.us.us, %i.bbv
  %i.bdd = sdiv i32 %.reass7153.us.us.us, %i.bbv  ; 2 uses
  %.not2164.us.us.us = icmp eq i32 %i.bdc, 0
  %.not2165.us.us.us = icmp slt i32 %i.bdd, %i.bu
  %or.cond8990 = select i1 %.not2164.us.us.us, i1 %.not2165.us.us.us, i1 false
  br i1 %or.cond8990, label %.preheader6917.us.us.us, label %..loopexit6918_crit_edge.us.us.us

.preheader6917.us.us.us:                          ; preds = %bb.r
  %i.bde = mul nuw nsw i64 %indvars.iv8238, %i.bcv
  %i.bdf = sext i32 %i.bdd to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.preheader6917.us.us.us
  %indvars.iv8233 = phi i64 [ %indvars.iv.next8234, %bb.u ], [ 0, %.preheader6917.us.us.us ] ; 3 uses
  %.217141.us.us.us = phi <8 x float> [ %.22.us.us.us, %bb.u ], [ %.207147.us.us.us, %.preheader6917.us.us.us ] ; 3 uses
  %.2065667140.us.us.us = phi <8 x float> [ %.216567.us.us.us, %bb.u ], [ %.1965657146.us.us.us, %.preheader6917.us.us.us ] ; 3 uses
  %i.bdg = trunc i64 %indvars.iv8233 to i32
  %i.bdh = mul i32 %i.bbx, %i.bdg
  %.reass.us.us7173.us = add i32 %i.bdh, %invariant.op7145 ; 3 uses
  %i.bdi = icmp slt i32 %.reass.us.us7173.us, 0
  br i1 %i.bdi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bdj = srem i32 %.reass.us.us7173.us, %i.bbz
  %i.bdk = sdiv i32 %.reass.us.us7173.us, %i.bbz  ; 2 uses
  %.not2166.us.us.us = icmp eq i32 %i.bdj, 0
  %.not2167.us.us.us = icmp slt i32 %i.bdk, %i.bt
  %or.cond8991 = select i1 %.not2166.us.us.us, i1 %.not2167.us.us.us, i1 false
  br i1 %or.cond8991, label %_ZN4ncnn3MatD2Ev.exit2284.us.us.us, label %bb.u

_ZN4ncnn3MatD2Ev.exit2284.us.us.us:               ; preds = %bb.t
  %i.bdl = add nuw nsw i64 %i.bde, %indvars.iv8233
  %i.bdm = shl i64 %i.bdl, 4
  %i.bdn = and i64 %i.bdm, 4294967280
  %i.bdo = getelementptr inbounds nuw [2 x i8], ptr %.318347160.us.us, i64 %i.bdn ; 2 uses
  %i.bdp = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !228
  %i.bdq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !228 ; 2 uses
  %i.bdr = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !228 ; 2 uses
  %i.bds = mul i64 %i.bdr, %indvars.iv8243
  %i.bdt = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !228 ; 3 uses
  %i.bdu = mul i64 %i.bds, %i.bdt
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %i.bdu
  %i.bdw = sext i32 %i.bdp to i64
  %i.bdx = mul nsw i64 %i.bdw, %i.bdf
  %i.bdy = mul i64 %i.bdx, %i.bdt                 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdv, i64 %i.bdy
  %i.bea = sext i32 %i.bdk to i64                 ; 2 uses
  %i.beb = getelementptr inbounds [2 x i8], ptr %i.bdz, i64 %i.bea
  %i.bec = mul i64 %i.bdr, %i.bcy
  %i.bed = mul i64 %i.bec, %i.bdt
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %i.bed
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 %i.bdy
  %i.beg = getelementptr inbounds [2 x i8], ptr %i.bef, i64 %i.bea
  %i.beh = load i16, ptr %i.beb, align 2, !tbaa !28
  %i.bei = zext i16 %i.beh to i32
  %i.bej = shl nuw i32 %i.bei, 16
  %i.bek = insertelement <8 x i32> poison, i32 %i.bej, i64 0
  %i.bel = bitcast <8 x i32> %i.bek to <8 x float>
  %i.bem = shufflevector <8 x float> %i.bel, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ben = load i16, ptr %i.beg, align 2, !tbaa !28
  %i.beo = zext i16 %i.ben to i32
  %i.bep = shl nuw i32 %i.beo, 16
  %i.beq = insertelement <8 x i32> poison, i32 %i.bep, i64 0
  %i.ber = bitcast <8 x i32> %i.beq to <8 x float>
  %i.bes = shufflevector <8 x float> %i.ber, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bet = load <8 x bfloat>, ptr %i.bdo, align 16, !tbaa !26
  %i.beu = fpext fast <8 x bfloat> %i.bet to <8 x float>
  %i.bev = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bem, <8 x float> nofpclass(nan inf) %i.beu, <8 x float> nofpclass(nan inf) %.217141.us.us.us)
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bdo, i64 16
  %i.bex = load <8 x bfloat>, ptr %i.bew, align 16, !tbaa !26
  %i.bey = fpext fast <8 x bfloat> %i.bex to <8 x float>
  %i.bez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bes, <8 x float> nofpclass(nan inf) %i.bey, <8 x float> nofpclass(nan inf) %.2065667140.us.us.us)
  br label %bb.u

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2284.us.us.us, %bb.t, %bb.s
  %.216567.us.us.us = phi nsz <8 x float> [ %.2065667140.us.us.us, %bb.s ], [ %i.bez, %_ZN4ncnn3MatD2Ev.exit2284.us.us.us ], [ %.2065667140.us.us.us, %bb.t ] ; 2 uses
  %.22.us.us.us = phi nsz <8 x float> [ %.217141.us.us.us, %bb.s ], [ %i.bev, %_ZN4ncnn3MatD2Ev.exit2284.us.us.us ], [ %.217141.us.us.us, %bb.t ] ; 2 uses
  %indvars.iv.next8234 = add nuw nsw i64 %indvars.iv8233, 1 ; 2 uses
  %exitcond8237.not = icmp eq i64 %indvars.iv.next8234, %i.bcv
  br i1 %exitcond8237.not, label %..loopexit6918_crit_edge.us.us.us, label %bb.s, !llvm.loop !70

..loopexit6918_crit_edge.us.us.us:                ; preds = %bb.u, %bb.r, %bb.q
  %.226568.us.us.us = phi nsz <8 x float> [ %.1965657146.us.us.us, %bb.q ], [ %.1965657146.us.us.us, %bb.r ], [ %.216567.us.us.us, %bb.u ] ; 3 uses
  %.23.us.us.us = phi nsz <8 x float> [ %.207147.us.us.us, %bb.q ], [ %.207147.us.us.us, %bb.r ], [ %.22.us.us.us, %bb.u ] ; 3 uses
  %indvars.iv.next8239 = add nuw nsw i64 %indvars.iv8238, 1 ; 2 uses
  %exitcond8242.not = icmp eq i64 %indvars.iv.next8239, %wide.trip.count8241
  br i1 %exitcond8242.not, label %._crit_edge.split.us.us7174.us, label %bb.q, !llvm.loop !71

._crit_edge.split.us.us7174.us:                   ; preds = %..loopexit6918_crit_edge.us.us.us
  %i.bfa = getelementptr inbounds [2 x i8], ptr %.318347160.us.us, i64 %i.dp ; 2 uses
  %indvars.iv.next8244 = add nuw nsw i64 %indvars.iv8243, 2 ; 3 uses
  %i.bfb = or disjoint i64 %indvars.iv.next8244, 1 ; 2 uses
  %i.bfc = trunc nuw i64 %i.bfb to i32
  %i.bfd = icmp sgt i32 %i.bs, %i.bfc
  br i1 %i.bfd, label %.preheader6926.us.us, label %.preheader6930.loopexit, !llvm.loop !72

.preheader6930.loopexit:                          ; preds = %._crit_edge.split.us.us7174.us
  %i.bfe = trunc nuw i64 %indvars.iv.next8244 to i32
  br label %.preheader6930

.preheader6930:                                   ; preds = %.preheader6926.preheader, %.preheader6926.us.preheader, %.preheader6930.loopexit, %.preheader6931
  %.186564.lcssa = phi <8 x float> [ %.136559.lcssa, %.preheader6931 ], [ %.226568.us.us.us, %.preheader6930.loopexit ], [ %.136559.lcssa, %.preheader6926.us.preheader ], [ %.136559.lcssa, %.preheader6926.preheader ]
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader6931 ], [ %.23.us.us.us, %.preheader6930.loopexit ], [ %.14.lcssa, %.preheader6926.us.preheader ], [ %.14.lcssa, %.preheader6926.preheader ] ; 3 uses
  %.31839.lcssa = phi i32 [ %.21838.lcssa, %.preheader6931 ], [ %i.bfe, %.preheader6930.loopexit ], [ %i.bcu, %.preheader6926.us.preheader ], [ %i.bcj, %.preheader6926.preheader ] ; 2 uses
  %.31834.lcssa = phi ptr [ %.21833.lcssa, %.preheader6931 ], [ %i.bfa, %.preheader6930.loopexit ], [ %scevgep8232, %.preheader6926.us.preheader ], [ %scevgep8230, %.preheader6926.preheader ]
  %i.bff = icmp slt i32 %.31839.lcssa, %i.bs
  br i1 %i.bff, label %.preheader6925.lr.ph, label %._crit_edge7200

.preheader6925.lr.ph:                             ; preds = %.preheader6930
  %i.bfg = load i32, ptr %i.d, align 4
  %i.bfh = load i32, ptr %i.j, align 4
  %invariant.op7192 = sub i32 %.neg6858, %i.bfh
  %i.bfi = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfj = load i32, ptr %i.a, align 4
  %.fr8034 = freeze i32 %i.bfj                    ; 2 uses
  %i.bfk = load i32, ptr %i.c, align 4
  %i.bfl = load i32, ptr %i.i, align 4
  %.neg6844 = add nuw nsw i32 %.018307214, 1
  %invariant.op7187 = sub i32 %.neg6844, %i.bfl
  %i.bfm = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfn = icmp sgt i32 %.fr8034, 0
  %or.cond = and i1 %i.dg, %i.bfn
  br i1 %or.cond, label %.preheader6925.us.us.preheader, label %._crit_edge7200

.preheader6925.us.us.preheader:                   ; preds = %.preheader6925.lr.ph
  %i.bfo = zext nneg i32 %.fr8034 to i64          ; 2 uses
  %i.bfp = zext i32 %.31839.lcssa to i64
  br label %.preheader6925.us.us

.preheader6925.us.us:                             ; preds = %.preheader6925.us.us.preheader, %._crit_edge.split.us.us7210.us
  %indvars.iv8256 = phi i64 [ %i.bfp, %.preheader6925.us.us.preheader ], [ %indvars.iv.next8257, %._crit_edge.split.us.us7210.us ] ; 2 uses
  %.418357198.us.us = phi ptr [ %.31834.lcssa, %.preheader6925.us.us.preheader ], [ %i.bhc, %._crit_edge.split.us.us7210.us ] ; 2 uses
  %.247196.us.us = phi <8 x float> [ %.19.lcssa, %.preheader6925.us.us.preheader ], [ %.28.us.us.us, %._crit_edge.split.us.us7210.us ]
  br label %bb.v

bb.v:                                             ; preds = %..loopexit6916_crit_edge.us.us.us, %.preheader6925.us.us
  %indvars.iv8251 = phi i64 [ %indvars.iv.next8252, %..loopexit6916_crit_edge.us.us.us ], [ 0, %.preheader6925.us.us ] ; 3 uses
  %.257188.us.us.us = phi <8 x float> [ %.28.us.us.us, %..loopexit6916_crit_edge.us.us.us ], [ %.247196.us.us, %.preheader6925.us.us ] ; 3 uses
  %i.bfq = trunc i64 %indvars.iv8251 to i32
  %i.bfr = mul i32 %i.bfg, %i.bfq
  %.reass7193.us.us.us = add i32 %i.bfr, %invariant.op7192 ; 3 uses
  %i.bfs = icmp slt i32 %.reass7193.us.us.us, 0
  br i1 %i.bfs, label %..loopexit6916_crit_edge.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bft = srem i32 %.reass7193.us.us.us, %i.bfi
  %i.bfu = sdiv i32 %.reass7193.us.us.us, %i.bfi  ; 2 uses
  %.not2160.us.us.us = icmp eq i32 %i.bft, 0
  %.not2161.us.us.us = icmp slt i32 %i.bfu, %i.bu
  %or.cond8992 = select i1 %.not2160.us.us.us, i1 %.not2161.us.us.us, i1 false
  br i1 %or.cond8992, label %.preheader6915.us.us.us, label %..loopexit6916_crit_edge.us.us.us

.preheader6915.us.us.us:                          ; preds = %bb.w
  %i.bfv = mul nuw nsw i64 %indvars.iv8251, %i.bfo
  %i.bfw = sext i32 %i.bfu to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.preheader6915.us.us.us
  %indvars.iv8246 = phi i64 [ %indvars.iv.next8247, %bb.z ], [ 0, %.preheader6915.us.us.us ] ; 3 uses
  %.267184.us.us.us = phi <8 x float> [ %.27.us.us.us, %bb.z ], [ %.257188.us.us.us, %.preheader6915.us.us.us ] ; 3 uses
  %i.bfx = trunc i64 %indvars.iv8246 to i32
  %i.bfy = mul i32 %i.bfk, %i.bfx
  %.reass.us.us7209.us = add i32 %i.bfy, %invariant.op7187 ; 3 uses
  %i.bfz = icmp slt i32 %.reass.us.us7209.us, 0
  br i1 %i.bfz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bga = srem i32 %.reass.us.us7209.us, %i.bfm
  %i.bgb = sdiv i32 %.reass.us.us7209.us, %i.bfm  ; 2 uses
  %.not2162.us.us.us = icmp eq i32 %i.bga, 0
  %.not2163.us.us.us = icmp slt i32 %i.bgb, %i.bt
  %or.cond8993 = select i1 %.not2162.us.us.us, i1 %.not2163.us.us.us, i1 false
  br i1 %or.cond8993, label %_ZN4ncnn3MatD2Ev.exit2282.us.us.us, label %bb.z

_ZN4ncnn3MatD2Ev.exit2282.us.us.us:               ; preds = %bb.y
  %i.bgc = add nuw nsw i64 %i.bfv, %indvars.iv8246
  %i.bgd = shl i64 %i.bgc, 3
  %i.bge = and i64 %i.bgd, 4294967288
  %i.bgf = getelementptr inbounds nuw [2 x i8], ptr %.418357198.us.us, i64 %i.bge
  %i.bgg = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !229
  %i.bgh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !229
  %i.bgi = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !229
  %i.bgj = mul i64 %i.bgi, %indvars.iv8256
  %i.bgk = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !229 ; 2 uses
  %i.bgl = mul i64 %i.bgj, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 %i.bgl
  %i.bgn = sext i32 %i.bgg to i64
  %i.bgo = mul nsw i64 %i.bgn, %i.bfw
  %i.bgp = mul i64 %i.bgo, %i.bgk
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgm, i64 %i.bgp
  %i.bgr = sext i32 %i.bgb to i64
  %i.bgs = getelementptr inbounds [2 x i8], ptr %i.bgq, i64 %i.bgr
  %i.bgt = load i16, ptr %i.bgs, align 2, !tbaa !28
  %i.bgu = zext i16 %i.bgt to i32
  %i.bgv = shl nuw i32 %i.bgu, 16
  %i.bgw = insertelement <8 x i32> poison, i32 %i.bgv, i64 0
  %i.bgx = bitcast <8 x i32> %i.bgw to <8 x float>
  %i.bgy = shufflevector <8 x float> %i.bgx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bgz = load <8 x bfloat>, ptr %i.bgf, align 16, !tbaa !26
  %i.bha = fpext fast <8 x bfloat> %i.bgz to <8 x float>
  %i.bhb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bgy, <8 x float> nofpclass(nan inf) %i.bha, <8 x float> nofpclass(nan inf) %.267184.us.us.us)
  br label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2282.us.us.us, %bb.y, %bb.x
  %.27.us.us.us = phi nsz <8 x float> [ %.267184.us.us.us, %bb.x ], [ %i.bhb, %_ZN4ncnn3MatD2Ev.exit2282.us.us.us ], [ %.267184.us.us.us, %bb.y ] ; 2 uses
  %indvars.iv.next8247 = add nuw nsw i64 %indvars.iv8246, 1 ; 2 uses
  %exitcond8250.not = icmp eq i64 %indvars.iv.next8247, %i.bfo
  br i1 %exitcond8250.not, label %..loopexit6916_crit_edge.us.us.us, label %bb.x, !llvm.loop !75

..loopexit6916_crit_edge.us.us.us:                ; preds = %bb.z, %bb.w, %bb.v
  %.28.us.us.us = phi nsz <8 x float> [ %.257188.us.us.us, %bb.v ], [ %.257188.us.us.us, %bb.w ], [ %.27.us.us.us, %bb.z ] ; 3 uses
  %indvars.iv.next8252 = add nuw nsw i64 %indvars.iv8251, 1 ; 2 uses
  %exitcond8255.not = icmp eq i64 %indvars.iv.next8252, %wide.trip.count8254
  br i1 %exitcond8255.not, label %._crit_edge.split.us.us7210.us, label %bb.v, !llvm.loop !76

._crit_edge.split.us.us7210.us:                   ; preds = %..loopexit6916_crit_edge.us.us.us
  %i.bhc = getelementptr inbounds [2 x i8], ptr %.418357198.us.us, i64 %i.dr
  %indvars.iv.next8257 = add nuw nsw i64 %indvars.iv8256, 1 ; 2 uses
  %i.bhd = trunc nuw i64 %indvars.iv.next8257 to i32
  %i.bhe = icmp sgt i32 %i.bs, %i.bhd
  br i1 %i.bhe, label %.preheader6925.us.us, label %._crit_edge7200, !llvm.loop !77

._crit_edge7200:                                  ; preds = %._crit_edge.split.us.us7210.us, %.preheader6925.lr.ph, %.preheader6930
  %.24.lcssa = phi <8 x float> [ %.19.lcssa, %.preheader6930 ], [ %.19.lcssa, %.preheader6925.lr.ph ], [ %.28.us.us.us, %._crit_edge.split.us.us7210.us ]
  %i.bhf = fadd fast <8 x float> %.136582.lcssa, %.136600.lcssa
  %i.bhg = fadd fast <8 x float> %i.bhf, %.186564.lcssa
  %i.bhh = fadd fast <8 x float> %i.bhg, %.24.lcssa ; 10 uses
  switch i32 %i.cn, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
  ]

bb.aa:                                            ; preds = %._crit_edge7200
  %i.bhi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bhh, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %._crit_edge7200
  %i.bhj = load ptr, ptr %11, align 8, !tbaa !19
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !30
  %i.bhl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bhh)
  %i.bhm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bhh)
  %i.bhn = insertelement <8 x float> poison, float %i.bhk, i64 0
  %i.bho = shufflevector <8 x float> %i.bhn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bhp = fmul fast <8 x float> %i.bho, %i.bhm
  %i.bhq = fadd fast <8 x float> %i.bhp, %i.bhl
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %._crit_edge7200
  %i.bhr = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !30
  %i.bht = insertelement <8 x float> poison, float %i.bhs, i64 0
  %i.bhu = shufflevector <8 x float> %i.bht, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  %i.bhw = load float, ptr %i.bhv, align 4, !tbaa !30
  %i.bhx = insertelement <8 x float> poison, float %i.bhw, i64 0
  %i.bhy = shufflevector <8 x float> %i.bhx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bhz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bhh, <8 x float> nofpclass(nan inf) %i.bhu)
  %i.bia = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bhz, <8 x float> nofpclass(nan inf) %i.bhy)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %._crit_edge7200
  %i.bib = fneg fast <8 x float> %i.bhh
  %i.bic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bib, <8 x float> splat (float f0x42B0C0A5))
  %i.bid = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bic, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bie = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bid, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.bif = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bie, i32 1) ; 2 uses
  %i.big = fcmp fast ogt <8 x float> %i.bif, %i.bie
  %i.bih = select <8 x i1> %i.big, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bii = fsub fast <8 x float> %i.bif, %i.bih   ; 2 uses
  %i.bij = fneg fast <8 x float> %i.bii           ; 2 uses
  %i.bik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bij, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bid)
  %i.bil = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bij, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bik) ; 8 uses
  %i.bim = fmul fast <8 x float> %i.bil, %i.bil
  %i.bin = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bio = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bin, <8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bip = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bio, <8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.biq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bip, <8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bir = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.biq, <8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bis = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bir, <8 x float> nofpclass(nan inf) %i.bim, <8 x float> nofpclass(nan inf) %i.bil)
  %i.bit = fadd fast <8 x float> %i.bis, splat (float 1.000000e+00)
  %i.biu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bii)
  %i.biv = shl <8 x i32> %i.biu, splat (i32 23)
  %i.biw = add <8 x i32> %i.biv, splat (i32 1065353216)
  %i.bix = bitcast <8 x i32> %i.biw to <8 x float>
  %i.biy = fmul fast <8 x float> %i.bit, %i.bix
  %i.biz = fadd fast <8 x float> %i.biy, splat (float 1.000000e+00)
  %i.bja = fdiv fast <8 x float> splat (float 1.000000e+00), %i.biz
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %._crit_edge7200
  %i.bjb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bhh, <8 x float> splat (float f0x42B0C0A5))
  %i.bjc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bjb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bjd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjc, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.bje = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bjd, i32 1) ; 2 uses
  %i.bjf = fcmp fast ogt <8 x float> %i.bje, %i.bjd
  %i.bjg = select <8 x i1> %i.bjf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bjh = fsub fast <8 x float> %i.bje, %i.bjg   ; 2 uses
  %i.bji = fneg fast <8 x float> %i.bjh           ; 2 uses
  %i.bjj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bji, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bjc)
  %i.bjk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bji, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bjj) ; 8 uses
  %i.bjl = fmul fast <8 x float> %i.bjk, %i.bjk
  %i.bjm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bjn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjm, <8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bjo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjn, <8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.bjp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjo, <8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bjq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjp, <8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bjr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjq, <8 x float> nofpclass(nan inf) %i.bjl, <8 x float> nofpclass(nan inf) %i.bjk)
  %i.bjs = fadd fast <8 x float> %i.bjr, splat (float 1.000000e+00)
  %i.bjt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bjh)
  %i.bju = shl <8 x i32> %i.bjt, splat (i32 23)
  %i.bjv = add <8 x i32> %i.bju, splat (i32 1065353216)
  %i.bjw = bitcast <8 x i32> %i.bjv to <8 x float>
  %i.bjx = fmul fast <8 x float> %i.bjs, %i.bjw
  %i.bjy = fadd fast <8 x float> %i.bjx, splat (float 1.000000e+00) ; 2 uses
  %i.bjz = fcmp fast ole <8 x float> %i.bjy, zeroinitializer
  %i.bka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bjy, <8 x float> splat (float f0x00800000))
  %i.bkb = bitcast <8 x float> %i.bka to <8 x i32> ; 2 uses
  %i.bkc = lshr <8 x i32> %i.bkb, splat (i32 23)
  %i.bkd = and <8 x i32> %i.bkb, splat (i32 -2139095041)
  %i.bke = or disjoint <8 x i32> %i.bkd, splat (i32 1056964608)
  %i.bkf = bitcast <8 x i32> %i.bke to <8 x float> ; 3 uses
  %i.bkg = add nsw <8 x i32> %i.bkc, splat (i32 -127)
  %i.bkh = sitofp fast <8 x i32> %i.bkg to <8 x float> ; 2 uses
  %i.bki = fadd fast <8 x float> %i.bkh, splat (float 1.000000e+00)
  %i.bkj = fcmp fast olt <8 x float> %i.bkf, splat (float f0x3F3504F3) ; 2 uses
  %i.bkk = select <8 x i1> %i.bkj, <8 x float> %i.bkf, <8 x float> zeroinitializer
  %i.bkl = fadd fast <8 x float> %i.bkf, splat (float -1.000000e+00)
  %i.bkm = select fast <8 x i1> %i.bkj, <8 x float> %i.bkh, <8 x float> %i.bki ; 2 uses
  %i.bkn = fadd fast <8 x float> %i.bkl, %i.bkk   ; 12 uses
  %i.bko = fmul fast <8 x float> %i.bkn, %i.bkn   ; 2 uses
  %i.bkp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.bkq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkp, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.bkr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkq, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.bks = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkr, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.bkt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bks, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.bku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkt, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.bkv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bku, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.bkw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkv, <8 x float> nofpclass(nan inf) %i.bkn, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.bkx = fmul fast <8 x float> %i.bko, %i.bkn
  %i.bky = fmul fast <8 x float> %i.bkx, %i.bkw
  %i.bkz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkm, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bky)
  %i.bla = fneg fast <8 x float> %i.bko
  %i.blb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bla, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bkz)
  %i.blc = fadd fast <8 x float> %i.blb, %i.bkn
  %i.bld = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bkm, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.blc)
  %.neg6780 = fmul fast <8 x float> %i.bld, splat (float -2.000000e+00)
  %i.ble = select fast <8 x i1> %i.bjz, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg6780
  %i.blf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ble, <8 x float> splat (float f0x42B0C0A5))
  %i.blg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.blf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.blh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blg, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.bli = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.blh, i32 1) ; 2 uses
  %i.blj = fcmp fast ogt <8 x float> %i.bli, %i.blh
  %i.blk = select <8 x i1> %i.blj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bll = fsub fast <8 x float> %i.bli, %i.blk   ; 2 uses
  %i.blm = fneg fast <8 x float> %i.bll           ; 2 uses
  %i.bln = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.blm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.blg)
  %i.blo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.blm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bln) ; 8 uses
  %i.blp = fmul fast <8 x float> %i.blo, %i.blo
  %i.blq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.blr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blq, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bls = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blr, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.blt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bls, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.blu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blt, <8 x float> nofpclass(nan inf) %i.blo, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.blv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.blu, <8 x float> nofpclass(nan inf) %i.blp, <8 x float> nofpclass(nan inf) %i.blo)
  %i.blw = fadd fast <8 x float> %i.blv, splat (float 1.000000e+00)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.bpi = add i32 %i.boh, -16                    ; 2 uses
  %i.bpj = lshr i32 %i.bpi, 3
  %i.bpk = and i32 %i.bpj, 536870910
  %narrow8757 = add nuw nsw i32 %i.bpk, 2
  %i.bpl = zext nneg i32 %narrow8757 to i64
  %i.bpm = and i32 %i.bpi, -16
  %i.bpn = add nuw i32 %i.bpm, 16
  %i.bpo = sext i32 %i.boh to i64
  %i.bpp = sext i32 %i.bnz to i64
  %wide.trip.count8453 = zext nneg i32 %i.bob to i64
  %invariant.op8794 = add nsw i64 %i.bpo, -15
  br label %_ZN4ncnn3MatD2Ev.exit2237

_ZN4ncnn3MatD2Ev.exit2281:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2281.lr.ph, %._crit_edge7511.split
  %indvars.iv8348 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2281.lr.ph ], [ %indvars.iv.next8349, %._crit_edge7511.split ] ; 2 uses
  %i.bpq = load i32, ptr %i.be, align 8, !tbaa !15
  %.fr8036 = freeze i32 %i.bpq                    ; 8 uses
  %i.bpr = load i32, ptr %i.bf, align 8, !tbaa !16
  %i.bps = mul i32 %i.bpr, %.fr8036               ; 15 uses
  %i.bpt = load i32, ptr %i.bg, align 4, !tbaa !22 ; 6 uses
  %i.bpu = load i32, ptr %i.bh, align 8, !tbaa !23 ; 5 uses
  %i.bpv = load i32, ptr %i.bi, align 4, !tbaa !22 ; 2 uses
  %i.bpw = load i32, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bpx = load i32, ptr %i.o, align 8, !tbaa !15 ; 2 uses
  %i.bpy = icmp sgt i32 %i.bpw, 0
  br i1 %i.bpy, label %.preheader6914.lr.ph, label %._crit_edge7511.split

.preheader6914.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2281
  %i.bpz = shl nuw nsw i64 %indvars.iv8348, 2
  %i.bqa = add nsw i64 %i.bpz, %i.bp              ; 2 uses
  %i.bqb = trunc nsw i64 %i.bqa to i32            ; 3 uses
  %i.bqc = icmp sgt i32 %i.bpv, 0
  %i.bqd = sdiv i32 %i.bqb, 16
  %i.bqe = insertelement <2 x i32> poison, i32 %i.bqb, i64 0
  %i.bqf = shufflevector <2 x i32> %i.bqe, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bqg = srem <2 x i32> %i.bqf, <i32 16, i32 8> ; 2 uses
  %i.bqh = bitcast <2 x i32> %i.bqg to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.bqh, i64 0
  %i.bqi = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.bqi to i32
  %i.bqj = extractelement <2 x i32> %i.bqg, i64 1
  %i.bqk = ashr exact i32 %i.bqj, 2
  %i.bql = add nsw i32 %i.bqk, %i.bqd
  %i.bqm = add nsw i32 %i.bql, %.sext
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = icmp sgt i32 %i.bps, 15
  %i.bqp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8036)
  %i.bqq = icmp eq i32 %i.bqp, 1
  %i.bqr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8036, i1 true)
  %i.bqs = icmp eq i32 %.fr8036, 1
  %i.bqt = load i32, ptr %i.g, align 4
  br i1 %i.bqc, label %.preheader6914.preheader, label %._crit_edge7511.split

.preheader6914.preheader:                         ; preds = %.preheader6914.lr.ph
  %i.bqu = load ptr, ptr %1, align 8, !tbaa !19, !noalias !232
  %i.bqv = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !232
  %i.bqw = sdiv i32 %i.bqb, %i.bpx
  %i.bqx = sext i32 %i.bqw to i64
  %i.bqy = mul i64 %i.bqv, %i.bqx
  %i.bqz = load i64, ptr %i.bk, align 8, !tbaa !24, !noalias !232
  %i.bra = mul i64 %i.bqy, %i.bqz
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqu, i64 %i.bra
  %i.brc = add i32 %i.bps, -16                    ; 3 uses
  %i.brd = lshr i32 %i.brc, 3
  %i.bre = and i32 %i.brd, 536870910
  %narrow8754 = add nuw nsw i32 %i.bre, 2
  %i.brf = zext nneg i32 %narrow8754 to i64
  %i.brg = and i32 %i.brc, -16
  %i.brh = add nuw i32 %i.brg, 16
  %i.bri = sext i32 %i.bps to i64
  %i.brj = and i32 %i.brc, -16
  %i.brk = add i32 %i.brj, 16
  %invariant.op8793 = add nsw i64 %i.bri, -15
  br label %.preheader6914

.preheader6914:                                   ; preds = %.preheader6914.preheader, %._crit_edge7507
  %.019557510 = phi ptr [ %.31958, %._crit_edge7507 ], [ %i.brb, %.preheader6914.preheader ]
  %.019597509 = phi i32 [ %.neg6838, %._crit_edge7507 ], [ 0, %.preheader6914.preheader ]
  %i.brl = load i32, ptr %i.b, align 4            ; 6 uses
  %i.brm = icmp sgt i32 %i.brl, 0                 ; 5 uses
  %.neg6838 = add nuw nsw i32 %.019597509, 1      ; 7 uses
  %i.brn = load i32, ptr %i.k, align 4            ; 5 uses
  %i.bro = shl i32 %i.brn, 6
  %i.brp = sext i32 %i.bro to i64                 ; 2 uses
  %i.brq = shl i32 %i.brn, 5
  %i.brr = sext i32 %i.brq to i64                 ; 2 uses
  %i.brs = shl i32 %i.brn, 4
  %i.brt = sext i32 %i.brs to i64                 ; 2 uses
  %i.bru = shl i32 %i.brn, 3
  %i.brv = sext i32 %i.bru to i64                 ; 3 uses
  %i.brw = shl nsw i32 %i.brn, 2
  %i.brx = sext i32 %i.brw to i64
  %i.bry = mul nsw i64 %i.brf, %i.brp
  %wide.trip.count8276 = zext nneg i32 %i.brl to i64
  %wide.trip.count8291 = zext nneg i32 %i.brl to i64
  %wide.trip.count8311 = zext nneg i32 %i.brl to i64
  %wide.trip.count8328 = zext nneg i32 %i.brl to i64
  %wide.trip.count8341 = zext nneg i32 %i.brl to i64
  br label %bb.ai

._crit_edge7511.split:                            ; preds = %._crit_edge7507, %.preheader6914.lr.ph, %_ZN4ncnn3MatD2Ev.exit2281
  %indvars.iv.next8349 = add nuw nsw i64 %indvars.iv8348, 1 ; 2 uses
  %exitcond8352.not = icmp eq i64 %indvars.iv.next8349, %wide.trip.count8351
  br i1 %exitcond8352.not, label %._crit_edge7513, label %_ZN4ncnn3MatD2Ev.exit2281, !llvm.loop !85

._crit_edge7507:                                  ; preds = %bb.bo
  %exitcond8347.not = icmp eq i32 %.neg6838, %i.bpw
  br i1 %exitcond8347.not, label %._crit_edge7511.split, label %.preheader6914, !llvm.loop !86

bb.ai:                                            ; preds = %.preheader6914, %bb.bo
  %.119567506 = phi ptr [ %.019557510, %.preheader6914 ], [ %.31958, %bb.bo ] ; 8 uses
  %.019607505 = phi i32 [ 0, %.preheader6914 ], [ %i.ekq, %bb.bo ] ; 6 uses
  %i.brz = load ptr, ptr %i.l, align 8, !tbaa !21 ; 2 uses
  %.not2131 = icmp eq ptr %i.brz, null
  br i1 %.not2131, label %_ZN4ncnn3MatD2Ev.exit2280, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bsa = getelementptr inbounds [4 x i8], ptr %i.brz, i64 %i.bqa
  %i.bsb = load <4 x float>, ptr %i.bsa, align 1, !tbaa !26
  br label %_ZN4ncnn3MatD2Ev.exit2280

_ZN4ncnn3MatD2Ev.exit2280:                        ; preds = %bb.aj, %bb.ai
  %.06713 = phi nsz <4 x float> [ zeroinitializer, %bb.ai ], [ %i.bsb, %bb.aj ] ; 3 uses
  %i.bsc = load ptr, ptr %2, align 8, !tbaa !19, !noalias !233 ; 2 uses
  %i.bsd = load i64, ptr %i.bl, align 8, !tbaa !17, !noalias !233
  %i.bse = mul i64 %i.bsd, %i.bqn
  %i.bsf = load i64, ptr %i.bm, align 8, !tbaa !24, !noalias !233
  %i.bsg = mul i64 %i.bse, %i.bsf                 ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsc, i64 %i.bsg ; 2 uses
  br i1 %i.bqo, label %.preheader6909.lr.ph, label %.preheader6913

.preheader6909.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2280
  %i.bsi = load i32, ptr %i.j, align 4
  %invariant.op7248 = sub i32 %.neg6838, %i.bsi
  %i.bsj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bsk = load i32, ptr %i.a, align 4
  %.fr8037 = freeze i32 %i.bsk                    ; 2 uses
  %i.bsl = icmp sgt i32 %.fr8037, 0
  %i.bsm = load i32, ptr %i.i, align 4
  %.neg6840 = add nuw nsw i32 %.019607505, 1
  %invariant.op7231 = sub i32 %.neg6840, %i.bsm
  %i.bsn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brm, label %.preheader6909.us.preheader, label %.preheader6909.preheader

.preheader6909.preheader:                         ; preds = %.preheader6909.lr.ph
  %scevgep8266 = getelementptr i8, ptr %i.bsc, i64 %i.bry
  %scevgep8267 = getelementptr i8, ptr %scevgep8266, i64 %i.bsg
  br label %.preheader6913

.preheader6909.us.preheader:                      ; preds = %.preheader6909.lr.ph
  %i.bso = load i32, ptr %i.c, align 4
  %i.bsp = load i32, ptr %i.d, align 4
  %i.bsq = zext i32 %.fr8037 to i64               ; 2 uses
  br label %.preheader6909.us

.preheader6909.us:                                ; preds = %.preheader6909.us.preheader, %._crit_edge7243.us
  %indvars.iv8278 = phi i64 [ 0, %.preheader6909.us.preheader ], [ %indvars.iv.next8279, %._crit_edge7243.us ] ; 20 uses
  %.019617267.us = phi ptr [ %i.bsh, %.preheader6909.us.preheader ], [ %i.deh, %._crit_edge7243.us ] ; 2 uses
  %.066547265.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7260.us, %._crit_edge7243.us ] ; 2 uses
  %.066727264.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7259.us, %._crit_edge7243.us ] ; 2 uses
  %.066907263.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7258.us, %._crit_edge7243.us ] ; 2 uses
  %.167147262.us = phi <4 x float> [ %.06713, %.preheader6909.us.preheader ], [ %.us-phi7257.us, %._crit_edge7243.us ] ; 2 uses
  %i.bsr = or disjoint i64 %indvars.iv8278, 15
  %i.bss = lshr exact i64 %indvars.iv8278, 4
  %i.bst = lshr exact i64 %indvars.iv8278, 3      ; 2 uses
  %i.bsu = or disjoint i64 %i.bst, 1
  %i.bsv = lshr exact i64 %indvars.iv8278, 2      ; 4 uses
  %i.bsw = or disjoint i64 %i.bsv, 1
  %i.bsx = or disjoint i64 %i.bsv, 2
  %i.bsy = or disjoint i64 %i.bsv, 3
  %i.bsz = or disjoint i64 %indvars.iv8278, 1
  %i.bta = or disjoint i64 %indvars.iv8278, 2
  %i.btb = or disjoint i64 %indvars.iv8278, 3
  %i.btc = or disjoint i64 %indvars.iv8278, 4
  %i.btd = or disjoint i64 %indvars.iv8278, 5
  %i.bte = or disjoint i64 %indvars.iv8278, 6
  %i.btf = or disjoint i64 %indvars.iv8278, 7
  %i.btg = or disjoint i64 %indvars.iv8278, 8
  %i.bth = or disjoint i64 %indvars.iv8278, 9
  %i.bti = or disjoint i64 %indvars.iv8278, 10
  %i.btj = or disjoint i64 %indvars.iv8278, 11
  %i.btk = or disjoint i64 %indvars.iv8278, 12
  %i.btl = or disjoint i64 %indvars.iv8278, 13
  %i.btm = or disjoint i64 %indvars.iv8278, 14
  br i1 %i.bsl, label %.lr.ph7242.split.us.us, label %._crit_edge7243.us

.lr.ph7242.split.us.us:                           ; preds = %.preheader6909.us, %..loopexit6904_crit_edge.us.us
  %indvars.iv8273 = phi i64 [ %indvars.iv.next8274, %..loopexit6904_crit_edge.us.us ], [ 0, %.preheader6909.us ] ; 3 uses
  %.166557240.us.us = phi <4 x float> [ %.76661.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066547265.us, %.preheader6909.us ] ; 4 uses
  %.166737239.us.us = phi <4 x float> [ %.76679.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066727264.us, %.preheader6909.us ] ; 4 uses
  %.166917238.us.us = phi <4 x float> [ %.76697.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066907263.us, %.preheader6909.us ] ; 4 uses
  %.267157237.us.us = phi <4 x float> [ %.86721.us.us, %..loopexit6904_crit_edge.us.us ], [ %.167147262.us, %.preheader6909.us ] ; 4 uses
  %i.btn = trunc i64 %indvars.iv8273 to i32
  %i.bto = mul i32 %i.bsp, %i.btn
  %.reass7249.us.us = add i32 %i.bto, %invariant.op7248 ; 3 uses
  %i.btp = icmp slt i32 %.reass7249.us.us, 0
  br i1 %i.btp, label %..loopexit6904_crit_edge.us.us, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph7242.split.us.us
  %i.btq = srem i32 %.reass7249.us.us, %i.bsj
  %i.btr = sdiv i32 %.reass7249.us.us, %i.bsj     ; 2 uses
  %.not2149.us.us = icmp eq i32 %i.btq, 0
  %.not2150.us.us = icmp slt i32 %i.btr, %i.bpu
  %or.cond8994 = select i1 %.not2149.us.us, i1 %.not2150.us.us, i1 false
  br i1 %or.cond8994, label %.preheader6903.us.us, label %..loopexit6904_crit_edge.us.us

.preheader6903.us.us:                             ; preds = %bb.ak
  %i.bts = mul nuw nsw i64 %indvars.iv8273, %i.bsq
  %i.btt = sext i32 %i.btr to i64                 ; 5 uses
  br i1 %i.bqq, label %.lr.ph.split.us.us.us7282, label %..loopexit6904_crit_edge.us.us

.lr.ph.split.us.us.us7282:                        ; preds = %.preheader6903.us.us, %bb.am
  %indvars.iv8268 = phi i64 [ %indvars.iv.next8269, %bb.am ], [ 0, %.preheader6903.us.us ] ; 3 uses
  %.266567225.us.us.us = phi <4 x float> [ %.66660.us.us.us, %bb.am ], [ %.166557240.us.us, %.preheader6903.us.us ] ; 7 uses
  %.266747224.us.us.us = phi <4 x float> [ %.66678.us.us.us, %bb.am ], [ %.166737239.us.us, %.preheader6903.us.us ] ; 7 uses
  %.266927223.us.us.us = phi <4 x float> [ %.66696.us.us.us, %bb.am ], [ %.166917238.us.us, %.preheader6903.us.us ] ; 7 uses
  %.367167222.us.us.us = phi <4 x float> [ %.76720.us.us.us, %bb.am ], [ %.267157237.us.us, %.preheader6903.us.us ] ; 7 uses
  %i.btu = trunc i64 %indvars.iv8268 to i32
  %i.btv = mul i32 %i.bso, %i.btu
  %.reass.us.us7256.us = add i32 %i.btv, %invariant.op7231 ; 3 uses
  %i.btw = icmp slt i32 %.reass.us.us7256.us, 0
  br i1 %i.btw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.us.us.us7282
  %i.btx = srem i32 %.reass.us.us7256.us, %i.bsn
  %i.bty = sdiv i32 %.reass.us.us7256.us, %i.bsn  ; 5 uses
  %.not2151.us.us.us = icmp eq i32 %i.btx, 0
  %.not2152.us.us.us = icmp slt i32 %i.bty, %i.bpt
  %or.cond8995 = select i1 %.not2151.us.us.us, i1 %.not2152.us.us.us, i1 false
  br i1 %or.cond8995, label %.split2195.us.us.us, label %bb.am

.split2195.us.us.us:                              ; preds = %bb.al
  %i.btz = add nuw nsw i64 %i.bts, %indvars.iv8268
  %i.bua = shl i64 %i.btz, 6
  %i.bub = and i64 %i.bua, 4294967232
  %i.buc = getelementptr inbounds nuw [2 x i8], ptr %.019617267.us, i64 %i.bub ; 64 uses
  switch i32 %i.bqr, label %bb.am [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2279.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2278.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2276.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2272.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2279.us.us.us:               ; preds = %.split2195.us.us.us
  %i.bud = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !234
  %i.bue = load ptr, ptr %0, align 8, !tbaa !19, !noalias !234
  %i.buf = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !234
  %i.bug = mul i64 %i.buf, %i.bss
  %i.buh = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !234 ; 2 uses
  %i.bui = mul i64 %i.bug, %i.buh
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bue, i64 %i.bui
  %i.buk = sext i32 %i.bud to i64
  %i.bul = mul nsw i64 %i.buk, %i.btt
  %i.bum = mul i64 %i.bul, %i.buh
  %i.bun = getelementptr inbounds nuw i8, ptr %i.buj, i64 %i.bum
  %i.buo = shl nsw i32 %i.bty, 4
  %i.bup = sext i32 %i.buo to i64
  %i.buq = getelementptr inbounds [2 x i8], ptr %i.bun, i64 %i.bup ; 9 uses
  %i.bur = load i16, ptr %i.buq, align 2, !tbaa !28
  %i.bus = zext i16 %i.bur to i32
  %i.but = shl nuw i32 %i.bus, 16
  %i.buu = insertelement <4 x i32> poison, i32 %i.but, i64 0
  %i.buv = bitcast <4 x i32> %i.buu to <4 x float>
  %i.buw = shufflevector <4 x float> %i.buv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buq, i64 2
  %i.buy = load i16, ptr %i.bux, align 2, !tbaa !28
  %i.buz = zext i16 %i.buy to i32
  %i.bva = shl nuw i32 %i.buz, 16
  %i.bvb = insertelement <4 x i32> poison, i32 %i.bva, i64 0
  %i.bvc = bitcast <4 x i32> %i.bvb to <4 x float>
  %i.bvd = shufflevector <4 x float> %i.bvc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bve = getelementptr inbounds nuw i8, ptr %i.buq, i64 4
  %i.bvf = load i16, ptr %i.bve, align 2, !tbaa !28
  %i.bvg = zext i16 %i.bvf to i32
  %i.bvh = shl nuw i32 %i.bvg, 16
  %i.bvi = insertelement <4 x i32> poison, i32 %i.bvh, i64 0
  %i.bvj = bitcast <4 x i32> %i.bvi to <4 x float>
  %i.bvk = shufflevector <4 x float> %i.bvj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.buq, i64 6
  %i.bvm = load i16, ptr %i.bvl, align 2, !tbaa !28
  %i.bvn = zext i16 %i.bvm to i32
  %i.bvo = shl nuw i32 %i.bvn, 16
  %i.bvp = insertelement <4 x i32> poison, i32 %i.bvo, i64 0
  %i.bvq = bitcast <4 x i32> %i.bvp to <4 x float>
  %i.bvr = shufflevector <4 x float> %i.bvq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.buq, i64 8
  %i.bvt = load i16, ptr %i.bvs, align 2, !tbaa !28
  %i.bvu = zext i16 %i.bvt to i32
  %i.bvv = shl nuw i32 %i.bvu, 16
  %i.bvw = insertelement <4 x i32> poison, i32 %i.bvv, i64 0
  %i.bvx = bitcast <4 x i32> %i.bvw to <4 x float>
  %i.bvy = shufflevector <4 x float> %i.bvx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.buq, i64 10
  %i.bwa = load i16, ptr %i.bvz, align 2, !tbaa !28
  %i.bwb = zext i16 %i.bwa to i32
  %i.bwc = shl nuw i32 %i.bwb, 16
  %i.bwd = insertelement <4 x i32> poison, i32 %i.bwc, i64 0
  %i.bwe = bitcast <4 x i32> %i.bwd to <4 x float>
  %i.bwf = shufflevector <4 x float> %i.bwe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.buq, i64 12
  %i.bwh = load i16, ptr %i.bwg, align 2, !tbaa !28
  %i.bwi = zext i16 %i.bwh to i32
  %i.bwj = shl nuw i32 %i.bwi, 16
  %i.bwk = insertelement <4 x i32> poison, i32 %i.bwj, i64 0
  %i.bwl = bitcast <4 x i32> %i.bwk to <4 x float>
  %i.bwm = shufflevector <4 x float> %i.bwl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.buq, i64 14
  %i.bwo = load <8 x i16>, ptr %i.bwn, align 2, !tbaa !28
  %i.bwp = zext <8 x i16> %i.bwo to <8 x i32>
  %i.bwq = shl nuw <8 x i32> %i.bwp, splat (i32 16) ; 8 uses
  %i.bwr = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bws = shufflevector <8 x float> %i.bwr, <8 x float> poison, <4 x i32> zeroinitializer
  %i.bwt = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bwu = shufflevector <8 x float> %i.bwt, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bwv = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bww = shufflevector <8 x float> %i.bwv, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bwx = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bwy = shufflevector <8 x float> %i.bwx, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bwz = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bxa = shufflevector <8 x float> %i.bwz, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.bxb = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bxc = shufflevector <8 x float> %i.bxb, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.bxd = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bxe = shufflevector <8 x float> %i.bxd, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.bxf = bitcast <8 x i32> %i.bwq to <8 x float>
  %i.bxg = shufflevector <8 x float> %i.bxf, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.buq, i64 30
  %i.bxi = load i16, ptr %i.bxh, align 2, !tbaa !28
  %i.bxj = zext i16 %i.bxi to i32
  %i.bxk = shl nuw i32 %i.bxj, 16
  %i.bxl = insertelement <4 x i32> poison, i32 %i.bxk, i64 0
  %i.bxm = bitcast <4 x i32> %i.bxl to <4 x float>
  %i.bxn = shufflevector <4 x float> %i.bxm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bxo = load i64, ptr %i.buc, align 1, !tbaa !26
  %i.bxp = insertelement <2 x i64> poison, i64 %i.bxo, i64 0
  %i.bxq = bitcast <2 x i64> %i.bxp to <8 x i16>
  %i.bxr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bxq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bxs = bitcast <8 x i16> %i.bxr to <4 x float>
  %i.bxt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.buw, <4 x float> nofpclass(nan inf) %i.bxs, <4 x float> nofpclass(nan inf) %.367167222.us.us.us)
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.buc, i64 8
  %i.bxv = load i64, ptr %i.bxu, align 1, !tbaa !26
  %i.bxw = insertelement <2 x i64> poison, i64 %i.bxv, i64 0
  %i.bxx = bitcast <2 x i64> %i.bxw to <8 x i16>
  %i.bxy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bxx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bxz = bitcast <8 x i16> %i.bxy to <4 x float>
  %i.bya = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvd, <4 x float> nofpclass(nan inf) %i.bxz, <4 x float> nofpclass(nan inf) %.266927223.us.us.us)
  %i.byb = getelementptr inbounds nuw i8, ptr %i.buc, i64 16
  %i.byc = load i64, ptr %i.byb, align 1, !tbaa !26
  %i.byd = insertelement <2 x i64> poison, i64 %i.byc, i64 0
  %i.bye = bitcast <2 x i64> %i.byd to <8 x i16>
  %i.byf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bye, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.byg = bitcast <8 x i16> %i.byf to <4 x float>
  %i.byh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvk, <4 x float> nofpclass(nan inf) %i.byg, <4 x float> nofpclass(nan inf) %.266747224.us.us.us)
  %i.byi = getelementptr inbounds nuw i8, ptr %i.buc, i64 24
  %i.byj = load i64, ptr %i.byi, align 1, !tbaa !26
  %i.byk = insertelement <2 x i64> poison, i64 %i.byj, i64 0
  %i.byl = bitcast <2 x i64> %i.byk to <8 x i16>
  %i.bym = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.byl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.byn = bitcast <8 x i16> %i.bym to <4 x float>
  %i.byo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvr, <4 x float> nofpclass(nan inf) %i.byn, <4 x float> nofpclass(nan inf) %.266567225.us.us.us)
  %i.byp = getelementptr inbounds nuw i8, ptr %i.buc, i64 32
  %i.byq = load i64, ptr %i.byp, align 1, !tbaa !26
  %i.byr = insertelement <2 x i64> poison, i64 %i.byq, i64 0
  %i.bys = bitcast <2 x i64> %i.byr to <8 x i16>
  %i.byt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bys, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.byu = bitcast <8 x i16> %i.byt to <4 x float>
  %i.byv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bvy, <4 x float> nofpclass(nan inf) %i.byu, <4 x float> nofpclass(nan inf) %i.bxt)
  %i.byw = getelementptr inbounds nuw i8, ptr %i.buc, i64 40
  %i.byx = load i64, ptr %i.byw, align 1, !tbaa !26
  %i.byy = insertelement <2 x i64> poison, i64 %i.byx, i64 0
  %i.byz = bitcast <2 x i64> %i.byy to <8 x i16>
  %i.bza = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.byz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bzb = bitcast <8 x i16> %i.bza to <4 x float>
  %i.bzc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwf, <4 x float> nofpclass(nan inf) %i.bzb, <4 x float> nofpclass(nan inf) %i.bya)
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.buc, i64 48
  %i.bze = load i64, ptr %i.bzd, align 1, !tbaa !26
  %i.bzf = insertelement <2 x i64> poison, i64 %i.bze, i64 0
  %i.bzg = bitcast <2 x i64> %i.bzf to <8 x i16>
  %i.bzh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bzg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bzi = bitcast <8 x i16> %i.bzh to <4 x float>
  %i.bzj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwm, <4 x float> nofpclass(nan inf) %i.bzi, <4 x float> nofpclass(nan inf) %i.byh)
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.buc, i64 56
  %i.bzl = load i64, ptr %i.bzk, align 1, !tbaa !26
  %i.bzm = insertelement <2 x i64> poison, i64 %i.bzl, i64 0
  %i.bzn = bitcast <2 x i64> %i.bzm to <8 x i16>
  %i.bzo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bzn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bzp = bitcast <8 x i16> %i.bzo to <4 x float>
  %i.bzq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bws, <4 x float> nofpclass(nan inf) %i.bzp, <4 x float> nofpclass(nan inf) %i.byo)
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.buc, i64 64
  %i.bzs = load i64, ptr %i.bzr, align 1, !tbaa !26
  %i.bzt = insertelement <2 x i64> poison, i64 %i.bzs, i64 0
  %i.bzu = bitcast <2 x i64> %i.bzt to <8 x i16>
  %i.bzv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bzu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bzw = bitcast <8 x i16> %i.bzv to <4 x float>
  %i.bzx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwu, <4 x float> nofpclass(nan inf) %i.bzw, <4 x float> nofpclass(nan inf) %i.byv)
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.buc, i64 72
  %i.bzz = load i64, ptr %i.bzy, align 1, !tbaa !26
  %i.caa = insertelement <2 x i64> poison, i64 %i.bzz, i64 0
  %i.cab = bitcast <2 x i64> %i.caa to <8 x i16>
  %i.cac = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cad = bitcast <8 x i16> %i.cac to <4 x float>
  %i.cae = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bww, <4 x float> nofpclass(nan inf) %i.cad, <4 x float> nofpclass(nan inf) %i.bzc)
  %i.caf = getelementptr inbounds nuw i8, ptr %i.buc, i64 80
  %i.cag = load i64, ptr %i.caf, align 1, !tbaa !26
  %i.cah = insertelement <2 x i64> poison, i64 %i.cag, i64 0
  %i.cai = bitcast <2 x i64> %i.cah to <8 x i16>
  %i.caj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cak = bitcast <8 x i16> %i.caj to <4 x float>
  %i.cal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bwy, <4 x float> nofpclass(nan inf) %i.cak, <4 x float> nofpclass(nan inf) %i.bzj)
  %i.cam = getelementptr inbounds nuw i8, ptr %i.buc, i64 88
  %i.can = load i64, ptr %i.cam, align 1, !tbaa !26
  %i.cao = insertelement <2 x i64> poison, i64 %i.can, i64 0
  %i.cap = bitcast <2 x i64> %i.cao to <8 x i16>
  %i.caq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cap, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.car = bitcast <8 x i16> %i.caq to <4 x float>
  %i.cas = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxa, <4 x float> nofpclass(nan inf) %i.car, <4 x float> nofpclass(nan inf) %i.bzq)
  %i.cat = getelementptr inbounds nuw i8, ptr %i.buc, i64 96
  %i.cau = load i64, ptr %i.cat, align 1, !tbaa !26
  %i.cav = insertelement <2 x i64> poison, i64 %i.cau, i64 0
  %i.caw = bitcast <2 x i64> %i.cav to <8 x i16>
  %i.cax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.caw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cay = bitcast <8 x i16> %i.cax to <4 x float>
  %i.caz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bxc, <4 x float> nofpclass(nan inf) %i.cay, <4 x float> nofpclass(nan inf) %i.bzx) ; 4 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %i.buc, i64 104
  %i.cbb = load i64, ptr %i.cba, align 1, !tbaa !26
  %i.cbc = insertelement <2 x i64> poison, i64 %i.cbb, i64 0
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.daw = insertelement <2 x i64> poison, i64 %i.dav, i64 0
  %i.dax = bitcast <2 x i64> %i.daw to <8 x i16>
  %i.day = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dax, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.daz = bitcast <8 x i16> %i.day to <4 x float>
  %i.dba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cuq, <4 x float> nofpclass(nan inf) %i.daz, <4 x float> nofpclass(nan inf) %.56659.us.us.us)
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.buc, i64 32
  %i.dbc = load i64, ptr %i.dbb, align 1, !tbaa !26
  %i.dbd = insertelement <2 x i64> poison, i64 %i.dbc, i64 0
  %i.dbe = bitcast <2 x i64> %i.dbd to <8 x i16>
  %i.dbf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbg = bitcast <8 x i16> %i.dbf to <4 x float>
  %i.dbh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvb, <4 x float> nofpclass(nan inf) %i.dbg, <4 x float> nofpclass(nan inf) %i.daf)
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.buc, i64 40
  %i.dbj = load i64, ptr %i.dbi, align 1, !tbaa !26
  %i.dbk = insertelement <2 x i64> poison, i64 %i.dbj, i64 0
  %i.dbl = bitcast <2 x i64> %i.dbk to <8 x i16>
  %i.dbm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbn = bitcast <8 x i16> %i.dbm to <4 x float>
  %i.dbo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvm, <4 x float> nofpclass(nan inf) %i.dbn, <4 x float> nofpclass(nan inf) %i.dam)
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.buc, i64 48
  %i.dbq = load i64, ptr %i.dbp, align 1, !tbaa !26
  %i.dbr = insertelement <2 x i64> poison, i64 %i.dbq, i64 0
  %i.dbs = bitcast <2 x i64> %i.dbr to <8 x i16>
  %i.dbt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbu = bitcast <8 x i16> %i.dbt to <4 x float>
  %i.dbv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvx, <4 x float> nofpclass(nan inf) %i.dbu, <4 x float> nofpclass(nan inf) %i.dat)
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.buc, i64 56
  %i.dbx = load i64, ptr %i.dbw, align 1, !tbaa !26
  %i.dby = insertelement <2 x i64> poison, i64 %i.dbx, i64 0
  %i.dbz = bitcast <2 x i64> %i.dby to <8 x i16>
  %i.dca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcb = bitcast <8 x i16> %i.dca to <4 x float>
  %i.dcc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwi, <4 x float> nofpclass(nan inf) %i.dcb, <4 x float> nofpclass(nan inf) %i.dba)
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.buc, i64 64
  %i.dce = load i64, ptr %i.dcd, align 1, !tbaa !26
  %i.dcf = insertelement <2 x i64> poison, i64 %i.dce, i64 0
  %i.dcg = bitcast <2 x i64> %i.dcf to <8 x i16>
  %i.dch = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dci = bitcast <8 x i16> %i.dch to <4 x float>
  %i.dcj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwt, <4 x float> nofpclass(nan inf) %i.dci, <4 x float> nofpclass(nan inf) %i.dbh)
  %i.dck = getelementptr inbounds nuw i8, ptr %i.buc, i64 72
  %i.dcl = load i64, ptr %i.dck, align 1, !tbaa !26
  %i.dcm = insertelement <2 x i64> poison, i64 %i.dcl, i64 0
  %i.dcn = bitcast <2 x i64> %i.dcm to <8 x i16>
  %i.dco = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcp = bitcast <8 x i16> %i.dco to <4 x float>
  %i.dcq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxl, <4 x float> nofpclass(nan inf) %i.dcp, <4 x float> nofpclass(nan inf) %i.dbo)
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.buc, i64 80
  %i.dcs = load i64, ptr %i.dcr, align 1, !tbaa !26
  %i.dct = insertelement <2 x i64> poison, i64 %i.dcs, i64 0
  %i.dcu = bitcast <2 x i64> %i.dct to <8 x i16>
  %i.dcv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcw = bitcast <8 x i16> %i.dcv to <4 x float>
  %i.dcx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxw, <4 x float> nofpclass(nan inf) %i.dcw, <4 x float> nofpclass(nan inf) %i.dbv)
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.buc, i64 88
  %i.dcz = load i64, ptr %i.dcy, align 1, !tbaa !26
  %i.dda = insertelement <2 x i64> poison, i64 %i.dcz, i64 0
  %i.ddb = bitcast <2 x i64> %i.dda to <8 x i16>
  %i.ddc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddd = bitcast <8 x i16> %i.ddc to <4 x float>
  %i.dde = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyh, <4 x float> nofpclass(nan inf) %i.ddd, <4 x float> nofpclass(nan inf) %i.dcc)
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.buc, i64 96
  %i.ddg = load i64, ptr %i.ddf, align 1, !tbaa !26
  %i.ddh = insertelement <2 x i64> poison, i64 %i.ddg, i64 0
  %i.ddi = bitcast <2 x i64> %i.ddh to <8 x i16>
  %i.ddj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddk = bitcast <8 x i16> %i.ddj to <4 x float>
  %i.ddl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cys, <4 x float> nofpclass(nan inf) %i.ddk, <4 x float> nofpclass(nan inf) %i.dcj)
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.buc, i64 104
  %i.ddn = load i64, ptr %i.ddm, align 1, !tbaa !26
  %i.ddo = insertelement <2 x i64> poison, i64 %i.ddn, i64 0
  %i.ddp = bitcast <2 x i64> %i.ddo to <8 x i16>
  %i.ddq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddr = bitcast <8 x i16> %i.ddq to <4 x float>
  %i.dds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czd, <4 x float> nofpclass(nan inf) %i.ddr, <4 x float> nofpclass(nan inf) %i.dcq)
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.buc, i64 112
  %i.ddu = load i64, ptr %i.ddt, align 1, !tbaa !26
  %i.ddv = insertelement <2 x i64> poison, i64 %i.ddu, i64 0
  %i.ddw = bitcast <2 x i64> %i.ddv to <8 x i16>
  %i.ddx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddy = bitcast <8 x i16> %i.ddx to <4 x float>
  %i.ddz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czo, <4 x float> nofpclass(nan inf) %i.ddy, <4 x float> nofpclass(nan inf) %i.dcx)
  %i.dea = getelementptr inbounds nuw i8, ptr %i.buc, i64 120
  %i.deb = load i64, ptr %i.dea, align 1, !tbaa !26
  %i.dec = insertelement <2 x i64> poison, i64 %i.deb, i64 0
  %i.ded = bitcast <2 x i64> %i.dec to <8 x i16>
  %i.dee = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ded, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.def = bitcast <8 x i16> %i.dee to <4 x float>
  %i.deg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czz, <4 x float> nofpclass(nan inf) %i.def, <4 x float> nofpclass(nan inf) %i.dde)
  br label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2272.us.us.us, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us, %.split2195.us.us.us, %bb.al, %.lr.ph.split.us.us.us7282
  %.76720.us.us.us = phi nsz <4 x float> [ %.367167222.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.367167222.us.us.us, %.split2195.us.us.us ], [ %i.caz, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cjg, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.ddl, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.crv, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.367167222.us.us.us, %bb.al ] ; 2 uses
  %.66696.us.us.us = phi nsz <4 x float> [ %.266927223.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266927223.us.us.us, %.split2195.us.us.us ], [ %i.cbg, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cjn, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.dds, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csc, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266927223.us.us.us, %bb.al ] ; 2 uses
  %.66678.us.us.us = phi nsz <4 x float> [ %.266747224.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266747224.us.us.us, %.split2195.us.us.us ], [ %i.cbn, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cju, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.ddz, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csj, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266747224.us.us.us, %bb.al ] ; 2 uses
  %.66660.us.us.us = phi nsz <4 x float> [ %.266567225.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266567225.us.us.us, %.split2195.us.us.us ], [ %i.cbu, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.ckb, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.deg, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csq, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266567225.us.us.us, %bb.al ] ; 2 uses
  %indvars.iv.next8269 = add nuw nsw i64 %indvars.iv8268, 1 ; 2 uses
  %exitcond8272.not = icmp eq i64 %indvars.iv.next8269, %i.bsq
  br i1 %exitcond8272.not, label %..loopexit6904_crit_edge.us.us, label %.lr.ph.split.us.us.us7282, !llvm.loop !99

..loopexit6904_crit_edge.us.us:                   ; preds = %bb.am, %.preheader6903.us.us, %bb.ak, %.lr.ph7242.split.us.us
  %.86721.us.us = phi nsz <4 x float> [ %.267157237.us.us, %.lr.ph7242.split.us.us ], [ %.267157237.us.us, %bb.ak ], [ %.267157237.us.us, %.preheader6903.us.us ], [ %.76720.us.us.us, %bb.am ] ; 2 uses
  %.76697.us.us = phi nsz <4 x float> [ %.166917238.us.us, %.lr.ph7242.split.us.us ], [ %.166917238.us.us, %bb.ak ], [ %.166917238.us.us, %.preheader6903.us.us ], [ %.66696.us.us.us, %bb.am ] ; 2 uses
  %.76679.us.us = phi nsz <4 x float> [ %.166737239.us.us, %.lr.ph7242.split.us.us ], [ %.166737239.us.us, %bb.ak ], [ %.166737239.us.us, %.preheader6903.us.us ], [ %.66678.us.us.us, %bb.am ] ; 2 uses
  %.76661.us.us = phi nsz <4 x float> [ %.166557240.us.us, %.lr.ph7242.split.us.us ], [ %.166557240.us.us, %bb.ak ], [ %.166557240.us.us, %.preheader6903.us.us ], [ %.66660.us.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next8274 = add nuw nsw i64 %indvars.iv8273, 1 ; 2 uses
  %exitcond8277.not = icmp eq i64 %indvars.iv.next8274, %wide.trip.count8276
  br i1 %exitcond8277.not, label %._crit_edge7243.us, label %.lr.ph7242.split.us.us, !llvm.loop !100

._crit_edge7243.us:                               ; preds = %..loopexit6904_crit_edge.us.us, %.preheader6909.us
  %.us-phi7257.us = phi <4 x float> [ %.167147262.us, %.preheader6909.us ], [ %.86721.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7258.us = phi <4 x float> [ %.066907263.us, %.preheader6909.us ], [ %.76697.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7259.us = phi <4 x float> [ %.066727264.us, %.preheader6909.us ], [ %.76679.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7260.us = phi <4 x float> [ %.066547265.us, %.preheader6909.us ], [ %.76661.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %i.deh = getelementptr inbounds [2 x i8], ptr %.019617267.us, i64 %i.brp ; 2 uses
  %indvars.iv.next8279 = add nuw nsw i64 %indvars.iv8278, 16 ; 2 uses
  %i.dei = icmp slt i64 %indvars.iv.next8279, %invariant.op8793
  br i1 %i.dei, label %.preheader6909.us, label %.preheader6913, !llvm.loop !101

.preheader6913:                                   ; preds = %._crit_edge7243.us, %.preheader6909.preheader, %_ZN4ncnn3MatD2Ev.exit2280
  %.16714.lcssa = phi <4 x float> [ %.06713, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %.06713, %.preheader6909.preheader ], [ %.us-phi7257.us, %._crit_edge7243.us ] ; 3 uses
  %.06690.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7258.us, %._crit_edge7243.us ] ; 3 uses
  %.06672.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7259.us, %._crit_edge7243.us ] ; 3 uses
  %.06654.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7260.us, %._crit_edge7243.us ] ; 3 uses
  %.01966.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %i.brh, %.preheader6909.preheader ], [ %i.brk, %._crit_edge7243.us ] ; 6 uses
  %.01961.lcssa = phi ptr [ %i.bsh, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %scevgep8267, %.preheader6909.preheader ], [ %i.deh, %._crit_edge7243.us ] ; 3 uses
  %i.dej = or disjoint i32 %.01966.lcssa, 7       ; 2 uses
  %i.dek = icmp slt i32 %i.dej, %i.bps
  br i1 %i.dek, label %.preheader6908.lr.ph, label %.preheader6912

.preheader6908.lr.ph:                             ; preds = %.preheader6913
  %i.del = load i32, ptr %i.j, align 4
  %invariant.op7310 = sub i32 %.neg6838, %i.del
  %i.dem = load i32, ptr %i.f, align 4            ; 2 uses
  %i.den = load i32, ptr %i.a, align 4
  %.fr8038 = freeze i32 %i.den                    ; 2 uses
  %i.deo = icmp sgt i32 %.fr8038, 0
  %i.dep = load i32, ptr %i.i, align 4
  %.neg6836 = add nuw nsw i32 %.019607505, 1
  %invariant.op7298 = sub i32 %.neg6836, %i.dep
  %i.deq = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brm, label %.preheader6908.us.preheader, label %.preheader6908.preheader

.preheader6908.preheader:                         ; preds = %.preheader6908.lr.ph
  %i.der = add i32 %.01966.lcssa, 15
  %smax8281 = call i32 @llvm.smax.i32(i32 %i.bps, i32 %i.der)
  %i.des = add i32 %smax8281, -8
  %i.det = sub i32 %i.des, %.01966.lcssa          ; 2 uses
  %i.deu = lshr i32 %i.det, 2
  %i.dev = and i32 %i.deu, 1073741822
  %narrow8755 = add nuw nsw i32 %i.dev, 2
  %i.dew = zext nneg i32 %narrow8755 to i64
  %i.dex = mul nsw i64 %i.brr, %i.dew
  %scevgep8282 = getelementptr i8, ptr %.01961.lcssa, i64 %i.dex
  %i.dey = add i32 %.01966.lcssa, 8
  %i.dez = and i32 %i.det, -8
  %i.dfa = add i32 %i.dey, %i.dez
  br label %.preheader6912

.preheader6908.us.preheader:                      ; preds = %.preheader6908.lr.ph
  %i.dfb = load i32, ptr %i.c, align 4
  %i.dfc = load i32, ptr %i.d, align 4
  %i.dfd = zext i32 %.fr8038 to i64               ; 2 uses
  %i.dfe = zext i32 %.01966.lcssa to i64
  %i.dff = zext nneg i32 %i.dej to i64
  br label %.preheader6908.us

.preheader6908.us:                                ; preds = %.preheader6908.us.preheader, %._crit_edge7305.us
  %indvars.iv8293 = phi i64 [ %i.dfe, %.preheader6908.us.preheader ], [ %indvars.iv.next8294, %._crit_edge7305.us ] ; 10 uses
  %i.dfg = phi i64 [ %i.dff, %.preheader6908.us.preheader ], [ %i.dql, %._crit_edge7305.us ]
  %.119627322.us = phi ptr [ %.01961.lcssa, %.preheader6908.us.preheader ], [ %i.dqk, %._crit_edge7305.us ] ; 2 uses
  %.866627320.us = phi <4 x float> [ %.06654.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7315.us, %._crit_edge7305.us ] ; 2 uses
  %.866807319.us = phi <4 x float> [ %.06672.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7314.us, %._crit_edge7305.us ] ; 2 uses
  %.866987318.us = phi <4 x float> [ %.06690.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7313.us, %._crit_edge7305.us ] ; 2 uses
  %.967227317.us = phi <4 x float> [ %.16714.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7312.us, %._crit_edge7305.us ] ; 2 uses
  %i.dfh = or disjoint i64 %indvars.iv8293, 1
  %i.dfi = or disjoint i64 %indvars.iv8293, 2
  %i.dfj = or disjoint i64 %indvars.iv8293, 3
  %i.dfk = or disjoint i64 %indvars.iv8293, 4
  %i.dfl = or disjoint i64 %indvars.iv8293, 5
  %i.dfm = or disjoint i64 %indvars.iv8293, 6
  %i.dfn = lshr exact i64 %indvars.iv8293, 2      ; 2 uses
  %i.dfo = or disjoint i64 %i.dfn, 1
  %i.dfp = lshr exact i64 %indvars.iv8293, 3
  br i1 %i.deo, label %.lr.ph7304.split.us.us, label %._crit_edge7305.us

.lr.ph7304.split.us.us:                           ; preds = %.preheader6908.us, %..loopexit6902_crit_edge.us.us
  %indvars.iv8288 = phi i64 [ %indvars.iv.next8289, %..loopexit6902_crit_edge.us.us ], [ 0, %.preheader6908.us ] ; 3 uses
  %.966637302.us.us = phi <4 x float> [ %.126666.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866627320.us, %.preheader6908.us ] ; 3 uses
  %.966817301.us.us = phi <4 x float> [ %.126684.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866807319.us, %.preheader6908.us ] ; 3 uses
  %.966997300.us.us = phi <4 x float> [ %.126702.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866987318.us, %.preheader6908.us ] ; 3 uses
  %.1067237299.us.us = phi <4 x float> [ %.136726.us.us, %..loopexit6902_crit_edge.us.us ], [ %.967227317.us, %.preheader6908.us ] ; 3 uses
  %i.dfq = trunc i64 %indvars.iv8288 to i32
  %i.dfr = mul i32 %i.dfc, %i.dfq
  %.reass7311.us.us = add i32 %i.dfr, %invariant.op7310 ; 3 uses
  %i.dfs = icmp slt i32 %.reass7311.us.us, 0
  br i1 %i.dfs, label %..loopexit6902_crit_edge.us.us, label %bb.an

bb.an:                                            ; preds = %.lr.ph7304.split.us.us
  %i.dft = srem i32 %.reass7311.us.us, %i.dem
  %i.dfu = sdiv i32 %.reass7311.us.us, %i.dem     ; 2 uses
  %.not2145.us.us = icmp eq i32 %i.dft, 0
  %.not2146.us.us = icmp slt i32 %i.dfu, %i.bpu
  %or.cond8996 = select i1 %.not2145.us.us, i1 %.not2146.us.us, i1 false
  br i1 %or.cond8996, label %.preheader6901.us.us, label %..loopexit6902_crit_edge.us.us

.preheader6901.us.us:                             ; preds = %bb.an
  %i.dfv = mul nuw nsw i64 %indvars.iv8288, %i.dfd
  %i.dfw = sext i32 %i.dfu to i64                 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.preheader6901.us.us
  %indvars.iv8283 = phi i64 [ %indvars.iv.next8284, %bb.ar ], [ 0, %.preheader6901.us.us ] ; 3 uses
  %.1066647292.us.us = phi <4 x float> [ %.116665.us.us, %bb.ar ], [ %.966637302.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1066827291.us.us = phi <4 x float> [ %.116683.us.us, %bb.ar ], [ %.966817301.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1067007290.us.us = phi <4 x float> [ %.116701.us.us, %bb.ar ], [ %.966997300.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1167247289.us.us = phi <4 x float> [ %.126725.us.us, %bb.ar ], [ %.1067237299.us.us, %.preheader6901.us.us ] ; 4 uses
  %i.dfx = trunc i64 %indvars.iv8283 to i32
  %i.dfy = mul i32 %i.dfb, %i.dfx
  %.reass.us.us7337 = add i32 %i.dfy, %invariant.op7298 ; 3 uses
  %i.dfz = icmp slt i32 %.reass.us.us7337, 0
  br i1 %i.dfz, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dga = srem i32 %.reass.us.us7337, %i.deq
  %i.dgb = sdiv i32 %.reass.us.us7337, %i.deq     ; 4 uses
  %.not2147.us.us = icmp eq i32 %i.dga, 0
  %.not2148.us.us = icmp slt i32 %i.dgb, %i.bpt
  %or.cond8997 = select i1 %.not2147.us.us, i1 %.not2148.us.us, i1 false
  br i1 %or.cond8997, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dgc = add nuw nsw i64 %i.dfv, %indvars.iv8283
  %i.dgd = shl i64 %i.dgc, 5
  %i.dge = and i64 %i.dgd, 4294967264
  %i.dgf = getelementptr inbounds nuw [2 x i8], ptr %.119627322.us, i64 %i.dge ; 8 uses
  switch i32 %.fr8036, label %bb.ar [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2256.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2255.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2253.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2253.us.us:                  ; preds = %bb.aq
  %i.dgg = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !239
  %i.dgh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !239 ; 8 uses
  %i.dgi = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !239 ; 8 uses
  %i.dgj = mul i64 %i.dgi, %indvars.iv8293
  %i.dgk = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !239 ; 9 uses
  %i.dgl = mul i64 %i.dgj, %i.dgk
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dgl
  %i.dgn = sext i32 %i.dgg to i64
  %i.dgo = mul nsw i64 %i.dgn, %i.dfw
  %i.dgp = mul i64 %i.dgo, %i.dgk                 ; 8 uses
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dgm, i64 %i.dgp
  %i.dgr = sext i32 %i.dgb to i64                 ; 8 uses
  %i.dgs = getelementptr inbounds [2 x i8], ptr %i.dgq, i64 %i.dgr
  %i.dgt = load i16, ptr %i.dgs, align 2, !tbaa !28
  %i.dgu = zext i16 %i.dgt to i32
  %i.dgv = shl nuw i32 %i.dgu, 16
  %i.dgw = insertelement <4 x i32> poison, i32 %i.dgv, i64 0
  %i.dgx = bitcast <4 x i32> %i.dgw to <4 x float>
  %i.dgy = shufflevector <4 x float> %i.dgx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgz = mul i64 %i.dgi, %i.dfh
  %i.dha = mul i64 %i.dgz, %i.dgk
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dha
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dhb, i64 %i.dgp
  %i.dhd = getelementptr inbounds [2 x i8], ptr %i.dhc, i64 %i.dgr
  %i.dhe = load i16, ptr %i.dhd, align 2, !tbaa !28
  %i.dhf = zext i16 %i.dhe to i32
  %i.dhg = shl nuw i32 %i.dhf, 16
  %i.dhh = insertelement <4 x i32> poison, i32 %i.dhg, i64 0
  %i.dhi = bitcast <4 x i32> %i.dhh to <4 x float>
  %i.dhj = shufflevector <4 x float> %i.dhi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dhk = mul i64 %i.dgi, %i.dfi
  %i.dhl = mul i64 %i.dhk, %i.dgk
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dhl
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhm, i64 %i.dgp
  %i.dho = getelementptr inbounds [2 x i8], ptr %i.dhn, i64 %i.dgr
  %i.dhp = load i16, ptr %i.dho, align 2, !tbaa !28
  %i.dhq = zext i16 %i.dhp to i32
  %i.dhr = shl nuw i32 %i.dhq, 16
  %i.dhs = insertelement <4 x i32> poison, i32 %i.dhr, i64 0
  %i.dht = bitcast <4 x i32> %i.dhs to <4 x float>
  %i.dhu = shufflevector <4 x float> %i.dht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dhv = mul i64 %i.dgi, %i.dfj
  %i.dhw = mul i64 %i.dhv, %i.dgk
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dhw
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dhx, i64 %i.dgp
  %i.dhz = getelementptr inbounds [2 x i8], ptr %i.dhy, i64 %i.dgr
  %i.dia = load i16, ptr %i.dhz, align 2, !tbaa !28
  %i.dib = zext i16 %i.dia to i32
  %i.dic = shl nuw i32 %i.dib, 16
  %i.did = insertelement <4 x i32> poison, i32 %i.dic, i64 0
  %i.die = bitcast <4 x i32> %i.did to <4 x float>
  %i.dif = shufflevector <4 x float> %i.die, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dig = mul i64 %i.dgi, %i.dfk
  %i.dih = mul i64 %i.dig, %i.dgk
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dih
  %i.dij = getelementptr inbounds nuw i8, ptr %i.dii, i64 %i.dgp
  %i.dik = getelementptr inbounds [2 x i8], ptr %i.dij, i64 %i.dgr
  %i.dil = load i16, ptr %i.dik, align 2, !tbaa !28
  %i.dim = zext i16 %i.dil to i32
  %i.din = shl nuw i32 %i.dim, 16
  %i.dio = insertelement <4 x i32> poison, i32 %i.din, i64 0
  %i.dip = bitcast <4 x i32> %i.dio to <4 x float>
  %i.diq = shufflevector <4 x float> %i.dip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dir = mul i64 %i.dgi, %i.dfl
  %i.dis = mul i64 %i.dir, %i.dgk
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.dis
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 %i.dgp
  %i.div = getelementptr inbounds [2 x i8], ptr %i.diu, i64 %i.dgr
  %i.diw = load i16, ptr %i.div, align 2, !tbaa !28
  %i.dix = zext i16 %i.diw to i32
  %i.diy = shl nuw i32 %i.dix, 16
  %i.diz = insertelement <4 x i32> poison, i32 %i.diy, i64 0
  %i.dja = bitcast <4 x i32> %i.diz to <4 x float>
  %i.djb = shufflevector <4 x float> %i.dja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djc = mul i64 %i.dgi, %i.dfm
  %i.djd = mul i64 %i.djc, %i.dgk
  %i.dje = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.djd
  %i.djf = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.dgp
  %i.djg = getelementptr inbounds [2 x i8], ptr %i.djf, i64 %i.dgr
  %i.djh = load i16, ptr %i.djg, align 2, !tbaa !28
  %i.dji = zext i16 %i.djh to i32
  %i.djj = shl nuw i32 %i.dji, 16
  %i.djk = insertelement <4 x i32> poison, i32 %i.djj, i64 0
  %i.djl = bitcast <4 x i32> %i.djk to <4 x float>
  %i.djm = shufflevector <4 x float> %i.djl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djn = mul i64 %i.dgi, %i.dfg
  %i.djo = mul i64 %i.djn, %i.dgk
  %i.djp = getelementptr inbounds nuw i8, ptr %i.dgh, i64 %i.djo
  %i.djq = getelementptr inbounds nuw i8, ptr %i.djp, i64 %i.dgp
  %i.djr = getelementptr inbounds [2 x i8], ptr %i.djq, i64 %i.dgr
  br label %.sink.split8833

_ZN4ncnn3MatD2Ev.exit2255.us.us:                  ; preds = %bb.aq
  %i.djs = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !240
  %i.djt = load ptr, ptr %0, align 8, !tbaa !19, !noalias !240 ; 2 uses
  %i.dju = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !240 ; 2 uses
  %i.djv = mul i64 %i.dju, %i.dfn
  %i.djw = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !240 ; 3 uses
  %i.djx = mul i64 %i.djv, %i.djw
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djt, i64 %i.djx
  %i.djz = sext i32 %i.djs to i64
  %i.dka = mul nsw i64 %i.djz, %i.dfw
  %i.dkb = mul i64 %i.dka, %i.djw                 ; 2 uses
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.djy, i64 %i.dkb
  %i.dkd = shl nsw i32 %i.dgb, 2
  %i.dke = sext i32 %i.dkd to i64                 ; 2 uses
  %i.dkf = getelementptr inbounds [2 x i8], ptr %i.dkc, i64 %i.dke ; 4 uses
  %i.dkg = mul i64 %i.dju, %i.dfo
  %i.dkh = mul i64 %i.dkg, %i.djw
  %i.dki = getelementptr inbounds nuw i8, ptr %i.djt, i64 %i.dkh
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dki, i64 %i.dkb
  %i.dkk = getelementptr inbounds [2 x i8], ptr %i.dkj, i64 %i.dke ; 4 uses
  %i.dkl = load i16, ptr %i.dkf, align 2, !tbaa !28
  %i.dkm = zext i16 %i.dkl to i32
  %i.dkn = shl nuw i32 %i.dkm, 16
  %i.dko = insertelement <4 x i32> poison, i32 %i.dkn, i64 0
  %i.dkp = bitcast <4 x i32> %i.dko to <4 x float>
  %i.dkq = shufflevector <4 x float> %i.dkp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dkr = getelementptr inbounds nuw i8, ptr %i.dkf, i64 2
  %i.dks = load i16, ptr %i.dkr, align 2, !tbaa !28
  %i.dkt = zext i16 %i.dks to i32
  %i.dku = shl nuw i32 %i.dkt, 16
  %i.dkv = insertelement <4 x i32> poison, i32 %i.dku, i64 0
  %i.dkw = bitcast <4 x i32> %i.dkv to <4 x float>
  %i.dkx = shufflevector <4 x float> %i.dkw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkf, i64 4
  %i.dkz = load i16, ptr %i.dky, align 2, !tbaa !28
  %i.dla = zext i16 %i.dkz to i32
  %i.dlb = shl nuw i32 %i.dla, 16
  %i.dlc = insertelement <4 x i32> poison, i32 %i.dlb, i64 0
  %i.dld = bitcast <4 x i32> %i.dlc to <4 x float>
  %i.dle = shufflevector <4 x float> %i.dld, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dkf, i64 6
  %i.dlg = load i16, ptr %i.dlf, align 2, !tbaa !28
  %i.dlh = zext i16 %i.dlg to i32
  %i.dli = shl nuw i32 %i.dlh, 16
  %i.dlj = insertelement <4 x i32> poison, i32 %i.dli, i64 0
  %i.dlk = bitcast <4 x i32> %i.dlj to <4 x float>
  %i.dll = shufflevector <4 x float> %i.dlk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlm = load i16, ptr %i.dkk, align 2, !tbaa !28
  %i.dln = zext i16 %i.dlm to i32
  %i.dlo = shl nuw i32 %i.dln, 16
  %i.dlp = insertelement <4 x i32> poison, i32 %i.dlo, i64 0
  %i.dlq = bitcast <4 x i32> %i.dlp to <4 x float>
  %i.dlr = shufflevector <4 x float> %i.dlq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dkk, i64 2
  %i.dlt = load i16, ptr %i.dls, align 2, !tbaa !28
  %i.dlu = zext i16 %i.dlt to i32
  %i.dlv = shl nuw i32 %i.dlu, 16
  %i.dlw = insertelement <4 x i32> poison, i32 %i.dlv, i64 0
  %i.dlx = bitcast <4 x i32> %i.dlw to <4 x float>
  %i.dly = shufflevector <4 x float> %i.dlx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dkk, i64 4
  %i.dma = load i16, ptr %i.dlz, align 2, !tbaa !28
  %i.dmb = zext i16 %i.dma to i32
  %i.dmc = shl nuw i32 %i.dmb, 16
  %i.dmd = insertelement <4 x i32> poison, i32 %i.dmc, i64 0
  %i.dme = bitcast <4 x i32> %i.dmd to <4 x float>
  %i.dmf = shufflevector <4 x float> %i.dme, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dkk, i64 6
  br label %.sink.split8833

_ZN4ncnn3MatD2Ev.exit2256.us.us:                  ; preds = %bb.aq
  %i.dmh = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !241
  %i.dmi = load ptr, ptr %0, align 8, !tbaa !19, !noalias !241
  %i.dmj = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !241
  %i.dmk = mul i64 %i.dmj, %i.dfp
  %i.dml = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !241 ; 2 uses
  %i.dmm = mul i64 %i.dmk, %i.dml
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmi, i64 %i.dmm
  %i.dmo = sext i32 %i.dmh to i64
  %i.dmp = mul nsw i64 %i.dmo, %i.dfw
  %i.dmq = mul i64 %i.dmp, %i.dml
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmn, i64 %i.dmq
  %i.dms = shl nsw i32 %i.dgb, 3
  %i.dmt = sext i32 %i.dms to i64
  %i.dmu = getelementptr inbounds [2 x i8], ptr %i.dmr, i64 %i.dmt ; 5 uses
  %i.dmv = load i16, ptr %i.dmu, align 2, !tbaa !28
  %i.dmw = zext i16 %i.dmv to i32
  %i.dmx = shl nuw i32 %i.dmw, 16
  %i.dmy = insertelement <4 x i32> poison, i32 %i.dmx, i64 0
  %i.dmz = bitcast <4 x i32> %i.dmy to <4 x float>
  %i.dna = shufflevector <4 x float> %i.dmz, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dnl = shl nuw i32 %i.dnk, 16
  %i.dnm = insertelement <4 x i32> poison, i32 %i.dnl, i64 0
  %i.dnn = bitcast <4 x i32> %i.dnm to <4 x float>
  %i.dno = shufflevector <4 x float> %i.dnn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dmu, i64 6
  %i.dnq = load <4 x i16>, ptr %i.dnp, align 2, !tbaa !28
  %i.dnr = zext <4 x i16> %i.dnq to <4 x i32>
  %i.dns = shl nuw <4 x i32> %i.dnr, splat (i32 16) ; 4 uses
  %i.dnt = bitcast <4 x i32> %i.dns to <4 x float>
  %i.dnu = shufflevector <4 x float> %i.dnt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnv = bitcast <4 x i32> %i.dns to <4 x float>
  %i.dnw = shufflevector <4 x float> %i.dnv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dnx = bitcast <4 x i32> %i.dns to <4 x float>
  %i.dny = shufflevector <4 x float> %i.dnx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dnz = bitcast <4 x i32> %i.dns to <4 x float>
  %i.doa = shufflevector <4 x float> %i.dnz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dmu, i64 14
  br label %.sink.split8833

.sink.split8833:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2253.us.us, %_ZN4ncnn3MatD2Ev.exit2255.us.us, %_ZN4ncnn3MatD2Ev.exit2256.us.us
  %.sink8894.in = phi ptr [ %i.dob, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dmg, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.djr, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8886 = phi <4 x float> [ %i.dna, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dkq, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dgy, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8879 = phi <4 x float> [ %i.dnh, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dkx, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dhj, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8872 = phi <4 x float> [ %i.dno, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dle, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dhu, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8865 = phi <4 x float> [ %i.dnu, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dll, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dif, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8857 = phi <4 x float> [ %i.dnw, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dlr, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.diq, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8849 = phi <4 x float> [ %i.dny, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dly, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.djb, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8841 = phi <4 x float> [ %i.doa, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dmf, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.djm, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8894 = load i16, ptr %.sink8894.in, align 2, !tbaa !28
  %i.doc = zext i16 %.sink8894 to i32
  %i.dod = shl nuw i32 %i.doc, 16
  %i.doe = insertelement <4 x i32> poison, i32 %i.dod, i64 0
  %i.dof = bitcast <4 x i32> %i.doe to <4 x float>
  %i.dog = shufflevector <4 x float> %i.dof, <4 x float> poison, <4 x i32> zeroinitializer
  %i.doh = load i64, ptr %i.dgf, align 1, !tbaa !26
  %i.doi = insertelement <2 x i64> poison, i64 %i.doh, i64 0
  %i.doj = bitcast <2 x i64> %i.doi to <8 x i16>
  %i.dok = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.doj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dol = bitcast <8 x i16> %i.dok to <4 x float>
  %i.dom = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8886, <4 x float> nofpclass(nan inf) %i.dol, <4 x float> nofpclass(nan inf) %.1167247289.us.us)
  %i.don = getelementptr inbounds nuw i8, ptr %i.dgf, i64 8
  %i.doo = load i64, ptr %i.don, align 1, !tbaa !26
  %i.dop = insertelement <2 x i64> poison, i64 %i.doo, i64 0
  %i.doq = bitcast <2 x i64> %i.dop to <8 x i16>
  %i.dor = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.doq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dos = bitcast <8 x i16> %i.dor to <4 x float>
  %i.dot = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8879, <4 x float> nofpclass(nan inf) %i.dos, <4 x float> nofpclass(nan inf) %.1067007290.us.us)
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dgf, i64 16
  %i.dov = load i64, ptr %i.dou, align 1, !tbaa !26
  %i.dow = insertelement <2 x i64> poison, i64 %i.dov, i64 0
  %i.dox = bitcast <2 x i64> %i.dow to <8 x i16>
  %i.doy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.doz = bitcast <8 x i16> %i.doy to <4 x float>
  %i.dpa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8872, <4 x float> nofpclass(nan inf) %i.doz, <4 x float> nofpclass(nan inf) %.1066827291.us.us)
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dgf, i64 24
  %i.dpc = load i64, ptr %i.dpb, align 1, !tbaa !26
  %i.dpd = insertelement <2 x i64> poison, i64 %i.dpc, i64 0
  %i.dpe = bitcast <2 x i64> %i.dpd to <8 x i16>
  %i.dpf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpg = bitcast <8 x i16> %i.dpf to <4 x float>
  %i.dph = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8865, <4 x float> nofpclass(nan inf) %i.dpg, <4 x float> nofpclass(nan inf) %.1066647292.us.us)
  %i.dpi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 32
  %i.dpj = load i64, ptr %i.dpi, align 1, !tbaa !26
  %i.dpk = insertelement <2 x i64> poison, i64 %i.dpj, i64 0
  %i.dpl = bitcast <2 x i64> %i.dpk to <8 x i16>
  %i.dpm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpn = bitcast <8 x i16> %i.dpm to <4 x float>
  %i.dpo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8857, <4 x float> nofpclass(nan inf) %i.dpn, <4 x float> nofpclass(nan inf) %i.dom)
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dgf, i64 40
  %i.dpq = load i64, ptr %i.dpp, align 1, !tbaa !26
  %i.dpr = insertelement <2 x i64> poison, i64 %i.dpq, i64 0
  %i.dps = bitcast <2 x i64> %i.dpr to <8 x i16>
  %i.dpt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dps, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpu = bitcast <8 x i16> %i.dpt to <4 x float>
  %i.dpv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8849, <4 x float> nofpclass(nan inf) %i.dpu, <4 x float> nofpclass(nan inf) %i.dot)
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.dgf, i64 48
  %i.dpx = load i64, ptr %i.dpw, align 1, !tbaa !26
  %i.dpy = insertelement <2 x i64> poison, i64 %i.dpx, i64 0
  %i.dpz = bitcast <2 x i64> %i.dpy to <8 x i16>
  %i.dqa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dqb = bitcast <8 x i16> %i.dqa to <4 x float>
  %i.dqc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8841, <4 x float> nofpclass(nan inf) %i.dqb, <4 x float> nofpclass(nan inf) %i.dpa)
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dgf, i64 56
  %i.dqe = load i64, ptr %i.dqd, align 1, !tbaa !26
  %i.dqf = insertelement <2 x i64> poison, i64 %i.dqe, i64 0
  %i.dqg = bitcast <2 x i64> %i.dqf to <8 x i16>
  %i.dqh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dqg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dqi = bitcast <8 x i16> %i.dqh to <4 x float>
  %i.dqj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dog, <4 x float> nofpclass(nan inf) %i.dqi, <4 x float> nofpclass(nan inf) %i.dph)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split8833, %bb.aq, %bb.ap, %bb.ao
  %.126725.us.us = phi nsz <4 x float> [ %.1167247289.us.us, %bb.ao ], [ %.1167247289.us.us, %bb.aq ], [ %.1167247289.us.us, %bb.ap ], [ %i.dpo, %.sink.split8833 ] ; 2 uses
  %.116701.us.us = phi nsz <4 x float> [ %.1067007290.us.us, %bb.ao ], [ %.1067007290.us.us, %bb.aq ], [ %.1067007290.us.us, %bb.ap ], [ %i.dpv, %.sink.split8833 ] ; 2 uses
  %.116683.us.us = phi nsz <4 x float> [ %.1066827291.us.us, %bb.ao ], [ %.1066827291.us.us, %bb.aq ], [ %.1066827291.us.us, %bb.ap ], [ %i.dqc, %.sink.split8833 ] ; 2 uses
  %.116665.us.us = phi nsz <4 x float> [ %.1066647292.us.us, %bb.ao ], [ %.1066647292.us.us, %bb.aq ], [ %.1066647292.us.us, %bb.ap ], [ %i.dqj, %.sink.split8833 ] ; 2 uses
  %indvars.iv.next8284 = add nuw nsw i64 %indvars.iv8283, 1 ; 2 uses
  %exitcond8287.not = icmp eq i64 %indvars.iv.next8284, %i.dfd
  br i1 %exitcond8287.not, label %..loopexit6902_crit_edge.us.us, label %bb.ao, !llvm.loop !108

..loopexit6902_crit_edge.us.us:                   ; preds = %bb.ar, %bb.an, %.lr.ph7304.split.us.us
  %.136726.us.us = phi nsz <4 x float> [ %.1067237299.us.us, %.lr.ph7304.split.us.us ], [ %.1067237299.us.us, %bb.an ], [ %.126725.us.us, %bb.ar ] ; 2 uses
  %.126702.us.us = phi nsz <4 x float> [ %.966997300.us.us, %.lr.ph7304.split.us.us ], [ %.966997300.us.us, %bb.an ], [ %.116701.us.us, %bb.ar ] ; 2 uses
  %.126684.us.us = phi nsz <4 x float> [ %.966817301.us.us, %.lr.ph7304.split.us.us ], [ %.966817301.us.us, %bb.an ], [ %.116683.us.us, %bb.ar ] ; 2 uses
  %.126666.us.us = phi nsz <4 x float> [ %.966637302.us.us, %.lr.ph7304.split.us.us ], [ %.966637302.us.us, %bb.an ], [ %.116665.us.us, %bb.ar ] ; 2 uses
  %indvars.iv.next8289 = add nuw nsw i64 %indvars.iv8288, 1 ; 2 uses
  %exitcond8292.not = icmp eq i64 %indvars.iv.next8289, %wide.trip.count8291
  br i1 %exitcond8292.not, label %._crit_edge7305.us, label %.lr.ph7304.split.us.us, !llvm.loop !109

._crit_edge7305.us:                               ; preds = %..loopexit6902_crit_edge.us.us, %.preheader6908.us
  %.us-phi7312.us = phi <4 x float> [ %.967227317.us, %.preheader6908.us ], [ %.136726.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7313.us = phi <4 x float> [ %.866987318.us, %.preheader6908.us ], [ %.126702.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7314.us = phi <4 x float> [ %.866807319.us, %.preheader6908.us ], [ %.126684.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7315.us = phi <4 x float> [ %.866627320.us, %.preheader6908.us ], [ %.126666.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %i.dqk = getelementptr inbounds [2 x i8], ptr %.119627322.us, i64 %i.brr ; 2 uses
  %indvars.iv.next8294 = add nuw nsw i64 %indvars.iv8293, 8 ; 3 uses
  %i.dql = or disjoint i64 %indvars.iv.next8294, 7 ; 2 uses
  %i.dqm = trunc nuw i64 %i.dql to i32
  %i.dqn = icmp sgt i32 %i.bps, %i.dqm
  br i1 %i.dqn, label %.preheader6908.us, label %.preheader6912.loopexit, !llvm.loop !110

.preheader6912.loopexit:                          ; preds = %._crit_edge7305.us
  %i.dqo = trunc nuw i64 %indvars.iv.next8294 to i32
  br label %.preheader6912

.preheader6912:                                   ; preds = %.preheader6908.preheader, %.preheader6912.loopexit, %.preheader6913
  %.96722.lcssa = phi <4 x float> [ %.16714.lcssa, %.preheader6913 ], [ %.us-phi7312.us, %.preheader6912.loopexit ], [ %.16714.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86698.lcssa = phi <4 x float> [ %.06690.lcssa, %.preheader6913 ], [ %.us-phi7313.us, %.preheader6912.loopexit ], [ %.06690.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86680.lcssa = phi <4 x float> [ %.06672.lcssa, %.preheader6913 ], [ %.us-phi7314.us, %.preheader6912.loopexit ], [ %.06672.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86662.lcssa = phi <4 x float> [ %.06654.lcssa, %.preheader6913 ], [ %.us-phi7315.us, %.preheader6912.loopexit ], [ %.06654.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.11967.lcssa = phi i32 [ %.01966.lcssa, %.preheader6913 ], [ %i.dqo, %.preheader6912.loopexit ], [ %i.dfa, %.preheader6908.preheader ] ; 6 uses
  %.11962.lcssa = phi ptr [ %.01961.lcssa, %.preheader6913 ], [ %i.dqk, %.preheader6912.loopexit ], [ %scevgep8282, %.preheader6908.preheader ] ; 3 uses
  %i.dqp = or disjoint i32 %.11967.lcssa, 3       ; 2 uses
  %i.dqq = icmp slt i32 %i.dqp, %i.bps
  br i1 %i.dqq, label %.preheader6907.lr.ph, label %.preheader6911

.preheader6907.lr.ph:                             ; preds = %.preheader6912
  %i.dqr = load i32, ptr %i.j, align 4
  %invariant.op7391 = sub i32 %.neg6838, %i.dqr
  %i.dqs = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dqt = load i32, ptr %i.a, align 4
  %.fr8039 = freeze i32 %i.dqt                    ; 2 uses
  %i.dqu = icmp sgt i32 %.fr8039, 0
  %i.dqv = load i32, ptr %i.i, align 4
  %.neg6832 = add nuw nsw i32 %.019607505, 1
  %invariant.op7353 = sub i32 %.neg6832, %i.dqv   ; 2 uses
  %i.dqw = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.brm, label %.preheader6907.us.preheader, label %.preheader6907.preheader

.preheader6907.preheader:                         ; preds = %.preheader6907.lr.ph
  %i.dqx = add i32 %.11967.lcssa, 7
  %smax8296 = call i32 @llvm.smax.i32(i32 %i.bps, i32 %i.dqx)
  %i.dqy = add i32 %smax8296, -4
  %i.dqz = sub i32 %i.dqy, %.11967.lcssa          ; 2 uses
  %i.dra = lshr i32 %i.dqz, 1
  %i.drb = and i32 %i.dra, 2147483646
  %narrow8756 = add nuw i32 %i.drb, 2
  %i.drc = zext i32 %narrow8756 to i64
  %i.drd = mul nsw i64 %i.brt, %i.drc
  %scevgep8297 = getelementptr i8, ptr %.11962.lcssa, i64 %i.drd
  %i.dre = add i32 %.11967.lcssa, 4
  %i.drf = and i32 %i.dqz, -4
  %i.drg = add i32 %i.dre, %i.drf
  br label %.preheader6911

.preheader6907.us.preheader:                      ; preds = %.preheader6907.lr.ph
  %i.drh = load i32, ptr %i.c, align 4            ; 2 uses
  %i.dri = load i32, ptr %i.d, align 4
  %i.drj = zext i32 %.fr8039 to i64               ; 3 uses
  %i.drk = zext i32 %.11967.lcssa to i64
  %i.drl = zext nneg i32 %i.dqp to i64
  br label %.preheader6907.us

.preheader6907.us:                                ; preds = %.preheader6907.us.preheader, %._crit_edge7386.us
  %indvars.iv8313 = phi i64 [ %i.drk, %.preheader6907.us.preheader ], [ %indvars.iv.next8314, %._crit_edge7386.us ] ; 5 uses
  %i.drm = phi i64 [ %i.drl, %.preheader6907.us.preheader ], [ %i.dyh, %._crit_edge7386.us ]
  %.219637411.us = phi ptr [ %.11962.lcssa, %.preheader6907.us.preheader ], [ %i.dyg, %._crit_edge7386.us ] ; 3 uses
  %.1366677409.us = phi <4 x float> [ %.86662.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7404.us, %._crit_edge7386.us ] ; 2 uses
  %.1366857408.us = phi <4 x float> [ %.86680.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7403.us, %._crit_edge7386.us ] ; 2 uses
  %.1367037407.us = phi <4 x float> [ %.86698.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7402.us, %._crit_edge7386.us ] ; 2 uses
  %.1467277406.us = phi <4 x float> [ %.96722.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7401.us, %._crit_edge7386.us ] ; 2 uses
  %i.drn = or disjoint i64 %indvars.iv8313, 1
  %i.dro = or disjoint i64 %indvars.iv8313, 2
  %i.drp = lshr exact i64 %indvars.iv8313, 2
  br i1 %i.dqu, label %.lr.ph7385.split.us.us, label %._crit_edge7386.us

.lr.ph7385.split.us.us:                           ; preds = %.preheader6907.us, %..loopexit6900_crit_edge.us.us
  %indvars.iv8308 = phi i64 [ %indvars.iv.next8309, %..loopexit6900_crit_edge.us.us ], [ 0, %.preheader6907.us ] ; 3 uses
  %.1466687383.us.us = phi <4 x float> [ %.176671.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1366677409.us, %.preheader6907.us ] ; 5 uses
  %.1466867382.us.us = phi <4 x float> [ %.176689.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1366857408.us, %.preheader6907.us ] ; 5 uses
  %.1467047381.us.us = phi <4 x float> [ %.176707.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1367037407.us, %.preheader6907.us ] ; 5 uses
  %.1567287380.us.us = phi <4 x float> [ %.186731.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1467277406.us, %.preheader6907.us ] ; 5 uses
  %i.drq = trunc i64 %indvars.iv8308 to i32
  %i.drr = mul i32 %i.dri, %i.drq
  %.reass7392.us.us = add i32 %i.drr, %invariant.op7391 ; 3 uses
  %i.drs = icmp slt i32 %.reass7392.us.us, 0
  br i1 %i.drs, label %..loopexit6900_crit_edge.us.us, label %bb.as

bb.as:                                            ; preds = %.lr.ph7385.split.us.us
  %i.drt = srem i32 %.reass7392.us.us, %i.dqs
  %i.dru = sdiv i32 %.reass7392.us.us, %i.dqs     ; 2 uses
  %.not2141.us.us = icmp eq i32 %i.drt, 0
  %.not2142.us.us = icmp slt i32 %i.dru, %i.bpu
  %or.cond8998 = select i1 %.not2141.us.us, i1 %.not2142.us.us, i1 false
  br i1 %or.cond8998, label %.preheader6899.us.us, label %..loopexit6900_crit_edge.us.us

.preheader6899.us.us:                             ; preds = %bb.as
  %i.drv = mul nuw nsw i64 %indvars.iv8308, %i.drj ; 2 uses
  %i.drw = sext i32 %i.dru to i64                 ; 2 uses
  switch i32 %.fr8036, label %..loopexit6900_crit_edge.us.us [
    i32 4, label %.lr.ph.split.us.us.us7426
    i32 1, label %.lr.ph.split.us7358.us.us
  ]

.lr.ph.split.us7358.us.us:                        ; preds = %.preheader6899.us.us, %bb.au
  %indvars.iv8298 = phi i64 [ %indvars.iv.next8299, %bb.au ], [ 0, %.preheader6899.us.us ] ; 3 uses
  %.1566697347.us7360.us.us = phi <4 x float> [ %.166670.us7370.us.us, %bb.au ], [ %.1466687383.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1566877346.us7361.us.us = phi <4 x float> [ %.166688.us7369.us.us, %bb.au ], [ %.1466867382.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1567057345.us7362.us.us = phi <4 x float> [ %.166706.us7368.us.us, %bb.au ], [ %.1467047381.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1667297344.us7363.us.us = phi <4 x float> [ %.176730.us7367.us.us, %bb.au ], [ %.1567287380.us.us, %.preheader6899.us.us ] ; 3 uses
  %i.drx = trunc i64 %indvars.iv8298 to i32
  %i.dry = mul i32 %i.drh, %i.drx
  %.reass.us7364.us.us = add i32 %i.dry, %invariant.op7353 ; 3 uses
  %i.drz = icmp slt i32 %.reass.us7364.us.us, 0
  br i1 %i.drz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.split.us7358.us.us
  %i.dsa = srem i32 %.reass.us7364.us.us, %i.dqw
  %i.dsb = sdiv i32 %.reass.us7364.us.us, %i.dqw  ; 2 uses
  %.not2143.us7365.us.us = icmp eq i32 %i.dsa, 0
  %.not2144.us7366.us.us = icmp slt i32 %i.dsb, %i.bpt
  %or.cond8999 = select i1 %.not2143.us7365.us.us, i1 %.not2144.us7366.us.us, i1 false
  br i1 %or.cond8999, label %_ZN4ncnn3MatD2Ev.exit2244.us.us.us, label %bb.au

_ZN4ncnn3MatD2Ev.exit2244.us.us.us:               ; preds = %bb.at
  %i.dsc = add nuw nsw i64 %i.drv, %indvars.iv8298
  %i.dsd = shl i64 %i.dsc, 4
  %i.dse = and i64 %i.dsd, 4294967280
  %i.dsf = getelementptr inbounds nuw [2 x i8], ptr %.219637411.us, i64 %i.dse ; 4 uses
  %i.dsg = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !242
  %i.dsh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !242 ; 4 uses
  %i.dsi = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !242 ; 4 uses
  %i.dsj = mul i64 %i.dsi, %indvars.iv8313
  %i.dsk = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !242 ; 5 uses
  %i.dsl = mul i64 %i.dsj, %i.dsk
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsh, i64 %i.dsl
  %i.dsn = sext i32 %i.dsg to i64
  %i.dso = mul nsw i64 %i.dsn, %i.drw
  %i.dsp = mul i64 %i.dso, %i.dsk                 ; 4 uses
  %i.dsq = getelementptr inbounds nuw i8, ptr %i.dsm, i64 %i.dsp
  %i.dsr = sext i32 %i.dsb to i64                 ; 4 uses
  %i.dss = getelementptr inbounds [2 x i8], ptr %i.dsq, i64 %i.dsr
  %i.dst = load i16, ptr %i.dss, align 2, !tbaa !28
  %i.dsu = zext i16 %i.dst to i32
  %i.dsv = shl nuw i32 %i.dsu, 16
  %i.dsw = insertelement <4 x i32> poison, i32 %i.dsv, i64 0
  %i.dsx = bitcast <4 x i32> %i.dsw to <4 x float>
  %i.dsy = shufflevector <4 x float> %i.dsx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dsz = mul i64 %i.dsi, %i.drn
  %i.dta = mul i64 %i.dsz, %i.dsk
  %i.dtb = getelementptr inbounds nuw i8, ptr %i.dsh, i64 %i.dta
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dtb, i64 %i.dsp
  %i.dtd = getelementptr inbounds [2 x i8], ptr %i.dtc, i64 %i.dsr
  %i.dte = load i16, ptr %i.dtd, align 2, !tbaa !28
  %i.dtf = zext i16 %i.dte to i32
  %i.dtg = shl nuw i32 %i.dtf, 16
  %i.dth = insertelement <4 x i32> poison, i32 %i.dtg, i64 0
  %i.dti = bitcast <4 x i32> %i.dth to <4 x float>
  %i.dtj = shufflevector <4 x float> %i.dti, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dtk = mul i64 %i.dsi, %i.dro
  %i.dtl = mul i64 %i.dtk, %i.dsk
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.dsh, i64 %i.dtl
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtm, i64 %i.dsp
  %i.dto = getelementptr inbounds [2 x i8], ptr %i.dtn, i64 %i.dsr
  %i.dtp = load i16, ptr %i.dto, align 2, !tbaa !28
  %i.dtq = zext i16 %i.dtp to i32
  %i.dtr = shl nuw i32 %i.dtq, 16
  %i.dts = insertelement <4 x i32> poison, i32 %i.dtr, i64 0
  %i.dtt = bitcast <4 x i32> %i.dts to <4 x float>
  %i.dtu = shufflevector <4 x float> %i.dtt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dtv = mul i64 %i.dsi, %i.drm
  %i.dtw = mul i64 %i.dtv, %i.dsk
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.dsh, i64 %i.dtw
  %i.dty = getelementptr inbounds nuw i8, ptr %i.dtx, i64 %i.dsp
  %i.dtz = getelementptr inbounds [2 x i8], ptr %i.dty, i64 %i.dsr
  %i.dua = load i16, ptr %i.dtz, align 2, !tbaa !28
  %i.dub = zext i16 %i.dua to i32
  %i.duc = shl nuw i32 %i.dub, 16
  %i.dud = insertelement <4 x i32> poison, i32 %i.duc, i64 0
  %i.due = bitcast <4 x i32> %i.dud to <4 x float>
  %i.duf = shufflevector <4 x float> %i.due, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dug = load i64, ptr %i.dsf, align 1, !tbaa !26
  %i.duh = insertelement <2 x i64> poison, i64 %i.dug, i64 0
  %i.dui = bitcast <2 x i64> %i.duh to <8 x i16>
  %i.duj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dui, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duk = bitcast <8 x i16> %i.duj to <4 x float>
  %i.dul = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dsy, <4 x float> nofpclass(nan inf) %i.duk, <4 x float> nofpclass(nan inf) %.1667297344.us7363.us.us)
  %i.dum = getelementptr inbounds nuw i8, ptr %i.dsf, i64 8
  %i.dun = load i64, ptr %i.dum, align 1, !tbaa !26
  %i.duo = insertelement <2 x i64> poison, i64 %i.dun, i64 0
  %i.dup = bitcast <2 x i64> %i.duo to <8 x i16>
  %i.duq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dup, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dur = bitcast <8 x i16> %i.duq to <4 x float>
  %i.dus = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dtj, <4 x float> nofpclass(nan inf) %i.dur, <4 x float> nofpclass(nan inf) %.1567057345.us7362.us.us)
  %i.dut = getelementptr inbounds nuw i8, ptr %i.dsf, i64 16
  %i.duu = load i64, ptr %i.dut, align 1, !tbaa !26
  %i.duv = insertelement <2 x i64> poison, i64 %i.duu, i64 0
  %i.duw = bitcast <2 x i64> %i.duv to <8 x i16>
  %i.dux = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.duw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duy = bitcast <8 x i16> %i.dux to <4 x float>
  %i.duz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dtu, <4 x float> nofpclass(nan inf) %i.duy, <4 x float> nofpclass(nan inf) %.1566877346.us7361.us.us)
  %i.dva = getelementptr inbounds nuw i8, ptr %i.dsf, i64 24
  %i.dvb = load i64, ptr %i.dva, align 1, !tbaa !26
  %i.dvc = insertelement <2 x i64> poison, i64 %i.dvb, i64 0
  %i.dvd = bitcast <2 x i64> %i.dvc to <8 x i16>
  %i.dve = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvf = bitcast <8 x i16> %i.dve to <4 x float>
  %i.dvg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duf, <4 x float> nofpclass(nan inf) %i.dvf, <4 x float> nofpclass(nan inf) %.1566697347.us7360.us.us)
  br label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2244.us.us.us, %bb.at, %.lr.ph.split.us7358.us.us
  %.176730.us7367.us.us = phi nsz <4 x float> [ %.1667297344.us7363.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dul, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1667297344.us7363.us.us, %bb.at ] ; 2 uses
  %.166706.us7368.us.us = phi nsz <4 x float> [ %.1567057345.us7362.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dus, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1567057345.us7362.us.us, %bb.at ] ; 2 uses
  %.166688.us7369.us.us = phi nsz <4 x float> [ %.1566877346.us7361.us.us, %.lr.ph.split.us7358.us.us ], [ %i.duz, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1566877346.us7361.us.us, %bb.at ] ; 2 uses
  %.166670.us7370.us.us = phi nsz <4 x float> [ %.1566697347.us7360.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dvg, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1566697347.us7360.us.us, %bb.at ] ; 2 uses
  %indvars.iv.next8299 = add nuw nsw i64 %indvars.iv8298, 1 ; 2 uses
  %exitcond8302.not = icmp eq i64 %indvars.iv.next8299, %i.drj
  br i1 %exitcond8302.not, label %..loopexit6900_crit_edge.us.us, label %.lr.ph.split.us7358.us.us, !llvm.loop !113

.lr.ph.split.us.us.us7426:                        ; preds = %.preheader6899.us.us, %bb.aw
  %indvars.iv8303 = phi i64 [ %indvars.iv.next8304, %bb.aw ], [ 0, %.preheader6899.us.us ] ; 3 uses
  %.1566697347.us.us.us = phi <4 x float> [ %.166670.us.us.us, %bb.aw ], [ %.1466687383.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1566877346.us.us.us = phi <4 x float> [ %.166688.us.us.us, %bb.aw ], [ %.1466867382.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1567057345.us.us.us = phi <4 x float> [ %.166706.us.us.us, %bb.aw ], [ %.1467047381.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1667297344.us.us.us = phi <4 x float> [ %.176730.us.us.us, %bb.aw ], [ %.1567287380.us.us, %.preheader6899.us.us ] ; 3 uses
  %i.dvh = trunc i64 %indvars.iv8303 to i32
  %i.dvi = mul i32 %i.drh, %i.dvh
  %.reass.us.us7393.us = add i32 %i.dvi, %invariant.op7353 ; 3 uses
  %i.dvj = icmp slt i32 %.reass.us.us7393.us, 0
  br i1 %i.dvj, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.us.us7426
  %i.dvk = srem i32 %.reass.us.us7393.us, %i.dqw
  %i.dvl = sdiv i32 %.reass.us.us7393.us, %i.dqw  ; 2 uses
  %.not2143.us.us.us = icmp eq i32 %i.dvk, 0
  %.not2144.us.us.us = icmp slt i32 %i.dvl, %i.bpt
  %or.cond9000 = select i1 %.not2143.us.us.us, i1 %.not2144.us.us.us, i1 false
  br i1 %or.cond9000, label %_ZN4ncnn3MatD2Ev.exit2245.us.us.us, label %bb.aw

_ZN4ncnn3MatD2Ev.exit2245.us.us.us:               ; preds = %bb.av
  %i.dvm = add nuw nsw i64 %i.drv, %indvars.iv8303
  %i.dvn = shl i64 %i.dvm, 4
  %i.dvo = and i64 %i.dvn, 4294967280
  %i.dvp = getelementptr inbounds nuw [2 x i8], ptr %.219637411.us, i64 %i.dvo ; 4 uses
  %i.dvq = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !243
  %i.dvr = load ptr, ptr %0, align 8, !tbaa !19, !noalias !243
  %i.dvs = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !243
  %i.dvt = mul i64 %i.dvs, %i.drp
  %i.dvu = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !243 ; 2 uses
  %i.dvv = mul i64 %i.dvt, %i.dvu
  %i.dvw = getelementptr inbounds nuw i8, ptr %i.dvr, i64 %i.dvv
  %i.dvx = sext i32 %i.dvq to i64
  %i.dvy = mul nsw i64 %i.dvx, %i.drw
  %i.dvz = mul i64 %i.dvy, %i.dvu
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvw, i64 %i.dvz
  %i.dwb = shl nsw i32 %i.dvl, 2
  %i.dwc = sext i32 %i.dwb to i64
  %i.dwd = getelementptr inbounds [2 x i8], ptr %i.dwa, i64 %i.dwc ; 4 uses
  %i.dwe = load i16, ptr %i.dwd, align 2, !tbaa !28
  %i.dwf = zext i16 %i.dwe to i32
  %i.dwg = shl nuw i32 %i.dwf, 16
  %i.dwh = insertelement <4 x i32> poison, i32 %i.dwg, i64 0
  %i.dwi = bitcast <4 x i32> %i.dwh to <4 x float>
  %i.dwj = shufflevector <4 x float> %i.dwi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwd, i64 2
  %i.dwl = load i16, ptr %i.dwk, align 2, !tbaa !28
  %i.dwm = zext i16 %i.dwl to i32
  %i.dwn = shl nuw i32 %i.dwm, 16
  %i.dwo = insertelement <4 x i32> poison, i32 %i.dwn, i64 0
  %i.dwp = bitcast <4 x i32> %i.dwo to <4 x float>
  %i.dwq = shufflevector <4 x float> %i.dwp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwd, i64 4
  %i.dws = load i16, ptr %i.dwr, align 2, !tbaa !28
  %i.dwt = zext i16 %i.dws to i32
  %i.dwu = shl nuw i32 %i.dwt, 16
  %i.dwv = insertelement <4 x i32> poison, i32 %i.dwu, i64 0
  %i.dww = bitcast <4 x i32> %i.dwv to <4 x float>
  %i.dwx = shufflevector <4 x float> %i.dww, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dwd, i64 6
  %i.dwz = load i16, ptr %i.dwy, align 2, !tbaa !28
  %i.dxa = zext i16 %i.dwz to i32
  %i.dxb = shl nuw i32 %i.dxa, 16
  %i.dxc = insertelement <4 x i32> poison, i32 %i.dxb, i64 0
  %i.dxd = bitcast <4 x i32> %i.dxc to <4 x float>
  %i.dxe = shufflevector <4 x float> %i.dxd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dxf = load i64, ptr %i.dvp, align 1, !tbaa !26
  %i.dxg = insertelement <2 x i64> poison, i64 %i.dxf, i64 0
  %i.dxh = bitcast <2 x i64> %i.dxg to <8 x i16>
  %i.dxi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxj = bitcast <8 x i16> %i.dxi to <4 x float>
  %i.dxk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwj, <4 x float> nofpclass(nan inf) %i.dxj, <4 x float> nofpclass(nan inf) %.1667297344.us.us.us)
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.dvp, i64 8
  %i.dxm = load i64, ptr %i.dxl, align 1, !tbaa !26
  %i.dxn = insertelement <2 x i64> poison, i64 %i.dxm, i64 0
  %i.dxo = bitcast <2 x i64> %i.dxn to <8 x i16>
  %i.dxp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxq = bitcast <8 x i16> %i.dxp to <4 x float>
  %i.dxr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwq, <4 x float> nofpclass(nan inf) %i.dxq, <4 x float> nofpclass(nan inf) %.1567057345.us.us.us)
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dvp, i64 16
  %i.dxt = load i64, ptr %i.dxs, align 1, !tbaa !26
  %i.dxu = insertelement <2 x i64> poison, i64 %i.dxt, i64 0
  %i.dxv = bitcast <2 x i64> %i.dxu to <8 x i16>
  %i.dxw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxx = bitcast <8 x i16> %i.dxw to <4 x float>
  %i.dxy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwx, <4 x float> nofpclass(nan inf) %i.dxx, <4 x float> nofpclass(nan inf) %.1566877346.us.us.us)
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dvp, i64 24
  %i.dya = load i64, ptr %i.dxz, align 1, !tbaa !26
  %i.dyb = insertelement <2 x i64> poison, i64 %i.dya, i64 0
  %i.dyc = bitcast <2 x i64> %i.dyb to <8 x i16>
  %i.dyd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dyc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dye = bitcast <8 x i16> %i.dyd to <4 x float>
  %i.dyf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxe, <4 x float> nofpclass(nan inf) %i.dye, <4 x float> nofpclass(nan inf) %.1566697347.us.us.us)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2245.us.us.us, %bb.av, %.lr.ph.split.us.us.us7426
  %.176730.us.us.us = phi nsz <4 x float> [ %.1667297344.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1667297344.us.us.us, %bb.av ], [ %i.dxk, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166706.us.us.us = phi nsz <4 x float> [ %.1567057345.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1567057345.us.us.us, %bb.av ], [ %i.dxr, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166688.us.us.us = phi nsz <4 x float> [ %.1566877346.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1566877346.us.us.us, %bb.av ], [ %i.dxy, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166670.us.us.us = phi nsz <4 x float> [ %.1566697347.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1566697347.us.us.us, %bb.av ], [ %i.dyf, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %indvars.iv.next8304 = add nuw nsw i64 %indvars.iv8303, 1 ; 2 uses
  %exitcond8307.not = icmp eq i64 %indvars.iv.next8304, %i.drj
  br i1 %exitcond8307.not, label %..loopexit6900_crit_edge.us.us, label %.lr.ph.split.us.us.us7426, !llvm.loop !113

..loopexit6900_crit_edge.us.us:                   ; preds = %bb.au, %bb.aw, %.preheader6899.us.us, %bb.as, %.lr.ph7385.split.us.us
  %.186731.us.us = phi nsz <4 x float> [ %.1567287380.us.us, %.lr.ph7385.split.us.us ], [ %.1567287380.us.us, %bb.as ], [ %.176730.us.us.us, %bb.aw ], [ %.1567287380.us.us, %.preheader6899.us.us ], [ %.176730.us7367.us.us, %bb.au ] ; 2 uses
  %.176707.us.us = phi nsz <4 x float> [ %.1467047381.us.us, %.lr.ph7385.split.us.us ], [ %.1467047381.us.us, %bb.as ], [ %.166706.us.us.us, %bb.aw ], [ %.1467047381.us.us, %.preheader6899.us.us ], [ %.166706.us7368.us.us, %bb.au ] ; 2 uses
  %.176689.us.us = phi nsz <4 x float> [ %.1466867382.us.us, %.lr.ph7385.split.us.us ], [ %.1466867382.us.us, %bb.as ], [ %.166688.us.us.us, %bb.aw ], [ %.1466867382.us.us, %.preheader6899.us.us ], [ %.166688.us7369.us.us, %bb.au ] ; 2 uses
  %.176671.us.us = phi nsz <4 x float> [ %.1466687383.us.us, %.lr.ph7385.split.us.us ], [ %.1466687383.us.us, %bb.as ], [ %.166670.us.us.us, %bb.aw ], [ %.1466687383.us.us, %.preheader6899.us.us ], [ %.166670.us7370.us.us, %bb.au ] ; 2 uses
  %indvars.iv.next8309 = add nuw nsw i64 %indvars.iv8308, 1 ; 2 uses
  %exitcond8312.not = icmp eq i64 %indvars.iv.next8309, %wide.trip.count8311
  br i1 %exitcond8312.not, label %._crit_edge7386.us, label %.lr.ph7385.split.us.us, !llvm.loop !116

._crit_edge7386.us:                               ; preds = %..loopexit6900_crit_edge.us.us, %.preheader6907.us
  %.us-phi7401.us = phi <4 x float> [ %.1467277406.us, %.preheader6907.us ], [ %.186731.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7402.us = phi <4 x float> [ %.1367037407.us, %.preheader6907.us ], [ %.176707.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7403.us = phi <4 x float> [ %.1366857408.us, %.preheader6907.us ], [ %.176689.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7404.us = phi <4 x float> [ %.1366677409.us, %.preheader6907.us ], [ %.176671.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %i.dyg = getelementptr inbounds [2 x i8], ptr %.219637411.us, i64 %i.brt ; 2 uses
  %indvars.iv.next8314 = add nuw nsw i64 %indvars.iv8313, 4 ; 3 uses
  %i.dyh = or disjoint i64 %indvars.iv.next8314, 3 ; 2 uses
  %i.dyi = trunc nuw i64 %i.dyh to i32
  %i.dyj = icmp sgt i32 %i.bps, %i.dyi
  br i1 %i.dyj, label %.preheader6907.us, label %.preheader6911.loopexit, !llvm.loop !117

.preheader6911.loopexit:                          ; preds = %._crit_edge7386.us
  %i.dyk = trunc nuw i64 %indvars.iv.next8314 to i32
  br label %.preheader6911

.preheader6911:                                   ; preds = %.preheader6907.preheader, %.preheader6911.loopexit, %.preheader6912
  %.146727.lcssa = phi <4 x float> [ %.96722.lcssa, %.preheader6912 ], [ %.us-phi7401.us, %.preheader6911.loopexit ], [ %.96722.lcssa, %.preheader6907.preheader ] ; 4 uses
  %.136703.lcssa = phi <4 x float> [ %.86698.lcssa, %.preheader6912 ], [ %.us-phi7402.us, %.preheader6911.loopexit ], [ %.86698.lcssa, %.preheader6907.preheader ] ; 4 uses
  %.136685.lcssa = phi <4 x float> [ %.86680.lcssa, %.preheader6912 ], [ %.us-phi7403.us, %.preheader6911.loopexit ], [ %.86680.lcssa, %.preheader6907.preheader ]
  %.136667.lcssa = phi <4 x float> [ %.86662.lcssa, %.preheader6912 ], [ %.us-phi7404.us, %.preheader6911.loopexit ], [ %.86662.lcssa, %.preheader6907.preheader ]
  %.21968.lcssa = phi i32 [ %.11967.lcssa, %.preheader6912 ], [ %i.dyk, %.preheader6911.loopexit ], [ %i.drg, %.preheader6907.preheader ] ; 9 uses
  %.21963.lcssa = phi ptr [ %.11962.lcssa, %.preheader6912 ], [ %i.dyg, %.preheader6911.loopexit ], [ %scevgep8297, %.preheader6907.preheader ] ; 4 uses
  %i.dyl = or disjoint i32 %.21968.lcssa, 1       ; 2 uses
  %i.dym = icmp slt i32 %i.dyl, %i.bps
  br i1 %i.dym, label %.preheader6906.lr.ph, label %.preheader6910

.preheader6906.lr.ph:                             ; preds = %.preheader6911
  %i.dyn = load i32, ptr %i.d, align 4
  %i.dyo = load i32, ptr %i.j, align 4
  %invariant.op7446 = sub i32 %.neg6838, %i.dyo
  %i.dyp = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dyq = load i32, ptr %i.a, align 4
  %.fr8040 = freeze i32 %i.dyq                    ; 2 uses
  %i.dyr = load i32, ptr %i.c, align 4
  %i.dys = load i32, ptr %i.i, align 4
  %.neg6828 = add nuw nsw i32 %.019607505, 1
  %invariant.op7438 = sub i32 %.neg6828, %i.dys
  %i.dyt = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brm, label %.preheader6906.lr.ph.split.us, label %.preheader6906.preheader

.preheader6906.preheader:                         ; preds = %.preheader6906.lr.ph
  %i.dyu = add i32 %.21968.lcssa, 3
  %smax8316 = call i32 @llvm.smax.i32(i32 %i.bps, i32 %i.dyu)
  %i.dyv = add i32 %smax8316, -2
  %i.dyw = sub i32 %i.dyv, %.21968.lcssa          ; 2 uses
  %i.dyx = and i32 %i.dyw, -2
  %i.dyy = zext i32 %i.dyx to i64
  %i.dyz = add nuw nsw i64 %i.dyy, 2
  %i.dza = mul nsw i64 %i.dyz, %i.brv
  %scevgep8317 = getelementptr i8, ptr %.21963.lcssa, i64 %i.dza
  %i.dzb = add i32 %.21968.lcssa, 2
  %i.dzc = and i32 %i.dyw, -2
  %i.dzd = add i32 %i.dzb, %i.dzc
  br label %.preheader6910

.preheader6906.lr.ph.split.us:                    ; preds = %.preheader6906.lr.ph
  %i.dze = icmp sgt i32 %.fr8040, 0
  br i1 %i.dze, label %.preheader6906.us.us.preheader, label %.preheader6906.us.preheader

.preheader6906.us.preheader:                      ; preds = %.preheader6906.lr.ph.split.us
  %i.dzf = add i32 %.21968.lcssa, 3
  %smax8318 = call i32 @llvm.smax.i32(i32 %i.bps, i32 %i.dzf)
  %i.dzg = add i32 %smax8318, -2
  %i.dzh = sub i32 %i.dzg, %.21968.lcssa          ; 2 uses
  %i.dzi = and i32 %i.dzh, -2
  %i.dzj = zext i32 %i.dzi to i64
  %i.dzk = add nuw nsw i64 %i.dzj, 2
  %i.dzl = mul nsw i64 %i.dzk, %i.brv
  %scevgep8319 = getelementptr i8, ptr %.21963.lcssa, i64 %i.dzl
  %i.dzm = add i32 %.21968.lcssa, 2
  %i.dzn = and i32 %i.dzh, -2
  %i.dzo = add i32 %i.dzm, %i.dzn
  br label %.preheader6910

.preheader6906.us.us.preheader:                   ; preds = %.preheader6906.lr.ph.split.us
  %i.dzp = zext nneg i32 %.fr8040 to i64          ; 2 uses
  %i.dzq = zext i32 %.21968.lcssa to i64
  %i.dzr = zext nneg i32 %i.dyl to i64
  br label %.preheader6906.us.us

.preheader6906.us.us:                             ; preds = %.preheader6906.us.us.preheader, %._crit_edge7443.split.us.us.us
  %indvars.iv8330 = phi i64 [ %i.dzq, %.preheader6906.us.us.preheader ], [ %indvars.iv.next8331, %._crit_edge7443.split.us.us.us ] ; 2 uses
  %i.dzs = phi i64 [ %i.dzr, %.preheader6906.us.us.preheader ], [ %i.ecb, %._crit_edge7443.split.us.us.us ]
  %.319647454.us.us = phi ptr [ %.21963.lcssa, %.preheader6906.us.us.preheader ], [ %i.eca, %._crit_edge7443.split.us.us.us ] ; 2 uses
  %.1867087452.us.us = phi <4 x float> [ %.136703.lcssa, %.preheader6906.us.us.preheader ], [ %.226712.us.us.us, %._crit_edge7443.split.us.us.us ]
  %.1967327451.us.us = phi <4 x float> [ %.146727.lcssa, %.preheader6906.us.us.preheader ], [ %.236736.us.us.us, %._crit_edge7443.split.us.us.us ]
  br label %bb.ax

bb.ax:                                            ; preds = %..loopexit6898_crit_edge.us.us.us, %.preheader6906.us.us
  %indvars.iv8325 = phi i64 [ %indvars.iv.next8326, %..loopexit6898_crit_edge.us.us.us ], [ 0, %.preheader6906.us.us ] ; 3 uses
  %.1967097440.us.us.us = phi <4 x float> [ %.226712.us.us.us, %..loopexit6898_crit_edge.us.us.us ], [ %.1867087452.us.us, %.preheader6906.us.us ] ; 3 uses
  %.2067337439.us.us.us = phi <4 x float> [ %.236736.us.us.us, %..loopexit6898_crit_edge.us.us.us ], [ %.1967327451.us.us, %.preheader6906.us.us ] ; 3 uses
  %i.dzt = trunc i64 %indvars.iv8325 to i32
  %i.dzu = mul i32 %i.dyn, %i.dzt
  %.reass7447.us.us.us = add i32 %i.dzu, %invariant.op7446 ; 3 uses
  %i.dzv = icmp slt i32 %.reass7447.us.us.us, 0
  br i1 %i.dzv, label %..loopexit6898_crit_edge.us.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dzw = srem i32 %.reass7447.us.us.us, %i.dyp
  %i.dzx = sdiv i32 %.reass7447.us.us.us, %i.dyp  ; 2 uses
  %.not2137.us.us.us = icmp eq i32 %i.dzw, 0
  %.not2138.us.us.us = icmp slt i32 %i.dzx, %i.bpu
  %or.cond9001 = select i1 %.not2137.us.us.us, i1 %.not2138.us.us.us, i1 false
  br i1 %or.cond9001, label %.preheader6897.us.us.us, label %..loopexit6898_crit_edge.us.us.us

.preheader6897.us.us.us:                          ; preds = %bb.ay
  %i.dzy = mul nuw nsw i64 %indvars.iv8325, %i.dzp
  %i.dzz = sext i32 %i.dzx to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.preheader6897.us.us.us
  %indvars.iv8320 = phi i64 [ %indvars.iv.next8321, %bb.bb ], [ 0, %.preheader6897.us.us.us ] ; 3 uses
  %.2067107434.us.us.us = phi <4 x float> [ %.216711.us.us.us, %bb.bb ], [ %.1967097440.us.us.us, %.preheader6897.us.us.us ] ; 3 uses
  %.2167347433.us.us.us = phi <4 x float> [ %.226735.us.us.us, %bb.bb ], [ %.2067337439.us.us.us, %.preheader6897.us.us.us ] ; 3 uses
  %i.eaa = trunc i64 %indvars.iv8320 to i32
  %i.eab = mul i32 %i.dyr, %i.eaa
  %.reass.us.us7467.us = add i32 %i.eab, %invariant.op7438 ; 3 uses
  %i.eac = icmp slt i32 %.reass.us.us7467.us, 0
  br i1 %i.eac, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ead = srem i32 %.reass.us.us7467.us, %i.dyt
  %i.eae = sdiv i32 %.reass.us.us7467.us, %i.dyt  ; 2 uses
  %.not2139.us.us.us = icmp eq i32 %i.ead, 0
  %.not2140.us.us.us = icmp slt i32 %i.eae, %i.bpt
  %or.cond9002 = select i1 %.not2139.us.us.us, i1 %.not2140.us.us.us, i1 false
  br i1 %or.cond9002, label %_ZN4ncnn3MatD2Ev.exit2240.us.us.us, label %bb.bb

_ZN4ncnn3MatD2Ev.exit2240.us.us.us:               ; preds = %bb.ba
  %i.eaf = add nuw nsw i64 %i.dzy, %indvars.iv8320
  %i.eag = shl i64 %i.eaf, 3
  %i.eah = and i64 %i.eag, 4294967288
  %i.eai = getelementptr inbounds nuw [2 x i8], ptr %.319647454.us.us, i64 %i.eah ; 2 uses
  %i.eaj = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !244
  %i.eak = load ptr, ptr %0, align 8, !tbaa !19, !noalias !244 ; 2 uses
  %i.eal = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !244 ; 2 uses
  %i.eam = mul i64 %i.eal, %indvars.iv8330
  %i.ean = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !244 ; 3 uses
  %i.eao = mul i64 %i.eam, %i.ean
  %i.eap = getelementptr inbounds nuw i8, ptr %i.eak, i64 %i.eao
  %i.eaq = sext i32 %i.eaj to i64
  %i.ear = mul nsw i64 %i.eaq, %i.dzz
  %i.eas = mul i64 %i.ear, %i.ean                 ; 2 uses
  %i.eat = getelementptr inbounds nuw i8, ptr %i.eap, i64 %i.eas
  %i.eau = sext i32 %i.eae to i64                 ; 2 uses
  %i.eav = getelementptr inbounds [2 x i8], ptr %i.eat, i64 %i.eau
  %i.eaw = mul i64 %i.eal, %i.dzs
  %i.eax = mul i64 %i.eaw, %i.ean
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eak, i64 %i.eax
  %i.eaz = getelementptr inbounds nuw i8, ptr %i.eay, i64 %i.eas
  %i.eba = getelementptr inbounds [2 x i8], ptr %i.eaz, i64 %i.eau
  %i.ebb = load i16, ptr %i.eav, align 2, !tbaa !28
  %i.ebc = zext i16 %i.ebb to i32
  %i.ebd = shl nuw i32 %i.ebc, 16
  %i.ebe = insertelement <4 x i32> poison, i32 %i.ebd, i64 0
  %i.ebf = bitcast <4 x i32> %i.ebe to <4 x float>
  %i.ebg = shufflevector <4 x float> %i.ebf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ebh = load i16, ptr %i.eba, align 2, !tbaa !28
  %i.ebi = zext i16 %i.ebh to i32
  %i.ebj = shl nuw i32 %i.ebi, 16
  %i.ebk = insertelement <4 x i32> poison, i32 %i.ebj, i64 0
  %i.ebl = bitcast <4 x i32> %i.ebk to <4 x float>
  %i.ebm = shufflevector <4 x float> %i.ebl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ebn = load i64, ptr %i.eai, align 1, !tbaa !26
  %i.ebo = insertelement <2 x i64> poison, i64 %i.ebn, i64 0
  %i.ebp = bitcast <2 x i64> %i.ebo to <8 x i16>
  %i.ebq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebr = bitcast <8 x i16> %i.ebq to <4 x float>
  %i.ebs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebg, <4 x float> nofpclass(nan inf) %i.ebr, <4 x float> nofpclass(nan inf) %.2167347433.us.us.us)
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.eai, i64 8
  %i.ebu = load i64, ptr %i.ebt, align 1, !tbaa !26
  %i.ebv = insertelement <2 x i64> poison, i64 %i.ebu, i64 0
  %i.ebw = bitcast <2 x i64> %i.ebv to <8 x i16>
  %i.ebx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eby = bitcast <8 x i16> %i.ebx to <4 x float>
  %i.ebz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebm, <4 x float> nofpclass(nan inf) %i.eby, <4 x float> nofpclass(nan inf) %.2067107434.us.us.us)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2240.us.us.us, %bb.ba, %bb.az
  %.226735.us.us.us = phi nsz <4 x float> [ %.2167347433.us.us.us, %bb.az ], [ %i.ebs, %_ZN4ncnn3MatD2Ev.exit2240.us.us.us ], [ %.2167347433.us.us.us, %bb.ba ] ; 2 uses
  %.216711.us.us.us = phi nsz <4 x float> [ %.2067107434.us.us.us, %bb.az ], [ %i.ebz, %_ZN4ncnn3MatD2Ev.exit2240.us.us.us ], [ %.2067107434.us.us.us, %bb.ba ] ; 2 uses
  %indvars.iv.next8321 = add nuw nsw i64 %indvars.iv8320, 1 ; 2 uses
  %exitcond8324.not = icmp eq i64 %indvars.iv.next8321, %i.dzp
  br i1 %exitcond8324.not, label %..loopexit6898_crit_edge.us.us.us, label %bb.az, !llvm.loop !120

..loopexit6898_crit_edge.us.us.us:                ; preds = %bb.bb, %bb.ay, %bb.ax
  %.236736.us.us.us = phi nsz <4 x float> [ %.2067337439.us.us.us, %bb.ax ], [ %.2067337439.us.us.us, %bb.ay ], [ %.226735.us.us.us, %bb.bb ] ; 3 uses
  %.226712.us.us.us = phi nsz <4 x float> [ %.1967097440.us.us.us, %bb.ax ], [ %.1967097440.us.us.us, %bb.ay ], [ %.216711.us.us.us, %bb.bb ] ; 3 uses
  %indvars.iv.next8326 = add nuw nsw i64 %indvars.iv8325, 1 ; 2 uses
  %exitcond8329.not = icmp eq i64 %indvars.iv.next8326, %wide.trip.count8328
  br i1 %exitcond8329.not, label %._crit_edge7443.split.us.us.us, label %bb.ax, !llvm.loop !121

._crit_edge7443.split.us.us.us:                   ; preds = %..loopexit6898_crit_edge.us.us.us
  %i.eca = getelementptr inbounds [2 x i8], ptr %.319647454.us.us, i64 %i.brv ; 2 uses
  %indvars.iv.next8331 = add nuw nsw i64 %indvars.iv8330, 2 ; 3 uses
  %i.ecb = or disjoint i64 %indvars.iv.next8331, 1 ; 2 uses
  %i.ecc = trunc nuw i64 %i.ecb to i32
  %i.ecd = icmp sgt i32 %i.bps, %i.ecc
  br i1 %i.ecd, label %.preheader6906.us.us, label %.preheader6910.loopexit, !llvm.loop !122

.preheader6910.loopexit:                          ; preds = %._crit_edge7443.split.us.us.us
  %i.ece = trunc nuw i64 %indvars.iv.next8331 to i32
  br label %.preheader6910

.preheader6910:                                   ; preds = %.preheader6906.preheader, %.preheader6906.us.preheader, %.preheader6910.loopexit, %.preheader6911
  %.196732.lcssa = phi <4 x float> [ %.146727.lcssa, %.preheader6911 ], [ %.236736.us.us.us, %.preheader6910.loopexit ], [ %.146727.lcssa, %.preheader6906.us.preheader ], [ %.146727.lcssa, %.preheader6906.preheader ] ; 3 uses
  %.186708.lcssa = phi <4 x float> [ %.136703.lcssa, %.preheader6911 ], [ %.226712.us.us.us, %.preheader6910.loopexit ], [ %.136703.lcssa, %.preheader6906.us.preheader ], [ %.136703.lcssa, %.preheader6906.preheader ]
  %.31969.lcssa = phi i32 [ %.21968.lcssa, %.preheader6911 ], [ %i.ece, %.preheader6910.loopexit ], [ %i.dzo, %.preheader6906.us.preheader ], [ %i.dzd, %.preheader6906.preheader ] ; 2 uses
  %.31964.lcssa = phi ptr [ %.21963.lcssa, %.preheader6911 ], [ %i.eca, %.preheader6910.loopexit ], [ %scevgep8319, %.preheader6906.us.preheader ], [ %scevgep8317, %.preheader6906.preheader ]
  %i.ecf = icmp slt i32 %.31969.lcssa, %i.bps
  br i1 %i.ecf, label %.preheader6905.lr.ph, label %._crit_edge7493

.preheader6905.lr.ph:                             ; preds = %.preheader6910
  %i.ecg = load i32, ptr %i.d, align 4
  %i.ech = load i32, ptr %i.j, align 4
  %invariant.op7485 = sub i32 %.neg6838, %i.ech
  %i.eci = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ecj = load i32, ptr %i.a, align 4
  %.fr8041 = freeze i32 %i.ecj                    ; 2 uses
  %i.eck = load i32, ptr %i.c, align 4
  %i.ecl = load i32, ptr %i.i, align 4
  %.neg6824 = add nuw nsw i32 %.019607505, 1
  %invariant.op7479 = sub i32 %.neg6824, %i.ecl
  %i.ecm = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ecn = icmp sgt i32 %.fr8041, 0
  %or.cond8895 = and i1 %i.brm, %i.ecn
  br i1 %or.cond8895, label %.preheader6905.us.us.preheader, label %._crit_edge7493

.preheader6905.us.us.preheader:                   ; preds = %.preheader6905.lr.ph
  %i.eco = zext nneg i32 %.fr8041 to i64          ; 2 uses
  %i.ecp = zext i32 %.31969.lcssa to i64
  br label %.preheader6905.us.us

.preheader6905.us.us:                             ; preds = %.preheader6905.us.us.preheader, %._crit_edge7483.split.us.us.us
  %indvars.iv8343 = phi i64 [ %i.ecp, %.preheader6905.us.us.preheader ], [ %indvars.iv.next8344, %._crit_edge7483.split.us.us.us ] ; 2 uses
  %.419657491.us.us = phi ptr [ %.31964.lcssa, %.preheader6905.us.us.preheader ], [ %i.eef, %._crit_edge7483.split.us.us.us ] ; 2 uses
  %.2467377489.us.us = phi <4 x float> [ %.196732.lcssa, %.preheader6905.us.us.preheader ], [ %.286741.us.us.us, %._crit_edge7483.split.us.us.us ]
  br label %bb.bc

bb.bc:                                            ; preds = %..loopexit6896_crit_edge.us.us.us, %.preheader6905.us.us
  %indvars.iv8338 = phi i64 [ %indvars.iv.next8339, %..loopexit6896_crit_edge.us.us.us ], [ 0, %.preheader6905.us.us ] ; 3 uses
  %.2567387480.us.us.us = phi <4 x float> [ %.286741.us.us.us, %..loopexit6896_crit_edge.us.us.us ], [ %.2467377489.us.us, %.preheader6905.us.us ] ; 3 uses
  %i.ecq = trunc i64 %indvars.iv8338 to i32
  %i.ecr = mul i32 %i.ecg, %i.ecq
  %.reass7486.us.us.us = add i32 %i.ecr, %invariant.op7485 ; 3 uses
  %i.ecs = icmp slt i32 %.reass7486.us.us.us, 0
  br i1 %i.ecs, label %..loopexit6896_crit_edge.us.us.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ect = srem i32 %.reass7486.us.us.us, %i.eci
  %i.ecu = sdiv i32 %.reass7486.us.us.us, %i.eci  ; 2 uses
  %.not2133.us.us.us = icmp eq i32 %i.ect, 0
  %.not2134.us.us.us = icmp slt i32 %i.ecu, %i.bpu
  %or.cond9003 = select i1 %.not2133.us.us.us, i1 %.not2134.us.us.us, i1 false
  br i1 %or.cond9003, label %.preheader6895.us.us.us, label %..loopexit6896_crit_edge.us.us.us

.preheader6895.us.us.us:                          ; preds = %bb.bd
  %i.ecv = mul nuw nsw i64 %indvars.iv8338, %i.eco
  %i.ecw = sext i32 %i.ecu to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %.preheader6895.us.us.us
  %indvars.iv8333 = phi i64 [ %indvars.iv.next8334, %bb.bg ], [ 0, %.preheader6895.us.us.us ] ; 3 uses
  %.2667397476.us.us.us = phi <4 x float> [ %.276740.us.us.us, %bb.bg ], [ %.2567387480.us.us.us, %.preheader6895.us.us.us ] ; 3 uses
  %i.ecx = trunc i64 %indvars.iv8333 to i32
  %i.ecy = mul i32 %i.eck, %i.ecx
  %.reass.us.us7502.us = add i32 %i.ecy, %invariant.op7479 ; 3 uses
  %i.ecz = icmp slt i32 %.reass.us.us7502.us, 0
  br i1 %i.ecz, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eda = srem i32 %.reass.us.us7502.us, %i.ecm
  %i.edb = sdiv i32 %.reass.us.us7502.us, %i.ecm  ; 2 uses
  %.not2135.us.us.us = icmp eq i32 %i.eda, 0
  %.not2136.us.us.us = icmp slt i32 %i.edb, %i.bpt
  %or.cond9004 = select i1 %.not2135.us.us.us, i1 %.not2136.us.us.us, i1 false
  br i1 %or.cond9004, label %_ZN4ncnn3MatD2Ev.exit2238.us.us.us, label %bb.bg

_ZN4ncnn3MatD2Ev.exit2238.us.us.us:               ; preds = %bb.bf
  %i.edc = add nuw nsw i64 %i.ecv, %indvars.iv8333
  %i.edd = shl i64 %i.edc, 2
  %i.ede = and i64 %i.edd, 4294967292
  %i.edf = getelementptr inbounds nuw [2 x i8], ptr %.419657491.us.us, i64 %i.ede
  %i.edg = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !245
  %i.edh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !245
  %i.edi = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !245
  %i.edj = mul i64 %i.edi, %indvars.iv8343
  %i.edk = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !245 ; 2 uses
  %i.edl = mul i64 %i.edj, %i.edk
  %i.edm = getelementptr inbounds nuw i8, ptr %i.edh, i64 %i.edl
  %i.edn = sext i32 %i.edg to i64
  %i.edo = mul nsw i64 %i.edn, %i.ecw
  %i.edp = mul i64 %i.edo, %i.edk
  %i.edq = getelementptr inbounds nuw i8, ptr %i.edm, i64 %i.edp
  %i.edr = sext i32 %i.edb to i64
  %i.eds = getelementptr inbounds [2 x i8], ptr %i.edq, i64 %i.edr
  %i.edt = load i16, ptr %i.eds, align 2, !tbaa !28
  %i.edu = zext i16 %i.edt to i32
  %i.edv = shl nuw i32 %i.edu, 16
  %i.edw = insertelement <4 x i32> poison, i32 %i.edv, i64 0
  %i.edx = bitcast <4 x i32> %i.edw to <4 x float>
  %i.edy = shufflevector <4 x float> %i.edx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.edz = load i64, ptr %i.edf, align 1, !tbaa !26
  %i.eea = insertelement <2 x i64> poison, i64 %i.edz, i64 0
  %i.eeb = bitcast <2 x i64> %i.eea to <8 x i16>
  %i.eec = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eeb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eed = bitcast <8 x i16> %i.eec to <4 x float>
  %i.eee = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edy, <4 x float> nofpclass(nan inf) %i.eed, <4 x float> nofpclass(nan inf) %.2667397476.us.us.us)
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2238.us.us.us, %bb.bf, %bb.be
  %.276740.us.us.us = phi nsz <4 x float> [ %.2667397476.us.us.us, %bb.be ], [ %i.eee, %_ZN4ncnn3MatD2Ev.exit2238.us.us.us ], [ %.2667397476.us.us.us, %bb.bf ] ; 2 uses
  %indvars.iv.next8334 = add nuw nsw i64 %indvars.iv8333, 1 ; 2 uses
  %exitcond8337.not = icmp eq i64 %indvars.iv.next8334, %i.eco
  br i1 %exitcond8337.not, label %..loopexit6896_crit_edge.us.us.us, label %bb.be, !llvm.loop !125

..loopexit6896_crit_edge.us.us.us:                ; preds = %bb.bg, %bb.bd, %bb.bc
  %.286741.us.us.us = phi nsz <4 x float> [ %.2567387480.us.us.us, %bb.bc ], [ %.2567387480.us.us.us, %bb.bd ], [ %.276740.us.us.us, %bb.bg ] ; 3 uses
  %indvars.iv.next8339 = add nuw nsw i64 %indvars.iv8338, 1 ; 2 uses
  %exitcond8342.not = icmp eq i64 %indvars.iv.next8339, %wide.trip.count8341
  br i1 %exitcond8342.not, label %._crit_edge7483.split.us.us.us, label %bb.bc, !llvm.loop !126

._crit_edge7483.split.us.us.us:                   ; preds = %..loopexit6896_crit_edge.us.us.us
  %i.eef = getelementptr inbounds [2 x i8], ptr %.419657491.us.us, i64 %i.brx
  %indvars.iv.next8344 = add nuw nsw i64 %indvars.iv8343, 1 ; 2 uses
  %i.eeg = trunc nuw i64 %indvars.iv.next8344 to i32
  %i.eeh = icmp sgt i32 %i.bps, %i.eeg
  br i1 %i.eeh, label %.preheader6905.us.us, label %._crit_edge7493, !llvm.loop !127

._crit_edge7493:                                  ; preds = %._crit_edge7483.split.us.us.us, %.preheader6905.lr.ph, %.preheader6910
  %.246737.lcssa = phi <4 x float> [ %.196732.lcssa, %.preheader6910 ], [ %.196732.lcssa, %.preheader6905.lr.ph ], [ %.286741.us.us.us, %._crit_edge7483.split.us.us.us ]
  %i.eei = fadd fast <4 x float> %.136667.lcssa, %.136685.lcssa
  %i.eej = fadd fast <4 x float> %i.eei, %.186708.lcssa
  %i.eek = fadd fast <4 x float> %i.eej, %.246737.lcssa ; 10 uses
  switch i32 %i.bqt, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bh
    i32 2, label %bb.bi
    i32 3, label %bb.bj
    i32 4, label %bb.bk
    i32 5, label %bb.bl
    i32 6, label %bb.bm
  ]

bb.bh:                                            ; preds = %._crit_edge7493
  %i.eel = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eek, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bi:                                            ; preds = %._crit_edge7493
  %i.eem = load ptr, ptr %11, align 8, !tbaa !19
  %i.een = load float, ptr %i.eem, align 4, !tbaa !30
  %i.eeo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.eek)
  %i.eep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.eek)
  %i.eeq = insertelement <4 x float> poison, float %i.een, i64 0
  %i.eer = shufflevector <4 x float> %i.eeq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ees = fmul fast <4 x float> %i.eer, %i.eep
  %i.eet = fadd fast <4 x float> %i.ees, %i.eeo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bj:                                            ; preds = %._crit_edge7493
  %i.eeu = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.eev = load float, ptr %i.eeu, align 4, !tbaa !30
  %i.eew = insertelement <4 x float> poison, float %i.eev, i64 0
  %i.eex = shufflevector <4 x float> %i.eew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eey = getelementptr inbounds nuw i8, ptr %i.eeu, i64 4
  %i.eez = load float, ptr %i.eey, align 4, !tbaa !30
  %i.efa = insertelement <4 x float> poison, float %i.eez, i64 0
  %i.efb = shufflevector <4 x float> %i.efa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.efc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eek, <4 x float> nofpclass(nan inf) %i.eex)
  %i.efd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.efc, <4 x float> nofpclass(nan inf) %i.efb)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge7493
  %i.efe = fneg fast <4 x float> %i.eek
  %i.eff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.efe, <4 x float> splat (float f0x42B0C0A5))
  %i.efg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eff, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.efh = fmul fast <4 x float> %i.efg, splat (float f0x3FB8AA3B)
  %i.efi = fadd fast <4 x float> %i.efh, splat (float 5.000000e-01) ; 2 uses
  %i.efj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.efi)
  %i.efk = sitofp fast <4 x i32> %i.efj to <4 x float> ; 2 uses
  %i.efl = fcmp fast olt <4 x float> %i.efi, %i.efk
  %i.efm = select <4 x i1> %i.efl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.efn = fsub fast <4 x float> %i.efk, %i.efm   ; 2 uses
  %i.efo = fneg fast <4 x float> %i.efn           ; 2 uses
  %i.efp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.efo, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.efg)
  %i.efq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.efo, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.efp) ; 8 uses
  %i.efr = fmul fast <4 x float> %i.efq, %i.efq
  %i.efs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efq, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.eft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efs, <4 x float> nofpclass(nan inf) %i.efq, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.efu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eft, <4 x float> nofpclass(nan inf) %i.efq, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.efv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efu, <4 x float> nofpclass(nan inf) %i.efq, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.efw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efv, <4 x float> nofpclass(nan inf) %i.efq, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.efx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.efw, <4 x float> nofpclass(nan inf) %i.efr, <4 x float> nofpclass(nan inf) %i.efq)
  %i.efy = fadd fast <4 x float> %i.efx, splat (float 1.000000e+00)
  %i.efz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.efn)
  %i.ega = shl <4 x i32> %i.efz, splat (i32 23)
  %i.egb = add <4 x i32> %i.ega, splat (i32 1065353216)
  %i.egc = bitcast <4 x i32> %i.egb to <4 x float>
  %i.egd = fmul fast <4 x float> %i.efy, %i.egc
  %i.ege = fadd fast <4 x float> %i.egd, splat (float 1.000000e+00)
  %i.egf = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ege
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge7493
  %i.egg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eek, <4 x float> splat (float f0x42B0C0A5))
  %i.egh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.egg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.egi = fmul fast <4 x float> %i.egh, splat (float f0x3FB8AA3B)
  %i.egj = fadd fast <4 x float> %i.egi, splat (float 5.000000e-01) ; 2 uses
  %i.egk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.egj)
  %i.egl = sitofp fast <4 x i32> %i.egk to <4 x float> ; 2 uses
  %i.egm = fcmp fast olt <4 x float> %i.egj, %i.egl
  %i.egn = select <4 x i1> %i.egm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ego = fsub fast <4 x float> %i.egl, %i.egn   ; 2 uses
  %i.egp = fneg fast <4 x float> %i.ego           ; 2 uses
  %i.egq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.egp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.egh)
  %i.egr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.egp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.egq) ; 8 uses
  %i.egs = fmul fast <4 x float> %i.egr, %i.egr
  %i.egt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.egu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egt, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.egv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egu, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.egw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egv, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.egx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egw, <4 x float> nofpclass(nan inf) %i.egr, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.egy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.egx, <4 x float> nofpclass(nan inf) %i.egs, <4 x float> nofpclass(nan inf) %i.egr)
  %i.egz = fadd fast <4 x float> %i.egy, splat (float 1.000000e+00)
  %i.eha = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ego)
  %i.ehb = shl <4 x i32> %i.eha, splat (i32 23)
  %i.ehc = add <4 x i32> %i.ehb, splat (i32 1065353216)
  %i.ehd = bitcast <4 x i32> %i.ehc to <4 x float>
  %i.ehe = fmul fast <4 x float> %i.egz, %i.ehd
  %i.ehf = fadd fast <4 x float> %i.ehe, splat (float 1.000000e+00) ; 2 uses
  %i.ehg = fcmp fast ole <4 x float> %i.ehf, zeroinitializer
  %i.ehh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ehf, <4 x float> splat (float f0x00800000))
  %i.ehi = bitcast <4 x float> %i.ehh to <4 x i32> ; 2 uses
  %i.ehj = lshr <4 x i32> %i.ehi, splat (i32 23)
  %i.ehk = and <4 x i32> %i.ehi, splat (i32 -2139095041)
  %i.ehl = or disjoint <4 x i32> %i.ehk, splat (i32 1056964608)
  %i.ehm = bitcast <4 x i32> %i.ehl to <4 x float> ; 3 uses
  %i.ehn = add nsw <4 x i32> %i.ehj, splat (i32 -127)
  %i.eho = sitofp fast <4 x i32> %i.ehn to <4 x float> ; 2 uses
  %i.ehp = fadd fast <4 x float> %i.eho, splat (float 1.000000e+00)
  %i.ehq = fcmp fast olt <4 x float> %i.ehm, splat (float f0x3F3504F3) ; 2 uses
  %i.ehr = select <4 x i1> %i.ehq, <4 x float> %i.ehm, <4 x float> zeroinitializer
  %i.ehs = fadd fast <4 x float> %i.ehm, splat (float -1.000000e+00)
  %i.eht = select fast <4 x i1> %i.ehq, <4 x float> %i.eho, <4 x float> %i.ehp ; 2 uses
  %i.ehu = fadd fast <4 x float> %i.ehs, %i.ehr   ; 12 uses
  %i.ehv = fmul fast <4 x float> %i.ehu, %i.ehu   ; 2 uses
  %i.ehw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.ehx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehw, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.ehy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehx, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.ehz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehy, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.eia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ehz, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.eib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eia, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.eic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eib, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.eid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eic, <4 x float> nofpclass(nan inf) %i.ehu, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.eie = fmul fast <4 x float> %i.ehv, %i.ehu
  %i.eif = fmul fast <4 x float> %i.eie, %i.eid
  %i.eig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eht, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eif)
  %i.eih = fneg fast <4 x float> %i.ehv
  %i.eii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eih, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.eig)
  %i.eij = fadd fast <4 x float> %i.eii, %i.ehu
  %i.eik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eht, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eij)
  %.neg = fmul fast <4 x float> %i.eik, splat (float -2.000000e+00)
  %i.eil = select fast <4 x i1> %i.ehg, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.eim = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eil, <4 x float> splat (float f0x42B0C0A5))
  %i.ein = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eim, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eio = fmul fast <4 x float> %i.ein, splat (float f0x3FB8AA3B)
  %i.eip = fadd fast <4 x float> %i.eio, splat (float 5.000000e-01) ; 2 uses
  %i.eiq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eip)
  %i.eir = sitofp fast <4 x i32> %i.eiq to <4 x float> ; 2 uses
  %i.eis = fcmp fast olt <4 x float> %i.eip, %i.eir
  %i.eit = select <4 x i1> %i.eis, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eiu = fsub fast <4 x float> %i.eir, %i.eit   ; 2 uses
  %i.eiv = fneg fast <4 x float> %i.eiu           ; 2 uses
  %i.eiw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eiv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ein)
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.eku = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ekv = load i32, ptr %i.eku, align 8, !tbaa !15
  %.fr8050 = freeze i32 %i.ekv                    ; 8 uses
  %i.ekw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ekx = load i32, ptr %i.ekw, align 8, !tbaa !16
  %i.eky = mul i32 %i.ekx, %.fr8050               ; 15 uses
  %i.ekz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 12 uses
  %i.ela = load i32, ptr %i.ekz, align 4, !tbaa !22 ; 6 uses
  %i.elb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.elc = load i32, ptr %i.elb, align 8, !tbaa !23 ; 5 uses
  %i.eld = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ele = load i32, ptr %i.eld, align 4, !tbaa !22 ; 2 uses
  %i.elf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.elg = load i32, ptr %i.elf, align 8, !tbaa !23 ; 2 uses
  %i.elh = load ptr, ptr %1, align 8, !tbaa !19, !noalias !246
  %i.eli = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !246
  %i.elj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.elk = load i64, ptr %i.elj, align 8, !tbaa !24, !noalias !246
  %factor.op.mul8019 = mul i64 %i.eli, %i.elk
  %i.ell = icmp slt i32 %i.elg, 1
  %i.elm = icmp slt i32 %i.ele, 1
  %i.eln = icmp sgt i32 %i.eky, 15
  %i.elo = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8050)
  %i.elp = icmp eq i32 %i.elo, 1
  %i.elq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8050, i1 true)
  %i.elr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.els = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.elt = icmp eq i32 %.fr8050, 1
  %brmerge8028 = select i1 %i.ell, i1 true, i1 %i.elm
  br i1 %brmerge8028, label %._crit_edge8018.split, label %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split

_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split:      ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph
  %i.elu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.elv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.elw = load ptr, ptr %2, align 8, !tbaa !19, !noalias !247
  %i.elx = load i64, ptr %i.elv, align 8, !tbaa !17, !noalias !247
  %i.ely = load i64, ptr %i.elu, align 8, !tbaa !24, !noalias !247
  %factor.op.mul8022 = mul i64 %i.elx, %i.ely
  %i.elz = add i32 %i.eky, -16                    ; 2 uses
  %i.ema = lshr i32 %i.elz, 3
  %i.emb = and i32 %i.ema, 536870910
  %narrow8762 = add nuw nsw i32 %i.emb, 2
  %i.emc = zext nneg i32 %narrow8762 to i64
  %i.emd = and i32 %i.elz, -16
  %i.eme = add nuw i32 %i.emd, 16
  %i.emf = sext i32 %i.eky to i64
  %i.emg = sext i32 %i.eks to i64
  %wide.trip.count8555 = sext i32 %i.s to i64
  %invariant.op8795 = add nsw i64 %i.emf, -15
  br label %_ZN4ncnn3MatD2Ev.exit2218

_ZN4ncnn3MatD2Ev.exit2237:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split, %._crit_edge7784
  %indvars.iv8450 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split ], [ %indvars.iv.next8451, %._crit_edge7784 ] ; 2 uses
  %i.emh = shl nuw nsw i64 %indvars.iv8450, 1
  %i.emi = add nsw i64 %i.emh, %i.bpp             ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.emi
  %i.emj = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.reass
  %i.emk = or disjoint i64 %i.emi, 1
  %.reass7789 = mul i64 %factor.op.mul, %i.emk
  %i.eml = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.reass7789
  %i.emm = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not2110 = icmp eq ptr %i.emm, null
  %i.emn = getelementptr inbounds [4 x i8], ptr %i.emm, i64 %i.emi
  %i.emo = trunc nsw i64 %i.emi to i32            ; 3 uses
  %i.emp = sdiv i32 %i.emo, 16
  %i.emq = srem i32 %i.emo, 16
  %.lhs.trunc6767 = trunc nsw i32 %i.emq to i8
  %i.emr = sdiv i8 %.lhs.trunc6767, 8
  %.sext6768 = sext i8 %i.emr to i32
  %i.ems = insertelement <2 x i32> poison, i32 %i.emo, i64 0
  %i.emt = shufflevector <2 x i32> %i.ems, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.emu = srem <2 x i32> %i.emt, <i32 8, i32 4>  ; 2 uses
  %i.emv = bitcast <2 x i32> %i.emu to <8 x i8>
  %.lhs.trunc6769 = extractelement <8 x i8> %i.emv, i64 0
  %i.emw = sdiv i8 %.lhs.trunc6769, 4
  %.sext6770 = sext i8 %i.emw to i32
  %i.emx = extractelement <2 x i32> %i.emu, i64 1
  %i.emy = ashr exact i32 %i.emx, 1
  %i.emz = add nsw i32 %i.emy, %i.emp
  %i.ena = add nsw i32 %i.emz, %.sext6768
  %i.enb = add nsw i32 %i.ena, %.sext6770
  %i.enc = sext i32 %i.enb to i64
  %i.end = load i32, ptr %i.g, align 4
  %.reass7793 = mul i64 %factor.op.mul7792, %i.enc
  %i.ene = getelementptr i8, ptr %i.bpf, i64 %.reass7793 ; 3 uses
  br label %.preheader6894

.preheader6894:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2237, %._crit_edge7778
  %.019327783 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %.neg6818, %._crit_edge7778 ]
  %.019337782 = phi ptr [ %i.eml, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.for, %._crit_edge7778 ]
  %.019357781 = phi ptr [ %i.emj, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.foq, %._crit_edge7778 ]
  %i.enf = load i32, ptr %i.b, align 4            ; 6 uses
  %i.eng = icmp sgt i32 %i.enf, 0                 ; 5 uses
  %.neg6818 = add nuw nsw i32 %.019327783, 1      ; 7 uses
  %i.enh = load i32, ptr %i.k, align 4            ; 5 uses
  %i.eni = shl i32 %i.enh, 5
  %i.enj = sext i32 %i.eni to i64                 ; 2 uses
  %i.enk = shl i32 %i.enh, 4
  %i.enl = sext i32 %i.enk to i64                 ; 2 uses
  %i.enm = shl i32 %i.enh, 3
  %i.enn = sext i32 %i.enm to i64                 ; 3 uses
  %i.eno = shl i32 %i.enh, 2
  %i.enp = sext i32 %i.eno to i64                 ; 2 uses
  %i.enq = shl nsw i32 %i.enh, 1
  %i.enr = sext i32 %i.enq to i64
  %i.ens = mul nsw i64 %i.bpl, %i.enj
  %scevgep8354 = getelementptr i8, ptr %i.ene, i64 %i.ens
  %wide.trip.count8367 = zext nneg i32 %i.enf to i64
  %wide.trip.count8386 = zext nneg i32 %i.enf to i64
  %wide.trip.count8412 = zext nneg i32 %i.enf to i64
  %wide.trip.count8430 = zext nneg i32 %i.enf to i64
  %wide.trip.count8443 = zext nneg i32 %i.enf to i64
  br label %bb.bp

._crit_edge7784:                                  ; preds = %._crit_edge7778
  %indvars.iv.next8451 = add nuw nsw i64 %indvars.iv8450, 1 ; 2 uses
  %exitcond8454.not = icmp eq i64 %indvars.iv.next8451, %wide.trip.count8453
  br i1 %exitcond8454.not, label %._crit_edge7786.split, label %_ZN4ncnn3MatD2Ev.exit2237, !llvm.loop !133

._crit_edge7778:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %exitcond8449.not = icmp eq i32 %.neg6818, %i.bop
  br i1 %exitcond8449.not, label %._crit_edge7784, label %.preheader6894, !llvm.loop !134

bb.bp:                                            ; preds = %.preheader6894, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %.019317777 = phi i32 [ 0, %.preheader6894 ], [ %i.fos, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 6 uses
  %.119347776 = phi ptr [ %.019337782, %.preheader6894 ], [ %i.for, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  %.119367775 = phi ptr [ %.019357781, %.preheader6894 ], [ %i.foq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  br i1 %.not2110, label %_ZN4ncnn3MatD2Ev.exit2235, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ent = load <2 x float>, ptr %i.emn, align 4, !tbaa !30
  br label %_ZN4ncnn3MatD2Ev.exit2235

_ZN4ncnn3MatD2Ev.exit2235:                        ; preds = %bb.bq, %bb.bp
  %i.enu = phi <2 x float> [ %i.ent, %bb.bq ], [ zeroinitializer, %bb.bp ]
  br i1 %i.bow, label %.preheader6892.lr.ph, label %._crit_edge7553

.preheader6892.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2235
  %i.env = load i32, ptr %i.j, align 4
  %invariant.op7535 = sub i32 %.neg6818, %i.env
  %i.enw = load i32, ptr %i.f, align 4            ; 2 uses
  %i.enx = load i32, ptr %i.a, align 4
  %.fr8044 = freeze i32 %i.enx                    ; 2 uses
  %i.eny = icmp sgt i32 %.fr8044, 0
  %i.enz = load i32, ptr %i.i, align 4
  %.neg6820 = add nuw nsw i32 %.019317777, 1
  %invariant.op7523 = sub i32 %.neg6820, %i.enz
  %i.eoa = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eng, label %.preheader6892.us.preheader, label %._crit_edge7553

.preheader6892.us.preheader:                      ; preds = %.preheader6892.lr.ph
  %i.eob = load i32, ptr %i.c, align 4
  %i.eoc = load i32, ptr %i.d, align 4
  %i.eod = zext i32 %.fr8044 to i64               ; 2 uses
  br label %.preheader6892.us

.preheader6892.us:                                ; preds = %.preheader6892.us.preheader, %._crit_edge7532.us
  %indvars.iv8369 = phi i64 [ 0, %.preheader6892.us.preheader ], [ %indvars.iv.next8370, %._crit_edge7532.us ] ; 20 uses
  %.018947549.us = phi ptr [ %i.ene, %.preheader6892.us.preheader ], [ %i.eva, %._crit_edge7532.us ] ; 2 uses
  %.066387548.us = phi <16 x float> [ zeroinitializer, %.preheader6892.us.preheader ], [ %.us-phi7545.us, %._crit_edge7532.us ] ; 2 uses
  %.066467547.us = phi <16 x float> [ zeroinitializer, %.preheader6892.us.preheader ], [ %.us-phi7544.us, %._crit_edge7532.us ] ; 2 uses
  %i.eoe = lshr exact i64 %indvars.iv8369, 4
  %i.eof = lshr exact i64 %indvars.iv8369, 3      ; 2 uses
  %i.eog = or disjoint i64 %i.eof, 1
  %i.eoh = lshr exact i64 %indvars.iv8369, 2      ; 4 uses
  %i.eoi = or disjoint i64 %i.eoh, 1
  %i.eoj = or disjoint i64 %i.eoh, 2
  %i.eok = or disjoint i64 %i.eoh, 3
  br i1 %i.eny, label %.lr.ph7531.split.us.us.preheader, label %._crit_edge7532.us

.lr.ph7531.split.us.us.preheader:                 ; preds = %.preheader6892.us
  %i.eol = or disjoint i64 %indvars.iv8369, 1
  %i.eom = or disjoint i64 %indvars.iv8369, 2
  %i.eon = or disjoint i64 %indvars.iv8369, 3
  %i.eoo = or disjoint i64 %indvars.iv8369, 4
  %i.eop = or disjoint i64 %indvars.iv8369, 5
  %i.eoq = or disjoint i64 %indvars.iv8369, 6
  %i.eor = or disjoint i64 %indvars.iv8369, 7
  %i.eos = or disjoint i64 %indvars.iv8369, 8
  %i.eot = or disjoint i64 %indvars.iv8369, 9
  %i.eou = or disjoint i64 %indvars.iv8369, 10
  %i.eov = or disjoint i64 %indvars.iv8369, 11
  %i.eow = or disjoint i64 %indvars.iv8369, 12
  %i.eox = or disjoint i64 %indvars.iv8369, 13
  %i.eoy = or disjoint i64 %indvars.iv8369, 14
  %i.eoz = or disjoint i64 %indvars.iv8369, 15
  br label %.lr.ph7531.split.us.us

.lr.ph7531.split.us.us:                           ; preds = %.lr.ph7531.split.us.us.preheader, %..loopexit6887_crit_edge.us.us
  %indvars.iv8364 = phi i64 [ 0, %.lr.ph7531.split.us.us.preheader ], [ %indvars.iv.next8365, %..loopexit6887_crit_edge.us.us ] ; 3 uses
  %.166397529.us.us = phi <16 x float> [ %.066387548.us, %.lr.ph7531.split.us.us.preheader ], [ %.76645.us.us, %..loopexit6887_crit_edge.us.us ] ; 4 uses
  %.166477528.us.us = phi <16 x float> [ %.066467547.us, %.lr.ph7531.split.us.us.preheader ], [ %.76653.us.us, %..loopexit6887_crit_edge.us.us ] ; 4 uses
  %i.epa = trunc i64 %indvars.iv8364 to i32
  %i.epb = mul i32 %i.eoc, %i.epa
  %.reass.us7536.us = add i32 %i.epb, %invariant.op7535 ; 3 uses
  %i.epc = icmp slt i32 %.reass.us7536.us, 0
  br i1 %i.epc, label %..loopexit6887_crit_edge.us.us, label %bb.br

bb.br:                                            ; preds = %.lr.ph7531.split.us.us
  %i.epd = srem i32 %.reass.us7536.us, %i.enw
  %i.epe = sdiv i32 %.reass.us7536.us, %i.enw     ; 2 uses
  %.not2127.us.us = icmp eq i32 %i.epd, 0
  %.not2128.us.us = icmp slt i32 %i.epe, %i.bol
  %or.cond9005 = select i1 %.not2127.us.us, i1 %.not2128.us.us, i1 false
  br i1 %or.cond9005, label %.preheader6886.us.us, label %..loopexit6887_crit_edge.us.us

.preheader6886.us.us:                             ; preds = %bb.br
  %i.epf = mul nuw nsw i64 %indvars.iv8364, %i.eod
  %i.epg = sext i32 %i.epe to i64                 ; 4 uses
  br i1 %i.boy, label %.lr.ph.split.us.us.us7564, label %..loopexit6887_crit_edge.us.us

.lr.ph.split.us.us.us7564:                        ; preds = %.preheader6886.us.us, %bb.bt
  %indvars.iv8359 = phi i64 [ %indvars.iv.next8360, %bb.bt ], [ 0, %.preheader6886.us.us ] ; 3 uses
  %.266407519.us.us.us = phi <16 x float> [ %.66644.us.us.us, %bb.bt ], [ %.166397529.us.us, %.preheader6886.us.us ] ; 7 uses
  %.266487518.us.us.us = phi <16 x float> [ %.66652.us.us.us, %bb.bt ], [ %.166477528.us.us, %.preheader6886.us.us ] ; 7 uses
  %i.eph = trunc i64 %indvars.iv8359 to i32
  %i.epi = mul i32 %i.eob, %i.eph
  %.reass7524.us.us.us = add i32 %i.epi, %invariant.op7523 ; 3 uses
  %i.epj = icmp slt i32 %.reass7524.us.us.us, 0
  br i1 %i.epj, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.us.us.us7564
  %i.epk = srem i32 %.reass7524.us.us.us, %i.eoa
  %i.epl = sdiv i32 %.reass7524.us.us.us, %i.eoa  ; 5 uses
  %.not2129.us.us.us = icmp eq i32 %i.epk, 0
  %.not2130.us.us.us = icmp slt i32 %i.epl, %i.boj
  %or.cond9006 = select i1 %.not2129.us.us.us, i1 %.not2130.us.us.us, i1 false
  br i1 %or.cond9006, label %.split2196.us.us.us, label %bb.bt

.split2196.us.us.us:                              ; preds = %bb.bs
  %i.epm = add nuw nsw i64 %i.epf, %indvars.iv8359
  %i.epn = shl i64 %i.epm, 5
  %i.epo = and i64 %i.epn, 4294967264
  %i.epp = getelementptr inbounds nuw [2 x i8], ptr %.018947549.us, i64 %i.epo ; 8 uses
  switch i32 %i.boz, label %bb.bt [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
    i32 3, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge
    i32 2, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge
    i32 0, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge
  ]

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre8580 = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !248
  %.pre8581 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !248
  %.pre8582 = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !248
  %.pre8583 = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !248 ; 2 uses
  %.pre8639 = sext i32 %.pre8580 to i64
  %.pre8641 = mul nsw i64 %.pre8639, %i.epg
  %.pre8643 = mul i64 %.pre8641, %.pre8583
  br label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre8573 = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !249
  %.pre8574 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !249
  %.pre8575 = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !249
  %.pre8576 = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !249 ; 2 uses
  %.pre8577 = load <16 x bfloat>, ptr %i.epp, align 32, !tbaa !26
  %.phi.trans.insert8578 = getelementptr inbounds nuw i8, ptr %i.epp, i64 32
  %.pre8579 = load <16 x bfloat>, ptr %.phi.trans.insert8578, align 32, !tbaa !26
  %.pre8629 = sext i32 %.pre8573 to i64
  %.pre8631 = mul nsw i64 %.pre8629, %i.epg
  %.pre8633 = mul i64 %.pre8631, %.pre8576
  %.pre8635 = fpext fast <16 x bfloat> %.pre8577 to <16 x float>
  %.pre8637 = fpext fast <16 x bfloat> %.pre8579 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !250
  %.pre8568 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !250
  %.pre8569 = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !250
  %.pre8570 = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !250 ; 2 uses
  %.pre8571 = load <16 x bfloat>, ptr %i.epp, align 32, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.epp, i64 32
  %.pre8572 = load <16 x bfloat>, ptr %.phi.trans.insert, align 32, !tbaa !26
  %.pre8619 = sext i32 %.pre to i64
  %.pre8621 = mul nsw i64 %.pre8619, %i.epg
  %.pre8623 = mul i64 %.pre8621, %.pre8570
  %.pre8625 = fpext fast <16 x bfloat> %.pre8571 to <16 x float>
  %.pre8627 = fpext fast <16 x bfloat> %.pre8572 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2233.us.us.us

_ZN4ncnn3MatD2Ev.exit2234.us.us.us:               ; preds = %.split2196.us.us.us
  %i.epq = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !251
  %i.epr = load ptr, ptr %0, align 8, !tbaa !19, !noalias !251 ; 4 uses
  %i.eps = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !251 ; 4 uses
  %i.ept = mul i64 %i.eps, %i.eoe
  %i.epu = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !251 ; 5 uses
  %i.epv = mul i64 %i.ept, %i.epu
  %i.epw = getelementptr inbounds nuw i8, ptr %i.epr, i64 %i.epv
  %i.epx = sext i32 %i.epq to i64
  %i.epy = mul nsw i64 %i.epx, %i.epg
  %i.epz = mul i64 %i.epy, %i.epu                 ; 4 uses
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.epw, i64 %i.epz
  %i.eqb = shl nsw i32 %i.epl, 4
  %i.eqc = sext i32 %i.eqb to i64
  %i.eqd = getelementptr inbounds [2 x i8], ptr %i.eqa, i64 %i.eqc
  %i.eqe = load <16 x bfloat>, ptr %i.eqd, align 32, !tbaa !26
  %i.eqf = fpext fast <16 x bfloat> %i.eqe to <16 x float> ; 2 uses
  %i.eqg = load <16 x bfloat>, ptr %i.epp, align 32, !tbaa !26
  %i.eqh = fpext fast <16 x bfloat> %i.eqg to <16 x float> ; 3 uses
  %i.eqi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqf, <16 x float> nofpclass(nan inf) %i.eqh, <16 x float> nofpclass(nan inf) %.266487518.us.us.us) ; 4 uses
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.epp, i64 32
  %i.eqk = load <16 x bfloat>, ptr %i.eqj, align 32, !tbaa !26
  %i.eql = fpext fast <16 x bfloat> %i.eqk to <16 x float> ; 3 uses
  %i.eqm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqf, <16 x float> nofpclass(nan inf) %i.eql, <16 x float> nofpclass(nan inf) %.266407519.us.us.us) ; 4 uses
  switch i32 %.fr8043, label %bb.bt [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2233.us.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2233.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8628 = phi <16 x float> [ %.pre8627, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eql, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 2 uses
  %.pre-phi8626 = phi <16 x float> [ %.pre8625, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eqh, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 2 uses
  %.pre-phi8624 = phi i64 [ %.pre8623, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.epz, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.eqn = phi i64 [ %.pre8570, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.epu, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.eqo = phi i64 [ %.pre8569, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eps, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.eqp = phi ptr [ %.pre8568, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.epr, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %.36649.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.36641.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eqm, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eqq = mul i64 %i.eqo, %i.eof
  %i.eqr = mul i64 %i.eqq, %i.eqn
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqp, i64 %i.eqr
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eqs, i64 %.pre-phi8624
  %i.equ = shl nsw i32 %i.epl, 3
  %i.eqv = sext i32 %i.equ to i64                 ; 2 uses
  %i.eqw = getelementptr inbounds [2 x i8], ptr %i.eqt, i64 %i.eqv
  %i.eqx = mul i64 %i.eqo, %i.eog
  %i.eqy = mul i64 %i.eqx, %i.eqn
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.eqp, i64 %i.eqy
  %i.era = getelementptr inbounds nuw i8, ptr %i.eqz, i64 %.pre-phi8624
  %i.erb = getelementptr inbounds [2 x i8], ptr %i.era, i64 %i.eqv
  %i.erc = load <8 x bfloat>, ptr %i.eqw, align 16, !tbaa !26
  %i.erd = fpext fast <8 x bfloat> %i.erc to <8 x float>
  %i.ere = load <8 x bfloat>, ptr %i.erb, align 16, !tbaa !26
  %i.erf = fpext fast <8 x bfloat> %i.ere to <8 x float>
  %i.erg = shufflevector <8 x float> %i.erd, <8 x float> %i.erf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.erh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.erg, <16 x float> nofpclass(nan inf) %.pre-phi8626, <16 x float> nofpclass(nan inf) %.36649.us.us.us) ; 3 uses
  %i.eri = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.erg, <16 x float> nofpclass(nan inf) %.pre-phi8628, <16 x float> nofpclass(nan inf) %.36641.us.us.us) ; 3 uses
  switch i32 %.fr8043, label %bb.bt [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2231.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8638 = phi <16 x float> [ %.pre8637, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8628, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eql, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.pre-phi8636 = phi <16 x float> [ %.pre8635, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8626, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqh, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.pre-phi8634 = phi i64 [ %.pre8633, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8624, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epz, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.erj = phi i64 [ %.pre8576, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.eqn, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epu, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.erk = phi i64 [ %.pre8575, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.eqo, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eps, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.erl = phi ptr [ %.pre8574, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.eqp, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epr, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %.46650.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.erh, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.46642.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.eri, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqm, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.erm = mul i64 %i.erk, %i.eoh
  %i.ern = mul i64 %i.erm, %i.erj
  %i.ero = getelementptr inbounds nuw i8, ptr %i.erl, i64 %i.ern
  %i.erp = getelementptr inbounds nuw i8, ptr %i.ero, i64 %.pre-phi8634
  %i.erq = shl nsw i32 %i.epl, 2
  %i.err = sext i32 %i.erq to i64                 ; 4 uses
  %i.ers = getelementptr inbounds [2 x i8], ptr %i.erp, i64 %i.err
  %i.ert = mul i64 %i.erk, %i.eoi
  %i.eru = mul i64 %i.ert, %i.erj
  %i.erv = getelementptr inbounds nuw i8, ptr %i.erl, i64 %i.eru
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erv, i64 %.pre-phi8634
  %i.erx = getelementptr inbounds [2 x i8], ptr %i.erw, i64 %i.err
  %i.ery = mul i64 %i.erk, %i.eoj
  %i.erz = mul i64 %i.ery, %i.erj
  %i.esa = getelementptr inbounds nuw i8, ptr %i.erl, i64 %i.erz
  %i.esb = getelementptr inbounds nuw i8, ptr %i.esa, i64 %.pre-phi8634
  %i.esc = getelementptr inbounds [2 x i8], ptr %i.esb, i64 %i.err
  %i.esd = mul i64 %i.erk, %i.eok
  %i.ese = mul i64 %i.esd, %i.erj
  %i.esf = getelementptr inbounds nuw i8, ptr %i.erl, i64 %i.ese
  %i.esg = getelementptr inbounds nuw i8, ptr %i.esf, i64 %.pre-phi8634
  %i.esh = getelementptr inbounds [2 x i8], ptr %i.esg, i64 %i.err
  %i.esi = load i64, ptr %i.ers, align 1, !tbaa !26
  %i.esj = insertelement <2 x i64> poison, i64 %i.esi, i64 0
  %i.esk = bitcast <2 x i64> %i.esj to <8 x i16>
  %i.esl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esm = bitcast <8 x i16> %i.esl to <4 x float>
  %i.esn = load i64, ptr %i.erx, align 1, !tbaa !26
  %i.eso = insertelement <2 x i64> poison, i64 %i.esn, i64 0
  %i.esp = bitcast <2 x i64> %i.eso to <8 x i16>
  %i.esq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esr = bitcast <8 x i16> %i.esq to <4 x float>
  %i.ess = load i64, ptr %i.esc, align 1, !tbaa !26
  %i.est = insertelement <2 x i64> poison, i64 %i.ess, i64 0
  %i.esu = bitcast <2 x i64> %i.est to <8 x i16>
  %i.esv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esw = bitcast <8 x i16> %i.esv to <4 x float>
  %i.esx = load i64, ptr %i.esh, align 1, !tbaa !26
  %i.esy = insertelement <2 x i64> poison, i64 %i.esx, i64 0
  %i.esz = bitcast <2 x i64> %i.esy to <8 x i16>
  %i.eta = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.etb = bitcast <8 x i16> %i.eta to <4 x float>
  %i.etc = shufflevector <4 x float> %i.esm, <4 x float> %i.esr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.etd = shufflevector <4 x float> %i.esw, <4 x float> %i.etb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ete = shufflevector <16 x float> %i.etc, <16 x float> %i.etd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.etf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ete, <16 x float> nofpclass(nan inf) %.pre-phi8636, <16 x float> nofpclass(nan inf) %.46650.us.us.us) ; 2 uses
  %i.etg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ete, <16 x float> nofpclass(nan inf) %.pre-phi8638, <16 x float> nofpclass(nan inf) %.46642.us.us.us) ; 2 uses
  br i1 %i.bpc, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, label %bb.bt

_ZN4ncnn3MatD2Ev.exit2227.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8644 = phi i64 [ %.pre8643, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %.pre-phi8634, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.pre-phi8624, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epz, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eth = phi i64 [ %.pre8583, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erj, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqn, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epu, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eti = phi i64 [ %.pre8582, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erk, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqo, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eps, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etj = phi ptr [ %.pre8581, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erl, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqp, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epr, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56651.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.etf, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.erh, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56643.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.etg, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eri, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqm, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.eti, %i.eth ; 16 uses
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.etj, i64 %.pre-phi8644
  %i.etk = sext i32 %i.epl to i64
  %invariant.gep7515.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us, i64 %i.etk ; 16 uses
  %.reass.us.us7543.us = mul i64 %factor.op.mul.us.us.us, %indvars.iv8369
  %gep7516.us.us.us = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us
  %i.etl = load i16, ptr %gep7516.us.us.us, align 2, !tbaa !28
  %.reass.us.us7543.us.1 = mul i64 %factor.op.mul.us.us.us, %i.eol
  %gep7516.us.us.us.1 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.1
  %i.etm = load i16, ptr %gep7516.us.us.us.1, align 2, !tbaa !28
  %.reass.us.us7543.us.2 = mul i64 %factor.op.mul.us.us.us, %i.eom
  %gep7516.us.us.us.2 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.2
  %i.etn = load i16, ptr %gep7516.us.us.us.2, align 2, !tbaa !28
  %.reass.us.us7543.us.3 = mul i64 %factor.op.mul.us.us.us, %i.eon
  %gep7516.us.us.us.3 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.3
  %i.eto = load i16, ptr %gep7516.us.us.us.3, align 2, !tbaa !28
  %.reass.us.us7543.us.4 = mul i64 %factor.op.mul.us.us.us, %i.eoo
  %gep7516.us.us.us.4 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.4
  %i.etp = load i16, ptr %gep7516.us.us.us.4, align 2, !tbaa !28
  %.reass.us.us7543.us.5 = mul i64 %factor.op.mul.us.us.us, %i.eop
  %gep7516.us.us.us.5 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.5
  %i.etq = load i16, ptr %gep7516.us.us.us.5, align 2, !tbaa !28
  %.reass.us.us7543.us.6 = mul i64 %factor.op.mul.us.us.us, %i.eoq
  %gep7516.us.us.us.6 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.6
  %i.etr = load i16, ptr %gep7516.us.us.us.6, align 2, !tbaa !28
  %.reass.us.us7543.us.7 = mul i64 %factor.op.mul.us.us.us, %i.eor
  %gep7516.us.us.us.7 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.7
  %i.ets = load i16, ptr %gep7516.us.us.us.7, align 2, !tbaa !28
  %.reass.us.us7543.us.8 = mul i64 %factor.op.mul.us.us.us, %i.eos
  %gep7516.us.us.us.8 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.8
  %i.ett = load i16, ptr %gep7516.us.us.us.8, align 2, !tbaa !28
  %.reass.us.us7543.us.9 = mul i64 %factor.op.mul.us.us.us, %i.eot
  %gep7516.us.us.us.9 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.9
  %i.etu = load i16, ptr %gep7516.us.us.us.9, align 2, !tbaa !28
  %.reass.us.us7543.us.10 = mul i64 %factor.op.mul.us.us.us, %i.eou
  %gep7516.us.us.us.10 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.10
  %i.etv = load i16, ptr %gep7516.us.us.us.10, align 2, !tbaa !28
  %.reass.us.us7543.us.11 = mul i64 %factor.op.mul.us.us.us, %i.eov
  %gep7516.us.us.us.11 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.11
  %i.etw = load i16, ptr %gep7516.us.us.us.11, align 2, !tbaa !28
  %.reass.us.us7543.us.12 = mul i64 %factor.op.mul.us.us.us, %i.eow
  %gep7516.us.us.us.12 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.12
  %i.etx = load i16, ptr %gep7516.us.us.us.12, align 2, !tbaa !28
  %.reass.us.us7543.us.13 = mul i64 %factor.op.mul.us.us.us, %i.eox
  %gep7516.us.us.us.13 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.13
  %i.ety = load i16, ptr %gep7516.us.us.us.13, align 2, !tbaa !28
  %.reass.us.us7543.us.14 = mul i64 %factor.op.mul.us.us.us, %i.eoy
  %gep7516.us.us.us.14 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.14
  %i.etz = load i16, ptr %gep7516.us.us.us.14, align 2, !tbaa !28
  %.reass.us.us7543.us.15 = mul i64 %factor.op.mul.us.us.us, %i.eoz
  %gep7516.us.us.us.15 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.15
  %i.eua = load i16, ptr %gep7516.us.us.us.15, align 2, !tbaa !28
  %i.eub = insertelement <16 x i16> poison, i16 %i.etl, i64 0
  %i.euc = insertelement <16 x i16> %i.eub, i16 %i.etm, i64 1
  %i.eud = insertelement <16 x i16> %i.euc, i16 %i.etn, i64 2
  %i.eue = insertelement <16 x i16> %i.eud, i16 %i.eto, i64 3
  %i.euf = insertelement <16 x i16> %i.eue, i16 %i.etp, i64 4
  %i.eug = insertelement <16 x i16> %i.euf, i16 %i.etq, i64 5
  %i.euh = insertelement <16 x i16> %i.eug, i16 %i.etr, i64 6
  %i.eui = insertelement <16 x i16> %i.euh, i16 %i.ets, i64 7
  %i.euj = insertelement <16 x i16> %i.eui, i16 %i.ett, i64 8
  %i.euk = insertelement <16 x i16> %i.euj, i16 %i.etu, i64 9
  %i.eul = insertelement <16 x i16> %i.euk, i16 %i.etv, i64 10
  %i.eum = insertelement <16 x i16> %i.eul, i16 %i.etw, i64 11
  %i.eun = insertelement <16 x i16> %i.eum, i16 %i.etx, i64 12
  %i.euo = insertelement <16 x i16> %i.eun, i16 %i.ety, i64 13
  %i.eup = insertelement <16 x i16> %i.euo, i16 %i.etz, i64 14
  %i.euq = insertelement <16 x i16> %i.eup, i16 %i.eua, i64 15
  %i.eur = zext <16 x i16> %i.euq to <16 x i32>
  %i.eus = shl nuw <16 x i32> %i.eur, splat (i32 16)
  %.sroa.08566.60.vec.insert = bitcast <16 x i32> %i.eus to <16 x float> ; 2 uses
  %i.eut = load <16 x bfloat>, ptr %i.epp, align 32, !tbaa !26
  %i.euu = fpext fast <16 x bfloat> %i.eut to <16 x float>
  %i.euv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08566.60.vec.insert, <16 x float> nofpclass(nan inf) %i.euu, <16 x float> nofpclass(nan inf) %.56651.us.us.us)
  %i.euw = getelementptr inbounds nuw i8, ptr %i.epp, i64 32
  %i.eux = load <16 x bfloat>, ptr %i.euw, align 32, !tbaa !26
  %i.euy = fpext fast <16 x bfloat> %i.eux to <16 x float>
  %i.euz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08566.60.vec.insert, <16 x float> nofpclass(nan inf) %i.euy, <16 x float> nofpclass(nan inf) %.56643.us.us.us)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %.split2196.us.us.us, %bb.bs, %.lr.ph.split.us.us.us7564
  %.66652.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266487518.us.us.us, %.split2196.us.us.us ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.erh, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.euv, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.etf, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266487518.us.us.us, %bb.bs ] ; 2 uses
  %.66644.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266407519.us.us.us, %.split2196.us.us.us ], [ %i.eqm, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.eri, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.euz, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.etg, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266407519.us.us.us, %bb.bs ] ; 2 uses
  %indvars.iv.next8360 = add nuw nsw i64 %indvars.iv8359, 1 ; 2 uses
  %exitcond8363.not = icmp eq i64 %indvars.iv.next8360, %i.eod
  br i1 %exitcond8363.not, label %..loopexit6887_crit_edge.us.us, label %.lr.ph.split.us.us.us7564, !llvm.loop !143

..loopexit6887_crit_edge.us.us:                   ; preds = %bb.bt, %.preheader6886.us.us, %bb.br, %.lr.ph7531.split.us.us
  %.76653.us.us = phi nsz <16 x float> [ %.166477528.us.us, %.lr.ph7531.split.us.us ], [ %.166477528.us.us, %bb.br ], [ %.166477528.us.us, %.preheader6886.us.us ], [ %.66652.us.us.us, %bb.bt ] ; 2 uses
  %.76645.us.us = phi nsz <16 x float> [ %.166397529.us.us, %.lr.ph7531.split.us.us ], [ %.166397529.us.us, %bb.br ], [ %.166397529.us.us, %.preheader6886.us.us ], [ %.66644.us.us.us, %bb.bt ] ; 2 uses
  %indvars.iv.next8365 = add nuw nsw i64 %indvars.iv8364, 1 ; 2 uses
  %exitcond8368.not = icmp eq i64 %indvars.iv.next8365, %wide.trip.count8367
  br i1 %exitcond8368.not, label %._crit_edge7532.us, label %.lr.ph7531.split.us.us, !llvm.loop !144

._crit_edge7532.us:                               ; preds = %..loopexit6887_crit_edge.us.us, %.preheader6892.us
  %.us-phi7544.us = phi <16 x float> [ %.066467547.us, %.preheader6892.us ], [ %.76653.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %.us-phi7545.us = phi <16 x float> [ %.066387548.us, %.preheader6892.us ], [ %.76645.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %i.eva = getelementptr inbounds [2 x i8], ptr %.018947549.us, i64 %i.enj ; 2 uses
  %indvars.iv.next8370 = add nuw nsw i64 %indvars.iv8369, 16 ; 3 uses
  %i.evb = icmp slt i64 %indvars.iv.next8370, %invariant.op8794
  br i1 %i.evb, label %.preheader6892.us, label %._crit_edge7553.loopexit, !llvm.loop !145

._crit_edge7553.loopexit:                         ; preds = %._crit_edge7532.us
  %i.evc = trunc nuw nsw i64 %indvars.iv.next8370 to i32
  br label %._crit_edge7553

._crit_edge7553:                                  ; preds = %.preheader6892.lr.ph, %._crit_edge7553.loopexit, %_ZN4ncnn3MatD2Ev.exit2235
  %.06646.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7544.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.06638.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7545.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.01894.lcssa = phi ptr [ %i.ene, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.eva, %._crit_edge7553.loopexit ], [ %scevgep8354, %.preheader6892.lr.ph ] ; 3 uses
  %.01889.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.evc, %._crit_edge7553.loopexit ], [ %i.bpn, %.preheader6892.lr.ph ] ; 6 uses
  %i.evd = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eve = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evf = fadd fast <8 x float> %i.evd, %i.eve   ; 2 uses
  %i.evg = shufflevector <8 x float> %i.evf, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evh = shufflevector <8 x float> %i.evf, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.evi = fadd fast <4 x float> %i.evg, %i.evh   ; 4 uses
  %i.evj = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evk = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evl = fadd fast <8 x float> %i.evj, %i.evk   ; 2 uses
  %i.evm = shufflevector <8 x float> %i.evl, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evn = shufflevector <8 x float> %i.evl, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.evo = fadd fast <4 x float> %i.evm, %i.evn   ; 4 uses
  %i.evp = or disjoint i32 %.01889.lcssa, 7
  %i.evq = icmp slt i32 %i.evp, %i.boh
  br i1 %i.evq, label %.preheader6891.lr.ph, label %._crit_edge7598

.preheader6891.lr.ph:                             ; preds = %._crit_edge7553
  %i.evr = load i32, ptr %i.j, align 4
  %invariant.op7586 = sub i32 %.neg6818, %i.evr
  %i.evs = load i32, ptr %i.f, align 4            ; 2 uses
  %i.evt = load i32, ptr %i.a, align 4
  %.fr8045 = freeze i32 %i.evt                    ; 2 uses
  %i.evu = icmp sgt i32 %.fr8045, 0
  %i.evv = load i32, ptr %i.i, align 4
  %.neg6816 = add nuw nsw i32 %.019317777, 1
  %invariant.op7577 = sub i32 %.neg6816, %i.evv
  %i.evw = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eng, label %.preheader6891.us.preheader, label %.preheader6891.preheader

.preheader6891.preheader:                         ; preds = %.preheader6891.lr.ph
  %i.evx = add i32 %.01889.lcssa, 15
  %smax8372 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.evx)
  %i.evy = add i32 %smax8372, -8
  %i.evz = sub i32 %i.evy, %.01889.lcssa          ; 2 uses
  %i.ewa = lshr i32 %i.evz, 2
  %i.ewb = and i32 %i.ewa, 1073741822
  %narrow8758 = add nuw nsw i32 %i.ewb, 2
  %i.ewc = zext nneg i32 %narrow8758 to i64
  %i.ewd = mul nsw i64 %i.enl, %i.ewc
  %scevgep8373 = getelementptr i8, ptr %.01894.lcssa, i64 %i.ewd
  %i.ewe = add i32 %.01889.lcssa, 8
  %i.ewf = and i32 %i.evz, -8
  %i.ewg = add i32 %i.ewe, %i.ewf
  br label %._crit_edge7598

.preheader6891.us.preheader:                      ; preds = %.preheader6891.lr.ph
  %i.ewh = load i32, ptr %i.c, align 4
  %i.ewi = load i32, ptr %i.d, align 4
  %i.ewj = zext i32 %.fr8045 to i64               ; 2 uses
  %i.ewk = zext i32 %.01889.lcssa to i64
  br label %.preheader6891.us

.preheader6891.us:                                ; preds = %.preheader6891.us.preheader, %._crit_edge7583.us
  %indvars.iv8388 = phi i64 [ %i.ewk, %.preheader6891.us.preheader ], [ %indvars.iv.next8389, %._crit_edge7583.us ] ; 11 uses
  %.118957594.us = phi ptr [ %.01894.lcssa, %.preheader6891.us.preheader ], [ %i.fap, %._crit_edge7583.us ] ; 2 uses
  %.066287593.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7590.us, %._crit_edge7583.us ] ; 2 uses
  %.066337592.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7589.us, %._crit_edge7583.us ] ; 2 uses
  %i.ewl = trunc nuw i64 %indvars.iv8388 to i32
  %i.ewm = lshr exact i32 %i.ewl, 2               ; 2 uses
  %i.ewn = zext nneg i32 %i.ewm to i64
  %i.ewo = or disjoint i32 %i.ewm, 1
  %i.ewp = zext nneg i32 %i.ewo to i64
  %i.ewq = lshr exact i64 %indvars.iv8388, 3
  %i.ewr = and i64 %i.ewq, 536870911
  br i1 %i.evu, label %.lr.ph7582.split.us.us.preheader, label %._crit_edge7583.us

.lr.ph7582.split.us.us.preheader:                 ; preds = %.preheader6891.us
  %i.ews = or disjoint i64 %indvars.iv8388, 1
  %i.ewt = or disjoint i64 %indvars.iv8388, 2
  %i.ewu = or disjoint i64 %indvars.iv8388, 3
  %i.ewv = or disjoint i64 %indvars.iv8388, 4
  %i.eww = or disjoint i64 %indvars.iv8388, 5
  %i.ewx = or disjoint i64 %indvars.iv8388, 6
  %i.ewy = or disjoint i64 %indvars.iv8388, 7
  br label %.lr.ph7582.split.us.us

.lr.ph7582.split.us.us:                           ; preds = %.lr.ph7582.split.us.us.preheader, %..loopexit6885_crit_edge.us.us
  %indvars.iv8383 = phi i64 [ 0, %.lr.ph7582.split.us.us.preheader ], [ %indvars.iv.next8384, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166297580.us.us = phi <8 x float> [ %.066287593.us, %.lr.ph7582.split.us.us.preheader ], [ %.46632.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166347579.us.us = phi <8 x float> [ %.066337592.us, %.lr.ph7582.split.us.us.preheader ], [ %.46637.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %i.ewz = trunc i64 %indvars.iv8383 to i32
  %i.exa = mul i32 %i.ewi, %i.ewz
  %.reass7587.us.us = add i32 %i.exa, %invariant.op7586 ; 3 uses
  %i.exb = icmp slt i32 %.reass7587.us.us, 0
  br i1 %i.exb, label %..loopexit6885_crit_edge.us.us, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph7582.split.us.us
  %i.exc = srem i32 %.reass7587.us.us, %i.evs
  %i.exd = sdiv i32 %.reass7587.us.us, %i.evs     ; 2 uses
  %.not2123.us.us = icmp eq i32 %i.exc, 0
  %.not2124.us.us = icmp slt i32 %i.exd, %i.bol
  %or.cond9007 = select i1 %.not2123.us.us, i1 %.not2124.us.us, i1 false
  br i1 %or.cond9007, label %.preheader6884.us.us, label %..loopexit6885_crit_edge.us.us

.preheader6884.us.us:                             ; preds = %bb.bu
  %i.exe = mul nuw nsw i64 %indvars.iv8383, %i.ewj
  %i.exf = sext i32 %i.exd to i64                 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %.preheader6884.us.us
  %indvars.iv8378 = phi i64 [ %indvars.iv.next8379, %bb.by ], [ 0, %.preheader6884.us.us ] ; 3 uses
  %.266307573.us.us = phi <8 x float> [ %.36631.us.us, %bb.by ], [ %.166297580.us.us, %.preheader6884.us.us ] ; 4 uses
  %.266357572.us.us = phi <8 x float> [ %.36636.us.us, %bb.by ], [ %.166347579.us.us, %.preheader6884.us.us ] ; 4 uses
  %i.exg = trunc i64 %indvars.iv8378 to i32
  %i.exh = mul i32 %i.ewh, %i.exg
  %.reass7578.us.us = add i32 %i.exh, %invariant.op7577 ; 3 uses
  %i.exi = icmp slt i32 %.reass7578.us.us, 0
  br i1 %i.exi, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.exj = srem i32 %.reass7578.us.us, %i.evw
  %i.exk = sdiv i32 %.reass7578.us.us, %i.evw     ; 4 uses
  %.not2125.us.us = icmp eq i32 %i.exj, 0
  %.not2126.us.us = icmp slt i32 %i.exk, %i.boj
  %or.cond9008 = select i1 %.not2125.us.us, i1 %.not2126.us.us, i1 false
  br i1 %or.cond9008, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.exl = add nuw nsw i64 %i.exe, %indvars.iv8378
  %i.exm = shl i64 %i.exl, 4
  %i.exn = and i64 %i.exm, 4294967280
  %i.exo = getelementptr inbounds nuw [2 x i8], ptr %.118957594.us, i64 %i.exn ; 2 uses
  switch i32 %.fr8043, label %bb.by [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2226.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2225.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2223.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.bx
  %i.exp = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !252
  %i.exq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !252
  %i.exr = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !252
  %i.exs = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !252 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.exr, %i.exs   ; 8 uses
  %i.ext = sext i32 %i.exp to i64
  %i.exu = mul nsw i64 %i.ext, %i.exf
  %i.exv = mul i64 %i.exu, %i.exs
  %invariant.gep.us.us = getelementptr i8, ptr %i.exq, i64 %i.exv
  %i.exw = sext i32 %i.exk to i64
  %invariant.gep7569.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us, i64 %i.exw ; 8 uses
  %.reass.us7588.us = mul i64 %factor.op.mul.us.us, %indvars.iv8388
  %gep7570.us.us = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us
  %i.exx = load i16, ptr %gep7570.us.us, align 2, !tbaa !28
  %.reass.us7588.us.1 = mul i64 %factor.op.mul.us.us, %i.ews
  %gep7570.us.us.1 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.1
  %i.exy = load i16, ptr %gep7570.us.us.1, align 2, !tbaa !28
  %.reass.us7588.us.2 = mul i64 %factor.op.mul.us.us, %i.ewt
  %gep7570.us.us.2 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.2
  %i.exz = load i16, ptr %gep7570.us.us.2, align 2, !tbaa !28
  %.reass.us7588.us.3 = mul i64 %factor.op.mul.us.us, %i.ewu
  %gep7570.us.us.3 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.3
  %i.eya = load i16, ptr %gep7570.us.us.3, align 2, !tbaa !28
  %.reass.us7588.us.4 = mul i64 %factor.op.mul.us.us, %i.ewv
  %gep7570.us.us.4 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.4
  %i.eyb = load i16, ptr %gep7570.us.us.4, align 2, !tbaa !28
  %.reass.us7588.us.5 = mul i64 %factor.op.mul.us.us, %i.eww
  %gep7570.us.us.5 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.5
  %i.eyc = load i16, ptr %gep7570.us.us.5, align 2, !tbaa !28
  %.reass.us7588.us.6 = mul i64 %factor.op.mul.us.us, %i.ewx
  %gep7570.us.us.6 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.6
  %i.eyd = load i16, ptr %gep7570.us.us.6, align 2, !tbaa !28
  %.reass.us7588.us.7 = mul i64 %factor.op.mul.us.us, %i.ewy
  %gep7570.us.us.7 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.7
  %i.eye = load i16, ptr %gep7570.us.us.7, align 2, !tbaa !28
  %i.eyf = insertelement <8 x i16> poison, i16 %i.exx, i64 0
  %i.eyg = insertelement <8 x i16> %i.eyf, i16 %i.exy, i64 1
  %i.eyh = insertelement <8 x i16> %i.eyg, i16 %i.exz, i64 2
  %i.eyi = insertelement <8 x i16> %i.eyh, i16 %i.eya, i64 3
  %i.eyj = insertelement <8 x i16> %i.eyi, i16 %i.eyb, i64 4
  %i.eyk = insertelement <8 x i16> %i.eyj, i16 %i.eyc, i64 5
  %i.eyl = insertelement <8 x i16> %i.eyk, i16 %i.eyd, i64 6
  %i.eym = insertelement <8 x i16> %i.eyl, i16 %i.eye, i64 7
  %i.eyn = zext <8 x i16> %i.eym to <8 x i32>
  %i.eyo = shl nuw <8 x i32> %i.eyn, splat (i32 16)
  %.sroa.08564.28.vec.insert = bitcast <8 x i32> %i.eyo to <8 x float>
  br label %.sink.split8896

_ZN4ncnn3MatD2Ev.exit2225.us.us:                  ; preds = %bb.bx
  %i.eyp = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !253
  %i.eyq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !253 ; 2 uses
  %i.eyr = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !253 ; 2 uses
  %i.eys = mul i64 %i.eyr, %i.ewn
  %i.eyt = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !253 ; 3 uses
  %i.eyu = mul i64 %i.eys, %i.eyt
  %i.eyv = getelementptr inbounds nuw i8, ptr %i.eyq, i64 %i.eyu
  %i.eyw = sext i32 %i.eyp to i64
  %i.eyx = mul nsw i64 %i.eyw, %i.exf
  %i.eyy = mul i64 %i.eyx, %i.eyt                 ; 2 uses
  %i.eyz = getelementptr inbounds nuw i8, ptr %i.eyv, i64 %i.eyy
  %i.eza = shl nsw i32 %i.exk, 2
  %i.ezb = sext i32 %i.eza to i64                 ; 2 uses
  %i.ezc = getelementptr inbounds [2 x i8], ptr %i.eyz, i64 %i.ezb
  %i.ezd = mul i64 %i.eyr, %i.ewp
  %i.eze = mul i64 %i.ezd, %i.eyt
  %i.ezf = getelementptr inbounds nuw i8, ptr %i.eyq, i64 %i.eze
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.ezf, i64 %i.eyy
  %i.ezh = getelementptr inbounds [2 x i8], ptr %i.ezg, i64 %i.ezb
  %i.ezi = load i64, ptr %i.ezc, align 1, !tbaa !26
  %i.ezj = insertelement <2 x i64> poison, i64 %i.ezi, i64 0
  %i.ezk = bitcast <2 x i64> %i.ezj to <8 x i16>
  %i.ezl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezm = load i64, ptr %i.ezh, align 1, !tbaa !26
  %i.ezn = insertelement <2 x i64> poison, i64 %i.ezm, i64 0
  %i.ezo = bitcast <2 x i64> %i.ezn to <8 x i16>
  %i.ezp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezq = shufflevector <8 x i16> %i.ezl, <8 x i16> %i.ezp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ezr = bitcast <16 x i16> %i.ezq to <8 x float>
  br label %.sink.split8896

_ZN4ncnn3MatD2Ev.exit2226.us.us:                  ; preds = %bb.bx
  %i.ezs = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !254
  %i.ezt = load ptr, ptr %0, align 8, !tbaa !19, !noalias !254
  %i.ezu = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !254
  %i.ezv = mul i64 %i.ezu, %i.ewr
  %i.ezw = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !254 ; 2 uses
  %i.ezx = mul i64 %i.ezv, %i.ezw
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.ezt, i64 %i.ezx
  %i.ezz = sext i32 %i.ezs to i64
  %i.faa = mul nsw i64 %i.ezz, %i.exf
  %i.fab = mul i64 %i.faa, %i.ezw
  %i.fac = getelementptr inbounds nuw i8, ptr %i.ezy, i64 %i.fab
  %i.fad = shl nsw i32 %i.exk, 3
  %i.fae = sext i32 %i.fad to i64
  %i.faf = getelementptr inbounds [2 x i8], ptr %i.fac, i64 %i.fae
  %i.fag = load <8 x bfloat>, ptr %i.faf, align 16, !tbaa !26
  %i.fah = fpext fast <8 x bfloat> %i.fag to <8 x float>
  br label %.sink.split8896

.sink.split8896:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %_ZN4ncnn3MatD2Ev.exit2225.us.us, %_ZN4ncnn3MatD2Ev.exit2226.us.us
  %.sink8900 = phi <8 x float> [ %i.fah, %_ZN4ncnn3MatD2Ev.exit2226.us.us ], [ %i.ezr, %_ZN4ncnn3MatD2Ev.exit2225.us.us ], [ %.sroa.08564.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %i.fai = load <8 x bfloat>, ptr %i.exo, align 16, !tbaa !26
  %i.faj = fpext fast <8 x bfloat> %i.fai to <8 x float>
  %i.fak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8900, <8 x float> nofpclass(nan inf) %i.faj, <8 x float> nofpclass(nan inf) %.266357572.us.us)
  %i.fal = getelementptr inbounds nuw i8, ptr %i.exo, i64 16
  %i.fam = load <8 x bfloat>, ptr %i.fal, align 16, !tbaa !26
  %i.fan = fpext fast <8 x bfloat> %i.fam to <8 x float>
  %i.fao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8900, <8 x float> nofpclass(nan inf) %i.fan, <8 x float> nofpclass(nan inf) %.266307573.us.us)
  br label %bb.by

bb.by:                                            ; preds = %.sink.split8896, %bb.bx, %bb.bw, %bb.bv
  %.36636.us.us = phi nsz <8 x float> [ %.266357572.us.us, %bb.bv ], [ %.266357572.us.us, %bb.bx ], [ %.266357572.us.us, %bb.bw ], [ %i.fak, %.sink.split8896 ] ; 2 uses
  %.36631.us.us = phi nsz <8 x float> [ %.266307573.us.us, %bb.bv ], [ %.266307573.us.us, %bb.bx ], [ %.266307573.us.us, %bb.bw ], [ %i.fao, %.sink.split8896 ] ; 2 uses
  %indvars.iv.next8379 = add nuw nsw i64 %indvars.iv8378, 1 ; 2 uses
  %exitcond8382.not = icmp eq i64 %indvars.iv.next8379, %i.ewj
  br i1 %exitcond8382.not, label %..loopexit6885_crit_edge.us.us, label %bb.bv, !llvm.loop !152

..loopexit6885_crit_edge.us.us:                   ; preds = %bb.by, %bb.bu, %.lr.ph7582.split.us.us
  %.46637.us.us = phi nsz <8 x float> [ %.166347579.us.us, %.lr.ph7582.split.us.us ], [ %.166347579.us.us, %bb.bu ], [ %.36636.us.us, %bb.by ] ; 2 uses
  %.46632.us.us = phi nsz <8 x float> [ %.166297580.us.us, %.lr.ph7582.split.us.us ], [ %.166297580.us.us, %bb.bu ], [ %.36631.us.us, %bb.by ] ; 2 uses
  %indvars.iv.next8384 = add nuw nsw i64 %indvars.iv8383, 1 ; 2 uses
  %exitcond8387.not = icmp eq i64 %indvars.iv.next8384, %wide.trip.count8386
  br i1 %exitcond8387.not, label %._crit_edge7583.us, label %.lr.ph7582.split.us.us, !llvm.loop !153

._crit_edge7583.us:                               ; preds = %..loopexit6885_crit_edge.us.us, %.preheader6891.us
  %.us-phi7589.us = phi <8 x float> [ %.066337592.us, %.preheader6891.us ], [ %.46637.us.us, %..loopexit6885_crit_edge.us.us ] ; 2 uses
  %.us-phi7590.us = phi <8 x float> [ %.066287593.us, %.preheader6891.us ], [ %.46632.us.us, %..loopexit6885_crit_edge.us.us ] ; 2 uses
  %i.fap = getelementptr inbounds [2 x i8], ptr %.118957594.us, i64 %i.enl ; 2 uses
  %indvars.iv.next8389 = add nuw nsw i64 %indvars.iv8388, 8 ; 3 uses
  %i.faq = trunc i64 %indvars.iv.next8389 to i32
  %i.far = or i32 %i.faq, 7
  %i.fas = icmp slt i32 %i.far, %i.boh
  br i1 %i.fas, label %.preheader6891.us, label %._crit_edge7598.loopexit, !llvm.loop !154

._crit_edge7598.loopexit:                         ; preds = %._crit_edge7583.us
  %i.fat = trunc nuw i64 %indvars.iv.next8389 to i32
  br label %._crit_edge7598

._crit_edge7598:                                  ; preds = %.preheader6891.preheader, %._crit_edge7598.loopexit, %._crit_edge7553
  %.06633.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7553 ], [ %.us-phi7589.us, %._crit_edge7598.loopexit ], [ zeroinitializer, %.preheader6891.preheader ] ; 2 uses
  %.06628.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7553 ], [ %.us-phi7590.us, %._crit_edge7598.loopexit ], [ zeroinitializer, %.preheader6891.preheader ] ; 2 uses
  %.11895.lcssa = phi ptr [ %.01894.lcssa, %._crit_edge7553 ], [ %i.fap, %._crit_edge7598.loopexit ], [ %scevgep8373, %.preheader6891.preheader ] ; 4 uses
  %.11890.lcssa = phi i32 [ %.01889.lcssa, %._crit_edge7553 ], [ %i.fat, %._crit_edge7598.loopexit ], [ %i.ewg, %.preheader6891.preheader ] ; 9 uses
  %i.fau = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fav = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.faw = fadd fast <4 x float> %i.fau, %i.fav   ; 4 uses
  %i.fax = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fay = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.faz = fadd fast <4 x float> %i.fax, %i.fay   ; 4 uses
  %i.fba = or disjoint i32 %.11890.lcssa, 3
  %i.fbb = icmp slt i32 %i.fba, %i.boh
  br i1 %i.fbb, label %.preheader6890.lr.ph, label %._crit_edge7668

.preheader6890.lr.ph:                             ; preds = %._crit_edge7598
  %i.fbc = load i32, ptr %i.d, align 4
  %i.fbd = load i32, ptr %i.j, align 4
  %invariant.op7648 = sub i32 %.neg6818, %i.fbd
  %i.fbe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fbf = load i32, ptr %i.a, align 4
  %.fr8046 = freeze i32 %i.fbf                    ; 2 uses
  %i.fbg = load i32, ptr %i.c, align 4            ; 2 uses
  %i.fbh = load i32, ptr %i.i, align 4
  %.neg6812 = add nuw nsw i32 %.019317777, 1
  %invariant.op7622 = sub i32 %.neg6812, %i.fbh   ; 2 uses
  %i.fbi = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.eng, label %.preheader6890.lr.ph.split.us, label %.preheader6890.preheader

.preheader6890.preheader:                         ; preds = %.preheader6890.lr.ph
  %i.fbj = add i32 %.11890.lcssa, 7
  %smax8391 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fbj)
  %i.fbk = add i32 %smax8391, -4
  %i.fbl = sub i32 %i.fbk, %.11890.lcssa          ; 2 uses
  %i.fbm = lshr i32 %i.fbl, 1
  %i.fbn = and i32 %i.fbm, 2147483646
  %narrow8759 = add nuw i32 %i.fbn, 2
  %i.fbo = zext i32 %narrow8759 to i64
  %i.fbp = mul nsw i64 %i.enn, %i.fbo
  %scevgep8392 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fbp
  %i.fbq = add i32 %.11890.lcssa, 4
  %i.fbr = and i32 %i.fbl, -4
  %i.fbs = add i32 %i.fbq, %i.fbr
  br label %._crit_edge7668

.preheader6890.lr.ph.split.us:                    ; preds = %.preheader6890.lr.ph
  %i.fbt = icmp sgt i32 %.fr8046, 0
  br i1 %i.fbt, label %.preheader6890.us.us.preheader, label %.preheader6890.us.preheader

.preheader6890.us.preheader:                      ; preds = %.preheader6890.lr.ph.split.us
  %i.fbu = add i32 %.11890.lcssa, 7
  %smax8393 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fbu)
  %i.fbv = add i32 %smax8393, -4
  %i.fbw = sub i32 %i.fbv, %.11890.lcssa          ; 2 uses
  %i.fbx = lshr i32 %i.fbw, 1
  %i.fby = and i32 %i.fbx, 2147483646
  %narrow8760 = add nuw i32 %i.fby, 2
  %i.fbz = zext i32 %narrow8760 to i64
  %i.fca = mul nsw i64 %i.enn, %i.fbz
  %scevgep8394 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fca
  %i.fcb = add i32 %.11890.lcssa, 4
  %i.fcc = and i32 %i.fbw, -4
  %i.fcd = add i32 %i.fcb, %i.fcc
  br label %._crit_edge7668

.preheader6890.us.us.preheader:                   ; preds = %.preheader6890.lr.ph.split.us
  %i.fce = zext nneg i32 %.fr8046 to i64          ; 3 uses
  %i.fcf = zext i32 %.11890.lcssa to i64
  br label %.preheader6890.us.us

.preheader6890.us.us:                             ; preds = %.preheader6890.us.us.preheader, %._crit_edge7645.split.us.us.us
  %indvars.iv8414 = phi i64 [ %i.fcf, %.preheader6890.us.us.preheader ], [ %indvars.iv.next8415, %._crit_edge7645.split.us.us.us ] ; 6 uses
  %.218967664.us.us = phi ptr [ %.11895.lcssa, %.preheader6890.us.us.preheader ], [ %i.ffy, %._crit_edge7645.split.us.us.us ] ; 3 uses
  %.066187663.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46622.us.us.us, %._crit_edge7645.split.us.us.us ]
  %.066237662.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46627.us.us.us, %._crit_edge7645.split.us.us.us ]
  %i.fcg = lshr exact i64 %indvars.iv8414, 2
  %i.fch = and i64 %i.fcg, 1073741823
  %i.fci = or disjoint i64 %indvars.iv8414, 1
  %i.fcj = or disjoint i64 %indvars.iv8414, 2
  %i.fck = or disjoint i64 %indvars.iv8414, 3
  br label %bb.bz

bb.bz:                                            ; preds = %..loopexit6883_crit_edge.us.us.us, %.preheader6890.us.us
  %indvars.iv8409 = phi i64 [ %indvars.iv.next8410, %..loopexit6883_crit_edge.us.us.us ], [ 0, %.preheader6890.us.us ] ; 3 uses
  %.166197642.us.us.us = phi <4 x float> [ %.46622.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066187663.us.us, %.preheader6890.us.us ] ; 5 uses
  %.166247641.us.us.us = phi <4 x float> [ %.46627.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066237662.us.us, %.preheader6890.us.us ] ; 5 uses
  %i.fcl = trunc i64 %indvars.iv8409 to i32
  %i.fcm = mul i32 %i.fbc, %i.fcl
  %.reass.us7649.us.us = add i32 %i.fcm, %invariant.op7648 ; 3 uses
  %i.fcn = icmp slt i32 %.reass.us7649.us.us, 0
  br i1 %i.fcn, label %..loopexit6883_crit_edge.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fco = srem i32 %.reass.us7649.us.us, %i.fbe
  %i.fcp = sdiv i32 %.reass.us7649.us.us, %i.fbe  ; 2 uses
  %.not2119.us.us.us = icmp eq i32 %i.fco, 0
  %.not2120.us.us.us = icmp slt i32 %i.fcp, %i.bol
  %or.cond9009 = select i1 %.not2119.us.us.us, i1 %.not2120.us.us.us, i1 false
  br i1 %or.cond9009, label %.preheader6882.us.us.us, label %..loopexit6883_crit_edge.us.us.us

.preheader6882.us.us.us:                          ; preds = %bb.ca
  %i.fcq = mul nuw nsw i64 %indvars.iv8409, %i.fce ; 2 uses
  %i.fcr = sext i32 %i.fcp to i64                 ; 2 uses
  switch i32 %.fr8043, label %..loopexit6883_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7680.us
    i32 1, label %.lr.ph.split.us7626.us.us.us
  ]

.lr.ph.split.us7626.us.us.us:                     ; preds = %.preheader6882.us.us.us, %bb.cc
  %indvars.iv8399 = phi i64 [ %indvars.iv.next8400, %bb.cc ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us7628.us.us.us = phi <4 x float> [ %.36621.us7635.us.us.us, %bb.cc ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us7629.us.us.us = phi <4 x float> [ %.36626.us7634.us.us.us, %bb.cc ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.fcs = trunc i64 %indvars.iv8399 to i32
  %i.fct = mul i32 %i.fbg, %i.fcs
  %.reass7623.us7630.us.us.us = add i32 %i.fct, %invariant.op7622 ; 3 uses
  %i.fcu = icmp slt i32 %.reass7623.us7630.us.us.us, 0
  br i1 %i.fcu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us7626.us.us.us
  %i.fcv = srem i32 %.reass7623.us7630.us.us.us, %i.fbi
  %i.fcw = sdiv i32 %.reass7623.us7630.us.us.us, %i.fbi ; 2 uses
  %.not2121.us7631.us.us.us = icmp eq i32 %i.fcv, 0
  %.not2122.us7632.us.us.us = icmp slt i32 %i.fcw, %i.boj
  %or.cond9010 = select i1 %.not2121.us7631.us.us.us, i1 %.not2122.us7632.us.us.us, i1 false
  br i1 %or.cond9010, label %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us:            ; preds = %bb.cb
  %i.fcx = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !255
  %i.fcy = load ptr, ptr %0, align 8, !tbaa !19, !noalias !255
  %i.fcz = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !255
  %i.fda = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !255 ; 2 uses
  %factor.op.mul.us.us7650.us.us = mul i64 %i.fcz, %i.fda ; 4 uses
  %i.fdb = sext i32 %i.fcx to i64
  %i.fdc = mul nsw i64 %i.fdb, %i.fcr
  %i.fdd = mul i64 %i.fdc, %i.fda
  %invariant.gep.us.us7651.us.us = getelementptr i8, ptr %i.fcy, i64 %i.fdd
  %i.fde = sext i32 %i.fcw to i64
  %invariant.gep7614.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7651.us.us, i64 %i.fde ; 4 uses
  %.reass.us7633.us.us.us = mul i64 %factor.op.mul.us.us7650.us.us, %indvars.iv8414
  %gep7615.us.us.us.us = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us
  %i.fdf = load i16, ptr %gep7615.us.us.us.us, align 2, !tbaa !28
  %.reass.us7633.us.us.us.1 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fci
  %gep7615.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.1
  %i.fdg = load i16, ptr %gep7615.us.us.us.us.1, align 2, !tbaa !28
  %.reass.us7633.us.us.us.2 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fcj
  %gep7615.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.2
  %i.fdh = load i16, ptr %gep7615.us.us.us.us.2, align 2, !tbaa !28
  %.reass.us7633.us.us.us.3 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fck
  %gep7615.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.3
  %i.fdi = load i16, ptr %gep7615.us.us.us.us.3, align 2, !tbaa !28
  %i.fdj = zext i16 %i.fdi to i32
  %i.fdk = zext i16 %i.fdh to i32
  %i.fdl = zext i16 %i.fdg to i32
  %i.fdm = zext i16 %i.fdf to i32
  %i.fdn = insertelement <4 x i32> poison, i32 %i.fdm, i64 0
  %i.fdo = insertelement <4 x i32> %i.fdn, i32 %i.fdl, i64 1
  %i.fdp = insertelement <4 x i32> %i.fdo, i32 %i.fdk, i64 2
  %i.fdq = insertelement <4 x i32> %i.fdp, i32 %i.fdj, i64 3
  %i.fdr = shl nuw <4 x i32> %i.fdq, splat (i32 16)
  %.sroa.08562.12.vec.insert = bitcast <4 x i32> %i.fdr to <4 x float> ; 2 uses
  %i.fds = add nuw nsw i64 %i.fcq, %indvars.iv8399
  %i.fdt = shl i64 %i.fds, 3
  %i.fdu = and i64 %i.fdt, 4294967288
  %i.fdv = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.fdu ; 2 uses
  %i.fdw = load i64, ptr %i.fdv, align 1, !tbaa !26
  %i.fdx = insertelement <2 x i64> poison, i64 %i.fdw, i64 0
  %i.fdy = bitcast <2 x i64> %i.fdx to <8 x i16>
  %i.fdz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fea = bitcast <8 x i16> %i.fdz to <4 x float>
  %i.feb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08562.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fea, <4 x float> nofpclass(nan inf) %.266257617.us7629.us.us.us)
  %i.fec = getelementptr inbounds nuw i8, ptr %i.fdv, i64 8
  %i.fed = load i64, ptr %i.fec, align 1, !tbaa !26
  %i.fee = insertelement <2 x i64> poison, i64 %i.fed, i64 0
  %i.fef = bitcast <2 x i64> %i.fee to <8 x i16>
  %i.feg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.feh = bitcast <8 x i16> %i.feg to <4 x float>
  %i.fei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08562.12.vec.insert, <4 x float> nofpclass(nan inf) %i.feh, <4 x float> nofpclass(nan inf) %.266207618.us7628.us.us.us)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, %bb.cb, %.lr.ph.split.us7626.us.us.us
  %.36626.us7634.us.us.us = phi nsz <4 x float> [ %.266257617.us7629.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.feb, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266257617.us7629.us.us.us, %bb.cb ] ; 2 uses
  %.36621.us7635.us.us.us = phi nsz <4 x float> [ %.266207618.us7628.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.fei, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266207618.us7628.us.us.us, %bb.cb ] ; 2 uses
  %indvars.iv.next8400 = add nuw nsw i64 %indvars.iv8399, 1 ; 2 uses
  %exitcond8403.not = icmp eq i64 %indvars.iv.next8400, %i.fce
  br i1 %exitcond8403.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us7626.us.us.us, !llvm.loop !157

.lr.ph.split.us.us.us7680.us:                     ; preds = %.preheader6882.us.us.us, %bb.ce
  %indvars.iv8404 = phi i64 [ %indvars.iv.next8405, %bb.ce ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us.us.us.us = phi <4 x float> [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us.us.us.us = phi <4 x float> [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.fej = trunc i64 %indvars.iv8404 to i32
  %i.fek = mul i32 %i.fbg, %i.fej
  %.reass7623.us.us.us.us = add i32 %i.fek, %invariant.op7622 ; 3 uses
  %i.fel = icmp slt i32 %.reass7623.us.us.us.us, 0
  br i1 %i.fel, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us.us.us7680.us
  %i.fem = srem i32 %.reass7623.us.us.us.us, %i.fbi
  %i.fen = sdiv i32 %.reass7623.us.us.us.us, %i.fbi ; 2 uses
  %.not2121.us.us.us.us = icmp eq i32 %i.fem, 0
  %.not2122.us.us.us.us = icmp slt i32 %i.fen, %i.boj
  %or.cond9011 = select i1 %.not2121.us.us.us.us, i1 %.not2122.us.us.us.us, i1 false
  br i1 %or.cond9011, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us:            ; preds = %bb.cd
  %i.feo = add nuw nsw i64 %i.fcq, %indvars.iv8404
  %i.fep = shl i64 %i.feo, 3
  %i.feq = and i64 %i.fep, 4294967288
  %i.fer = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.feq ; 2 uses
  %i.fes = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !256
  %i.fet = load ptr, ptr %0, align 8, !tbaa !19, !noalias !256
  %i.feu = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !256
  %i.fev = mul i64 %i.feu, %i.fch
  %i.few = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !256 ; 2 uses
  %i.fex = mul i64 %i.fev, %i.few
  %i.fey = getelementptr inbounds nuw i8, ptr %i.fet, i64 %i.fex
  %i.fez = sext i32 %i.fes to i64
  %i.ffa = mul nsw i64 %i.fez, %i.fcr
  %i.ffb = mul i64 %i.ffa, %i.few
  %i.ffc = getelementptr inbounds nuw i8, ptr %i.fey, i64 %i.ffb
  %i.ffd = shl nsw i32 %i.fen, 2
  %i.ffe = sext i32 %i.ffd to i64
  %i.fff = getelementptr inbounds [2 x i8], ptr %i.ffc, i64 %i.ffe
  %i.ffg = load i64, ptr %i.fff, align 1, !tbaa !26
  %i.ffh = insertelement <2 x i64> poison, i64 %i.ffg, i64 0
  %i.ffi = bitcast <2 x i64> %i.ffh to <8 x i16>
  %i.ffj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffk = bitcast <8 x i16> %i.ffj to <4 x float> ; 2 uses
  %i.ffl = load i64, ptr %i.fer, align 1, !tbaa !26
  %i.ffm = insertelement <2 x i64> poison, i64 %i.ffl, i64 0
  %i.ffn = bitcast <2 x i64> %i.ffm to <8 x i16>
  %i.ffo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffp = bitcast <8 x i16> %i.ffo to <4 x float>
  %i.ffq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ffk, <4 x float> nofpclass(nan inf) %i.ffp, <4 x float> nofpclass(nan inf) %.266257617.us.us.us.us)
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.fer, i64 8
  %i.ffs = load i64, ptr %i.ffr, align 1, !tbaa !26
  %i.fft = insertelement <2 x i64> poison, i64 %i.ffs, i64 0
  %i.ffu = bitcast <2 x i64> %i.fft to <8 x i16>
  %i.ffv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffw = bitcast <8 x i16> %i.ffv to <4 x float>
  %i.ffx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ffk, <4 x float> nofpclass(nan inf) %i.ffw, <4 x float> nofpclass(nan inf) %.266207618.us.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, %bb.cd, %.lr.ph.split.us.us.us7680.us
  %.36626.us.us.us.us = phi nsz <4 x float> [ %.266257617.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266257617.us.us.us.us, %bb.cd ], [ %i.ffq, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %.36621.us.us.us.us = phi nsz <4 x float> [ %.266207618.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266207618.us.us.us.us, %bb.cd ], [ %i.ffx, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %indvars.iv.next8405 = add nuw nsw i64 %indvars.iv8404, 1 ; 2 uses
  %exitcond8408.not = icmp eq i64 %indvars.iv.next8405, %i.fce
  br i1 %exitcond8408.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7680.us, !llvm.loop !157

..loopexit6883_crit_edge.us.us.us:                ; preds = %bb.cc, %bb.ce, %.preheader6882.us.us.us, %bb.ca, %bb.bz
  %.46627.us.us.us = phi nsz <4 x float> [ %.166247641.us.us.us, %bb.bz ], [ %.166247641.us.us.us, %bb.ca ], [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ], [ %.36626.us7634.us.us.us, %bb.cc ] ; 3 uses
  %.46622.us.us.us = phi nsz <4 x float> [ %.166197642.us.us.us, %bb.bz ], [ %.166197642.us.us.us, %bb.ca ], [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ], [ %.36621.us7635.us.us.us, %bb.cc ] ; 3 uses
  %indvars.iv.next8410 = add nuw nsw i64 %indvars.iv8409, 1 ; 2 uses
  %exitcond8413.not = icmp eq i64 %indvars.iv.next8410, %wide.trip.count8412
  br i1 %exitcond8413.not, label %._crit_edge7645.split.us.us.us, label %bb.bz, !llvm.loop !160

._crit_edge7645.split.us.us.us:                   ; preds = %..loopexit6883_crit_edge.us.us.us
  %i.ffy = getelementptr inbounds [2 x i8], ptr %.218967664.us.us, i64 %i.enn ; 2 uses
  %indvars.iv.next8415 = add nuw nsw i64 %indvars.iv8414, 4 ; 3 uses
  %i.ffz = trunc i64 %indvars.iv.next8415 to i32
  %i.fga = or i32 %i.ffz, 3
  %i.fgb = icmp slt i32 %i.fga, %i.boh
  br i1 %i.fgb, label %.preheader6890.us.us, label %._crit_edge7668.loopexit, !llvm.loop !161

._crit_edge7668.loopexit:                         ; preds = %._crit_edge7645.split.us.us.us
  %i.fgc = trunc nuw i64 %indvars.iv.next8415 to i32
  br label %._crit_edge7668

._crit_edge7668:                                  ; preds = %.preheader6890.preheader, %.preheader6890.us.preheader, %._crit_edge7668.loopexit, %._crit_edge7598
  %.06623.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46627.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 4 uses
  %.06618.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46622.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 4 uses
  %.21896.lcssa = phi ptr [ %.11895.lcssa, %._crit_edge7598 ], [ %i.ffy, %._crit_edge7668.loopexit ], [ %scevgep8394, %.preheader6890.us.preheader ], [ %scevgep8392, %.preheader6890.preheader ] ; 3 uses
  %.21891.lcssa = phi i32 [ %.11890.lcssa, %._crit_edge7598 ], [ %i.fgc, %._crit_edge7668.loopexit ], [ %i.fcd, %.preheader6890.us.preheader ], [ %i.fbs, %.preheader6890.preheader ] ; 6 uses
  %i.fgd = shufflevector <4 x float> %i.evi, <4 x float> %i.evo, <2 x i32> <i32 3, i32 7>
  %i.fge = shufflevector <4 x float> %i.evi, <4 x float> %i.evo, <2 x i32> <i32 1, i32 5>
  %i.fgf = fadd fast <2 x float> %i.fgd, %i.fge
  %i.fgg = fadd fast <2 x float> %i.fgf, %i.enu
  %i.fgh = shufflevector <4 x float> %i.evi, <4 x float> %i.evo, <2 x i32> <i32 2, i32 6>
  %i.fgi = shufflevector <4 x float> %i.evi, <4 x float> %i.evo, <2 x i32> <i32 0, i32 4>
  %i.fgj = fadd fast <2 x float> %i.fgh, %i.fgi
  %i.fgk = fadd fast <2 x float> %i.fgg, %i.fgj
  %i.fgl = shufflevector <4 x float> %i.faw, <4 x float> %i.faz, <2 x i32> <i32 3, i32 7>
  %i.fgm = shufflevector <4 x float> %i.faw, <4 x float> %i.faz, <2 x i32> <i32 1, i32 5>
  %i.fgn = fadd fast <2 x float> %i.fgl, %i.fgm
  %i.fgo = fadd fast <2 x float> %i.fgk, %i.fgn
  %i.fgp = shufflevector <4 x float> %i.faw, <4 x float> %i.faz, <2 x i32> <i32 2, i32 6>
  %i.fgq = shufflevector <4 x float> %i.faw, <4 x float> %i.faz, <2 x i32> <i32 0, i32 4>
  %i.fgr = fadd fast <2 x float> %i.fgp, %i.fgq
  %i.fgs = fadd fast <2 x float> %i.fgo, %i.fgr
  %i.fgt = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 3, i32 7>
  %i.fgu = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 1, i32 5>
  %i.fgv = fadd fast <2 x float> %i.fgt, %i.fgu
  %i.fgw = fadd fast <2 x float> %i.fgs, %i.fgv
  %i.fgx = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 2, i32 6>
  %i.fgy = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 0, i32 4>
  %i.fgz = fadd fast <2 x float> %i.fgx, %i.fgy
  %i.fha = fadd fast <2 x float> %i.fgw, %i.fgz   ; 3 uses
  %i.fhb = or disjoint i32 %.21891.lcssa, 1
  %i.fhc = icmp slt i32 %i.fhb, %i.boh
  br i1 %i.fhc, label %.preheader6889.lr.ph, label %.preheader6893

.preheader6889.lr.ph:                             ; preds = %._crit_edge7668
  %i.fhd = load i32, ptr %i.j, align 4
  %invariant.op7708 = sub i32 %.neg6818, %i.fhd
  %i.fhe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fhf = load i32, ptr %i.a, align 4
  %.fr8047 = freeze i32 %i.fhf                    ; 2 uses
  %i.fhg = icmp sgt i32 %.fr8047, 0
  %i.fhh = load i32, ptr %i.i, align 4
  %.neg6808 = add nuw nsw i32 %.019317777, 1
  %invariant.op7699 = sub i32 %.neg6808, %i.fhh
  %i.fhi = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eng, label %.preheader6889.us.preheader, label %.preheader6889.preheader

.preheader6889.preheader:                         ; preds = %.preheader6889.lr.ph
  %i.fhj = add i32 %.21891.lcssa, 3
  %smax8417 = call i32 @llvm.smax.i32(i32 %i.boh, i32 %i.fhj)
  %i.fhk = add i32 %smax8417, -2
  %i.fhl = sub i32 %i.fhk, %.21891.lcssa          ; 2 uses
  %i.fhm = and i32 %i.fhl, -2
  %i.fhn = zext i32 %i.fhm to i64
  %i.fho = add nuw nsw i64 %i.fhn, 2
  %i.fhp = mul nsw i64 %i.fho, %i.enp
  %scevgep8418 = getelementptr i8, ptr %.21896.lcssa, i64 %i.fhp
  %i.fhq = add i32 %.21891.lcssa, 2
  %i.fhr = and i32 %i.fhl, -2
  %i.fhs = add i32 %i.fhq, %i.fhr
  br label %.preheader6893

.preheader6889.us.preheader:                      ; preds = %.preheader6889.lr.ph
  %i.fht = load i32, ptr %i.c, align 4
  %i.fhu = load i32, ptr %i.d, align 4
  %i.fhv = zext i32 %.fr8047 to i64               ; 2 uses
  %i.fhw = zext i32 %.21891.lcssa to i64
  br label %.preheader6889.us

.preheader6889.us:                                ; preds = %.preheader6889.us.preheader, %._crit_edge7705.us
  %indvars.iv8432 = phi i64 [ %i.fhw, %.preheader6889.us.preheader ], [ %indvars.iv.next8433, %._crit_edge7705.us ] ; 3 uses
  %.318977716.us = phi ptr [ %.21896.lcssa, %.preheader6889.us.preheader ], [ %i.fjw, %._crit_edge7705.us ] ; 2 uses
  %i.fhx = phi <2 x float> [ %i.fha, %.preheader6889.us.preheader ], [ %i.fjv, %._crit_edge7705.us ] ; 2 uses
  br i1 %i.fhg, label %.lr.ph7704.split.us.us.preheader, label %._crit_edge7705.us

.lr.ph7704.split.us.us.preheader:                 ; preds = %.preheader6889.us
  %i.fhy = or disjoint i64 %indvars.iv8432, 1
  br label %.lr.ph7704.split.us.us

.lr.ph7704.split.us.us:                           ; preds = %.lr.ph7704.split.us.us.preheader, %..loopexit6881_crit_edge.us.us
  %indvars.iv8427 = phi i64 [ 0, %.lr.ph7704.split.us.us.preheader ], [ %indvars.iv.next8428, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fhz = phi <2 x float> [ %i.fhx, %.lr.ph7704.split.us.us.preheader ], [ %i.fju, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fia = trunc i64 %indvars.iv8427 to i32
  %i.fib = mul i32 %i.fhu, %i.fia
  %.reass7709.us.us = add i32 %i.fib, %invariant.op7708 ; 3 uses
  %i.fic = icmp slt i32 %.reass7709.us.us, 0
  br i1 %i.fic, label %..loopexit6881_crit_edge.us.us, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph7704.split.us.us
  %i.fid = srem i32 %.reass7709.us.us, %i.fhe
  %i.fie = sdiv i32 %.reass7709.us.us, %i.fhe     ; 2 uses
  %.not2115.us.us = icmp eq i32 %i.fid, 0
  %.not2116.us.us = icmp slt i32 %i.fie, %i.bol
  %or.cond9012 = select i1 %.not2115.us.us, i1 %.not2116.us.us, i1 false
  br i1 %or.cond9012, label %.preheader6880.us.us, label %..loopexit6881_crit_edge.us.us

.preheader6880.us.us:                             ; preds = %bb.cf
  %i.fif = mul nuw nsw i64 %indvars.iv8427, %i.fhv
  %i.fig = sext i32 %i.fie to i64
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit6877.us.us, %.preheader6880.us.us
  %indvars.iv8422 = phi i64 [ %indvars.iv.next8423, %.loopexit6877.us.us ], [ 0, %.preheader6880.us.us ] ; 3 uses
  %i.fih = phi <2 x float> [ %i.fjt, %.loopexit6877.us.us ], [ %i.fhz, %.preheader6880.us.us ] ; 3 uses
  %i.fii = trunc i64 %indvars.iv8422 to i32
  %i.fij = mul i32 %i.fht, %i.fii
  %.reass7700.us.us = add i32 %i.fij, %invariant.op7699 ; 3 uses
  %i.fik = icmp slt i32 %.reass7700.us.us, 0
  br i1 %i.fik, label %.loopexit6877.us.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fil = srem i32 %.reass7700.us.us, %i.fhi
  %i.fim = sdiv i32 %.reass7700.us.us, %i.fhi     ; 2 uses
  %.not2117.us.us = icmp eq i32 %i.fil, 0
  %.not2118.us.us = icmp slt i32 %i.fim, %i.boj
  %or.cond9013 = select i1 %.not2117.us.us, i1 %.not2118.us.us, i1 false
  br i1 %or.cond9013, label %_ZN4ncnn3MatD2Ev.exit2220.us.us, label %.loopexit6877.us.us

_ZN4ncnn3MatD2Ev.exit2220.us.us:                  ; preds = %bb.ch
  %i.fin = add nuw nsw i64 %i.fif, %indvars.iv8422
  %i.fio = shl i64 %i.fin, 2
  %i.fip = and i64 %i.fio, 4294967292
  %i.fiq = getelementptr inbounds nuw [2 x i8], ptr %.318977716.us, i64 %i.fip
  %i.fir = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !257
  %i.fis = load ptr, ptr %0, align 8, !tbaa !19, !noalias !257
  %i.fit = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !257
  %i.fiu = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !257 ; 2 uses
  %factor.op.mul.us.us7731 = mul i64 %i.fit, %i.fiu ; 2 uses
  %i.fiv = sext i32 %i.fir to i64
  %i.fiw = mul nsw i64 %i.fiv, %i.fig
  %i.fix = mul i64 %i.fiw, %i.fiu
  %invariant.gep.us.us7732 = getelementptr i8, ptr %i.fis, i64 %i.fix
  %i.fiy = sext i32 %i.fim to i64
  %invariant.gep7689.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7732, i64 %i.fiy ; 2 uses
  %.reass.us7710.us = mul i64 %factor.op.mul.us.us7731, %indvars.iv8432
  %gep7690.us.us = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us
  %i.fiz = load i16, ptr %gep7690.us.us, align 2, !tbaa !28
  %.reass.us7710.us.1 = mul i64 %factor.op.mul.us.us7731, %i.fhy
  %gep7690.us.us.1 = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us.1
  %i.fja = load i16, ptr %gep7690.us.us.1, align 2, !tbaa !28
  %i.fjb = load <4 x i16>, ptr %i.fiq, align 2, !tbaa !28
  %i.fjc = freeze <4 x i16> %i.fjb
  %i.fjd = bitcast <4 x i16> %i.fjc to <2 x i32>  ; 2 uses
  %i.fje = and <2 x i32> %i.fjd, splat (i32 -65536)
  %i.fjf = shl <2 x i32> %i.fjd, splat (i32 16)
  %i.fjg = bitcast <2 x i32> %i.fjf to <2 x float>
  %i.fjh = insertelement <2 x i16> poison, i16 %i.fja, i64 0
  %i.fji = insertelement <2 x i16> %i.fjh, i16 %i.fiz, i64 1
  %i.fjj = zext <2 x i16> %i.fji to <2 x i32>
  %i.fjk = shl nuw <2 x i32> %i.fjj, splat (i32 16)
  %i.fjl = bitcast <2 x i32> %i.fjk to <2 x float> ; 2 uses
  %i.fjm = shufflevector <2 x float> %i.fjl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fjn = fmul fast <2 x float> %i.fjm, %i.fjg
  %i.fjo = fadd fast <2 x float> %i.fjn, %i.fih
  %i.fjp = bitcast <2 x i32> %i.fje to <2 x float>
  %i.fjq = shufflevector <2 x float> %i.fjl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fjr = fmul fast <2 x float> %i.fjq, %i.fjp
  %i.fjs = fadd fast <2 x float> %i.fjr, %i.fjo
  br label %.loopexit6877.us.us

.loopexit6877.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2220.us.us, %bb.ch, %bb.cg
  %i.fjt = phi <2 x float> [ %i.fih, %bb.cg ], [ %i.fih, %bb.ch ], [ %i.fjs, %_ZN4ncnn3MatD2Ev.exit2220.us.us ] ; 2 uses
  %indvars.iv.next8423 = add nuw nsw i64 %indvars.iv8422, 1 ; 2 uses
  %exitcond8426.not = icmp eq i64 %indvars.iv.next8423, %i.fhv
  br i1 %exitcond8426.not, label %..loopexit6881_crit_edge.us.us, label %bb.cg, !llvm.loop !164

..loopexit6881_crit_edge.us.us:                   ; preds = %.loopexit6877.us.us, %bb.cf, %.lr.ph7704.split.us.us
  %i.fju = phi <2 x float> [ %i.fhz, %.lr.ph7704.split.us.us ], [ %i.fhz, %bb.cf ], [ %i.fjt, %.loopexit6877.us.us ] ; 2 uses
  %indvars.iv.next8428 = add nuw nsw i64 %indvars.iv8427, 1 ; 2 uses
  %exitcond8431.not = icmp eq i64 %indvars.iv.next8428, %wide.trip.count8430
  br i1 %exitcond8431.not, label %._crit_edge7705.us, label %.lr.ph7704.split.us.us, !llvm.loop !165

._crit_edge7705.us:                               ; preds = %..loopexit6881_crit_edge.us.us, %.preheader6889.us
  %i.fjv = phi <2 x float> [ %i.fhx, %.preheader6889.us ], [ %i.fju, %..loopexit6881_crit_edge.us.us ] ; 2 uses
  %i.fjw = getelementptr inbounds [2 x i8], ptr %.318977716.us, i64 %i.enp ; 2 uses
  %indvars.iv.next8433 = add nuw nsw i64 %indvars.iv8432, 2 ; 3 uses
  %i.fjx = trunc i64 %indvars.iv.next8433 to i32
  %i.fjy = or i32 %i.fjx, 1
  %i.fjz = icmp slt i32 %i.fjy, %i.boh
  br i1 %i.fjz, label %.preheader6889.us, label %.preheader6893.loopexit, !llvm.loop !166

.preheader6893.loopexit:                          ; preds = %._crit_edge7705.us
  %i.fka = trunc nuw i64 %indvars.iv.next8433 to i32
  br label %.preheader6893

.preheader6893:                                   ; preds = %.preheader6889.preheader, %.preheader6893.loopexit, %._crit_edge7668
  %.31897.lcssa = phi ptr [ %.21896.lcssa, %._crit_edge7668 ], [ %i.fjw, %.preheader6893.loopexit ], [ %scevgep8418, %.preheader6889.preheader ]
  %.31892.lcssa = phi i32 [ %.21891.lcssa, %._crit_edge7668 ], [ %i.fka, %.preheader6893.loopexit ], [ %i.fhs, %.preheader6889.preheader ] ; 2 uses
  %i.fkb = phi <2 x float> [ %i.fha, %._crit_edge7668 ], [ %i.fjv, %.preheader6893.loopexit ], [ %i.fha, %.preheader6889.preheader ] ; 3 uses
  %i.fkc = icmp slt i32 %.31892.lcssa, %i.boh
  br i1 %i.fkc, label %.preheader6888.lr.ph, label %._crit_edge7761

.preheader6888.lr.ph:                             ; preds = %.preheader6893
  %i.fkd = load i32, ptr %i.d, align 4
  %i.fke = load i32, ptr %i.j, align 4
  %invariant.op7750 = sub i32 %.neg6818, %i.fke
  %i.fkf = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fkg = load i32, ptr %i.a, align 4
  %.fr8048 = freeze i32 %i.fkg                    ; 2 uses
  %i.fkh = load i32, ptr %i.c, align 4
  %i.fki = load i32, ptr %i.i, align 4
  %.neg6804 = add nuw nsw i32 %.019317777, 1
  %invariant.op7742 = sub i32 %.neg6804, %i.fki
  %i.fkj = load i32, ptr %i.e, align 4            ; 2 uses
  %i.fkk = icmp sgt i32 %.fr8048, 0
  %or.cond8903 = and i1 %i.eng, %i.fkk
  br i1 %or.cond8903, label %.preheader6888.us.us.preheader, label %._crit_edge7761

.preheader6888.us.us.preheader:                   ; preds = %.preheader6888.lr.ph
  %i.fkl = zext nneg i32 %.fr8048 to i64          ; 2 uses
  %i.fkm = zext i32 %.31892.lcssa to i64
  br label %.preheader6888.us.us

.preheader6888.us.us:                             ; preds = %.preheader6888.us.us.preheader, %._crit_edge7747.split.us.us.us
  %indvars.iv8445 = phi i64 [ %i.fkm, %.preheader6888.us.us.preheader ], [ %indvars.iv.next8446, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %.418987758.us.us = phi ptr [ %.31897.lcssa, %.preheader6888.us.us.preheader ], [ %i.fmf, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %i.fkn = phi <2 x float> [ %i.fkb, %.preheader6888.us.us.preheader ], [ %i.fme, %._crit_edge7747.split.us.us.us ]
  br label %bb.ci

bb.ci:                                            ; preds = %..loopexit6879_crit_edge.us.us.us, %.preheader6888.us.us
  %indvars.iv8440 = phi i64 [ %indvars.iv.next8441, %..loopexit6879_crit_edge.us.us.us ], [ 0, %.preheader6888.us.us ] ; 3 uses
  %i.fko = phi <2 x float> [ %i.fme, %..loopexit6879_crit_edge.us.us.us ], [ %i.fkn, %.preheader6888.us.us ] ; 3 uses
  %i.fkp = trunc i64 %indvars.iv8440 to i32
  %i.fkq = mul i32 %i.fkd, %i.fkp
  %.reass7751.us.us.us = add i32 %i.fkq, %invariant.op7750 ; 3 uses
  %i.fkr = icmp slt i32 %.reass7751.us.us.us, 0
  br i1 %i.fkr, label %..loopexit6879_crit_edge.us.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fks = srem i32 %.reass7751.us.us.us, %i.fkf
  %i.fkt = sdiv i32 %.reass7751.us.us.us, %i.fkf  ; 2 uses
  %.not2111.us.us.us = icmp eq i32 %i.fks, 0
  %.not2112.us.us.us = icmp slt i32 %i.fkt, %i.bol
  %or.cond9014 = select i1 %.not2111.us.us.us, i1 %.not2112.us.us.us, i1 false
  br i1 %or.cond9014, label %.preheader6878.us.us.us, label %..loopexit6879_crit_edge.us.us.us

.preheader6878.us.us.us:                          ; preds = %bb.cj
  %i.fku = mul nuw nsw i64 %indvars.iv8440, %i.fkl
  %i.fkv = sext i32 %i.fkt to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %.preheader6878.us.us.us
  %indvars.iv8435 = phi i64 [ %indvars.iv.next8436, %bb.cm ], [ 0, %.preheader6878.us.us.us ] ; 3 uses
  %i.fkw = phi <2 x float> [ %i.fmd, %bb.cm ], [ %i.fko, %.preheader6878.us.us.us ] ; 3 uses
  %i.fkx = trunc i64 %indvars.iv8435 to i32
  %i.fky = mul i32 %i.fkh, %i.fkx
  %.reass.us7752.us.us = add i32 %i.fky, %invariant.op7742 ; 3 uses
  %i.fkz = icmp slt i32 %.reass.us7752.us.us, 0
  br i1 %i.fkz, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fla = srem i32 %.reass.us7752.us.us, %i.fkj
  %i.flb = sdiv i32 %.reass.us7752.us.us, %i.fkj  ; 2 uses
  %.not2113.us.us.us = icmp eq i32 %i.fla, 0
  %.not2114.us.us.us = icmp slt i32 %i.flb, %i.boj
  %or.cond9015 = select i1 %.not2113.us.us.us, i1 %.not2114.us.us.us, i1 false
  br i1 %or.cond9015, label %_ZN4ncnn3MatD2Ev.exit2219.us.us.us, label %bb.cm

_ZN4ncnn3MatD2Ev.exit2219.us.us.us:               ; preds = %bb.cl
  %i.flc = add nuw nsw i64 %i.fku, %indvars.iv8435
  %.idx8761 = shl nuw nsw i64 %i.flc, 2
  %i.fld = getelementptr inbounds nuw i8, ptr %.418987758.us.us, i64 %.idx8761
  %i.fle = load i32, ptr %i.boi, align 4, !tbaa !22, !noalias !258
  %i.flf = load ptr, ptr %0, align 8, !tbaa !19, !noalias !258
  %i.flg = load i64, ptr %i.bpa, align 8, !tbaa !17, !noalias !258
  %i.flh = mul i64 %i.flg, %indvars.iv8445
  %i.fli = load i64, ptr %i.bpb, align 8, !tbaa !24, !noalias !258 ; 2 uses
  %i.flj = mul i64 %i.flh, %i.fli
  %i.flk = getelementptr inbounds nuw i8, ptr %i.flf, i64 %i.flj
  %i.fll = sext i32 %i.fle to i64
  %i.flm = mul nsw i64 %i.fll, %i.fkv
  %i.fln = mul i64 %i.flm, %i.fli
  %i.flo = getelementptr inbounds nuw i8, ptr %i.flk, i64 %i.fln
  %i.flp = sext i32 %i.flb to i64
  %i.flq = getelementptr inbounds [2 x i8], ptr %i.flo, i64 %i.flp
  %i.flr = load i16, ptr %i.flq, align 2, !tbaa !28
  %i.fls = zext i16 %i.flr to i32
  %i.flt = shl nuw i32 %i.fls, 16
  %i.flu = load <2 x i16>, ptr %i.fld, align 2, !tbaa !28
  %i.flv = zext <2 x i16> %i.flu to <2 x i32>
  %i.flw = shl nuw <2 x i32> %i.flv, splat (i32 16)
  %i.flx = bitcast <2 x i32> %i.flw to <2 x float>
  %i.fly = insertelement <2 x i32> poison, i32 %i.flt, i64 0
  %i.flz = bitcast <2 x i32> %i.fly to <2 x float>
  %i.fma = shufflevector <2 x float> %i.flz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fmb = fmul fast <2 x float> %i.fma, %i.flx
  %i.fmc = fadd fast <2 x float> %i.fmb, %i.fkw
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2219.us.us.us, %bb.cl, %bb.ck
  %i.fmd = phi <2 x float> [ %i.fkw, %bb.ck ], [ %i.fkw, %bb.cl ], [ %i.fmc, %_ZN4ncnn3MatD2Ev.exit2219.us.us.us ] ; 2 uses
  %indvars.iv.next8436 = add nuw nsw i64 %indvars.iv8435, 1 ; 2 uses
  %exitcond8439.not = icmp eq i64 %indvars.iv.next8436, %i.fkl
  br i1 %exitcond8439.not, label %..loopexit6879_crit_edge.us.us.us, label %bb.ck, !llvm.loop !169

..loopexit6879_crit_edge.us.us.us:                ; preds = %bb.cm, %bb.cj, %bb.ci
  %i.fme = phi <2 x float> [ %i.fko, %bb.ci ], [ %i.fko, %bb.cj ], [ %i.fmd, %bb.cm ] ; 3 uses
  %indvars.iv.next8441 = add nuw nsw i64 %indvars.iv8440, 1 ; 2 uses
  %exitcond8444.not = icmp eq i64 %indvars.iv.next8441, %wide.trip.count8443
  br i1 %exitcond8444.not, label %._crit_edge7747.split.us.us.us, label %bb.ci, !llvm.loop !170

._crit_edge7747.split.us.us.us:                   ; preds = %..loopexit6879_crit_edge.us.us.us
  %i.fmf = getelementptr inbounds [2 x i8], ptr %.418987758.us.us, i64 %i.enr
  %indvars.iv.next8446 = add nuw nsw i64 %indvars.iv8445, 1 ; 2 uses
  %i.fmg = trunc nuw i64 %indvars.iv.next8446 to i32
  %i.fmh = icmp sgt i32 %i.boh, %i.fmg
  br i1 %i.fmh, label %.preheader6888.us.us, label %._crit_edge7761, !llvm.loop !171

._crit_edge7761:                                  ; preds = %._crit_edge7747.split.us.us.us, %.preheader6888.lr.ph, %.preheader6893
  %i.fmi = phi <2 x float> [ %i.fkb, %.preheader6893 ], [ %i.fkb, %.preheader6888.lr.ph ], [ %i.fme, %._crit_edge7747.split.us.us.us ] ; 12 uses
  switch i32 %i.end, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764
    i32 6, label %bb.cn
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755: ; preds = %._crit_edge7761
  %i.fmj = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmi, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758: ; preds = %._crit_edge7761
  %i.fmk = load ptr, ptr %11, align 8, !tbaa !19
  %i.fml = load float, ptr %i.fmk, align 4, !tbaa !30
  %i.fmm = fcmp fast ogt <2 x float> %i.fmi, zeroinitializer
  %i.fmn = insertelement <2 x float> poison, float %i.fml, i64 0
  %i.fmo = shufflevector <2 x float> %i.fmn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fmp = select <2 x i1> %i.fmm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fmo
  %i.fmq = fmul fast <2 x float> %i.fmp, %i.fmi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752: ; preds = %._crit_edge7761
  %i.fmr = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fms = load float, ptr %i.fmr, align 4, !tbaa !30 ; 2 uses
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.fmr, i64 4
  %i.fmu = load float, ptr %i.fmt, align 4, !tbaa !30 ; 3 uses
  %i.fmv = extractelement <2 x float> %i.fmi, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fmv, float %i.fms) ; 2 uses
  %i.fmw = fcmp fast ogt float %spec.select, %i.fmu
  %.165306754 = select i1 %i.fmw, float %i.fmu, float %spec.select
  %i.fmx = extractelement <2 x float> %i.fmi, i64 1
  %.06531 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fmx, float %i.fms)
  %spec.select6779 = call nnan ninf nsz float @llvm.minnum.f32(float %.06531, float %i.fmu)
  %i.fmy = insertelement <2 x float> poison, float %.165306754, i64 0
  %i.fmz = insertelement <2 x float> %i.fmy, float %spec.select6779, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761: ; preds = %._crit_edge7761
  %i.fna = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmi, <2 x float> splat (float f0x42B0C0A5))
  %i.fnb = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fna, <2 x float> splat (float f0xC2B0C0A5))
  %i.fnc = fneg fast <2 x float> %i.fnb
  %i.fnd = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fnc)
  %i.fne = fadd fast <2 x float> %i.fnd, splat (float 1.000000e+00)
  %i.fnf = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fne
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764: ; preds = %._crit_edge7761
  %i.fng = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fmi)
  %i.fnh = fadd fast <2 x float> %i.fng, splat (float 1.000000e+00)
  %i.fni = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fnh)
  %i.fnj = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fni)
  %i.fnk = fmul fast <2 x float> %i.fnj, %i.fmi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

bb.cn:                                            ; preds = %._crit_edge7761
  %i.fnl = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fnm = load float, ptr %i.fnl, align 4, !tbaa !30 ; 5 uses
  %i.fnn = getelementptr inbounds nuw i8, ptr %i.fnl, i64 4
  %i.fno = load float, ptr %i.fnn, align 4, !tbaa !30 ; 3 uses
  %i.fnp = fneg fast float %i.fno
  %i.fnq = fdiv fast float %i.fnp, %i.fnm         ; 4 uses
  %i.fnr = extractelement <2 x float> %i.fmi, i64 0 ; 5 uses
  %i.fns = fcmp fast olt float %i.fnr, %i.fnq
  br i1 %i.fns, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fnt = fdiv fast float 1.000000e+00, %i.fnm
  %i.fnu = fadd fast float %i.fnq, %i.fnt
  %i.fnv = fcmp fast ogt float %i.fnr, %i.fnu
  br i1 %i.fnv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fnw = fmul fast float %i.fnm, %i.fnr
  %i.fnx = fadd fast float %i.fnw, %i.fno
  %i.fny = fmul fast float %i.fnx, %i.fnr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.165306748 = phi float [ %i.fny, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.fnr, %bb.co ] ; 2 uses
  %i.fnz = extractelement <2 x float> %i.fmi, i64 1 ; 4 uses
  %i.foa = fcmp fast olt float %i.fnz, %i.fnq
  %i.fob = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.165306748, i64 0 ; 2 uses
  br i1 %i.foa, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread
  %i.foc = fdiv fast float 1.000000e+00, %i.fnm
  %i.fod = fadd fast float %i.fnq, %i.foc
  %i.foe = fcmp fast ogt float %i.fnz, %i.fod
  %i.fof = insertelement <2 x float> %i.fmi, float %.165306748, i64 0
  br i1 %i.foe, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fog = fmul fast float %i.fnm, %i.fnz
  %i.foh = fadd fast float %i.fog, %i.fno
  %i.foi = fmul fast float %i.foh, %i.fnz
  %i.foj = insertelement <2 x float> %i.fob, float %i.foi, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2462:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752, %._crit_edge7761, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764, %bb.cq, %bb.cr
  %i.fok = phi <2 x float> [ %i.fob, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread ], [ %i.fmj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755 ], [ %i.fmq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758 ], [ %i.fmi, %._crit_edge7761 ], [ %i.fmz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752 ], [ %i.fnf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761 ], [ %i.fnk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764 ], [ %i.foj, %bb.cr ], [ %i.fof, %bb.cq ]
  %i.fol = bitcast <2 x float> %i.fok to <2 x i32>
  %i.fom = lshr <2 x i32> %i.fol, splat (i32 16)
  %i.fon = trunc nuw <2 x i32> %i.fom to <2 x i16> ; 2 uses
  %i.foo = extractelement <2 x i16> %i.fon, i64 0
  store i16 %i.foo, ptr %.119367775, align 2, !tbaa !28
  %i.fop = extractelement <2 x i16> %i.fon, i64 1
  store i16 %i.fop, ptr %.119347776, align 2, !tbaa !28
  %i.foq = getelementptr inbounds nuw i8, ptr %.119367775, i64 2 ; 2 uses
  %i.for = getelementptr inbounds nuw i8, ptr %.119347776, i64 2 ; 2 uses
  %i.fos = add nuw nsw i32 %.019317777, 1         ; 2 uses
  %exitcond8448.not = icmp eq i32 %i.fos, %i.bon
  br i1 %exitcond8448.not, label %._crit_edge7778, label %bb.bp, !llvm.loop !172

._crit_edge8018.split:                            ; preds = %._crit_edge8016, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph, %._crit_edge7786.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  ret void

_ZN4ncnn3MatD2Ev.exit2218:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split, %._crit_edge8016
  %indvars.iv8552 = phi i64 [ %i.emg, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split ], [ %indvars.iv.next8553, %._crit_edge8016 ] ; 4 uses
  %.reass8020 = mul i64 %factor.op.mul8019, %indvars.iv8552
  %i.fot = getelementptr inbounds nuw i8, ptr %i.elh, i64 %.reass8020
  %i.fou = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fou, null
  %i.fov = getelementptr inbounds [4 x i8], ptr %i.fou, i64 %indvars.iv8552
  %i.fow = trunc nsw i64 %indvars.iv8552 to i32   ; 2 uses
  %i.fox = sdiv i32 %i.fow, 16
  %i.foy = insertelement <4 x i32> poison, i32 %i.fow, i64 0
  %i.foz = shufflevector <4 x i32> %i.foy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fpa = srem <4 x i32> %i.foz, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fpb = bitcast <4 x i32> %i.fpa to <16 x i8>
  %.lhs.trunc6771 = extractelement <16 x i8> %i.fpb, i64 0
  %i.fpc = sdiv i8 %.lhs.trunc6771, 8
  %.sext6772 = sext i8 %i.fpc to i32
  %i.fpd = bitcast <4 x i32> %i.fpa to <16 x i8>
  %.lhs.trunc6773 = extractelement <16 x i8> %i.fpd, i64 4
  %i.fpe = sdiv i8 %.lhs.trunc6773, 4
  %.sext6774 = sext i8 %i.fpe to i32
  %i.fpf = bitcast <4 x i32> %i.fpa to <16 x i8>
  %.lhs.trunc6775 = extractelement <16 x i8> %i.fpf, i64 8
  %i.fpg = sdiv i8 %.lhs.trunc6775, 2
  %.sext6776 = sext i8 %i.fpg to i32
  %i.fph = extractelement <4 x i32> %i.fpa, i64 3
  %i.fpi = add nsw i32 %i.fph, %i.fox
  %i.fpj = add nsw i32 %i.fpi, %.sext6772
  %i.fpk = add nsw i32 %i.fpj, %.sext6774
  %i.fpl = add nsw i32 %i.fpk, %.sext6776
  %i.fpm = sext i32 %i.fpl to i64
  %i.fpn = load i32, ptr %i.g, align 4
  %.reass8023 = mul i64 %factor.op.mul8022, %i.fpm
  %i.fpo = getelementptr i8, ptr %i.elw, i64 %.reass8023 ; 3 uses
  br label %.preheader6876

.preheader6876:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2218, %._crit_edge8012
  %.018698015 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %.neg6798, %._crit_edge8012 ]
  %.018708014 = phi ptr [ %i.fot, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %i.gnx, %._crit_edge8012 ]
  %i.fpp = load i32, ptr %i.b, align 4            ; 6 uses
  %i.fpq = icmp sgt i32 %i.fpp, 0                 ; 5 uses
  %.neg6798 = add nuw nsw i32 %.018698015, 1      ; 7 uses
  %i.fpr = load i32, ptr %i.k, align 4            ; 5 uses
  %i.fps = shl i32 %i.fpr, 4
  %i.fpt = sext i32 %i.fps to i64                 ; 2 uses
  %i.fpu = shl i32 %i.fpr, 3
  %i.fpv = sext i32 %i.fpu to i64                 ; 2 uses
  %i.fpw = shl i32 %i.fpr, 2
  %i.fpx = sext i32 %i.fpw to i64                 ; 3 uses
  %i.fpy = shl i32 %i.fpr, 1
  %i.fpz = sext i32 %i.fpy to i64                 ; 2 uses
  %i.fqa = sext i32 %i.fpr to i64
  %i.fqb = mul nsw i64 %i.emc, %i.fpt
  %scevgep8456 = getelementptr i8, ptr %i.fpo, i64 %i.fqb
  %wide.trip.count8469 = zext nneg i32 %i.fpp to i64
  %wide.trip.count8488 = zext nneg i32 %i.fpp to i64
  %wide.trip.count8514 = zext nneg i32 %i.fpp to i64
  %wide.trip.count8532 = zext nneg i32 %i.fpp to i64
  %wide.trip.count8545 = zext nneg i32 %i.fpp to i64
  br label %bb.cs

._crit_edge8016:                                  ; preds = %._crit_edge8012
  %indvars.iv.next8553 = add nsw i64 %indvars.iv8552, 1 ; 2 uses
  %exitcond8556.not = icmp eq i64 %indvars.iv.next8553, %wide.trip.count8555
  br i1 %exitcond8556.not, label %._crit_edge8018.split, label %_ZN4ncnn3MatD2Ev.exit2218, !llvm.loop !173

._crit_edge8012:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8551.not = icmp eq i32 %.neg6798, %i.elg
  br i1 %exitcond8551.not, label %._crit_edge8016, label %.preheader6876, !llvm.loop !174

bb.cs:                                            ; preds = %.preheader6876, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.018688011 = phi i32 [ 0, %.preheader6876 ], [ %i.gny, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118718010 = phi ptr [ %.018708014, %.preheader6876 ], [ %i.gnx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2217, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fqc = load float, ptr %i.fov, align 4, !tbaa !30
  br label %_ZN4ncnn3MatD2Ev.exit2217

_ZN4ncnn3MatD2Ev.exit2217:                        ; preds = %bb.ct, %bb.cs
  %.01853 = phi nsz float [ %i.fqc, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  br i1 %i.eln, label %.preheader6874.lr.ph, label %._crit_edge7827

.preheader6874.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2217
  %i.fqd = load i32, ptr %i.j, align 4
  %invariant.op7811 = sub i32 %.neg6798, %i.fqd
  %i.fqe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fqf = load i32, ptr %i.a, align 4
  %.fr8051 = freeze i32 %i.fqf                    ; 2 uses
  %i.fqg = icmp sgt i32 %.fr8051, 0
  %i.fqh = load i32, ptr %i.i, align 4
  %.neg6800 = add nuw nsw i32 %.018688011, 1
  %invariant.op7802 = sub i32 %.neg6800, %i.fqh
  %i.fqi = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpq, label %.preheader6874.us.preheader, label %._crit_edge7827

.preheader6874.us.preheader:                      ; preds = %.preheader6874.lr.ph
  %i.fqj = load i32, ptr %i.c, align 4
  %i.fqk = load i32, ptr %i.d, align 4
  %i.fql = zext i32 %.fr8051 to i64               ; 2 uses
  br label %.preheader6874.us

.preheader6874.us:                                ; preds = %.preheader6874.us.preheader, %._crit_edge7809.us
  %indvars.iv8471 = phi i64 [ 0, %.preheader6874.us.preheader ], [ %indvars.iv.next8472, %._crit_edge7809.us ] ; 20 uses
  %.018487823.us = phi ptr [ %i.fpo, %.preheader6874.us.preheader ], [ %i.fxn, %._crit_edge7809.us ] ; 2 uses
  %.066107822.us = phi <16 x float> [ zeroinitializer, %.preheader6874.us.preheader ], [ %.us-phi7820.us, %._crit_edge7809.us ] ; 2 uses
  %i.fqm = lshr exact i64 %indvars.iv8471, 4
  %i.fqn = lshr exact i64 %indvars.iv8471, 3      ; 3 uses
  %i.fqo = or disjoint i64 %i.fqn, 1              ; 2 uses
  %i.fqp = lshr exact i64 %indvars.iv8471, 2      ; 4 uses
  %i.fqq = or disjoint i64 %i.fqp, 1
  %i.fqr = or disjoint i64 %i.fqp, 2
  %i.fqs = or disjoint i64 %i.fqp, 3
  br i1 %i.fqg, label %.lr.ph7808.split.us.us.preheader, label %._crit_edge7809.us

.lr.ph7808.split.us.us.preheader:                 ; preds = %.preheader6874.us
  %i.fqt = or disjoint i64 %indvars.iv8471, 1
  %i.fqu = or disjoint i64 %indvars.iv8471, 2
  %i.fqv = or disjoint i64 %indvars.iv8471, 3
  %i.fqw = or disjoint i64 %indvars.iv8471, 4
  %i.fqx = or disjoint i64 %indvars.iv8471, 5
  %i.fqy = or disjoint i64 %indvars.iv8471, 6
  %i.fqz = or disjoint i64 %indvars.iv8471, 7
  %i.fra = or disjoint i64 %indvars.iv8471, 8
  %i.frb = or disjoint i64 %indvars.iv8471, 9
  %i.frc = or disjoint i64 %indvars.iv8471, 10
  %i.frd = or disjoint i64 %indvars.iv8471, 11
  %i.fre = or disjoint i64 %indvars.iv8471, 12
  %i.frf = or disjoint i64 %indvars.iv8471, 13
  %i.frg = or disjoint i64 %indvars.iv8471, 14
  %i.frh = or disjoint i64 %indvars.iv8471, 15
  br label %.lr.ph7808.split.us.us

.lr.ph7808.split.us.us:                           ; preds = %.lr.ph7808.split.us.us.preheader, %..loopexit6869_crit_edge.us.us
  %indvars.iv8466 = phi i64 [ 0, %.lr.ph7808.split.us.us.preheader ], [ %indvars.iv.next8467, %..loopexit6869_crit_edge.us.us ] ; 3 uses
  %.166117806.us.us = phi <16 x float> [ %.066107822.us, %.lr.ph7808.split.us.us.preheader ], [ %.76617.us.us, %..loopexit6869_crit_edge.us.us ] ; 4 uses
  %i.fri = trunc i64 %indvars.iv8466 to i32
  %i.frj = mul i32 %i.fqk, %i.fri
  %.reass7812.us.us = add i32 %i.frj, %invariant.op7811 ; 3 uses
  %i.frk = icmp slt i32 %.reass7812.us.us, 0
  br i1 %i.frk, label %..loopexit6869_crit_edge.us.us, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph7808.split.us.us
  %i.frl = srem i32 %.reass7812.us.us, %i.fqe
  %i.frm = sdiv i32 %.reass7812.us.us, %i.fqe     ; 2 uses
  %.not2106.us.us = icmp eq i32 %i.frl, 0
  %.not2107.us.us = icmp slt i32 %i.frm, %i.elc
  %or.cond9016 = select i1 %.not2106.us.us, i1 %.not2107.us.us, i1 false
  br i1 %or.cond9016, label %.preheader6868.us.us, label %..loopexit6869_crit_edge.us.us

.preheader6868.us.us:                             ; preds = %bb.cu
  %i.frn = mul nuw nsw i64 %indvars.iv8466, %i.fql
  %i.fro = sext i32 %i.frm to i64                 ; 4 uses
  br i1 %i.elp, label %.lr.ph.split.us.us.us7838, label %..loopexit6869_crit_edge.us.us

.lr.ph.split.us.us.us7838:                        ; preds = %.preheader6868.us.us, %bb.cw
  %indvars.iv8461 = phi i64 [ %indvars.iv.next8462, %bb.cw ], [ 0, %.preheader6868.us.us ] ; 3 uses
  %.266127799.us.us.us = phi <16 x float> [ %.66616.us.us.us, %bb.cw ], [ %.166117806.us.us, %.preheader6868.us.us ] ; 7 uses
  %i.frp = trunc i64 %indvars.iv8461 to i32
  %i.frq = mul i32 %i.fqj, %i.frp
  %.reass7803.us.us.us = add i32 %i.frq, %invariant.op7802 ; 3 uses
  %i.frr = icmp slt i32 %.reass7803.us.us.us, 0
  br i1 %i.frr, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.split.us.us.us7838
  %i.frs = srem i32 %.reass7803.us.us.us, %i.fqi
  %i.frt = sdiv i32 %.reass7803.us.us.us, %i.fqi  ; 6 uses
  %.not2108.us.us.us = icmp eq i32 %i.frs, 0
  %.not2109.us.us.us = icmp slt i32 %i.frt, %i.ela
  %or.cond9017 = select i1 %.not2108.us.us.us, i1 %.not2109.us.us.us, i1 false
  br i1 %or.cond9017, label %.split2197.us.us.us, label %bb.cw

.split2197.us.us.us:                              ; preds = %bb.cv
  %i.fru = add nuw nsw i64 %i.frn, %indvars.iv8461
  %i.frv = shl i64 %i.fru, 4
  %i.frw = and i64 %i.frv, 4294967280
  %i.frx = getelementptr inbounds nuw [2 x i8], ptr %.018487823.us, i64 %i.frw ; 4 uses
  switch i32 %i.elq, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us
    i32 2, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge
    i32 0, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge
  ]

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8594 = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !259
  %.pre8595 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !259
  %.pre8596 = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !259
  %.pre8597 = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !259 ; 2 uses
  %.pre8613 = sext i32 %.pre8594 to i64
  %.pre8615 = mul nsw i64 %.pre8613, %i.fro
  %.pre8617 = mul i64 %.pre8615, %.pre8597
  br label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8589 = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !260
  %.pre8590 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !260
  %.pre8591 = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !260
  %.pre8592 = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %.pre8593 = load <16 x bfloat>, ptr %i.frx, align 32, !tbaa !26
  %.pre8605 = sext i32 %.pre8589 to i64
  %.pre8607 = mul nsw i64 %.pre8605, %i.fro
  %.pre8609 = mul i64 %.pre8607, %.pre8592
  %.pre8611 = fpext fast <16 x bfloat> %.pre8593 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us

_ZN4ncnn3MatD2Ev.exit2216.us.us.us:               ; preds = %.split2197.us.us.us
  %i.fry = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !261
  %i.frz = load ptr, ptr %0, align 8, !tbaa !19, !noalias !261 ; 5 uses
  %i.fsa = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !261 ; 5 uses
  %i.fsb = mul i64 %i.fsa, %i.fqm
  %i.fsc = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !261 ; 6 uses
  %i.fsd = mul i64 %i.fsb, %i.fsc
  %i.fse = getelementptr inbounds nuw i8, ptr %i.frz, i64 %i.fsd
  %i.fsf = sext i32 %i.fry to i64
  %i.fsg = mul nsw i64 %i.fsf, %i.fro
  %i.fsh = mul i64 %i.fsg, %i.fsc                 ; 5 uses
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fse, i64 %i.fsh
  %i.fsj = shl nsw i32 %i.frt, 4
  %i.fsk = sext i32 %i.fsj to i64
  %i.fsl = getelementptr inbounds [2 x i8], ptr %i.fsi, i64 %i.fsk
  %i.fsm = load <16 x bfloat>, ptr %i.fsl, align 32, !tbaa !26
  %i.fsn = fpext fast <16 x bfloat> %i.fsm to <16 x float>
  %i.fso = load <16 x bfloat>, ptr %i.frx, align 32, !tbaa !26
  %i.fsp = fpext fast <16 x bfloat> %i.fso to <16 x float> ; 3 uses
  %i.fsq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fsn, <16 x float> nofpclass(nan inf) %i.fsp, <16 x float> nofpclass(nan inf) %.266127799.us.us.us) ; 4 uses
  switch i32 %.fr8050, label %bb.cw [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %i.fsr = mul i64 %i.fsa, %i.fqn
  %i.fss = mul i64 %i.fsr, %i.fsc
  %i.fst = getelementptr inbounds nuw i8, ptr %i.frz, i64 %i.fss
  %i.fsu = getelementptr inbounds nuw i8, ptr %i.fst, i64 %i.fsh
  %i.fsv = shl nsw i32 %i.frt, 3
  %i.fsw = sext i32 %i.fsv to i64                 ; 2 uses
  %i.fsx = getelementptr inbounds [2 x i8], ptr %i.fsu, i64 %i.fsw
  %i.fsy = mul i64 %i.fsa, %i.fqo
  %i.fsz = mul i64 %i.fsy, %i.fsc
  %i.fta = getelementptr inbounds nuw i8, ptr %i.frz, i64 %i.fsz
  %i.ftb = getelementptr inbounds nuw i8, ptr %i.fta, i64 %i.fsh
  %i.ftc = getelementptr inbounds [2 x i8], ptr %i.ftb, i64 %i.fsw
  %i.ftd = load <8 x bfloat>, ptr %i.fsx, align 16, !tbaa !26
  %i.fte = fpext fast <8 x bfloat> %i.ftd to <8 x float>
  %i.ftf = load <8 x bfloat>, ptr %i.ftc, align 16, !tbaa !26
  %i.ftg = fpext fast <8 x bfloat> %i.ftf to <8 x float>
  %i.fth = shufflevector <8 x float> %i.fte, <8 x float> %i.ftg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fti = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fth, <16 x float> nofpclass(nan inf) %i.fsp, <16 x float> nofpclass(nan inf) %i.fsq)
  br label %bb.cw

_ZN4ncnn3MatD2Ev.exit2215.us.us.us:               ; preds = %.split2197.us.us.us
  %.pre8584 = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !262
  %.pre8585 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !262 ; 4 uses
  %.pre8586 = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !262 ; 4 uses
  %.pre8587 = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !262 ; 5 uses
  %.pre8588 = load <16 x bfloat>, ptr %i.frx, align 32, !tbaa !26
  %.pre8598 = sext i32 %.pre8584 to i64
  %.pre8599 = mul nsw i64 %.pre8598, %i.fro
  %.pre8601 = mul i64 %.pre8599, %.pre8587        ; 4 uses
  %.pre8603 = fpext fast <16 x bfloat> %.pre8588 to <16 x float> ; 2 uses
  %i.ftj = mul i64 %.pre8586, %i.fqn
  %i.ftk = mul i64 %i.ftj, %.pre8587
  %i.ftl = getelementptr inbounds nuw i8, ptr %.pre8585, i64 %i.ftk
  %i.ftm = getelementptr inbounds nuw i8, ptr %i.ftl, i64 %.pre8601
  %i.ftn = shl nsw i32 %i.frt, 3
  %i.fto = sext i32 %i.ftn to i64                 ; 2 uses
  %i.ftp = getelementptr inbounds [2 x i8], ptr %i.ftm, i64 %i.fto
  %i.ftq = mul i64 %.pre8586, %i.fqo
  %i.ftr = mul i64 %i.ftq, %.pre8587
  %i.fts = getelementptr inbounds nuw i8, ptr %.pre8585, i64 %i.ftr
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.fts, i64 %.pre8601
  %i.ftu = getelementptr inbounds [2 x i8], ptr %i.ftt, i64 %i.fto
  %i.ftv = load <8 x bfloat>, ptr %i.ftp, align 16, !tbaa !26
  %i.ftw = fpext fast <8 x bfloat> %i.ftv to <8 x float>
  %i.ftx = load <8 x bfloat>, ptr %i.ftu, align 16, !tbaa !26
  %i.fty = fpext fast <8 x bfloat> %i.ftx to <8 x float>
  %i.ftz = shufflevector <8 x float> %i.ftw, <8 x float> %i.fty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fua = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ftz, <16 x float> nofpclass(nan inf) %.pre8603, <16 x float> nofpclass(nan inf) %.266127799.us.us.us) ; 3 uses
  switch i32 %.fr8050, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2213.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8612 = phi <16 x float> [ %.pre8611, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8603, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsp, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.pre-phi8610 = phi i64 [ %.pre8609, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8601, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsh, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fub = phi i64 [ %.pre8592, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8587, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsc, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fuc = phi i64 [ %.pre8591, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsa, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fud = phi ptr [ %.pre8590, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8585, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frz, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %.46614.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %i.fua, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fue = mul i64 %i.fuc, %i.fqp
  %i.fuf = mul i64 %i.fue, %i.fub
  %i.fug = getelementptr inbounds nuw i8, ptr %i.fud, i64 %i.fuf
  %i.fuh = getelementptr inbounds nuw i8, ptr %i.fug, i64 %.pre-phi8610
  %i.fui = shl nsw i32 %i.frt, 2
  %i.fuj = sext i32 %i.fui to i64                 ; 4 uses
  %i.fuk = getelementptr inbounds [2 x i8], ptr %i.fuh, i64 %i.fuj
  %i.ful = mul i64 %i.fuc, %i.fqq
  %i.fum = mul i64 %i.ful, %i.fub
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fud, i64 %i.fum
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.fun, i64 %.pre-phi8610
  %i.fup = getelementptr inbounds [2 x i8], ptr %i.fuo, i64 %i.fuj
  %i.fuq = mul i64 %i.fuc, %i.fqr
  %i.fur = mul i64 %i.fuq, %i.fub
  %i.fus = getelementptr inbounds nuw i8, ptr %i.fud, i64 %i.fur
  %i.fut = getelementptr inbounds nuw i8, ptr %i.fus, i64 %.pre-phi8610
  %i.fuu = getelementptr inbounds [2 x i8], ptr %i.fut, i64 %i.fuj
  %i.fuv = mul i64 %i.fuc, %i.fqs
  %i.fuw = mul i64 %i.fuv, %i.fub
  %i.fux = getelementptr inbounds nuw i8, ptr %i.fud, i64 %i.fuw
  %i.fuy = getelementptr inbounds nuw i8, ptr %i.fux, i64 %.pre-phi8610
  %i.fuz = getelementptr inbounds [2 x i8], ptr %i.fuy, i64 %i.fuj
  %i.fva = load i64, ptr %i.fuk, align 1, !tbaa !26
  %i.fvb = insertelement <2 x i64> poison, i64 %i.fva, i64 0
  %i.fvc = bitcast <2 x i64> %i.fvb to <8 x i16>
  %i.fvd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fve = bitcast <8 x i16> %i.fvd to <4 x float>
  %i.fvf = load i64, ptr %i.fup, align 1, !tbaa !26
  %i.fvg = insertelement <2 x i64> poison, i64 %i.fvf, i64 0
  %i.fvh = bitcast <2 x i64> %i.fvg to <8 x i16>
  %i.fvi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvj = bitcast <8 x i16> %i.fvi to <4 x float>
  %i.fvk = load i64, ptr %i.fuu, align 1, !tbaa !26
  %i.fvl = insertelement <2 x i64> poison, i64 %i.fvk, i64 0
  %i.fvm = bitcast <2 x i64> %i.fvl to <8 x i16>
  %i.fvn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvo = bitcast <8 x i16> %i.fvn to <4 x float>
  %i.fvp = load i64, ptr %i.fuz, align 1, !tbaa !26
  %i.fvq = insertelement <2 x i64> poison, i64 %i.fvp, i64 0
  %i.fvr = bitcast <2 x i64> %i.fvq to <8 x i16>
  %i.fvs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvt = bitcast <8 x i16> %i.fvs to <4 x float>
  %i.fvu = shufflevector <4 x float> %i.fve, <4 x float> %i.fvj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fvv = shufflevector <4 x float> %i.fvo, <4 x float> %i.fvt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fvw = shufflevector <16 x float> %i.fvu, <16 x float> %i.fvv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fvx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fvw, <16 x float> nofpclass(nan inf) %.pre-phi8612, <16 x float> nofpclass(nan inf) %.46614.us.us.us) ; 2 uses
  br i1 %i.elt, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, label %bb.cw

_ZN4ncnn3MatD2Ev.exit2209.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8618 = phi i64 [ %.pre8617, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %.pre-phi8610, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8601, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsh, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fvy = phi i64 [ %.pre8597, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fub, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8587, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsc, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fvz = phi i64 [ %.pre8596, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fuc, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsa, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fwa = phi ptr [ %.pre8595, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fud, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8585, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frz, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.56615.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fvx, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %i.fua, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %factor.op.mul7794.us.us.us = mul i64 %i.fvz, %i.fvy ; 16 uses
  %invariant.gep.us.us7819.us = getelementptr i8, ptr %i.fwa, i64 %.pre-phi8618
  %i.fwb = sext i32 %i.frt to i64
  %invariant.gep7796.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7819.us, i64 %i.fwb ; 16 uses
  %.reass7795.us.us.us = mul i64 %factor.op.mul7794.us.us.us, %indvars.iv8471
  %gep7797.us.us.us = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us
  %i.fwc = load i16, ptr %gep7797.us.us.us, align 2, !tbaa !28
  %.reass7795.us.us.us.1 = mul i64 %factor.op.mul7794.us.us.us, %i.fqt
  %gep7797.us.us.us.1 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.1
  %i.fwd = load i16, ptr %gep7797.us.us.us.1, align 2, !tbaa !28
  %.reass7795.us.us.us.2 = mul i64 %factor.op.mul7794.us.us.us, %i.fqu
  %gep7797.us.us.us.2 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.2
  %i.fwe = load i16, ptr %gep7797.us.us.us.2, align 2, !tbaa !28
  %.reass7795.us.us.us.3 = mul i64 %factor.op.mul7794.us.us.us, %i.fqv
  %gep7797.us.us.us.3 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.3
  %i.fwf = load i16, ptr %gep7797.us.us.us.3, align 2, !tbaa !28
  %.reass7795.us.us.us.4 = mul i64 %factor.op.mul7794.us.us.us, %i.fqw
  %gep7797.us.us.us.4 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.4
  %i.fwg = load i16, ptr %gep7797.us.us.us.4, align 2, !tbaa !28
  %.reass7795.us.us.us.5 = mul i64 %factor.op.mul7794.us.us.us, %i.fqx
  %gep7797.us.us.us.5 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.5
  %i.fwh = load i16, ptr %gep7797.us.us.us.5, align 2, !tbaa !28
  %.reass7795.us.us.us.6 = mul i64 %factor.op.mul7794.us.us.us, %i.fqy
  %gep7797.us.us.us.6 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.6
  %i.fwi = load i16, ptr %gep7797.us.us.us.6, align 2, !tbaa !28
  %.reass7795.us.us.us.7 = mul i64 %factor.op.mul7794.us.us.us, %i.fqz
  %gep7797.us.us.us.7 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.7
  %i.fwj = load i16, ptr %gep7797.us.us.us.7, align 2, !tbaa !28
  %.reass7795.us.us.us.8 = mul i64 %factor.op.mul7794.us.us.us, %i.fra
  %gep7797.us.us.us.8 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.8
  %i.fwk = load i16, ptr %gep7797.us.us.us.8, align 2, !tbaa !28
  %.reass7795.us.us.us.9 = mul i64 %factor.op.mul7794.us.us.us, %i.frb
  %gep7797.us.us.us.9 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.9
  %i.fwl = load i16, ptr %gep7797.us.us.us.9, align 2, !tbaa !28
  %.reass7795.us.us.us.10 = mul i64 %factor.op.mul7794.us.us.us, %i.frc
  %gep7797.us.us.us.10 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.10
  %i.fwm = load i16, ptr %gep7797.us.us.us.10, align 2, !tbaa !28
  %.reass7795.us.us.us.11 = mul i64 %factor.op.mul7794.us.us.us, %i.frd
  %gep7797.us.us.us.11 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.11
  %i.fwn = load i16, ptr %gep7797.us.us.us.11, align 2, !tbaa !28
  %.reass7795.us.us.us.12 = mul i64 %factor.op.mul7794.us.us.us, %i.fre
  %gep7797.us.us.us.12 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.12
  %i.fwo = load i16, ptr %gep7797.us.us.us.12, align 2, !tbaa !28
  %.reass7795.us.us.us.13 = mul i64 %factor.op.mul7794.us.us.us, %i.frf
  %gep7797.us.us.us.13 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.13
  %i.fwp = load i16, ptr %gep7797.us.us.us.13, align 2, !tbaa !28
  %.reass7795.us.us.us.14 = mul i64 %factor.op.mul7794.us.us.us, %i.frg
  %gep7797.us.us.us.14 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.14
  %i.fwq = load i16, ptr %gep7797.us.us.us.14, align 2, !tbaa !28
  %.reass7795.us.us.us.15 = mul i64 %factor.op.mul7794.us.us.us, %i.frh
  %gep7797.us.us.us.15 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.15
  %i.fwr = load i16, ptr %gep7797.us.us.us.15, align 2, !tbaa !28
  %i.fws = insertelement <16 x i16> poison, i16 %i.fwc, i64 0
  %i.fwt = insertelement <16 x i16> %i.fws, i16 %i.fwd, i64 1
  %i.fwu = insertelement <16 x i16> %i.fwt, i16 %i.fwe, i64 2
  %i.fwv = insertelement <16 x i16> %i.fwu, i16 %i.fwf, i64 3
  %i.fww = insertelement <16 x i16> %i.fwv, i16 %i.fwg, i64 4
  %i.fwx = insertelement <16 x i16> %i.fww, i16 %i.fwh, i64 5
  %i.fwy = insertelement <16 x i16> %i.fwx, i16 %i.fwi, i64 6
  %i.fwz = insertelement <16 x i16> %i.fwy, i16 %i.fwj, i64 7
  %i.fxa = insertelement <16 x i16> %i.fwz, i16 %i.fwk, i64 8
  %i.fxb = insertelement <16 x i16> %i.fxa, i16 %i.fwl, i64 9
  %i.fxc = insertelement <16 x i16> %i.fxb, i16 %i.fwm, i64 10
  %i.fxd = insertelement <16 x i16> %i.fxc, i16 %i.fwn, i64 11
  %i.fxe = insertelement <16 x i16> %i.fxd, i16 %i.fwo, i64 12
  %i.fxf = insertelement <16 x i16> %i.fxe, i16 %i.fwp, i64 13
  %i.fxg = insertelement <16 x i16> %i.fxf, i16 %i.fwq, i64 14
  %i.fxh = insertelement <16 x i16> %i.fxg, i16 %i.fwr, i64 15
  %i.fxi = zext <16 x i16> %i.fxh to <16 x i32>
  %i.fxj = shl nuw <16 x i32> %i.fxi, splat (i32 16)
  %.sroa.08560.60.vec.insert = bitcast <16 x i32> %i.fxj to <16 x float>
  %i.fxk = load <16 x bfloat>, ptr %i.frx, align 32, !tbaa !26
  %i.fxl = fpext fast <16 x bfloat> %i.fxk to <16 x float>
  %i.fxm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08560.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fxl, <16 x float> nofpclass(nan inf) %.56615.us.us.us)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us, %.split2197.us.us.us, %bb.cv, %.lr.ph.split.us.us.us7838
  %.66616.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.lr.ph.split.us.us.us7838 ], [ %.266127799.us.us.us, %.split2197.us.us.us ], [ %i.fsq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ], [ %i.fua, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fxm, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us ], [ %i.fvx, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.266127799.us.us.us, %bb.cv ], [ %i.fti, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread ] ; 2 uses
  %indvars.iv.next8462 = add nuw nsw i64 %indvars.iv8461, 1 ; 2 uses
  %exitcond8465.not = icmp eq i64 %indvars.iv.next8462, %i.fql
  br i1 %exitcond8465.not, label %..loopexit6869_crit_edge.us.us, label %.lr.ph.split.us.us.us7838, !llvm.loop !183

..loopexit6869_crit_edge.us.us:                   ; preds = %bb.cw, %.preheader6868.us.us, %bb.cu, %.lr.ph7808.split.us.us
  %.76617.us.us = phi nsz <16 x float> [ %.166117806.us.us, %.lr.ph7808.split.us.us ], [ %.166117806.us.us, %bb.cu ], [ %.166117806.us.us, %.preheader6868.us.us ], [ %.66616.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8467 = add nuw nsw i64 %indvars.iv8466, 1 ; 2 uses
  %exitcond8470.not = icmp eq i64 %indvars.iv.next8467, %wide.trip.count8469
  br i1 %exitcond8470.not, label %._crit_edge7809.us, label %.lr.ph7808.split.us.us, !llvm.loop !184

._crit_edge7809.us:                               ; preds = %..loopexit6869_crit_edge.us.us, %.preheader6874.us
  %.us-phi7820.us = phi <16 x float> [ %.066107822.us, %.preheader6874.us ], [ %.76617.us.us, %..loopexit6869_crit_edge.us.us ] ; 2 uses
  %i.fxn = getelementptr inbounds [2 x i8], ptr %.018487823.us, i64 %i.fpt ; 2 uses
  %indvars.iv.next8472 = add nuw nsw i64 %indvars.iv8471, 16 ; 3 uses
  %i.fxo = icmp slt i64 %indvars.iv.next8472, %invariant.op8795
  br i1 %i.fxo, label %.preheader6874.us, label %._crit_edge7827.loopexit, !llvm.loop !185

._crit_edge7827.loopexit:                         ; preds = %._crit_edge7809.us
  %i.fxp = trunc nuw nsw i64 %indvars.iv.next8472 to i32
  br label %._crit_edge7827

._crit_edge7827:                                  ; preds = %.preheader6874.lr.ph, %._crit_edge7827.loopexit, %_ZN4ncnn3MatD2Ev.exit2217
  %.06610.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %.us-phi7820.us, %._crit_edge7827.loopexit ], [ zeroinitializer, %.preheader6874.lr.ph ] ; 3 uses
  %.01848.lcssa = phi ptr [ %i.fpo, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fxn, %._crit_edge7827.loopexit ], [ %scevgep8456, %.preheader6874.lr.ph ] ; 3 uses
  %.01843.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fxp, %._crit_edge7827.loopexit ], [ %i.eme, %.preheader6874.lr.ph ] ; 6 uses
  %i.fxq = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fxr = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fxs = fadd fast <8 x float> %i.fxq, %i.fxr   ; 2 uses
  %i.fxt = shufflevector <8 x float> %i.fxs, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fxu = shufflevector <8 x float> %i.fxs, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fxv = fadd fast <4 x float> %i.fxt, %i.fxu   ; 2 uses
  %i.fxw = shufflevector <4 x float> %i.fxv, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fxx = fadd fast <4 x float> %i.fxw, %i.fxv
  %i.fxy = extractelement <4 x float> %i.fxx, i64 1
  %i.fxz = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fya = or disjoint i32 %.01843.lcssa, 7
  %i.fyb = icmp slt i32 %i.fya, %i.eky
  br i1 %i.fyb, label %.preheader6873.lr.ph, label %._crit_edge7866

.preheader6873.lr.ph:                             ; preds = %._crit_edge7827
  %i.fyc = load i32, ptr %i.j, align 4
  %invariant.op7857 = sub i32 %.neg6798, %i.fyc
  %i.fyd = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fye = load i32, ptr %i.a, align 4
  %.fr8052 = freeze i32 %i.fye                    ; 2 uses
  %i.fyf = icmp sgt i32 %.fr8052, 0
  %i.fyg = load i32, ptr %i.i, align 4
  %.neg6796 = add nuw nsw i32 %.018688011, 1
  %invariant.op7850 = sub i32 %.neg6796, %i.fyg
  %i.fyh = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpq, label %.preheader6873.us.preheader, label %.preheader6873.preheader

.preheader6873.preheader:                         ; preds = %.preheader6873.lr.ph
  %i.fyi = add i32 %.01843.lcssa, 15
  %smax8474 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.fyi)
  %i.fyj = add i32 %smax8474, -8
  %i.fyk = sub i32 %i.fyj, %.01843.lcssa          ; 2 uses
  %i.fyl = lshr i32 %i.fyk, 2
  %i.fym = and i32 %i.fyl, 1073741822
  %narrow8763 = add nuw nsw i32 %i.fym, 2
  %i.fyn = zext nneg i32 %narrow8763 to i64
  %i.fyo = mul nsw i64 %i.fpv, %i.fyn
  %scevgep8475 = getelementptr i8, ptr %.01848.lcssa, i64 %i.fyo
  %i.fyp = add i32 %.01843.lcssa, 8
  %i.fyq = and i32 %i.fyk, -8
  %i.fyr = add i32 %i.fyp, %i.fyq
  br label %._crit_edge7866

.preheader6873.us.preheader:                      ; preds = %.preheader6873.lr.ph
  %i.fys = load i32, ptr %i.c, align 4
  %i.fyt = load i32, ptr %i.d, align 4
  %i.fyu = zext i32 %.fr8052 to i64               ; 2 uses
  %i.fyv = zext i32 %.01843.lcssa to i64
  br label %.preheader6873.us

.preheader6873.us:                                ; preds = %.preheader6873.us.preheader, %._crit_edge7855.us
  %indvars.iv8490 = phi i64 [ %i.fyv, %.preheader6873.us.preheader ], [ %indvars.iv.next8491, %._crit_edge7855.us ] ; 11 uses
  %.118497862.us = phi ptr [ %.01848.lcssa, %.preheader6873.us.preheader ], [ %i.gcw, %._crit_edge7855.us ] ; 2 uses
  %.066057861.us = phi <8 x float> [ zeroinitializer, %.preheader6873.us.preheader ], [ %.us-phi7859.us, %._crit_edge7855.us ] ; 2 uses
  %i.fyw = trunc nuw i64 %indvars.iv8490 to i32
  %i.fyx = lshr exact i32 %i.fyw, 2               ; 2 uses
  %i.fyy = zext nneg i32 %i.fyx to i64
  %i.fyz = or disjoint i32 %i.fyx, 1
  %i.fza = zext nneg i32 %i.fyz to i64
  %i.fzb = lshr exact i64 %indvars.iv8490, 3
  %i.fzc = and i64 %i.fzb, 536870911
  br i1 %i.fyf, label %.lr.ph7854.split.us.us.preheader, label %._crit_edge7855.us

.lr.ph7854.split.us.us.preheader:                 ; preds = %.preheader6873.us
  %i.fzd = or disjoint i64 %indvars.iv8490, 1
  %i.fze = or disjoint i64 %indvars.iv8490, 2
  %i.fzf = or disjoint i64 %indvars.iv8490, 3
  %i.fzg = or disjoint i64 %indvars.iv8490, 4
  %i.fzh = or disjoint i64 %indvars.iv8490, 5
  %i.fzi = or disjoint i64 %indvars.iv8490, 6
  %i.fzj = or disjoint i64 %indvars.iv8490, 7
  br label %.lr.ph7854.split.us.us

.lr.ph7854.split.us.us:                           ; preds = %.lr.ph7854.split.us.us.preheader, %..loopexit6867_crit_edge.us.us
  %indvars.iv8485 = phi i64 [ 0, %.lr.ph7854.split.us.us.preheader ], [ %indvars.iv.next8486, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %.166067852.us.us = phi <8 x float> [ %.066057861.us, %.lr.ph7854.split.us.us.preheader ], [ %.46609.us.us, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %i.fzk = trunc i64 %indvars.iv8485 to i32
  %i.fzl = mul i32 %i.fyt, %i.fzk
  %.reass7858.us.us = add i32 %i.fzl, %invariant.op7857 ; 3 uses
  %i.fzm = icmp slt i32 %.reass7858.us.us, 0
  br i1 %i.fzm, label %..loopexit6867_crit_edge.us.us, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph7854.split.us.us
  %i.fzn = srem i32 %.reass7858.us.us, %i.fyd
  %i.fzo = sdiv i32 %.reass7858.us.us, %i.fyd     ; 2 uses
  %.not2102.us.us = icmp eq i32 %i.fzn, 0
  %.not2103.us.us = icmp slt i32 %i.fzo, %i.elc
  %or.cond9018 = select i1 %.not2102.us.us, i1 %.not2103.us.us, i1 false
  br i1 %or.cond9018, label %.preheader6866.us.us, label %..loopexit6867_crit_edge.us.us

.preheader6866.us.us:                             ; preds = %bb.cx
  %i.fzp = mul nuw nsw i64 %indvars.iv8485, %i.fyu
  %i.fzq = sext i32 %i.fzo to i64                 ; 3 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.preheader6866.us.us
  %indvars.iv8480 = phi i64 [ %indvars.iv.next8481, %bb.db ], [ 0, %.preheader6866.us.us ] ; 3 uses
  %.266077847.us.us = phi <8 x float> [ %.36608.us.us, %bb.db ], [ %.166067852.us.us, %.preheader6866.us.us ] ; 4 uses
  %i.fzr = trunc i64 %indvars.iv8480 to i32
  %i.fzs = mul i32 %i.fys, %i.fzr
  %.reass7851.us.us = add i32 %i.fzs, %invariant.op7850 ; 3 uses
  %i.fzt = icmp slt i32 %.reass7851.us.us, 0
  br i1 %i.fzt, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fzu = srem i32 %.reass7851.us.us, %i.fyh
  %i.fzv = sdiv i32 %.reass7851.us.us, %i.fyh     ; 4 uses
  %.not2104.us.us = icmp eq i32 %i.fzu, 0
  %.not2105.us.us = icmp slt i32 %i.fzv, %i.ela
  %or.cond9019 = select i1 %.not2104.us.us, i1 %.not2105.us.us, i1 false
  br i1 %or.cond9019, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.fzw = add nuw nsw i64 %i.fzp, %indvars.iv8480
  %i.fzx = shl i64 %i.fzw, 3
  %i.fzy = and i64 %i.fzx, 4294967288
  %i.fzz = getelementptr inbounds nuw [2 x i8], ptr %.118497862.us, i64 %i.fzy
  switch i32 %.fr8050, label %bb.db [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2208.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2207.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2205.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2205.us.us:                  ; preds = %bb.da
  %i.gaa = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !263
  %i.gab = load ptr, ptr %0, align 8, !tbaa !19, !noalias !263
  %i.gac = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !263
  %i.gad = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !263 ; 2 uses
  %factor.op.mul7842.us.us = mul i64 %i.gac, %i.gad ; 8 uses
  %i.gae = sext i32 %i.gaa to i64
  %i.gaf = mul nsw i64 %i.gae, %i.fzq
  %i.gag = mul i64 %i.gaf, %i.gad
  %invariant.gep.us.us7877 = getelementptr i8, ptr %i.gab, i64 %i.gag
  %i.gah = sext i32 %i.fzv to i64
  %invariant.gep7844.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7877, i64 %i.gah ; 8 uses
  %.reass7843.us.us = mul i64 %factor.op.mul7842.us.us, %indvars.iv8490
  %gep7845.us.us = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us
  %i.gai = load i16, ptr %gep7845.us.us, align 2, !tbaa !28
  %.reass7843.us.us.1 = mul i64 %factor.op.mul7842.us.us, %i.fzd
  %gep7845.us.us.1 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.1
  %i.gaj = load i16, ptr %gep7845.us.us.1, align 2, !tbaa !28
  %.reass7843.us.us.2 = mul i64 %factor.op.mul7842.us.us, %i.fze
  %gep7845.us.us.2 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.2
  %i.gak = load i16, ptr %gep7845.us.us.2, align 2, !tbaa !28
  %.reass7843.us.us.3 = mul i64 %factor.op.mul7842.us.us, %i.fzf
  %gep7845.us.us.3 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.3
  %i.gal = load i16, ptr %gep7845.us.us.3, align 2, !tbaa !28
  %.reass7843.us.us.4 = mul i64 %factor.op.mul7842.us.us, %i.fzg
  %gep7845.us.us.4 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.4
  %i.gam = load i16, ptr %gep7845.us.us.4, align 2, !tbaa !28
  %.reass7843.us.us.5 = mul i64 %factor.op.mul7842.us.us, %i.fzh
  %gep7845.us.us.5 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.5
  %i.gan = load i16, ptr %gep7845.us.us.5, align 2, !tbaa !28
  %.reass7843.us.us.6 = mul i64 %factor.op.mul7842.us.us, %i.fzi
  %gep7845.us.us.6 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.6
  %i.gao = load i16, ptr %gep7845.us.us.6, align 2, !tbaa !28
  %.reass7843.us.us.7 = mul i64 %factor.op.mul7842.us.us, %i.fzj
  %gep7845.us.us.7 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.7
  %i.gap = load i16, ptr %gep7845.us.us.7, align 2, !tbaa !28
  %i.gaq = insertelement <8 x i16> poison, i16 %i.gai, i64 0
  %i.gar = insertelement <8 x i16> %i.gaq, i16 %i.gaj, i64 1
  %i.gas = insertelement <8 x i16> %i.gar, i16 %i.gak, i64 2
  %i.gat = insertelement <8 x i16> %i.gas, i16 %i.gal, i64 3
  %i.gau = insertelement <8 x i16> %i.gat, i16 %i.gam, i64 4
  %i.gav = insertelement <8 x i16> %i.gau, i16 %i.gan, i64 5
  %i.gaw = insertelement <8 x i16> %i.gav, i16 %i.gao, i64 6
  %i.gax = insertelement <8 x i16> %i.gaw, i16 %i.gap, i64 7
  %i.gay = zext <8 x i16> %i.gax to <8 x i32>
  %i.gaz = shl nuw <8 x i32> %i.gay, splat (i32 16)
  %.sroa.08558.28.vec.insert = bitcast <8 x i32> %i.gaz to <8 x float>
  br label %.sink.split8904

_ZN4ncnn3MatD2Ev.exit2207.us.us:                  ; preds = %bb.da
  %i.gba = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !264
  %i.gbb = load ptr, ptr %0, align 8, !tbaa !19, !noalias !264 ; 2 uses
  %i.gbc = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.gbd = mul i64 %i.gbc, %i.fyy
  %i.gbe = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !264 ; 3 uses
  %i.gbf = mul i64 %i.gbd, %i.gbe
  %i.gbg = getelementptr inbounds nuw i8, ptr %i.gbb, i64 %i.gbf
  %i.gbh = sext i32 %i.gba to i64
  %i.gbi = mul nsw i64 %i.gbh, %i.fzq
  %i.gbj = mul i64 %i.gbi, %i.gbe                 ; 2 uses
  %i.gbk = getelementptr inbounds nuw i8, ptr %i.gbg, i64 %i.gbj
  %i.gbl = shl nsw i32 %i.fzv, 2
  %i.gbm = sext i32 %i.gbl to i64                 ; 2 uses
  %i.gbn = getelementptr inbounds [2 x i8], ptr %i.gbk, i64 %i.gbm
  %i.gbo = mul i64 %i.gbc, %i.fza
  %i.gbp = mul i64 %i.gbo, %i.gbe
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbb, i64 %i.gbp
  %i.gbr = getelementptr inbounds nuw i8, ptr %i.gbq, i64 %i.gbj
  %i.gbs = getelementptr inbounds [2 x i8], ptr %i.gbr, i64 %i.gbm
  %i.gbt = load i64, ptr %i.gbn, align 1, !tbaa !26
  %i.gbu = insertelement <2 x i64> poison, i64 %i.gbt, i64 0
  %i.gbv = bitcast <2 x i64> %i.gbu to <8 x i16>
  %i.gbw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gbx = load i64, ptr %i.gbs, align 1, !tbaa !26
  %i.gby = insertelement <2 x i64> poison, i64 %i.gbx, i64 0
  %i.gbz = bitcast <2 x i64> %i.gby to <8 x i16>
  %i.gca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gcb = shufflevector <8 x i16> %i.gbw, <8 x i16> %i.gca, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gcc = bitcast <16 x i16> %i.gcb to <8 x float>
  br label %.sink.split8904

_ZN4ncnn3MatD2Ev.exit2208.us.us:                  ; preds = %bb.da
  %i.gcd = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !265
  %i.gce = load ptr, ptr %0, align 8, !tbaa !19, !noalias !265
  %i.gcf = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !265
  %i.gcg = mul i64 %i.gcf, %i.fzc
  %i.gch = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !265 ; 2 uses
  %i.gci = mul i64 %i.gcg, %i.gch
  %i.gcj = getelementptr inbounds nuw i8, ptr %i.gce, i64 %i.gci
  %i.gck = sext i32 %i.gcd to i64
  %i.gcl = mul nsw i64 %i.gck, %i.fzq
  %i.gcm = mul i64 %i.gcl, %i.gch
  %i.gcn = getelementptr inbounds nuw i8, ptr %i.gcj, i64 %i.gcm
  %i.gco = shl nsw i32 %i.fzv, 3
  %i.gcp = sext i32 %i.gco to i64
  %i.gcq = getelementptr inbounds [2 x i8], ptr %i.gcn, i64 %i.gcp
  %i.gcr = load <8 x bfloat>, ptr %i.gcq, align 16, !tbaa !26
  %i.gcs = fpext fast <8 x bfloat> %i.gcr to <8 x float>
  br label %.sink.split8904

.sink.split8904:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2205.us.us, %_ZN4ncnn3MatD2Ev.exit2207.us.us, %_ZN4ncnn3MatD2Ev.exit2208.us.us
  %.sink8905 = phi <8 x float> [ %i.gcs, %_ZN4ncnn3MatD2Ev.exit2208.us.us ], [ %i.gcc, %_ZN4ncnn3MatD2Ev.exit2207.us.us ], [ %.sroa.08558.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2205.us.us ]
  %i.gct = load <8 x bfloat>, ptr %i.fzz, align 16, !tbaa !26
  %i.gcu = fpext fast <8 x bfloat> %i.gct to <8 x float>
  %i.gcv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8905, <8 x float> nofpclass(nan inf) %i.gcu, <8 x float> nofpclass(nan inf) %.266077847.us.us)
  br label %bb.db

bb.db:                                            ; preds = %.sink.split8904, %bb.da, %bb.cz, %bb.cy
  %.36608.us.us = phi nsz <8 x float> [ %.266077847.us.us, %bb.cy ], [ %.266077847.us.us, %bb.da ], [ %.266077847.us.us, %bb.cz ], [ %i.gcv, %.sink.split8904 ] ; 2 uses
  %indvars.iv.next8481 = add nuw nsw i64 %indvars.iv8480, 1 ; 2 uses
  %exitcond8484.not = icmp eq i64 %indvars.iv.next8481, %i.fyu
  br i1 %exitcond8484.not, label %..loopexit6867_crit_edge.us.us, label %bb.cy, !llvm.loop !192

..loopexit6867_crit_edge.us.us:                   ; preds = %bb.db, %bb.cx, %.lr.ph7854.split.us.us
  %.46609.us.us = phi nsz <8 x float> [ %.166067852.us.us, %.lr.ph7854.split.us.us ], [ %.166067852.us.us, %bb.cx ], [ %.36608.us.us, %bb.db ] ; 2 uses
  %indvars.iv.next8486 = add nuw nsw i64 %indvars.iv8485, 1 ; 2 uses
  %exitcond8489.not = icmp eq i64 %indvars.iv.next8486, %wide.trip.count8488
  br i1 %exitcond8489.not, label %._crit_edge7855.us, label %.lr.ph7854.split.us.us, !llvm.loop !193

._crit_edge7855.us:                               ; preds = %..loopexit6867_crit_edge.us.us, %.preheader6873.us
  %.us-phi7859.us = phi <8 x float> [ %.066057861.us, %.preheader6873.us ], [ %.46609.us.us, %..loopexit6867_crit_edge.us.us ] ; 2 uses
  %i.gcw = getelementptr inbounds [2 x i8], ptr %.118497862.us, i64 %i.fpv ; 2 uses
  %indvars.iv.next8491 = add nuw nsw i64 %indvars.iv8490, 8 ; 3 uses
  %i.gcx = trunc i64 %indvars.iv.next8491 to i32
  %i.gcy = or i32 %i.gcx, 7
  %i.gcz = icmp slt i32 %i.gcy, %i.eky
  br i1 %i.gcz, label %.preheader6873.us, label %._crit_edge7866.loopexit, !llvm.loop !194

._crit_edge7866.loopexit:                         ; preds = %._crit_edge7855.us
  %i.gda = trunc nuw i64 %indvars.iv.next8491 to i32
  br label %._crit_edge7866

._crit_edge7866:                                  ; preds = %.preheader6873.preheader, %._crit_edge7866.loopexit, %._crit_edge7827
  %.06605.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7827 ], [ %.us-phi7859.us, %._crit_edge7866.loopexit ], [ zeroinitializer, %.preheader6873.preheader ] ; 2 uses
  %.11849.lcssa = phi ptr [ %.01848.lcssa, %._crit_edge7827 ], [ %i.gcw, %._crit_edge7866.loopexit ], [ %scevgep8475, %.preheader6873.preheader ] ; 4 uses
  %.11844.lcssa = phi i32 [ %.01843.lcssa, %._crit_edge7827 ], [ %i.gda, %._crit_edge7866.loopexit ], [ %i.fyr, %.preheader6873.preheader ] ; 9 uses
  %i.gdb = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gdc = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gdd = fadd fast <4 x float> %i.gdb, %i.gdc   ; 2 uses
  %i.gde = or disjoint i32 %.11844.lcssa, 3
  %i.gdf = icmp slt i32 %i.gde, %i.eky
  br i1 %i.gdf, label %.preheader6872.lr.ph, label %._crit_edge7924

.preheader6872.lr.ph:                             ; preds = %._crit_edge7866
  %i.gdg = load i32, ptr %i.d, align 4
  %i.gdh = load i32, ptr %i.j, align 4
  %invariant.op7907 = sub i32 %.neg6798, %i.gdh
  %i.gdi = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gdj = load i32, ptr %i.a, align 4
  %.fr8053 = freeze i32 %i.gdj                    ; 2 uses
  %i.gdk = load i32, ptr %i.c, align 4            ; 2 uses
  %i.gdl = load i32, ptr %i.i, align 4
  %.neg6792 = add nuw nsw i32 %.018688011, 1
  %invariant.op7889 = sub i32 %.neg6792, %i.gdl   ; 2 uses
  %i.gdm = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.fpq, label %.preheader6872.lr.ph.split.us, label %.preheader6872.preheader

.preheader6872.preheader:                         ; preds = %.preheader6872.lr.ph
  %i.gdn = add i32 %.11844.lcssa, 7
  %smax8493 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gdn)
  %i.gdo = add i32 %smax8493, -4
  %i.gdp = sub i32 %i.gdo, %.11844.lcssa          ; 2 uses
  %i.gdq = lshr i32 %i.gdp, 1
  %i.gdr = and i32 %i.gdq, 2147483646
  %narrow8764 = add nuw i32 %i.gdr, 2
  %i.gds = zext i32 %narrow8764 to i64
  %i.gdt = mul nsw i64 %i.fpx, %i.gds
  %scevgep8494 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gdt
  %i.gdu = add i32 %.11844.lcssa, 4
  %i.gdv = and i32 %i.gdp, -4
  %i.gdw = add i32 %i.gdu, %i.gdv
  br label %._crit_edge7924

.preheader6872.lr.ph.split.us:                    ; preds = %.preheader6872.lr.ph
  %i.gdx = icmp sgt i32 %.fr8053, 0
  br i1 %i.gdx, label %.preheader6872.us.us.preheader, label %.preheader6872.us.preheader

.preheader6872.us.preheader:                      ; preds = %.preheader6872.lr.ph.split.us
  %i.gdy = add i32 %.11844.lcssa, 7
  %smax8495 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gdy)
  %i.gdz = add i32 %smax8495, -4
  %i.gea = sub i32 %i.gdz, %.11844.lcssa          ; 2 uses
  %i.geb = lshr i32 %i.gea, 1
  %i.gec = and i32 %i.geb, 2147483646
  %narrow8765 = add nuw i32 %i.gec, 2
  %i.ged = zext i32 %narrow8765 to i64
  %i.gee = mul nsw i64 %i.fpx, %i.ged
  %scevgep8496 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gee
  %i.gef = add i32 %.11844.lcssa, 4
  %i.geg = and i32 %i.gea, -4
  %i.geh = add i32 %i.gef, %i.geg
  br label %._crit_edge7924

.preheader6872.us.us.preheader:                   ; preds = %.preheader6872.lr.ph.split.us
  %i.gei = zext nneg i32 %.fr8053 to i64          ; 3 uses
  %i.gej = zext i32 %.11844.lcssa to i64
  br label %.preheader6872.us.us

.preheader6872.us.us:                             ; preds = %.preheader6872.us.us.preheader, %._crit_edge7905.split.us.us.us
  %indvars.iv8516 = phi i64 [ %i.gej, %.preheader6872.us.us.preheader ], [ %indvars.iv.next8517, %._crit_edge7905.split.us.us.us ] ; 6 uses
  %.218507920.us.us = phi ptr [ %.11849.lcssa, %.preheader6872.us.us.preheader ], [ %i.gho, %._crit_edge7905.split.us.us.us ] ; 3 uses
  %.065417919.us.us = phi <4 x float> [ zeroinitializer, %.preheader6872.us.us.preheader ], [ %.46545.us.us.us, %._crit_edge7905.split.us.us.us ]
  %i.gek = lshr exact i64 %indvars.iv8516, 2
  %i.gel = and i64 %i.gek, 1073741823
  %i.gem = or disjoint i64 %indvars.iv8516, 1
  %i.gen = or disjoint i64 %indvars.iv8516, 2
  %i.geo = or disjoint i64 %indvars.iv8516, 3
  br label %bb.dc

bb.dc:                                            ; preds = %..loopexit6865_crit_edge.us.us.us, %.preheader6872.us.us
  %indvars.iv8511 = phi i64 [ %indvars.iv.next8512, %..loopexit6865_crit_edge.us.us.us ], [ 0, %.preheader6872.us.us ] ; 3 uses
  %.165427902.us.us.us = phi <4 x float> [ %.46545.us.us.us, %..loopexit6865_crit_edge.us.us.us ], [ %.065417919.us.us, %.preheader6872.us.us ] ; 5 uses
  %i.gep = trunc i64 %indvars.iv8511 to i32
  %i.geq = mul i32 %i.gdg, %i.gep
  %.reass7908.us.us.us = add i32 %i.geq, %invariant.op7907 ; 3 uses
  %i.ger = icmp slt i32 %.reass7908.us.us.us, 0
  br i1 %i.ger, label %..loopexit6865_crit_edge.us.us.us, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ges = srem i32 %.reass7908.us.us.us, %i.gdi
  %i.get = sdiv i32 %.reass7908.us.us.us, %i.gdi  ; 2 uses
  %.not2098.us.us.us = icmp eq i32 %i.ges, 0
  %.not2099.us.us.us = icmp slt i32 %i.get, %i.elc
  %or.cond9020 = select i1 %.not2098.us.us.us, i1 %.not2099.us.us.us, i1 false
  br i1 %or.cond9020, label %.preheader6864.us.us.us, label %..loopexit6865_crit_edge.us.us.us

.preheader6864.us.us.us:                          ; preds = %bb.dd
  %i.geu = mul nuw nsw i64 %indvars.iv8511, %i.gei ; 2 uses
  %i.gev = sext i32 %i.get to i64                 ; 2 uses
  switch i32 %.fr8050, label %..loopexit6865_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7935.us
    i32 1, label %.lr.ph.split.us7892.us.us.us
  ]

.lr.ph.split.us7892.us.us.us:                     ; preds = %.preheader6864.us.us.us, %bb.df
  %indvars.iv8501 = phi i64 [ %indvars.iv.next8502, %bb.df ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us7894.us.us.us = phi <4 x float> [ %.36544.us7898.us.us.us, %bb.df ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.gew = trunc i64 %indvars.iv8501 to i32
  %i.gex = mul i32 %i.gdk, %i.gew
  %.reass7890.us7895.us.us.us = add i32 %i.gex, %invariant.op7889 ; 3 uses
  %i.gey = icmp slt i32 %.reass7890.us7895.us.us.us, 0
  br i1 %i.gey, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split.us7892.us.us.us
  %i.gez = srem i32 %.reass7890.us7895.us.us.us, %i.gdm
  %i.gfa = sdiv i32 %.reass7890.us7895.us.us.us, %i.gdm ; 2 uses
  %.not2100.us7896.us.us.us = icmp eq i32 %i.gez, 0
  %.not2101.us7897.us.us.us = icmp slt i32 %i.gfa, %i.ela
  %or.cond9021 = select i1 %.not2100.us7896.us.us.us, i1 %.not2101.us7897.us.us.us, i1 false
  br i1 %or.cond9021, label %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, label %bb.df

_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us:            ; preds = %bb.de
  %i.gfb = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !266
  %i.gfc = load ptr, ptr %0, align 8, !tbaa !19, !noalias !266
  %i.gfd = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !266
  %i.gfe = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !266 ; 2 uses
  %factor.op.mul7881.us.us.us.us = mul i64 %i.gfd, %i.gfe ; 4 uses
  %i.gff = sext i32 %i.gfb to i64
  %i.gfg = mul nsw i64 %i.gff, %i.gev
  %i.gfh = mul i64 %i.gfg, %i.gfe
  %invariant.gep.us.us7909.us.us = getelementptr i8, ptr %i.gfc, i64 %i.gfh
  %i.gfi = sext i32 %i.gfa to i64
  %invariant.gep7883.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7909.us.us, i64 %i.gfi ; 4 uses
  %.reass7882.us.us.us.us = mul i64 %factor.op.mul7881.us.us.us.us, %indvars.iv8516
  %gep7884.us.us.us.us = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us
  %i.gfj = load i16, ptr %gep7884.us.us.us.us, align 2, !tbaa !28
  %.reass7882.us.us.us.us.1 = mul i64 %factor.op.mul7881.us.us.us.us, %i.gem
  %gep7884.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.1
  %i.gfk = load i16, ptr %gep7884.us.us.us.us.1, align 2, !tbaa !28
  %.reass7882.us.us.us.us.2 = mul i64 %factor.op.mul7881.us.us.us.us, %i.gen
  %gep7884.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.2
  %i.gfl = load i16, ptr %gep7884.us.us.us.us.2, align 2, !tbaa !28
  %.reass7882.us.us.us.us.3 = mul i64 %factor.op.mul7881.us.us.us.us, %i.geo
  %gep7884.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.3
  %i.gfm = load i16, ptr %gep7884.us.us.us.us.3, align 2, !tbaa !28
  %i.gfn = zext i16 %i.gfm to i32
  %i.gfo = zext i16 %i.gfl to i32
  %i.gfp = zext i16 %i.gfk to i32
  %i.gfq = zext i16 %i.gfj to i32
  %i.gfr = insertelement <4 x i32> poison, i32 %i.gfq, i64 0
  %i.gfs = insertelement <4 x i32> %i.gfr, i32 %i.gfp, i64 1
  %i.gft = insertelement <4 x i32> %i.gfs, i32 %i.gfo, i64 2
  %i.gfu = insertelement <4 x i32> %i.gft, i32 %i.gfn, i64 3
  %i.gfv = shl nuw <4 x i32> %i.gfu, splat (i32 16)
  %.sroa.0.12.vec.insert = bitcast <4 x i32> %i.gfv to <4 x float>
  %i.gfw = add nuw nsw i64 %i.geu, %indvars.iv8501
  %i.gfx = shl i64 %i.gfw, 2
  %i.gfy = and i64 %i.gfx, 4294967292
  %i.gfz = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.gfy
  %i.gga = load i64, ptr %i.gfz, align 1, !tbaa !26
  %i.ggb = insertelement <2 x i64> poison, i64 %i.gga, i64 0
  %i.ggc = bitcast <2 x i64> %i.ggb to <8 x i16>
  %i.ggd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gge = bitcast <8 x i16> %i.ggd to <4 x float>
  %i.ggf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert, <4 x float> nofpclass(nan inf) %i.gge, <4 x float> nofpclass(nan inf) %.265437886.us7894.us.us.us)
  br label %bb.df

bb.df:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, %bb.de, %.lr.ph.split.us7892.us.us.us
  %.36544.us7898.us.us.us = phi nsz <4 x float> [ %.265437886.us7894.us.us.us, %.lr.ph.split.us7892.us.us.us ], [ %i.ggf, %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us ], [ %.265437886.us7894.us.us.us, %bb.de ] ; 2 uses
  %indvars.iv.next8502 = add nuw nsw i64 %indvars.iv8501, 1 ; 2 uses
  %exitcond8505.not = icmp eq i64 %indvars.iv.next8502, %i.gei
  br i1 %exitcond8505.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us7892.us.us.us, !llvm.loop !197

.lr.ph.split.us.us.us7935.us:                     ; preds = %.preheader6864.us.us.us, %bb.dh
  %indvars.iv8506 = phi i64 [ %indvars.iv.next8507, %bb.dh ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us.us.us.us = phi <4 x float> [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.ggg = trunc i64 %indvars.iv8506 to i32
  %i.ggh = mul i32 %i.gdk, %i.ggg
  %.reass7890.us.us.us.us = add i32 %i.ggh, %invariant.op7889 ; 3 uses
  %i.ggi = icmp slt i32 %.reass7890.us.us.us.us, 0
  br i1 %i.ggi, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.split.us.us.us7935.us
  %i.ggj = srem i32 %.reass7890.us.us.us.us, %i.gdm
  %i.ggk = sdiv i32 %.reass7890.us.us.us.us, %i.gdm ; 2 uses
  %.not2100.us.us.us.us = icmp eq i32 %i.ggj, 0
  %.not2101.us.us.us.us = icmp slt i32 %i.ggk, %i.ela
  %or.cond9022 = select i1 %.not2100.us.us.us.us, i1 %.not2101.us.us.us.us, i1 false
  br i1 %or.cond9022, label %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, label %bb.dh

_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us:            ; preds = %bb.dg
  %i.ggl = add nuw nsw i64 %i.geu, %indvars.iv8506
  %i.ggm = shl i64 %i.ggl, 2
  %i.ggn = and i64 %i.ggm, 4294967292
  %i.ggo = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.ggn
  %i.ggp = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !267
  %i.ggq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !267
  %i.ggr = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !267
  %i.ggs = mul i64 %i.ggr, %i.gel
  %i.ggt = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !267 ; 2 uses
  %i.ggu = mul i64 %i.ggs, %i.ggt
  %i.ggv = getelementptr inbounds nuw i8, ptr %i.ggq, i64 %i.ggu
  %i.ggw = sext i32 %i.ggp to i64
  %i.ggx = mul nsw i64 %i.ggw, %i.gev
  %i.ggy = mul i64 %i.ggx, %i.ggt
  %i.ggz = getelementptr inbounds nuw i8, ptr %i.ggv, i64 %i.ggy
  %i.gha = shl nsw i32 %i.ggk, 2
  %i.ghb = sext i32 %i.gha to i64
  %i.ghc = getelementptr inbounds [2 x i8], ptr %i.ggz, i64 %i.ghb
  %i.ghd = load i64, ptr %i.ghc, align 1, !tbaa !26
  %i.ghe = insertelement <2 x i64> poison, i64 %i.ghd, i64 0
  %i.ghf = bitcast <2 x i64> %i.ghe to <8 x i16>
  %i.ghg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ghf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ghh = bitcast <8 x i16> %i.ghg to <4 x float>
  %i.ghi = load i64, ptr %i.ggo, align 1, !tbaa !26
  %i.ghj = insertelement <2 x i64> poison, i64 %i.ghi, i64 0
  %i.ghk = bitcast <2 x i64> %i.ghj to <8 x i16>
  %i.ghl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ghk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ghm = bitcast <8 x i16> %i.ghl to <4 x float>
  %i.ghn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ghh, <4 x float> nofpclass(nan inf) %i.ghm, <4 x float> nofpclass(nan inf) %.265437886.us.us.us.us)
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, %bb.dg, %.lr.ph.split.us.us.us7935.us
  %.36544.us.us.us.us = phi nsz <4 x float> [ %.265437886.us.us.us.us, %.lr.ph.split.us.us.us7935.us ], [ %.265437886.us.us.us.us, %bb.dg ], [ %i.ghn, %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us ] ; 2 uses
  %indvars.iv.next8507 = add nuw nsw i64 %indvars.iv8506, 1 ; 2 uses
  %exitcond8510.not = icmp eq i64 %indvars.iv.next8507, %i.gei
  br i1 %exitcond8510.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7935.us, !llvm.loop !197

..loopexit6865_crit_edge.us.us.us:                ; preds = %bb.df, %bb.dh, %.preheader6864.us.us.us, %bb.dd, %bb.dc
  %.46545.us.us.us = phi nsz <4 x float> [ %.165427902.us.us.us, %bb.dc ], [ %.165427902.us.us.us, %bb.dd ], [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ], [ %.36544.us7898.us.us.us, %bb.df ] ; 3 uses
  %indvars.iv.next8512 = add nuw nsw i64 %indvars.iv8511, 1 ; 2 uses
  %exitcond8515.not = icmp eq i64 %indvars.iv.next8512, %wide.trip.count8514
  br i1 %exitcond8515.not, label %._crit_edge7905.split.us.us.us, label %bb.dc, !llvm.loop !200

._crit_edge7905.split.us.us.us:                   ; preds = %..loopexit6865_crit_edge.us.us.us
  %i.gho = getelementptr inbounds [2 x i8], ptr %.218507920.us.us, i64 %i.fpx ; 2 uses
  %indvars.iv.next8517 = add nuw nsw i64 %indvars.iv8516, 4 ; 3 uses
  %i.ghp = trunc i64 %indvars.iv.next8517 to i32
  %i.ghq = or i32 %i.ghp, 3
  %i.ghr = icmp slt i32 %i.ghq, %i.eky
  br i1 %i.ghr, label %.preheader6872.us.us, label %._crit_edge7924.loopexit, !llvm.loop !201

._crit_edge7924.loopexit:                         ; preds = %._crit_edge7905.split.us.us.us
  %i.ghs = trunc nuw i64 %indvars.iv.next8517 to i32
  br label %._crit_edge7924

._crit_edge7924:                                  ; preds = %.preheader6872.preheader, %.preheader6872.us.preheader, %._crit_edge7924.loopexit, %._crit_edge7866
  %.06541.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7866 ], [ %.46545.us.us.us, %._crit_edge7924.loopexit ], [ zeroinitializer, %.preheader6872.us.preheader ], [ zeroinitializer, %.preheader6872.preheader ] ; 2 uses
  %.21850.lcssa = phi ptr [ %.11849.lcssa, %._crit_edge7866 ], [ %i.gho, %._crit_edge7924.loopexit ], [ %scevgep8496, %.preheader6872.us.preheader ], [ %scevgep8494, %.preheader6872.preheader ] ; 3 uses
  %.21845.lcssa = phi i32 [ %.11844.lcssa, %._crit_edge7866 ], [ %i.ghs, %._crit_edge7924.loopexit ], [ %i.geh, %.preheader6872.us.preheader ], [ %i.gdw, %.preheader6872.preheader ] ; 6 uses
  %i.ght = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gdd, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghu = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gdd, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghv = fadd fast <4 x float> %i.ght, %i.ghu
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fxy, <4 x float> %i.ghv)
  %op.rdx8931 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01853, <8 x float> %i.fxz)
  %op.rdx8932 = fadd fast float %op.rdx, %op.rdx8931 ; 3 uses
  %i.ghw = or disjoint i32 %.21845.lcssa, 1
  %i.ghx = icmp slt i32 %i.ghw, %i.eky
  br i1 %i.ghx, label %.preheader6871.lr.ph, label %.preheader6875

.preheader6871.lr.ph:                             ; preds = %._crit_edge7924
  %i.ghy = load i32, ptr %i.j, align 4
  %invariant.op7958 = sub i32 %.neg6798, %i.ghy
  %i.ghz = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gia = load i32, ptr %i.a, align 4
  %.fr8054 = freeze i32 %i.gia                    ; 2 uses
  %i.gib = icmp sgt i32 %.fr8054, 0
  %i.gic = load i32, ptr %i.i, align 4
  %.neg6788 = add nuw nsw i32 %.018688011, 1
  %invariant.op7951 = sub i32 %.neg6788, %i.gic
  %i.gid = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpq, label %.preheader6871.us.preheader, label %.preheader6871.preheader

.preheader6871.preheader:                         ; preds = %.preheader6871.lr.ph
  %i.gie = add i32 %.21845.lcssa, 3
  %smax8519 = call i32 @llvm.smax.i32(i32 %i.eky, i32 %i.gie)
  %i.gif = add i32 %smax8519, -2
  %i.gig = sub i32 %i.gif, %.21845.lcssa          ; 2 uses
  %i.gih = and i32 %i.gig, -2
  %i.gii = zext i32 %i.gih to i64
  %i.gij = add nuw nsw i64 %i.gii, 2
  %i.gik = mul nsw i64 %i.gij, %i.fpz
  %scevgep8520 = getelementptr i8, ptr %.21850.lcssa, i64 %i.gik
  %i.gil = add i32 %.21845.lcssa, 2
  %i.gim = and i32 %i.gig, -2
  %i.gin = add i32 %i.gil, %i.gim
  br label %.preheader6875

.preheader6871.us.preheader:                      ; preds = %.preheader6871.lr.ph
  %i.gio = load i32, ptr %i.c, align 4
  %i.gip = load i32, ptr %i.d, align 4
  %i.giq = zext i32 %.fr8054 to i64               ; 2 uses
  %i.gir = zext i32 %.21845.lcssa to i64
  br label %.preheader6871.us

.preheader6871.us:                                ; preds = %.preheader6871.us.preheader, %._crit_edge7956.us
  %indvars.iv8534 = phi i64 [ %i.gir, %.preheader6871.us.preheader ], [ %indvars.iv.next8535, %._crit_edge7956.us ] ; 3 uses
  %.318517963.us = phi ptr [ %.21850.lcssa, %.preheader6871.us.preheader ], [ %i.gkk, %._crit_edge7956.us ] ; 2 uses
  %.118547962.us = phi float [ %op.rdx8932, %.preheader6871.us.preheader ], [ %.us-phi7960.us, %._crit_edge7956.us ] ; 2 uses
  br i1 %i.gib, label %.lr.ph7955.split.us.us.preheader, label %._crit_edge7956.us

.lr.ph7955.split.us.us.preheader:                 ; preds = %.preheader6871.us
  %i.gis = or disjoint i64 %indvars.iv8534, 1
  br label %.lr.ph7955.split.us.us

.lr.ph7955.split.us.us:                           ; preds = %.lr.ph7955.split.us.us.preheader, %..loopexit6863_crit_edge.us.us
  %indvars.iv8529 = phi i64 [ 0, %.lr.ph7955.split.us.us.preheader ], [ %indvars.iv.next8530, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %.218557953.us.us = phi float [ %.118547962.us, %.lr.ph7955.split.us.us.preheader ], [ %.81861.us.us, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %i.git = trunc i64 %indvars.iv8529 to i32
  %i.giu = mul i32 %i.gip, %i.git
  %.reass7959.us.us = add i32 %i.giu, %invariant.op7958 ; 3 uses
  %i.giv = icmp slt i32 %.reass7959.us.us, 0
  br i1 %i.giv, label %..loopexit6863_crit_edge.us.us, label %bb.di

bb.di:                                            ; preds = %.lr.ph7955.split.us.us
  %i.giw = srem i32 %.reass7959.us.us, %i.ghz
  %i.gix = sdiv i32 %.reass7959.us.us, %i.ghz     ; 2 uses
  %.not2094.us.us = icmp eq i32 %i.giw, 0
  %.not2095.us.us = icmp slt i32 %i.gix, %i.elc
  %or.cond9023 = select i1 %.not2094.us.us, i1 %.not2095.us.us, i1 false
  br i1 %or.cond9023, label %.preheader6862.us.us, label %..loopexit6863_crit_edge.us.us

.preheader6862.us.us:                             ; preds = %bb.di
  %i.giy = mul nuw nsw i64 %indvars.iv8529, %i.giq
  %i.giz = sext i32 %i.gix to i64
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.us.us, %.preheader6862.us.us
  %indvars.iv8524 = phi i64 [ %indvars.iv.next8525, %.loopexit.us.us ], [ 0, %.preheader6862.us.us ] ; 3 uses
  %.318567948.us.us = phi float [ %.61859.us.us, %.loopexit.us.us ], [ %.218557953.us.us, %.preheader6862.us.us ] ; 3 uses
  %i.gja = trunc i64 %indvars.iv8524 to i32
  %i.gjb = mul i32 %i.gio, %i.gja
  %.reass7952.us.us = add i32 %i.gjb, %invariant.op7951 ; 3 uses
  %i.gjc = icmp slt i32 %.reass7952.us.us, 0
  br i1 %i.gjc, label %.loopexit.us.us, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gjd = srem i32 %.reass7952.us.us, %i.gid
  %i.gje = sdiv i32 %.reass7952.us.us, %i.gid     ; 2 uses
  %.not2096.us.us = icmp eq i32 %i.gjd, 0
  %.not2097.us.us = icmp slt i32 %i.gje, %i.ela
  %or.cond9024 = select i1 %.not2096.us.us, i1 %.not2097.us.us, i1 false
  br i1 %or.cond9024, label %_ZN4ncnn3MatD2Ev.exit2202.us.us, label %.loopexit.us.us

_ZN4ncnn3MatD2Ev.exit2202.us.us:                  ; preds = %bb.dk
  %i.gjf = add nuw nsw i64 %i.giy, %indvars.iv8524
  %.idx8766 = shl nuw nsw i64 %i.gjf, 2
  %i.gjg = getelementptr inbounds nuw i8, ptr %.318517963.us, i64 %.idx8766 ; 2 uses
  %i.gjh = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !268
  %i.gji = load ptr, ptr %0, align 8, !tbaa !19, !noalias !268
  %i.gjj = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !268
  %i.gjk = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !268 ; 2 uses
  %factor.op.mul7942.us.us = mul i64 %i.gjj, %i.gjk ; 2 uses
  %i.gjl = sext i32 %i.gjh to i64
  %i.gjm = mul nsw i64 %i.gjl, %i.giz
  %i.gjn = mul i64 %i.gjm, %i.gjk
  %invariant.gep.us.us7977 = getelementptr i8, ptr %i.gji, i64 %i.gjn
  %i.gjo = sext i32 %i.gje to i64
  %invariant.gep7944.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7977, i64 %i.gjo ; 2 uses
  %.reass7943.us.us = mul i64 %factor.op.mul7942.us.us, %indvars.iv8534
  %gep7945.us.us = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us
  %i.gjp = load i16, ptr %gep7945.us.us, align 2, !tbaa !28
  %i.gjq = zext i16 %i.gjp to i32
  %i.gjr = shl nuw i32 %i.gjq, 16
  %i.gjs = bitcast i32 %i.gjr to float
  %i.gjt = load i16, ptr %i.gjg, align 2, !tbaa !28
  %i.gju = zext i16 %i.gjt to i32
  %i.gjv = shl nuw i32 %i.gju, 16
  %i.gjw = bitcast i32 %i.gjv to float
  %i.gjx = fmul fast float %i.gjw, %i.gjs
  %i.gjy = fadd fast float %i.gjx, %.318567948.us.us
  %.reass7943.us.us.1 = mul i64 %factor.op.mul7942.us.us, %i.gis
  %gep7945.us.us.1 = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us.1
  %i.gjz = load i16, ptr %gep7945.us.us.1, align 2, !tbaa !28
  %i.gka = zext i16 %i.gjz to i32
  %i.gkb = shl nuw i32 %i.gka, 16
  %i.gkc = bitcast i32 %i.gkb to float
  %i.gkd = getelementptr inbounds nuw i8, ptr %i.gjg, i64 2
  %i.gke = load i16, ptr %i.gkd, align 2, !tbaa !28
  %i.gkf = zext i16 %i.gke to i32
  %i.gkg = shl nuw i32 %i.gkf, 16
  %i.gkh = bitcast i32 %i.gkg to float
  %i.gki = fmul fast float %i.gkh, %i.gkc
  %i.gkj = fadd fast float %i.gki, %i.gjy
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2202.us.us, %bb.dk, %bb.dj
  %.61859.us.us = phi nsz float [ %.318567948.us.us, %bb.dj ], [ %.318567948.us.us, %bb.dk ], [ %i.gkj, %_ZN4ncnn3MatD2Ev.exit2202.us.us ] ; 2 uses
  %indvars.iv.next8525 = add nuw nsw i64 %indvars.iv8524, 1 ; 2 uses
  %exitcond8528.not = icmp eq i64 %indvars.iv.next8525, %i.giq
  br i1 %exitcond8528.not, label %..loopexit6863_crit_edge.us.us, label %bb.dj, !llvm.loop !204

..loopexit6863_crit_edge.us.us:                   ; preds = %.loopexit.us.us, %bb.di, %.lr.ph7955.split.us.us
  %.81861.us.us = phi nsz float [ %.218557953.us.us, %.lr.ph7955.split.us.us ], [ %.218557953.us.us, %bb.di ], [ %.61859.us.us, %.loopexit.us.us ] ; 2 uses
  %indvars.iv.next8530 = add nuw nsw i64 %indvars.iv8529, 1 ; 2 uses
  %exitcond8533.not = icmp eq i64 %indvars.iv.next8530, %wide.trip.count8532
  br i1 %exitcond8533.not, label %._crit_edge7956.us, label %.lr.ph7955.split.us.us, !llvm.loop !205

._crit_edge7956.us:                               ; preds = %..loopexit6863_crit_edge.us.us, %.preheader6871.us
  %.us-phi7960.us = phi float [ %.118547962.us, %.preheader6871.us ], [ %.81861.us.us, %..loopexit6863_crit_edge.us.us ] ; 2 uses
  %i.gkk = getelementptr inbounds [2 x i8], ptr %.318517963.us, i64 %i.fpz ; 2 uses
  %indvars.iv.next8535 = add nuw nsw i64 %indvars.iv8534, 2 ; 3 uses
  %i.gkl = trunc i64 %indvars.iv.next8535 to i32
  %i.gkm = or i32 %i.gkl, 1
  %i.gkn = icmp slt i32 %i.gkm, %i.eky
  br i1 %i.gkn, label %.preheader6871.us, label %.preheader6875.loopexit, !llvm.loop !206

.preheader6875.loopexit:                          ; preds = %._crit_edge7956.us
  %i.gko = trunc nuw i64 %indvars.iv.next8535 to i32
  br label %.preheader6875

.preheader6875:                                   ; preds = %.preheader6871.preheader, %.preheader6875.loopexit, %._crit_edge7924
  %.11854.lcssa = phi float [ %op.rdx8932, %._crit_edge7924 ], [ %.us-phi7960.us, %.preheader6875.loopexit ], [ %op.rdx8932, %.preheader6871.preheader ] ; 3 uses
  %.31851.lcssa = phi ptr [ %.21850.lcssa, %._crit_edge7924 ], [ %i.gkk, %.preheader6875.loopexit ], [ %scevgep8520, %.preheader6871.preheader ]
  %.31846.lcssa = phi i32 [ %.21845.lcssa, %._crit_edge7924 ], [ %i.gko, %.preheader6875.loopexit ], [ %i.gin, %.preheader6871.preheader ] ; 2 uses
  %i.gkp = icmp slt i32 %.31846.lcssa, %i.eky
  br i1 %i.gkp, label %.preheader6870.lr.ph, label %._crit_edge7999

.preheader6870.lr.ph:                             ; preds = %.preheader6875
  %i.gkq = load i32, ptr %i.d, align 4
  %i.gkr = load i32, ptr %i.j, align 4
  %invariant.op7991 = sub i32 %.neg6798, %i.gkr
  %i.gks = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gkt = load i32, ptr %i.a, align 4
  %.fr8055 = freeze i32 %i.gkt                    ; 2 uses
  %i.gku = load i32, ptr %i.c, align 4
  %i.gkv = load i32, ptr %i.i, align 4
  %.neg6784 = add nuw nsw i32 %.018688011, 1
  %invariant.op7984 = sub i32 %.neg6784, %i.gkv
  %i.gkw = load i32, ptr %i.e, align 4            ; 2 uses
  %i.gkx = icmp sgt i32 %.fr8055, 0
  %or.cond8908 = and i1 %i.fpq, %i.gkx
  br i1 %or.cond8908, label %.preheader6870.us.us.preheader, label %._crit_edge7999

.preheader6870.us.us.preheader:                   ; preds = %.preheader6870.lr.ph
  %i.gky = zext nneg i32 %.fr8055 to i64          ; 2 uses
  %i.gkz = zext i32 %.31846.lcssa to i64
  br label %.preheader6870.us.us

.preheader6870.us.us:                             ; preds = %.preheader6870.us.us.preheader, %._crit_edge7989.split.us.us.us
  %indvars.iv8547 = phi i64 [ %i.gkz, %.preheader6870.us.us.preheader ], [ %indvars.iv.next8548, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.418527996.us.us = phi ptr [ %.31851.lcssa, %.preheader6870.us.us.preheader ], [ %i.gml, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.918627995.us.us = phi float [ %.11854.lcssa, %.preheader6870.us.us.preheader ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ]
  br label %bb.dl

bb.dl:                                            ; preds = %..loopexit6861_crit_edge.us.us.us, %.preheader6870.us.us
  %indvars.iv8542 = phi i64 [ %indvars.iv.next8543, %..loopexit6861_crit_edge.us.us.us ], [ 0, %.preheader6870.us.us ] ; 3 uses
  %.1018637986.us.us.us = phi float [ %.15.us.us.us, %..loopexit6861_crit_edge.us.us.us ], [ %.918627995.us.us, %.preheader6870.us.us ] ; 3 uses
  %i.gla = trunc i64 %indvars.iv8542 to i32
  %i.glb = mul i32 %i.gkq, %i.gla
  %.reass7992.us.us.us = add i32 %i.glb, %invariant.op7991 ; 3 uses
  %i.glc = icmp slt i32 %.reass7992.us.us.us, 0
  br i1 %i.glc, label %..loopexit6861_crit_edge.us.us.us, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gld = srem i32 %.reass7992.us.us.us, %i.gks
  %i.gle = sdiv i32 %.reass7992.us.us.us, %i.gks  ; 2 uses
  %.not2090.us.us.us = icmp eq i32 %i.gld, 0
  %.not2091.us.us.us = icmp slt i32 %i.gle, %i.elc
  %or.cond9025 = select i1 %.not2090.us.us.us, i1 %.not2091.us.us.us, i1 false
  br i1 %or.cond9025, label %.preheader.us.us.us, label %..loopexit6861_crit_edge.us.us.us

.preheader.us.us.us:                              ; preds = %bb.dm
  %i.glf = mul nuw nsw i64 %indvars.iv8542, %i.gky
  %i.glg = sext i32 %i.gle to i64
  %i.glh = getelementptr inbounds nuw [2 x i8], ptr %.418527996.us.us, i64 %i.glf
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %.preheader.us.us.us
  %indvars.iv8537 = phi i64 [ %indvars.iv.next8538, %bb.dp ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %.1118647981.us.us.us = phi float [ %.131866.us.us.us, %bb.dp ], [ %.1018637986.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %i.gli = trunc i64 %indvars.iv8537 to i32
  %i.glj = mul i32 %i.gku, %i.gli
  %.reass7985.us.us.us = add i32 %i.glj, %invariant.op7984 ; 3 uses
  %i.glk = icmp slt i32 %.reass7985.us.us.us, 0
  br i1 %i.glk, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gll = srem i32 %.reass7985.us.us.us, %i.gkw
  %i.glm = sdiv i32 %.reass7985.us.us.us, %i.gkw  ; 2 uses
  %.not2092.us.us.us = icmp eq i32 %i.gll, 0
  %.not2093.us.us.us = icmp slt i32 %i.glm, %i.ela
  %or.cond9026 = select i1 %.not2092.us.us.us, i1 %.not2093.us.us.us, i1 false
  br i1 %or.cond9026, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dp

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.do
  %i.gln = load i32, ptr %i.ekz, align 4, !tbaa !22, !noalias !269
  %i.glo = load ptr, ptr %0, align 8, !tbaa !19, !noalias !269
  %i.glp = load i64, ptr %i.elr, align 8, !tbaa !17, !noalias !269
  %i.glq = mul i64 %i.glp, %indvars.iv8547
  %i.glr = load i64, ptr %i.els, align 8, !tbaa !24, !noalias !269 ; 2 uses
  %i.gls = mul i64 %i.glq, %i.glr
  %i.glt = getelementptr inbounds nuw i8, ptr %i.glo, i64 %i.gls
  %i.glu = sext i32 %i.gln to i64
  %i.glv = mul nsw i64 %i.glu, %i.glg
  %i.glw = mul i64 %i.glv, %i.glr
  %i.glx = getelementptr inbounds nuw i8, ptr %i.glt, i64 %i.glw
  %i.gly = sext i32 %i.glm to i64
  %i.glz = getelementptr inbounds [2 x i8], ptr %i.glx, i64 %i.gly
  %i.gma = load i16, ptr %i.glz, align 2, !tbaa !28
  %i.gmb = zext i16 %i.gma to i32
  %i.gmc = shl nuw i32 %i.gmb, 16
  %i.gmd = bitcast i32 %i.gmc to float
  %i.gme = getelementptr inbounds nuw [2 x i8], ptr %i.glh, i64 %indvars.iv8537
  %i.gmf = load i16, ptr %i.gme, align 2, !tbaa !28
  %i.gmg = zext i16 %i.gmf to i32
  %i.gmh = shl nuw i32 %i.gmg, 16
  %i.gmi = bitcast i32 %i.gmh to float
  %i.gmj = fmul fast float %i.gmi, %i.gmd
  %i.gmk = fadd fast float %i.gmj, %.1118647981.us.us.us
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.do, %bb.dn
  %.131866.us.us.us = phi nsz float [ %.1118647981.us.us.us, %bb.dn ], [ %.1118647981.us.us.us, %bb.do ], [ %i.gmk, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8538 = add nuw nsw i64 %indvars.iv8537, 1 ; 2 uses
  %exitcond8541.not = icmp eq i64 %indvars.iv.next8538, %i.gky
  br i1 %exitcond8541.not, label %..loopexit6861_crit_edge.us.us.us, label %bb.dn, !llvm.loop !209

..loopexit6861_crit_edge.us.us.us:                ; preds = %bb.dp, %bb.dm, %bb.dl
  %.15.us.us.us = phi nsz float [ %.1018637986.us.us.us, %bb.dl ], [ %.1018637986.us.us.us, %bb.dm ], [ %.131866.us.us.us, %bb.dp ] ; 3 uses
  %indvars.iv.next8543 = add nuw nsw i64 %indvars.iv8542, 1 ; 2 uses
  %exitcond8546.not = icmp eq i64 %indvars.iv.next8543, %wide.trip.count8545
  br i1 %exitcond8546.not, label %._crit_edge7989.split.us.us.us, label %bb.dl, !llvm.loop !210

._crit_edge7989.split.us.us.us:                   ; preds = %..loopexit6861_crit_edge.us.us.us
  %i.gml = getelementptr inbounds [2 x i8], ptr %.418527996.us.us, i64 %i.fqa
  %indvars.iv.next8548 = add nuw nsw i64 %indvars.iv8547, 1 ; 2 uses
  %i.gmm = trunc nuw i64 %indvars.iv.next8548 to i32
  %i.gmn = icmp sgt i32 %i.eky, %i.gmm
  br i1 %i.gmn, label %.preheader6870.us.us, label %._crit_edge7999, !llvm.loop !211

._crit_edge7999:                                  ; preds = %._crit_edge7989.split.us.us.us, %.preheader6870.lr.ph, %.preheader6875
  %.91862.lcssa = phi float [ %.11854.lcssa, %.preheader6875 ], [ %.11854.lcssa, %.preheader6870.lr.ph ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ] ; 13 uses
  switch i32 %i.fpn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dq
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.dt
    i32 5, label %bb.du
    i32 6, label %bb.dv
  ]

bb.dq:                                            ; preds = %._crit_edge7999
  %i.gmo = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91862.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7999
  %i.gmp = load ptr, ptr %11, align 8, !tbaa !19
  %i.gmq = load float, ptr %i.gmp, align 4, !tbaa !30
  %i.gmr = fcmp fast ogt float %.91862.lcssa, 0.000000e+00
  %i.gms = select fast i1 %i.gmr, float 1.000000e+00, float %i.gmq
  %i.gmt = fmul fast float %i.gms, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ds:                                            ; preds = %._crit_edge7999
  %i.gmu = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gmv = load float, ptr %i.gmu, align 4, !tbaa !30
  %i.gmw = getelementptr inbounds nuw i8, ptr %i.gmu, i64 4
  %i.gmx = load float, ptr %i.gmw, align 4, !tbaa !30
  %spec.select6777 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91862.lcssa, float %i.gmv)
  %spec.select6778 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6777, float %i.gmx)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %._crit_edge7999
  %.sroa.speculated6275 = call nnan ninf nsz float @llvm.minnum.f32(float %.91862.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6275, float f0xC2B0C0A5)
  %i.gmy = fneg fast float %.sroa.speculated
  %i.gmz = call fast float @llvm.exp.f32(float %i.gmy)
  %i.gna = fadd fast float %i.gmz, 1.000000e+00
  %i.gnb = fdiv fast float 1.000000e+00, %i.gna
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge7999
  %i.gnc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91862.lcssa)
  %i.gnd = fadd fast float %i.gnc, 1.000000e+00
  %i.gne = call fast float @llvm.log.f32(float %i.gnd)
  %i.gnf = call fast float @llvm.tanh.f32(float %i.gne)
  %i.gng = fmul fast float %i.gnf, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge7999
  %i.gnh = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.gni = load float, ptr %i.gnh, align 4, !tbaa !30 ; 3 uses
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.gnh, i64 4
  %i.gnk = load float, ptr %i.gnj, align 4, !tbaa !30 ; 2 uses
  %i.gnl = fneg fast float %i.gnk
  %i.gnm = fdiv fast float %i.gnl, %i.gni         ; 2 uses
  %i.gnn = fcmp fast olt float %.91862.lcssa, %i.gnm
  br i1 %i.gnn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gno = fdiv fast float 1.000000e+00, %i.gni
  %i.gnp = fadd fast float %i.gnm, %i.gno
  %i.gnq = fcmp fast ogt float %.91862.lcssa, %i.gnp
  br i1 %i.gnq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.gnr = fmul fast float %i.gni, %.91862.lcssa
  %i.gns = fadd fast float %i.gnr, %i.gnk
  %i.gnt = fmul fast float %i.gns, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ds, %bb.dv, %._crit_edge7999, %bb.dq, %bb.dr, %bb.dt, %bb.du, %bb.dw, %bb.dx
  %.16534 = phi nsz float [ %.91862.lcssa, %._crit_edge7999 ], [ %i.gmo, %bb.dq ], [ %i.gmt, %bb.dr ], [ 0.000000e+00, %bb.dv ], [ %spec.select6778, %bb.ds ], [ %i.gnb, %bb.dt ], [ %i.gng, %bb.du ], [ %i.gnt, %bb.dx ], [ %.91862.lcssa, %bb.dw ]
  %i.gnu = bitcast float %.16534 to i32
  %i.gnv = lshr i32 %i.gnu, 16
  %i.gnw = trunc nuw i32 %i.gnv to i16
  store i16 %i.gnw, ptr %.118718010, align 2, !tbaa !28
  %i.gnx = getelementptr inbounds nuw i8, ptr %.118718010, i64 2 ; 2 uses
  %i.gny = add nuw nsw i32 %.018688011, 1         ; 2 uses
  %exitcond8550.not = icmp eq i32 %i.gny, %i.ele
  br i1 %exitcond8550.not, label %._crit_edge8012, label %bb.cs, !llvm.loop !212
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %18) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not2530 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2530, label %._crit_edge2532, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !23
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc.preheader, label %._crit_edge2532

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge2529.split
  %indvars.iv = phi i64 [ %i.aa, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge2529.split ] ; 3 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !15
  %.fr = freeze i32 %i.ac                         ; 5 uses
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !16
  %i.ae = mul i32 %i.ad, %.fr                     ; 14 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !22  ; 6 uses
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !23  ; 5 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !22  ; 2 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.preheader2304.lr.ph, label %._crit_edge2529.split

.preheader2304.lr.ph:                             ; preds = %.noexc
  %i.ak = shl nsw i64 %indvars.iv, 4              ; 2 uses
  %i.al = load i32, ptr %i.r, align 8, !tbaa !15  ; 3 uses
  %i.am = icmp sgt i32 %i.ah, 0
  %i.an = icmp sgt i32 %i.ae, 15
  %i.ao = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr)
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr, i1 true)
  %i.ar = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.al)
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  br i1 %i.am, label %.preheader2304.preheader, label %._crit_edge2529.split

.preheader2304.preheader:                         ; preds = %.preheader2304.lr.ph
  %i.au = load ptr, ptr %4, align 8, !tbaa !19, !noalias !316
  %i.av = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !316
  %i.aw = trunc nsw i64 %i.ak to i32
  %i.ax = sdiv i32 %i.aw, %i.al
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.av, %i.ay
  %i.ba = load i64, ptr %i.t, align 8, !tbaa !24, !noalias !316
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = add i32 %i.ae, -16                      ; 3 uses
  %i.be = lshr i32 %i.bd, 3
  %i.bf = and i32 %i.be, 536870910
  %narrow = add nuw nsw i32 %i.bf, 2
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = and i32 %i.bd, -16
  %i.bi = add nuw i32 %i.bh, 16
  %i.bj = sext i32 %i.ae to i64
  %i.bk = and i32 %i.bd, -16
  %i.bl = add i32 %i.bk, 16
  %invariant.op = add nsw i64 %i.bj, -15
  br label %.preheader2304

.preheader2304:                                   ; preds = %.preheader2304.preheader, %._crit_edge
  %.08132528 = phi i32 [ %.neg2284, %._crit_edge ], [ 0, %.preheader2304.preheader ]
  %.08142527 = phi ptr [ %.5819, %._crit_edge ], [ %i.bc, %.preheader2304.preheader ]
  %.neg2284 = add nuw nsw i32 %.08132528, 1       ; 7 uses
  br label %bb.c

._crit_edge2529.split:                            ; preds = %._crit_edge, %.preheader2304.lr.ph, %.noexc
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond2614.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond2614.not, label %._crit_edge2532, label %.noexc, !llvm.loop !272

._crit_edge:                                      ; preds = %.thread2265
  %exitcond2612.not = icmp eq i32 %.neg2284, %i.ai
  br i1 %exitcond2612.not, label %._crit_edge2529.split, label %.preheader2304, !llvm.loop !273

bb.c:                                             ; preds = %.preheader2304, %.thread2265
  %.08122526 = phi i32 [ 0, %.preheader2304 ], [ %i.bfm, %.thread2265 ] ; 6 uses
  %.18152525 = phi ptr [ %.08142527, %.preheader2304 ], [ %.5819, %.thread2265 ] ; 29 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %.not851 = icmp eq ptr %i.bm, null
  br i1 %.not851, label %.noexc1013, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ak
  %i.bo = load <16 x float>, ptr %i.bn, align 1, !tbaa !26
  br label %.noexc1013

.noexc1013:                                       ; preds = %bb.c, %bb.d
  %.02205 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.bo, %bb.d ] ; 3 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !19, !noalias !318 ; 2 uses
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !17, !noalias !318
  %i.br = mul i64 %i.bq, %indvars.iv
  %i.bs = load i64, ptr %i.v, align 8, !tbaa !24, !noalias !318
  %i.bt = mul i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt ; 2 uses
  br i1 %i.an, label %.preheader2299.lr.ph, label %.preheader2303

.preheader2299.lr.ph:                             ; preds = %.noexc1013
  %i.bv = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  %.neg2286 = add nuw nsw i32 %.08122526, 1
  %i.bx = load i32, ptr %15, align 4, !tbaa !9
  %i.by = shl i32 %i.bx, 8
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  br i1 %i.bw, label %.preheader2299.lr.ph.split.us, label %.preheader2299.preheader

.preheader2299.preheader:                         ; preds = %.preheader2299.lr.ph
  %i.ca = mul nsw i64 %i.bg, %i.bz
  %i.cb = getelementptr i8, ptr %i.bp, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.cb, i64 %i.ca
  br label %.preheader2303

.preheader2299.lr.ph.split.us:                    ; preds = %.preheader2299.lr.ph
  %i.cc = load i32, ptr %8, align 4, !tbaa !9
  %i.cd = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2325.us = sub i32 %.neg2284, %i.cd
  br label %.preheader2299.us

.preheader2299.us:                                ; preds = %._crit_edge.us, %.preheader2299.lr.ph.split.us
  %indvars.iv2562 = phi i64 [ %indvars.iv.next2563, %._crit_edge.us ], [ 0, %.preheader2299.lr.ph.split.us ] ; 20 uses
  %.07422336.us = phi ptr [ %i.zj, %._crit_edge.us ], [ %i.bu, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07472335.us = phi <16 x float> [ %.us-phi2331.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07522334.us = phi <16 x float> [ %.us-phi2330.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.07822333.us = phi <16 x float> [ %.us-phi2329.us, %._crit_edge.us ], [ zeroinitializer, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %.122062332.us = phi <16 x float> [ %.us-phi2328.us, %._crit_edge.us ], [ %.02205, %.preheader2299.lr.ph.split.us ] ; 2 uses
  %i.ce = or disjoint i64 %indvars.iv2562, 15
  %i.cf = or disjoint i64 %indvars.iv2562, 1
  %i.cg = or disjoint i64 %indvars.iv2562, 2
  %i.ch = or disjoint i64 %indvars.iv2562, 3
  %i.ci = or disjoint i64 %indvars.iv2562, 4
  %i.cj = or disjoint i64 %indvars.iv2562, 5
  %i.ck = or disjoint i64 %indvars.iv2562, 6
  %i.cl = or disjoint i64 %indvars.iv2562, 7
  %i.cm = or disjoint i64 %indvars.iv2562, 8
  %i.cn = or disjoint i64 %indvars.iv2562, 9
  %i.co = or disjoint i64 %indvars.iv2562, 10
  %i.cp = or disjoint i64 %indvars.iv2562, 11
  %i.cq = or disjoint i64 %indvars.iv2562, 12
  %i.cr = or disjoint i64 %indvars.iv2562, 13
  %i.cs = or disjoint i64 %indvars.iv2562, 14
  %i.ct = lshr exact i64 %indvars.iv2562, 2       ; 4 uses
  %i.cu = or disjoint i64 %i.ct, 1
  %i.cv = or disjoint i64 %i.ct, 2
  %i.cw = or disjoint i64 %i.ct, 3
  %i.cx = lshr exact i64 %indvars.iv2562, 3       ; 2 uses
  %i.cy = or disjoint i64 %i.cx, 1
  %i.cz = lshr exact i64 %indvars.iv2562, 4
  br i1 %i.ap, label %.lr.ph2321.split.us.us, label %._crit_edge.us

.lr.ph2321.split.us.us:                           ; preds = %.preheader2299.us, %.loopexit2294.us.us
  %.07402320.us.us = phi i32 [ %i.zi, %.loopexit2294.us.us ], [ 0, %.preheader2299.us ] ; 3 uses
  %.17482319.us.us = phi <16 x float> [ %.10.us.us, %.loopexit2294.us.us ], [ %.07472335.us, %.preheader2299.us ] ; 4 uses
  %.17532318.us.us = phi <16 x float> [ %.10762.us.us, %.loopexit2294.us.us ], [ %.07522334.us, %.preheader2299.us ] ; 4 uses
  %.17832317.us.us = phi <16 x float> [ %.10792.us.us, %.loopexit2294.us.us ], [ %.07822333.us, %.preheader2299.us ] ; 4 uses
  %.222072316.us.us = phi <16 x float> [ %.82211.us.us, %.loopexit2294.us.us ], [ %.122062332.us, %.preheader2299.us ] ; 4 uses
  %i.da = mul nsw i32 %i.cc, %.07402320.us.us
  %.reass2326.us.us = add i32 %i.da, %invariant.op2325.us ; 3 uses
  %i.db = icmp slt i32 %.reass2326.us.us, 0
  br i1 %i.db, label %.loopexit2294.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph2321.split.us.us
  %i.dc = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.dd = srem i32 %.reass2326.us.us, %i.dc
  %i.de = sdiv i32 %.reass2326.us.us, %i.dc       ; 2 uses
  %.not883.us.us = icmp eq i32 %i.dd, 0
  %.not884.us.us = icmp slt i32 %i.de, %i.ag
  %or.cond = select i1 %.not883.us.us, i1 %.not884.us.us, i1 false
  br i1 %or.cond, label %.preheader2293.us.us, label %.loopexit2294.us.us

.preheader2293.us.us:                             ; preds = %bb.e
  %i.df = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.us.us, label %.loopexit2294.us.us

.lr.ph.us.us:                                     ; preds = %.preheader2293.us.us
  %i.dh = load i32, ptr %12, align 4, !tbaa !9
  %i.di = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us.us = sub i32 %.neg2286, %i.di
  %i.dj = mul nuw nsw i32 %i.df, %.07402320.us.us
  %i.dk = sext i32 %i.de to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.df to i64
  br label %bb.f

bb.f:                                             ; preds = %.thread2238.us.us.us, %.lr.ph.us.us
  %indvars.iv2558 = phi i64 [ %indvars.iv.next2559, %.thread2238.us.us.us ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.27492308.us.us.us = phi <16 x float> [ %.8.us.us.us, %.thread2238.us.us.us ], [ %.17482319.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27542307.us.us.us = phi <16 x float> [ %.8760.us.us.us, %.thread2238.us.us.us ], [ %.17532318.us.us, %.lr.ph.us.us ] ; 4 uses
  %.27842306.us.us.us = phi <16 x float> [ %.8790.us.us.us, %.thread2238.us.us.us ], [ %.17832317.us.us, %.lr.ph.us.us ] ; 4 uses
  %.322082305.us.us.us = phi <16 x float> [ %.7.us.us.us, %.thread2238.us.us.us ], [ %.222072316.us.us, %.lr.ph.us.us ] ; 4 uses
  %i.dl = trunc i64 %indvars.iv2558 to i32
  %i.dm = mul i32 %i.dh, %i.dl
  %.reass.us.us.us = add i32 %i.dm, %invariant.op.us.us ; 3 uses
  %i.dn = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.dn, label %.thread2238.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = load i32, ptr %14, align 4, !tbaa !9    ; 2 uses
  %i.dp = srem i32 %.reass.us.us.us, %i.do
  %i.dq = sdiv i32 %.reass.us.us.us, %i.do        ; 5 uses
  %.not885.us.us.us = icmp eq i32 %i.dp, 0
  %.not886.us.us.us = icmp slt i32 %i.dq, %i.af
  %or.cond2785 = select i1 %.not885.us.us.us, i1 %.not886.us.us.us, i1 false
  br i1 %or.cond2785, label %.split.us.us.us, label %.thread2238.us.us.us

.split.us.us.us:                                  ; preds = %bb.g
  %i.dr = trunc i64 %indvars.iv2558 to i32
  %i.ds = add i32 %i.dj, %i.dr
  %i.dt = shl nsw i32 %i.ds, 8
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.07422336.us, i64 %i.du ; 16 uses
  switch i32 %i.aq, label %.thread2238.us.us.us [
    i32 4, label %.noexc1011.us.us.us
    i32 3, label %.noexc1009.us.us.us
    i32 2, label %.noexc1005.us.us.us
    i32 0, label %.noexc997.us.us.us
  ]

.noexc997.us.us.us:                               ; preds = %.split.us.us.us
  %i.dw = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !319
  %i.dx = load ptr, ptr %3, align 8, !tbaa !19, !noalias !319 ; 9 uses
  %i.dy = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !319 ; 9 uses
  %i.dz = mul i64 %i.dy, %indvars.iv2562
  %i.ea = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !319 ; 10 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = mul nsw i64 %i.ed, %i.dk
  %i.ef = mul i64 %i.ee, %i.ea                    ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ef
  %i.eh = sext i32 %i.dq to i64                   ; 16 uses
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !28
  %i.ek = zext i16 %i.ej to i32
  %i.el = shl nuw i32 %i.ek, 16
  %i.em = insertelement <16 x i32> poison, i32 %i.el, i64 0
  %i.en = bitcast <16 x i32> %i.em to <16 x float>
  %i.eo = shufflevector <16 x float> %i.en, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ep = mul i64 %i.dy, %i.cf
  %i.eq = mul i64 %i.ep, %i.ea
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ef
  %i.et = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.eh
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !28
  %i.ev = zext i16 %i.eu to i32
  %i.ew = shl nuw i32 %i.ev, 16
  %i.ex = insertelement <16 x i32> poison, i32 %i.ew, i64 0
  %i.ey = bitcast <16 x i32> %i.ex to <16 x float>
  %i.ez = shufflevector <16 x float> %i.ey, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fa = mul i64 %i.dy, %i.cg
  %i.fb = mul i64 %i.fa, %i.ea
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ef
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.eh
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !28
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl nuw i32 %i.fg, 16
  %i.fi = insertelement <16 x i32> poison, i32 %i.fh, i64 0
  %i.fj = bitcast <16 x i32> %i.fi to <16 x float>
  %i.fk = shufflevector <16 x float> %i.fj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fl = mul i64 %i.dy, %i.ch
  %i.fm = mul i64 %i.fl, %i.ea
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ef
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.eh
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !28
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw i32 %i.fr, 16
  %i.ft = insertelement <16 x i32> poison, i32 %i.fs, i64 0
  %i.fu = bitcast <16 x i32> %i.ft to <16 x float>
  %i.fv = shufflevector <16 x float> %i.fu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fw = mul i64 %i.dy, %i.ci
  %i.fx = mul i64 %i.fw, %i.ea
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ef
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.eh
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !28
  %i.gc = zext i16 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 16
  %i.ge = insertelement <16 x i32> poison, i32 %i.gd, i64 0
  %i.gf = bitcast <16 x i32> %i.ge to <16 x float>
  %i.gg = shufflevector <16 x float> %i.gf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gh = mul i64 %i.dy, %i.cj
  %i.gi = mul i64 %i.gh, %i.ea
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.ef
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %i.eh
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !28
  %i.gn = zext i16 %i.gm to i32
  %i.go = shl nuw i32 %i.gn, 16
  %i.gp = insertelement <16 x i32> poison, i32 %i.go, i64 0
  %i.gq = bitcast <16 x i32> %i.gp to <16 x float>
  %i.gr = shufflevector <16 x float> %i.gq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gs = mul i64 %i.dy, %i.ck
  %i.gt = mul i64 %i.gs, %i.ea
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ef
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.eh
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !28
  %i.gy = zext i16 %i.gx to i32
  %i.gz = shl nuw i32 %i.gy, 16
  %i.ha = insertelement <16 x i32> poison, i32 %i.gz, i64 0
  %i.hb = bitcast <16 x i32> %i.ha to <16 x float>
  %i.hc = shufflevector <16 x float> %i.hb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hd = mul i64 %i.dy, %i.cl
  %i.he = mul i64 %i.hd, %i.ea
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ef
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.eh
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !28
  %i.hj = zext i16 %i.hi to i32
  %i.hk = shl nuw i32 %i.hj, 16
  %i.hl = insertelement <16 x i32> poison, i32 %i.hk, i64 0
  %i.hm = bitcast <16 x i32> %i.hl to <16 x float>
  %i.hn = shufflevector <16 x float> %i.hm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ho = mul i64 %i.dy, %i.cm
  %i.hp = mul i64 %i.ho, %i.ea
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ef
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.eh
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !28
  %i.hu = zext i16 %i.ht to i32
  %i.hv = shl nuw i32 %i.hu, 16
  %i.hw = insertelement <16 x i32> poison, i32 %i.hv, i64 0
  %i.hx = bitcast <16 x i32> %i.hw to <16 x float>
  %i.hy = shufflevector <16 x float> %i.hx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !320
  %i.ia = load ptr, ptr %3, align 8, !tbaa !19, !noalias !320 ; 7 uses
  %i.ib = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !320 ; 7 uses
  %i.ic = mul i64 %i.ib, %i.cn
  %i.id = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !320 ; 8 uses
  %i.ie = mul i64 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ie
  %i.ig = sext i32 %i.hz to i64
  %i.ih = mul nsw i64 %i.ig, %i.dk
  %i.ii = mul i64 %i.ih, %i.id                    ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ii
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.ij, i64 %i.eh
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !28
  %i.im = zext i16 %i.il to i32
  %i.in = shl nuw i32 %i.im, 16
  %i.io = insertelement <16 x i32> poison, i32 %i.in, i64 0
  %i.ip = bitcast <16 x i32> %i.io to <16 x float>
  %i.iq = shufflevector <16 x float> %i.ip, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ir = mul i64 %i.ib, %i.co
  %i.is = mul i64 %i.ir, %i.id
  %i.it = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ii
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.iu, i64 %i.eh
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !28
  %i.ix = zext i16 %i.iw to i32
  %i.iy = shl nuw i32 %i.ix, 16
  %i.iz = insertelement <16 x i32> poison, i32 %i.iy, i64 0
  %i.ja = bitcast <16 x i32> %i.iz to <16 x float>
  %i.jb = shufflevector <16 x float> %i.ja, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jc = mul i64 %i.ib, %i.cp
  %i.jd = mul i64 %i.jc, %i.id
  %i.je = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ii
  %i.jg = getelementptr inbounds [2 x i8], ptr %i.jf, i64 %i.eh
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !28
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw i32 %i.ji, 16
  %i.jk = insertelement <16 x i32> poison, i32 %i.jj, i64 0
  %i.jl = bitcast <16 x i32> %i.jk to <16 x float>
  %i.jm = shufflevector <16 x float> %i.jl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jn = mul i64 %i.ib, %i.cq
  %i.jo = mul i64 %i.jn, %i.id
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.ii
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.eh
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !28
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 16
  %i.jv = insertelement <16 x i32> poison, i32 %i.ju, i64 0
  %i.jw = bitcast <16 x i32> %i.jv to <16 x float>
  %i.jx = shufflevector <16 x float> %i.jw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jy = mul i64 %i.ib, %i.cr
  %i.jz = mul i64 %i.jy, %i.id
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.ii
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.eh
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !28
  %i.ke = zext i16 %i.kd to i32
  %i.kf = shl nuw i32 %i.ke, 16
  %i.kg = insertelement <16 x i32> poison, i32 %i.kf, i64 0
  %i.kh = bitcast <16 x i32> %i.kg to <16 x float>
  %i.ki = shufflevector <16 x float> %i.kh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kj = mul i64 %i.ib, %i.cs
  %i.kk = mul i64 %i.kj, %i.id
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ii
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.km, i64 %i.eh
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !28
  %i.kp = zext i16 %i.ko to i32
  %i.kq = shl nuw i32 %i.kp, 16
  %i.kr = insertelement <16 x i32> poison, i32 %i.kq, i64 0
  %i.ks = bitcast <16 x i32> %i.kr to <16 x float>
  %i.kt = shufflevector <16 x float> %i.ks, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ku = mul i64 %i.ib, %i.ce
end_hunk_5
begin_hunk_6_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.wn = bitcast <8 x i32> %i.wa to <8 x float>
  %i.wo = shufflevector <8 x float> %i.wn, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.wp = bitcast <8 x i32> %i.wa to <8 x float>
  %i.wq = shufflevector <8 x float> %i.wp, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ua, i64 30
  br label %.thread2238.us.us.us.sink.split

.thread2238.us.us.us.sink.split:                  ; preds = %.noexc997.us.us.us, %.noexc1005.us.us.us, %.noexc1009.us.us.us, %.noexc1011.us.us.us
  %.sink2736.in = phi ptr [ %i.wr, %.noexc1011.us.us.us ], [ %i.tm, %.noexc1009.us.us.us ], [ %i.pz, %.noexc1005.us.us.us ], [ %i.ky, %.noexc997.us.us.us ]
  %.sink2731 = phi <16 x float> [ %i.ug, %.noexc1011.us.us.us ], [ %i.qy, %.noexc1009.us.us.us ], [ %i.mh, %.noexc1005.us.us.us ], [ %i.eo, %.noexc997.us.us.us ]
  %.sink2727 = phi <16 x float> [ %i.un, %.noexc1011.us.us.us ], [ %i.rf, %.noexc1009.us.us.us ], [ %i.mo, %.noexc1005.us.us.us ], [ %i.ez, %.noexc997.us.us.us ]
  %.sink2723 = phi <16 x float> [ %i.uu, %.noexc1011.us.us.us ], [ %i.rm, %.noexc1009.us.us.us ], [ %i.mv, %.noexc1005.us.us.us ], [ %i.fk, %.noexc997.us.us.us ]
  %.sink2719 = phi <16 x float> [ %i.vb, %.noexc1011.us.us.us ], [ %i.rs, %.noexc1009.us.us.us ], [ %i.nc, %.noexc1005.us.us.us ], [ %i.fv, %.noexc997.us.us.us ]
  %.sink2714 = phi <16 x float> [ %i.vi, %.noexc1011.us.us.us ], [ %i.ru, %.noexc1009.us.us.us ], [ %i.ni, %.noexc1005.us.us.us ], [ %i.gg, %.noexc997.us.us.us ]
  %.sink2709 = phi <16 x float> [ %i.vp, %.noexc1011.us.us.us ], [ %i.rw, %.noexc1009.us.us.us ], [ %i.np, %.noexc1005.us.us.us ], [ %i.gr, %.noexc997.us.us.us ]
  %.sink2704 = phi <16 x float> [ %i.vw, %.noexc1011.us.us.us ], [ %i.ry, %.noexc1009.us.us.us ], [ %i.nw, %.noexc1005.us.us.us ], [ %i.hc, %.noexc997.us.us.us ]
  %.sink2699 = phi <16 x float> [ %i.wc, %.noexc1011.us.us.us ], [ %i.sf, %.noexc1009.us.us.us ], [ %i.od, %.noexc1005.us.us.us ], [ %i.hn, %.noexc997.us.us.us ]
  %.sink2694 = phi <16 x float> [ %i.we, %.noexc1011.us.us.us ], [ %i.sl, %.noexc1009.us.us.us ], [ %i.oj, %.noexc1005.us.us.us ], [ %i.hy, %.noexc997.us.us.us ]
  %.sink2689 = phi <16 x float> [ %i.wg, %.noexc1011.us.us.us ], [ %i.ss, %.noexc1009.us.us.us ], [ %i.oq, %.noexc1005.us.us.us ], [ %i.iq, %.noexc997.us.us.us ]
  %.sink2684 = phi <16 x float> [ %i.wi, %.noexc1011.us.us.us ], [ %i.sz, %.noexc1009.us.us.us ], [ %i.ox, %.noexc1005.us.us.us ], [ %i.jb, %.noexc997.us.us.us ]
  %.sink2679 = phi <16 x float> [ %i.wk, %.noexc1011.us.us.us ], [ %i.tf, %.noexc1009.us.us.us ], [ %i.pe, %.noexc1005.us.us.us ], [ %i.jm, %.noexc997.us.us.us ]
  %.sink2674 = phi <16 x float> [ %i.wm, %.noexc1011.us.us.us ], [ %i.th, %.noexc1009.us.us.us ], [ %i.pk, %.noexc1005.us.us.us ], [ %i.jx, %.noexc997.us.us.us ]
  %.sink2669 = phi <16 x float> [ %i.wo, %.noexc1011.us.us.us ], [ %i.tj, %.noexc1009.us.us.us ], [ %i.pr, %.noexc1005.us.us.us ], [ %i.ki, %.noexc997.us.us.us ]
  %.sink2664 = phi <16 x float> [ %i.wq, %.noexc1011.us.us.us ], [ %i.tl, %.noexc1009.us.us.us ], [ %i.py, %.noexc1005.us.us.us ], [ %i.kt, %.noexc997.us.us.us ]
  %.sink2736 = load i16, ptr %.sink2736.in, align 2, !tbaa !28
  %i.ws = zext i16 %.sink2736 to i32
  %i.wt = shl nuw i32 %i.ws, 16
  %i.wu = insertelement <16 x i32> poison, i32 %i.wt, i64 0
  %i.wv = bitcast <16 x i32> %i.wu to <16 x float>
  %i.ww = shufflevector <16 x float> %i.wv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wx = load <16 x bfloat>, ptr %i.dv, align 32, !tbaa !26
  %i.wy = fpext fast <16 x bfloat> %i.wx to <16 x float>
  %i.wz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2731, <16 x float> nofpclass(nan inf) %i.wy, <16 x float> nofpclass(nan inf) %.322082305.us.us.us)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.xb = load <16 x bfloat>, ptr %i.xa, align 32, !tbaa !26
  %i.xc = fpext fast <16 x bfloat> %i.xb to <16 x float>
  %i.xd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2727, <16 x float> nofpclass(nan inf) %i.xc, <16 x float> nofpclass(nan inf) %.27842306.us.us.us)
  %i.xe = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.xf = load <16 x bfloat>, ptr %i.xe, align 32, !tbaa !26
  %i.xg = fpext fast <16 x bfloat> %i.xf to <16 x float>
  %i.xh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2723, <16 x float> nofpclass(nan inf) %i.xg, <16 x float> nofpclass(nan inf) %.27542307.us.us.us)
  %i.xi = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.xj = load <16 x bfloat>, ptr %i.xi, align 32, !tbaa !26
  %i.xk = fpext fast <16 x bfloat> %i.xj to <16 x float>
  %i.xl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2719, <16 x float> nofpclass(nan inf) %i.xk, <16 x float> nofpclass(nan inf) %.27492308.us.us.us)
  %i.xm = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  %i.xn = load <16 x bfloat>, ptr %i.xm, align 32, !tbaa !26
  %i.xo = fpext fast <16 x bfloat> %i.xn to <16 x float>
  %i.xp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2714, <16 x float> nofpclass(nan inf) %i.xo, <16 x float> nofpclass(nan inf) %i.wz)
  %i.xq = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  %i.xr = load <16 x bfloat>, ptr %i.xq, align 32, !tbaa !26
  %i.xs = fpext fast <16 x bfloat> %i.xr to <16 x float>
  %i.xt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2709, <16 x float> nofpclass(nan inf) %i.xs, <16 x float> nofpclass(nan inf) %i.xd)
  %i.xu = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  %i.xv = load <16 x bfloat>, ptr %i.xu, align 32, !tbaa !26
  %i.xw = fpext fast <16 x bfloat> %i.xv to <16 x float>
  %i.xx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2704, <16 x float> nofpclass(nan inf) %i.xw, <16 x float> nofpclass(nan inf) %i.xh)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.dv, i64 224
  %i.xz = load <16 x bfloat>, ptr %i.xy, align 32, !tbaa !26
  %i.ya = fpext fast <16 x bfloat> %i.xz to <16 x float>
  %i.yb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2699, <16 x float> nofpclass(nan inf) %i.ya, <16 x float> nofpclass(nan inf) %i.xl)
  %i.yc = getelementptr inbounds nuw i8, ptr %i.dv, i64 256
  %i.yd = load <16 x bfloat>, ptr %i.yc, align 32, !tbaa !26
  %i.ye = fpext fast <16 x bfloat> %i.yd to <16 x float>
  %i.yf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2694, <16 x float> nofpclass(nan inf) %i.ye, <16 x float> nofpclass(nan inf) %i.xp)
  %i.yg = getelementptr inbounds nuw i8, ptr %i.dv, i64 288
  %i.yh = load <16 x bfloat>, ptr %i.yg, align 32, !tbaa !26
  %i.yi = fpext fast <16 x bfloat> %i.yh to <16 x float>
  %i.yj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2689, <16 x float> nofpclass(nan inf) %i.yi, <16 x float> nofpclass(nan inf) %i.xt)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.dv, i64 320
  %i.yl = load <16 x bfloat>, ptr %i.yk, align 32, !tbaa !26
  %i.ym = fpext fast <16 x bfloat> %i.yl to <16 x float>
  %i.yn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2684, <16 x float> nofpclass(nan inf) %i.ym, <16 x float> nofpclass(nan inf) %i.xx)
  %i.yo = getelementptr inbounds nuw i8, ptr %i.dv, i64 352
  %i.yp = load <16 x bfloat>, ptr %i.yo, align 32, !tbaa !26
  %i.yq = fpext fast <16 x bfloat> %i.yp to <16 x float>
  %i.yr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2679, <16 x float> nofpclass(nan inf) %i.yq, <16 x float> nofpclass(nan inf) %i.yb)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.dv, i64 384
  %i.yt = load <16 x bfloat>, ptr %i.ys, align 32, !tbaa !26
  %i.yu = fpext fast <16 x bfloat> %i.yt to <16 x float>
  %i.yv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2674, <16 x float> nofpclass(nan inf) %i.yu, <16 x float> nofpclass(nan inf) %i.yf)
  %i.yw = getelementptr inbounds nuw i8, ptr %i.dv, i64 416
  %i.yx = load <16 x bfloat>, ptr %i.yw, align 32, !tbaa !26
  %i.yy = fpext fast <16 x bfloat> %i.yx to <16 x float>
  %i.yz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2669, <16 x float> nofpclass(nan inf) %i.yy, <16 x float> nofpclass(nan inf) %i.yj)
  %i.za = getelementptr inbounds nuw i8, ptr %i.dv, i64 448
  %i.zb = load <16 x bfloat>, ptr %i.za, align 32, !tbaa !26
  %i.zc = fpext fast <16 x bfloat> %i.zb to <16 x float>
  %i.zd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2664, <16 x float> nofpclass(nan inf) %i.zc, <16 x float> nofpclass(nan inf) %i.yn)
  %i.ze = getelementptr inbounds nuw i8, ptr %i.dv, i64 480
  %i.zf = load <16 x bfloat>, ptr %i.ze, align 32, !tbaa !26
  %i.zg = fpext fast <16 x bfloat> %i.zf to <16 x float>
  %i.zh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ww, <16 x float> nofpclass(nan inf) %i.zg, <16 x float> nofpclass(nan inf) %i.yr)
  br label %.thread2238.us.us.us

.thread2238.us.us.us:                             ; preds = %.thread2238.us.us.us.sink.split, %.split.us.us.us, %bb.g, %bb.f
  %.7.us.us.us = phi nsz <16 x float> [ %.322082305.us.us.us, %bb.f ], [ %.322082305.us.us.us, %bb.g ], [ %.322082305.us.us.us, %.split.us.us.us ], [ %i.yv, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8790.us.us.us = phi nsz <16 x float> [ %.27842306.us.us.us, %bb.f ], [ %.27842306.us.us.us, %bb.g ], [ %.27842306.us.us.us, %.split.us.us.us ], [ %i.yz, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8760.us.us.us = phi nsz <16 x float> [ %.27542307.us.us.us, %bb.f ], [ %.27542307.us.us.us, %bb.g ], [ %.27542307.us.us.us, %.split.us.us.us ], [ %i.zd, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8.us.us.us = phi nsz <16 x float> [ %.27492308.us.us.us, %bb.f ], [ %.27492308.us.us.us, %bb.g ], [ %.27492308.us.us.us, %.split.us.us.us ], [ %i.zh, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2559, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit2294.us.us, label %bb.f, !llvm.loop !286

.loopexit2294.us.us:                              ; preds = %.thread2238.us.us.us, %.preheader2293.us.us, %bb.e, %.lr.ph2321.split.us.us
  %.82211.us.us = phi nsz <16 x float> [ %.222072316.us.us, %.lr.ph2321.split.us.us ], [ %.222072316.us.us, %bb.e ], [ %.222072316.us.us, %.preheader2293.us.us ], [ %.7.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10792.us.us = phi nsz <16 x float> [ %.17832317.us.us, %.lr.ph2321.split.us.us ], [ %.17832317.us.us, %bb.e ], [ %.17832317.us.us, %.preheader2293.us.us ], [ %.8790.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10762.us.us = phi nsz <16 x float> [ %.17532318.us.us, %.lr.ph2321.split.us.us ], [ %.17532318.us.us, %bb.e ], [ %.17532318.us.us, %.preheader2293.us.us ], [ %.8760.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10.us.us = phi nsz <16 x float> [ %.17482319.us.us, %.lr.ph2321.split.us.us ], [ %.17482319.us.us, %bb.e ], [ %.17482319.us.us, %.preheader2293.us.us ], [ %.8.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %i.zi = add nuw nsw i32 %.07402320.us.us, 1     ; 2 uses
  %exitcond2561.not = icmp eq i32 %i.zi, %i.bv
  br i1 %exitcond2561.not, label %._crit_edge.us, label %.lr.ph2321.split.us.us, !llvm.loop !287

._crit_edge.us:                                   ; preds = %.loopexit2294.us.us, %.preheader2299.us
  %.us-phi2328.us = phi <16 x float> [ %.122062332.us, %.preheader2299.us ], [ %.82211.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2329.us = phi <16 x float> [ %.07822333.us, %.preheader2299.us ], [ %.10792.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2330.us = phi <16 x float> [ %.07522334.us, %.preheader2299.us ], [ %.10762.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2331.us = phi <16 x float> [ %.07472335.us, %.preheader2299.us ], [ %.10.us.us, %.loopexit2294.us.us ] ; 2 uses
  %i.zj = getelementptr inbounds [2 x i8], ptr %.07422336.us, i64 %i.bz ; 2 uses
  %indvars.iv.next2563 = add nuw nsw i64 %indvars.iv2562, 16 ; 2 uses
  %i.zk = icmp slt i64 %indvars.iv.next2563, %invariant.op
  br i1 %i.zk, label %.preheader2299.us, label %.preheader2303, !llvm.loop !288

.preheader2303:                                   ; preds = %._crit_edge.us, %.preheader2299.preheader, %.noexc1013
  %.12206.lcssa = phi <16 x float> [ %.02205, %.noexc1013 ], [ %.02205, %.preheader2299.preheader ], [ %.us-phi2328.us, %._crit_edge.us ] ; 3 uses
  %.0782.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2329.us, %._crit_edge.us ] ; 3 uses
  %.0752.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2330.us, %._crit_edge.us ] ; 3 uses
  %.0747.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2331.us, %._crit_edge.us ] ; 3 uses
  %.0742.lcssa = phi ptr [ %i.bu, %.noexc1013 ], [ %scevgep, %.preheader2299.preheader ], [ %i.zj, %._crit_edge.us ] ; 3 uses
  %.0741.lcssa = phi i32 [ 0, %.noexc1013 ], [ %i.bi, %.preheader2299.preheader ], [ %i.bl, %._crit_edge.us ] ; 6 uses
  %i.zl = or disjoint i32 %.0741.lcssa, 7         ; 2 uses
  %i.zm = icmp slt i32 %i.zl, %i.ae
  br i1 %i.zm, label %.preheader2298.lr.ph, label %.preheader2302

.preheader2298.lr.ph:                             ; preds = %.preheader2303
  %i.zn = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.zo = icmp sgt i32 %i.zn, 0
  %.neg2282 = add nuw nsw i32 %.08122526, 1
  %i.zp = load i32, ptr %15, align 4, !tbaa !9
  %i.zq = shl i32 %i.zp, 7
  %i.zr = sext i32 %i.zq to i64                   ; 2 uses
  br i1 %i.zo, label %.preheader2298.lr.ph.split.us, label %.preheader2298.preheader

.preheader2298.preheader:                         ; preds = %.preheader2298.lr.ph
  %i.zs = add i32 %.0741.lcssa, 15
  %smax = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.zs)
  %i.zt = add i32 %smax, -8
  %i.zu = sub i32 %i.zt, %.0741.lcssa             ; 2 uses
  %i.zv = lshr i32 %i.zu, 2
  %i.zw = and i32 %i.zv, 1073741822
  %narrow2654 = add nuw nsw i32 %i.zw, 2
  %i.zx = zext nneg i32 %narrow2654 to i64
  %i.zy = mul nsw i64 %i.zx, %i.zr
  %scevgep2565 = getelementptr i8, ptr %.0742.lcssa, i64 %i.zy
  %i.zz = add i32 %.0741.lcssa, 8
  %i.aaa = and i32 %i.zu, -8
  %i.aab = add i32 %i.zz, %i.aaa
  br label %.preheader2302

.preheader2298.lr.ph.split.us:                    ; preds = %.preheader2298.lr.ph
  %i.aac = load i32, ptr %8, align 4, !tbaa !9
  %i.aad = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2379.us = sub i32 %.neg2284, %i.aad
  %i.aae = zext i32 %.0741.lcssa to i64
  %i.aaf = zext nneg i32 %i.zl to i64
  br label %.preheader2298.us

.preheader2298.us:                                ; preds = %._crit_edge.us2394, %.preheader2298.lr.ph.split.us
  %indvars.iv2572 = phi i64 [ %indvars.iv.next2573, %._crit_edge.us2394 ], [ %i.aae, %.preheader2298.lr.ph.split.us ] ; 10 uses
  %i.aag = phi i64 [ %i.aku, %._crit_edge.us2394 ], [ %i.aaf, %.preheader2298.lr.ph.split.us ]
  %.17432385.us = phi ptr [ %i.akt, %._crit_edge.us2394 ], [ %.0742.lcssa, %.preheader2298.lr.ph.split.us ] ; 2 uses
  %.112384.us = phi <16 x float> [ %.20.us, %._crit_edge.us2394 ], [ %.0747.lcssa, %.preheader2298.lr.ph.split.us ]
  %.117632383.us = phi <16 x float> [ %.20772.us, %._crit_edge.us2394 ], [ %.0752.lcssa, %.preheader2298.lr.ph.split.us ]
  %.117932382.us = phi <16 x float> [ %.20802.us, %._crit_edge.us2394 ], [ %.0782.lcssa, %.preheader2298.lr.ph.split.us ]
  %.92381.us = phi <16 x float> [ %.152217.us, %._crit_edge.us2394 ], [ %.12206.lcssa, %.preheader2298.lr.ph.split.us ]
  %i.aah = or disjoint i64 %indvars.iv2572, 1
  %i.aai = or disjoint i64 %indvars.iv2572, 2
  %i.aaj = or disjoint i64 %indvars.iv2572, 3
  %i.aak = or disjoint i64 %indvars.iv2572, 4
  %i.aal = or disjoint i64 %indvars.iv2572, 5
  %i.aam = or disjoint i64 %indvars.iv2572, 6
  %i.aan = lshr exact i64 %indvars.iv2572, 2      ; 2 uses
  %i.aao = or disjoint i64 %i.aan, 1
  %i.aap = lshr exact i64 %indvars.iv2572, 3
  br label %bb.h

bb.h:                                             ; preds = %.preheader2298.us, %.loopexit2292.us
  %.07382373.us = phi i32 [ 0, %.preheader2298.us ], [ %i.ako, %.loopexit2292.us ] ; 3 uses
  %.122372.us = phi <16 x float> [ %.112384.us, %.preheader2298.us ], [ %.20.us, %.loopexit2292.us ] ; 4 uses
  %.127642371.us = phi <16 x float> [ %.117632383.us, %.preheader2298.us ], [ %.20772.us, %.loopexit2292.us ] ; 4 uses
  %.127942370.us = phi <16 x float> [ %.117932382.us, %.preheader2298.us ], [ %.20802.us, %.loopexit2292.us ] ; 4 uses
  %.1022122369.us = phi <16 x float> [ %.92381.us, %.preheader2298.us ], [ %.152217.us, %.loopexit2292.us ] ; 4 uses
  %i.aaq = mul nsw i32 %i.aac, %.07382373.us
  %.reass2380.us = add i32 %i.aaq, %invariant.op2379.us ; 3 uses
  %i.aar = icmp slt i32 %.reass2380.us, 0
  br i1 %i.aar, label %.loopexit2292.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aas = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.aat = srem i32 %.reass2380.us, %i.aas
  %i.aau = sdiv i32 %.reass2380.us, %i.aas        ; 2 uses
  %.not879.us = icmp eq i32 %i.aat, 0
  %.not880.us = icmp slt i32 %i.aau, %i.ag
  %or.cond2786 = select i1 %.not879.us, i1 %.not880.us, i1 false
  br i1 %or.cond2786, label %.preheader2291.us, label %.loopexit2292.us

.preheader2291.us:                                ; preds = %bb.i
  %i.aav = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.aaw = icmp sgt i32 %i.aav, 0
  br i1 %i.aaw, label %.lr.ph.us, label %.loopexit2292.us

bb.j:                                             ; preds = %.lr.ph.us, %.thread2249.us
  %indvars.iv2566 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next2567, %.thread2249.us ] ; 3 uses
  %.132363.us = phi <16 x float> [ %.122372.us, %.lr.ph.us ], [ %.18.us, %.thread2249.us ] ; 4 uses
  %.137652362.us = phi <16 x float> [ %.127642371.us, %.lr.ph.us ], [ %.18770.us, %.thread2249.us ] ; 4 uses
  %.137952361.us = phi <16 x float> [ %.127942370.us, %.lr.ph.us ], [ %.18800.us, %.thread2249.us ] ; 4 uses
  %.1122132360.us = phi <16 x float> [ %.1022122369.us, %.lr.ph.us ], [ %.142216.us, %.thread2249.us ] ; 4 uses
  %i.aax = trunc i64 %indvars.iv2566 to i32
  %i.aay = mul i32 %i.akp, %i.aax
  %.reass.us2393 = add i32 %i.aay, %invariant.op.us ; 3 uses
  %i.aaz = icmp slt i32 %.reass.us2393, 0
  br i1 %i.aaz, label %.thread2249.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aba = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.abb = srem i32 %.reass.us2393, %i.aba
  %i.abc = sdiv i32 %.reass.us2393, %i.aba        ; 4 uses
  %.not881.us = icmp eq i32 %i.abb, 0
  %.not882.us = icmp slt i32 %i.abc, %i.af
  %or.cond2787 = select i1 %.not881.us, i1 %.not882.us, i1 false
  br i1 %or.cond2787, label %bb.l, label %.thread2249.us

bb.l:                                             ; preds = %bb.k
  %i.abd = trunc i64 %indvars.iv2566 to i32
  %i.abe = add i32 %i.akr, %i.abd
  %i.abf = shl nsw i32 %i.abe, 7
  %i.abg = zext nneg i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %.17432385.us, i64 %i.abg ; 8 uses
  switch i32 %.fr, label %.thread2249.us [
    i32 8, label %.noexc965.us
    i32 4, label %.noexc963.us
    i32 1, label %.noexc959.us
  ]

.noexc959.us:                                     ; preds = %bb.l
  %i.abi = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !324
  %i.abj = load ptr, ptr %3, align 8, !tbaa !19, !noalias !324 ; 8 uses
  %i.abk = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !324 ; 8 uses
  %i.abl = mul i64 %i.abk, %indvars.iv2572
  %i.abm = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !324 ; 9 uses
  %i.abn = mul i64 %i.abl, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abn
  %i.abp = sext i32 %i.abi to i64
  %i.abq = mul nsw i64 %i.abp, %i.aks
  %i.abr = mul i64 %i.abq, %i.abm                 ; 8 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.abr
  %i.abt = sext i32 %i.abc to i64                 ; 8 uses
  %i.abu = getelementptr inbounds [2 x i8], ptr %i.abs, i64 %i.abt
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !28
  %i.abw = zext i16 %i.abv to i32
  %i.abx = shl nuw i32 %i.abw, 16
  %i.aby = insertelement <16 x i32> poison, i32 %i.abx, i64 0
  %i.abz = bitcast <16 x i32> %i.aby to <16 x float>
  %i.aca = shufflevector <16 x float> %i.abz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acb = mul i64 %i.abk, %i.aah
  %i.acc = mul i64 %i.acb, %i.abm
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.abr
  %i.acf = getelementptr inbounds [2 x i8], ptr %i.ace, i64 %i.abt
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !28
  %i.ach = zext i16 %i.acg to i32
  %i.aci = shl nuw i32 %i.ach, 16
  %i.acj = insertelement <16 x i32> poison, i32 %i.aci, i64 0
  %i.ack = bitcast <16 x i32> %i.acj to <16 x float>
  %i.acl = shufflevector <16 x float> %i.ack, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acm = mul i64 %i.abk, %i.aai
  %i.acn = mul i64 %i.acm, %i.abm
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.abr
  %i.acq = getelementptr inbounds [2 x i8], ptr %i.acp, i64 %i.abt
  %i.acr = load i16, ptr %i.acq, align 2, !tbaa !28
  %i.acs = zext i16 %i.acr to i32
  %i.act = shl nuw i32 %i.acs, 16
  %i.acu = insertelement <16 x i32> poison, i32 %i.act, i64 0
  %i.acv = bitcast <16 x i32> %i.acu to <16 x float>
  %i.acw = shufflevector <16 x float> %i.acv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acx = mul i64 %i.abk, %i.aaj
  %i.acy = mul i64 %i.acx, %i.abm
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.abr
  %i.adb = getelementptr inbounds [2 x i8], ptr %i.ada, i64 %i.abt
  %i.adc = load i16, ptr %i.adb, align 2, !tbaa !28
  %i.add = zext i16 %i.adc to i32
  %i.ade = shl nuw i32 %i.add, 16
  %i.adf = insertelement <16 x i32> poison, i32 %i.ade, i64 0
  %i.adg = bitcast <16 x i32> %i.adf to <16 x float>
  %i.adh = shufflevector <16 x float> %i.adg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adi = mul i64 %i.abk, %i.aak
  %i.adj = mul i64 %i.adi, %i.abm
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.abr
  %i.adm = getelementptr inbounds [2 x i8], ptr %i.adl, i64 %i.abt
  %i.adn = load i16, ptr %i.adm, align 2, !tbaa !28
  %i.ado = zext i16 %i.adn to i32
  %i.adp = shl nuw i32 %i.ado, 16
  %i.adq = insertelement <16 x i32> poison, i32 %i.adp, i64 0
  %i.adr = bitcast <16 x i32> %i.adq to <16 x float>
  %i.ads = shufflevector <16 x float> %i.adr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adt = mul i64 %i.abk, %i.aal
  %i.adu = mul i64 %i.adt, %i.abm
  %i.adv = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.abr
  %i.adx = getelementptr inbounds [2 x i8], ptr %i.adw, i64 %i.abt
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !28
  %i.adz = zext i16 %i.ady to i32
  %i.aea = shl nuw i32 %i.adz, 16
  %i.aeb = insertelement <16 x i32> poison, i32 %i.aea, i64 0
  %i.aec = bitcast <16 x i32> %i.aeb to <16 x float>
  %i.aed = shufflevector <16 x float> %i.aec, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aee = mul i64 %i.abk, %i.aam
  %i.aef = mul i64 %i.aee, %i.abm
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.abr
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.aeh, i64 %i.abt
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !28
  %i.aek = zext i16 %i.aej to i32
  %i.ael = shl nuw i32 %i.aek, 16
  %i.aem = insertelement <16 x i32> poison, i32 %i.ael, i64 0
  %i.aen = bitcast <16 x i32> %i.aem to <16 x float>
  %i.aeo = shufflevector <16 x float> %i.aen, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aep = mul i64 %i.abk, %i.aag
  %i.aeq = mul i64 %i.aep, %i.abm
  %i.aer = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.aeq
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.abr
  %i.aet = getelementptr inbounds [2 x i8], ptr %i.aes, i64 %i.abt
  br label %.thread2249.us.sink.split

.noexc963.us:                                     ; preds = %bb.l
  %i.aeu = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !325
  %i.aev = load ptr, ptr %3, align 8, !tbaa !19, !noalias !325 ; 2 uses
  %i.aew = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !325 ; 2 uses
  %i.aex = mul i64 %i.aew, %i.aan
  %i.aey = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !325 ; 3 uses
  %i.aez = mul i64 %i.aex, %i.aey
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.aez
  %i.afb = sext i32 %i.aeu to i64
  %i.afc = mul nsw i64 %i.afb, %i.aks
  %i.afd = mul i64 %i.afc, %i.aey                 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 %i.afd
  %i.aff = mul i64 %i.aew, %i.aao
  %i.afg = mul i64 %i.aff, %i.aey
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.afg
  %i.afi = shl nsw i32 %i.abc, 2
  %i.afj = sext i32 %i.afi to i64                 ; 2 uses
  %i.afk = getelementptr inbounds [2 x i8], ptr %i.afe, i64 %i.afj ; 4 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afd
  %i.afm = getelementptr inbounds [2 x i8], ptr %i.afl, i64 %i.afj ; 4 uses
  %i.afn = load i16, ptr %i.afk, align 2, !tbaa !28
  %i.afo = zext i16 %i.afn to i32
  %i.afp = shl nuw i32 %i.afo, 16
  %i.afq = insertelement <16 x i32> poison, i32 %i.afp, i64 0
  %i.afr = bitcast <16 x i32> %i.afq to <16 x float>
  %i.afs = shufflevector <16 x float> %i.afr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afk, i64 2
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !28
  %i.afv = zext i16 %i.afu to i32
  %i.afw = shl nuw i32 %i.afv, 16
  %i.afx = insertelement <16 x i32> poison, i32 %i.afw, i64 0
  %i.afy = bitcast <16 x i32> %i.afx to <16 x float>
  %i.afz = shufflevector <16 x float> %i.afy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  %i.agb = load i16, ptr %i.aga, align 2, !tbaa !28
  %i.agc = zext i16 %i.agb to i32
  %i.agd = shl nuw i32 %i.agc, 16
  %i.age = insertelement <16 x i32> poison, i32 %i.agd, i64 0
  %i.agf = bitcast <16 x i32> %i.age to <16 x float>
  %i.agg = shufflevector <16 x float> %i.agf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afk, i64 6
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !28
  %i.agj = zext i16 %i.agi to i32
  %i.agk = shl nuw i32 %i.agj, 16
  %i.agl = insertelement <16 x i32> poison, i32 %i.agk, i64 0
  %i.agm = bitcast <16 x i32> %i.agl to <16 x float>
  %i.agn = shufflevector <16 x float> %i.agm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ago = load i16, ptr %i.afm, align 2, !tbaa !28
  %i.agp = zext i16 %i.ago to i32
  %i.agq = shl nuw i32 %i.agp, 16
  %i.agr = insertelement <16 x i32> poison, i32 %i.agq, i64 0
  %i.ags = bitcast <16 x i32> %i.agr to <16 x float>
  %i.agt = shufflevector <16 x float> %i.ags, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afm, i64 2
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !28
  %i.agw = zext i16 %i.agv to i32
  %i.agx = shl nuw i32 %i.agw, 16
  %i.agy = insertelement <16 x i32> poison, i32 %i.agx, i64 0
  %i.agz = bitcast <16 x i32> %i.agy to <16 x float>
  %i.aha = shufflevector <16 x float> %i.agz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !28
  %i.ahd = zext i16 %i.ahc to i32
  %i.ahe = shl nuw i32 %i.ahd, 16
  %i.ahf = insertelement <16 x i32> poison, i32 %i.ahe, i64 0
  %i.ahg = bitcast <16 x i32> %i.ahf to <16 x float>
  %i.ahh = shufflevector <16 x float> %i.ahg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afm, i64 6
  br label %.thread2249.us.sink.split

.noexc965.us:                                     ; preds = %bb.l
  %i.ahj = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !326
  %i.ahk = load ptr, ptr %3, align 8, !tbaa !19, !noalias !326
  %i.ahl = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !326
  %i.ahm = mul i64 %i.ahl, %i.aap
  %i.ahn = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !326 ; 2 uses
  %i.aho = mul i64 %i.ahm, %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.aho
  %i.ahq = sext i32 %i.ahj to i64
  %i.ahr = mul nsw i64 %i.ahq, %i.aks
  %i.ahs = mul i64 %i.ahr, %i.ahn
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahp, i64 %i.ahs
  %i.ahu = shl nsw i32 %i.abc, 3
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds [2 x i8], ptr %i.aht, i64 %i.ahv ; 5 uses
  %i.ahx = load i16, ptr %i.ahw, align 2, !tbaa !28
  %i.ahy = zext i16 %i.ahx to i32
  %i.ahz = shl nuw i32 %i.ahy, 16
  %i.aia = insertelement <16 x i32> poison, i32 %i.ahz, i64 0
  %i.aib = bitcast <16 x i32> %i.aia to <16 x float>
  %i.aic = shufflevector <16 x float> %i.aib, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahw, i64 2
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !28
  %i.aif = zext i16 %i.aie to i32
  %i.aig = shl nuw i32 %i.aif, 16
  %i.aih = insertelement <16 x i32> poison, i32 %i.aig, i64 0
  %i.aii = bitcast <16 x i32> %i.aih to <16 x float>
  %i.aij = shufflevector <16 x float> %i.aii, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4
  %i.ail = load i16, ptr %i.aik, align 2, !tbaa !28
  %i.aim = zext i16 %i.ail to i32
  %i.ain = shl nuw i32 %i.aim, 16
  %i.aio = insertelement <16 x i32> poison, i32 %i.ain, i64 0
  %i.aip = bitcast <16 x i32> %i.aio to <16 x float>
  %i.aiq = shufflevector <16 x float> %i.aip, <16 x float> poison, <16 x i32> zeroinitializer
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahw, i64 6
  %i.ais = load <4 x i16>, ptr %i.air, align 2, !tbaa !28
  %i.ait = zext <4 x i16> %i.ais to <4 x i32>
  %i.aiu = shl nuw <4 x i32> %i.ait, splat (i32 16) ; 4 uses
  %i.aiv = bitcast <4 x i32> %i.aiu to <4 x float>
  %i.aiw = shufflevector <4 x float> %i.aiv, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aix = bitcast <4 x i32> %i.aiu to <4 x float>
  %i.aiy = shufflevector <4 x float> %i.aix, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aiz = bitcast <4 x i32> %i.aiu to <4 x float>
  %i.aja = shufflevector <4 x float> %i.aiz, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ajb = bitcast <4 x i32> %i.aiu to <4 x float>
  %i.ajc = shufflevector <4 x float> %i.ajb, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahw, i64 14
  br label %.thread2249.us.sink.split

.thread2249.us.sink.split:                        ; preds = %.noexc959.us, %.noexc963.us, %.noexc965.us
  %.sink2773.in = phi ptr [ %i.ajd, %.noexc965.us ], [ %i.ahi, %.noexc963.us ], [ %i.aet, %.noexc959.us ]
  %.sink2768 = phi <16 x float> [ %i.aic, %.noexc965.us ], [ %i.afs, %.noexc963.us ], [ %i.aca, %.noexc959.us ]
  %.sink2764 = phi <16 x float> [ %i.aij, %.noexc965.us ], [ %i.afz, %.noexc963.us ], [ %i.acl, %.noexc959.us ]
  %.sink2760 = phi <16 x float> [ %i.aiq, %.noexc965.us ], [ %i.agg, %.noexc963.us ], [ %i.acw, %.noexc959.us ]
  %.sink2756 = phi <16 x float> [ %i.aiw, %.noexc965.us ], [ %i.agn, %.noexc963.us ], [ %i.adh, %.noexc959.us ]
  %.sink2751 = phi <16 x float> [ %i.aiy, %.noexc965.us ], [ %i.agt, %.noexc963.us ], [ %i.ads, %.noexc959.us ]
  %.sink2746 = phi <16 x float> [ %i.aja, %.noexc965.us ], [ %i.aha, %.noexc963.us ], [ %i.aed, %.noexc959.us ]
  %.sink2741 = phi <16 x float> [ %i.ajc, %.noexc965.us ], [ %i.ahh, %.noexc963.us ], [ %i.aeo, %.noexc959.us ]
  %.sink2773 = load i16, ptr %.sink2773.in, align 2, !tbaa !28
  %i.aje = zext i16 %.sink2773 to i32
  %i.ajf = shl nuw i32 %i.aje, 16
  %i.ajg = insertelement <16 x i32> poison, i32 %i.ajf, i64 0
  %i.ajh = bitcast <16 x i32> %i.ajg to <16 x float>
  %i.aji = shufflevector <16 x float> %i.ajh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajj = load <16 x bfloat>, ptr %i.abh, align 32, !tbaa !26
  %i.ajk = fpext fast <16 x bfloat> %i.ajj to <16 x float>
  %i.ajl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2768, <16 x float> nofpclass(nan inf) %i.ajk, <16 x float> nofpclass(nan inf) %.1122132360.us)
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.abh, i64 32
  %i.ajn = load <16 x bfloat>, ptr %i.ajm, align 32, !tbaa !26
  %i.ajo = fpext fast <16 x bfloat> %i.ajn to <16 x float>
  %i.ajp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2764, <16 x float> nofpclass(nan inf) %i.ajo, <16 x float> nofpclass(nan inf) %.137952361.us)
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.abh, i64 64
  %i.ajr = load <16 x bfloat>, ptr %i.ajq, align 32, !tbaa !26
  %i.ajs = fpext fast <16 x bfloat> %i.ajr to <16 x float>
  %i.ajt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2760, <16 x float> nofpclass(nan inf) %i.ajs, <16 x float> nofpclass(nan inf) %.137652362.us)
  %i.aju = getelementptr inbounds nuw i8, ptr %i.abh, i64 96
  %i.ajv = load <16 x bfloat>, ptr %i.aju, align 32, !tbaa !26
  %i.ajw = fpext fast <16 x bfloat> %i.ajv to <16 x float>
  %i.ajx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2756, <16 x float> nofpclass(nan inf) %i.ajw, <16 x float> nofpclass(nan inf) %.132363.us)
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.abh, i64 128
  %i.ajz = load <16 x bfloat>, ptr %i.ajy, align 32, !tbaa !26
  %i.aka = fpext fast <16 x bfloat> %i.ajz to <16 x float>
  %i.akb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2751, <16 x float> nofpclass(nan inf) %i.aka, <16 x float> nofpclass(nan inf) %i.ajl)
  %i.akc = getelementptr inbounds nuw i8, ptr %i.abh, i64 160
  %i.akd = load <16 x bfloat>, ptr %i.akc, align 32, !tbaa !26
  %i.ake = fpext fast <16 x bfloat> %i.akd to <16 x float>
  %i.akf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2746, <16 x float> nofpclass(nan inf) %i.ake, <16 x float> nofpclass(nan inf) %i.ajp)
  %i.akg = getelementptr inbounds nuw i8, ptr %i.abh, i64 192
  %i.akh = load <16 x bfloat>, ptr %i.akg, align 32, !tbaa !26
  %i.aki = fpext fast <16 x bfloat> %i.akh to <16 x float>
  %i.akj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2741, <16 x float> nofpclass(nan inf) %i.aki, <16 x float> nofpclass(nan inf) %i.ajt)
  %i.akk = getelementptr inbounds nuw i8, ptr %i.abh, i64 224
  %i.akl = load <16 x bfloat>, ptr %i.akk, align 32, !tbaa !26
  %i.akm = fpext fast <16 x bfloat> %i.akl to <16 x float>
  %i.akn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aji, <16 x float> nofpclass(nan inf) %i.akm, <16 x float> nofpclass(nan inf) %i.ajx)
  br label %.thread2249.us

.thread2249.us:                                   ; preds = %.thread2249.us.sink.split, %bb.l, %bb.k, %bb.j
  %.142216.us = phi nsz <16 x float> [ %.1122132360.us, %bb.j ], [ %.1122132360.us, %bb.k ], [ %.1122132360.us, %bb.l ], [ %i.akb, %.thread2249.us.sink.split ] ; 2 uses
  %.18800.us = phi nsz <16 x float> [ %.137952361.us, %bb.j ], [ %.137952361.us, %bb.k ], [ %.137952361.us, %bb.l ], [ %i.akf, %.thread2249.us.sink.split ] ; 2 uses
  %.18770.us = phi nsz <16 x float> [ %.137652362.us, %bb.j ], [ %.137652362.us, %bb.k ], [ %.137652362.us, %bb.l ], [ %i.akj, %.thread2249.us.sink.split ] ; 2 uses
  %.18.us = phi nsz <16 x float> [ %.132363.us, %bb.j ], [ %.132363.us, %bb.k ], [ %.132363.us, %bb.l ], [ %i.akn, %.thread2249.us.sink.split ] ; 2 uses
  %indvars.iv.next2567 = add nuw nsw i64 %indvars.iv2566, 1 ; 2 uses
  %exitcond2570.not = icmp eq i64 %indvars.iv.next2567, %wide.trip.count2569
  br i1 %exitcond2570.not, label %.loopexit2292.us, label %bb.j, !llvm.loop !295

.loopexit2292.us:                                 ; preds = %.thread2249.us, %.preheader2291.us, %bb.i, %bb.h
  %.152217.us = phi nsz <16 x float> [ %.1022122369.us, %bb.h ], [ %.1022122369.us, %bb.i ], [ %.1022122369.us, %.preheader2291.us ], [ %.142216.us, %.thread2249.us ] ; 3 uses
  %.20802.us = phi nsz <16 x float> [ %.127942370.us, %bb.h ], [ %.127942370.us, %bb.i ], [ %.127942370.us, %.preheader2291.us ], [ %.18800.us, %.thread2249.us ] ; 3 uses
  %.20772.us = phi nsz <16 x float> [ %.127642371.us, %bb.h ], [ %.127642371.us, %bb.i ], [ %.127642371.us, %.preheader2291.us ], [ %.18770.us, %.thread2249.us ] ; 3 uses
  %.20.us = phi nsz <16 x float> [ %.122372.us, %bb.h ], [ %.122372.us, %bb.i ], [ %.122372.us, %.preheader2291.us ], [ %.18.us, %.thread2249.us ] ; 3 uses
  %i.ako = add nuw nsw i32 %.07382373.us, 1       ; 2 uses
  %exitcond2571.not = icmp eq i32 %i.ako, %i.zn
  br i1 %exitcond2571.not, label %._crit_edge.us2394, label %bb.h, !llvm.loop !296

.lr.ph.us:                                        ; preds = %.preheader2291.us
  %i.akp = load i32, ptr %12, align 4, !tbaa !9
  %i.akq = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us = sub i32 %.neg2282, %i.akq
  %i.akr = mul nuw nsw i32 %i.aav, %.07382373.us
  %i.aks = sext i32 %i.aau to i64                 ; 3 uses
  %wide.trip.count2569 = zext nneg i32 %i.aav to i64
  br label %bb.j

._crit_edge.us2394:                               ; preds = %.loopexit2292.us
  %i.akt = getelementptr inbounds [2 x i8], ptr %.17432385.us, i64 %i.zr ; 2 uses
  %indvars.iv.next2573 = add nuw nsw i64 %indvars.iv2572, 8 ; 3 uses
  %i.aku = or disjoint i64 %indvars.iv.next2573, 7 ; 2 uses
  %i.akv = trunc nuw i64 %i.aku to i32
  %i.akw = icmp sgt i32 %i.ae, %i.akv
  br i1 %i.akw, label %.preheader2298.us, label %.preheader2302.loopexit, !llvm.loop !297

.preheader2302.loopexit:                          ; preds = %._crit_edge.us2394
  %i.akx = trunc nuw i64 %indvars.iv.next2573 to i32
  br label %.preheader2302

.preheader2302:                                   ; preds = %.preheader2298.preheader, %.preheader2302.loopexit, %.preheader2303
  %.9.lcssa = phi <16 x float> [ %.12206.lcssa, %.preheader2303 ], [ %.152217.us, %.preheader2302.loopexit ], [ %.12206.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11793.lcssa = phi <16 x float> [ %.0782.lcssa, %.preheader2303 ], [ %.20802.us, %.preheader2302.loopexit ], [ %.0782.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11763.lcssa = phi <16 x float> [ %.0752.lcssa, %.preheader2303 ], [ %.20772.us, %.preheader2302.loopexit ], [ %.0752.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11.lcssa = phi <16 x float> [ %.0747.lcssa, %.preheader2303 ], [ %.20.us, %.preheader2302.loopexit ], [ %.0747.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.1743.lcssa = phi ptr [ %.0742.lcssa, %.preheader2303 ], [ %i.akt, %.preheader2302.loopexit ], [ %scevgep2565, %.preheader2298.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0741.lcssa, %.preheader2303 ], [ %i.akx, %.preheader2302.loopexit ], [ %i.aab, %.preheader2298.preheader ] ; 6 uses
  %i.aky = or disjoint i32 %.1.lcssa, 3           ; 2 uses
  %i.akz = icmp slt i32 %i.aky, %i.ae
  br i1 %i.akz, label %.preheader2297.lr.ph, label %.preheader2301

.preheader2297.lr.ph:                             ; preds = %.preheader2302
  %i.ala = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.alb = icmp sgt i32 %i.ala, 0
  %.neg2278 = add nuw nsw i32 %.08122526, 1
  %i.alc = load i32, ptr %15, align 4, !tbaa !9
  %i.ald = shl i32 %i.alc, 6
  %i.ale = sext i32 %i.ald to i64                 ; 2 uses
  br i1 %i.alb, label %.preheader2297.lr.ph.split.us, label %.preheader2297.preheader

.preheader2297.preheader:                         ; preds = %.preheader2297.lr.ph
  %i.alf = add i32 %.1.lcssa, 7
  %smax2575 = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.alf)
  %i.alg = add i32 %smax2575, -4
  %i.alh = sub i32 %i.alg, %.1.lcssa              ; 2 uses
  %i.ali = lshr i32 %i.alh, 1
  %i.alj = and i32 %i.ali, 2147483646
  %narrow2655 = add nuw i32 %i.alj, 2
  %i.alk = zext i32 %narrow2655 to i64
  %i.all = mul nsw i64 %i.alk, %i.ale
  %scevgep2576 = getelementptr i8, ptr %.1743.lcssa, i64 %i.all
  %i.alm = add i32 %.1.lcssa, 4
  %i.aln = and i32 %i.alh, -4
  %i.alo = add i32 %i.alm, %i.aln
  br label %.preheader2301

.preheader2297.lr.ph.split.us:                    ; preds = %.preheader2297.lr.ph
  %i.alp = load i32, ptr %8, align 4, !tbaa !9
  %i.alq = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2447.us = sub i32 %.neg2284, %i.alq
  %i.alr = zext i32 %.1.lcssa to i64
  %i.als = zext nneg i32 %i.aky to i64
  br label %.preheader2297.us

.preheader2297.us:                                ; preds = %._crit_edge.us2470, %.preheader2297.lr.ph.split.us
  %indvars.iv2588 = phi i64 [ %indvars.iv.next2589, %._crit_edge.us2470 ], [ %i.alr, %.preheader2297.lr.ph.split.us ] ; 5 uses
  %i.alt = phi i64 [ %i.art, %._crit_edge.us2470 ], [ %i.als, %.preheader2297.lr.ph.split.us ]
  %.27442453.us = phi ptr [ %i.ars, %._crit_edge.us2470 ], [ %.1743.lcssa, %.preheader2297.lr.ph.split.us ] ; 3 uses
  %.212452.us = phi <16 x float> [ %.29.us, %._crit_edge.us2470 ], [ %.11.lcssa, %.preheader2297.lr.ph.split.us ]
  %.217732451.us = phi <16 x float> [ %.29781.us, %._crit_edge.us2470 ], [ %.11763.lcssa, %.preheader2297.lr.ph.split.us ]
  %.218032450.us = phi <16 x float> [ %.29811.us, %._crit_edge.us2470 ], [ %.11793.lcssa, %.preheader2297.lr.ph.split.us ]
  %.162449.us = phi <16 x float> [ %.212220.us, %._crit_edge.us2470 ], [ %.9.lcssa, %.preheader2297.lr.ph.split.us ]
  %i.alu = or disjoint i64 %indvars.iv2588, 1
  %i.alv = or disjoint i64 %indvars.iv2588, 2
  %i.alw = lshr exact i64 %indvars.iv2588, 2
  br label %bb.m

bb.m:                                             ; preds = %.preheader2297.us, %.loopexit2290.us
  %.07362441.us = phi i32 [ 0, %.preheader2297.us ], [ %i.arr, %.loopexit2290.us ] ; 3 uses
  %.222440.us = phi <16 x float> [ %.212452.us, %.preheader2297.us ], [ %.29.us, %.loopexit2290.us ] ; 6 uses
  %.227742439.us = phi <16 x float> [ %.217732451.us, %.preheader2297.us ], [ %.29781.us, %.loopexit2290.us ] ; 6 uses
  %.228042438.us = phi <16 x float> [ %.218032450.us, %.preheader2297.us ], [ %.29811.us, %.loopexit2290.us ] ; 6 uses
  %.172437.us = phi <16 x float> [ %.162449.us, %.preheader2297.us ], [ %.212220.us, %.loopexit2290.us ] ; 6 uses
  %i.alx = mul nsw i32 %i.alp, %.07362441.us
  %.reass2448.us = add i32 %i.alx, %invariant.op2447.us ; 3 uses
  %i.aly = icmp slt i32 %.reass2448.us, 0
  br i1 %i.aly, label %.loopexit2290.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.alz = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.ama = srem i32 %.reass2448.us, %i.alz
  %i.amb = sdiv i32 %.reass2448.us, %i.alz        ; 2 uses
  %.not875.us = icmp eq i32 %i.ama, 0
  %.not876.us = icmp slt i32 %i.amb, %i.ag
  %or.cond2788 = select i1 %.not875.us, i1 %.not876.us, i1 false
  br i1 %or.cond2788, label %.preheader2289.us, label %.loopexit2290.us

.preheader2289.us:                                ; preds = %bb.n
  %i.amc = load i32, ptr %11, align 4, !tbaa !9   ; 4 uses
  %i.amd = icmp sgt i32 %i.amc, 0
  br i1 %i.amd, label %.lr.ph.us2461, label %.loopexit2290.us

.lr.ph.us2461:                                    ; preds = %.preheader2289.us
  %i.ame = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.amf = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us2462 = sub i32 %.neg2278, %i.amf ; 2 uses
  %i.amg = mul nuw nsw i32 %i.amc, %.07362441.us  ; 2 uses
  %i.amh = sext i32 %i.amb to i64                 ; 2 uses
  switch i32 %.fr, label %.loopexit2290.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us2415.us.preheader
  ]

.lr.ph.split.us2415.us.preheader:                 ; preds = %.lr.ph.us2461
  %wide.trip.count2580 = zext nneg i32 %i.amc to i64
  br label %.lr.ph.split.us2415.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us2461
  %wide.trip.count2585 = zext nneg i32 %i.amc to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us2415.us:                           ; preds = %.lr.ph.split.us2415.us.preheader, %bb.p
  %indvars.iv2577 = phi i64 [ 0, %.lr.ph.split.us2415.us.preheader ], [ %indvars.iv.next2578, %bb.p ] ; 3 uses
  %.232404.us2417.us = phi <16 x float> [ %.222440.us, %.lr.ph.split.us2415.us.preheader ], [ %.27.us2427.us, %bb.p ] ; 3 uses
  %.237752403.us2418.us = phi <16 x float> [ %.227742439.us, %.lr.ph.split.us2415.us.preheader ], [ %.27779.us2426.us, %bb.p ] ; 3 uses
  %.238052402.us2419.us = phi <16 x float> [ %.228042438.us, %.lr.ph.split.us2415.us.preheader ], [ %.27809.us2425.us, %bb.p ] ; 3 uses
  %.1822182401.us2420.us = phi <16 x float> [ %.172437.us, %.lr.ph.split.us2415.us.preheader ], [ %.202219.us2424.us, %bb.p ] ; 3 uses
  %i.ami = trunc i64 %indvars.iv2577 to i32
  %i.amj = mul i32 %i.ame, %i.ami
  %.reass.us2421.us = add i32 %i.amj, %invariant.op.us2462 ; 3 uses
  %i.amk = icmp slt i32 %.reass.us2421.us, 0
  br i1 %i.amk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us2415.us
  %i.aml = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.amm = srem i32 %.reass.us2421.us, %i.aml
  %i.amn = sdiv i32 %.reass.us2421.us, %i.aml     ; 2 uses
  %.not877.us2422.us = icmp eq i32 %i.amm, 0
  %.not878.us2423.us = icmp slt i32 %i.amn, %i.af
  %or.cond2789 = select i1 %.not877.us2422.us, i1 %.not878.us2423.us, i1 false
  br i1 %or.cond2789, label %.noexc941.us.us, label %bb.p

.noexc941.us.us:                                  ; preds = %bb.o
  %i.amo = trunc i64 %indvars.iv2577 to i32
  %i.amp = add i32 %i.amg, %i.amo
  %i.amq = shl nsw i32 %i.amp, 6
  %i.amr = zext nneg i32 %i.amq to i64
  %i.ams = getelementptr inbounds nuw [2 x i8], ptr %.27442453.us, i64 %i.amr ; 4 uses
  %i.amt = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !327
  %i.amu = load ptr, ptr %3, align 8, !tbaa !19, !noalias !327 ; 4 uses
  %i.amv = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !327 ; 4 uses
  %i.amw = mul i64 %i.amv, %indvars.iv2588
  %i.amx = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !327 ; 5 uses
  %i.amy = mul i64 %i.amw, %i.amx
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.amy
  %i.ana = sext i32 %i.amt to i64
  %i.anb = mul nsw i64 %i.ana, %i.amh
  %i.anc = mul i64 %i.anb, %i.amx                 ; 4 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.amz, i64 %i.anc
  %i.ane = sext i32 %i.amn to i64                 ; 4 uses
  %i.anf = getelementptr inbounds [2 x i8], ptr %i.and, i64 %i.ane
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !28
  %i.anh = zext i16 %i.ang to i32
  %i.ani = shl nuw i32 %i.anh, 16
  %i.anj = insertelement <16 x i32> poison, i32 %i.ani, i64 0
  %i.ank = bitcast <16 x i32> %i.anj to <16 x float>
  %i.anl = shufflevector <16 x float> %i.ank, <16 x float> poison, <16 x i32> zeroinitializer
  %i.anm = mul i64 %i.amv, %i.alu
  %i.ann = mul i64 %i.anm, %i.amx
  %i.ano = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anc
  %i.anq = getelementptr inbounds [2 x i8], ptr %i.anp, i64 %i.ane
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !28
  %i.ans = zext i16 %i.anr to i32
  %i.ant = shl nuw i32 %i.ans, 16
  %i.anu = insertelement <16 x i32> poison, i32 %i.ant, i64 0
  %i.anv = bitcast <16 x i32> %i.anu to <16 x float>
  %i.anw = shufflevector <16 x float> %i.anv, <16 x float> poison, <16 x i32> zeroinitializer
  %i.anx = mul i64 %i.amv, %i.alv
  %i.any = mul i64 %i.anx, %i.amx
  %i.anz = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 %i.anc
  %i.aob = getelementptr inbounds [2 x i8], ptr %i.aoa, i64 %i.ane
  %i.aoc = load i16, ptr %i.aob, align 2, !tbaa !28
  %i.aod = zext i16 %i.aoc to i32
  %i.aoe = shl nuw i32 %i.aod, 16
  %i.aof = insertelement <16 x i32> poison, i32 %i.aoe, i64 0
  %i.aog = bitcast <16 x i32> %i.aof to <16 x float>
  %i.aoh = shufflevector <16 x float> %i.aog, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aoi = mul i64 %i.amv, %i.alt
  %i.aoj = mul i64 %i.aoi, %i.amx
  %i.aok = getelementptr inbounds nuw i8, ptr %i.amu, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 %i.anc
  %i.aom = getelementptr inbounds [2 x i8], ptr %i.aol, i64 %i.ane
  %i.aon = load i16, ptr %i.aom, align 2, !tbaa !28
  %i.aoo = zext i16 %i.aon to i32
  %i.aop = shl nuw i32 %i.aoo, 16
  %i.aoq = insertelement <16 x i32> poison, i32 %i.aop, i64 0
  %i.aor = bitcast <16 x i32> %i.aoq to <16 x float>
  %i.aos = shufflevector <16 x float> %i.aor, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aot = load <16 x bfloat>, ptr %i.ams, align 32, !tbaa !26
  %i.aou = fpext fast <16 x bfloat> %i.aot to <16 x float>
  %i.aov = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.anl, <16 x float> nofpclass(nan inf) %i.aou, <16 x float> nofpclass(nan inf) %.1822182401.us2420.us)
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ams, i64 32
  %i.aox = load <16 x bfloat>, ptr %i.aow, align 32, !tbaa !26
  %i.aoy = fpext fast <16 x bfloat> %i.aox to <16 x float>
  %i.aoz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.anw, <16 x float> nofpclass(nan inf) %i.aoy, <16 x float> nofpclass(nan inf) %.238052402.us2419.us)
  %i.apa = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  %i.apb = load <16 x bfloat>, ptr %i.apa, align 32, !tbaa !26
  %i.apc = fpext fast <16 x bfloat> %i.apb to <16 x float>
  %i.apd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aoh, <16 x float> nofpclass(nan inf) %i.apc, <16 x float> nofpclass(nan inf) %.237752403.us2418.us)
  %i.ape = getelementptr inbounds nuw i8, ptr %i.ams, i64 96
  %i.apf = load <16 x bfloat>, ptr %i.ape, align 32, !tbaa !26
  %i.apg = fpext fast <16 x bfloat> %i.apf to <16 x float>
  %i.aph = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aos, <16 x float> nofpclass(nan inf) %i.apg, <16 x float> nofpclass(nan inf) %.232404.us2417.us)
  br label %bb.p

bb.p:                                             ; preds = %.noexc941.us.us, %bb.o, %.lr.ph.split.us2415.us
  %.202219.us2424.us = phi nsz <16 x float> [ %.1822182401.us2420.us, %.lr.ph.split.us2415.us ], [ %i.aov, %.noexc941.us.us ], [ %.1822182401.us2420.us, %bb.o ] ; 2 uses
  %.27809.us2425.us = phi nsz <16 x float> [ %.238052402.us2419.us, %.lr.ph.split.us2415.us ], [ %i.aoz, %.noexc941.us.us ], [ %.238052402.us2419.us, %bb.o ] ; 2 uses
  %.27779.us2426.us = phi nsz <16 x float> [ %.237752403.us2418.us, %.lr.ph.split.us2415.us ], [ %i.apd, %.noexc941.us.us ], [ %.237752403.us2418.us, %bb.o ] ; 2 uses
  %.27.us2427.us = phi nsz <16 x float> [ %.232404.us2417.us, %.lr.ph.split.us2415.us ], [ %i.aph, %.noexc941.us.us ], [ %.232404.us2417.us, %bb.o ] ; 2 uses
  %indvars.iv.next2578 = add nuw nsw i64 %indvars.iv2577, 1 ; 2 uses
  %exitcond2581.not = icmp eq i64 %indvars.iv.next2578, %wide.trip.count2580
  br i1 %exitcond2581.not, label %.loopexit2290.us, label %.lr.ph.split.us2415.us, !llvm.loop !300

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv2582 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next2583, %bb.r ] ; 3 uses
  %.232404.us.us = phi <16 x float> [ %.222440.us, %.lr.ph.split.us.us.preheader ], [ %.27.us.us, %bb.r ] ; 3 uses
  %.237752403.us.us = phi <16 x float> [ %.227742439.us, %.lr.ph.split.us.us.preheader ], [ %.27779.us.us, %bb.r ] ; 3 uses
  %.238052402.us.us = phi <16 x float> [ %.228042438.us, %.lr.ph.split.us.us.preheader ], [ %.27809.us.us, %bb.r ] ; 3 uses
  %.1822182401.us.us = phi <16 x float> [ %.172437.us, %.lr.ph.split.us.us.preheader ], [ %.202219.us.us, %bb.r ] ; 3 uses
  %i.api = trunc i64 %indvars.iv2582 to i32
  %i.apj = mul i32 %i.ame, %i.api
  %.reass.us2410.us = add i32 %i.apj, %invariant.op.us2462 ; 3 uses
  %i.apk = icmp slt i32 %.reass.us2410.us, 0
  br i1 %i.apk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.us
  %i.apl = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.apm = srem i32 %.reass.us2410.us, %i.apl
  %i.apn = sdiv i32 %.reass.us2410.us, %i.apl     ; 2 uses
  %.not877.us.us = icmp eq i32 %i.apm, 0
  %.not878.us.us = icmp slt i32 %i.apn, %i.af
  %or.cond2790 = select i1 %.not877.us.us, i1 %.not878.us.us, i1 false
  br i1 %or.cond2790, label %.noexc943.us.us, label %bb.r

.noexc943.us.us:                                  ; preds = %bb.q
  %i.apo = trunc i64 %indvars.iv2582 to i32
  %i.app = add i32 %i.amg, %i.apo
  %i.apq = shl nsw i32 %i.app, 6
  %i.apr = zext nneg i32 %i.apq to i64
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %.27442453.us, i64 %i.apr ; 4 uses
  %i.apt = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !328
  %i.apu = load ptr, ptr %3, align 8, !tbaa !19, !noalias !328
  %i.apv = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !328
  %i.apw = mul i64 %i.apv, %i.alw
  %i.apx = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !328 ; 2 uses
  %i.apy = mul i64 %i.apw, %i.apx
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apu, i64 %i.apy
  %i.aqa = sext i32 %i.apt to i64
  %i.aqb = mul nsw i64 %i.aqa, %i.amh
  %i.aqc = mul i64 %i.aqb, %i.apx
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apz, i64 %i.aqc
  %i.aqe = shl nsw i32 %i.apn, 2
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [2 x i8], ptr %i.aqd, i64 %i.aqf ; 3 uses
  %i.aqh = load i16, ptr %i.aqg, align 2, !tbaa !28
  %i.aqi = zext i16 %i.aqh to i32
  %i.aqj = shl nuw i32 %i.aqi, 16
  %i.aqk = insertelement <16 x i32> poison, i32 %i.aqj, i64 0
  %i.aql = bitcast <16 x i32> %i.aqk to <16 x float>
  %i.aqm = shufflevector <16 x float> %i.aql, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqg, i64 2
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !28
  %i.aqp = zext i16 %i.aqo to i32
  %i.aqq = shl nuw i32 %i.aqp, 16
  %i.aqr = insertelement <16 x i32> poison, i32 %i.aqq, i64 0
  %i.aqs = bitcast <16 x i32> %i.aqr to <16 x float>
  %i.aqt = shufflevector <16 x float> %i.aqs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  %i.aqv = load <2 x i16>, ptr %i.aqu, align 2, !tbaa !28
  %i.aqw = zext <2 x i16> %i.aqv to <2 x i32>
  %i.aqx = shl nuw <2 x i32> %i.aqw, splat (i32 16) ; 2 uses
  %i.aqy = bitcast <2 x i32> %i.aqx to <2 x float>
  %i.aqz = shufflevector <2 x float> %i.aqy, <2 x float> poison, <16 x i32> zeroinitializer
  %i.ara = bitcast <2 x i32> %i.aqx to <2 x float>
  %i.arb = shufflevector <2 x float> %i.ara, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.arc = load <16 x bfloat>, ptr %i.aps, align 32, !tbaa !26
  %i.ard = fpext fast <16 x bfloat> %i.arc to <16 x float>
  %i.are = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqm, <16 x float> nofpclass(nan inf) %i.ard, <16 x float> nofpclass(nan inf) %.1822182401.us.us)
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aps, i64 32
  %i.arg = load <16 x bfloat>, ptr %i.arf, align 32, !tbaa !26
  %i.arh = fpext fast <16 x bfloat> %i.arg to <16 x float>
  %i.ari = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqt, <16 x float> nofpclass(nan inf) %i.arh, <16 x float> nofpclass(nan inf) %.238052402.us.us)
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aps, i64 64
  %i.ark = load <16 x bfloat>, ptr %i.arj, align 32, !tbaa !26
  %i.arl = fpext fast <16 x bfloat> %i.ark to <16 x float>
  %i.arm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqz, <16 x float> nofpclass(nan inf) %i.arl, <16 x float> nofpclass(nan inf) %.237752403.us.us)
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aps, i64 96
  %i.aro = load <16 x bfloat>, ptr %i.arn, align 32, !tbaa !26
  %i.arp = fpext fast <16 x bfloat> %i.aro to <16 x float>
  %i.arq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arb, <16 x float> nofpclass(nan inf) %i.arp, <16 x float> nofpclass(nan inf) %.232404.us.us)
  br label %bb.r

bb.r:                                             ; preds = %.noexc943.us.us, %bb.q, %.lr.ph.split.us.us
  %.202219.us.us = phi nsz <16 x float> [ %.1822182401.us.us, %.lr.ph.split.us.us ], [ %i.are, %.noexc943.us.us ], [ %.1822182401.us.us, %bb.q ] ; 2 uses
  %.27809.us.us = phi nsz <16 x float> [ %.238052402.us.us, %.lr.ph.split.us.us ], [ %i.ari, %.noexc943.us.us ], [ %.238052402.us.us, %bb.q ] ; 2 uses
  %.27779.us.us = phi nsz <16 x float> [ %.237752403.us.us, %.lr.ph.split.us.us ], [ %i.arm, %.noexc943.us.us ], [ %.237752403.us.us, %bb.q ] ; 2 uses
  %.27.us.us = phi nsz <16 x float> [ %.232404.us.us, %.lr.ph.split.us.us ], [ %i.arq, %.noexc943.us.us ], [ %.232404.us.us, %bb.q ] ; 2 uses
  %indvars.iv.next2583 = add nuw nsw i64 %indvars.iv2582, 1 ; 2 uses
  %exitcond2586.not = icmp eq i64 %indvars.iv.next2583, %wide.trip.count2585
  br i1 %exitcond2586.not, label %.loopexit2290.us, label %.lr.ph.split.us.us, !llvm.loop !300

.loopexit2290.us:                                 ; preds = %bb.p, %bb.r, %.lr.ph.us2461, %.preheader2289.us, %bb.n, %bb.m
  %.212220.us = phi nsz <16 x float> [ %.172437.us, %bb.m ], [ %.172437.us, %bb.n ], [ %.202219.us.us, %bb.r ], [ %.172437.us, %.preheader2289.us ], [ %.172437.us, %.lr.ph.us2461 ], [ %.202219.us2424.us, %bb.p ] ; 3 uses
  %.29811.us = phi nsz <16 x float> [ %.228042438.us, %bb.m ], [ %.228042438.us, %bb.n ], [ %.27809.us.us, %bb.r ], [ %.228042438.us, %.preheader2289.us ], [ %.228042438.us, %.lr.ph.us2461 ], [ %.27809.us2425.us, %bb.p ] ; 3 uses
  %.29781.us = phi nsz <16 x float> [ %.227742439.us, %bb.m ], [ %.227742439.us, %bb.n ], [ %.27779.us.us, %bb.r ], [ %.227742439.us, %.preheader2289.us ], [ %.227742439.us, %.lr.ph.us2461 ], [ %.27779.us2426.us, %bb.p ] ; 3 uses
  %.29.us = phi nsz <16 x float> [ %.222440.us, %bb.m ], [ %.222440.us, %bb.n ], [ %.27.us.us, %bb.r ], [ %.222440.us, %.preheader2289.us ], [ %.222440.us, %.lr.ph.us2461 ], [ %.27.us2427.us, %bb.p ] ; 3 uses
  %i.arr = add nuw nsw i32 %.07362441.us, 1       ; 2 uses
  %exitcond2587.not = icmp eq i32 %i.arr, %i.ala
  br i1 %exitcond2587.not, label %._crit_edge.us2470, label %bb.m, !llvm.loop !303

._crit_edge.us2470:                               ; preds = %.loopexit2290.us
  %i.ars = getelementptr inbounds [2 x i8], ptr %.27442453.us, i64 %i.ale ; 2 uses
  %indvars.iv.next2589 = add nuw nsw i64 %indvars.iv2588, 4 ; 3 uses
  %i.art = or disjoint i64 %indvars.iv.next2589, 3 ; 2 uses
  %i.aru = trunc nuw i64 %i.art to i32
  %i.arv = icmp sgt i32 %i.ae, %i.aru
  br i1 %i.arv, label %.preheader2297.us, label %.preheader2301.loopexit, !llvm.loop !304

.preheader2301.loopexit:                          ; preds = %._crit_edge.us2470
  %i.arw = trunc nuw i64 %indvars.iv.next2589 to i32
  br label %.preheader2301

.preheader2301:                                   ; preds = %.preheader2297.preheader, %.preheader2301.loopexit, %.preheader2302
  %.16.lcssa = phi <16 x float> [ %.9.lcssa, %.preheader2302 ], [ %.212220.us, %.preheader2301.loopexit ], [ %.9.lcssa, %.preheader2297.preheader ] ; 3 uses
  %.21803.lcssa = phi <16 x float> [ %.11793.lcssa, %.preheader2302 ], [ %.29811.us, %.preheader2301.loopexit ], [ %.11793.lcssa, %.preheader2297.preheader ] ; 3 uses
  %.21773.lcssa = phi <16 x float> [ %.11763.lcssa, %.preheader2302 ], [ %.29781.us, %.preheader2301.loopexit ], [ %.11763.lcssa, %.preheader2297.preheader ]
  %.21.lcssa = phi <16 x float> [ %.11.lcssa, %.preheader2302 ], [ %.29.us, %.preheader2301.loopexit ], [ %.11.lcssa, %.preheader2297.preheader ]
  %.2744.lcssa = phi ptr [ %.1743.lcssa, %.preheader2302 ], [ %i.ars, %.preheader2301.loopexit ], [ %scevgep2576, %.preheader2297.preheader ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader2302 ], [ %i.arw, %.preheader2301.loopexit ], [ %i.alo, %.preheader2297.preheader ] ; 6 uses
  %i.arx = or disjoint i32 %.2.lcssa, 1           ; 2 uses
  %i.ary = icmp slt i32 %i.arx, %i.ae
  br i1 %i.ary, label %.preheader2296.lr.ph, label %.preheader2300

.preheader2296.lr.ph:                             ; preds = %.preheader2301
  %i.arz = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.asa = icmp sgt i32 %i.arz, 0
  %.neg2274 = add nuw nsw i32 %.08122526, 1
  %i.asb = load i32, ptr %15, align 4, !tbaa !9
  %i.asc = shl i32 %i.asb, 5
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  br i1 %i.asa, label %.preheader2296.lr.ph.split.us, label %.preheader2296.preheader

.preheader2296.preheader:                         ; preds = %.preheader2296.lr.ph
  %i.ase = add i32 %.2.lcssa, 3
  %smax2591 = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ase)
  %i.asf = add i32 %smax2591, -2
  %i.asg = sub i32 %i.asf, %.2.lcssa              ; 2 uses
  %i.ash = and i32 %i.asg, -2
  %i.asi = zext i32 %i.ash to i64
  %i.asj = add nuw nsw i64 %i.asi, 2
  %i.ask = mul nsw i64 %i.asj, %i.asd
  %scevgep2592 = getelementptr i8, ptr %.2744.lcssa, i64 %i.ask
  %i.asl = add i32 %.2.lcssa, 2
  %i.asm = and i32 %i.asg, -2
  %i.asn = add i32 %i.asl, %i.asm
  br label %.preheader2300

.preheader2296.lr.ph.split.us:                    ; preds = %.preheader2296.lr.ph
  %i.aso = load i32, ptr %8, align 4, !tbaa !9
  %i.asp = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2488.us = sub i32 %.neg2284, %i.asp
  %i.asq = zext i32 %.2.lcssa to i64
  %i.asr = zext nneg i32 %i.arx to i64
  br label %.preheader2296.us

.preheader2296.us:                                ; preds = %._crit_edge.us2501, %.preheader2296.lr.ph.split.us
  %indvars.iv2599 = phi i64 [ %indvars.iv.next2600, %._crit_edge.us2501 ], [ %i.asq, %.preheader2296.lr.ph.split.us ] ; 2 uses
  %i.ass = phi i64 [ %i.avc, %._crit_edge.us2501 ], [ %i.asr, %.preheader2296.lr.ph.split.us ]
  %.37452492.us = phi ptr [ %i.avb, %._crit_edge.us2501 ], [ %.2744.lcssa, %.preheader2296.lr.ph.split.us ] ; 2 uses
  %.302491.us = phi <16 x float> [ %.36.us, %._crit_edge.us2501 ], [ %.21803.lcssa, %.preheader2296.lr.ph.split.us ]
  %.2222212490.us = phi <16 x float> [ %.26.us, %._crit_edge.us2501 ], [ %.16.lcssa, %.preheader2296.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader2296.us, %.loopexit2288.us
  %.07342484.us = phi i32 [ 0, %.preheader2296.us ], [ %i.auw, %.loopexit2288.us ] ; 3 uses
  %.312483.us = phi <16 x float> [ %.302491.us, %.preheader2296.us ], [ %.36.us, %.loopexit2288.us ] ; 4 uses
  %.2322222482.us = phi <16 x float> [ %.2222212490.us, %.preheader2296.us ], [ %.26.us, %.loopexit2288.us ] ; 4 uses
  %i.ast = mul nsw i32 %i.aso, %.07342484.us
  %.reass2489.us = add i32 %i.ast, %invariant.op2488.us ; 3 uses
  %i.asu = icmp slt i32 %.reass2489.us, 0
  br i1 %i.asu, label %.loopexit2288.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.asv = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.asw = srem i32 %.reass2489.us, %i.asv
  %i.asx = sdiv i32 %.reass2489.us, %i.asv        ; 2 uses
  %.not871.us = icmp eq i32 %i.asw, 0
  %.not872.us = icmp slt i32 %i.asx, %i.ag
  %or.cond2791 = select i1 %.not871.us, i1 %.not872.us, i1 false
  br i1 %or.cond2791, label %.preheader2287.us, label %.loopexit2288.us

.preheader2287.us:                                ; preds = %bb.t
  %i.asy = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.asz = icmp sgt i32 %i.asy, 0
  br i1 %i.asz, label %.lr.ph.us2499, label %.loopexit2288.us

bb.u:                                             ; preds = %.lr.ph.us2499, %bb.w
  %indvars.iv2593 = phi i64 [ 0, %.lr.ph.us2499 ], [ %indvars.iv.next2594, %bb.w ] ; 3 uses
  %.322478.us = phi <16 x float> [ %.312483.us, %.lr.ph.us2499 ], [ %.34.us, %bb.w ] ; 3 uses
  %.2422232477.us = phi <16 x float> [ %.2322222482.us, %.lr.ph.us2499 ], [ %.25.us, %bb.w ] ; 3 uses
  %i.ata = trunc i64 %indvars.iv2593 to i32
  %i.atb = mul i32 %i.aux, %i.ata
  %.reass.us2498 = add i32 %i.atb, %invariant.op.us2500 ; 3 uses
  %i.atc = icmp slt i32 %.reass.us2498, 0
  br i1 %i.atc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.atd = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.ate = srem i32 %.reass.us2498, %i.atd
  %i.atf = sdiv i32 %.reass.us2498, %i.atd        ; 2 uses
  %.not873.us = icmp eq i32 %i.ate, 0
  %.not874.us = icmp slt i32 %i.atf, %i.af
  %or.cond2792 = select i1 %.not873.us, i1 %.not874.us, i1 false
  br i1 %or.cond2792, label %.noexc933.us, label %bb.w

.noexc933.us:                                     ; preds = %bb.v
  %i.atg = trunc i64 %indvars.iv2593 to i32
  %i.ath = add i32 %i.auz, %i.atg
  %i.ati = shl nsw i32 %i.ath, 5
  %i.atj = zext nneg i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [2 x i8], ptr %.37452492.us, i64 %i.atj ; 2 uses
  %i.atl = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !329
  %i.atm = load ptr, ptr %3, align 8, !tbaa !19, !noalias !329 ; 2 uses
  %i.atn = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !329 ; 2 uses
  %i.ato = mul i64 %i.atn, %indvars.iv2599
  %i.atp = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !329 ; 3 uses
  %i.atq = mul i64 %i.ato, %i.atp
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atm, i64 %i.atq
  %i.ats = sext i32 %i.atl to i64
  %i.att = mul nsw i64 %i.ats, %i.ava
  %i.atu = mul i64 %i.att, %i.atp                 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.atu
  %i.atw = mul i64 %i.atn, %i.ass
  %i.atx = mul i64 %i.atw, %i.atp
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atm, i64 %i.atx
  %i.atz = sext i32 %i.atf to i64                 ; 2 uses
  %i.aua = getelementptr inbounds [2 x i8], ptr %i.atv, i64 %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.atu
  %i.auc = getelementptr inbounds [2 x i8], ptr %i.aub, i64 %i.atz
  %i.aud = load i16, ptr %i.aua, align 2, !tbaa !28
  %i.aue = zext i16 %i.aud to i32
  %i.auf = shl nuw i32 %i.aue, 16
  %i.aug = insertelement <16 x i32> poison, i32 %i.auf, i64 0
  %i.auh = bitcast <16 x i32> %i.aug to <16 x float>
  %i.aui = shufflevector <16 x float> %i.auh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.auj = load i16, ptr %i.auc, align 2, !tbaa !28
  %i.auk = zext i16 %i.auj to i32
  %i.aul = shl nuw i32 %i.auk, 16
  %i.aum = insertelement <16 x i32> poison, i32 %i.aul, i64 0
  %i.aun = bitcast <16 x i32> %i.aum to <16 x float>
  %i.auo = shufflevector <16 x float> %i.aun, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aup = load <16 x bfloat>, ptr %i.atk, align 32, !tbaa !26
  %i.auq = fpext fast <16 x bfloat> %i.aup to <16 x float>
  %i.aur = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aui, <16 x float> nofpclass(nan inf) %i.auq, <16 x float> nofpclass(nan inf) %.2422232477.us)
  %i.aus = getelementptr inbounds nuw i8, ptr %i.atk, i64 32
  %i.aut = load <16 x bfloat>, ptr %i.aus, align 32, !tbaa !26
  %i.auu = fpext fast <16 x bfloat> %i.aut to <16 x float>
  %i.auv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.auo, <16 x float> nofpclass(nan inf) %i.auu, <16 x float> nofpclass(nan inf) %.322478.us)
  br label %bb.w

bb.w:                                             ; preds = %.noexc933.us, %bb.v, %bb.u
  %.25.us = phi nsz <16 x float> [ %.2422232477.us, %bb.u ], [ %i.aur, %.noexc933.us ], [ %.2422232477.us, %bb.v ] ; 2 uses
  %.34.us = phi nsz <16 x float> [ %.322478.us, %bb.u ], [ %i.auv, %.noexc933.us ], [ %.322478.us, %bb.v ] ; 2 uses
  %indvars.iv.next2594 = add nuw nsw i64 %indvars.iv2593, 1 ; 2 uses
  %exitcond2597.not = icmp eq i64 %indvars.iv.next2594, %wide.trip.count2596
  br i1 %exitcond2597.not, label %.loopexit2288.us, label %bb.u, !llvm.loop !307

.loopexit2288.us:                                 ; preds = %bb.w, %.preheader2287.us, %bb.t, %bb.s
  %.26.us = phi nsz <16 x float> [ %.2322222482.us, %bb.s ], [ %.2322222482.us, %bb.t ], [ %.2322222482.us, %.preheader2287.us ], [ %.25.us, %bb.w ] ; 3 uses
  %.36.us = phi nsz <16 x float> [ %.312483.us, %bb.s ], [ %.312483.us, %bb.t ], [ %.312483.us, %.preheader2287.us ], [ %.34.us, %bb.w ] ; 3 uses
  %i.auw = add nuw nsw i32 %.07342484.us, 1       ; 2 uses
  %exitcond2598.not = icmp eq i32 %i.auw, %i.arz
  br i1 %exitcond2598.not, label %._crit_edge.us2501, label %bb.s, !llvm.loop !308

.lr.ph.us2499:                                    ; preds = %.preheader2287.us
  %i.aux = load i32, ptr %12, align 4, !tbaa !9
  %i.auy = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us2500 = sub i32 %.neg2274, %i.auy
  %i.auz = mul nuw nsw i32 %i.asy, %.07342484.us
  %i.ava = sext i32 %i.asx to i64
  %wide.trip.count2596 = zext nneg i32 %i.asy to i64
  br label %bb.u

._crit_edge.us2501:                               ; preds = %.loopexit2288.us
  %i.avb = getelementptr inbounds [2 x i8], ptr %.37452492.us, i64 %i.asd ; 2 uses
  %indvars.iv.next2600 = add nuw nsw i64 %indvars.iv2599, 2 ; 3 uses
  %i.avc = or disjoint i64 %indvars.iv.next2600, 1 ; 2 uses
  %i.avd = trunc nuw i64 %i.avc to i32
  %i.ave = icmp sgt i32 %i.ae, %i.avd
  br i1 %i.ave, label %.preheader2296.us, label %.preheader2300.loopexit, !llvm.loop !309

.preheader2300.loopexit:                          ; preds = %._crit_edge.us2501
  %i.avf = trunc nuw i64 %indvars.iv.next2600 to i32
  br label %.preheader2300

.preheader2300:                                   ; preds = %.preheader2296.preheader, %.preheader2300.loopexit, %.preheader2301
  %.222221.lcssa = phi <16 x float> [ %.16.lcssa, %.preheader2301 ], [ %.26.us, %.preheader2300.loopexit ], [ %.16.lcssa, %.preheader2296.preheader ] ; 3 uses
  %.30.lcssa = phi <16 x float> [ %.21803.lcssa, %.preheader2301 ], [ %.36.us, %.preheader2300.loopexit ], [ %.21803.lcssa, %.preheader2296.preheader ]
  %.3745.lcssa = phi ptr [ %.2744.lcssa, %.preheader2301 ], [ %i.avb, %.preheader2300.loopexit ], [ %scevgep2592, %.preheader2296.preheader ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader2301 ], [ %i.avf, %.preheader2300.loopexit ], [ %i.asn, %.preheader2296.preheader ] ; 2 uses
  %i.avg = icmp slt i32 %.3.lcssa, %i.ae
  br i1 %i.avg, label %.preheader2295.lr.ph, label %._crit_edge2518

.preheader2295.lr.ph:                             ; preds = %.preheader2300
  %i.avh = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.avi = icmp sgt i32 %i.avh, 0
  %.neg2270 = add nuw nsw i32 %.08122526, 1
  %i.avj = load i32, ptr %15, align 4, !tbaa !9
  %i.avk = shl nsw i32 %i.avj, 4
  %i.avl = sext i32 %i.avk to i64
  br i1 %i.avi, label %.preheader2295.lr.ph.split.us, label %._crit_edge2518

.preheader2295.lr.ph.split.us:                    ; preds = %.preheader2295.lr.ph
  %i.avm = load i32, ptr %8, align 4, !tbaa !9
  %i.avn = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2513.us = sub i32 %.neg2284, %i.avn
  %i.avo = zext i32 %.3.lcssa to i64
  br label %.preheader2295.us

.preheader2295.us:                                ; preds = %._crit_edge.us2523, %.preheader2295.lr.ph.split.us
  %indvars.iv2608 = phi i64 [ %indvars.iv.next2609, %._crit_edge.us2523 ], [ %i.avo, %.preheader2295.lr.ph.split.us ] ; 2 uses
  %.47462516.us = phi ptr [ %i.axi, %._crit_edge.us2523 ], [ %.3745.lcssa, %.preheader2295.lr.ph.split.us ] ; 2 uses
  %.2722242515.us = phi <16 x float> [ %.312227.us, %._crit_edge.us2523 ], [ %.222221.lcssa, %.preheader2295.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader2295.us, %.loopexit.us
  %.07322510.us = phi i32 [ 0, %.preheader2295.us ], [ %i.axd, %.loopexit.us ] ; 3 uses
  %.282509.us = phi <16 x float> [ %.2722242515.us, %.preheader2295.us ], [ %.312227.us, %.loopexit.us ] ; 4 uses
  %i.avp = mul nsw i32 %i.avm, %.07322510.us
  %.reass2514.us = add i32 %i.avp, %invariant.op2513.us ; 3 uses
  %i.avq = icmp slt i32 %.reass2514.us, 0
  br i1 %i.avq, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.avr = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.avs = srem i32 %.reass2514.us, %i.avr
  %i.avt = sdiv i32 %.reass2514.us, %i.avr        ; 2 uses
  %.not867.us = icmp eq i32 %i.avs, 0
  %.not868.us = icmp slt i32 %i.avt, %i.ag
  %or.cond2793 = select i1 %.not867.us, i1 %.not868.us, i1 false
  br i1 %or.cond2793, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.avu = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.avv = icmp sgt i32 %i.avu, 0
  br i1 %i.avv, label %.lr.ph.us2521, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us2521, %bb.ab
  %indvars.iv2602 = phi i64 [ 0, %.lr.ph.us2521 ], [ %indvars.iv.next2603, %bb.ab ] ; 3 uses
  %.2922252506.us = phi <16 x float> [ %.282509.us, %.lr.ph.us2521 ], [ %.302226.us, %bb.ab ] ; 3 uses
  %i.avw = trunc i64 %indvars.iv2602 to i32
  %i.avx = mul i32 %i.axe, %i.avw
  %.reass.us2520 = add i32 %i.avx, %invariant.op.us2522 ; 3 uses
  %i.avy = icmp slt i32 %.reass.us2520, 0
  br i1 %i.avy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.avz = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.awa = srem i32 %.reass.us2520, %i.avz
  %i.awb = sdiv i32 %.reass.us2520, %i.avz        ; 2 uses
  %.not869.us = icmp eq i32 %i.awa, 0
  %.not870.us = icmp slt i32 %i.awb, %i.af
  %or.cond2794 = select i1 %.not869.us, i1 %.not870.us, i1 false
  br i1 %or.cond2794, label %.noexc930.us, label %bb.ab

.noexc930.us:                                     ; preds = %bb.aa
  %i.awc = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !330
  %i.awd = load ptr, ptr %3, align 8, !tbaa !19, !noalias !330
  %i.awe = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !330
  %i.awf = mul i64 %i.awe, %indvars.iv2608
  %i.awg = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.awh = mul i64 %i.awf, %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awd, i64 %i.awh
  %i.awj = sext i32 %i.awc to i64
  %i.awk = trunc i64 %indvars.iv2602 to i32
  %i.awl = add i32 %i.axg, %i.awk
  %i.awm = shl nsw i32 %i.awl, 4
  %i.awn = zext nneg i32 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %.47462516.us, i64 %i.awn
  %i.awp = mul nsw i64 %i.awj, %i.axh
  %i.awq = mul i64 %i.awp, %i.awg
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awi, i64 %i.awq
  %i.aws = sext i32 %i.awb to i64
  %i.awt = getelementptr inbounds [2 x i8], ptr %i.awr, i64 %i.aws
  %i.awu = load i16, ptr %i.awt, align 2, !tbaa !28
  %i.awv = zext i16 %i.awu to i32
  %i.aww = shl nuw i32 %i.awv, 16
  %i.awx = insertelement <16 x i32> poison, i32 %i.aww, i64 0
  %i.awy = bitcast <16 x i32> %i.awx to <16 x float>
  %i.awz = shufflevector <16 x float> %i.awy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.axa = load <16 x bfloat>, ptr %i.awo, align 32, !tbaa !26
  %i.axb = fpext fast <16 x bfloat> %i.axa to <16 x float>
  %i.axc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.awz, <16 x float> nofpclass(nan inf) %i.axb, <16 x float> nofpclass(nan inf) %.2922252506.us)
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc930.us, %bb.aa, %bb.z
  %.302226.us = phi nsz <16 x float> [ %.2922252506.us, %bb.z ], [ %i.axc, %.noexc930.us ], [ %.2922252506.us, %bb.aa ] ; 2 uses
  %indvars.iv.next2603 = add nuw nsw i64 %indvars.iv2602, 1 ; 2 uses
  %exitcond2606.not = icmp eq i64 %indvars.iv.next2603, %wide.trip.count2605
  br i1 %exitcond2606.not, label %.loopexit.us, label %bb.z, !llvm.loop !312

.loopexit.us:                                     ; preds = %bb.ab, %.preheader.us, %bb.y, %bb.x
  %.312227.us = phi nsz <16 x float> [ %.282509.us, %bb.x ], [ %.282509.us, %bb.y ], [ %.282509.us, %.preheader.us ], [ %.302226.us, %bb.ab ] ; 3 uses
  %i.axd = add nuw nsw i32 %.07322510.us, 1       ; 2 uses
  %exitcond2607.not = icmp eq i32 %i.axd, %i.avh
  br i1 %exitcond2607.not, label %._crit_edge.us2523, label %bb.x, !llvm.loop !313

.lr.ph.us2521:                                    ; preds = %.preheader.us
  %i.axe = load i32, ptr %12, align 4, !tbaa !9
  %i.axf = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us2522 = sub i32 %.neg2270, %i.axf
  %i.axg = mul nuw nsw i32 %i.avu, %.07322510.us
  %i.axh = sext i32 %i.avt to i64
  %wide.trip.count2605 = zext nneg i32 %i.avu to i64
  br label %bb.z

._crit_edge.us2523:                               ; preds = %.loopexit.us
  %i.axi = getelementptr inbounds [2 x i8], ptr %.47462516.us, i64 %i.avl
  %indvars.iv.next2609 = add nuw nsw i64 %indvars.iv2608, 1 ; 2 uses
  %i.axj = trunc nuw i64 %indvars.iv.next2609 to i32
  %i.axk = icmp sgt i32 %i.ae, %i.axj
  br i1 %i.axk, label %.preheader2295.us, label %._crit_edge2518, !llvm.loop !314

._crit_edge2518:                                  ; preds = %._crit_edge.us2523, %.preheader2295.lr.ph, %.preheader2300
  %.272224.lcssa = phi <16 x float> [ %.222221.lcssa, %.preheader2300 ], [ %.222221.lcssa, %.preheader2295.lr.ph ], [ %.312227.us, %._crit_edge.us2523 ]
  %i.axl = fadd fast <16 x float> %.21.lcssa, %.21773.lcssa
  %i.axm = fadd fast <16 x float> %i.axl, %.30.lcssa
  %i.axn = fadd fast <16 x float> %i.axm, %.272224.lcssa ; 10 uses
  %i.axo = load i32, ptr %16, align 4, !tbaa !9
  switch i32 %i.axo, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ac
    i32 2, label %.noexc1015
    i32 3, label %bb.ad
    i32 4, label %.noexc1016
    i32 5, label %.noexc1017
    i32 6, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge2518
  %i.axp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.axn, <16 x float> zeroinitializer, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc1015:                                       ; preds = %._crit_edge2518
  %i.axq = load ptr, ptr %17, align 8, !tbaa !19
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !30
  %i.axs = fcmp fast olt <16 x float> %i.axn, zeroinitializer
  %i.axt = insertelement <16 x float> poison, float %i.axr, i64 0
  %i.axu = shufflevector <16 x float> %i.axt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.axv = select fast <16 x i1> %i.axs, <16 x float> %i.axu, <16 x float> splat (float 1.000000e+00)
  %i.axw = fmul fast <16 x float> %i.axv, %i.axn
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %._crit_edge2518
  %i.axx = load ptr, ptr %17, align 8, !tbaa !19  ; 2 uses
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !30
  %i.axz = insertelement <16 x float> poison, float %i.axy, i64 0
  %i.aya = shufflevector <16 x float> %i.axz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axx, i64 4
  %i.ayc = load float, ptr %i.ayb, align 4, !tbaa !30
  %i.ayd = insertelement <16 x float> poison, float %i.ayc, i64 0
  %i.aye = shufflevector <16 x float> %i.ayd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ayf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.axn, <16 x float> nofpclass(nan inf) %i.aya, i32 4)
  %i.ayg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ayf, <16 x float> nofpclass(nan inf) %i.aye, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc1016:                                       ; preds = %._crit_edge2518
  %i.ayh = fneg fast <16 x float> %i.axn
  %i.ayi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ayh, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ayj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ayi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ayk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ayl = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ayk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aym = fcmp fast ogt <16 x float> %i.ayl, %i.ayk
  %i.ayn = fadd fast <16 x float> %i.ayl, splat (float -1.000000e+00)
  %i.ayo = select fast <16 x i1> %i.aym, <16 x float> %i.ayn, <16 x float> %i.ayl ; 2 uses
  %i.ayp = fneg fast <16 x float> %i.ayo          ; 2 uses
  %i.ayq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ayj)
  %i.ayr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ayq) ; 8 uses
  %i.ays = fmul fast <16 x float> %i.ayr, %i.ayr
  %i.ayt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayr, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ayu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayt, <16 x float> nofpclass(nan inf) %i.ayr, <16 x float> splat (float f0x3C088908))
  %i.ayv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayu, <16 x float> nofpclass(nan inf) %i.ayr, <16 x float> splat (float f0x3D2AA9C1))
  %i.ayw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayv, <16 x float> nofpclass(nan inf) %i.ayr, <16 x float> splat (float f0x3E2AAAAA))
  %i.ayx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayw, <16 x float> nofpclass(nan inf) %i.ayr, <16 x float> splat (float 5.000000e-01))
  %i.ayy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayx, <16 x float> nofpclass(nan inf) %i.ays, <16 x float> nofpclass(nan inf) %i.ayr)
  %i.ayz = fadd fast <16 x float> %i.ayy, splat (float 1.000000e+00)
  %i.aza = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ayo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.azb = shl <16 x i32> %i.aza, splat (i32 23)
  %i.azc = add <16 x i32> %i.azb, splat (i32 1065353216)
  %i.azd = bitcast <16 x i32> %i.azc to <16 x float>
  %i.aze = fmul fast <16 x float> %i.ayz, %i.azd
  %i.azf = fadd fast <16 x float> %i.aze, splat (float 1.000000e+00)
  %i.azg = fdiv fast <16 x float> splat (float 1.000000e+00), %i.azf
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

.noexc1017:                                       ; preds = %._crit_edge2518
  %i.azh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.axn, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.azi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.azh, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.azj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azi, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.azk = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.azj, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.azl = fcmp fast ogt <16 x float> %i.azk, %i.azj
  %i.azm = fadd fast <16 x float> %i.azk, splat (float -1.000000e+00)
  %i.azn = select fast <16 x i1> %i.azl, <16 x float> %i.azm, <16 x float> %i.azk ; 2 uses
  %i.azo = fneg fast <16 x float> %i.azn          ; 2 uses
  %i.azp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.azo, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.azi)
  %i.azq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.azo, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.azp) ; 8 uses
  %i.azr = fmul fast <16 x float> %i.azq, %i.azq
  %i.azs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.azt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azs, <16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float f0x3C088908))
  %i.azu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azt, <16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float f0x3D2AA9C1))
  %i.azv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azu, <16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float f0x3E2AAAAA))
  %i.azw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azv, <16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float 5.000000e-01))
  %i.azx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azw, <16 x float> nofpclass(nan inf) %i.azr, <16 x float> nofpclass(nan inf) %i.azq)
  %i.azy = fadd fast <16 x float> %i.azx, splat (float 1.000000e+00)
  %i.azz = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.azn, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.baa = shl <16 x i32> %i.azz, splat (i32 23)
  %i.bab = add <16 x i32> %i.baa, splat (i32 1065353216)
  %i.bac = bitcast <16 x i32> %i.bab to <16 x float>
  %i.bad = fmul fast <16 x float> %i.azy, %i.bac
  %i.bae = fadd fast <16 x float> %i.bad, splat (float 1.000000e+00) ; 2 uses
  %i.baf = fcmp fast ole <16 x float> %i.bae, zeroinitializer
  %i.bag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bae, <16 x float> splat (float f0x00800000), i32 4)
  %i.bah = bitcast <16 x float> %i.bag to <16 x i32> ; 2 uses
  %i.bai = lshr <16 x i32> %i.bah, splat (i32 23)
  %i.baj = and <16 x i32> %i.bah, splat (i32 -2139095041)
  %i.bak = or disjoint <16 x i32> %i.baj, splat (i32 1056964608)
  %i.bal = bitcast <16 x i32> %i.bak to <16 x float> ; 3 uses
  %i.bam = add nsw <16 x i32> %i.bai, splat (i32 -127)
  %i.ban = sitofp fast <16 x i32> %i.bam to <16 x float> ; 2 uses
  %i.bao = fadd fast <16 x float> %i.ban, splat (float 1.000000e+00)
  %i.bap = fcmp fast olt <16 x float> %i.bal, splat (float f0x3F3504F3) ; 2 uses
  %i.baq = fadd fast <16 x float> %i.bal, splat (float -1.000000e+00)
  %i.bar = select fast <16 x i1> %i.bap, <16 x float> %i.ban, <16 x float> %i.bao ; 2 uses
  %i.bas = select fast <16 x i1> %i.bap, <16 x float> %i.bal, <16 x float> zeroinitializer
  %i.bat = fadd fast <16 x float> %i.baq, %i.bas  ; 12 uses
  %i.bau = fmul fast <16 x float> %i.bat, %i.bat  ; 2 uses
  %i.bav = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.baw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bav, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0x3DEF251A))
  %i.bax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.baw, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0xBDFE5D4F))
  %i.bay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bax, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0x3E11E9BF))
  %i.baz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bay, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0xBE2AAE50))
  %i.bba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.baz, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0x3E4CCEAC))
  %i.bbb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bba, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0xBE7FFFFC))
  %i.bbc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbb, <16 x float> nofpclass(nan inf) %i.bat, <16 x float> splat (float f0x3EAAAAAA))
  %i.bbd = fmul fast <16 x float> %i.bau, %i.bat
  %i.bbe = fmul fast <16 x float> %i.bbd, %i.bbc
  %i.bbf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bar, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bbe)
  %i.bbg = fneg fast <16 x float> %i.bau
  %i.bbh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbg, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bbf)
  %i.bbi = fadd fast <16 x float> %i.bbh, %i.bat
  %i.bbj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bar, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bbi)
  %.neg = fmul fast <16 x float> %i.bbj, splat (float -2.000000e+00)
  %i.bbk = select fast <16 x i1> %i.baf, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg
  %i.bbl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bbk, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bbm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bbl, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bbn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbm, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bbo = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bbn, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bbp = fcmp fast ogt <16 x float> %i.bbo, %i.bbn
  %i.bbq = fadd fast <16 x float> %i.bbo, splat (float -1.000000e+00)
  %i.bbr = select fast <16 x i1> %i.bbp, <16 x float> %i.bbq, <16 x float> %i.bbo ; 2 uses
  %i.bbs = fneg fast <16 x float> %i.bbr          ; 2 uses
end_hunk_6
