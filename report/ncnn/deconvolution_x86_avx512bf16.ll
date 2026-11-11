Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  store i32 %i.ad, ptr %i.k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.af = sdiv i32 %i.s, 16
  store i32 %i.af, ptr %i.m, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !215
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.ah)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull %11, ptr nonnull %i.h)
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !9
  %i.aj = shl nsw i32 %i.ai, 4                    ; 3 uses
  %i.ak = sub nsw i32 %i.s, %i.aj                 ; 2 uses
  %i.al = sdiv i32 %i.ak, 8                       ; 3 uses
  store i32 %i.al, ptr %i.m, align 4, !tbaa !9
  %i.am = icmp sgt i32 %i.ak, 7
  br i1 %i.am, label %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, label %._crit_edge7220

_ZN4ncnn3MatD2Ev.exit2341.lr.ph:                  ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.ay = sext i32 %i.aj to i64
  %wide.trip.count8261 = zext nneg i32 %i.al to i64
  br label %_ZN4ncnn3MatD2Ev.exit2341

._crit_edge7220:                                  ; preds = %._crit_edge7218.split, %bb.a
  %i.az = shl nsw i32 %i.al, 3
  %i.ba = add nsw i32 %i.az, %i.aj                ; 3 uses
  %i.bb = sub nsw i32 %i.s, %i.ba                 ; 2 uses
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
  %wide.trip.count8344 = zext nneg i32 %i.bc to i64
  br label %_ZN4ncnn3MatD2Ev.exit2281

_ZN4ncnn3MatD2Ev.exit2341:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2341.lr.ph, %._crit_edge7218.split
  %indvars.iv8258 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2341.lr.ph ], [ %indvars.iv.next8259, %._crit_edge7218.split ] ; 2 uses
  %i.bq = load i32, ptr %i.an, align 8, !tbaa !15
  %.fr = freeze i32 %i.bq                         ; 8 uses
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !16
  %i.bs = mul i32 %i.br, %.fr                     ; 14 uses
  %i.bt = load i32, ptr %i.ap, align 4, !tbaa !22 ; 6 uses
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !23 ; 5 uses
  %i.bv = load i32, ptr %i.ar, align 4, !tbaa !22 ; 2 uses
  %i.bw = load i32, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.preheader6934.lr.ph, label %._crit_edge7218.split

.preheader6934.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2341
  %i.bz = shl nuw nsw i64 %indvars.iv8258, 3
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
  %i.df = add i32 %i.bs, -8
  %i.dg = add i32 %i.bs, -4
  %i.dh = add i32 %i.bs, -2                       ; 2 uses
  %invariant.op8777 = add nsw i64 %i.dc, -15
  br label %.preheader6934

.preheader6934:                                   ; preds = %.preheader6934.preheader, %._crit_edge
  %.018087217 = phi ptr [ %.4, %._crit_edge ], [ %i.cv, %.preheader6934.preheader ]
  %.018297216 = phi i32 [ %.neg6858, %._crit_edge ], [ 0, %.preheader6934.preheader ]
  %i.di = load i32, ptr %i.b, align 4             ; 6 uses
  %i.dj = icmp sgt i32 %i.di, 0                   ; 5 uses
  %.neg6858 = add nuw nsw i32 %.018297216, 1      ; 7 uses
  %i.dk = load i32, ptr %i.k, align 4             ; 5 uses
  %i.dl = shl i32 %i.dk, 7
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = shl i32 %i.dk, 6
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = shl i32 %i.dk, 5
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = shl i32 %i.dk, 4
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %i.dt = shl nsw i32 %i.dk, 3
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.cz, %i.dm
  %wide.trip.count8190 = zext nneg i32 %i.di to i64
  %wide.trip.count8204 = zext nneg i32 %i.di to i64
  %wide.trip.count8223 = zext nneg i32 %i.di to i64
  %wide.trip.count8238 = zext nneg i32 %i.di to i64
  %wide.trip.count8251 = zext nneg i32 %i.di to i64
  br label %bb.b

._crit_edge7218.split:                            ; preds = %._crit_edge, %.preheader6934.lr.ph, %_ZN4ncnn3MatD2Ev.exit2341
  %indvars.iv.next8259 = add nuw nsw i64 %indvars.iv8258, 1 ; 2 uses
  %exitcond8262.not = icmp eq i64 %indvars.iv.next8259, %wide.trip.count8261
  br i1 %exitcond8262.not, label %._crit_edge7220, label %_ZN4ncnn3MatD2Ev.exit2341, !llvm.loop !35

._crit_edge:                                      ; preds = %.thread6743
  %exitcond8257.not = icmp eq i32 %.neg6858, %i.bw
  br i1 %exitcond8257.not, label %._crit_edge7218.split, label %.preheader6934, !llvm.loop !36

bb.b:                                             ; preds = %.preheader6934, %.thread6743
  %.17215 = phi ptr [ %.018087217, %.preheader6934 ], [ %.4, %.thread6743 ] ; 15 uses
  %.018307214 = phi i32 [ 0, %.preheader6934 ], [ %i.blo, %.thread6743 ] ; 6 uses
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !21  ; 2 uses
  %.not2153 = icmp eq ptr %i.dw, null
  br i1 %.not2153, label %_ZN4ncnn3MatD2Ev.exit2340, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ca
  %i.dy = load <8 x float>, ptr %i.dx, align 1, !tbaa !26
  br label %_ZN4ncnn3MatD2Ev.exit2340

_ZN4ncnn3MatD2Ev.exit2340:                        ; preds = %bb.c, %bb.b
  %.06535 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.dy, %bb.c ] ; 3 uses
  %i.dz = load ptr, ptr %2, align 8, !tbaa !19, !noalias !217 ; 2 uses
  %i.ea = load i64, ptr %i.au, align 8, !tbaa !17, !noalias !217
  %i.eb = mul i64 %i.ea, %i.ch
  %i.ec = load i64, ptr %i.av, align 8, !tbaa !24, !noalias !217
  %i.ed = mul i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ed ; 2 uses
  br i1 %i.ci, label %.preheader6929.lr.ph, label %.preheader6933

.preheader6929.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2340
  %i.ef = load i32, ptr %i.j, align 4
  %invariant.op6957 = sub i32 %.neg6858, %i.ef
  %i.eg = load i32, ptr %i.f, align 4             ; 2 uses
  %i.eh = load i32, ptr %i.a, align 4
  %.fr8030 = freeze i32 %i.eh                     ; 2 uses
  %i.ei = icmp sgt i32 %.fr8030, 0
  %i.ej = load i32, ptr %i.i, align 4
  %.neg6860 = add nuw nsw i32 %.018307214, 1
  %invariant.op = sub i32 %.neg6860, %i.ej
  %i.ek = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.dj, label %.preheader6929.us.preheader, label %.preheader6929.preheader

.preheader6929.preheader:                         ; preds = %.preheader6929.lr.ph
  %scevgep = getelementptr i8, ptr %i.dz, i64 %i.dv
  %scevgep8185 = getelementptr i8, ptr %scevgep, i64 %i.ed
  br label %.preheader6933

.preheader6929.us.preheader:                      ; preds = %.preheader6929.lr.ph
  %i.el = load i32, ptr %i.c, align 4
  %i.em = load i32, ptr %i.d, align 4
  %i.en = zext i32 %.fr8030 to i64                ; 2 uses
  br label %.preheader6929.us

.preheader6929.us:                                ; preds = %.preheader6929.us.preheader, %._crit_edge.us
  %indvars.iv8192 = phi i64 [ 0, %.preheader6929.us.preheader ], [ %indvars.iv.next8193, %._crit_edge.us ] ; 20 uses
  %.018316976.us = phi ptr [ %i.ee, %.preheader6929.us.preheader ], [ %i.ahy, %._crit_edge.us ] ; 2 uses
  %.165366974.us = phi <8 x float> [ %.06535, %.preheader6929.us.preheader ], [ %.us-phi6969.us, %._crit_edge.us ] ; 3 uses
  %.065466973.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6968.us, %._crit_edge.us ] ; 3 uses
  %.065696972.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6967.us, %._crit_edge.us ] ; 3 uses
  %.065876971.us = phi <8 x float> [ zeroinitializer, %.preheader6929.us.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 3 uses
  %i.eo = or disjoint i64 %indvars.iv8192, 15
  %i.ep = lshr exact i64 %indvars.iv8192, 4
  %i.eq = lshr exact i64 %indvars.iv8192, 3       ; 2 uses
  %i.er = or disjoint i64 %i.eq, 1
  %i.es = lshr exact i64 %indvars.iv8192, 2       ; 4 uses
  %i.et = or disjoint i64 %i.es, 1
  %i.eu = or disjoint i64 %i.es, 2
  %i.ev = or disjoint i64 %i.es, 3
  %i.ew = or disjoint i64 %indvars.iv8192, 1
  %i.ex = or disjoint i64 %indvars.iv8192, 2
  %i.ey = or disjoint i64 %indvars.iv8192, 3
  %i.ez = or disjoint i64 %indvars.iv8192, 4
  %i.fa = or disjoint i64 %indvars.iv8192, 5
  %i.fb = or disjoint i64 %indvars.iv8192, 6
  %i.fc = or disjoint i64 %indvars.iv8192, 7
  %i.fd = or disjoint i64 %indvars.iv8192, 8
  %i.fe = or disjoint i64 %indvars.iv8192, 9
  %i.ff = or disjoint i64 %indvars.iv8192, 10
  %i.fg = or disjoint i64 %indvars.iv8192, 11
  %i.fh = or disjoint i64 %indvars.iv8192, 12
  %i.fi = or disjoint i64 %indvars.iv8192, 13
  %i.fj = or disjoint i64 %indvars.iv8192, 14
  br i1 %i.ei, label %.lr.ph6953.split.us.us.preheader, label %._crit_edge.us

.lr.ph6953.split.us.us.preheader:                 ; preds = %.preheader6929.us
  br i1 %i.ck, label %.lr.ph6953.split.us.us, label %._crit_edge.us

.lr.ph6953.split.us.us:                           ; preds = %.lr.ph6953.split.us.us.preheader, %..loopexit6924_crit_edge.us.us
  %indvars.iv8187 = phi i64 [ %indvars.iv.next8188, %..loopexit6924_crit_edge.us.us ], [ 0, %.lr.ph6953.split.us.us.preheader ] ; 3 uses
  %.265376951.us.us = phi <8 x float> [ %.8.us.us.us, %..loopexit6924_crit_edge.us.us ], [ %.165366974.us, %.lr.ph6953.split.us.us.preheader ] ; 3 uses
  %.165476950.us.us = phi <8 x float> [ %.76553.us.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065466973.us, %.lr.ph6953.split.us.us.preheader ] ; 3 uses
  %.165706949.us.us = phi <8 x float> [ %.76576.us.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065696972.us, %.lr.ph6953.split.us.us.preheader ] ; 3 uses
  %.165886948.us.us = phi <8 x float> [ %.76594.us.us.us, %..loopexit6924_crit_edge.us.us ], [ %.065876971.us, %.lr.ph6953.split.us.us.preheader ] ; 3 uses
  %i.fk = trunc i64 %indvars.iv8187 to i32
  %i.fl = mul i32 %i.em, %i.fk
  %.reass6958.us.us = add i32 %i.fl, %invariant.op6957 ; 3 uses
  %i.fm = icmp slt i32 %.reass6958.us.us, 0
  br i1 %i.fm, label %..loopexit6924_crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph6953.split.us.us
  %i.fn = srem i32 %.reass6958.us.us, %i.eg
  %i.fo = sdiv i32 %.reass6958.us.us, %i.eg       ; 2 uses
  %.not2176.us.us = icmp eq i32 %i.fn, 0
  %.not2177.us.us = icmp slt i32 %i.fo, %i.bu
  %or.cond8968 = select i1 %.not2176.us.us, i1 %.not2177.us.us, i1 false
  br i1 %or.cond8968, label %.preheader6923.us.us, label %..loopexit6924_crit_edge.us.us

.preheader6923.us.us:                             ; preds = %bb.d
  %i.fp = mul nuw nsw i64 %indvars.iv8187, %i.en
  %i.fq = sext i32 %i.fo to i64                   ; 5 uses
  br label %.lr.ph.split.us.us.us

.lr.ph.split.us.us.us:                            ; preds = %.preheader6923.us.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader6923.us.us ], [ %indvars.iv.next.a, %bb.f ] ; 3 uses
  %.365386940.us.us.us = phi <8 x float> [ %.265376951.us.us, %.preheader6923.us.us ], [ %.7.us.us.us, %bb.f ] ; 7 uses
  %.265486939.us.us.us = phi <8 x float> [ %.165476950.us.us, %.preheader6923.us.us ], [ %.66552.us.us.us, %bb.f ] ; 7 uses
  %.265716938.us.us.us = phi <8 x float> [ %.165706949.us.us, %.preheader6923.us.us ], [ %.66575.us.us.us, %bb.f ] ; 7 uses
  %.265896937.us.us.us = phi <8 x float> [ %.165886948.us.us, %.preheader6923.us.us ], [ %.66593.us.us.us, %bb.f ] ; 7 uses
  %i.fr = trunc i64 %indvars.iv to i32
  %i.fs = mul i32 %i.el, %i.fr
  %.reass.us.us.us = add i32 %i.fs, %invariant.op ; 3 uses
  %i.ft = icmp slt i32 %.reass.us.us.us, 0
  br i1 %i.ft, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.us.us
  %i.fu = srem i32 %.reass.us.us.us, %i.ek
  %i.fv = sdiv i32 %.reass.us.us.us, %i.ek        ; 5 uses
  %.not2178.us.us.us = icmp eq i32 %i.fu, 0
  %.not2179.us.us.us = icmp slt i32 %i.fv, %i.bt
  %or.cond8969 = select i1 %.not2178.us.us.us, i1 %.not2179.us.us.us, i1 false
  br i1 %or.cond8969, label %.split.us.us.us, label %bb.f

.split.us.us.us:                                  ; preds = %bb.e
  %i.fw = add nuw nsw i64 %i.fp, %indvars.iv
  %i.fx = shl i64 %i.fw, 7
  %i.fy = and i64 %i.fx, 4294967168
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.018316976.us, i64 %i.fy ; 64 uses
  switch i32 %i.cl, label %bb.f [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2339.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2338.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2336.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2332.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2339.us.us.us:               ; preds = %.split.us.us.us
  %i.ga = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !218
  %i.gb = load ptr, ptr %0, align 8, !tbaa !19, !noalias !218
  %i.gc = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !218
  %i.gd = mul i64 %i.gc, %i.ep
  %i.ge = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !218 ; 2 uses
  %i.gf = mul i64 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gf
  %i.gh = sext i32 %i.ga to i64
  %i.gi = mul nsw i64 %i.gh, %i.fq
  %i.gj = mul i64 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj
  %i.gl = shl nsw i32 %i.fv, 4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %i.gm
  %i.go = load <16 x i16>, ptr %i.gn, align 2, !tbaa !28
  %i.gp = zext <16 x i16> %i.go to <16 x i32>
  %i.gq = shl nuw <16 x i32> %i.gp, splat (i32 16) ; 16 uses
  %i.gr = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gs = shufflevector <16 x float> %i.gr, <16 x float> poison, <8 x i32> zeroinitializer
  %i.gt = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gu = shufflevector <16 x float> %i.gt, <16 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.gv = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gw = shufflevector <16 x float> %i.gv, <16 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.gx = bitcast <16 x i32> %i.gq to <16 x float>
  %i.gy = shufflevector <16 x float> %i.gx, <16 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.gz = bitcast <16 x i32> %i.gq to <16 x float>
  %i.ha = shufflevector <16 x float> %i.gz, <16 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hb = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hc = shufflevector <16 x float> %i.hb, <16 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.hd = bitcast <16 x i32> %i.gq to <16 x float>
  %i.he = shufflevector <16 x float> %i.hd, <16 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.hf = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hg = shufflevector <16 x float> %i.hf, <16 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.hh = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hi = shufflevector <16 x float> %i.hh, <16 x float> poison, <8 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.hj = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hk = shufflevector <16 x float> %i.hj, <16 x float> poison, <8 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.hl = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hm = shufflevector <16 x float> %i.hl, <16 x float> poison, <8 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %i.hn = bitcast <16 x i32> %i.gq to <16 x float>
  %i.ho = shufflevector <16 x float> %i.hn, <16 x float> poison, <8 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  %i.hp = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hq = shufflevector <16 x float> %i.hp, <16 x float> poison, <8 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  %i.hr = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hs = shufflevector <16 x float> %i.hr, <16 x float> poison, <8 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.ht = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hu = shufflevector <16 x float> %i.ht, <16 x float> poison, <8 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %i.hv = bitcast <16 x i32> %i.gq to <16 x float>
  %i.hw = shufflevector <16 x float> %i.hv, <16 x float> poison, <8 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  %i.hx = load <8 x bfloat>, ptr %i.fz, align 16, !tbaa !26
  %i.hy = fpext fast <8 x bfloat> %i.hx to <8 x float>
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gs, <8 x float> nofpclass(nan inf) %i.hy, <8 x float> nofpclass(nan inf) %.365386940.us.us.us)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.ib = load <8 x bfloat>, ptr %i.ia, align 16, !tbaa !26
  %i.ic = fpext fast <8 x bfloat> %i.ib to <8 x float>
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gu, <8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %.265486939.us.us.us)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.if = load <8 x bfloat>, ptr %i.ie, align 16, !tbaa !26
  %i.ig = fpext fast <8 x bfloat> %i.if to <8 x float>
  %i.ih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gw, <8 x float> nofpclass(nan inf) %i.ig, <8 x float> nofpclass(nan inf) %.265716938.us.us.us)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.ij = load <8 x bfloat>, ptr %i.ii, align 16, !tbaa !26
  %i.ik = fpext fast <8 x bfloat> %i.ij to <8 x float>
  %i.il = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %.265896937.us.us.us)
  %i.im = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.in = load <8 x bfloat>, ptr %i.im, align 16, !tbaa !26
  %i.io = fpext fast <8 x bfloat> %i.in to <8 x float>
  %i.ip = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.io, <8 x float> nofpclass(nan inf) %i.hz)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.ir = load <8 x bfloat>, ptr %i.iq, align 16, !tbaa !26
  %i.is = fpext fast <8 x bfloat> %i.ir to <8 x float>
  %i.it = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.is, <8 x float> nofpclass(nan inf) %i.id)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.iv = load <8 x bfloat>, ptr %i.iu, align 16, !tbaa !26
  %i.iw = fpext fast <8 x bfloat> %i.iv to <8 x float>
  %i.ix = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.iw, <8 x float> nofpclass(nan inf) %i.ih)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %i.iz = load <8 x bfloat>, ptr %i.iy, align 16, !tbaa !26
  %i.ja = fpext fast <8 x bfloat> %i.iz to <8 x float>
  %i.jb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.ja, <8 x float> nofpclass(nan inf) %i.il)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  %i.jd = load <8 x bfloat>, ptr %i.jc, align 16, !tbaa !26
  %i.je = fpext fast <8 x bfloat> %i.jd to <8 x float>
  %i.jf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hi, <8 x float> nofpclass(nan inf) %i.je, <8 x float> nofpclass(nan inf) %i.ip)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fz, i64 144
  %i.jh = load <8 x bfloat>, ptr %i.jg, align 16, !tbaa !26
  %i.ji = fpext fast <8 x bfloat> %i.jh to <8 x float>
  %i.jj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> nofpclass(nan inf) %i.ji, <8 x float> nofpclass(nan inf) %i.it)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  %i.jl = load <8 x bfloat>, ptr %i.jk, align 16, !tbaa !26
  %i.jm = fpext fast <8 x bfloat> %i.jl to <8 x float>
  %i.jn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hm, <8 x float> nofpclass(nan inf) %i.jm, <8 x float> nofpclass(nan inf) %i.ix)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.fz, i64 176
  %i.jp = load <8 x bfloat>, ptr %i.jo, align 16, !tbaa !26
  %i.jq = fpext fast <8 x bfloat> %i.jp to <8 x float>
  %i.jr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.jq, <8 x float> nofpclass(nan inf) %i.jb)
  %i.js = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.jt = load <8 x bfloat>, ptr %i.js, align 16, !tbaa !26
  %i.ju = fpext fast <8 x bfloat> %i.jt to <8 x float>
  %i.jv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> nofpclass(nan inf) %i.ju, <8 x float> nofpclass(nan inf) %i.jf) ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  %i.jx = load <8 x bfloat>, ptr %i.jw, align 16, !tbaa !26
  %i.jy = fpext fast <8 x bfloat> %i.jx to <8 x float>
  %i.jz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hs, <8 x float> nofpclass(nan inf) %i.jy, <8 x float> nofpclass(nan inf) %i.jj) ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fz, i64 224
  %i.kb = load <8 x bfloat>, ptr %i.ka, align 16, !tbaa !26
  %i.kc = fpext fast <8 x bfloat> %i.kb to <8 x float>
  %i.kd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hu, <8 x float> nofpclass(nan inf) %i.kc, <8 x float> nofpclass(nan inf) %i.jn) ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.kf = load <8 x bfloat>, ptr %i.ke, align 16, !tbaa !26
  %i.kg = fpext fast <8 x bfloat> %i.kf to <8 x float>
  %i.kh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.kg, <8 x float> nofpclass(nan inf) %i.jr) ; 4 uses
  switch i32 %.fr, label %bb.f [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2338.us.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2336.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2332.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2338.us.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.us.us, %.split.us.us.us
  %.36590.us.us.us = phi nsz <8 x float> [ %i.kh, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265896937.us.us.us, %.split.us.us.us ]
  %.36572.us.us.us = phi nsz <8 x float> [ %i.kd, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265716938.us.us.us, %.split.us.us.us ]
  %.36549.us.us.us = phi nsz <8 x float> [ %i.jz, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.265486939.us.us.us, %.split.us.us.us ]
  %.46539.us.us.us = phi nsz <8 x float> [ %i.jv, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %.365386940.us.us.us, %.split.us.us.us ]
  %i.ki = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !219
  %i.kj = load ptr, ptr %0, align 8, !tbaa !19, !noalias !219 ; 2 uses
  %i.kk = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !219 ; 2 uses
  %i.kl = mul i64 %i.kk, %i.eq
  %i.km = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !219 ; 3 uses
  %i.kn = mul i64 %i.kl, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kn
  %i.kp = sext i32 %i.ki to i64
  %i.kq = mul nsw i64 %i.kp, %i.fq
  %i.kr = mul i64 %i.kq, %i.km                    ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr
  %i.kt = shl nsw i32 %i.fv, 3
  %i.ku = sext i32 %i.kt to i64                   ; 2 uses
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.ku ; 5 uses
  %i.kw = mul i64 %i.kk, %i.er
  %i.kx = mul i64 %i.kw, %i.km
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kr
  %i.la = getelementptr inbounds [2 x i8], ptr %i.kz, i64 %i.ku ; 5 uses
  %i.lb = load i16, ptr %i.kv, align 2, !tbaa !28
  %i.lc = zext i16 %i.lb to i32
  %i.ld = shl nuw i32 %i.lc, 16
  %i.le = insertelement <8 x i32> poison, i32 %i.ld, i64 0
  %i.lf = bitcast <8 x i32> %i.le to <8 x float>
  %i.lg = shufflevector <8 x float> %i.lf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !28
  %i.lj = zext i16 %i.li to i32
  %i.lk = shl nuw i32 %i.lj, 16
  %i.ll = insertelement <8 x i32> poison, i32 %i.lk, i64 0
  %i.lm = bitcast <8 x i32> %i.ll to <8 x float>
  %i.ln = shufflevector <8 x float> %i.lm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !28
  %i.lq = zext i16 %i.lp to i32
  %i.lr = shl nuw i32 %i.lq, 16
  %i.ls = insertelement <8 x i32> poison, i32 %i.lr, i64 0
  %i.lt = bitcast <8 x i32> %i.ls to <8 x float>
  %i.lu = shufflevector <8 x float> %i.lt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 6
  %i.lw = load <4 x i16>, ptr %i.lv, align 2, !tbaa !28
  %i.lx = zext <4 x i16> %i.lw to <4 x i32>
  %i.ly = shl nuw <4 x i32> %i.lx, splat (i32 16) ; 4 uses
  %i.lz = bitcast <4 x i32> %i.ly to <4 x float>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <8 x i32> zeroinitializer
  %i.mb = bitcast <4 x i32> %i.ly to <4 x float>
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.md = bitcast <4 x i32> %i.ly to <4 x float>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.mf = bitcast <4 x i32> %i.ly to <4 x float>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.yn
  %i.aat = getelementptr inbounds [2 x i8], ptr %i.aas, i64 %i.yp
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !28
  %i.aav = zext i16 %i.aau to i32
  %i.aaw = shl nuw i32 %i.aav, 16
  %i.aax = insertelement <8 x i32> poison, i32 %i.aaw, i64 0
  %i.aay = bitcast <8 x i32> %i.aax to <8 x float>
  %i.aaz = shufflevector <8 x float> %i.aay, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aba = mul i64 %i.yg, %i.fb
  %i.abb = mul i64 %i.aba, %i.yi
  %i.abc = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.yn
  %i.abe = getelementptr inbounds [2 x i8], ptr %i.abd, i64 %i.yp
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !28
  %i.abg = zext i16 %i.abf to i32
  %i.abh = shl nuw i32 %i.abg, 16
  %i.abi = insertelement <8 x i32> poison, i32 %i.abh, i64 0
  %i.abj = bitcast <8 x i32> %i.abi to <8 x float>
  %i.abk = shufflevector <8 x float> %i.abj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abl = mul i64 %i.yg, %i.fc
  %i.abm = mul i64 %i.abl, %i.yi
  %i.abn = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.yn
  %i.abp = getelementptr inbounds [2 x i8], ptr %i.abo, i64 %i.yp
  %i.abq = load i16, ptr %i.abp, align 2, !tbaa !28
  %i.abr = zext i16 %i.abq to i32
  %i.abs = shl nuw i32 %i.abr, 16
  %i.abt = insertelement <8 x i32> poison, i32 %i.abs, i64 0
  %i.abu = bitcast <8 x i32> %i.abt to <8 x float>
  %i.abv = shufflevector <8 x float> %i.abu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abw = mul i64 %i.yg, %i.fd
  %i.abx = mul i64 %i.abw, %i.yi
  %i.aby = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.yn
  %i.aca = getelementptr inbounds [2 x i8], ptr %i.abz, i64 %i.yp
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !28
  %i.acc = zext i16 %i.acb to i32
  %i.acd = shl nuw i32 %i.acc, 16
  %i.ace = insertelement <8 x i32> poison, i32 %i.acd, i64 0
  %i.acf = bitcast <8 x i32> %i.ace to <8 x float>
  %i.acg = shufflevector <8 x float> %i.acf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ach = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !222
  %i.aci = load ptr, ptr %0, align 8, !tbaa !19, !noalias !222 ; 7 uses
  %i.acj = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !222 ; 7 uses
  %i.ack = mul i64 %i.acj, %i.fe
  %i.acl = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !222 ; 8 uses
  %i.acm = mul i64 %i.ack, %i.acl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.acm
  %i.aco = sext i32 %i.ach to i64
  %i.acp = mul nsw i64 %i.aco, %i.fq
  %i.acq = mul i64 %i.acp, %i.acl                 ; 7 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acq
  %i.acs = getelementptr inbounds [2 x i8], ptr %i.acr, i64 %i.yp
  %i.act = load i16, ptr %i.acs, align 2, !tbaa !28
  %i.acu = zext i16 %i.act to i32
  %i.acv = shl nuw i32 %i.acu, 16
  %i.acw = insertelement <8 x i32> poison, i32 %i.acv, i64 0
  %i.acx = bitcast <8 x i32> %i.acw to <8 x float>
  %i.acy = shufflevector <8 x float> %i.acx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acz = mul i64 %i.acj, %i.ff
  %i.ada = mul i64 %i.acz, %i.acl
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.acq
  %i.add = getelementptr inbounds [2 x i8], ptr %i.adc, i64 %i.yp
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !28
  %i.adf = zext i16 %i.ade to i32
  %i.adg = shl nuw i32 %i.adf, 16
  %i.adh = insertelement <8 x i32> poison, i32 %i.adg, i64 0
  %i.adi = bitcast <8 x i32> %i.adh to <8 x float>
  %i.adj = shufflevector <8 x float> %i.adi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adk = mul i64 %i.acj, %i.fg
  %i.adl = mul i64 %i.adk, %i.acl
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.acq
  %i.ado = getelementptr inbounds [2 x i8], ptr %i.adn, i64 %i.yp
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !28
  %i.adq = zext i16 %i.adp to i32
  %i.adr = shl nuw i32 %i.adq, 16
  %i.ads = insertelement <8 x i32> poison, i32 %i.adr, i64 0
  %i.adt = bitcast <8 x i32> %i.ads to <8 x float>
  %i.adu = shufflevector <8 x float> %i.adt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adv = mul i64 %i.acj, %i.fh
  %i.adw = mul i64 %i.adv, %i.acl
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.adw
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.acq
  %i.adz = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.yp
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !28
  %i.aeb = zext i16 %i.aea to i32
  %i.aec = shl nuw i32 %i.aeb, 16
  %i.aed = insertelement <8 x i32> poison, i32 %i.aec, i64 0
  %i.aee = bitcast <8 x i32> %i.aed to <8 x float>
  %i.aef = shufflevector <8 x float> %i.aee, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aeg = mul i64 %i.acj, %i.fi
  %i.aeh = mul i64 %i.aeg, %i.acl
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.aeh
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.acq
  %i.aek = getelementptr inbounds [2 x i8], ptr %i.aej, i64 %i.yp
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !28
  %i.aem = zext i16 %i.ael to i32
  %i.aen = shl nuw i32 %i.aem, 16
  %i.aeo = insertelement <8 x i32> poison, i32 %i.aen, i64 0
  %i.aep = bitcast <8 x i32> %i.aeo to <8 x float>
  %i.aeq = shufflevector <8 x float> %i.aep, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aer = mul i64 %i.acj, %i.fj
  %i.aes = mul i64 %i.aer, %i.acl
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.acq
  %i.aev = getelementptr inbounds [2 x i8], ptr %i.aeu, i64 %i.yp
  %i.aew = load i16, ptr %i.aev, align 2, !tbaa !28
  %i.aex = zext i16 %i.aew to i32
  %i.aey = shl nuw i32 %i.aex, 16
  %i.aez = insertelement <8 x i32> poison, i32 %i.aey, i64 0
  %i.afa = bitcast <8 x i32> %i.aez to <8 x float>
  %i.afb = shufflevector <8 x float> %i.afa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afc = mul i64 %i.acj, %i.eo
  %i.afd = mul i64 %i.afc, %i.acl
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.acq
  %i.afg = getelementptr inbounds [2 x i8], ptr %i.aff, i64 %i.yp
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !28
  %i.afi = zext i16 %i.afh to i32
  %i.afj = shl nuw i32 %i.afi, 16
  %i.afk = insertelement <8 x i32> poison, i32 %i.afj, i64 0
  %i.afl = bitcast <8 x i32> %i.afk to <8 x float>
  %i.afm = shufflevector <8 x float> %i.afl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afn = load <8 x bfloat>, ptr %i.fz, align 16, !tbaa !26
  %i.afo = fpext fast <8 x bfloat> %i.afn to <8 x float>
  %i.afp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.yw, <8 x float> nofpclass(nan inf) %i.afo, <8 x float> nofpclass(nan inf) %.6.us.us.us)
  %i.afq = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.afr = load <8 x bfloat>, ptr %i.afq, align 16, !tbaa !26
  %i.afs = fpext fast <8 x bfloat> %i.afr to <8 x float>
  %i.aft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zh, <8 x float> nofpclass(nan inf) %i.afs, <8 x float> nofpclass(nan inf) %.56551.us.us.us)
  %i.afu = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.afv = load <8 x bfloat>, ptr %i.afu, align 16, !tbaa !26
  %i.afw = fpext fast <8 x bfloat> %i.afv to <8 x float>
  %i.afx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zs, <8 x float> nofpclass(nan inf) %i.afw, <8 x float> nofpclass(nan inf) %.56574.us.us.us)
  %i.afy = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.afz = load <8 x bfloat>, ptr %i.afy, align 16, !tbaa !26
  %i.aga = fpext fast <8 x bfloat> %i.afz to <8 x float>
  %i.agb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aad, <8 x float> nofpclass(nan inf) %i.aga, <8 x float> nofpclass(nan inf) %.56592.us.us.us)
  %i.agc = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.agd = load <8 x bfloat>, ptr %i.agc, align 16, !tbaa !26
  %i.age = fpext fast <8 x bfloat> %i.agd to <8 x float>
  %i.agf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aao, <8 x float> nofpclass(nan inf) %i.age, <8 x float> nofpclass(nan inf) %i.afp)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.agh = load <8 x bfloat>, ptr %i.agg, align 16, !tbaa !26
  %i.agi = fpext fast <8 x bfloat> %i.agh to <8 x float>
  %i.agj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aaz, <8 x float> nofpclass(nan inf) %i.agi, <8 x float> nofpclass(nan inf) %i.aft)
  %i.agk = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.agl = load <8 x bfloat>, ptr %i.agk, align 16, !tbaa !26
  %i.agm = fpext fast <8 x bfloat> %i.agl to <8 x float>
  %i.agn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abk, <8 x float> nofpclass(nan inf) %i.agm, <8 x float> nofpclass(nan inf) %i.afx)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %i.agp = load <8 x bfloat>, ptr %i.ago, align 16, !tbaa !26
  %i.agq = fpext fast <8 x bfloat> %i.agp to <8 x float>
  %i.agr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abv, <8 x float> nofpclass(nan inf) %i.agq, <8 x float> nofpclass(nan inf) %i.agb)
  %i.ags = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  %i.agt = load <8 x bfloat>, ptr %i.ags, align 16, !tbaa !26
  %i.agu = fpext fast <8 x bfloat> %i.agt to <8 x float>
  %i.agv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acg, <8 x float> nofpclass(nan inf) %i.agu, <8 x float> nofpclass(nan inf) %i.agf)
  %i.agw = getelementptr inbounds nuw i8, ptr %i.fz, i64 144
  %i.agx = load <8 x bfloat>, ptr %i.agw, align 16, !tbaa !26
  %i.agy = fpext fast <8 x bfloat> %i.agx to <8 x float>
  %i.agz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acy, <8 x float> nofpclass(nan inf) %i.agy, <8 x float> nofpclass(nan inf) %i.agj)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  %i.ahb = load <8 x bfloat>, ptr %i.aha, align 16, !tbaa !26
  %i.ahc = fpext fast <8 x bfloat> %i.ahb to <8 x float>
  %i.ahd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adj, <8 x float> nofpclass(nan inf) %i.ahc, <8 x float> nofpclass(nan inf) %i.agn)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.fz, i64 176
  %i.ahf = load <8 x bfloat>, ptr %i.ahe, align 16, !tbaa !26
  %i.ahg = fpext fast <8 x bfloat> %i.ahf to <8 x float>
  %i.ahh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> nofpclass(nan inf) %i.ahg, <8 x float> nofpclass(nan inf) %i.agr)
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.ahj = load <8 x bfloat>, ptr %i.ahi, align 16, !tbaa !26
  %i.ahk = fpext fast <8 x bfloat> %i.ahj to <8 x float>
  %i.ahl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aef, <8 x float> nofpclass(nan inf) %i.ahk, <8 x float> nofpclass(nan inf) %i.agv)
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  %i.ahn = load <8 x bfloat>, ptr %i.ahm, align 16, !tbaa !26
  %i.aho = fpext fast <8 x bfloat> %i.ahn to <8 x float>
  %i.ahp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aeq, <8 x float> nofpclass(nan inf) %i.aho, <8 x float> nofpclass(nan inf) %i.agz)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.fz, i64 224
  %i.ahr = load <8 x bfloat>, ptr %i.ahq, align 16, !tbaa !26
  %i.ahs = fpext fast <8 x bfloat> %i.ahr to <8 x float>
  %i.aht = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afb, <8 x float> nofpclass(nan inf) %i.ahs, <8 x float> nofpclass(nan inf) %i.ahd)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.ahv = load <8 x bfloat>, ptr %i.ahu, align 16, !tbaa !26
  %i.ahw = fpext fast <8 x bfloat> %i.ahv to <8 x float>
  %i.ahx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afm, <8 x float> nofpclass(nan inf) %i.ahw, <8 x float> nofpclass(nan inf) %i.ahh)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.us.us, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us, %.split.us.us.us, %bb.e, %.lr.ph.split.us.us.us
  %.66593.us.us.us = phi nsz <8 x float> [ %.265896937.us.us.us, %.lr.ph.split.us.us.us ], [ %.265896937.us.us.us, %.split.us.us.us ], [ %i.kh, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ahx, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.yd, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265896937.us.us.us, %bb.e ] ; 2 uses
  %.66575.us.us.us = phi nsz <8 x float> [ %.265716938.us.us.us, %.lr.ph.split.us.us.us ], [ %.265716938.us.us.us, %.split.us.us.us ], [ %i.kd, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.qh, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aht, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.xz, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265716938.us.us.us, %bb.e ] ; 2 uses
  %.66552.us.us.us = phi nsz <8 x float> [ %.265486939.us.us.us, %.lr.ph.split.us.us.us ], [ %.265486939.us.us.us, %.split.us.us.us ], [ %i.jz, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.qd, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ahp, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.xv, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265486939.us.us.us, %bb.e ] ; 2 uses
  %.7.us.us.us = phi nsz <8 x float> [ %.365386940.us.us.us, %.lr.ph.split.us.us.us ], [ %.365386940.us.us.us, %.split.us.us.us ], [ %i.jv, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.pz, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ahl, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.xr, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.365386940.us.us.us, %bb.e ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, %i.en
  br i1 %exitcond.not.a, label %..loopexit6924_crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !49

..loopexit6924_crit_edge.us.us:                   ; preds = %bb.f, %bb.d, %.lr.ph6953.split.us.us
  %.76594.us.us.us = phi nsz <8 x float> [ %.165886948.us.us, %.lr.ph6953.split.us.us ], [ %.165886948.us.us, %bb.d ], [ %.66593.us.us.us, %bb.f ] ; 2 uses
  %.76576.us.us.us = phi nsz <8 x float> [ %.165706949.us.us, %.lr.ph6953.split.us.us ], [ %.165706949.us.us, %bb.d ], [ %.66575.us.us.us, %bb.f ] ; 2 uses
  %.76553.us.us.us = phi nsz <8 x float> [ %.165476950.us.us, %.lr.ph6953.split.us.us ], [ %.165476950.us.us, %bb.d ], [ %.66552.us.us.us, %bb.f ] ; 2 uses
  %.8.us.us.us = phi nsz <8 x float> [ %.265376951.us.us, %.lr.ph6953.split.us.us ], [ %.265376951.us.us, %bb.d ], [ %.7.us.us.us, %bb.f ] ; 2 uses
  %indvars.iv.next8188 = add nuw nsw i64 %indvars.iv8187, 1 ; 2 uses
  %exitcond8191.not = icmp eq i64 %indvars.iv.next8188, %wide.trip.count8190
  br i1 %exitcond8191.not, label %._crit_edge.us, label %.lr.ph6953.split.us.us, !llvm.loop !50

._crit_edge.us:                                   ; preds = %..loopexit6924_crit_edge.us.us, %.lr.ph6953.split.us.us.preheader, %.preheader6929.us
  %.us-phi6966.us = phi <8 x float> [ %.065876971.us, %.preheader6929.us ], [ %.065876971.us, %.lr.ph6953.split.us.us.preheader ], [ %.76594.us.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6967.us = phi <8 x float> [ %.065696972.us, %.preheader6929.us ], [ %.065696972.us, %.lr.ph6953.split.us.us.preheader ], [ %.76576.us.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6968.us = phi <8 x float> [ %.065466973.us, %.preheader6929.us ], [ %.065466973.us, %.lr.ph6953.split.us.us.preheader ], [ %.76553.us.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6969.us = phi <8 x float> [ %.165366974.us, %.preheader6929.us ], [ %.165366974.us, %.lr.ph6953.split.us.us.preheader ], [ %.8.us.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %i.ahy = getelementptr inbounds [2 x i8], ptr %.018316976.us, i64 %i.dm ; 2 uses
  %indvars.iv.next8193 = add nuw nsw i64 %indvars.iv8192, 16 ; 2 uses
  %i.ahz = icmp slt i64 %indvars.iv.next8193, %invariant.op8777
  br i1 %i.ahz, label %.preheader6929.us, label %.preheader6933, !llvm.loop !51

.preheader6933:                                   ; preds = %._crit_edge.us, %.preheader6929.preheader, %_ZN4ncnn3MatD2Ev.exit2340
  %.06587.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 3 uses
  %.06569.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6967.us, %._crit_edge.us ] ; 3 uses
  %.06546.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6968.us, %._crit_edge.us ] ; 3 uses
  %.16536.lcssa = phi <8 x float> [ %.06535, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %.06535, %.preheader6929.preheader ], [ %.us-phi6969.us, %._crit_edge.us ] ; 3 uses
  %.01836.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %i.db, %.preheader6929.preheader ], [ %i.de, %._crit_edge.us ] ; 5 uses
  %.01831.lcssa = phi ptr [ %i.ee, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %scevgep8185, %.preheader6929.preheader ], [ %i.ahy, %._crit_edge.us ] ; 3 uses
  %i.aia = or disjoint i32 %.01836.lcssa, 7       ; 2 uses
  %i.aib = icmp slt i32 %i.aia, %i.bs
  br i1 %i.aib, label %.preheader6928.lr.ph, label %.preheader6932

.preheader6928.lr.ph:                             ; preds = %.preheader6933
  %i.aic = load i32, ptr %i.j, align 4
  %invariant.op7015 = sub i32 %.neg6858, %i.aic
  %i.aid = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aie = load i32, ptr %i.a, align 4
  %.fr8031 = freeze i32 %i.aie                    ; 2 uses
  %i.aif = icmp sgt i32 %.fr8031, 0
  %i.aig = load i32, ptr %i.i, align 4
  %.neg6856 = add nuw nsw i32 %.018307214, 1
  %invariant.op7004 = sub i32 %.neg6856, %i.aig
  %i.aih = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dj, label %.preheader6928.us.preheader, label %.preheader6928.preheader

.preheader6928.preheader:                         ; preds = %.preheader6928.lr.ph
  %i.aii = sub i32 %i.df, %.01836.lcssa           ; 2 uses
  %i.aij = lshr i32 %i.aii, 2
  %i.aik = and i32 %i.aij, 1073741822
  %narrow8737 = add nuw nsw i32 %i.aik, 2
  %i.ail = zext nneg i32 %narrow8737 to i64
  %i.aim = mul nsw i64 %i.do, %i.ail
  %scevgep8195 = getelementptr i8, ptr %.01831.lcssa, i64 %i.aim
  %i.ain = add i32 %.01836.lcssa, 8
  %i.aio = and i32 %i.aii, -8
  %i.aip = add i32 %i.ain, %i.aio
  br label %.preheader6932

.preheader6928.us.preheader:                      ; preds = %.preheader6928.lr.ph
  %i.aiq = load i32, ptr %i.c, align 4
  %i.air = load i32, ptr %i.d, align 4
  %i.ais = zext i32 %.fr8031 to i64               ; 2 uses
  %i.ait = zext i32 %.01836.lcssa to i64
  %i.aiu = zext nneg i32 %i.aia to i64
  br label %.preheader6928.us

.preheader6928.us:                                ; preds = %.preheader6928.us.preheader, %._crit_edge.us7043
  %indvars.iv8206 = phi i64 [ %i.ait, %.preheader6928.us.preheader ], [ %indvars.iv.next8207, %._crit_edge.us7043 ] ; 10 uses
  %i.aiv = phi i64 [ %i.aiu, %.preheader6928.us.preheader ], [ %i.atc, %._crit_edge.us7043 ]
  %.118327027.us = phi ptr [ %.01831.lcssa, %.preheader6928.us.preheader ], [ %i.atb, %._crit_edge.us7043 ] ; 2 uses
  %.97025.us = phi <8 x float> [ %.16536.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7020.us, %._crit_edge.us7043 ] ; 2 uses
  %.865547024.us = phi <8 x float> [ %.06546.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7019.us, %._crit_edge.us7043 ] ; 2 uses
  %.865777023.us = phi <8 x float> [ %.06569.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7018.us, %._crit_edge.us7043 ] ; 2 uses
  %.865957022.us = phi <8 x float> [ %.06587.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7017.us, %._crit_edge.us7043 ] ; 2 uses
  %i.aiw = or disjoint i64 %indvars.iv8206, 1
  %i.aix = or disjoint i64 %indvars.iv8206, 2
  %i.aiy = or disjoint i64 %indvars.iv8206, 3
  %i.aiz = or disjoint i64 %indvars.iv8206, 4
  %i.aja = or disjoint i64 %indvars.iv8206, 5
  %i.ajb = or disjoint i64 %indvars.iv8206, 6
  %i.ajc = lshr exact i64 %indvars.iv8206, 2      ; 2 uses
  %i.ajd = or disjoint i64 %i.ajc, 1
  %i.aje = lshr exact i64 %indvars.iv8206, 3
  br i1 %i.aif, label %.lr.ph7010.split.us.us, label %._crit_edge.us7043

.lr.ph7010.split.us.us:                           ; preds = %.preheader6928.us, %..loopexit6922_crit_edge.us.us
  %indvars.iv8201 = phi i64 [ %indvars.iv.next8202, %..loopexit6922_crit_edge.us.us ], [ 0, %.preheader6928.us ] ; 3 uses
  %.107008.us.us = phi <8 x float> [ %.13.us.us, %..loopexit6922_crit_edge.us.us ], [ %.97025.us, %.preheader6928.us ] ; 3 uses
  %.965557007.us.us = phi <8 x float> [ %.126558.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865547024.us, %.preheader6928.us ] ; 3 uses
  %.965787006.us.us = phi <8 x float> [ %.126581.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865777023.us, %.preheader6928.us ] ; 3 uses
  %.965967005.us.us = phi <8 x float> [ %.126599.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865957022.us, %.preheader6928.us ] ; 3 uses
  %i.ajf = trunc i64 %indvars.iv8201 to i32
  %i.ajg = mul i32 %i.air, %i.ajf
  %.reass7016.us.us = add i32 %i.ajg, %invariant.op7015 ; 3 uses
  %i.ajh = icmp slt i32 %.reass7016.us.us, 0
  br i1 %i.ajh, label %..loopexit6922_crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph7010.split.us.us
  %i.aji = srem i32 %.reass7016.us.us, %i.aid
  %i.ajj = sdiv i32 %.reass7016.us.us, %i.aid     ; 2 uses
  %.not2172.us.us = icmp eq i32 %i.aji, 0
  %.not2173.us.us = icmp slt i32 %i.ajj, %i.bu
  %or.cond8970 = select i1 %.not2172.us.us, i1 %.not2173.us.us, i1 false
  br i1 %or.cond8970, label %.preheader6921.us.us, label %..loopexit6922_crit_edge.us.us

.preheader6921.us.us:                             ; preds = %bb.g
  %i.ajk = mul nuw nsw i64 %indvars.iv8201, %i.ais
  %i.ajl = sext i32 %i.ajj to i64                 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.preheader6921.us.us
  %indvars.iv8196 = phi i64 [ %indvars.iv.next8197, %bb.k ], [ 0, %.preheader6921.us.us ] ; 3 uses
  %.116998.us.us = phi <8 x float> [ %.12.us.us, %bb.k ], [ %.107008.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065566997.us.us = phi <8 x float> [ %.116557.us.us, %bb.k ], [ %.965557007.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065796996.us.us = phi <8 x float> [ %.116580.us.us, %bb.k ], [ %.965787006.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065976995.us.us = phi <8 x float> [ %.116598.us.us, %bb.k ], [ %.965967005.us.us, %.preheader6921.us.us ] ; 4 uses
  %i.ajm = trunc i64 %indvars.iv8196 to i32
  %i.ajn = mul i32 %i.aiq, %i.ajm
  %.reass.us.us = add i32 %i.ajn, %invariant.op7004 ; 3 uses
  %i.ajo = icmp slt i32 %.reass.us.us, 0
  br i1 %i.ajo, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ajp = srem i32 %.reass.us.us, %i.aih
  %i.ajq = sdiv i32 %.reass.us.us, %i.aih         ; 4 uses
  %.not2174.us.us = icmp eq i32 %i.ajp, 0
  %.not2175.us.us = icmp slt i32 %i.ajq, %i.bt
  %or.cond8971 = select i1 %.not2174.us.us, i1 %.not2175.us.us, i1 false
  br i1 %or.cond8971, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ajr = add nuw nsw i64 %i.ajk, %indvars.iv8196
  %i.ajs = shl i64 %i.ajr, 6
  %i.ajt = and i64 %i.ajs, 4294967232
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %.118327027.us, i64 %i.ajt ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2300.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2299.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2297.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2297.us.us:                  ; preds = %bb.j
  %i.ajv = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !223
  %i.ajw = load ptr, ptr %0, align 8, !tbaa !19, !noalias !223 ; 8 uses
  %i.ajx = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !223 ; 8 uses
  %i.ajy = mul i64 %i.ajx, %indvars.iv8206
  %i.ajz = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !223 ; 9 uses
  %i.aka = mul i64 %i.ajy, %i.ajz
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.aka
  %i.akc = sext i32 %i.ajv to i64
  %i.akd = mul nsw i64 %i.akc, %i.ajl
  %i.ake = mul i64 %i.akd, %i.ajz                 ; 8 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.ake
  %i.akg = sext i32 %i.ajq to i64                 ; 8 uses
  %i.akh = getelementptr inbounds [2 x i8], ptr %i.akf, i64 %i.akg
  %i.aki = mul i64 %i.ajx, %i.aiw
  %i.akj = mul i64 %i.aki, %i.ajz
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akj
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.ake
  %i.akm = getelementptr inbounds [2 x i8], ptr %i.akl, i64 %i.akg
  %i.akn = mul i64 %i.ajx, %i.aix
  %i.ako = mul i64 %i.akn, %i.ajz
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ako
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.ake
  %i.akr = getelementptr inbounds [2 x i8], ptr %i.akq, i64 %i.akg
  %i.aks = mul i64 %i.ajx, %i.aiy
  %i.akt = mul i64 %i.aks, %i.ajz
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.akt
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 %i.ake
  %i.akw = getelementptr inbounds [2 x i8], ptr %i.akv, i64 %i.akg
  %i.akx = mul i64 %i.ajx, %i.aiz
  %i.aky = mul i64 %i.akx, %i.ajz
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.aky
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.ake
  %i.alb = getelementptr inbounds [2 x i8], ptr %i.ala, i64 %i.akg
  %i.alc = mul i64 %i.ajx, %i.aja
  %i.ald = mul i64 %i.alc, %i.ajz
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.ake
  %i.alg = getelementptr inbounds [2 x i8], ptr %i.alf, i64 %i.akg
  %i.alh = mul i64 %i.ajx, %i.ajb
  %i.ali = mul i64 %i.alh, %i.ajz
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 %i.ake
  %i.all = getelementptr inbounds [2 x i8], ptr %i.alk, i64 %i.akg
  %i.alm = mul i64 %i.ajx, %i.aiv
  %i.aln = mul i64 %i.alm, %i.ajz
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.aln
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.ake
  %i.alq = getelementptr inbounds [2 x i8], ptr %i.alp, i64 %i.akg
  %i.alr = load i16, ptr %i.akh, align 2, !tbaa !28
  %i.als = zext i16 %i.alr to i32
  %i.alt = shl nuw i32 %i.als, 16
  %i.alu = insertelement <8 x i32> poison, i32 %i.alt, i64 0
  %i.alv = bitcast <8 x i32> %i.alu to <8 x float>
  %i.alw = shufflevector <8 x float> %i.alv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alx = load i16, ptr %i.akm, align 2, !tbaa !28
  %i.aly = zext i16 %i.alx to i32
  %i.alz = shl nuw i32 %i.aly, 16
  %i.ama = insertelement <8 x i32> poison, i32 %i.alz, i64 0
  %i.amb = bitcast <8 x i32> %i.ama to <8 x float>
  %i.amc = shufflevector <8 x float> %i.amb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amd = load i16, ptr %i.akr, align 2, !tbaa !28
  %i.ame = zext i16 %i.amd to i32
  %i.amf = shl nuw i32 %i.ame, 16
  %i.amg = insertelement <8 x i32> poison, i32 %i.amf, i64 0
  %i.amh = bitcast <8 x i32> %i.amg to <8 x float>
  %i.ami = shufflevector <8 x float> %i.amh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amj = load i16, ptr %i.akw, align 2, !tbaa !28
  %i.amk = zext i16 %i.amj to i32
  %i.aml = shl nuw i32 %i.amk, 16
  %i.amm = insertelement <8 x i32> poison, i32 %i.aml, i64 0
  %i.amn = bitcast <8 x i32> %i.amm to <8 x float>
  %i.amo = shufflevector <8 x float> %i.amn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amp = load i16, ptr %i.alb, align 2, !tbaa !28
  %i.amq = zext i16 %i.amp to i32
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.bgi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bgh, <8 x float> nofpclass(nan inf) %i.bgc, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bgj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bgi, <8 x float> nofpclass(nan inf) %i.bgd, <8 x float> nofpclass(nan inf) %i.bgc)
  %i.bgk = fadd fast <8 x float> %i.bgj, splat (float 1.000000e+00)
  %i.bgl = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bfz)
  %i.bgm = shl <8 x i32> %i.bgl, splat (i32 23)
  %i.bgn = add <8 x i32> %i.bgm, splat (i32 1065353216)
  %i.bgo = bitcast <8 x i32> %i.bgn to <8 x float>
  %i.bgp = fmul fast <8 x float> %i.bgk, %i.bgo
  %i.bgq = fadd fast <8 x float> %i.bgp, splat (float 1.000000e+00)
  %i.bgr = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bgq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %._crit_edge7200
  %i.bgs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bey, <8 x float> splat (float f0x42B0C0A5))
  %i.bgt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bgs, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bgu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bgt, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.bgv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bgu, i32 1) ; 2 uses
  %i.bgw = fcmp fast ogt <8 x float> %i.bgv, %i.bgu
  %i.bgx = select <8 x i1> %i.bgw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bgy = fsub fast <8 x float> %i.bgv, %i.bgx   ; 2 uses
  %i.bgz = fneg fast <8 x float> %i.bgy           ; 2 uses
  %i.bha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bgz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bgt)
  %i.bhb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bgz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bha) ; 8 uses
  %i.bhc = fmul fast <8 x float> %i.bhb, %i.bhb
  %i.bhd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhb, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bhe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhd, <8 x float> nofpclass(nan inf) %i.bhb, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bhf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhe, <8 x float> nofpclass(nan inf) %i.bhb, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.bhg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhf, <8 x float> nofpclass(nan inf) %i.bhb, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bhh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhg, <8 x float> nofpclass(nan inf) %i.bhb, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bhi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bhh, <8 x float> nofpclass(nan inf) %i.bhc, <8 x float> nofpclass(nan inf) %i.bhb)
  %i.bhj = fadd fast <8 x float> %i.bhi, splat (float 1.000000e+00)
  %i.bhk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bgy)
  %i.bhl = shl <8 x i32> %i.bhk, splat (i32 23)
  %i.bhm = add <8 x i32> %i.bhl, splat (i32 1065353216)
  %i.bhn = bitcast <8 x i32> %i.bhm to <8 x float>
  %i.bho = fmul fast <8 x float> %i.bhj, %i.bhn
  %i.bhp = fadd fast <8 x float> %i.bho, splat (float 1.000000e+00) ; 2 uses
  %i.bhq = fcmp fast ole <8 x float> %i.bhp, zeroinitializer
  %i.bhr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bhp, <8 x float> splat (float f0x00800000))
  %i.bhs = bitcast <8 x float> %i.bhr to <8 x i32> ; 2 uses
  %i.bht = lshr <8 x i32> %i.bhs, splat (i32 23)
  %i.bhu = and <8 x i32> %i.bhs, splat (i32 -2139095041)
  %i.bhv = or disjoint <8 x i32> %i.bhu, splat (i32 1056964608)
  %i.bhw = bitcast <8 x i32> %i.bhv to <8 x float> ; 3 uses
  %i.bhx = add nsw <8 x i32> %i.bht, splat (i32 -127)
  %i.bhy = sitofp fast <8 x i32> %i.bhx to <8 x float> ; 2 uses
  %i.bhz = fadd fast <8 x float> %i.bhy, splat (float 1.000000e+00)
  %i.bia = fcmp fast olt <8 x float> %i.bhw, splat (float f0x3F3504F3) ; 2 uses
  %i.bib = select <8 x i1> %i.bia, <8 x float> %i.bhw, <8 x float> zeroinitializer
  %i.bic = fadd fast <8 x float> %i.bhw, splat (float -1.000000e+00)
  %i.bid = select fast <8 x i1> %i.bia, <8 x float> %i.bhy, <8 x float> %i.bhz ; 2 uses
  %i.bie = fadd fast <8 x float> %i.bic, %i.bib   ; 12 uses
  %i.bif = fmul fast <8 x float> %i.bie, %i.bie   ; 2 uses
  %i.big = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.bih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.big, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.bii = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bih, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.bij = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bii, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.bik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bij, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.bil = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bik, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.bim = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bil, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.bin = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bim, <8 x float> nofpclass(nan inf) %i.bie, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.bio = fmul fast <8 x float> %i.bif, %i.bie
  %i.bip = fmul fast <8 x float> %i.bio, %i.bin
  %i.biq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bid, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bip)
  %i.bir = fneg fast <8 x float> %i.bif
  %i.bis = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bir, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.biq)
  %i.bit = fadd fast <8 x float> %i.bis, %i.bie
  %i.biu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bid, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bit)
  %.neg6780 = fmul fast <8 x float> %i.biu, splat (float -2.000000e+00)
  %i.biv = select fast <8 x i1> %i.bhq, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg6780
  %i.biw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.biv, <8 x float> splat (float f0x42B0C0A5))
  %i.bix = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.biw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.biy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bix, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.biz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.biy, i32 1) ; 2 uses
  %i.bja = fcmp fast ogt <8 x float> %i.biz, %i.biy
  %i.bjb = select <8 x i1> %i.bja, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bjc = fsub fast <8 x float> %i.biz, %i.bjb   ; 2 uses
  %i.bjd = fneg fast <8 x float> %i.bjc           ; 2 uses
  %i.bje = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bjd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bix)
  %i.bjf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bjd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bje) ; 8 uses
  %i.bjg = fmul fast <8 x float> %i.bjf, %i.bjf
  %i.bjh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjf, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.bji = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjh, <8 x float> nofpclass(nan inf) %i.bjf, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.bjj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bji, <8 x float> nofpclass(nan inf) %i.bjf, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.bjk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjj, <8 x float> nofpclass(nan inf) %i.bjf, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.bjl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjk, <8 x float> nofpclass(nan inf) %i.bjf, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.bjm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bjl, <8 x float> nofpclass(nan inf) %i.bjg, <8 x float> nofpclass(nan inf) %i.bjf)
  %i.bjn = fadd fast <8 x float> %i.bjm, splat (float 1.000000e+00)
  %i.bjo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bjc)
  %i.bjp = shl <8 x i32> %i.bjo, splat (i32 23)
  %i.bjq = add <8 x i32> %i.bjp, splat (i32 1065353216)
  %i.bjr = bitcast <8 x i32> %i.bjq to <8 x float>
  %i.bjs = fmul fast <8 x float> %i.bjn, %i.bjr
  %i.bjt = fadd fast <8 x float> %i.bjs, splat (float 1.000000e+00)
  %i.bju = fdiv fast <8 x float> splat (float 1.000000e+00), %i.bjt
  %i.bjv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bju, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.bjw = fmul fast <8 x float> %i.bjv, %i.bey
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %._crit_edge7200
  %i.bjx = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !30
  %i.bjz = insertelement <8 x float> poison, float %i.bjy, i64 0
  %i.bka = shufflevector <8 x float> %i.bjz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjx, i64 4
  %i.bkc = load float, ptr %i.bkb, align 4, !tbaa !30
  %i.bkd = insertelement <8 x float> poison, float %i.bkc, i64 0
  %i.bke = shufflevector <8 x float> %i.bkd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bkf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bey, <8 x float> nofpclass(nan inf) %i.bka, <8 x float> nofpclass(nan inf) %i.bke)
  %i.bkg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bkf, <8 x float> zeroinitializer)
  %i.bkh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bkg, <8 x float> splat (float 1.000000e+00))
  %i.bki = fmul fast <8 x float> %i.bkh, %i.bey
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge7200, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i = phi nsz <8 x float> [ %i.bki, %bb.af ], [ %i.bez, %bb.aa ], [ %i.bfh, %bb.ab ], [ %i.bfr, %bb.ac ], [ %i.bgr, %bb.ad ], [ %i.bjw, %bb.ae ], [ %i.bey, %._crit_edge7200 ] ; 4 uses
  switch i32 %i.bx, label %.thread6743 [
    i32 8, label %.thread
    i32 4, label %bb.ag
    i32 1, label %bb.ah
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bkj = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  store <8 x bfloat> %i.bkj, ptr %.17215, align 16, !tbaa !26
  %i.bkk = getelementptr inbounds nuw i8, ptr %.17215, i64 16
  br label %.thread6743

bb.ag:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bkl = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bkm = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bkl)
  %i.bkn = bitcast <8 x bfloat> %i.bkm to <2 x i64>
  %i.bko = extractelement <2 x i64> %i.bkn, i64 0
  store i64 %i.bko, ptr %.17215, align 1, !tbaa !26
  %i.bkp = load i64, ptr %i.h, align 8, !tbaa !18
  %i.bkq = getelementptr inbounds nuw [2 x i8], ptr %.17215, i64 %i.bkp
  %i.bkr = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bks = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bkr)
  %i.bkt = bitcast <8 x bfloat> %i.bks to <2 x i64>
  %i.bku = extractelement <2 x i64> %i.bkt, i64 0
  store i64 %i.bku, ptr %i.bkq, align 1, !tbaa !26
  %i.bkv = getelementptr inbounds nuw i8, ptr %.17215, i64 8
  br label %.thread6743

bb.ah:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.bkw = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.bkx = extractelement <16 x i16> %i.bkw, i64 1
  store i16 %i.bkx, ptr %.17215, align 2, !tbaa !28
  %i.bky = extractelement <16 x i16> %i.bkw, i64 3
  %i.bkz = load i64, ptr %i.h, align 8, !tbaa !18 ; 7 uses
  %i.bla = getelementptr inbounds nuw [2 x i8], ptr %.17215, i64 %i.bkz
  store i16 %i.bky, ptr %i.bla, align 2, !tbaa !28
  %i.blb = extractelement <16 x i16> %i.bkw, i64 5
  %.idx2154 = shl i64 %i.bkz, 2
  %i.blc = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2154
  store i16 %i.blb, ptr %i.blc, align 2, !tbaa !28
  %i.bld = extractelement <16 x i16> %i.bkw, i64 7
  %.idx2155 = mul i64 %i.bkz, 6
  %i.ble = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2155
  store i16 %i.bld, ptr %i.ble, align 2, !tbaa !28
  %i.blf = extractelement <16 x i16> %i.bkw, i64 9
  %.idx2156 = shl i64 %i.bkz, 3
  %i.blg = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2156
  store i16 %i.blf, ptr %i.blg, align 2, !tbaa !28
  %i.blh = extractelement <16 x i16> %i.bkw, i64 11
  %.idx2157 = mul i64 %i.bkz, 10
  %i.bli = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2157
  store i16 %i.blh, ptr %i.bli, align 2, !tbaa !28
  %i.blj = extractelement <16 x i16> %i.bkw, i64 13
  %.idx2158 = mul i64 %i.bkz, 12
  %i.blk = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2158
  store i16 %i.blj, ptr %i.blk, align 2, !tbaa !28
  %i.bll = extractelement <16 x i16> %i.bkw, i64 15
  %.idx2159 = mul i64 %i.bkz, 14
  %i.blm = getelementptr inbounds nuw i8, ptr %.17215, i64 %.idx2159
  store i16 %i.bll, ptr %i.blm, align 2, !tbaa !28
  %i.bln = getelementptr inbounds nuw i8, ptr %.17215, i64 2
  br label %.thread6743

.thread6743:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ag, %.thread, %bb.ah
  %.4 = phi ptr [ %i.bln, %bb.ah ], [ %.17215, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.bkk, %.thread ], [ %i.bkv, %bb.ag ] ; 2 uses
  %i.blo = add nuw nsw i32 %.018307214, 1         ; 2 uses
  %exitcond8256.not = icmp eq i32 %i.blo, %i.bv
  br i1 %exitcond8256.not, label %._crit_edge, label %bb.b, !llvm.loop !78

._crit_edge7513:                                  ; preds = %._crit_edge7511.split, %._crit_edge7220
  %i.blp = shl nsw i32 %i.bc, 2
  %i.blq = add nsw i32 %i.blp, %i.ba              ; 3 uses
  %i.blr = sub nsw i32 %i.s, %i.blq               ; 2 uses
  %i.bls = sdiv i32 %i.blr, 2                     ; 3 uses
  store i32 %i.bls, ptr %i.m, align 4, !tbaa !9
  %i.blt = icmp sgt i32 %i.blr, 1
  br i1 %i.blt, label %_ZN4ncnn3MatD2Ev.exit2237.lr.ph, label %._crit_edge7786.split

_ZN4ncnn3MatD2Ev.exit2237.lr.ph:                  ; preds = %._crit_edge7513
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.blv = load i32, ptr %i.blu, align 8, !tbaa !15
  %.fr8043 = freeze i32 %i.blv                    ; 8 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.blx = load i32, ptr %i.blw, align 8, !tbaa !16
  %i.bly = mul i32 %i.blx, %.fr8043               ; 15 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 12 uses
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !22 ; 6 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bmc = load i32, ptr %i.bmb, align 8, !tbaa !23 ; 5 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bme = load i32, ptr %i.bmd, align 4, !tbaa !22 ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bmg = load i32, ptr %i.bmf, align 8, !tbaa !23 ; 2 uses
  %i.bmh = load ptr, ptr %1, align 8, !tbaa !19, !noalias !230 ; 2 uses
  %i.bmi = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !230
  %i.bmj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bmk = load i64, ptr %i.bmj, align 8, !tbaa !24, !noalias !230
  %factor.op.mul = mul i64 %i.bmi, %i.bmk         ; 2 uses
  %i.bml = icmp slt i32 %i.bmg, 1
  %i.bmm = icmp slt i32 %i.bme, 1
  %i.bmn = icmp sgt i32 %i.bly, 15
  %i.bmo = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8043)
  %13 = icmp ne i32 %i.bmo, 1
  %i.bmp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8043, i1 true)
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.bms = icmp eq i32 %.fr8043, 1
  %brmerge = select i1 %i.bml, i1 true, i1 %i.bmm
  br i1 %brmerge, label %._crit_edge7786.split, label %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split

_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split:      ; preds = %_ZN4ncnn3MatD2Ev.exit2237.lr.ph
  %i.bmt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bmu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bmv = load ptr, ptr %2, align 8, !tbaa !19, !noalias !231
  %i.bmw = load i64, ptr %i.bmu, align 8, !tbaa !17, !noalias !231
  %i.bmx = load i64, ptr %i.bmt, align 8, !tbaa !24, !noalias !231
  %factor.op.mul7792 = mul i64 %i.bmw, %i.bmx
  %i.bmy = add i32 %i.bly, -16                    ; 2 uses
  %i.bmz = lshr i32 %i.bmy, 3
  %i.bna = and i32 %i.bmz, 536870910
  %narrow8742 = add nuw nsw i32 %i.bna, 2
  %i.bnb = zext nneg i32 %narrow8742 to i64
  %i.bnc = and i32 %i.bmy, -16
  %i.bnd = add nuw i32 %i.bnc, 16
  %i.bne = sext i32 %i.bly to i64
  %i.bnf = add i32 %i.bly, -8
  %i.bng = add i32 %i.bly, -4                     ; 2 uses
  %i.bnh = add i32 %i.bly, -2
  %i.bni = sext i32 %i.blq to i64
  %wide.trip.count8442 = zext nneg i32 %i.bls to i64
  %invariant.op8779 = add nsw i64 %i.bne, -15
  br label %_ZN4ncnn3MatD2Ev.exit2237

_ZN4ncnn3MatD2Ev.exit2281:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2281.lr.ph, %._crit_edge7511.split
  %indvars.iv8341.a = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2281.lr.ph ], [ %indvars.iv.next8342.a, %._crit_edge7511.split ] ; 2 uses
  %i.bnj = load i32, ptr %i.be, align 8, !tbaa !15
  %.fr8036 = freeze i32 %i.bnj                    ; 8 uses
  %i.bnk = load i32, ptr %i.bf, align 8, !tbaa !16
  %i.bnl = mul i32 %i.bnk, %.fr8036               ; 14 uses
  %i.bnm = load i32, ptr %i.bg, align 4, !tbaa !22 ; 6 uses
  %i.bnn = load i32, ptr %i.bh, align 8, !tbaa !23 ; 5 uses
  %i.bno = load i32, ptr %i.bi, align 4, !tbaa !22 ; 2 uses
  %i.bnp = load i32, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bnq = load i32, ptr %i.o, align 8, !tbaa !15 ; 2 uses
  %i.bnr = icmp sgt i32 %i.bnp, 0
  br i1 %i.bnr, label %.preheader6914.lr.ph, label %._crit_edge7511.split

.preheader6914.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2281
  %i.bns = shl nuw nsw i64 %indvars.iv8341.a, 2
  %i.bnt = add nsw i64 %i.bns, %i.bp              ; 2 uses
  %i.bnu = trunc nsw i64 %i.bnt to i32            ; 3 uses
  %i.bnv = icmp sgt i32 %i.bno, 0
  %i.bnw = sdiv i32 %i.bnu, 16
  %i.bnx = insertelement <2 x i32> poison, i32 %i.bnu, i64 0
  %i.bny = shufflevector <2 x i32> %i.bnx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bnz = srem <2 x i32> %i.bny, <i32 16, i32 8> ; 2 uses
  %i.boa = bitcast <2 x i32> %i.bnz to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.boa, i64 0
  %i.bob = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.bob to i32
  %i.boc = extractelement <2 x i32> %i.bnz, i64 1
  %i.bod = ashr exact i32 %i.boc, 2
  %i.boe = add nsw i32 %i.bod, %i.bnw
  %i.bof = add nsw i32 %i.boe, %.sext
  %i.bog = sext i32 %i.bof to i64
  %i.boh = icmp sgt i32 %i.bnl, 15
  %i.boi = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8036)
  %i.boj = icmp eq i32 %i.boi, 1
  %i.bok = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8036, i1 true)
  %i.bol = icmp eq i32 %.fr8036, 1
  %i.bom = load i32, ptr %i.g, align 4
  br i1 %i.bnv, label %.preheader6914.preheader, label %._crit_edge7511.split

.preheader6914.preheader:                         ; preds = %.preheader6914.lr.ph
  %i.bon = load ptr, ptr %1, align 8, !tbaa !19, !noalias !232
  %i.boo = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !232
  %i.bop = sdiv i32 %i.bnu, %i.bnq
  %i.boq = sext i32 %i.bop to i64
  %i.bor = mul i64 %i.boo, %i.boq
  %i.bos = load i64, ptr %i.bk, align 8, !tbaa !24, !noalias !232
  %i.bot = mul i64 %i.bor, %i.bos
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bot
  %i.bov = add i32 %i.bnl, -16                    ; 3 uses
  %i.bow = lshr i32 %i.bov, 3
  %i.box = and i32 %i.bow, 536870910
  %narrow8739 = add nuw nsw i32 %i.box, 2
  %i.boy = zext nneg i32 %narrow8739 to i64
  %i.boz = and i32 %i.bov, -16
  %i.bpa = add nuw i32 %i.boz, 16
  %i.bpb = sext i32 %i.bnl to i64
  %i.bpc = and i32 %i.bov, -16
  %i.bpd = add i32 %i.bpc, 16
  %i.bpe = add i32 %i.bnl, -8
  %i.bpf = add i32 %i.bnl, -4
  %i.bpg = add i32 %i.bnl, -2                     ; 2 uses
  %invariant.op8778 = add nsw i64 %i.bpb, -15
  br label %.preheader6914

.preheader6914:                                   ; preds = %.preheader6914.preheader, %._crit_edge7507
  %.019557510 = phi ptr [ %.31958, %._crit_edge7507 ], [ %i.bou, %.preheader6914.preheader ]
  %.019597509 = phi i32 [ %.neg6838, %._crit_edge7507 ], [ 0, %.preheader6914.preheader ]
  %i.bph = load i32, ptr %i.b, align 4            ; 6 uses
  %i.bpi = icmp sgt i32 %i.bph, 0                 ; 5 uses
  %.neg6838 = add nuw nsw i32 %.019597509, 1      ; 7 uses
  %i.bpj = load i32, ptr %i.k, align 4            ; 5 uses
  %i.bpk = shl i32 %i.bpj, 6
  %i.bpl = sext i32 %i.bpk to i64                 ; 2 uses
  %i.bpm = shl i32 %i.bpj, 5
  %i.bpn = sext i32 %i.bpm to i64                 ; 2 uses
  %i.bpo = shl i32 %i.bpj, 4
  %i.bpp = sext i32 %i.bpo to i64                 ; 2 uses
  %i.bpq = shl i32 %i.bpj, 3
  %i.bpr = sext i32 %i.bpq to i64                 ; 3 uses
  %i.bps = shl nsw i32 %i.bpj, 2
  %i.bpt = sext i32 %i.bps to i64
  %i.bpu = mul nsw i64 %i.boy, %i.bpl
  %wide.trip.count8273 = zext nneg i32 %i.bph to i64
  %wide.trip.count8287 = zext nneg i32 %i.bph to i64
  %wide.trip.count8306 = zext nneg i32 %i.bph to i64
  %wide.trip.count8321 = zext nneg i32 %i.bph to i64
  %wide.trip.count8334 = zext nneg i32 %i.bph to i64
  br label %bb.ai

._crit_edge7511.split:                            ; preds = %._crit_edge7507, %.preheader6914.lr.ph, %_ZN4ncnn3MatD2Ev.exit2281
  %indvars.iv.next8342.a = add nuw nsw i64 %indvars.iv8341.a, 1 ; 2 uses
  %exitcond8345.not.a = icmp eq i64 %indvars.iv.next8342.a, %wide.trip.count8344
  br i1 %exitcond8345.not.a, label %._crit_edge7513, label %_ZN4ncnn3MatD2Ev.exit2281, !llvm.loop !85

._crit_edge7507:                                  ; preds = %bb.bo
  %exitcond8340.not.a = icmp eq i32 %.neg6838, %i.bnp
  br i1 %exitcond8340.not.a, label %._crit_edge7511.split, label %.preheader6914, !llvm.loop !86

bb.ai:                                            ; preds = %.preheader6914, %bb.bo
  %.119567506 = phi ptr [ %.019557510, %.preheader6914 ], [ %.31958, %bb.bo ] ; 8 uses
  %.019607505 = phi i32 [ 0, %.preheader6914 ], [ %i.ega, %bb.bo ] ; 6 uses
  %i.bpv = load ptr, ptr %i.l, align 8, !tbaa !21 ; 2 uses
  %.not2131 = icmp eq ptr %i.bpv, null
  br i1 %.not2131, label %_ZN4ncnn3MatD2Ev.exit2280, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bpw = getelementptr inbounds [4 x i8], ptr %i.bpv, i64 %i.bnt
  %i.bpx = load <4 x float>, ptr %i.bpw, align 1, !tbaa !26
  br label %_ZN4ncnn3MatD2Ev.exit2280

_ZN4ncnn3MatD2Ev.exit2280:                        ; preds = %bb.aj, %bb.ai
  %.06713 = phi nsz <4 x float> [ zeroinitializer, %bb.ai ], [ %i.bpx, %bb.aj ] ; 3 uses
  %i.bpy = load ptr, ptr %2, align 8, !tbaa !19, !noalias !233 ; 2 uses
  %i.bpz = load i64, ptr %i.bl, align 8, !tbaa !17, !noalias !233
  %i.bqa = mul i64 %i.bpz, %i.bog
  %i.bqb = load i64, ptr %i.bm, align 8, !tbaa !24, !noalias !233
  %i.bqc = mul i64 %i.bqa, %i.bqb                 ; 2 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpy, i64 %i.bqc ; 2 uses
  br i1 %i.boh, label %.preheader6909.lr.ph, label %.preheader6913

.preheader6909.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2280
  %i.bqe = load i32, ptr %i.j, align 4
  %invariant.op7248 = sub i32 %.neg6838, %i.bqe
  %i.bqf = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bqg = load i32, ptr %i.a, align 4
  %.fr8037 = freeze i32 %i.bqg                    ; 2 uses
  %i.bqh = icmp sgt i32 %.fr8037, 0
  %i.bqi = load i32, ptr %i.i, align 4
  %.neg6840 = add nuw nsw i32 %.019607505, 1
  %invariant.op7231 = sub i32 %.neg6840, %i.bqi
  %i.bqj = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bpi, label %.preheader6909.us.preheader, label %.preheader6909.preheader

.preheader6909.preheader:                         ; preds = %.preheader6909.lr.ph
  %scevgep8263 = getelementptr i8, ptr %i.bpy, i64 %i.bpu
  %scevgep8264 = getelementptr i8, ptr %scevgep8263, i64 %i.bqc
  br label %.preheader6913

.preheader6909.us.preheader:                      ; preds = %.preheader6909.lr.ph
  %i.bqk = load i32, ptr %i.c, align 4
  %i.bql = load i32, ptr %i.d, align 4
  %i.bqm = zext i32 %.fr8037 to i64               ; 2 uses
  br label %.preheader6909.us

.preheader6909.us:                                ; preds = %.preheader6909.us.preheader, %._crit_edge7243.us
  %indvars.iv8275 = phi i64 [ 0, %.preheader6909.us.preheader ], [ %indvars.iv.next8276, %._crit_edge7243.us ] ; 20 uses
  %.019617267.us = phi ptr [ %i.bqd, %.preheader6909.us.preheader ], [ %i.dap, %._crit_edge7243.us ] ; 2 uses
  %.066547265.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7260.us, %._crit_edge7243.us ] ; 3 uses
  %.066727264.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7259.us, %._crit_edge7243.us ] ; 3 uses
  %.066907263.us = phi <4 x float> [ zeroinitializer, %.preheader6909.us.preheader ], [ %.us-phi7258.us, %._crit_edge7243.us ] ; 3 uses
  %.167147262.us = phi <4 x float> [ %.06713, %.preheader6909.us.preheader ], [ %.us-phi7257.us, %._crit_edge7243.us ] ; 3 uses
  %i.bqn = or disjoint i64 %indvars.iv8275, 15
  %i.bqo = lshr exact i64 %indvars.iv8275, 4
  %i.bqp = lshr exact i64 %indvars.iv8275, 3      ; 2 uses
  %i.bqq = or disjoint i64 %i.bqp, 1
  %i.bqr = lshr exact i64 %indvars.iv8275, 2      ; 4 uses
  %i.bqs = or disjoint i64 %i.bqr, 1
  %i.bqt = or disjoint i64 %i.bqr, 2
  %i.bqu = or disjoint i64 %i.bqr, 3
  %i.bqv = or disjoint i64 %indvars.iv8275, 1
  %i.bqw = or disjoint i64 %indvars.iv8275, 2
  %i.bqx = or disjoint i64 %indvars.iv8275, 3
  %i.bqy = or disjoint i64 %indvars.iv8275, 4
  %i.bqz = or disjoint i64 %indvars.iv8275, 5
  %i.bra = or disjoint i64 %indvars.iv8275, 6
  %i.brb = or disjoint i64 %indvars.iv8275, 7
  %i.brc = or disjoint i64 %indvars.iv8275, 8
  %i.brd = or disjoint i64 %indvars.iv8275, 9
  %i.bre = or disjoint i64 %indvars.iv8275, 10
  %i.brf = or disjoint i64 %indvars.iv8275, 11
  %i.brg = or disjoint i64 %indvars.iv8275, 12
  %i.brh = or disjoint i64 %indvars.iv8275, 13
  %i.bri = or disjoint i64 %indvars.iv8275, 14
  br i1 %i.bqh, label %.lr.ph7242.split.us.us.preheader, label %._crit_edge7243.us

.lr.ph7242.split.us.us.preheader:                 ; preds = %.preheader6909.us
  br i1 %i.boj, label %.lr.ph7242.split.us.us, label %._crit_edge7243.us

.lr.ph7242.split.us.us:                           ; preds = %.lr.ph7242.split.us.us.preheader, %..loopexit6904_crit_edge.us.us
  %indvars.iv8270 = phi i64 [ %indvars.iv.next8271, %..loopexit6904_crit_edge.us.us ], [ 0, %.lr.ph7242.split.us.us.preheader ] ; 3 uses
  %.166557240.us.us = phi <4 x float> [ %.76661.us.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066547265.us, %.lr.ph7242.split.us.us.preheader ] ; 3 uses
  %.166737239.us.us = phi <4 x float> [ %.76679.us.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066727264.us, %.lr.ph7242.split.us.us.preheader ] ; 3 uses
  %.166917238.us.us = phi <4 x float> [ %.76697.us.us.us, %..loopexit6904_crit_edge.us.us ], [ %.066907263.us, %.lr.ph7242.split.us.us.preheader ] ; 3 uses
  %.267157237.us.us = phi <4 x float> [ %.86721.us.us.us, %..loopexit6904_crit_edge.us.us ], [ %.167147262.us, %.lr.ph7242.split.us.us.preheader ] ; 3 uses
  %i.brj = trunc i64 %indvars.iv8270 to i32
  %i.brk = mul i32 %i.bql, %i.brj
  %.reass7249.us.us = add i32 %i.brk, %invariant.op7248 ; 3 uses
  %i.brl = icmp slt i32 %.reass7249.us.us, 0
  br i1 %i.brl, label %..loopexit6904_crit_edge.us.us, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph7242.split.us.us
  %i.brm = srem i32 %.reass7249.us.us, %i.bqf
  %i.brn = sdiv i32 %.reass7249.us.us, %i.bqf     ; 2 uses
  %.not2149.us.us = icmp eq i32 %i.brm, 0
  %.not2150.us.us = icmp slt i32 %i.brn, %i.bnn
  %or.cond8979 = select i1 %.not2149.us.us, i1 %.not2150.us.us, i1 false
  br i1 %or.cond8979, label %.preheader6903.us.us, label %..loopexit6904_crit_edge.us.us

.preheader6903.us.us:                             ; preds = %bb.ak
  %i.bro = mul nuw nsw i64 %indvars.iv8270, %i.bqm
  %i.brp = sext i32 %i.brn to i64                 ; 5 uses
  br label %.lr.ph.split.us.us.us7282

.lr.ph.split.us.us.us7282:                        ; preds = %bb.am, %.preheader6903.us.us
  %indvars.iv8265 = phi i64 [ 0, %.preheader6903.us.us ], [ %indvars.iv.next8266, %bb.am ] ; 3 uses
  %.266567225.us.us.us = phi <4 x float> [ %.166557240.us.us, %.preheader6903.us.us ], [ %.66660.us.us.us, %bb.am ] ; 7 uses
  %.266747224.us.us.us = phi <4 x float> [ %.166737239.us.us, %.preheader6903.us.us ], [ %.66678.us.us.us, %bb.am ] ; 7 uses
  %.266927223.us.us.us = phi <4 x float> [ %.166917238.us.us, %.preheader6903.us.us ], [ %.66696.us.us.us, %bb.am ] ; 7 uses
  %.367167222.us.us.us = phi <4 x float> [ %.267157237.us.us, %.preheader6903.us.us ], [ %.76720.us.us.us, %bb.am ] ; 7 uses
  %i.brq = trunc i64 %indvars.iv8265 to i32
  %i.brr = mul i32 %i.bqk, %i.brq
  %.reass.us.us7256.us = add i32 %i.brr, %invariant.op7231 ; 3 uses
  %i.brs = icmp slt i32 %.reass.us.us7256.us, 0
  br i1 %i.brs, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.us.us.us7282
  %i.brt = srem i32 %.reass.us.us7256.us, %i.bqj
  %i.bru = sdiv i32 %.reass.us.us7256.us, %i.bqj  ; 5 uses
  %.not2151.us.us.us = icmp eq i32 %i.brt, 0
  %.not2152.us.us.us = icmp slt i32 %i.bru, %i.bnm
  %or.cond8980 = select i1 %.not2151.us.us.us, i1 %.not2152.us.us.us, i1 false
  br i1 %or.cond8980, label %.split2195.us.us.us, label %bb.am

.split2195.us.us.us:                              ; preds = %bb.al
  %i.brv = add nuw nsw i64 %i.bro, %indvars.iv8265
  %i.brw = shl i64 %i.brv, 6
  %i.brx = and i64 %i.brw, 4294967232
  %i.bry = getelementptr inbounds nuw [2 x i8], ptr %.019617267.us, i64 %i.brx ; 64 uses
  switch i32 %i.bok, label %bb.am [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2279.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2278.us.us.us
    i32 2, label %_ZN4ncnn3MatD2Ev.exit2276.us.us.us
    i32 0, label %_ZN4ncnn3MatD2Ev.exit2272.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2279.us.us.us:               ; preds = %.split2195.us.us.us
  %i.brz = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !234
  %i.bsa = load ptr, ptr %0, align 8, !tbaa !19, !noalias !234
  %i.bsb = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !234
  %i.bsc = mul i64 %i.bsb, %i.bqo
  %i.bsd = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !234 ; 2 uses
  %i.bse = mul i64 %i.bsc, %i.bsd
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsa, i64 %i.bse
  %i.bsg = sext i32 %i.brz to i64
  %i.bsh = mul nsw i64 %i.bsg, %i.brp
  %i.bsi = mul i64 %i.bsh, %i.bsd
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsf, i64 %i.bsi
  %i.bsk = shl nsw i32 %i.bru, 4
  %i.bsl = sext i32 %i.bsk to i64
  %i.bsm = getelementptr inbounds [2 x i8], ptr %i.bsj, i64 %i.bsl
  %i.bsn = load <16 x i16>, ptr %i.bsm, align 2, !tbaa !28
  %i.bso = zext <16 x i16> %i.bsn to <16 x i32>
  %i.bsp = shl nuw <16 x i32> %i.bso, splat (i32 16) ; 16 uses
  %i.bsq = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bsr = shufflevector <16 x float> %i.bsq, <16 x float> poison, <4 x i32> zeroinitializer
  %i.bss = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bst = shufflevector <16 x float> %i.bss, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bsu = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bsv = shufflevector <16 x float> %i.bsu, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bsw = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bsx = shufflevector <16 x float> %i.bsw, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bsy = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bsz = shufflevector <16 x float> %i.bsy, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.bta = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btb = shufflevector <16 x float> %i.bta, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.btc = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btd = shufflevector <16 x float> %i.btc, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.bte = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btf = shufflevector <16 x float> %i.bte, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.btg = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.bth = shufflevector <16 x float> %i.btg, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.bti = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btj = shufflevector <16 x float> %i.bti, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.btk = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btl = shufflevector <16 x float> %i.btk, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.btm = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btn = shufflevector <16 x float> %i.btm, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.bto = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btp = shufflevector <16 x float> %i.bto, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.btq = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btr = shufflevector <16 x float> %i.btq, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.bts = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btt = shufflevector <16 x float> %i.bts, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.btu = bitcast <16 x i32> %i.bsp to <16 x float>
  %i.btv = shufflevector <16 x float> %i.btu, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.btw = load i64, ptr %i.bry, align 1, !tbaa !26
  %i.btx = insertelement <2 x i64> poison, i64 %i.btw, i64 0
  %i.bty = bitcast <2 x i64> %i.btx to <8 x i16>
  %i.btz = shufflevector <8 x i16> %i.bty, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bua = bitcast <8 x i16> %i.btz to <4 x float>
  %i.bub = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bsr, <4 x float> nofpclass(nan inf) %i.bua, <4 x float> nofpclass(nan inf) %.367167222.us.us.us)
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %i.bud = load i64, ptr %i.buc, align 1, !tbaa !26
  %i.bue = insertelement <2 x i64> poison, i64 %i.bud, i64 0
  %i.buf = bitcast <2 x i64> %i.bue to <8 x i16>
  %i.bug = shufflevector <8 x i16> %i.buf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.buh = bitcast <8 x i16> %i.bug to <4 x float>
  %i.bui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bst, <4 x float> nofpclass(nan inf) %i.buh, <4 x float> nofpclass(nan inf) %.266927223.us.us.us)
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bry, i64 16
  %i.buk = load i64, ptr %i.buj, align 1, !tbaa !26
  %i.bul = insertelement <2 x i64> poison, i64 %i.buk, i64 0
  %i.bum = bitcast <2 x i64> %i.bul to <8 x i16>
  %i.bun = shufflevector <8 x i16> %i.bum, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.buo = bitcast <8 x i16> %i.bun to <4 x float>
  %i.bup = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bsv, <4 x float> nofpclass(nan inf) %i.buo, <4 x float> nofpclass(nan inf) %.266747224.us.us.us)
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bry, i64 24
  %i.bur = load i64, ptr %i.buq, align 1, !tbaa !26
  %i.bus = insertelement <2 x i64> poison, i64 %i.bur, i64 0
  %i.but = bitcast <2 x i64> %i.bus to <8 x i16>
  %i.buu = shufflevector <8 x i16> %i.but, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.buv = bitcast <8 x i16> %i.buu to <4 x float>
  %i.buw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bsx, <4 x float> nofpclass(nan inf) %i.buv, <4 x float> nofpclass(nan inf) %.266567225.us.us.us)
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bry, i64 32
  %i.buy = load i64, ptr %i.bux, align 1, !tbaa !26
  %i.buz = insertelement <2 x i64> poison, i64 %i.buy, i64 0
  %i.bva = bitcast <2 x i64> %i.buz to <8 x i16>
  %i.bvb = shufflevector <8 x i16> %i.bva, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bvc = bitcast <8 x i16> %i.bvb to <4 x float>
  %i.bvd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bsz, <4 x float> nofpclass(nan inf) %i.bvc, <4 x float> nofpclass(nan inf) %i.bub)
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bry, i64 40
  %i.bvf = load i64, ptr %i.bve, align 1, !tbaa !26
  %i.bvg = insertelement <2 x i64> poison, i64 %i.bvf, i64 0
  %i.bvh = bitcast <2 x i64> %i.bvg to <8 x i16>
  %i.bvi = shufflevector <8 x i16> %i.bvh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bvj = bitcast <8 x i16> %i.bvi to <4 x float>
  %i.bvk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btb, <4 x float> nofpclass(nan inf) %i.bvj, <4 x float> nofpclass(nan inf) %i.bui)
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bry, i64 48
  %i.bvm = load i64, ptr %i.bvl, align 1, !tbaa !26
  %i.bvn = insertelement <2 x i64> poison, i64 %i.bvm, i64 0
  %i.bvo = bitcast <2 x i64> %i.bvn to <8 x i16>
  %i.bvp = shufflevector <8 x i16> %i.bvo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bvq = bitcast <8 x i16> %i.bvp to <4 x float>
  %i.bvr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btd, <4 x float> nofpclass(nan inf) %i.bvq, <4 x float> nofpclass(nan inf) %i.bup)
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bry, i64 56
  %i.bvt = load i64, ptr %i.bvs, align 1, !tbaa !26
  %i.bvu = insertelement <2 x i64> poison, i64 %i.bvt, i64 0
  %i.bvv = bitcast <2 x i64> %i.bvu to <8 x i16>
  %i.bvw = shufflevector <8 x i16> %i.bvv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bvx = bitcast <8 x i16> %i.bvw to <4 x float>
  %i.bvy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btf, <4 x float> nofpclass(nan inf) %i.bvx, <4 x float> nofpclass(nan inf) %i.buw)
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bry, i64 64
  %i.bwa = load i64, ptr %i.bvz, align 1, !tbaa !26
  %i.bwb = insertelement <2 x i64> poison, i64 %i.bwa, i64 0
  %i.bwc = bitcast <2 x i64> %i.bwb to <8 x i16>
  %i.bwd = shufflevector <8 x i16> %i.bwc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bwe = bitcast <8 x i16> %i.bwd to <4 x float>
  %i.bwf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bth, <4 x float> nofpclass(nan inf) %i.bwe, <4 x float> nofpclass(nan inf) %i.bvd)
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bry, i64 72
  %i.bwh = load i64, ptr %i.bwg, align 1, !tbaa !26
  %i.bwi = insertelement <2 x i64> poison, i64 %i.bwh, i64 0
  %i.bwj = bitcast <2 x i64> %i.bwi to <8 x i16>
  %i.bwk = shufflevector <8 x i16> %i.bwj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bwl = bitcast <8 x i16> %i.bwk to <4 x float>
  %i.bwm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btj, <4 x float> nofpclass(nan inf) %i.bwl, <4 x float> nofpclass(nan inf) %i.bvk)
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bry, i64 80
  %i.bwo = load i64, ptr %i.bwn, align 1, !tbaa !26
  %i.bwp = insertelement <2 x i64> poison, i64 %i.bwo, i64 0
  %i.bwq = bitcast <2 x i64> %i.bwp to <8 x i16>
  %i.bwr = shufflevector <8 x i16> %i.bwq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bws = bitcast <8 x i16> %i.bwr to <4 x float>
  %i.bwt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btl, <4 x float> nofpclass(nan inf) %i.bws, <4 x float> nofpclass(nan inf) %i.bvr)
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bry, i64 88
  %i.bwv = load i64, ptr %i.bwu, align 1, !tbaa !26
  %i.bww = insertelement <2 x i64> poison, i64 %i.bwv, i64 0
  %i.bwx = bitcast <2 x i64> %i.bww to <8 x i16>
  %i.bwy = shufflevector <8 x i16> %i.bwx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bwz = bitcast <8 x i16> %i.bwy to <4 x float>
  %i.bxa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btn, <4 x float> nofpclass(nan inf) %i.bwz, <4 x float> nofpclass(nan inf) %i.bvy)
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bry, i64 96
  %i.bxc = load i64, ptr %i.bxb, align 1, !tbaa !26
  %i.bxd = insertelement <2 x i64> poison, i64 %i.bxc, i64 0
  %i.bxe = bitcast <2 x i64> %i.bxd to <8 x i16>
  %i.bxf = shufflevector <8 x i16> %i.bxe, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bxg = bitcast <8 x i16> %i.bxf to <4 x float>
  %i.bxh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btp, <4 x float> nofpclass(nan inf) %i.bxg, <4 x float> nofpclass(nan inf) %i.bwf) ; 4 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bry, i64 104
  %i.bxj = load i64, ptr %i.bxi, align 1, !tbaa !26
  %i.bxk = insertelement <2 x i64> poison, i64 %i.bxj, i64 0
  %i.bxl = bitcast <2 x i64> %i.bxk to <8 x i16>
  %i.bxm = shufflevector <8 x i16> %i.bxl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bxn = bitcast <8 x i16> %i.bxm to <4 x float>
  %i.bxo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btr, <4 x float> nofpclass(nan inf) %i.bxn, <4 x float> nofpclass(nan inf) %i.bwm) ; 4 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bry, i64 112
  %i.bxq = load i64, ptr %i.bxp, align 1, !tbaa !26
  %i.bxr = insertelement <2 x i64> poison, i64 %i.bxq, i64 0
  %i.bxs = bitcast <2 x i64> %i.bxr to <8 x i16>
  %i.bxt = shufflevector <8 x i16> %i.bxs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bxu = bitcast <8 x i16> %i.bxt to <4 x float>
  %i.bxv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btt, <4 x float> nofpclass(nan inf) %i.bxu, <4 x float> nofpclass(nan inf) %i.bwt) ; 4 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bry, i64 120
  %i.bxx = load i64, ptr %i.bxw, align 1, !tbaa !26
  %i.bxy = insertelement <2 x i64> poison, i64 %i.bxx, i64 0
  %i.bxz = bitcast <2 x i64> %i.bxy to <8 x i16>
  %i.bya = shufflevector <8 x i16> %i.bxz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.byb = bitcast <8 x i16> %i.bya to <4 x float>
  %i.byc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btv, <4 x float> nofpclass(nan inf) %i.byb, <4 x float> nofpclass(nan inf) %i.bxa) ; 4 uses
  switch i32 %.fr8036, label %bb.am [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2278.us.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2276.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2272.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2278.us.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit2279.us.us.us, %.split2195.us.us.us
  %.46717.us.us.us = phi nsz <4 x float> [ %i.bxh, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %.367167222.us.us.us, %.split2195.us.us.us ]
  %.36693.us.us.us = phi nsz <4 x float> [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %.266927223.us.us.us, %.split2195.us.us.us ]
  %.36675.us.us.us = phi nsz <4 x float> [ %i.bxv, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %.266747224.us.us.us, %.split2195.us.us.us ]
  %.36657.us.us.us = phi nsz <4 x float> [ %i.byc, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %.266567225.us.us.us, %.split2195.us.us.us ]
  %i.byd = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !235
  %i.bye = load ptr, ptr %0, align 8, !tbaa !19, !noalias !235 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.cti = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cth
  %i.ctj = sext i32 %i.ctc to i64
  %i.ctk = mul nsw i64 %i.ctj, %i.brp
  %i.ctl = mul i64 %i.ctk, %i.ctg                 ; 7 uses
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cti, i64 %i.ctl
  %i.ctn = getelementptr inbounds [2 x i8], ptr %i.ctm, i64 %i.cpk
  %i.cto = load i16, ptr %i.ctn, align 2, !tbaa !28
  %i.ctp = zext i16 %i.cto to i32
  %i.ctq = shl nuw i32 %i.ctp, 16
  %i.ctr = insertelement <4 x i32> poison, i32 %i.ctq, i64 0
  %i.cts = bitcast <4 x i32> %i.ctr to <4 x float>
  %i.ctt = shufflevector <4 x float> %i.cts, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctu = mul i64 %i.cte, %i.bre
  %i.ctv = mul i64 %i.ctu, %i.ctg
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.ctv
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctw, i64 %i.ctl
  %i.cty = getelementptr inbounds [2 x i8], ptr %i.ctx, i64 %i.cpk
  %i.ctz = load i16, ptr %i.cty, align 2, !tbaa !28
  %i.cua = zext i16 %i.ctz to i32
  %i.cub = shl nuw i32 %i.cua, 16
  %i.cuc = insertelement <4 x i32> poison, i32 %i.cub, i64 0
  %i.cud = bitcast <4 x i32> %i.cuc to <4 x float>
  %i.cue = shufflevector <4 x float> %i.cud, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cuf = mul i64 %i.cte, %i.brf
  %i.cug = mul i64 %i.cuf, %i.ctg
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cug
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cuh, i64 %i.ctl
  %i.cuj = getelementptr inbounds [2 x i8], ptr %i.cui, i64 %i.cpk
  %i.cuk = load i16, ptr %i.cuj, align 2, !tbaa !28
  %i.cul = zext i16 %i.cuk to i32
  %i.cum = shl nuw i32 %i.cul, 16
  %i.cun = insertelement <4 x i32> poison, i32 %i.cum, i64 0
  %i.cuo = bitcast <4 x i32> %i.cun to <4 x float>
  %i.cup = shufflevector <4 x float> %i.cuo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cuq = mul i64 %i.cte, %i.brg
  %i.cur = mul i64 %i.cuq, %i.ctg
  %i.cus = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cur
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cus, i64 %i.ctl
  %i.cuu = getelementptr inbounds [2 x i8], ptr %i.cut, i64 %i.cpk
  %i.cuv = load i16, ptr %i.cuu, align 2, !tbaa !28
  %i.cuw = zext i16 %i.cuv to i32
  %i.cux = shl nuw i32 %i.cuw, 16
  %i.cuy = insertelement <4 x i32> poison, i32 %i.cux, i64 0
  %i.cuz = bitcast <4 x i32> %i.cuy to <4 x float>
  %i.cva = shufflevector <4 x float> %i.cuz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cvb = mul i64 %i.cte, %i.brh
  %i.cvc = mul i64 %i.cvb, %i.ctg
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cvc
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 %i.ctl
  %i.cvf = getelementptr inbounds [2 x i8], ptr %i.cve, i64 %i.cpk
  %i.cvg = load i16, ptr %i.cvf, align 2, !tbaa !28
  %i.cvh = zext i16 %i.cvg to i32
  %i.cvi = shl nuw i32 %i.cvh, 16
  %i.cvj = insertelement <4 x i32> poison, i32 %i.cvi, i64 0
  %i.cvk = bitcast <4 x i32> %i.cvj to <4 x float>
  %i.cvl = shufflevector <4 x float> %i.cvk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cvm = mul i64 %i.cte, %i.bri
  %i.cvn = mul i64 %i.cvm, %i.ctg
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cvn
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 %i.ctl
  %i.cvq = getelementptr inbounds [2 x i8], ptr %i.cvp, i64 %i.cpk
  %i.cvr = load i16, ptr %i.cvq, align 2, !tbaa !28
  %i.cvs = zext i16 %i.cvr to i32
  %i.cvt = shl nuw i32 %i.cvs, 16
  %i.cvu = insertelement <4 x i32> poison, i32 %i.cvt, i64 0
  %i.cvv = bitcast <4 x i32> %i.cvu to <4 x float>
  %i.cvw = shufflevector <4 x float> %i.cvv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cvx = mul i64 %i.cte, %i.bqn
  %i.cvy = mul i64 %i.cvx, %i.ctg
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cvy
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvz, i64 %i.ctl
  %i.cwb = getelementptr inbounds [2 x i8], ptr %i.cwa, i64 %i.cpk
  %i.cwc = load i16, ptr %i.cwb, align 2, !tbaa !28
  %i.cwd = zext i16 %i.cwc to i32
  %i.cwe = shl nuw i32 %i.cwd, 16
  %i.cwf = insertelement <4 x i32> poison, i32 %i.cwe, i64 0
  %i.cwg = bitcast <4 x i32> %i.cwf to <4 x float>
  %i.cwh = shufflevector <4 x float> %i.cwg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cwi = load i64, ptr %i.bry, align 1, !tbaa !26
  %i.cwj = insertelement <2 x i64> poison, i64 %i.cwi, i64 0
  %i.cwk = bitcast <2 x i64> %i.cwj to <8 x i16>
  %i.cwl = shufflevector <8 x i16> %i.cwk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cwm = bitcast <8 x i16> %i.cwl to <4 x float>
  %i.cwn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpr, <4 x float> nofpclass(nan inf) %i.cwm, <4 x float> nofpclass(nan inf) %.66719.us.us.us)
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %i.cwp = load i64, ptr %i.cwo, align 1, !tbaa !26
  %i.cwq = insertelement <2 x i64> poison, i64 %i.cwp, i64 0
  %i.cwr = bitcast <2 x i64> %i.cwq to <8 x i16>
  %i.cws = shufflevector <8 x i16> %i.cwr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cwt = bitcast <8 x i16> %i.cws to <4 x float>
  %i.cwu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqc, <4 x float> nofpclass(nan inf) %i.cwt, <4 x float> nofpclass(nan inf) %.56695.us.us.us)
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.bry, i64 16
  %i.cww = load i64, ptr %i.cwv, align 1, !tbaa !26
  %i.cwx = insertelement <2 x i64> poison, i64 %i.cww, i64 0
  %i.cwy = bitcast <2 x i64> %i.cwx to <8 x i16>
  %i.cwz = shufflevector <8 x i16> %i.cwy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cxa = bitcast <8 x i16> %i.cwz to <4 x float>
  %i.cxb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqn, <4 x float> nofpclass(nan inf) %i.cxa, <4 x float> nofpclass(nan inf) %.56677.us.us.us)
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.bry, i64 24
  %i.cxd = load i64, ptr %i.cxc, align 1, !tbaa !26
  %i.cxe = insertelement <2 x i64> poison, i64 %i.cxd, i64 0
  %i.cxf = bitcast <2 x i64> %i.cxe to <8 x i16>
  %i.cxg = shufflevector <8 x i16> %i.cxf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cxh = bitcast <8 x i16> %i.cxg to <4 x float>
  %i.cxi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqy, <4 x float> nofpclass(nan inf) %i.cxh, <4 x float> nofpclass(nan inf) %.56659.us.us.us)
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.bry, i64 32
  %i.cxk = load i64, ptr %i.cxj, align 1, !tbaa !26
  %i.cxl = insertelement <2 x i64> poison, i64 %i.cxk, i64 0
  %i.cxm = bitcast <2 x i64> %i.cxl to <8 x i16>
  %i.cxn = shufflevector <8 x i16> %i.cxm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cxo = bitcast <8 x i16> %i.cxn to <4 x float>
  %i.cxp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crj, <4 x float> nofpclass(nan inf) %i.cxo, <4 x float> nofpclass(nan inf) %i.cwn)
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.bry, i64 40
  %i.cxr = load i64, ptr %i.cxq, align 1, !tbaa !26
  %i.cxs = insertelement <2 x i64> poison, i64 %i.cxr, i64 0
  %i.cxt = bitcast <2 x i64> %i.cxs to <8 x i16>
  %i.cxu = shufflevector <8 x i16> %i.cxt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cxv = bitcast <8 x i16> %i.cxu to <4 x float>
  %i.cxw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cru, <4 x float> nofpclass(nan inf) %i.cxv, <4 x float> nofpclass(nan inf) %i.cwu)
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.bry, i64 48
  %i.cxy = load i64, ptr %i.cxx, align 1, !tbaa !26
  %i.cxz = insertelement <2 x i64> poison, i64 %i.cxy, i64 0
  %i.cya = bitcast <2 x i64> %i.cxz to <8 x i16>
  %i.cyb = shufflevector <8 x i16> %i.cya, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cyc = bitcast <8 x i16> %i.cyb to <4 x float>
  %i.cyd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csf, <4 x float> nofpclass(nan inf) %i.cyc, <4 x float> nofpclass(nan inf) %i.cxb)
  %i.cye = getelementptr inbounds nuw i8, ptr %i.bry, i64 56
  %i.cyf = load i64, ptr %i.cye, align 1, !tbaa !26
  %i.cyg = insertelement <2 x i64> poison, i64 %i.cyf, i64 0
  %i.cyh = bitcast <2 x i64> %i.cyg to <8 x i16>
  %i.cyi = shufflevector <8 x i16> %i.cyh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cyj = bitcast <8 x i16> %i.cyi to <4 x float>
  %i.cyk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csq, <4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) %i.cxi)
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.bry, i64 64
  %i.cym = load i64, ptr %i.cyl, align 1, !tbaa !26
  %i.cyn = insertelement <2 x i64> poison, i64 %i.cym, i64 0
  %i.cyo = bitcast <2 x i64> %i.cyn to <8 x i16>
  %i.cyp = shufflevector <8 x i16> %i.cyo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cyq = bitcast <8 x i16> %i.cyp to <4 x float>
  %i.cyr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctb, <4 x float> nofpclass(nan inf) %i.cyq, <4 x float> nofpclass(nan inf) %i.cxp)
  %i.cys = getelementptr inbounds nuw i8, ptr %i.bry, i64 72
  %i.cyt = load i64, ptr %i.cys, align 1, !tbaa !26
  %i.cyu = insertelement <2 x i64> poison, i64 %i.cyt, i64 0
  %i.cyv = bitcast <2 x i64> %i.cyu to <8 x i16>
  %i.cyw = shufflevector <8 x i16> %i.cyv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cyx = bitcast <8 x i16> %i.cyw to <4 x float>
  %i.cyy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctt, <4 x float> nofpclass(nan inf) %i.cyx, <4 x float> nofpclass(nan inf) %i.cxw)
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.bry, i64 80
  %i.cza = load i64, ptr %i.cyz, align 1, !tbaa !26
  %i.czb = insertelement <2 x i64> poison, i64 %i.cza, i64 0
  %i.czc = bitcast <2 x i64> %i.czb to <8 x i16>
  %i.czd = shufflevector <8 x i16> %i.czc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cze = bitcast <8 x i16> %i.czd to <4 x float>
  %i.czf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cue, <4 x float> nofpclass(nan inf) %i.cze, <4 x float> nofpclass(nan inf) %i.cyd)
  %i.czg = getelementptr inbounds nuw i8, ptr %i.bry, i64 88
  %i.czh = load i64, ptr %i.czg, align 1, !tbaa !26
  %i.czi = insertelement <2 x i64> poison, i64 %i.czh, i64 0
  %i.czj = bitcast <2 x i64> %i.czi to <8 x i16>
  %i.czk = shufflevector <8 x i16> %i.czj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.czl = bitcast <8 x i16> %i.czk to <4 x float>
  %i.czm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cup, <4 x float> nofpclass(nan inf) %i.czl, <4 x float> nofpclass(nan inf) %i.cyk)
  %i.czn = getelementptr inbounds nuw i8, ptr %i.bry, i64 96
  %i.czo = load i64, ptr %i.czn, align 1, !tbaa !26
  %i.czp = insertelement <2 x i64> poison, i64 %i.czo, i64 0
  %i.czq = bitcast <2 x i64> %i.czp to <8 x i16>
  %i.czr = shufflevector <8 x i16> %i.czq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.czs = bitcast <8 x i16> %i.czr to <4 x float>
  %i.czt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cva, <4 x float> nofpclass(nan inf) %i.czs, <4 x float> nofpclass(nan inf) %i.cyr)
  %i.czu = getelementptr inbounds nuw i8, ptr %i.bry, i64 104
  %i.czv = load i64, ptr %i.czu, align 1, !tbaa !26
  %i.czw = insertelement <2 x i64> poison, i64 %i.czv, i64 0
  %i.czx = bitcast <2 x i64> %i.czw to <8 x i16>
  %i.czy = shufflevector <8 x i16> %i.czx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.czz = bitcast <8 x i16> %i.czy to <4 x float>
  %i.daa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvl, <4 x float> nofpclass(nan inf) %i.czz, <4 x float> nofpclass(nan inf) %i.cyy)
  %i.dab = getelementptr inbounds nuw i8, ptr %i.bry, i64 112
  %i.dac = load i64, ptr %i.dab, align 1, !tbaa !26
  %i.dad = insertelement <2 x i64> poison, i64 %i.dac, i64 0
  %i.dae = bitcast <2 x i64> %i.dad to <8 x i16>
  %i.daf = shufflevector <8 x i16> %i.dae, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dag = bitcast <8 x i16> %i.daf to <4 x float>
  %i.dah = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvw, <4 x float> nofpclass(nan inf) %i.dag, <4 x float> nofpclass(nan inf) %i.czf)
  %i.dai = getelementptr inbounds nuw i8, ptr %i.bry, i64 120
  %i.daj = load i64, ptr %i.dai, align 1, !tbaa !26
  %i.dak = insertelement <2 x i64> poison, i64 %i.daj, i64 0
  %i.dal = bitcast <2 x i64> %i.dak to <8 x i16>
  %i.dam = shufflevector <8 x i16> %i.dal, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dan = bitcast <8 x i16> %i.dam to <4 x float>
  %i.dao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwh, <4 x float> nofpclass(nan inf) %i.dan, <4 x float> nofpclass(nan inf) %i.czm)
  br label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2272.us.us.us, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us, %.split2195.us.us.us, %bb.al, %.lr.ph.split.us.us.us7282
  %.76720.us.us.us = phi nsz <4 x float> [ %.367167222.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.367167222.us.us.us, %.split2195.us.us.us ], [ %i.bxh, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cfo, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.czt, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.cod, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.367167222.us.us.us, %bb.al ] ; 2 uses
  %.66696.us.us.us = phi nsz <4 x float> [ %.266927223.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266927223.us.us.us, %.split2195.us.us.us ], [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cfv, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.daa, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.cok, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266927223.us.us.us, %bb.al ] ; 2 uses
  %.66678.us.us.us = phi nsz <4 x float> [ %.266747224.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266747224.us.us.us, %.split2195.us.us.us ], [ %i.bxv, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cgc, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.dah, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.cor, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266747224.us.us.us, %bb.al ] ; 2 uses
  %.66660.us.us.us = phi nsz <4 x float> [ %.266567225.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266567225.us.us.us, %.split2195.us.us.us ], [ %i.byc, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cgj, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.dao, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.coy, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266567225.us.us.us, %bb.al ] ; 2 uses
  %indvars.iv.next8266 = add nuw nsw i64 %indvars.iv8265, 1 ; 2 uses
  %exitcond8269.not = icmp eq i64 %indvars.iv.next8266, %i.bqm
  br i1 %exitcond8269.not, label %..loopexit6904_crit_edge.us.us, label %.lr.ph.split.us.us.us7282, !llvm.loop !99

..loopexit6904_crit_edge.us.us:                   ; preds = %bb.am, %bb.ak, %.lr.ph7242.split.us.us
  %.86721.us.us.us = phi nsz <4 x float> [ %.267157237.us.us, %.lr.ph7242.split.us.us ], [ %.267157237.us.us, %bb.ak ], [ %.76720.us.us.us, %bb.am ] ; 2 uses
  %.76697.us.us.us = phi nsz <4 x float> [ %.166917238.us.us, %.lr.ph7242.split.us.us ], [ %.166917238.us.us, %bb.ak ], [ %.66696.us.us.us, %bb.am ] ; 2 uses
  %.76679.us.us.us = phi nsz <4 x float> [ %.166737239.us.us, %.lr.ph7242.split.us.us ], [ %.166737239.us.us, %bb.ak ], [ %.66678.us.us.us, %bb.am ] ; 2 uses
  %.76661.us.us.us = phi nsz <4 x float> [ %.166557240.us.us, %.lr.ph7242.split.us.us ], [ %.166557240.us.us, %bb.ak ], [ %.66660.us.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next8271 = add nuw nsw i64 %indvars.iv8270, 1 ; 2 uses
  %exitcond8274.not = icmp eq i64 %indvars.iv.next8271, %wide.trip.count8273
  br i1 %exitcond8274.not, label %._crit_edge7243.us, label %.lr.ph7242.split.us.us, !llvm.loop !100

._crit_edge7243.us:                               ; preds = %..loopexit6904_crit_edge.us.us, %.lr.ph7242.split.us.us.preheader, %.preheader6909.us
  %.us-phi7257.us = phi <4 x float> [ %.167147262.us, %.preheader6909.us ], [ %.167147262.us, %.lr.ph7242.split.us.us.preheader ], [ %.86721.us.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7258.us = phi <4 x float> [ %.066907263.us, %.preheader6909.us ], [ %.066907263.us, %.lr.ph7242.split.us.us.preheader ], [ %.76697.us.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7259.us = phi <4 x float> [ %.066727264.us, %.preheader6909.us ], [ %.066727264.us, %.lr.ph7242.split.us.us.preheader ], [ %.76679.us.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7260.us = phi <4 x float> [ %.066547265.us, %.preheader6909.us ], [ %.066547265.us, %.lr.ph7242.split.us.us.preheader ], [ %.76661.us.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %i.dap = getelementptr inbounds [2 x i8], ptr %.019617267.us, i64 %i.bpl ; 2 uses
  %indvars.iv.next8276 = add nuw nsw i64 %indvars.iv8275, 16 ; 2 uses
  %i.daq = icmp slt i64 %indvars.iv.next8276, %invariant.op8778
  br i1 %i.daq, label %.preheader6909.us, label %.preheader6913, !llvm.loop !101

.preheader6913:                                   ; preds = %._crit_edge7243.us, %.preheader6909.preheader, %_ZN4ncnn3MatD2Ev.exit2280
  %.16714.lcssa = phi <4 x float> [ %.06713, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %.06713, %.preheader6909.preheader ], [ %.us-phi7257.us, %._crit_edge7243.us ] ; 3 uses
  %.06690.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7258.us, %._crit_edge7243.us ] ; 3 uses
  %.06672.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7259.us, %._crit_edge7243.us ] ; 3 uses
  %.06654.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7260.us, %._crit_edge7243.us ] ; 3 uses
  %.01966.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %i.bpa, %.preheader6909.preheader ], [ %i.bpd, %._crit_edge7243.us ] ; 5 uses
  %.01961.lcssa = phi ptr [ %i.bqd, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %scevgep8264, %.preheader6909.preheader ], [ %i.dap, %._crit_edge7243.us ] ; 3 uses
  %i.dar = or disjoint i32 %.01966.lcssa, 7       ; 2 uses
  %i.das = icmp slt i32 %i.dar, %i.bnl
  br i1 %i.das, label %.preheader6908.lr.ph, label %.preheader6912

.preheader6908.lr.ph:                             ; preds = %.preheader6913
  %i.dat = load i32, ptr %i.j, align 4
  %invariant.op7310 = sub i32 %.neg6838, %i.dat
  %i.dau = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dav = load i32, ptr %i.a, align 4
  %.fr8038 = freeze i32 %i.dav                    ; 2 uses
  %i.daw = icmp sgt i32 %.fr8038, 0
  %i.dax = load i32, ptr %i.i, align 4
  %.neg6836 = add nuw nsw i32 %.019607505, 1
  %invariant.op7298 = sub i32 %.neg6836, %i.dax
  %i.day = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bpi, label %.preheader6908.us.preheader, label %.preheader6908.preheader

.preheader6908.preheader:                         ; preds = %.preheader6908.lr.ph
  %i.daz = sub i32 %i.bpe, %.01966.lcssa          ; 2 uses
  %i.dba = lshr i32 %i.daz, 2
  %i.dbb = and i32 %i.dba, 1073741822
  %narrow8740 = add nuw nsw i32 %i.dbb, 2
  %i.dbc = zext nneg i32 %narrow8740 to i64
  %i.dbd = mul nsw i64 %i.bpn, %i.dbc
  %scevgep8278 = getelementptr i8, ptr %.01961.lcssa, i64 %i.dbd
  %i.dbe = add i32 %.01966.lcssa, 8
  %i.dbf = and i32 %i.daz, -8
  %i.dbg = add i32 %i.dbe, %i.dbf
  br label %.preheader6912

.preheader6908.us.preheader:                      ; preds = %.preheader6908.lr.ph
  %i.dbh = load i32, ptr %i.c, align 4
  %i.dbi = load i32, ptr %i.d, align 4
  %i.dbj = zext i32 %.fr8038 to i64               ; 2 uses
  %i.dbk = zext i32 %.01966.lcssa to i64
  %i.dbl = zext nneg i32 %i.dar to i64
  br label %.preheader6908.us

.preheader6908.us:                                ; preds = %.preheader6908.us.preheader, %._crit_edge7305.us
  %indvars.iv8289.a = phi i64 [ %i.dbk, %.preheader6908.us.preheader ], [ %indvars.iv.next8290, %._crit_edge7305.us ] ; 10 uses
  %i.dbm = phi i64 [ %i.dbl, %.preheader6908.us.preheader ], [ %i.dmr, %._crit_edge7305.us ]
  %.119627322.us = phi ptr [ %.01961.lcssa, %.preheader6908.us.preheader ], [ %i.dmq, %._crit_edge7305.us ] ; 2 uses
  %.866627320.us = phi <4 x float> [ %.06654.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7315.us, %._crit_edge7305.us ] ; 2 uses
  %.866807319.us = phi <4 x float> [ %.06672.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7314.us, %._crit_edge7305.us ] ; 2 uses
  %.866987318.us = phi <4 x float> [ %.06690.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7313.us, %._crit_edge7305.us ] ; 2 uses
  %.967227317.us = phi <4 x float> [ %.16714.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7312.us, %._crit_edge7305.us ] ; 2 uses
  %i.dbn = or disjoint i64 %indvars.iv8289.a, 1
  %i.dbo = or disjoint i64 %indvars.iv8289.a, 2
  %i.dbp = or disjoint i64 %indvars.iv8289.a, 3
  %i.dbq = or disjoint i64 %indvars.iv8289.a, 4
  %i.dbr = or disjoint i64 %indvars.iv8289.a, 5
  %i.dbs = or disjoint i64 %indvars.iv8289.a, 6
  %i.dbt = lshr exact i64 %indvars.iv8289.a, 2    ; 2 uses
  %i.dbu = or disjoint i64 %i.dbt, 1
  %i.dbv = lshr exact i64 %indvars.iv8289.a, 3
  br i1 %i.daw, label %.lr.ph7304.split.us.us, label %._crit_edge7305.us

.lr.ph7304.split.us.us:                           ; preds = %.preheader6908.us, %..loopexit6902_crit_edge.us.us
  %indvars.iv8284.a = phi i64 [ %indvars.iv.next8285, %..loopexit6902_crit_edge.us.us ], [ 0, %.preheader6908.us ] ; 3 uses
  %.966637302.us.us = phi <4 x float> [ %.126666.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866627320.us, %.preheader6908.us ] ; 3 uses
  %.966817301.us.us = phi <4 x float> [ %.126684.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866807319.us, %.preheader6908.us ] ; 3 uses
  %.966997300.us.us = phi <4 x float> [ %.126702.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866987318.us, %.preheader6908.us ] ; 3 uses
  %.1067237299.us.us = phi <4 x float> [ %.136726.us.us, %..loopexit6902_crit_edge.us.us ], [ %.967227317.us, %.preheader6908.us ] ; 3 uses
  %i.dbw = trunc i64 %indvars.iv8284.a to i32
  %i.dbx = mul i32 %i.dbi, %i.dbw
  %.reass7311.us.us = add i32 %i.dbx, %invariant.op7310 ; 3 uses
  %i.dby = icmp slt i32 %.reass7311.us.us, 0
  br i1 %i.dby, label %..loopexit6902_crit_edge.us.us, label %bb.an

bb.an:                                            ; preds = %.lr.ph7304.split.us.us
  %i.dbz = srem i32 %.reass7311.us.us, %i.dau
  %i.dca = sdiv i32 %.reass7311.us.us, %i.dau     ; 2 uses
  %.not2145.us.us = icmp eq i32 %i.dbz, 0
  %.not2146.us.us = icmp slt i32 %i.dca, %i.bnn
  %or.cond8981 = select i1 %.not2145.us.us, i1 %.not2146.us.us, i1 false
  br i1 %or.cond8981, label %.preheader6901.us.us, label %..loopexit6902_crit_edge.us.us

.preheader6901.us.us:                             ; preds = %bb.an
  %i.dcb = mul nuw nsw i64 %indvars.iv8284.a, %i.dbj
  %i.dcc = sext i32 %i.dca to i64                 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.preheader6901.us.us
  %indvars.iv8279 = phi i64 [ %indvars.iv.next8280, %bb.ar ], [ 0, %.preheader6901.us.us ] ; 3 uses
  %.1066647292.us.us = phi <4 x float> [ %.116665.us.us, %bb.ar ], [ %.966637302.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1066827291.us.us = phi <4 x float> [ %.116683.us.us, %bb.ar ], [ %.966817301.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1067007290.us.us = phi <4 x float> [ %.116701.us.us, %bb.ar ], [ %.966997300.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1167247289.us.us = phi <4 x float> [ %.126725.us.us, %bb.ar ], [ %.1067237299.us.us, %.preheader6901.us.us ] ; 4 uses
  %i.dcd = trunc i64 %indvars.iv8279 to i32
  %i.dce = mul i32 %i.dbh, %i.dcd
  %.reass.us.us7337 = add i32 %i.dce, %invariant.op7298 ; 3 uses
  %i.dcf = icmp slt i32 %.reass.us.us7337, 0
  br i1 %i.dcf, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dcg = srem i32 %.reass.us.us7337, %i.day
  %i.dch = sdiv i32 %.reass.us.us7337, %i.day     ; 4 uses
  %.not2147.us.us = icmp eq i32 %i.dcg, 0
  %.not2148.us.us = icmp slt i32 %i.dch, %i.bnm
  %or.cond8982 = select i1 %.not2147.us.us, i1 %.not2148.us.us, i1 false
  br i1 %or.cond8982, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dci = add nuw nsw i64 %i.dcb, %indvars.iv8279
  %i.dcj = shl i64 %i.dci, 5
  %i.dck = and i64 %i.dcj, 4294967264
  %i.dcl = getelementptr inbounds nuw [2 x i8], ptr %.119627322.us, i64 %i.dck ; 8 uses
  switch i32 %.fr8036, label %bb.ar [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2256.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2255.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2253.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2253.us.us:                  ; preds = %bb.aq
  %i.dcm = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !239
  %i.dcn = load ptr, ptr %0, align 8, !tbaa !19, !noalias !239 ; 8 uses
  %i.dco = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !239 ; 8 uses
  %i.dcp = mul i64 %i.dco, %indvars.iv8289.a
  %i.dcq = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !239 ; 9 uses
  %i.dcr = mul i64 %i.dcp, %i.dcq
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.dcr
  %i.dct = sext i32 %i.dcm to i64
  %i.dcu = mul nsw i64 %i.dct, %i.dcc
  %i.dcv = mul i64 %i.dcu, %i.dcq                 ; 8 uses
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcs, i64 %i.dcv
  %i.dcx = sext i32 %i.dch to i64                 ; 8 uses
  %i.dcy = getelementptr inbounds [2 x i8], ptr %i.dcw, i64 %i.dcx
  %i.dcz = load i16, ptr %i.dcy, align 2, !tbaa !28
  %i.dda = zext i16 %i.dcz to i32
  %i.ddb = shl nuw i32 %i.dda, 16
  %i.ddc = insertelement <4 x i32> poison, i32 %i.ddb, i64 0
  %i.ddd = bitcast <4 x i32> %i.ddc to <4 x float>
  %i.dde = shufflevector <4 x float> %i.ddd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddf = mul i64 %i.dco, %i.dbn
  %i.ddg = mul i64 %i.ddf, %i.dcq
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddh, i64 %i.dcv
  %i.ddj = getelementptr inbounds [2 x i8], ptr %i.ddi, i64 %i.dcx
  %i.ddk = load i16, ptr %i.ddj, align 2, !tbaa !28
  %i.ddl = zext i16 %i.ddk to i32
  %i.ddm = shl nuw i32 %i.ddl, 16
  %i.ddn = insertelement <4 x i32> poison, i32 %i.ddm, i64 0
  %i.ddo = bitcast <4 x i32> %i.ddn to <4 x float>
  %i.ddp = shufflevector <4 x float> %i.ddo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddq = mul i64 %i.dco, %i.dbo
  %i.ddr = mul i64 %i.ddq, %i.dcq
  %i.dds = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.ddr
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dds, i64 %i.dcv
  %i.ddu = getelementptr inbounds [2 x i8], ptr %i.ddt, i64 %i.dcx
  %i.ddv = load i16, ptr %i.ddu, align 2, !tbaa !28
  %i.ddw = zext i16 %i.ddv to i32
  %i.ddx = shl nuw i32 %i.ddw, 16
  %i.ddy = insertelement <4 x i32> poison, i32 %i.ddx, i64 0
  %i.ddz = bitcast <4 x i32> %i.ddy to <4 x float>
  %i.dea = shufflevector <4 x float> %i.ddz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.deb = mul i64 %i.dco, %i.dbp
  %i.dec = mul i64 %i.deb, %i.dcq
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.dec
  %i.dee = getelementptr inbounds nuw i8, ptr %i.ded, i64 %i.dcv
  %i.def = getelementptr inbounds [2 x i8], ptr %i.dee, i64 %i.dcx
  %i.deg = load i16, ptr %i.def, align 2, !tbaa !28
  %i.deh = zext i16 %i.deg to i32
  %i.dei = shl nuw i32 %i.deh, 16
  %i.dej = insertelement <4 x i32> poison, i32 %i.dei, i64 0
  %i.dek = bitcast <4 x i32> %i.dej to <4 x float>
  %i.del = shufflevector <4 x float> %i.dek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dem = mul i64 %i.dco, %i.dbq
  %i.den = mul i64 %i.dem, %i.dcq
  %i.deo = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.den
  %i.dep = getelementptr inbounds nuw i8, ptr %i.deo, i64 %i.dcv
  %i.deq = getelementptr inbounds [2 x i8], ptr %i.dep, i64 %i.dcx
  %i.der = load i16, ptr %i.deq, align 2, !tbaa !28
  %i.des = zext i16 %i.der to i32
  %i.det = shl nuw i32 %i.des, 16
  %i.deu = insertelement <4 x i32> poison, i32 %i.det, i64 0
  %i.dev = bitcast <4 x i32> %i.deu to <4 x float>
  %i.dew = shufflevector <4 x float> %i.dev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dex = mul i64 %i.dco, %i.dbr
  %i.dey = mul i64 %i.dex, %i.dcq
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dcn, i64 %i.dey
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 %i.dcv
  %i.dfb = getelementptr inbounds [2 x i8], ptr %i.dfa, i64 %i.dcx
  %i.dfc = load i16, ptr %i.dfb, align 2, !tbaa !28
  %i.dfd = zext i16 %i.dfc to i32
  %i.dfe = shl nuw i32 %i.dfd, 16
  %i.dff = insertelement <4 x i32> poison, i32 %i.dfe, i64 0
  %i.dfg = bitcast <4 x i32> %i.dff to <4 x float>
  %i.dfh = shufflevector <4 x float> %i.dfg, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.eag = insertelement <4 x float> poison, float %i.eaf, i64 0
  %i.eah = shufflevector <4 x float> %i.eag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eai = getelementptr inbounds nuw i8, ptr %i.eae, i64 4
  %i.eaj = load float, ptr %i.eai, align 4, !tbaa !30
  %i.eak = insertelement <4 x float> poison, float %i.eaj, i64 0
  %i.eal = shufflevector <4 x float> %i.eak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eam = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> nofpclass(nan inf) %i.eah)
  %i.ean = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eam, <4 x float> nofpclass(nan inf) %i.eal)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %._crit_edge7493
  %i.eao = fneg fast <4 x float> %i.dzu
  %i.eap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eao, <4 x float> splat (float f0x42B0C0A5))
  %i.eaq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eap, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ear = fmul fast <4 x float> %i.eaq, splat (float f0x3FB8AA3B)
  %i.eas = fadd fast <4 x float> %i.ear, splat (float 5.000000e-01) ; 2 uses
  %i.eat = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eas)
  %i.eau = sitofp fast <4 x i32> %i.eat to <4 x float> ; 2 uses
  %i.eav = fcmp fast olt <4 x float> %i.eas, %i.eau
  %i.eaw = select <4 x i1> %i.eav, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eax = fsub fast <4 x float> %i.eau, %i.eaw   ; 2 uses
  %i.eay = fneg fast <4 x float> %i.eax           ; 2 uses
  %i.eaz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eay, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.eaq)
  %i.eba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eay, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eaz) ; 8 uses
  %i.ebb = fmul fast <4 x float> %i.eba, %i.eba
  %i.ebc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eba, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.ebd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebc, <4 x float> nofpclass(nan inf) %i.eba, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.ebe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebd, <4 x float> nofpclass(nan inf) %i.eba, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.ebf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebe, <4 x float> nofpclass(nan inf) %i.eba, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ebg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.eba, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.ebh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebg, <4 x float> nofpclass(nan inf) %i.ebb, <4 x float> nofpclass(nan inf) %i.eba)
  %i.ebi = fadd fast <4 x float> %i.ebh, splat (float 1.000000e+00)
  %i.ebj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eax)
  %i.ebk = shl <4 x i32> %i.ebj, splat (i32 23)
  %i.ebl = add <4 x i32> %i.ebk, splat (i32 1065353216)
  %i.ebm = bitcast <4 x i32> %i.ebl to <4 x float>
  %i.ebn = fmul fast <4 x float> %i.ebi, %i.ebm
  %i.ebo = fadd fast <4 x float> %i.ebn, splat (float 1.000000e+00)
  %i.ebp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ebo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge7493
  %i.ebq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dzu, <4 x float> splat (float f0x42B0C0A5))
  %i.ebr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ebq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ebs = fmul fast <4 x float> %i.ebr, splat (float f0x3FB8AA3B)
  %i.ebt = fadd fast <4 x float> %i.ebs, splat (float 5.000000e-01) ; 2 uses
  %i.ebu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ebt)
  %i.ebv = sitofp fast <4 x i32> %i.ebu to <4 x float> ; 2 uses
  %i.ebw = fcmp fast olt <4 x float> %i.ebt, %i.ebv
  %i.ebx = select <4 x i1> %i.ebw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eby = fsub fast <4 x float> %i.ebv, %i.ebx   ; 2 uses
  %i.ebz = fneg fast <4 x float> %i.eby           ; 2 uses
  %i.eca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ebz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ebr)
  %i.ecb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ebz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eca) ; 8 uses
  %i.ecc = fmul fast <4 x float> %i.ecb, %i.ecb
  %i.ecd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ecb, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.ece = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ecd, <4 x float> nofpclass(nan inf) %i.ecb, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.ecf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ece, <4 x float> nofpclass(nan inf) %i.ecb, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.ecg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ecf, <4 x float> nofpclass(nan inf) %i.ecb, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ech = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ecg, <4 x float> nofpclass(nan inf) %i.ecb, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.eci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ech, <4 x float> nofpclass(nan inf) %i.ecc, <4 x float> nofpclass(nan inf) %i.ecb)
  %i.ecj = fadd fast <4 x float> %i.eci, splat (float 1.000000e+00)
  %i.eck = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eby)
  %i.ecl = shl <4 x i32> %i.eck, splat (i32 23)
  %i.ecm = add <4 x i32> %i.ecl, splat (i32 1065353216)
  %i.ecn = bitcast <4 x i32> %i.ecm to <4 x float>
  %i.eco = fmul fast <4 x float> %i.ecj, %i.ecn
  %i.ecp = fadd fast <4 x float> %i.eco, splat (float 1.000000e+00) ; 2 uses
  %i.ecq = fcmp fast ole <4 x float> %i.ecp, zeroinitializer
  %i.ecr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ecp, <4 x float> splat (float f0x00800000))
  %i.ecs = bitcast <4 x float> %i.ecr to <4 x i32> ; 2 uses
  %i.ect = lshr <4 x i32> %i.ecs, splat (i32 23)
  %i.ecu = and <4 x i32> %i.ecs, splat (i32 -2139095041)
  %i.ecv = or disjoint <4 x i32> %i.ecu, splat (i32 1056964608)
  %i.ecw = bitcast <4 x i32> %i.ecv to <4 x float> ; 3 uses
  %i.ecx = add nsw <4 x i32> %i.ect, splat (i32 -127)
  %i.ecy = sitofp fast <4 x i32> %i.ecx to <4 x float> ; 2 uses
  %i.ecz = fadd fast <4 x float> %i.ecy, splat (float 1.000000e+00)
  %i.eda = fcmp fast olt <4 x float> %i.ecw, splat (float f0x3F3504F3) ; 2 uses
  %i.edb = select <4 x i1> %i.eda, <4 x float> %i.ecw, <4 x float> zeroinitializer
  %i.edc = fadd fast <4 x float> %i.ecw, splat (float -1.000000e+00)
  %i.edd = select fast <4 x i1> %i.eda, <4 x float> %i.ecy, <4 x float> %i.ecz ; 2 uses
  %i.ede = fadd fast <4 x float> %i.edc, %i.edb   ; 12 uses
  %i.edf = fmul fast <4 x float> %i.ede, %i.ede   ; 2 uses
  %i.edg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.edh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edg, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.edi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edh, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.edj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edi, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.edk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edj, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.edl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edk, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.edm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edl, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.edn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edm, <4 x float> nofpclass(nan inf) %i.ede, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.edo = fmul fast <4 x float> %i.edf, %i.ede
  %i.edp = fmul fast <4 x float> %i.edo, %i.edn
  %i.edq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edd, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.edp)
  %i.edr = fneg fast <4 x float> %i.edf
  %i.eds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.edr, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.edq)
  %i.edt = fadd fast <4 x float> %i.eds, %i.ede
  %i.edu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.edd, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.edt)
  %.neg = fmul fast <4 x float> %i.edu, splat (float -2.000000e+00)
  %i.edv = select fast <4 x i1> %i.ecq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.edw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.edv, <4 x float> splat (float f0x42B0C0A5))
  %i.edx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.edw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.edy = fmul fast <4 x float> %i.edx, splat (float f0x3FB8AA3B)
  %i.edz = fadd fast <4 x float> %i.edy, splat (float 5.000000e-01) ; 2 uses
  %i.eea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.edz)
  %i.eeb = sitofp fast <4 x i32> %i.eea to <4 x float> ; 2 uses
  %i.eec = fcmp fast olt <4 x float> %i.edz, %i.eeb
  %i.eed = select <4 x i1> %i.eec, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eee = fsub fast <4 x float> %i.eeb, %i.eed   ; 2 uses
  %i.eef = fneg fast <4 x float> %i.eee           ; 2 uses
  %i.eeg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eef, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.edx)
  %i.eeh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.eef, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.eeg) ; 8 uses
  %i.eei = fmul fast <4 x float> %i.eeh, %i.eeh
  %i.eej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eeh, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.eek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eej, <4 x float> nofpclass(nan inf) %i.eeh, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.eel = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eek, <4 x float> nofpclass(nan inf) %i.eeh, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.eem = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eel, <4 x float> nofpclass(nan inf) %i.eeh, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.een = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eem, <4 x float> nofpclass(nan inf) %i.eeh, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.eeo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.een, <4 x float> nofpclass(nan inf) %i.eei, <4 x float> nofpclass(nan inf) %i.eeh)
  %i.eep = fadd fast <4 x float> %i.eeo, splat (float 1.000000e+00)
  %i.eeq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eee)
  %i.eer = shl <4 x i32> %i.eeq, splat (i32 23)
  %i.ees = add <4 x i32> %i.eer, splat (i32 1065353216)
  %i.eet = bitcast <4 x i32> %i.ees to <4 x float>
  %i.eeu = fmul fast <4 x float> %i.eep, %i.eet
  %i.eev = fadd fast <4 x float> %i.eeu, splat (float 1.000000e+00)
  %i.eew = fdiv fast <4 x float> splat (float 2.000000e+00), %i.eev
  %i.eex = fadd fast <4 x float> %i.eew, splat (float -1.000000e+00)
  %i.eey = fmul fast <4 x float> %i.eex, %i.dzu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %._crit_edge7493
  %i.eez = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.efa = load float, ptr %i.eez, align 4, !tbaa !30
  %i.efb = insertelement <4 x float> poison, float %i.efa, i64 0
  %i.efc = shufflevector <4 x float> %i.efb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.efd = getelementptr inbounds nuw i8, ptr %i.eez, i64 4
  %i.efe = load float, ptr %i.efd, align 4, !tbaa !30
  %i.eff = insertelement <4 x float> poison, float %i.efe, i64 0
  %i.efg = shufflevector <4 x float> %i.eff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.efh = fmul fast <4 x float> %i.efc, %i.dzu
  %i.efi = fadd fast <4 x float> %i.efh, %i.efg
  %i.efj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.efi, <4 x float> zeroinitializer)
  %i.efk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.efj, <4 x float> splat (float 1.000000e+00))
  %i.efl = fmul fast <4 x float> %i.efk, %i.dzu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge7493, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.0.i2461 = phi nsz <4 x float> [ %i.efl, %bb.bm ], [ %i.dzv, %bb.bh ], [ %i.ead, %bb.bi ], [ %i.ean, %bb.bj ], [ %i.ebp, %bb.bk ], [ %i.eey, %bb.bl ], [ %i.dzu, %._crit_edge7493 ] ; 2 uses
  switch i32 %i.bnq, label %bb.bo [
    i32 4, label %.thread6745
    i32 1, label %bb.bn
  ]

.thread6745:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.efm = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i2461)
  %i.efn = bitcast <8 x bfloat> %i.efm to <2 x i64>
  %i.efo = extractelement <2 x i64> %i.efn, i64 0
  store i64 %i.efo, ptr %.119567506, align 1, !tbaa !26
  %i.efp = getelementptr inbounds nuw i8, ptr %.119567506, i64 8
  br label %bb.bo

bb.bn:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.efq = bitcast <4 x float> %.0.i2461 to <8 x i16> ; 4 uses
  %i.efr = extractelement <8 x i16> %i.efq, i64 1
  store i16 %i.efr, ptr %.119567506, align 2, !tbaa !28
  %i.efs = extractelement <8 x i16> %i.efq, i64 3
  %i.eft = load i64, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  %i.efu = getelementptr inbounds nuw [2 x i8], ptr %.119567506, i64 %i.eft
  store i16 %i.efs, ptr %i.efu, align 2, !tbaa !28
  %i.efv = extractelement <8 x i16> %i.efq, i64 5
  %.idx = shl i64 %i.eft, 2
  %i.efw = getelementptr inbounds nuw i8, ptr %.119567506, i64 %.idx
  store i16 %i.efv, ptr %i.efw, align 2, !tbaa !28
  %i.efx = extractelement <8 x i16> %i.efq, i64 7
  %.idx2132 = mul i64 %i.eft, 6
  %i.efy = getelementptr inbounds nuw i8, ptr %.119567506, i64 %.idx2132
  store i16 %i.efx, ptr %i.efy, align 2, !tbaa !28
  %i.efz = getelementptr inbounds nuw i8, ptr %.119567506, i64 2
  br label %bb.bo

bb.bo:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread6745, %bb.bn
  %.31958 = phi ptr [ %i.efz, %bb.bn ], [ %.119567506, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.efp, %.thread6745 ] ; 2 uses
  %i.ega = add nuw nsw i32 %.019607505, 1         ; 2 uses
  %exitcond8339.not = icmp eq i32 %i.ega, %i.bno
  br i1 %exitcond8339.not, label %._crit_edge7507, label %bb.ai, !llvm.loop !128

._crit_edge7786.split:                            ; preds = %._crit_edge7784, %_ZN4ncnn3MatD2Ev.exit2237.lr.ph, %._crit_edge7513
  %i.egb = shl nsw i32 %i.bls, 1
  %i.egc = add nsw i32 %i.egb, %i.blq             ; 2 uses
  %i.egd = icmp slt i32 %i.egc, %i.s
  br i1 %i.egd, label %_ZN4ncnn3MatD2Ev.exit2218.lr.ph, label %._crit_edge8018.split

_ZN4ncnn3MatD2Ev.exit2218.lr.ph:                  ; preds = %._crit_edge7786.split
  %i.ege = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.egf = load i32, ptr %i.ege, align 8, !tbaa !15
  %.fr8050 = freeze i32 %i.egf                    ; 8 uses
  %i.egg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.egh = load i32, ptr %i.egg, align 8, !tbaa !16
  %i.egi = mul i32 %i.egh, %.fr8050               ; 15 uses
  %i.egj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 12 uses
  %i.egk = load i32, ptr %i.egj, align 4, !tbaa !22 ; 6 uses
  %i.egl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.egm = load i32, ptr %i.egl, align 8, !tbaa !23 ; 5 uses
  %i.egn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ego = load i32, ptr %i.egn, align 4, !tbaa !22 ; 2 uses
  %i.egp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.egq = load i32, ptr %i.egp, align 8, !tbaa !23 ; 2 uses
  %i.egr = load ptr, ptr %1, align 8, !tbaa !19, !noalias !246
  %i.egs = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !246
  %i.egt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.egu = load i64, ptr %i.egt, align 8, !tbaa !24, !noalias !246
  %factor.op.mul8019 = mul i64 %i.egs, %i.egu
  %i.egv = icmp slt i32 %i.egq, 1
  %i.egw = icmp slt i32 %i.ego, 1
  %i.egx = icmp sgt i32 %i.egi, 15
  %i.egy = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr8050)
  %14 = icmp ne i32 %i.egy, 1
  %i.egz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr8050, i1 true)
  %i.eha = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.ehb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.ehc = icmp eq i32 %.fr8050, 1
  %brmerge8028 = select i1 %i.egv, i1 true, i1 %i.egw
  br i1 %brmerge8028, label %._crit_edge8018.split, label %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split

_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split:      ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph
  %i.ehd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ehe = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ehf = load ptr, ptr %2, align 8, !tbaa !19, !noalias !247
  %i.ehg = load i64, ptr %i.ehe, align 8, !tbaa !17, !noalias !247
  %i.ehh = load i64, ptr %i.ehd, align 8, !tbaa !24, !noalias !247
  %factor.op.mul8022 = mul i64 %i.ehg, %i.ehh
  %i.ehi = add i32 %i.egi, -16                    ; 2 uses
  %i.ehj = lshr i32 %i.ehi, 3
  %i.ehk = and i32 %i.ehj, 536870910
  %narrow8747 = add nuw nsw i32 %i.ehk, 2
  %i.ehl = zext nneg i32 %narrow8747 to i64
  %i.ehm = and i32 %i.ehi, -16
  %i.ehn = add nuw i32 %i.ehm, 16
  %i.eho = sext i32 %i.egi to i64
  %i.ehp = add i32 %i.egi, -8
  %i.ehq = add i32 %i.egi, -4                     ; 2 uses
  %i.ehr = add i32 %i.egi, -2
  %i.ehs = sext i32 %i.egc to i64
  %wide.trip.count8540 = sext i32 %i.s to i64
  %invariant.op8780 = add nsw i64 %i.eho, -15
  br label %_ZN4ncnn3MatD2Ev.exit2218

_ZN4ncnn3MatD2Ev.exit2237:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split, %._crit_edge7784
  %indvars.iv8439 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit2237.lr.ph.split.split ], [ %indvars.iv.next8440, %._crit_edge7784 ] ; 2 uses
  %i.eht = shl nuw nsw i64 %indvars.iv8439, 1
  %i.ehu = add nsw i64 %i.eht, %i.bni             ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.ehu
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.bmh, i64 %.reass
  %i.ehw = or disjoint i64 %i.ehu, 1
  %.reass7789 = mul i64 %factor.op.mul, %i.ehw
  %i.ehx = getelementptr inbounds nuw i8, ptr %i.bmh, i64 %.reass7789
  %i.ehy = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not2110 = icmp eq ptr %i.ehy, null
  %i.ehz = getelementptr inbounds [4 x i8], ptr %i.ehy, i64 %i.ehu
  %i.eia = trunc nsw i64 %i.ehu to i32            ; 3 uses
  %i.eib = sdiv i32 %i.eia, 16
  %i.eic = srem i32 %i.eia, 16
  %.lhs.trunc6767 = trunc nsw i32 %i.eic to i8
  %i.eid = sdiv i8 %.lhs.trunc6767, 8
  %.sext6768 = sext i8 %i.eid to i32
  %i.eie = insertelement <2 x i32> poison, i32 %i.eia, i64 0
  %i.eif = shufflevector <2 x i32> %i.eie, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eig = srem <2 x i32> %i.eif, <i32 8, i32 4>  ; 2 uses
  %i.eih = bitcast <2 x i32> %i.eig to <8 x i8>
  %.lhs.trunc6769 = extractelement <8 x i8> %i.eih, i64 0
  %i.eii = sdiv i8 %.lhs.trunc6769, 4
  %.sext6770 = sext i8 %i.eii to i32
  %i.eij = extractelement <2 x i32> %i.eig, i64 1
  %i.eik = ashr exact i32 %i.eij, 1
  %i.eil = add nsw i32 %i.eik, %i.eib
  %i.eim = add nsw i32 %i.eil, %.sext6768
  %i.ein = add nsw i32 %i.eim, %.sext6770
  %i.eio = sext i32 %i.ein to i64
  %i.eip = load i32, ptr %i.g, align 4
  %.reass7793 = mul i64 %factor.op.mul7792, %i.eio
  %i.eiq = getelementptr i8, ptr %i.bmv, i64 %.reass7793 ; 3 uses
  br label %.preheader6894

.preheader6894:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2237, %._crit_edge7778
  %.019327783 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %.neg6818, %._crit_edge7778 ]
  %.019337782 = phi ptr [ %i.ehx, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.fjt, %._crit_edge7778 ]
  %.019357781 = phi ptr [ %i.ehv, %_ZN4ncnn3MatD2Ev.exit2237 ], [ %i.fjs, %._crit_edge7778 ]
  %i.eir = load i32, ptr %i.b, align 4            ; 6 uses
  %i.eis = icmp sgt i32 %i.eir, 0                 ; 5 uses
  %.neg6818 = add nuw nsw i32 %.019327783, 1      ; 7 uses
  %i.eit = load i32, ptr %i.k, align 4            ; 5 uses
  %i.eiu = shl i32 %i.eit, 5
  %i.eiv = sext i32 %i.eiu to i64                 ; 2 uses
  %i.eiw = shl i32 %i.eit, 4
  %i.eix = sext i32 %i.eiw to i64                 ; 2 uses
  %i.eiy = shl i32 %i.eit, 3
  %i.eiz = sext i32 %i.eiy to i64                 ; 3 uses
  %i.eja = shl i32 %i.eit, 2
  %i.ejb = sext i32 %i.eja to i64                 ; 3 uses
  %i.ejc = shl nsw i32 %i.eit, 1
  %i.ejd = sext i32 %i.ejc to i64
  %i.eje = mul nsw i64 %i.bnb, %i.eiv
  %scevgep8347 = getelementptr i8, ptr %i.eiq, i64 %i.eje
  %wide.trip.count8360 = zext nneg i32 %i.eir to i64
  %wide.trip.count8378 = zext nneg i32 %i.eir to i64
  %wide.trip.count8402 = zext nneg i32 %i.eir to i64
  %wide.trip.count8419 = zext nneg i32 %i.eir to i64
  %wide.trip.count8432 = zext nneg i32 %i.eir to i64
  br label %bb.bp

._crit_edge7784:                                  ; preds = %._crit_edge7778
  %indvars.iv.next8440 = add nuw nsw i64 %indvars.iv8439, 1 ; 2 uses
  %exitcond8443.not = icmp eq i64 %indvars.iv.next8440, %wide.trip.count8442
  br i1 %exitcond8443.not, label %._crit_edge7786.split, label %_ZN4ncnn3MatD2Ev.exit2237, !llvm.loop !133

._crit_edge7778:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %exitcond8438.not = icmp eq i32 %.neg6818, %i.bmg
  br i1 %exitcond8438.not, label %._crit_edge7784, label %.preheader6894, !llvm.loop !134

bb.bp:                                            ; preds = %.preheader6894, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462
  %.019317777 = phi i32 [ 0, %.preheader6894 ], [ %i.fju, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 6 uses
  %.119347776 = phi ptr [ %.019337782, %.preheader6894 ], [ %i.fjt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  %.119367775 = phi ptr [ %.019357781, %.preheader6894 ], [ %i.fjs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 ] ; 2 uses
  br i1 %.not2110, label %_ZN4ncnn3MatD2Ev.exit2235, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ejf = load <2 x float>, ptr %i.ehz, align 4, !tbaa !30
  br label %_ZN4ncnn3MatD2Ev.exit2235

_ZN4ncnn3MatD2Ev.exit2235:                        ; preds = %bb.bq, %bb.bp
  %i.ejg = phi <2 x float> [ %i.ejf, %bb.bq ], [ zeroinitializer, %bb.bp ]
  br i1 %i.bmn, label %.preheader6892.lr.ph, label %._crit_edge7553

.preheader6892.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2235
  %i.ejh = load i32, ptr %i.j, align 4
  %invariant.op7535 = sub i32 %.neg6818, %i.ejh
  %i.eji = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ejj = load i32, ptr %i.a, align 4
  %.fr8044 = freeze i32 %i.ejj                    ; 2 uses
  %15 = icmp slt i32 %.fr8044, 1
  %i.ejk = load i32, ptr %i.i, align 4
  %.neg6820 = add nuw nsw i32 %.019317777, 1
  %invariant.op7523 = sub i32 %.neg6820, %i.ejk
  %i.ejl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eis, label %.preheader6892.us.preheader, label %._crit_edge7553

.preheader6892.us.preheader:                      ; preds = %.preheader6892.lr.ph
  %i.ejm = load i32, ptr %i.c, align 4
  %i.ejn = load i32, ptr %i.d, align 4
  %i.ejo = zext i32 %.fr8044 to i64               ; 2 uses
  %brmerge8908 = select i1 %15, i1 true, i1 %13
  br label %.preheader6892.us

.preheader6892.us:                                ; preds = %.preheader6892.us.preheader, %._crit_edge7532.us
  %indvars.iv8362 = phi i64 [ 0, %.preheader6892.us.preheader ], [ %indvars.iv.next8363, %._crit_edge7532.us ] ; 20 uses
  %.018947549.us = phi ptr [ %i.eiq, %.preheader6892.us.preheader ], [ %i.eql, %._crit_edge7532.us ] ; 2 uses
  %.066387548.us = phi <16 x float> [ zeroinitializer, %.preheader6892.us.preheader ], [ %.us-phi7545.us, %._crit_edge7532.us ] ; 2 uses
  %.066467547.us = phi <16 x float> [ zeroinitializer, %.preheader6892.us.preheader ], [ %.us-phi7544.us, %._crit_edge7532.us ] ; 2 uses
  %i.ejp = lshr exact i64 %indvars.iv8362, 4
  %i.ejq = lshr exact i64 %indvars.iv8362, 3      ; 2 uses
  %i.ejr = or disjoint i64 %i.ejq, 1
  %i.ejs = lshr exact i64 %indvars.iv8362, 2      ; 4 uses
  %i.ejt = or disjoint i64 %i.ejs, 1
  %i.eju = or disjoint i64 %i.ejs, 2
  %i.ejv = or disjoint i64 %i.ejs, 3
  br i1 %brmerge8908, label %._crit_edge7532.us, label %.lr.ph7531.split.us.us.preheader

.lr.ph7531.split.us.us.preheader:                 ; preds = %.preheader6892.us
  %i.ejw = or disjoint i64 %indvars.iv8362, 1
  %i.ejx = or disjoint i64 %indvars.iv8362, 2
  %i.ejy = or disjoint i64 %indvars.iv8362, 3
  %i.ejz = or disjoint i64 %indvars.iv8362, 4
  %i.eka = or disjoint i64 %indvars.iv8362, 5
  %i.ekb = or disjoint i64 %indvars.iv8362, 6
  %i.ekc = or disjoint i64 %indvars.iv8362, 7
  %i.ekd = or disjoint i64 %indvars.iv8362, 8
  %i.eke = or disjoint i64 %indvars.iv8362, 9
  %i.ekf = or disjoint i64 %indvars.iv8362, 10
  %i.ekg = or disjoint i64 %indvars.iv8362, 11
  %i.ekh = or disjoint i64 %indvars.iv8362, 12
  %i.eki = or disjoint i64 %indvars.iv8362, 13
  %i.ekj = or disjoint i64 %indvars.iv8362, 14
  %i.ekk = or disjoint i64 %indvars.iv8362, 15
  br label %.lr.ph7531.split.us.us

.lr.ph7531.split.us.us:                           ; preds = %..loopexit6887_crit_edge.us.us, %.lr.ph7531.split.us.us.preheader
  %indvars.iv8357 = phi i64 [ 0, %.lr.ph7531.split.us.us.preheader ], [ %indvars.iv.next8358, %..loopexit6887_crit_edge.us.us ] ; 3 uses
  %.166397529.us.us = phi <16 x float> [ %.066387548.us, %.lr.ph7531.split.us.us.preheader ], [ %.76645.us.us.us, %..loopexit6887_crit_edge.us.us ] ; 3 uses
  %.166477528.us.us = phi <16 x float> [ %.066467547.us, %.lr.ph7531.split.us.us.preheader ], [ %.76653.us.us.us, %..loopexit6887_crit_edge.us.us ] ; 3 uses
  %i.ekl = trunc i64 %indvars.iv8357 to i32
  %i.ekm = mul i32 %i.ejn, %i.ekl
  %.reass.us7536.us = add i32 %i.ekm, %invariant.op7535 ; 3 uses
  %i.ekn = icmp slt i32 %.reass.us7536.us, 0
  br i1 %i.ekn, label %..loopexit6887_crit_edge.us.us, label %bb.br

bb.br:                                            ; preds = %.lr.ph7531.split.us.us
  %i.eko = srem i32 %.reass.us7536.us, %i.eji
  %i.ekp = sdiv i32 %.reass.us7536.us, %i.eji     ; 2 uses
  %.not2127.us.us = icmp eq i32 %i.eko, 0
  %.not2128.us.us = icmp slt i32 %i.ekp, %i.bmc
  %or.cond8990 = select i1 %.not2127.us.us, i1 %.not2128.us.us, i1 false
  br i1 %or.cond8990, label %.preheader6886.us.us, label %..loopexit6887_crit_edge.us.us

.preheader6886.us.us:                             ; preds = %bb.br
  %i.ekq = mul nuw nsw i64 %indvars.iv8357, %i.ejo
  %i.ekr = sext i32 %i.ekp to i64                 ; 4 uses
  br label %.lr.ph.split.us.us.us7564

.lr.ph.split.us.us.us7564:                        ; preds = %bb.bt, %.preheader6886.us.us
  %indvars.iv8352 = phi i64 [ 0, %.preheader6886.us.us ], [ %indvars.iv.next8353, %bb.bt ] ; 3 uses
  %.266407519.us.us.us = phi <16 x float> [ %.166397529.us.us, %.preheader6886.us.us ], [ %.66644.us.us.us, %bb.bt ] ; 7 uses
  %.266487518.us.us.us = phi <16 x float> [ %.166477528.us.us, %.preheader6886.us.us ], [ %.66652.us.us.us, %bb.bt ] ; 7 uses
  %i.eks = trunc i64 %indvars.iv8352 to i32
  %i.ekt = mul i32 %i.ejm, %i.eks
  %.reass7524.us.us.us = add i32 %i.ekt, %invariant.op7523 ; 3 uses
  %i.eku = icmp slt i32 %.reass7524.us.us.us, 0
  br i1 %i.eku, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.us.us.us7564
  %i.ekv = srem i32 %.reass7524.us.us.us, %i.ejl
  %i.ekw = sdiv i32 %.reass7524.us.us.us, %i.ejl  ; 5 uses
  %.not2129.us.us.us = icmp eq i32 %i.ekv, 0
  %.not2130.us.us.us = icmp slt i32 %i.ekw, %i.bma
  %or.cond8991 = select i1 %.not2129.us.us.us, i1 %.not2130.us.us.us, i1 false
  br i1 %or.cond8991, label %.split2196.us.us.us, label %bb.bt

.split2196.us.us.us:                              ; preds = %bb.bs
  %i.ekx = add nuw nsw i64 %i.ekq, %indvars.iv8352
  %i.eky = shl i64 %i.ekx, 5
  %i.ekz = and i64 %i.eky, 4294967264
  %i.ela = getelementptr inbounds nuw [2 x i8], ptr %.018947549.us, i64 %i.ekz ; 8 uses
  switch i32 %i.bmp, label %bb.bt [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
    i32 3, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge
    i32 2, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge
    i32 0, label %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge
  ]

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre8565 = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !248
  %.pre8566 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !248
  %.pre8567 = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !248
  %.pre8568 = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !248 ; 2 uses
  %.pre8624 = sext i32 %.pre8565 to i64
  %.pre8626 = mul nsw i64 %.pre8624, %i.ekr
  %.pre8628 = mul i64 %.pre8626, %.pre8568
  br label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre8558 = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !249
  %.pre8559 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !249
  %.pre8560 = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !249
  %.pre8561 = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !249 ; 2 uses
  %.pre8562 = load <16 x bfloat>, ptr %i.ela, align 32, !tbaa !26
  %.phi.trans.insert8563 = getelementptr inbounds nuw i8, ptr %i.ela, i64 32
  %.pre8564 = load <16 x bfloat>, ptr %.phi.trans.insert8563, align 32, !tbaa !26
  %.pre8614 = sext i32 %.pre8558 to i64
  %.pre8616 = mul nsw i64 %.pre8614, %i.ekr
  %.pre8618 = mul i64 %.pre8616, %.pre8561
  %.pre8620 = fpext fast <16 x bfloat> %.pre8562 to <16 x float>
  %.pre8622 = fpext fast <16 x bfloat> %.pre8564 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us

.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge: ; preds = %.split2196.us.us.us
  %.pre = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !250
  %.pre8553 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !250
  %.pre8554 = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !250
  %.pre8555 = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !250 ; 2 uses
  %.pre8556 = load <16 x bfloat>, ptr %i.ela, align 32, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ela, i64 32
  %.pre8557 = load <16 x bfloat>, ptr %.phi.trans.insert, align 32, !tbaa !26
  %.pre8604 = sext i32 %.pre to i64
  %.pre8606 = mul nsw i64 %.pre8604, %i.ekr
  %.pre8608 = mul i64 %.pre8606, %.pre8555
  %.pre8610 = fpext fast <16 x bfloat> %.pre8556 to <16 x float>
  %.pre8612 = fpext fast <16 x bfloat> %.pre8557 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2233.us.us.us

_ZN4ncnn3MatD2Ev.exit2234.us.us.us:               ; preds = %.split2196.us.us.us
  %i.elb = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !251
  %i.elc = load ptr, ptr %0, align 8, !tbaa !19, !noalias !251 ; 4 uses
  %i.eld = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !251 ; 4 uses
  %i.ele = mul i64 %i.eld, %i.ejp
  %i.elf = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !251 ; 5 uses
  %i.elg = mul i64 %i.ele, %i.elf
  %i.elh = getelementptr inbounds nuw i8, ptr %i.elc, i64 %i.elg
  %i.eli = sext i32 %i.elb to i64
  %i.elj = mul nsw i64 %i.eli, %i.ekr
  %i.elk = mul i64 %i.elj, %i.elf                 ; 4 uses
  %i.ell = getelementptr inbounds nuw i8, ptr %i.elh, i64 %i.elk
  %i.elm = shl nsw i32 %i.ekw, 4
  %i.eln = sext i32 %i.elm to i64
  %i.elo = getelementptr inbounds [2 x i8], ptr %i.ell, i64 %i.eln
  %i.elp = load <16 x bfloat>, ptr %i.elo, align 32, !tbaa !26
  %i.elq = fpext fast <16 x bfloat> %i.elp to <16 x float> ; 2 uses
  %i.elr = load <16 x bfloat>, ptr %i.ela, align 32, !tbaa !26
  %i.els = fpext fast <16 x bfloat> %i.elr to <16 x float> ; 3 uses
  %i.elt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.elq, <16 x float> nofpclass(nan inf) %i.els, <16 x float> nofpclass(nan inf) %.266487518.us.us.us) ; 4 uses
  %i.elu = getelementptr inbounds nuw i8, ptr %i.ela, i64 32
  %i.elv = load <16 x bfloat>, ptr %i.elu, align 32, !tbaa !26
  %i.elw = fpext fast <16 x bfloat> %i.elv to <16 x float> ; 3 uses
  %i.elx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.elq, <16 x float> nofpclass(nan inf) %i.elw, <16 x float> nofpclass(nan inf) %.266407519.us.us.us) ; 4 uses
  switch i32 %.fr8043, label %bb.bt [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2233.us.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2233.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8613 = phi <16 x float> [ %.pre8612, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elw, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 2 uses
  %.pre-phi8611 = phi <16 x float> [ %.pre8610, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.els, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 2 uses
  %.pre-phi8609 = phi i64 [ %.pre8608, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elk, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.ely = phi i64 [ %.pre8555, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elf, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.elz = phi i64 [ %.pre8554, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.eld, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %i.ema = phi ptr [ %.pre8553, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elc, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 4 uses
  %.36649.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elt, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.36641.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2233.us.us.us_crit_edge ], [ %i.elx, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.emb = mul i64 %i.elz, %i.ejq
  %i.emc = mul i64 %i.emb, %i.ely
  %i.emd = getelementptr inbounds nuw i8, ptr %i.ema, i64 %i.emc
  %i.eme = getelementptr inbounds nuw i8, ptr %i.emd, i64 %.pre-phi8609
  %i.emf = shl nsw i32 %i.ekw, 3
  %i.emg = sext i32 %i.emf to i64                 ; 2 uses
  %i.emh = getelementptr inbounds [2 x i8], ptr %i.eme, i64 %i.emg
  %i.emi = mul i64 %i.elz, %i.ejr
  %i.emj = mul i64 %i.emi, %i.ely
  %i.emk = getelementptr inbounds nuw i8, ptr %i.ema, i64 %i.emj
  %i.eml = getelementptr inbounds nuw i8, ptr %i.emk, i64 %.pre-phi8609
  %i.emm = getelementptr inbounds [2 x i8], ptr %i.eml, i64 %i.emg
  %i.emn = load <8 x bfloat>, ptr %i.emh, align 16, !tbaa !26
  %i.emo = fpext fast <8 x bfloat> %i.emn to <8 x float>
  %i.emp = load <8 x bfloat>, ptr %i.emm, align 16, !tbaa !26
  %i.emq = fpext fast <8 x bfloat> %i.emp to <8 x float>
  %i.emr = shufflevector <8 x float> %i.emo, <8 x float> %i.emq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ems = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.emr, <16 x float> nofpclass(nan inf) %.pre-phi8611, <16 x float> nofpclass(nan inf) %.36649.us.us.us) ; 3 uses
  %i.emt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.emr, <16 x float> nofpclass(nan inf) %.pre-phi8613, <16 x float> nofpclass(nan inf) %.36641.us.us.us) ; 3 uses
  switch i32 %.fr8043, label %bb.bt [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2231.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2231.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8623 = phi <16 x float> [ %.pre8622, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8613, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elw, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.pre-phi8621 = phi <16 x float> [ %.pre8620, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8611, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.els, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.pre-phi8619 = phi i64 [ %.pre8618, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %.pre-phi8609, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elk, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.emu = phi i64 [ %.pre8561, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.ely, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elf, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.emv = phi i64 [ %.pre8560, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.elz, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eld, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %i.emw = phi ptr [ %.pre8559, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.ema, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elc, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ] ; 5 uses
  %.46650.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.ems, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elt, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.46642.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2231.us.us.us_crit_edge ], [ %i.emt, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elx, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.emx = mul i64 %i.emv, %i.ejs
  %i.emy = mul i64 %i.emx, %i.emu
  %i.emz = getelementptr inbounds nuw i8, ptr %i.emw, i64 %i.emy
  %i.ena = getelementptr inbounds nuw i8, ptr %i.emz, i64 %.pre-phi8619
  %i.enb = shl nsw i32 %i.ekw, 2
  %i.enc = sext i32 %i.enb to i64                 ; 4 uses
  %i.end = getelementptr inbounds [2 x i8], ptr %i.ena, i64 %i.enc
  %i.ene = mul i64 %i.emv, %i.ejt
  %i.enf = mul i64 %i.ene, %i.emu
  %i.eng = getelementptr inbounds nuw i8, ptr %i.emw, i64 %i.enf
  %i.enh = getelementptr inbounds nuw i8, ptr %i.eng, i64 %.pre-phi8619
  %i.eni = getelementptr inbounds [2 x i8], ptr %i.enh, i64 %i.enc
  %i.enj = mul i64 %i.emv, %i.eju
  %i.enk = mul i64 %i.enj, %i.emu
  %i.enl = getelementptr inbounds nuw i8, ptr %i.emw, i64 %i.enk
  %i.enm = getelementptr inbounds nuw i8, ptr %i.enl, i64 %.pre-phi8619
  %i.enn = getelementptr inbounds [2 x i8], ptr %i.enm, i64 %i.enc
  %i.eno = mul i64 %i.emv, %i.ejv
  %i.enp = mul i64 %i.eno, %i.emu
  %i.enq = getelementptr inbounds nuw i8, ptr %i.emw, i64 %i.enp
  %i.enr = getelementptr inbounds nuw i8, ptr %i.enq, i64 %.pre-phi8619
  %i.ens = getelementptr inbounds [2 x i8], ptr %i.enr, i64 %i.enc
  %i.ent = load i64, ptr %i.end, align 1, !tbaa !26
  %i.enu = insertelement <2 x i64> poison, i64 %i.ent, i64 0
  %i.env = bitcast <2 x i64> %i.enu to <8 x i16>
  %i.enw = shufflevector <8 x i16> %i.env, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.enx = bitcast <8 x i16> %i.enw to <4 x float>
  %i.eny = load i64, ptr %i.eni, align 1, !tbaa !26
  %i.enz = insertelement <2 x i64> poison, i64 %i.eny, i64 0
  %i.eoa = bitcast <2 x i64> %i.enz to <8 x i16>
  %i.eob = shufflevector <8 x i16> %i.eoa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.eoc = bitcast <8 x i16> %i.eob to <4 x float>
  %i.eod = load i64, ptr %i.enn, align 1, !tbaa !26
  %i.eoe = insertelement <2 x i64> poison, i64 %i.eod, i64 0
  %i.eof = bitcast <2 x i64> %i.eoe to <8 x i16>
  %i.eog = shufflevector <8 x i16> %i.eof, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.eoh = bitcast <8 x i16> %i.eog to <4 x float>
  %i.eoi = load i64, ptr %i.ens, align 1, !tbaa !26
  %i.eoj = insertelement <2 x i64> poison, i64 %i.eoi, i64 0
  %i.eok = bitcast <2 x i64> %i.eoj to <8 x i16>
  %i.eol = shufflevector <8 x i16> %i.eok, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.eom = bitcast <8 x i16> %i.eol to <4 x float>
  %i.eon = shufflevector <4 x float> %i.enx, <4 x float> %i.eoc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eoo = shufflevector <4 x float> %i.eoh, <4 x float> %i.eom, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eop = shufflevector <16 x float> %i.eon, <16 x float> %i.eoo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.eoq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eop, <16 x float> nofpclass(nan inf) %.pre-phi8621, <16 x float> nofpclass(nan inf) %.46650.us.us.us) ; 2 uses
  %i.eor = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eop, <16 x float> nofpclass(nan inf) %.pre-phi8623, <16 x float> nofpclass(nan inf) %.46642.us.us.us) ; 2 uses
  br i1 %i.bms, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, label %bb.bt

_ZN4ncnn3MatD2Ev.exit2227.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8629 = phi i64 [ %.pre8628, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %.pre-phi8619, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.pre-phi8609, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elk, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eos = phi i64 [ %.pre8568, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.emu, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.ely, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elf, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eot = phi i64 [ %.pre8567, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.emv, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.elz, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eld, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.eou = phi ptr [ %.pre8566, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.emw, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.ema, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elc, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56651.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.eoq, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.ems, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elt, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56643.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.eor, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.emt, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.elx, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.eot, %i.eos ; 16 uses
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.eou, i64 %.pre-phi8629
  %i.eov = sext i32 %i.ekw to i64
  %invariant.gep7515.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us, i64 %i.eov ; 16 uses
  %.reass.us.us7543.us = mul i64 %factor.op.mul.us.us.us, %indvars.iv8362
  %gep7516.us.us.us = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us
  %i.eow = load i16, ptr %gep7516.us.us.us, align 2, !tbaa !28
  %.reass.us.us7543.us.1 = mul i64 %factor.op.mul.us.us.us, %i.ejw
  %gep7516.us.us.us.1 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.1
  %i.eox = load i16, ptr %gep7516.us.us.us.1, align 2, !tbaa !28
  %.reass.us.us7543.us.2 = mul i64 %factor.op.mul.us.us.us, %i.ejx
  %gep7516.us.us.us.2 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.2
  %i.eoy = load i16, ptr %gep7516.us.us.us.2, align 2, !tbaa !28
  %.reass.us.us7543.us.3 = mul i64 %factor.op.mul.us.us.us, %i.ejy
  %gep7516.us.us.us.3 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.3
  %i.eoz = load i16, ptr %gep7516.us.us.us.3, align 2, !tbaa !28
  %.reass.us.us7543.us.4 = mul i64 %factor.op.mul.us.us.us, %i.ejz
  %gep7516.us.us.us.4 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.4
  %i.epa = load i16, ptr %gep7516.us.us.us.4, align 2, !tbaa !28
  %.reass.us.us7543.us.5 = mul i64 %factor.op.mul.us.us.us, %i.eka
  %gep7516.us.us.us.5 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.5
  %i.epb = load i16, ptr %gep7516.us.us.us.5, align 2, !tbaa !28
  %.reass.us.us7543.us.6 = mul i64 %factor.op.mul.us.us.us, %i.ekb
  %gep7516.us.us.us.6 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.6
  %i.epc = load i16, ptr %gep7516.us.us.us.6, align 2, !tbaa !28
  %.reass.us.us7543.us.7 = mul i64 %factor.op.mul.us.us.us, %i.ekc
  %gep7516.us.us.us.7 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.7
  %i.epd = load i16, ptr %gep7516.us.us.us.7, align 2, !tbaa !28
  %.reass.us.us7543.us.8 = mul i64 %factor.op.mul.us.us.us, %i.ekd
  %gep7516.us.us.us.8 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.8
  %i.epe = load i16, ptr %gep7516.us.us.us.8, align 2, !tbaa !28
  %.reass.us.us7543.us.9 = mul i64 %factor.op.mul.us.us.us, %i.eke
  %gep7516.us.us.us.9 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.9
  %i.epf = load i16, ptr %gep7516.us.us.us.9, align 2, !tbaa !28
  %.reass.us.us7543.us.10 = mul i64 %factor.op.mul.us.us.us, %i.ekf
  %gep7516.us.us.us.10 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.10
  %i.epg = load i16, ptr %gep7516.us.us.us.10, align 2, !tbaa !28
  %.reass.us.us7543.us.11 = mul i64 %factor.op.mul.us.us.us, %i.ekg
  %gep7516.us.us.us.11 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.11
  %i.eph = load i16, ptr %gep7516.us.us.us.11, align 2, !tbaa !28
  %.reass.us.us7543.us.12 = mul i64 %factor.op.mul.us.us.us, %i.ekh
  %gep7516.us.us.us.12 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.12
  %i.epi = load i16, ptr %gep7516.us.us.us.12, align 2, !tbaa !28
  %.reass.us.us7543.us.13 = mul i64 %factor.op.mul.us.us.us, %i.eki
  %gep7516.us.us.us.13 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.13
  %i.epj = load i16, ptr %gep7516.us.us.us.13, align 2, !tbaa !28
  %.reass.us.us7543.us.14 = mul i64 %factor.op.mul.us.us.us, %i.ekj
  %gep7516.us.us.us.14 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.14
  %i.epk = load i16, ptr %gep7516.us.us.us.14, align 2, !tbaa !28
  %.reass.us.us7543.us.15 = mul i64 %factor.op.mul.us.us.us, %i.ekk
  %gep7516.us.us.us.15 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.15
  %i.epl = load i16, ptr %gep7516.us.us.us.15, align 2, !tbaa !28
  %i.epm = insertelement <16 x i16> poison, i16 %i.eow, i64 0
  %i.epn = insertelement <16 x i16> %i.epm, i16 %i.eox, i64 1
  %i.epo = insertelement <16 x i16> %i.epn, i16 %i.eoy, i64 2
  %i.epp = insertelement <16 x i16> %i.epo, i16 %i.eoz, i64 3
  %i.epq = insertelement <16 x i16> %i.epp, i16 %i.epa, i64 4
  %i.epr = insertelement <16 x i16> %i.epq, i16 %i.epb, i64 5
  %i.eps = insertelement <16 x i16> %i.epr, i16 %i.epc, i64 6
  %i.ept = insertelement <16 x i16> %i.eps, i16 %i.epd, i64 7
  %i.epu = insertelement <16 x i16> %i.ept, i16 %i.epe, i64 8
  %i.epv = insertelement <16 x i16> %i.epu, i16 %i.epf, i64 9
  %i.epw = insertelement <16 x i16> %i.epv, i16 %i.epg, i64 10
  %i.epx = insertelement <16 x i16> %i.epw, i16 %i.eph, i64 11
  %i.epy = insertelement <16 x i16> %i.epx, i16 %i.epi, i64 12
  %i.epz = insertelement <16 x i16> %i.epy, i16 %i.epj, i64 13
  %i.eqa = insertelement <16 x i16> %i.epz, i16 %i.epk, i64 14
  %i.eqb = insertelement <16 x i16> %i.eqa, i16 %i.epl, i64 15
  %i.eqc = zext <16 x i16> %i.eqb to <16 x i32>
  %i.eqd = shl nuw <16 x i32> %i.eqc, splat (i32 16)
  %.sroa.08551.60.vec.insert = bitcast <16 x i32> %i.eqd to <16 x float> ; 2 uses
  %i.eqe = load <16 x bfloat>, ptr %i.ela, align 32, !tbaa !26
  %i.eqf = fpext fast <16 x bfloat> %i.eqe to <16 x float>
  %i.eqg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08551.60.vec.insert, <16 x float> nofpclass(nan inf) %i.eqf, <16 x float> nofpclass(nan inf) %.56651.us.us.us)
  %i.eqh = getelementptr inbounds nuw i8, ptr %i.ela, i64 32
  %i.eqi = load <16 x bfloat>, ptr %i.eqh, align 32, !tbaa !26
  %i.eqj = fpext fast <16 x bfloat> %i.eqi to <16 x float>
  %i.eqk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08551.60.vec.insert, <16 x float> nofpclass(nan inf) %i.eqj, <16 x float> nofpclass(nan inf) %.56643.us.us.us)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %.split2196.us.us.us, %bb.bs, %.lr.ph.split.us.us.us7564
  %.66652.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266487518.us.us.us, %.split2196.us.us.us ], [ %i.elt, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.ems, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqg, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.eoq, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266487518.us.us.us, %bb.bs ] ; 2 uses
  %.66644.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266407519.us.us.us, %.split2196.us.us.us ], [ %i.elx, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.emt, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqk, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.eor, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266407519.us.us.us, %bb.bs ] ; 2 uses
  %indvars.iv.next8353 = add nuw nsw i64 %indvars.iv8352, 1 ; 2 uses
  %exitcond8356.not = icmp eq i64 %indvars.iv.next8353, %i.ejo
  br i1 %exitcond8356.not, label %..loopexit6887_crit_edge.us.us, label %.lr.ph.split.us.us.us7564, !llvm.loop !143

..loopexit6887_crit_edge.us.us:                   ; preds = %bb.bt, %bb.br, %.lr.ph7531.split.us.us
  %.76653.us.us.us = phi nsz <16 x float> [ %.166477528.us.us, %.lr.ph7531.split.us.us ], [ %.166477528.us.us, %bb.br ], [ %.66652.us.us.us, %bb.bt ] ; 2 uses
  %.76645.us.us.us = phi nsz <16 x float> [ %.166397529.us.us, %.lr.ph7531.split.us.us ], [ %.166397529.us.us, %bb.br ], [ %.66644.us.us.us, %bb.bt ] ; 2 uses
  %indvars.iv.next8358 = add nuw nsw i64 %indvars.iv8357, 1 ; 2 uses
  %exitcond8361.not = icmp eq i64 %indvars.iv.next8358, %wide.trip.count8360
  br i1 %exitcond8361.not, label %._crit_edge7532.us, label %.lr.ph7531.split.us.us, !llvm.loop !144

._crit_edge7532.us:                               ; preds = %..loopexit6887_crit_edge.us.us, %.preheader6892.us
  %.us-phi7544.us = phi <16 x float> [ %.066467547.us, %.preheader6892.us ], [ %.76653.us.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %.us-phi7545.us = phi <16 x float> [ %.066387548.us, %.preheader6892.us ], [ %.76645.us.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %i.eql = getelementptr inbounds [2 x i8], ptr %.018947549.us, i64 %i.eiv ; 2 uses
  %indvars.iv.next8363 = add nuw nsw i64 %indvars.iv8362, 16 ; 3 uses
  %i.eqm = icmp slt i64 %indvars.iv.next8363, %invariant.op8779
  br i1 %i.eqm, label %.preheader6892.us, label %._crit_edge7553.loopexit, !llvm.loop !145

._crit_edge7553.loopexit:                         ; preds = %._crit_edge7532.us
  %i.eqn = trunc nuw nsw i64 %indvars.iv.next8363 to i32
  br label %._crit_edge7553

._crit_edge7553:                                  ; preds = %.preheader6892.lr.ph, %._crit_edge7553.loopexit, %_ZN4ncnn3MatD2Ev.exit2235
  %.06646.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7544.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.06638.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7545.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.01894.lcssa = phi ptr [ %i.eiq, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.eql, %._crit_edge7553.loopexit ], [ %scevgep8347, %.preheader6892.lr.ph ] ; 3 uses
  %.01889.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.eqn, %._crit_edge7553.loopexit ], [ %i.bnd, %.preheader6892.lr.ph ] ; 5 uses
  %i.eqo = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eqp = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqq = fadd fast <8 x float> %i.eqo, %i.eqp   ; 2 uses
  %i.eqr = shufflevector <8 x float> %i.eqq, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eqs = shufflevector <8 x float> %i.eqq, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eqt = fadd fast <4 x float> %i.eqr, %i.eqs   ; 2 uses
  %i.equ = shufflevector <4 x float> %i.eqt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.eqv = fadd fast <4 x float> %i.equ, %i.eqt   ; 2 uses
  %i.eqw = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eqx = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eqy = fadd fast <8 x float> %i.eqw, %i.eqx   ; 2 uses
  %i.eqz = shufflevector <8 x float> %i.eqy, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.era = shufflevector <8 x float> %i.eqy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.erb = fadd fast <4 x float> %i.eqz, %i.era   ; 2 uses
  %i.erc = shufflevector <4 x float> %i.erb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.erd = fadd fast <4 x float> %i.erc, %i.erb   ; 2 uses
  %i.ere = or disjoint i32 %.01889.lcssa, 7
  %i.erf = icmp slt i32 %i.ere, %i.bly
  br i1 %i.erf, label %.preheader6891.lr.ph, label %._crit_edge7598

.preheader6891.lr.ph:                             ; preds = %._crit_edge7553
  %i.erg = load i32, ptr %i.j, align 4
  %invariant.op7586 = sub i32 %.neg6818, %i.erg
  %i.erh = load i32, ptr %i.f, align 4            ; 2 uses
  %i.eri = load i32, ptr %i.a, align 4
  %.fr8045 = freeze i32 %i.eri                    ; 2 uses
  %i.erj = icmp sgt i32 %.fr8045, 0
  %i.erk = load i32, ptr %i.i, align 4
  %.neg6816 = add nuw nsw i32 %.019317777, 1
  %invariant.op7577 = sub i32 %.neg6816, %i.erk
  %i.erl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eis, label %.preheader6891.us.preheader, label %.preheader6891.preheader

.preheader6891.preheader:                         ; preds = %.preheader6891.lr.ph
  %i.erm = sub i32 %i.bnf, %.01889.lcssa          ; 2 uses
  %i.ern = lshr i32 %i.erm, 2
  %i.ero = and i32 %i.ern, 1073741822
  %narrow8743 = add nuw nsw i32 %i.ero, 2
  %i.erp = zext nneg i32 %narrow8743 to i64
  %i.erq = mul nsw i64 %i.eix, %i.erp
  %scevgep8365 = getelementptr i8, ptr %.01894.lcssa, i64 %i.erq
  %i.err = add i32 %.01889.lcssa, 8
  %i.ers = and i32 %i.erm, -8
  %i.ert = add i32 %i.err, %i.ers
  br label %._crit_edge7598

.preheader6891.us.preheader:                      ; preds = %.preheader6891.lr.ph
  %i.eru = load i32, ptr %i.c, align 4
  %i.erv = load i32, ptr %i.d, align 4
  %i.erw = zext i32 %.fr8045 to i64               ; 2 uses
  %i.erx = zext i32 %.01889.lcssa to i64
  br label %.preheader6891.us

.preheader6891.us:                                ; preds = %.preheader6891.us.preheader, %._crit_edge7583.us
  %indvars.iv8380 = phi i64 [ %i.erx, %.preheader6891.us.preheader ], [ %indvars.iv.next8381, %._crit_edge7583.us ] ; 11 uses
  %.118957594.us = phi ptr [ %.01894.lcssa, %.preheader6891.us.preheader ], [ %i.ewc, %._crit_edge7583.us ] ; 2 uses
  %.066287593.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7590.us, %._crit_edge7583.us ] ; 2 uses
  %.066337592.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7589.us, %._crit_edge7583.us ] ; 2 uses
  %i.ery = trunc nuw i64 %indvars.iv8380 to i32
  %i.erz = lshr exact i32 %i.ery, 2               ; 2 uses
  %i.esa = zext nneg i32 %i.erz to i64
  %i.esb = or disjoint i32 %i.erz, 1
  %i.esc = zext nneg i32 %i.esb to i64
  %i.esd = lshr exact i64 %indvars.iv8380, 3
  %i.ese = and i64 %i.esd, 536870911
  br i1 %i.erj, label %.lr.ph7582.split.us.us.preheader, label %._crit_edge7583.us

.lr.ph7582.split.us.us.preheader:                 ; preds = %.preheader6891.us
  %i.esf = or disjoint i64 %indvars.iv8380, 1
  %i.esg = or disjoint i64 %indvars.iv8380, 2
  %i.esh = or disjoint i64 %indvars.iv8380, 3
  %i.esi = or disjoint i64 %indvars.iv8380, 4
  %i.esj = or disjoint i64 %indvars.iv8380, 5
  %i.esk = or disjoint i64 %indvars.iv8380, 6
  %i.esl = or disjoint i64 %indvars.iv8380, 7
  br label %.lr.ph7582.split.us.us

.lr.ph7582.split.us.us:                           ; preds = %.lr.ph7582.split.us.us.preheader, %..loopexit6885_crit_edge.us.us
  %indvars.iv8375 = phi i64 [ 0, %.lr.ph7582.split.us.us.preheader ], [ %indvars.iv.next8376, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166297580.us.us = phi <8 x float> [ %.066287593.us, %.lr.ph7582.split.us.us.preheader ], [ %.46632.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166347579.us.us = phi <8 x float> [ %.066337592.us, %.lr.ph7582.split.us.us.preheader ], [ %.46637.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %i.esm = trunc i64 %indvars.iv8375 to i32
  %i.esn = mul i32 %i.erv, %i.esm
  %.reass7587.us.us = add i32 %i.esn, %invariant.op7586 ; 3 uses
  %i.eso = icmp slt i32 %.reass7587.us.us, 0
  br i1 %i.eso, label %..loopexit6885_crit_edge.us.us, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph7582.split.us.us
  %i.esp = srem i32 %.reass7587.us.us, %i.erh
  %i.esq = sdiv i32 %.reass7587.us.us, %i.erh     ; 2 uses
  %.not2123.us.us = icmp eq i32 %i.esp, 0
  %.not2124.us.us = icmp slt i32 %i.esq, %i.bmc
  %or.cond8992 = select i1 %.not2123.us.us, i1 %.not2124.us.us, i1 false
  br i1 %or.cond8992, label %.preheader6884.us.us, label %..loopexit6885_crit_edge.us.us

.preheader6884.us.us:                             ; preds = %bb.bu
  %i.esr = mul nuw nsw i64 %indvars.iv8375, %i.erw
  %i.ess = sext i32 %i.esq to i64                 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %.preheader6884.us.us
  %indvars.iv8370 = phi i64 [ %indvars.iv.next8371, %bb.by ], [ 0, %.preheader6884.us.us ] ; 3 uses
  %.266307573.us.us = phi <8 x float> [ %.36631.us.us, %bb.by ], [ %.166297580.us.us, %.preheader6884.us.us ] ; 4 uses
  %.266357572.us.us = phi <8 x float> [ %.36636.us.us, %bb.by ], [ %.166347579.us.us, %.preheader6884.us.us ] ; 4 uses
  %i.est = trunc i64 %indvars.iv8370 to i32
  %i.esu = mul i32 %i.eru, %i.est
  %.reass7578.us.us = add i32 %i.esu, %invariant.op7577 ; 3 uses
  %i.esv = icmp slt i32 %.reass7578.us.us, 0
  br i1 %i.esv, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.esw = srem i32 %.reass7578.us.us, %i.erl
  %i.esx = sdiv i32 %.reass7578.us.us, %i.erl     ; 4 uses
  %.not2125.us.us = icmp eq i32 %i.esw, 0
  %.not2126.us.us = icmp slt i32 %i.esx, %i.bma
  %or.cond8993 = select i1 %.not2125.us.us, i1 %.not2126.us.us, i1 false
  br i1 %or.cond8993, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.esy = add nuw nsw i64 %i.esr, %indvars.iv8370
  %i.esz = shl i64 %i.esy, 4
  %i.eta = and i64 %i.esz, 4294967280
  %i.etb = getelementptr inbounds nuw [2 x i8], ptr %.118957594.us, i64 %i.eta ; 2 uses
  switch i32 %.fr8043, label %bb.by [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2226.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2225.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2223.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.bx
  %i.etc = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !252
  %i.etd = load ptr, ptr %0, align 8, !tbaa !19, !noalias !252
  %i.ete = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !252
  %i.etf = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !252 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.ete, %i.etf   ; 8 uses
  %i.etg = sext i32 %i.etc to i64
  %i.eth = mul nsw i64 %i.etg, %i.ess
  %i.eti = mul i64 %i.eth, %i.etf
  %invariant.gep.us.us = getelementptr i8, ptr %i.etd, i64 %i.eti
  %i.etj = sext i32 %i.esx to i64
  %invariant.gep7569.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us, i64 %i.etj ; 8 uses
  %.reass.us7588.us = mul i64 %factor.op.mul.us.us, %indvars.iv8380
  %gep7570.us.us = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us
  %i.etk = load i16, ptr %gep7570.us.us, align 2, !tbaa !28
  %.reass.us7588.us.1 = mul i64 %factor.op.mul.us.us, %i.esf
  %gep7570.us.us.1 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.1
  %i.etl = load i16, ptr %gep7570.us.us.1, align 2, !tbaa !28
  %.reass.us7588.us.2 = mul i64 %factor.op.mul.us.us, %i.esg
  %gep7570.us.us.2 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.2
  %i.etm = load i16, ptr %gep7570.us.us.2, align 2, !tbaa !28
  %.reass.us7588.us.3 = mul i64 %factor.op.mul.us.us, %i.esh
  %gep7570.us.us.3 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.3
  %i.etn = load i16, ptr %gep7570.us.us.3, align 2, !tbaa !28
  %.reass.us7588.us.4 = mul i64 %factor.op.mul.us.us, %i.esi
  %gep7570.us.us.4 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.4
  %i.eto = load i16, ptr %gep7570.us.us.4, align 2, !tbaa !28
  %.reass.us7588.us.5 = mul i64 %factor.op.mul.us.us, %i.esj
  %gep7570.us.us.5 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.5
  %i.etp = load i16, ptr %gep7570.us.us.5, align 2, !tbaa !28
  %.reass.us7588.us.6 = mul i64 %factor.op.mul.us.us, %i.esk
  %gep7570.us.us.6 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.6
  %i.etq = load i16, ptr %gep7570.us.us.6, align 2, !tbaa !28
  %.reass.us7588.us.7 = mul i64 %factor.op.mul.us.us, %i.esl
  %gep7570.us.us.7 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.7
  %i.etr = load i16, ptr %gep7570.us.us.7, align 2, !tbaa !28
  %i.ets = insertelement <8 x i16> poison, i16 %i.etk, i64 0
  %i.ett = insertelement <8 x i16> %i.ets, i16 %i.etl, i64 1
  %i.etu = insertelement <8 x i16> %i.ett, i16 %i.etm, i64 2
  %i.etv = insertelement <8 x i16> %i.etu, i16 %i.etn, i64 3
  %i.etw = insertelement <8 x i16> %i.etv, i16 %i.eto, i64 4
  %i.etx = insertelement <8 x i16> %i.etw, i16 %i.etp, i64 5
  %i.ety = insertelement <8 x i16> %i.etx, i16 %i.etq, i64 6
  %i.etz = insertelement <8 x i16> %i.ety, i16 %i.etr, i64 7
  %i.eua = zext <8 x i16> %i.etz to <8 x i32>
  %i.eub = shl nuw <8 x i32> %i.eua, splat (i32 16)
  %.sroa.08549.28.vec.insert = bitcast <8 x i32> %i.eub to <8 x float>
  br label %.sink.split8881

_ZN4ncnn3MatD2Ev.exit2225.us.us:                  ; preds = %bb.bx
  %i.euc = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !253
  %i.eud = load ptr, ptr %0, align 8, !tbaa !19, !noalias !253 ; 2 uses
  %i.eue = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !253 ; 2 uses
  %i.euf = mul i64 %i.eue, %i.esa
  %i.eug = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !253 ; 3 uses
  %i.euh = mul i64 %i.euf, %i.eug
  %i.eui = getelementptr inbounds nuw i8, ptr %i.eud, i64 %i.euh
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %.218967664.us.us = phi ptr [ %.11895.lcssa, %.preheader6890.us.us.preheader ], [ %i.fbl, %._crit_edge7645.split.us.us.us ] ; 3 uses
  %.066187663.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46622.us.us.us, %._crit_edge7645.split.us.us.us ]
  %.066237662.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46627.us.us.us, %._crit_edge7645.split.us.us.us ]
  %i.ext = lshr exact i64 %indvars.iv8404, 2
  %i.exu = and i64 %i.ext, 1073741823
  %i.exv = or disjoint i64 %indvars.iv8404, 1
  %i.exw = or disjoint i64 %indvars.iv8404, 2
  %i.exx = or disjoint i64 %indvars.iv8404, 3
  br label %bb.bz

bb.bz:                                            ; preds = %..loopexit6883_crit_edge.us.us.us, %.preheader6890.us.us
  %indvars.iv8399 = phi i64 [ %indvars.iv.next8400, %..loopexit6883_crit_edge.us.us.us ], [ 0, %.preheader6890.us.us ] ; 3 uses
  %.166197642.us.us.us = phi <4 x float> [ %.46622.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066187663.us.us, %.preheader6890.us.us ] ; 5 uses
  %.166247641.us.us.us = phi <4 x float> [ %.46627.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066237662.us.us, %.preheader6890.us.us ] ; 5 uses
  %i.exy = trunc i64 %indvars.iv8399 to i32
  %i.exz = mul i32 %i.ewt, %i.exy
  %.reass.us7649.us.us = add i32 %i.exz, %invariant.op7648 ; 3 uses
  %i.eya = icmp slt i32 %.reass.us7649.us.us, 0
  br i1 %i.eya, label %..loopexit6883_crit_edge.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eyb = srem i32 %.reass.us7649.us.us, %i.ewv
  %i.eyc = sdiv i32 %.reass.us7649.us.us, %i.ewv  ; 2 uses
  %.not2119.us.us.us = icmp eq i32 %i.eyb, 0
  %.not2120.us.us.us = icmp slt i32 %i.eyc, %i.bmc
  %or.cond8994 = select i1 %.not2119.us.us.us, i1 %.not2120.us.us.us, i1 false
  br i1 %or.cond8994, label %.preheader6882.us.us.us, label %..loopexit6883_crit_edge.us.us.us

.preheader6882.us.us.us:                          ; preds = %bb.ca
  %i.eyd = mul nuw nsw i64 %indvars.iv8399, %i.exr ; 2 uses
  %i.eye = sext i32 %i.eyc to i64                 ; 2 uses
  switch i32 %.fr8043, label %..loopexit6883_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7680.us
    i32 1, label %.lr.ph.split.us7626.us.us.us
  ]

.lr.ph.split.us7626.us.us.us:                     ; preds = %.preheader6882.us.us.us, %bb.cc
  %indvars.iv8389 = phi i64 [ %indvars.iv.next8390, %bb.cc ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us7628.us.us.us = phi <4 x float> [ %.36621.us7635.us.us.us, %bb.cc ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us7629.us.us.us = phi <4 x float> [ %.36626.us7634.us.us.us, %bb.cc ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.eyf = trunc i64 %indvars.iv8389 to i32
  %i.eyg = mul i32 %i.ewx, %i.eyf
  %.reass7623.us7630.us.us.us = add i32 %i.eyg, %invariant.op7622 ; 3 uses
  %i.eyh = icmp slt i32 %.reass7623.us7630.us.us.us, 0
  br i1 %i.eyh, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us7626.us.us.us
  %i.eyi = srem i32 %.reass7623.us7630.us.us.us, %i.ewz
  %i.eyj = sdiv i32 %.reass7623.us7630.us.us.us, %i.ewz ; 2 uses
  %.not2121.us7631.us.us.us = icmp eq i32 %i.eyi, 0
  %.not2122.us7632.us.us.us = icmp slt i32 %i.eyj, %i.bma
  %or.cond8995 = select i1 %.not2121.us7631.us.us.us, i1 %.not2122.us7632.us.us.us, i1 false
  br i1 %or.cond8995, label %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us:            ; preds = %bb.cb
  %i.eyk = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !255
  %i.eyl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !255
  %i.eym = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !255
  %i.eyn = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !255 ; 2 uses
  %factor.op.mul.us.us7650.us.us = mul i64 %i.eym, %i.eyn ; 4 uses
  %i.eyo = sext i32 %i.eyk to i64
  %i.eyp = mul nsw i64 %i.eyo, %i.eye
  %i.eyq = mul i64 %i.eyp, %i.eyn
  %invariant.gep.us.us7651.us.us = getelementptr i8, ptr %i.eyl, i64 %i.eyq
  %i.eyr = sext i32 %i.eyj to i64
  %invariant.gep7614.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7651.us.us, i64 %i.eyr ; 4 uses
  %.reass.us7633.us.us.us = mul i64 %factor.op.mul.us.us7650.us.us, %indvars.iv8404
  %gep7615.us.us.us.us = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us
  %i.eys = load i16, ptr %gep7615.us.us.us.us, align 2, !tbaa !28
  %.reass.us7633.us.us.us.1 = mul i64 %factor.op.mul.us.us7650.us.us, %i.exv
  %gep7615.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.1
  %i.eyt = load i16, ptr %gep7615.us.us.us.us.1, align 2, !tbaa !28
  %.reass.us7633.us.us.us.2 = mul i64 %factor.op.mul.us.us7650.us.us, %i.exw
  %gep7615.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.2
  %i.eyu = load i16, ptr %gep7615.us.us.us.us.2, align 2, !tbaa !28
  %.reass.us7633.us.us.us.3 = mul i64 %factor.op.mul.us.us7650.us.us, %i.exx
  %gep7615.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.3
  %i.eyv = load i16, ptr %gep7615.us.us.us.us.3, align 2, !tbaa !28
  %i.eyw = zext i16 %i.eys to i32
  %i.eyx = zext i16 %i.eyt to i32
  %i.eyy = zext i16 %i.eyu to i32
  %i.eyz = zext i16 %i.eyv to i32
  %i.eza = insertelement <4 x i32> poison, i32 %i.eyw, i64 0
  %i.ezb = insertelement <4 x i32> %i.eza, i32 %i.eyx, i64 1
  %i.ezc = insertelement <4 x i32> %i.ezb, i32 %i.eyy, i64 2
  %i.ezd = insertelement <4 x i32> %i.ezc, i32 %i.eyz, i64 3
  %i.eze = shl nuw <4 x i32> %i.ezd, splat (i32 16)
  %.sroa.08547.12.vec.insert = bitcast <4 x i32> %i.eze to <4 x float> ; 2 uses
  %i.ezf = add nuw nsw i64 %i.eyd, %indvars.iv8389
  %i.ezg = shl i64 %i.ezf, 3
  %i.ezh = and i64 %i.ezg, 4294967288
  %i.ezi = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.ezh ; 2 uses
  %i.ezj = load i64, ptr %i.ezi, align 1, !tbaa !26
  %i.ezk = insertelement <2 x i64> poison, i64 %i.ezj, i64 0
  %i.ezl = bitcast <2 x i64> %i.ezk to <8 x i16>
  %i.ezm = shufflevector <8 x i16> %i.ezl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ezn = bitcast <8 x i16> %i.ezm to <4 x float>
  %i.ezo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08547.12.vec.insert, <4 x float> nofpclass(nan inf) %i.ezn, <4 x float> nofpclass(nan inf) %.266257617.us7629.us.us.us)
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ezi, i64 8
  %i.ezq = load i64, ptr %i.ezp, align 1, !tbaa !26
  %i.ezr = insertelement <2 x i64> poison, i64 %i.ezq, i64 0
  %i.ezs = bitcast <2 x i64> %i.ezr to <8 x i16>
  %i.ezt = shufflevector <8 x i16> %i.ezs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ezu = bitcast <8 x i16> %i.ezt to <4 x float>
  %i.ezv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08547.12.vec.insert, <4 x float> nofpclass(nan inf) %i.ezu, <4 x float> nofpclass(nan inf) %.266207618.us7628.us.us.us)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, %bb.cb, %.lr.ph.split.us7626.us.us.us
  %.36626.us7634.us.us.us = phi nsz <4 x float> [ %.266257617.us7629.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.ezo, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266257617.us7629.us.us.us, %bb.cb ] ; 2 uses
  %.36621.us7635.us.us.us = phi nsz <4 x float> [ %.266207618.us7628.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.ezv, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266207618.us7628.us.us.us, %bb.cb ] ; 2 uses
  %indvars.iv.next8390 = add nuw nsw i64 %indvars.iv8389, 1 ; 2 uses
  %exitcond8393.not = icmp eq i64 %indvars.iv.next8390, %i.exr
  br i1 %exitcond8393.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us7626.us.us.us, !llvm.loop !157

.lr.ph.split.us.us.us7680.us:                     ; preds = %.preheader6882.us.us.us, %bb.ce
  %indvars.iv8394 = phi i64 [ %indvars.iv.next8395, %bb.ce ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us.us.us.us = phi <4 x float> [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us.us.us.us = phi <4 x float> [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.ezw = trunc i64 %indvars.iv8394 to i32
  %i.ezx = mul i32 %i.ewx, %i.ezw
  %.reass7623.us.us.us.us = add i32 %i.ezx, %invariant.op7622 ; 3 uses
  %i.ezy = icmp slt i32 %.reass7623.us.us.us.us, 0
  br i1 %i.ezy, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us.us.us7680.us
  %i.ezz = srem i32 %.reass7623.us.us.us.us, %i.ewz
  %i.faa = sdiv i32 %.reass7623.us.us.us.us, %i.ewz ; 2 uses
  %.not2121.us.us.us.us = icmp eq i32 %i.ezz, 0
  %.not2122.us.us.us.us = icmp slt i32 %i.faa, %i.bma
  %or.cond8996 = select i1 %.not2121.us.us.us.us, i1 %.not2122.us.us.us.us, i1 false
  br i1 %or.cond8996, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us:            ; preds = %bb.cd
  %i.fab = add nuw nsw i64 %i.eyd, %indvars.iv8394
  %i.fac = shl i64 %i.fab, 3
  %i.fad = and i64 %i.fac, 4294967288
  %i.fae = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.fad ; 2 uses
  %i.faf = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !256
  %i.fag = load ptr, ptr %0, align 8, !tbaa !19, !noalias !256
  %i.fah = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !256
  %i.fai = mul i64 %i.fah, %i.exu
  %i.faj = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !256 ; 2 uses
  %i.fak = mul i64 %i.fai, %i.faj
  %i.fal = getelementptr inbounds nuw i8, ptr %i.fag, i64 %i.fak
  %i.fam = sext i32 %i.faf to i64
  %i.fan = mul nsw i64 %i.fam, %i.eye
  %i.fao = mul i64 %i.fan, %i.faj
  %i.fap = getelementptr inbounds nuw i8, ptr %i.fal, i64 %i.fao
  %i.faq = shl nsw i32 %i.faa, 2
  %i.far = sext i32 %i.faq to i64
  %i.fas = getelementptr inbounds [2 x i8], ptr %i.fap, i64 %i.far
  %i.fat = load i64, ptr %i.fas, align 1, !tbaa !26
  %i.fau = insertelement <2 x i64> poison, i64 %i.fat, i64 0
  %i.fav = bitcast <2 x i64> %i.fau to <8 x i16>
  %i.faw = shufflevector <8 x i16> %i.fav, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fax = bitcast <8 x i16> %i.faw to <4 x float> ; 2 uses
  %i.fay = load i64, ptr %i.fae, align 1, !tbaa !26
  %i.faz = insertelement <2 x i64> poison, i64 %i.fay, i64 0
  %i.fba = bitcast <2 x i64> %i.faz to <8 x i16>
  %i.fbb = shufflevector <8 x i16> %i.fba, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fbc = bitcast <8 x i16> %i.fbb to <4 x float>
  %i.fbd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fax, <4 x float> nofpclass(nan inf) %i.fbc, <4 x float> nofpclass(nan inf) %.266257617.us.us.us.us)
  %i.fbe = getelementptr inbounds nuw i8, ptr %i.fae, i64 8
  %i.fbf = load i64, ptr %i.fbe, align 1, !tbaa !26
  %i.fbg = insertelement <2 x i64> poison, i64 %i.fbf, i64 0
  %i.fbh = bitcast <2 x i64> %i.fbg to <8 x i16>
  %i.fbi = shufflevector <8 x i16> %i.fbh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fbj = bitcast <8 x i16> %i.fbi to <4 x float>
  %i.fbk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fax, <4 x float> nofpclass(nan inf) %i.fbj, <4 x float> nofpclass(nan inf) %.266207618.us.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, %bb.cd, %.lr.ph.split.us.us.us7680.us
  %.36626.us.us.us.us = phi nsz <4 x float> [ %.266257617.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266257617.us.us.us.us, %bb.cd ], [ %i.fbd, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %.36621.us.us.us.us = phi nsz <4 x float> [ %.266207618.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266207618.us.us.us.us, %bb.cd ], [ %i.fbk, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %indvars.iv.next8395 = add nuw nsw i64 %indvars.iv8394, 1 ; 2 uses
  %exitcond8398.not = icmp eq i64 %indvars.iv.next8395, %i.exr
  br i1 %exitcond8398.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7680.us, !llvm.loop !157

..loopexit6883_crit_edge.us.us.us:                ; preds = %bb.cc, %bb.ce, %.preheader6882.us.us.us, %bb.ca, %bb.bz
  %.46627.us.us.us = phi nsz <4 x float> [ %.166247641.us.us.us, %bb.bz ], [ %.166247641.us.us.us, %bb.ca ], [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ], [ %.36626.us7634.us.us.us, %bb.cc ] ; 3 uses
  %.46622.us.us.us = phi nsz <4 x float> [ %.166197642.us.us.us, %bb.bz ], [ %.166197642.us.us.us, %bb.ca ], [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ], [ %.36621.us7635.us.us.us, %bb.cc ] ; 3 uses
  %indvars.iv.next8400 = add nuw nsw i64 %indvars.iv8399, 1 ; 2 uses
  %exitcond8403.not = icmp eq i64 %indvars.iv.next8400, %wide.trip.count8402
  br i1 %exitcond8403.not, label %._crit_edge7645.split.us.us.us, label %bb.bz, !llvm.loop !160

._crit_edge7645.split.us.us.us:                   ; preds = %..loopexit6883_crit_edge.us.us.us
  %i.fbl = getelementptr inbounds [2 x i8], ptr %.218967664.us.us, i64 %i.eiz ; 2 uses
  %indvars.iv.next8405 = add nuw nsw i64 %indvars.iv8404, 4 ; 3 uses
  %i.fbm = trunc i64 %indvars.iv.next8405 to i32
  %i.fbn = or i32 %i.fbm, 3
  %i.fbo = icmp slt i32 %i.fbn, %i.bly
  br i1 %i.fbo, label %.preheader6890.us.us, label %._crit_edge7668.loopexit, !llvm.loop !161

._crit_edge7668.loopexit:                         ; preds = %._crit_edge7645.split.us.us.us
  %i.fbp = trunc nuw i64 %indvars.iv.next8405 to i32
  br label %._crit_edge7668

._crit_edge7668:                                  ; preds = %.preheader6890.preheader, %.preheader6890.us.preheader, %._crit_edge7668.loopexit, %._crit_edge7598
  %.06623.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46627.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 2 uses
  %.06618.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46622.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 2 uses
  %.21896.lcssa = phi ptr [ %.11895.lcssa, %._crit_edge7598 ], [ %i.fbl, %._crit_edge7668.loopexit ], [ %scevgep8384, %.preheader6890.us.preheader ], [ %scevgep8383, %.preheader6890.preheader ] ; 4 uses
  %.21891.lcssa = phi i32 [ %.11890.lcssa, %._crit_edge7598 ], [ %i.fbp, %._crit_edge7668.loopexit ], [ %i.exq, %.preheader6890.us.preheader ], [ %i.exh, %.preheader6890.preheader ] ; 5 uses
  %i.fbq = shufflevector <4 x float> %.06623.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fbr = fadd fast <4 x float> %i.fbq, %.06623.lcssa ; 2 uses
  %i.fbs = shufflevector <4 x float> %i.eqv, <4 x float> %i.erd, <2 x i32> <i32 1, i32 5>
  %i.fbt = fadd fast <2 x float> %i.fbs, %i.ejg
  %i.fbu = shufflevector <4 x float> %.06618.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fbv = fadd fast <4 x float> %i.fbu, %.06618.lcssa ; 2 uses
  %i.fbw = shufflevector <4 x float> %i.eqv, <4 x float> %i.erd, <2 x i32> <i32 0, i32 4>
  %i.fbx = fadd fast <2 x float> %i.fbt, %i.fbw
  %i.fby = shufflevector <4 x float> %i.ewl, <4 x float> %i.ewq, <2 x i32> <i32 1, i32 5>
  %i.fbz = fadd fast <2 x float> %i.fbx, %i.fby
  %i.fca = shufflevector <4 x float> %i.ewl, <4 x float> %i.ewq, <2 x i32> <i32 0, i32 4>
  %i.fcb = fadd fast <2 x float> %i.fbz, %i.fca
  %i.fcc = shufflevector <4 x float> %i.fbr, <4 x float> %i.fbv, <2 x i32> <i32 1, i32 5>
  %i.fcd = fadd fast <2 x float> %i.fcb, %i.fcc
  %i.fce = shufflevector <4 x float> %i.fbr, <4 x float> %i.fbv, <2 x i32> <i32 0, i32 4>
  %i.fcf = fadd fast <2 x float> %i.fcd, %i.fce   ; 4 uses
  %i.fcg = or disjoint i32 %.21891.lcssa, 1
  %i.fch = icmp slt i32 %i.fcg, %i.bly
  br i1 %i.fch, label %.preheader6889.lr.ph, label %.preheader6893

.preheader6889.lr.ph:                             ; preds = %._crit_edge7668
  %i.fci = load i32, ptr %i.j, align 4
  %invariant.op7708 = sub i32 %.neg6818, %i.fci
  %i.fcj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fck = load i32, ptr %i.i, align 4
  %.neg6808 = add nuw nsw i32 %.019317777, 1
  %invariant.op7699 = sub i32 %.neg6808, %i.fck
  %i.fcl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.eis, label %.preheader6889.us.preheader, label %.preheader6889.preheader

.preheader6889.preheader:                         ; preds = %.preheader6889.lr.ph
  %i.fcm = sub i32 %i.bnh, %.21891.lcssa          ; 2 uses
  %i.fcn = and i32 %i.fcm, -2
  %i.fco = zext i32 %i.fcn to i64
  %i.fcp = add nuw nsw i64 %i.fco, 2
  %i.fcq = mul nsw i64 %i.fcp, %i.ejb
  %scevgep8407 = getelementptr i8, ptr %.21896.lcssa, i64 %i.fcq
  %i.fcr = add i32 %.21891.lcssa, 2
  %i.fcs = and i32 %i.fcm, -2
  %i.fct = add i32 %i.fcr, %i.fcs
  br label %.preheader6893

.preheader6889.us.preheader:                      ; preds = %.preheader6889.lr.ph
  %i.fcu = load i32, ptr %i.c, align 4
  %16 = load i32, ptr %i.a, align 4
  %.fr8047 = freeze i32 %16                       ; 2 uses
  %17 = icmp sgt i32 %.fr8047, 0
  %i.fcv = load i32, ptr %i.d, align 4
  %i.fcw = zext i32 %.fr8047 to i64               ; 2 uses
  %i.fcx = zext i32 %.21891.lcssa to i64          ; 2 uses
  br i1 %17, label %.preheader6889.us.a, label %._crit_edge7705.us

.preheader6889.us.a:                              ; preds = %.preheader6889.us.preheader, %._crit_edge7705.us.loopexit.us
  %indvars.iv8421 = phi i64 [ %indvars.iv.next8430.us, %._crit_edge7705.us.loopexit.us ], [ %i.fcx, %.preheader6889.us.preheader ] ; 3 uses
  %.318977716.us.a = phi ptr [ %19, %._crit_edge7705.us.loopexit.us ], [ %.21896.lcssa, %.preheader6889.us.preheader ] ; 2 uses
  %i.fcy = phi <2 x float> [ %i.fex, %._crit_edge7705.us.loopexit.us ], [ %i.fcf, %.preheader6889.us.preheader ]
  %18 = or disjoint i64 %indvars.iv8421, 1
  br label %.lr.ph7704.split.us.us

.lr.ph7704.split.us.us:                           ; preds = %..loopexit6881_crit_edge.us.us, %.preheader6889.us.a
  %indvars.iv8416 = phi i64 [ 0, %.preheader6889.us.a ], [ %indvars.iv.next8417, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fcz = phi <2 x float> [ %i.fcy, %.preheader6889.us.a ], [ %i.fex, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fda = trunc i64 %indvars.iv8416 to i32
  %i.fdb = mul i32 %i.fcv, %i.fda
  %.reass7709.us.us = add i32 %i.fdb, %invariant.op7708 ; 3 uses
  %i.fdc = icmp slt i32 %.reass7709.us.us, 0
  br i1 %i.fdc, label %..loopexit6881_crit_edge.us.us, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph7704.split.us.us
  %i.fdd = srem i32 %.reass7709.us.us, %i.fcj
  %i.fde = sdiv i32 %.reass7709.us.us, %i.fcj     ; 2 uses
  %.not2115.us.us = icmp eq i32 %i.fdd, 0
  %.not2116.us.us = icmp slt i32 %i.fde, %i.bmc
  %or.cond8997 = select i1 %.not2115.us.us, i1 %.not2116.us.us, i1 false
  br i1 %or.cond8997, label %.preheader6880.us.us, label %..loopexit6881_crit_edge.us.us

.preheader6880.us.us:                             ; preds = %bb.cf
  %i.fdf = mul nuw nsw i64 %indvars.iv8416, %i.fcw
  %i.fdg = sext i32 %i.fde to i64
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit6877.us.us, %.preheader6880.us.us
  %indvars.iv8411 = phi i64 [ %indvars.iv.next8412, %.loopexit6877.us.us ], [ 0, %.preheader6880.us.us ] ; 3 uses
  %i.fdh = phi <2 x float> [ %i.few, %.loopexit6877.us.us ], [ %i.fcz, %.preheader6880.us.us ] ; 3 uses
  %i.fdi = trunc i64 %indvars.iv8411 to i32
  %i.fdj = mul i32 %i.fcu, %i.fdi
  %.reass7700.us.us = add i32 %i.fdj, %invariant.op7699 ; 3 uses
  %i.fdk = icmp slt i32 %.reass7700.us.us, 0
  br i1 %i.fdk, label %.loopexit6877.us.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fdl = srem i32 %.reass7700.us.us, %i.fcl
  %i.fdm = sdiv i32 %.reass7700.us.us, %i.fcl     ; 2 uses
  %.not2117.us.us = icmp eq i32 %i.fdl, 0
  %.not2118.us.us = icmp slt i32 %i.fdm, %i.bma
  %or.cond8998 = select i1 %.not2117.us.us, i1 %.not2118.us.us, i1 false
  br i1 %or.cond8998, label %_ZN4ncnn3MatD2Ev.exit2220.us.us, label %.loopexit6877.us.us

_ZN4ncnn3MatD2Ev.exit2220.us.us:                  ; preds = %bb.ch
  %i.fdn = add nuw nsw i64 %i.fdf, %indvars.iv8411
  %i.fdo = shl i64 %i.fdn, 2
  %i.fdp = and i64 %i.fdo, 4294967292
  %i.fdq = getelementptr inbounds nuw [2 x i8], ptr %.318977716.us.a, i64 %i.fdp
  %i.fdr = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !257
  %i.fds = load ptr, ptr %0, align 8, !tbaa !19, !noalias !257
  %i.fdt = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !257
  %i.fdu = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !257 ; 2 uses
  %factor.op.mul.us.us7731 = mul i64 %i.fdt, %i.fdu ; 2 uses
  %i.fdv = sext i32 %i.fdr to i64
  %i.fdw = mul nsw i64 %i.fdv, %i.fdg
  %i.fdx = mul i64 %i.fdw, %i.fdu
  %invariant.gep.us.us7732 = getelementptr i8, ptr %i.fds, i64 %i.fdx
  %i.fdy = sext i32 %i.fdm to i64
  %invariant.gep7689.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7732, i64 %i.fdy ; 2 uses
  %.reass.us7710.us = mul i64 %factor.op.mul.us.us7731, %indvars.iv8421
  %gep7690.us.us = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us
  %i.fdz = load i16, ptr %gep7690.us.us, align 2, !tbaa !28
  %.reass.us7710.us.1 = mul i64 %factor.op.mul.us.us7731, %18
  %gep7690.us.us.1 = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us.1
  %i.fea = load i16, ptr %gep7690.us.us.1, align 2, !tbaa !28
  %i.feb = zext i16 %i.fdz to i32
  %i.fec = shl nuw i32 %i.feb, 16
  %i.fed = load <4 x i16>, ptr %i.fdq, align 2, !tbaa !28
  %i.fee = freeze <4 x i16> %i.fed
  %i.fef = bitcast <4 x i16> %i.fee to <2 x i32>  ; 2 uses
  %i.feg = and <2 x i32> %i.fef, splat (i32 -65536)
  %i.feh = shl <2 x i32> %i.fef, splat (i32 16)
  %i.fei = bitcast <2 x i32> %i.feh to <2 x float>
  %i.fej = insertelement <2 x i32> poison, i32 %i.fec, i64 0
  %i.fek = bitcast <2 x i32> %i.fej to <2 x float>
  %i.fel = shufflevector <2 x float> %i.fek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fem = fmul fast <2 x float> %i.fel, %i.fei
  %i.fen = fadd fast <2 x float> %i.fem, %i.fdh
  %i.feo = zext i16 %i.fea to i32
  %i.fep = shl nuw i32 %i.feo, 16
  %i.feq = bitcast <2 x i32> %i.feg to <2 x float>
  %i.fer = insertelement <2 x i32> poison, i32 %i.fep, i64 0
  %i.fes = bitcast <2 x i32> %i.fer to <2 x float>
  %i.fet = shufflevector <2 x float> %i.fes, <2 x float> poison, <2 x i32> zeroinitializer
  %i.feu = fmul fast <2 x float> %i.fet, %i.feq
  %i.fev = fadd fast <2 x float> %i.feu, %i.fen
  br label %.loopexit6877.us.us

.loopexit6877.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2220.us.us, %bb.ch, %bb.cg
  %i.few = phi <2 x float> [ %i.fdh, %bb.cg ], [ %i.fdh, %bb.ch ], [ %i.fev, %_ZN4ncnn3MatD2Ev.exit2220.us.us ] ; 2 uses
  %indvars.iv.next8412 = add nuw nsw i64 %indvars.iv8411, 1 ; 2 uses
  %exitcond8415.not = icmp eq i64 %indvars.iv.next8412, %i.fcw
  br i1 %exitcond8415.not, label %..loopexit6881_crit_edge.us.us, label %bb.cg, !llvm.loop !164

..loopexit6881_crit_edge.us.us:                   ; preds = %.loopexit6877.us.us, %bb.cf, %.lr.ph7704.split.us.us
  %i.fex = phi <2 x float> [ %i.fcz, %.lr.ph7704.split.us.us ], [ %i.fcz, %bb.cf ], [ %i.few, %.loopexit6877.us.us ] ; 3 uses
  %indvars.iv.next8417 = add nuw nsw i64 %indvars.iv8416, 1 ; 2 uses
  %exitcond8420.not = icmp eq i64 %indvars.iv.next8417, %wide.trip.count8419
  br i1 %exitcond8420.not, label %._crit_edge7705.us.loopexit.us, label %.lr.ph7704.split.us.us, !llvm.loop !165

._crit_edge7705.us.loopexit.us:                   ; preds = %..loopexit6881_crit_edge.us.us
  %19 = getelementptr inbounds [2 x i8], ptr %.318977716.us.a, i64 %i.ejb ; 2 uses
  %indvars.iv.next8430.us = add nuw nsw i64 %indvars.iv8421, 2 ; 3 uses
  %20 = trunc i64 %indvars.iv.next8430.us to i32
  %21 = or i32 %20, 1
  %22 = icmp slt i32 %21, %i.bly
  br i1 %22, label %.preheader6889.us.a, label %.preheader6893.loopexit, !llvm.loop !166

._crit_edge7705.us:                               ; preds = %.preheader6889.us.preheader, %._crit_edge7705.us
  %indvars.iv8429 = phi i64 [ %indvars.iv.next8422, %._crit_edge7705.us ], [ %i.fcx, %.preheader6889.us.preheader ]
  %.318977716.us = phi ptr [ %i.fey, %._crit_edge7705.us ], [ %.21896.lcssa, %.preheader6889.us.preheader ]
  %i.fey = getelementptr inbounds [2 x i8], ptr %.318977716.us, i64 %i.ejb ; 2 uses
  %indvars.iv.next8422 = add nuw nsw i64 %indvars.iv8429, 2 ; 3 uses
  %i.fez = trunc i64 %indvars.iv.next8422 to i32
  %i.ffa = or i32 %i.fez, 1
  %i.ffb = icmp slt i32 %i.ffa, %i.bly
  br i1 %i.ffb, label %._crit_edge7705.us, label %.preheader6893.loopexit, !llvm.loop !166

.preheader6893.loopexit:                          ; preds = %._crit_edge7705.us, %._crit_edge7705.us.loopexit.us
  %.us-phi8434 = phi ptr [ %19, %._crit_edge7705.us.loopexit.us ], [ %i.fey, %._crit_edge7705.us ]
  %.us-phi8435 = phi i64 [ %indvars.iv.next8430.us, %._crit_edge7705.us.loopexit.us ], [ %indvars.iv.next8422, %._crit_edge7705.us ]
  %23 = phi <2 x float> [ %i.fex, %._crit_edge7705.us.loopexit.us ], [ %i.fcf, %._crit_edge7705.us ]
  %i.ffc = trunc nuw i64 %.us-phi8435 to i32
  br label %.preheader6893

.preheader6893:                                   ; preds = %.preheader6889.preheader, %.preheader6893.loopexit, %._crit_edge7668
  %.31897.lcssa = phi ptr [ %.21896.lcssa, %._crit_edge7668 ], [ %.us-phi8434, %.preheader6893.loopexit ], [ %scevgep8407, %.preheader6889.preheader ]
  %.31892.lcssa = phi i32 [ %.21891.lcssa, %._crit_edge7668 ], [ %i.ffc, %.preheader6893.loopexit ], [ %i.fct, %.preheader6889.preheader ] ; 2 uses
  %i.ffd = phi <2 x float> [ %i.fcf, %._crit_edge7668 ], [ %23, %.preheader6893.loopexit ], [ %i.fcf, %.preheader6889.preheader ] ; 3 uses
  %i.ffe = icmp slt i32 %.31892.lcssa, %i.bly
  br i1 %i.ffe, label %.preheader6888.lr.ph, label %._crit_edge7761

.preheader6888.lr.ph:                             ; preds = %.preheader6893
  %i.fff = load i32, ptr %i.d, align 4
  %i.ffg = load i32, ptr %i.j, align 4
  %invariant.op7750 = sub i32 %.neg6818, %i.ffg
  %i.ffh = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ffi = load i32, ptr %i.a, align 4
  %.fr8048 = freeze i32 %i.ffi                    ; 2 uses
  %i.ffj = load i32, ptr %i.c, align 4
  %i.ffk = load i32, ptr %i.i, align 4
  %.neg6804 = add nuw nsw i32 %.019317777, 1
  %invariant.op7742 = sub i32 %.neg6804, %i.ffk
  %i.ffl = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ffm = icmp sgt i32 %.fr8048, 0
  %or.cond8888 = and i1 %i.eis, %i.ffm
  br i1 %or.cond8888, label %.preheader6888.us.us.preheader, label %._crit_edge7761

.preheader6888.us.us.preheader:                   ; preds = %.preheader6888.lr.ph
  %i.ffn = zext nneg i32 %.fr8048 to i64          ; 2 uses
  %i.ffo = zext i32 %.31892.lcssa to i64
  br label %.preheader6888.us.us

.preheader6888.us.us:                             ; preds = %.preheader6888.us.us.preheader, %._crit_edge7747.split.us.us.us
  %indvars.iv8434 = phi i64 [ %i.ffo, %.preheader6888.us.us.preheader ], [ %indvars.iv.next8435, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %.418987758.us.us = phi ptr [ %.31897.lcssa, %.preheader6888.us.us.preheader ], [ %i.fhh, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %i.ffp = phi <2 x float> [ %i.ffd, %.preheader6888.us.us.preheader ], [ %i.fhg, %._crit_edge7747.split.us.us.us ]
  br label %bb.ci

bb.ci:                                            ; preds = %..loopexit6879_crit_edge.us.us.us, %.preheader6888.us.us
  %indvars.iv8429.a = phi i64 [ %indvars.iv.next8430, %..loopexit6879_crit_edge.us.us.us ], [ 0, %.preheader6888.us.us ] ; 3 uses
  %i.ffq = phi <2 x float> [ %i.fhg, %..loopexit6879_crit_edge.us.us.us ], [ %i.ffp, %.preheader6888.us.us ] ; 3 uses
  %i.ffr = trunc i64 %indvars.iv8429.a to i32
  %i.ffs = mul i32 %i.fff, %i.ffr
  %.reass7751.us.us.us = add i32 %i.ffs, %invariant.op7750 ; 3 uses
  %i.fft = icmp slt i32 %.reass7751.us.us.us, 0
  br i1 %i.fft, label %..loopexit6879_crit_edge.us.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ffu = srem i32 %.reass7751.us.us.us, %i.ffh
  %i.ffv = sdiv i32 %.reass7751.us.us.us, %i.ffh  ; 2 uses
  %.not2111.us.us.us = icmp eq i32 %i.ffu, 0
  %.not2112.us.us.us = icmp slt i32 %i.ffv, %i.bmc
  %or.cond8999 = select i1 %.not2111.us.us.us, i1 %.not2112.us.us.us, i1 false
  br i1 %or.cond8999, label %.preheader6878.us.us.us, label %..loopexit6879_crit_edge.us.us.us

.preheader6878.us.us.us:                          ; preds = %bb.cj
  %i.ffw = mul nuw nsw i64 %indvars.iv8429.a, %i.ffn
  %i.ffx = sext i32 %i.ffv to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %.preheader6878.us.us.us
  %indvars.iv8424 = phi i64 [ %indvars.iv.next8425, %bb.cm ], [ 0, %.preheader6878.us.us.us ] ; 3 uses
  %i.ffy = phi <2 x float> [ %i.fhf, %bb.cm ], [ %i.ffq, %.preheader6878.us.us.us ] ; 3 uses
  %i.ffz = trunc i64 %indvars.iv8424 to i32
  %i.fga = mul i32 %i.ffj, %i.ffz
  %.reass.us7752.us.us = add i32 %i.fga, %invariant.op7742 ; 3 uses
  %i.fgb = icmp slt i32 %.reass.us7752.us.us, 0
  br i1 %i.fgb, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fgc = srem i32 %.reass.us7752.us.us, %i.ffl
  %i.fgd = sdiv i32 %.reass.us7752.us.us, %i.ffl  ; 2 uses
  %.not2113.us.us.us = icmp eq i32 %i.fgc, 0
  %.not2114.us.us.us = icmp slt i32 %i.fgd, %i.bma
  %or.cond9000 = select i1 %.not2113.us.us.us, i1 %.not2114.us.us.us, i1 false
  br i1 %or.cond9000, label %_ZN4ncnn3MatD2Ev.exit2219.us.us.us, label %bb.cm

_ZN4ncnn3MatD2Ev.exit2219.us.us.us:               ; preds = %bb.cl
  %i.fge = add nuw nsw i64 %i.ffw, %indvars.iv8424
  %.idx8746 = shl nuw nsw i64 %i.fge, 2
  %i.fgf = getelementptr inbounds nuw i8, ptr %.418987758.us.us, i64 %.idx8746
  %i.fgg = load i32, ptr %i.blz, align 4, !tbaa !22, !noalias !258
  %i.fgh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !258
  %i.fgi = load i64, ptr %i.bmq, align 8, !tbaa !17, !noalias !258
  %i.fgj = mul i64 %i.fgi, %indvars.iv8434
  %i.fgk = load i64, ptr %i.bmr, align 8, !tbaa !24, !noalias !258 ; 2 uses
  %i.fgl = mul i64 %i.fgj, %i.fgk
  %i.fgm = getelementptr inbounds nuw i8, ptr %i.fgh, i64 %i.fgl
  %i.fgn = sext i32 %i.fgg to i64
  %i.fgo = mul nsw i64 %i.fgn, %i.ffx
  %i.fgp = mul i64 %i.fgo, %i.fgk
  %i.fgq = getelementptr inbounds nuw i8, ptr %i.fgm, i64 %i.fgp
  %i.fgr = sext i32 %i.fgd to i64
  %i.fgs = getelementptr inbounds [2 x i8], ptr %i.fgq, i64 %i.fgr
  %i.fgt = load i16, ptr %i.fgs, align 2, !tbaa !28
  %i.fgu = zext i16 %i.fgt to i32
  %i.fgv = shl nuw i32 %i.fgu, 16
  %i.fgw = load <2 x i16>, ptr %i.fgf, align 2, !tbaa !28
  %i.fgx = zext <2 x i16> %i.fgw to <2 x i32>
  %i.fgy = shl nuw <2 x i32> %i.fgx, splat (i32 16)
  %i.fgz = bitcast <2 x i32> %i.fgy to <2 x float>
  %i.fha = insertelement <2 x i32> poison, i32 %i.fgv, i64 0
  %i.fhb = bitcast <2 x i32> %i.fha to <2 x float>
  %i.fhc = shufflevector <2 x float> %i.fhb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fhd = fmul fast <2 x float> %i.fhc, %i.fgz
  %i.fhe = fadd fast <2 x float> %i.fhd, %i.ffy
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2219.us.us.us, %bb.cl, %bb.ck
  %i.fhf = phi <2 x float> [ %i.ffy, %bb.ck ], [ %i.ffy, %bb.cl ], [ %i.fhe, %_ZN4ncnn3MatD2Ev.exit2219.us.us.us ] ; 2 uses
  %indvars.iv.next8425 = add nuw nsw i64 %indvars.iv8424, 1 ; 2 uses
  %exitcond8428.not = icmp eq i64 %indvars.iv.next8425, %i.ffn
  br i1 %exitcond8428.not, label %..loopexit6879_crit_edge.us.us.us, label %bb.ck, !llvm.loop !169

..loopexit6879_crit_edge.us.us.us:                ; preds = %bb.cm, %bb.cj, %bb.ci
  %i.fhg = phi <2 x float> [ %i.ffq, %bb.ci ], [ %i.ffq, %bb.cj ], [ %i.fhf, %bb.cm ] ; 3 uses
  %indvars.iv.next8430 = add nuw nsw i64 %indvars.iv8429.a, 1 ; 2 uses
  %exitcond8433.not = icmp eq i64 %indvars.iv.next8430, %wide.trip.count8432
  br i1 %exitcond8433.not, label %._crit_edge7747.split.us.us.us, label %bb.ci, !llvm.loop !170

._crit_edge7747.split.us.us.us:                   ; preds = %..loopexit6879_crit_edge.us.us.us
  %i.fhh = getelementptr inbounds [2 x i8], ptr %.418987758.us.us, i64 %i.ejd
  %indvars.iv.next8435 = add nuw nsw i64 %indvars.iv8434, 1 ; 2 uses
  %i.fhi = trunc nuw i64 %indvars.iv.next8435 to i32
  %i.fhj = icmp sgt i32 %i.bly, %i.fhi
  br i1 %i.fhj, label %.preheader6888.us.us, label %._crit_edge7761, !llvm.loop !171

._crit_edge7761:                                  ; preds = %._crit_edge7747.split.us.us.us, %.preheader6888.lr.ph, %.preheader6893
  %i.fhk = phi <2 x float> [ %i.ffd, %.preheader6893 ], [ %i.ffd, %.preheader6888.lr.ph ], [ %i.fhg, %._crit_edge7747.split.us.us.us ] ; 12 uses
  switch i32 %i.eip, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764
    i32 6, label %bb.cn
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755: ; preds = %._crit_edge7761
  %i.fhl = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fhk, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758: ; preds = %._crit_edge7761
  %i.fhm = load ptr, ptr %11, align 8, !tbaa !19
  %i.fhn = load float, ptr %i.fhm, align 4, !tbaa !30
  %i.fho = fcmp fast ogt <2 x float> %i.fhk, zeroinitializer
  %i.fhp = insertelement <2 x float> poison, float %i.fhn, i64 0
  %i.fhq = shufflevector <2 x float> %i.fhp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fhr = select <2 x i1> %i.fho, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fhq
  %i.fhs = fmul fast <2 x float> %i.fhr, %i.fhk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752: ; preds = %._crit_edge7761
  %i.fht = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fhu = load float, ptr %i.fht, align 4, !tbaa !30 ; 2 uses
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fht, i64 4
  %i.fhw = load float, ptr %i.fhv, align 4, !tbaa !30 ; 3 uses
  %i.fhx = extractelement <2 x float> %i.fhk, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fhx, float %i.fhu) ; 2 uses
  %i.fhy = fcmp fast ogt float %spec.select, %i.fhw
  %.165306754 = select i1 %i.fhy, float %i.fhw, float %spec.select
  %i.fhz = extractelement <2 x float> %i.fhk, i64 1
  %.06531 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fhz, float %i.fhu)
  %spec.select6779 = call nnan ninf nsz float @llvm.minnum.f32(float %.06531, float %i.fhw)
  %i.fia = insertelement <2 x float> poison, float %.165306754, i64 0
  %i.fib = insertelement <2 x float> %i.fia, float %spec.select6779, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761: ; preds = %._crit_edge7761
  %i.fic = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fhk, <2 x float> splat (float f0x42B0C0A5))
  %i.fid = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fic, <2 x float> splat (float f0xC2B0C0A5))
  %i.fie = fneg fast <2 x float> %i.fid
  %i.fif = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fie)
  %i.fig = fadd fast <2 x float> %i.fif, splat (float 1.000000e+00)
  %i.fih = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fig
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764: ; preds = %._crit_edge7761
  %i.fii = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fhk)
  %i.fij = fadd fast <2 x float> %i.fii, splat (float 1.000000e+00)
  %i.fik = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.fij)
  %i.fil = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fik)
  %i.fim = fmul fast <2 x float> %i.fil, %i.fhk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

bb.cn:                                            ; preds = %._crit_edge7761
  %i.fin = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.fio = load float, ptr %i.fin, align 4, !tbaa !30 ; 5 uses
  %i.fip = getelementptr inbounds nuw i8, ptr %i.fin, i64 4
  %i.fiq = load float, ptr %i.fip, align 4, !tbaa !30 ; 3 uses
  %i.fir = fneg fast float %i.fiq
  %i.fis = fdiv fast float %i.fir, %i.fio         ; 4 uses
  %i.fit = extractelement <2 x float> %i.fhk, i64 0 ; 5 uses
  %i.fiu = fcmp fast olt float %i.fit, %i.fis
  br i1 %i.fiu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fiv = fdiv fast float 1.000000e+00, %i.fio
  %i.fiw = fadd fast float %i.fis, %i.fiv
  %i.fix = fcmp fast ogt float %i.fit, %i.fiw
  br i1 %i.fix, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fiy = fmul fast float %i.fio, %i.fit
  %i.fiz = fadd fast float %i.fiy, %i.fiq
  %i.fja = fmul fast float %i.fiz, %i.fit
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread: ; preds = %bb.cp, %bb.co, %bb.cn
  %.165306748 = phi float [ %i.fja, %bb.cp ], [ 0.000000e+00, %bb.cn ], [ %i.fit, %bb.co ] ; 2 uses
  %i.fjb = extractelement <2 x float> %i.fhk, i64 1 ; 4 uses
  %i.fjc = fcmp fast olt float %i.fjb, %i.fis
  %i.fjd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.165306748, i64 0 ; 2 uses
  br i1 %i.fjc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cq

bb.cq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread
  %i.fje = fdiv fast float 1.000000e+00, %i.fio
  %i.fjf = fadd fast float %i.fis, %i.fje
  %i.fjg = fcmp fast ogt float %i.fjb, %i.fjf
  %i.fjh = insertelement <2 x float> %i.fhk, float %.165306748, i64 0
  br i1 %i.fjg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fji = fmul fast float %i.fio, %i.fjb
  %i.fjj = fadd fast float %i.fji, %i.fiq
  %i.fjk = fmul fast float %i.fjj, %i.fjb
  %i.fjl = insertelement <2 x float> %i.fjd, float %i.fjk, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2462

_ZL13activation_ssfiRKN4ncnn3MatE.exit2462:       ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752, %._crit_edge7761, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764, %bb.cq, %bb.cr
  %i.fjm = phi <2 x float> [ %i.fjd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread ], [ %i.fhl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6755 ], [ %i.fhs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6758 ], [ %i.fhk, %._crit_edge7761 ], [ %i.fib, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6752 ], [ %i.fih, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6761 ], [ %i.fim, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2463.thread6764 ], [ %i.fjl, %bb.cr ], [ %i.fjh, %bb.cq ]
  %i.fjn = bitcast <2 x float> %i.fjm to <2 x i32>
  %i.fjo = lshr <2 x i32> %i.fjn, splat (i32 16)
  %i.fjp = trunc nuw <2 x i32> %i.fjo to <2 x i16> ; 2 uses
  %i.fjq = extractelement <2 x i16> %i.fjp, i64 0
  store i16 %i.fjq, ptr %.119367775, align 2, !tbaa !28
  %i.fjr = extractelement <2 x i16> %i.fjp, i64 1
  store i16 %i.fjr, ptr %.119347776, align 2, !tbaa !28
  %i.fjs = getelementptr inbounds nuw i8, ptr %.119367775, i64 2 ; 2 uses
  %i.fjt = getelementptr inbounds nuw i8, ptr %.119347776, i64 2 ; 2 uses
  %i.fju = add nuw nsw i32 %.019317777, 1         ; 2 uses
  %exitcond8437.not = icmp eq i32 %i.fju, %i.bme
  br i1 %exitcond8437.not, label %._crit_edge7778, label %bb.bp, !llvm.loop !172

._crit_edge8018.split:                            ; preds = %._crit_edge8016, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph, %._crit_edge7786.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  ret void

_ZN4ncnn3MatD2Ev.exit2218:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split, %._crit_edge8016
  %indvars.iv8537 = phi i64 [ %i.ehs, %_ZN4ncnn3MatD2Ev.exit2218.lr.ph.split.split ], [ %indvars.iv.next8538, %._crit_edge8016 ] ; 4 uses
  %.reass8020 = mul i64 %factor.op.mul8019, %indvars.iv8537
  %i.fjv = getelementptr inbounds nuw i8, ptr %i.egr, i64 %.reass8020
  %i.fjw = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fjw, null
  %i.fjx = getelementptr inbounds [4 x i8], ptr %i.fjw, i64 %indvars.iv8537
  %i.fjy = trunc nsw i64 %indvars.iv8537 to i32   ; 2 uses
  %i.fjz = sdiv i32 %i.fjy, 16
  %i.fka = insertelement <4 x i32> poison, i32 %i.fjy, i64 0
  %i.fkb = shufflevector <4 x i32> %i.fka, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fkc = srem <4 x i32> %i.fkb, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fkd = bitcast <4 x i32> %i.fkc to <16 x i8>
  %.lhs.trunc6771 = extractelement <16 x i8> %i.fkd, i64 0
  %i.fke = sdiv i8 %.lhs.trunc6771, 8
  %.sext6772 = sext i8 %i.fke to i32
  %i.fkf = bitcast <4 x i32> %i.fkc to <16 x i8>
  %.lhs.trunc6773 = extractelement <16 x i8> %i.fkf, i64 4
  %i.fkg = sdiv i8 %.lhs.trunc6773, 4
  %.sext6774 = sext i8 %i.fkg to i32
  %i.fkh = bitcast <4 x i32> %i.fkc to <16 x i8>
  %.lhs.trunc6775 = extractelement <16 x i8> %i.fkh, i64 8
  %i.fki = sdiv i8 %.lhs.trunc6775, 2
  %.sext6776 = sext i8 %i.fki to i32
  %i.fkj = extractelement <4 x i32> %i.fkc, i64 3
  %i.fkk = add nsw i32 %i.fkj, %i.fjz
  %i.fkl = add nsw i32 %i.fkk, %.sext6772
  %i.fkm = add nsw i32 %i.fkl, %.sext6774
  %i.fkn = add nsw i32 %i.fkm, %.sext6776
  %i.fko = sext i32 %i.fkn to i64
  %i.fkp = load i32, ptr %i.g, align 4
  %.reass8023 = mul i64 %factor.op.mul8022, %i.fko
  %i.fkq = getelementptr i8, ptr %i.ehf, i64 %.reass8023 ; 3 uses
  br label %.preheader6876

.preheader6876:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2218, %._crit_edge8012
  %.018698015 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %.neg6798, %._crit_edge8012 ]
  %.018708014 = phi ptr [ %i.fjv, %_ZN4ncnn3MatD2Ev.exit2218 ], [ %i.gin, %._crit_edge8012 ]
  %i.fkr = load i32, ptr %i.b, align 4            ; 6 uses
  %i.fks = icmp sgt i32 %i.fkr, 0                 ; 5 uses
  %.neg6798 = add nuw nsw i32 %.018698015, 1      ; 7 uses
  %i.fkt = load i32, ptr %i.k, align 4            ; 5 uses
  %i.fku = shl i32 %i.fkt, 4
  %i.fkv = sext i32 %i.fku to i64                 ; 2 uses
  %i.fkw = shl i32 %i.fkt, 3
  %i.fkx = sext i32 %i.fkw to i64                 ; 2 uses
  %i.fky = shl i32 %i.fkt, 2
  %i.fkz = sext i32 %i.fky to i64                 ; 3 uses
  %i.fla = shl i32 %i.fkt, 1
  %i.flb = sext i32 %i.fla to i64                 ; 3 uses
  %i.flc = sext i32 %i.fkt to i64
  %i.fld = mul nsw i64 %i.ehl, %i.fkv
  %scevgep8445 = getelementptr i8, ptr %i.fkq, i64 %i.fld
  %wide.trip.count8458 = zext nneg i32 %i.fkr to i64
  %wide.trip.count8476 = zext nneg i32 %i.fkr to i64
  %wide.trip.count8500 = zext nneg i32 %i.fkr to i64
  %wide.trip.count8517 = zext nneg i32 %i.fkr to i64
  %wide.trip.count8530 = zext nneg i32 %i.fkr to i64
  br label %bb.cs

._crit_edge8016:                                  ; preds = %._crit_edge8012
  %indvars.iv.next8538 = add nsw i64 %indvars.iv8537, 1 ; 2 uses
  %exitcond8541.not = icmp eq i64 %indvars.iv.next8538, %wide.trip.count8540
  br i1 %exitcond8541.not, label %._crit_edge8018.split, label %_ZN4ncnn3MatD2Ev.exit2218, !llvm.loop !173

._crit_edge8012:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %exitcond8536.not = icmp eq i32 %.neg6798, %i.egq
  br i1 %exitcond8536.not, label %._crit_edge8016, label %.preheader6876, !llvm.loop !174

bb.cs:                                            ; preds = %.preheader6876, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.018688011 = phi i32 [ 0, %.preheader6876 ], [ %i.gio, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.118718010 = phi ptr [ %.018708014, %.preheader6876 ], [ %i.gin, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2217, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fle = load float, ptr %i.fjx, align 4, !tbaa !30
  br label %_ZN4ncnn3MatD2Ev.exit2217

_ZN4ncnn3MatD2Ev.exit2217:                        ; preds = %bb.ct, %bb.cs
  %.01853 = phi nsz float [ %i.fle, %bb.ct ], [ 0.000000e+00, %bb.cs ]
  br i1 %i.egx, label %.preheader6874.lr.ph, label %._crit_edge7827

.preheader6874.lr.ph:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2217
  %i.flf = load i32, ptr %i.j, align 4
  %invariant.op7811 = sub i32 %.neg6798, %i.flf
  %i.flg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.flh = load i32, ptr %i.a, align 4
  %.fr8051 = freeze i32 %i.flh                    ; 2 uses
  %24 = icmp slt i32 %.fr8051, 1
  %i.fli = load i32, ptr %i.i, align 4
  %.neg6800 = add nuw nsw i32 %.018688011, 1
  %invariant.op7802 = sub i32 %.neg6800, %i.fli
  %i.flj = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fks, label %.preheader6874.us.preheader, label %._crit_edge7827

.preheader6874.us.preheader:                      ; preds = %.preheader6874.lr.ph
  %i.flk = load i32, ptr %i.c, align 4
  %i.fll = load i32, ptr %i.d, align 4
  %i.flm = zext i32 %.fr8051 to i64               ; 2 uses
  %brmerge8919 = select i1 %24, i1 true, i1 %14
  br label %.preheader6874.us

.preheader6874.us:                                ; preds = %.preheader6874.us.preheader, %._crit_edge7809.us
  %indvars.iv8460 = phi i64 [ 0, %.preheader6874.us.preheader ], [ %indvars.iv.next8461, %._crit_edge7809.us ] ; 20 uses
  %.018487823.us = phi ptr [ %i.fkq, %.preheader6874.us.preheader ], [ %i.fso, %._crit_edge7809.us ] ; 2 uses
  %.066107822.us = phi <16 x float> [ zeroinitializer, %.preheader6874.us.preheader ], [ %.us-phi7820.us, %._crit_edge7809.us ] ; 2 uses
  %i.fln = lshr exact i64 %indvars.iv8460, 4
  %i.flo = lshr exact i64 %indvars.iv8460, 3      ; 3 uses
  %i.flp = or disjoint i64 %i.flo, 1              ; 2 uses
  %i.flq = lshr exact i64 %indvars.iv8460, 2      ; 4 uses
  %i.flr = or disjoint i64 %i.flq, 1
  %i.fls = or disjoint i64 %i.flq, 2
  %i.flt = or disjoint i64 %i.flq, 3
  br i1 %brmerge8919, label %._crit_edge7809.us, label %.lr.ph7808.split.us.us.preheader

.lr.ph7808.split.us.us.preheader:                 ; preds = %.preheader6874.us
  %i.flu = or disjoint i64 %indvars.iv8460, 1
  %i.flv = or disjoint i64 %indvars.iv8460, 2
  %i.flw = or disjoint i64 %indvars.iv8460, 3
  %i.flx = or disjoint i64 %indvars.iv8460, 4
  %i.fly = or disjoint i64 %indvars.iv8460, 5
  %i.flz = or disjoint i64 %indvars.iv8460, 6
  %i.fma = or disjoint i64 %indvars.iv8460, 7
  %i.fmb = or disjoint i64 %indvars.iv8460, 8
  %i.fmc = or disjoint i64 %indvars.iv8460, 9
  %i.fmd = or disjoint i64 %indvars.iv8460, 10
  %i.fme = or disjoint i64 %indvars.iv8460, 11
  %i.fmf = or disjoint i64 %indvars.iv8460, 12
  %i.fmg = or disjoint i64 %indvars.iv8460, 13
  %i.fmh = or disjoint i64 %indvars.iv8460, 14
  %i.fmi = or disjoint i64 %indvars.iv8460, 15
  br label %.lr.ph7808.split.us.us

.lr.ph7808.split.us.us:                           ; preds = %..loopexit6869_crit_edge.us.us, %.lr.ph7808.split.us.us.preheader
  %indvars.iv8455 = phi i64 [ 0, %.lr.ph7808.split.us.us.preheader ], [ %indvars.iv.next8456, %..loopexit6869_crit_edge.us.us ] ; 3 uses
  %.166117806.us.us = phi <16 x float> [ %.066107822.us, %.lr.ph7808.split.us.us.preheader ], [ %.76617.us.us.us, %..loopexit6869_crit_edge.us.us ] ; 3 uses
  %i.fmj = trunc i64 %indvars.iv8455 to i32
  %i.fmk = mul i32 %i.fll, %i.fmj
  %.reass7812.us.us = add i32 %i.fmk, %invariant.op7811 ; 3 uses
  %i.fml = icmp slt i32 %.reass7812.us.us, 0
  br i1 %i.fml, label %..loopexit6869_crit_edge.us.us, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph7808.split.us.us
  %i.fmm = srem i32 %.reass7812.us.us, %i.flg
  %i.fmn = sdiv i32 %.reass7812.us.us, %i.flg     ; 2 uses
  %.not2106.us.us = icmp eq i32 %i.fmm, 0
  %.not2107.us.us = icmp slt i32 %i.fmn, %i.egm
  %or.cond9001 = select i1 %.not2106.us.us, i1 %.not2107.us.us, i1 false
  br i1 %or.cond9001, label %.preheader6868.us.us, label %..loopexit6869_crit_edge.us.us

.preheader6868.us.us:                             ; preds = %bb.cu
  %i.fmo = mul nuw nsw i64 %indvars.iv8455, %i.flm
  %i.fmp = sext i32 %i.fmn to i64                 ; 4 uses
  br label %.lr.ph.split.us.us.us7838

.lr.ph.split.us.us.us7838:                        ; preds = %bb.cw, %.preheader6868.us.us
  %indvars.iv8450 = phi i64 [ 0, %.preheader6868.us.us ], [ %indvars.iv.next8451, %bb.cw ] ; 3 uses
  %.266127799.us.us.us = phi <16 x float> [ %.166117806.us.us, %.preheader6868.us.us ], [ %.66616.us.us.us, %bb.cw ] ; 7 uses
  %i.fmq = trunc i64 %indvars.iv8450 to i32
  %i.fmr = mul i32 %i.flk, %i.fmq
  %.reass7803.us.us.us = add i32 %i.fmr, %invariant.op7802 ; 3 uses
  %i.fms = icmp slt i32 %.reass7803.us.us.us, 0
  br i1 %i.fms, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.split.us.us.us7838
  %i.fmt = srem i32 %.reass7803.us.us.us, %i.flj
  %i.fmu = sdiv i32 %.reass7803.us.us.us, %i.flj  ; 6 uses
  %.not2108.us.us.us = icmp eq i32 %i.fmt, 0
  %.not2109.us.us.us = icmp slt i32 %i.fmu, %i.egk
  %or.cond9002 = select i1 %.not2108.us.us.us, i1 %.not2109.us.us.us, i1 false
  br i1 %or.cond9002, label %.split2197.us.us.us, label %bb.cw

.split2197.us.us.us:                              ; preds = %bb.cv
  %i.fmv = add nuw nsw i64 %i.fmo, %indvars.iv8450
  %i.fmw = shl i64 %i.fmv, 4
  %i.fmx = and i64 %i.fmw, 4294967280
  %i.fmy = getelementptr inbounds nuw [2 x i8], ptr %.018487823.us, i64 %i.fmx ; 4 uses
  switch i32 %i.egz, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
    i32 3, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us
    i32 2, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge
    i32 0, label %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge
  ]

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8579 = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !259
  %.pre8580 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !259
  %.pre8581 = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !259
  %.pre8582 = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !259 ; 2 uses
  %.pre8598 = sext i32 %.pre8579 to i64
  %.pre8600.a = mul nsw i64 %.pre8598, %i.fmp
  %.pre8602 = mul i64 %.pre8600.a, %.pre8582
  br label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us

.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge: ; preds = %.split2197.us.us.us
  %.pre8574 = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !260
  %.pre8575 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !260
  %.pre8576 = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !260
  %.pre8577 = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !260 ; 2 uses
  %.pre8578 = load <16 x bfloat>, ptr %i.fmy, align 32, !tbaa !26
  %.pre8590.a = sext i32 %.pre8574 to i64
  %.pre8592 = mul nsw i64 %.pre8590.a, %i.fmp
  %.pre8594 = mul i64 %.pre8592, %.pre8577
  %.pre8596 = fpext fast <16 x bfloat> %.pre8578 to <16 x float>
  br label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us

_ZN4ncnn3MatD2Ev.exit2216.us.us.us:               ; preds = %.split2197.us.us.us
  %i.fmz = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !261
  %i.fna = load ptr, ptr %0, align 8, !tbaa !19, !noalias !261 ; 5 uses
  %i.fnb = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !261 ; 5 uses
  %i.fnc = mul i64 %i.fnb, %i.fln
  %i.fnd = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !261 ; 6 uses
  %i.fne = mul i64 %i.fnc, %i.fnd
  %i.fnf = getelementptr inbounds nuw i8, ptr %i.fna, i64 %i.fne
  %i.fng = sext i32 %i.fmz to i64
  %i.fnh = mul nsw i64 %i.fng, %i.fmp
  %i.fni = mul i64 %i.fnh, %i.fnd                 ; 5 uses
  %i.fnj = getelementptr inbounds nuw i8, ptr %i.fnf, i64 %i.fni
  %i.fnk = shl nsw i32 %i.fmu, 4
  %i.fnl = sext i32 %i.fnk to i64
  %i.fnm = getelementptr inbounds [2 x i8], ptr %i.fnj, i64 %i.fnl
  %i.fnn = load <16 x bfloat>, ptr %i.fnm, align 32, !tbaa !26
  %i.fno = fpext fast <16 x bfloat> %i.fnn to <16 x float>
  %i.fnp = load <16 x bfloat>, ptr %i.fmy, align 32, !tbaa !26
  %i.fnq = fpext fast <16 x bfloat> %i.fnp to <16 x float> ; 3 uses
  %i.fnr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fno, <16 x float> nofpclass(nan inf) %i.fnq, <16 x float> nofpclass(nan inf) %.266127799.us.us.us) ; 4 uses
  switch i32 %.fr8050, label %bb.cw [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %i.fns = mul i64 %i.fnb, %i.flo
  %i.fnt = mul i64 %i.fns, %i.fnd
  %i.fnu = getelementptr inbounds nuw i8, ptr %i.fna, i64 %i.fnt
  %i.fnv = getelementptr inbounds nuw i8, ptr %i.fnu, i64 %i.fni
  %i.fnw = shl nsw i32 %i.fmu, 3
  %i.fnx = sext i32 %i.fnw to i64                 ; 2 uses
  %i.fny = getelementptr inbounds [2 x i8], ptr %i.fnv, i64 %i.fnx
  %i.fnz = mul i64 %i.fnb, %i.flp
  %i.foa = mul i64 %i.fnz, %i.fnd
  %i.fob = getelementptr inbounds nuw i8, ptr %i.fna, i64 %i.foa
  %i.foc = getelementptr inbounds nuw i8, ptr %i.fob, i64 %i.fni
  %i.fod = getelementptr inbounds [2 x i8], ptr %i.foc, i64 %i.fnx
  %i.foe = load <8 x bfloat>, ptr %i.fny, align 16, !tbaa !26
  %i.fof = fpext fast <8 x bfloat> %i.foe to <8 x float>
  %i.fog = load <8 x bfloat>, ptr %i.fod, align 16, !tbaa !26
  %i.foh = fpext fast <8 x bfloat> %i.fog to <8 x float>
  %i.foi = shufflevector <8 x float> %i.fof, <8 x float> %i.foh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.foj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.foi, <16 x float> nofpclass(nan inf) %i.fnq, <16 x float> nofpclass(nan inf) %i.fnr)
  br label %bb.cw

_ZN4ncnn3MatD2Ev.exit2215.us.us.us:               ; preds = %.split2197.us.us.us
  %.pre8569 = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !262
  %.pre8570 = load ptr, ptr %0, align 8, !tbaa !19, !noalias !262 ; 4 uses
  %.pre8571 = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !262 ; 4 uses
  %.pre8572 = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !262 ; 5 uses
  %.pre8573 = load <16 x bfloat>, ptr %i.fmy, align 32, !tbaa !26
  %.pre8583 = sext i32 %.pre8569 to i64
  %.pre8584 = mul nsw i64 %.pre8583, %i.fmp
  %.pre8586 = mul i64 %.pre8584, %.pre8572        ; 4 uses
  %.pre8588 = fpext fast <16 x bfloat> %.pre8573 to <16 x float> ; 2 uses
  %i.fok = mul i64 %.pre8571, %i.flo
  %i.fol = mul i64 %i.fok, %.pre8572
  %i.fom = getelementptr inbounds nuw i8, ptr %.pre8570, i64 %i.fol
  %i.fon = getelementptr inbounds nuw i8, ptr %i.fom, i64 %.pre8586
  %i.foo = shl nsw i32 %i.fmu, 3
  %i.fop = sext i32 %i.foo to i64                 ; 2 uses
  %i.foq = getelementptr inbounds [2 x i8], ptr %i.fon, i64 %i.fop
  %i.for = mul i64 %.pre8571, %i.flp
  %i.fos = mul i64 %i.for, %.pre8572
  %i.fot = getelementptr inbounds nuw i8, ptr %.pre8570, i64 %i.fos
  %i.fou = getelementptr inbounds nuw i8, ptr %i.fot, i64 %.pre8586
  %i.fov = getelementptr inbounds [2 x i8], ptr %i.fou, i64 %i.fop
  %i.fow = load <8 x bfloat>, ptr %i.foq, align 16, !tbaa !26
  %i.fox = fpext fast <8 x bfloat> %i.fow to <8 x float>
  %i.foy = load <8 x bfloat>, ptr %i.fov, align 16, !tbaa !26
  %i.foz = fpext fast <8 x bfloat> %i.foy to <8 x float>
  %i.fpa = shufflevector <8 x float> %i.fox, <8 x float> %i.foz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fpb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fpa, <16 x float> nofpclass(nan inf) %.pre8588, <16 x float> nofpclass(nan inf) %.266127799.us.us.us) ; 3 uses
  switch i32 %.fr8050, label %bb.cw [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2213.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2213.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8597 = phi <16 x float> [ %.pre8596, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8588, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.pre-phi8595 = phi i64 [ %.pre8594, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fni, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fpc = phi i64 [ %.pre8577, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8572, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnd, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fpd = phi i64 [ %.pre8576, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8571, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnb, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.fpe = phi ptr [ %.pre8575, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8570, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fna, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %.46614.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %i.fpb, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnr, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fpf = mul i64 %i.fpd, %i.flq
  %i.fpg = mul i64 %i.fpf, %i.fpc
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fpg
  %i.fpi = getelementptr inbounds nuw i8, ptr %i.fph, i64 %.pre-phi8595
  %i.fpj = shl nsw i32 %i.fmu, 2
  %i.fpk = sext i32 %i.fpj to i64                 ; 4 uses
  %i.fpl = getelementptr inbounds [2 x i8], ptr %i.fpi, i64 %i.fpk
  %i.fpm = mul i64 %i.fpd, %i.flr
  %i.fpn = mul i64 %i.fpm, %i.fpc
  %i.fpo = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fpn
  %i.fpp = getelementptr inbounds nuw i8, ptr %i.fpo, i64 %.pre-phi8595
  %i.fpq = getelementptr inbounds [2 x i8], ptr %i.fpp, i64 %i.fpk
  %i.fpr = mul i64 %i.fpd, %i.fls
  %i.fps = mul i64 %i.fpr, %i.fpc
  %i.fpt = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fps
  %i.fpu = getelementptr inbounds nuw i8, ptr %i.fpt, i64 %.pre-phi8595
  %i.fpv = getelementptr inbounds [2 x i8], ptr %i.fpu, i64 %i.fpk
  %i.fpw = mul i64 %i.fpd, %i.flt
  %i.fpx = mul i64 %i.fpw, %i.fpc
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fpx
  %i.fpz = getelementptr inbounds nuw i8, ptr %i.fpy, i64 %.pre-phi8595
  %i.fqa = getelementptr inbounds [2 x i8], ptr %i.fpz, i64 %i.fpk
  %i.fqb = load i64, ptr %i.fpl, align 1, !tbaa !26
  %i.fqc = insertelement <2 x i64> poison, i64 %i.fqb, i64 0
  %i.fqd = bitcast <2 x i64> %i.fqc to <8 x i16>
  %i.fqe = shufflevector <8 x i16> %i.fqd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fqf = bitcast <8 x i16> %i.fqe to <4 x float>
  %i.fqg = load i64, ptr %i.fpq, align 1, !tbaa !26
  %i.fqh = insertelement <2 x i64> poison, i64 %i.fqg, i64 0
  %i.fqi = bitcast <2 x i64> %i.fqh to <8 x i16>
  %i.fqj = shufflevector <8 x i16> %i.fqi, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fqk = bitcast <8 x i16> %i.fqj to <4 x float>
  %i.fql = load i64, ptr %i.fpv, align 1, !tbaa !26
  %i.fqm = insertelement <2 x i64> poison, i64 %i.fql, i64 0
  %i.fqn = bitcast <2 x i64> %i.fqm to <8 x i16>
  %i.fqo = shufflevector <8 x i16> %i.fqn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fqp = bitcast <8 x i16> %i.fqo to <4 x float>
  %i.fqq = load i64, ptr %i.fqa, align 1, !tbaa !26
  %i.fqr = insertelement <2 x i64> poison, i64 %i.fqq, i64 0
  %i.fqs = bitcast <2 x i64> %i.fqr to <8 x i16>
  %i.fqt = shufflevector <8 x i16> %i.fqs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fqu = bitcast <8 x i16> %i.fqt to <4 x float>
  %i.fqv = shufflevector <4 x float> %i.fqf, <4 x float> %i.fqk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fqw = shufflevector <4 x float> %i.fqp, <4 x float> %i.fqu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fqx = shufflevector <16 x float> %i.fqv, <16 x float> %i.fqw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fqy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fqx, <16 x float> nofpclass(nan inf) %.pre-phi8597, <16 x float> nofpclass(nan inf) %.46614.us.us.us) ; 2 uses
  br i1 %i.ehc, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, label %bb.cw

_ZN4ncnn3MatD2Ev.exit2209.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8603 = phi i64 [ %.pre8602, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %.pre-phi8595, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fni, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fqz = phi i64 [ %.pre8582, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fpc, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8572, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnd, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fra = phi i64 [ %.pre8581, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fpd, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8571, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnb, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.frb = phi ptr [ %.pre8580, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fpe, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8570, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fna, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.56615.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fqy, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %i.fpb, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fnr, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %factor.op.mul7794.us.us.us = mul i64 %i.fra, %i.fqz ; 16 uses
  %invariant.gep.us.us7819.us = getelementptr i8, ptr %i.frb, i64 %.pre-phi8603
  %i.frc = sext i32 %i.fmu to i64
  %invariant.gep7796.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7819.us, i64 %i.frc ; 16 uses
  %.reass7795.us.us.us = mul i64 %factor.op.mul7794.us.us.us, %indvars.iv8460
  %gep7797.us.us.us = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us
  %i.frd = load i16, ptr %gep7797.us.us.us, align 2, !tbaa !28
  %.reass7795.us.us.us.1 = mul i64 %factor.op.mul7794.us.us.us, %i.flu
  %gep7797.us.us.us.1 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.1
  %i.fre = load i16, ptr %gep7797.us.us.us.1, align 2, !tbaa !28
  %.reass7795.us.us.us.2 = mul i64 %factor.op.mul7794.us.us.us, %i.flv
  %gep7797.us.us.us.2 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.2
  %i.frf = load i16, ptr %gep7797.us.us.us.2, align 2, !tbaa !28
  %.reass7795.us.us.us.3 = mul i64 %factor.op.mul7794.us.us.us, %i.flw
  %gep7797.us.us.us.3 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.3
  %i.frg = load i16, ptr %gep7797.us.us.us.3, align 2, !tbaa !28
  %.reass7795.us.us.us.4 = mul i64 %factor.op.mul7794.us.us.us, %i.flx
  %gep7797.us.us.us.4 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.4
  %i.frh = load i16, ptr %gep7797.us.us.us.4, align 2, !tbaa !28
  %.reass7795.us.us.us.5 = mul i64 %factor.op.mul7794.us.us.us, %i.fly
  %gep7797.us.us.us.5 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.5
  %i.fri = load i16, ptr %gep7797.us.us.us.5, align 2, !tbaa !28
  %.reass7795.us.us.us.6 = mul i64 %factor.op.mul7794.us.us.us, %i.flz
  %gep7797.us.us.us.6 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.6
  %i.frj = load i16, ptr %gep7797.us.us.us.6, align 2, !tbaa !28
  %.reass7795.us.us.us.7 = mul i64 %factor.op.mul7794.us.us.us, %i.fma
  %gep7797.us.us.us.7 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.7
  %i.frk = load i16, ptr %gep7797.us.us.us.7, align 2, !tbaa !28
  %.reass7795.us.us.us.8 = mul i64 %factor.op.mul7794.us.us.us, %i.fmb
  %gep7797.us.us.us.8 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.8
  %i.frl = load i16, ptr %gep7797.us.us.us.8, align 2, !tbaa !28
  %.reass7795.us.us.us.9 = mul i64 %factor.op.mul7794.us.us.us, %i.fmc
  %gep7797.us.us.us.9 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.9
  %i.frm = load i16, ptr %gep7797.us.us.us.9, align 2, !tbaa !28
  %.reass7795.us.us.us.10 = mul i64 %factor.op.mul7794.us.us.us, %i.fmd
  %gep7797.us.us.us.10 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.10
  %i.frn = load i16, ptr %gep7797.us.us.us.10, align 2, !tbaa !28
  %.reass7795.us.us.us.11 = mul i64 %factor.op.mul7794.us.us.us, %i.fme
  %gep7797.us.us.us.11 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.11
  %i.fro = load i16, ptr %gep7797.us.us.us.11, align 2, !tbaa !28
  %.reass7795.us.us.us.12 = mul i64 %factor.op.mul7794.us.us.us, %i.fmf
  %gep7797.us.us.us.12 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.12
  %i.frp = load i16, ptr %gep7797.us.us.us.12, align 2, !tbaa !28
  %.reass7795.us.us.us.13 = mul i64 %factor.op.mul7794.us.us.us, %i.fmg
  %gep7797.us.us.us.13 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.13
  %i.frq = load i16, ptr %gep7797.us.us.us.13, align 2, !tbaa !28
  %.reass7795.us.us.us.14 = mul i64 %factor.op.mul7794.us.us.us, %i.fmh
  %gep7797.us.us.us.14 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.14
  %i.frr = load i16, ptr %gep7797.us.us.us.14, align 2, !tbaa !28
  %.reass7795.us.us.us.15 = mul i64 %factor.op.mul7794.us.us.us, %i.fmi
  %gep7797.us.us.us.15 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.15
  %i.frs = load i16, ptr %gep7797.us.us.us.15, align 2, !tbaa !28
  %i.frt = insertelement <16 x i16> poison, i16 %i.frd, i64 0
  %i.fru = insertelement <16 x i16> %i.frt, i16 %i.fre, i64 1
  %i.frv = insertelement <16 x i16> %i.fru, i16 %i.frf, i64 2
  %i.frw = insertelement <16 x i16> %i.frv, i16 %i.frg, i64 3
  %i.frx = insertelement <16 x i16> %i.frw, i16 %i.frh, i64 4
  %i.fry = insertelement <16 x i16> %i.frx, i16 %i.fri, i64 5
  %i.frz = insertelement <16 x i16> %i.fry, i16 %i.frj, i64 6
  %i.fsa = insertelement <16 x i16> %i.frz, i16 %i.frk, i64 7
  %i.fsb = insertelement <16 x i16> %i.fsa, i16 %i.frl, i64 8
  %i.fsc = insertelement <16 x i16> %i.fsb, i16 %i.frm, i64 9
  %i.fsd = insertelement <16 x i16> %i.fsc, i16 %i.frn, i64 10
  %i.fse = insertelement <16 x i16> %i.fsd, i16 %i.fro, i64 11
  %i.fsf = insertelement <16 x i16> %i.fse, i16 %i.frp, i64 12
  %i.fsg = insertelement <16 x i16> %i.fsf, i16 %i.frq, i64 13
  %i.fsh = insertelement <16 x i16> %i.fsg, i16 %i.frr, i64 14
  %i.fsi = insertelement <16 x i16> %i.fsh, i16 %i.frs, i64 15
  %i.fsj = zext <16 x i16> %i.fsi to <16 x i32>
  %i.fsk = shl nuw <16 x i32> %i.fsj, splat (i32 16)
  %.sroa.08545.60.vec.insert = bitcast <16 x i32> %i.fsk to <16 x float>
  %i.fsl = load <16 x bfloat>, ptr %i.fmy, align 32, !tbaa !26
  %i.fsm = fpext fast <16 x bfloat> %i.fsl to <16 x float>
  %i.fsn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08545.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fsm, <16 x float> nofpclass(nan inf) %.56615.us.us.us)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us, %.split2197.us.us.us, %bb.cv, %.lr.ph.split.us.us.us7838
  %.66616.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.lr.ph.split.us.us.us7838 ], [ %.266127799.us.us.us, %.split2197.us.us.us ], [ %i.fnr, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ], [ %i.fpb, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsn, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us ], [ %i.fqy, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.266127799.us.us.us, %bb.cv ], [ %i.foj, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread ] ; 2 uses
  %indvars.iv.next8451 = add nuw nsw i64 %indvars.iv8450, 1 ; 2 uses
  %exitcond8454.not = icmp eq i64 %indvars.iv.next8451, %i.flm
  br i1 %exitcond8454.not, label %..loopexit6869_crit_edge.us.us, label %.lr.ph.split.us.us.us7838, !llvm.loop !183

..loopexit6869_crit_edge.us.us:                   ; preds = %bb.cw, %bb.cu, %.lr.ph7808.split.us.us
  %.76617.us.us.us = phi nsz <16 x float> [ %.166117806.us.us, %.lr.ph7808.split.us.us ], [ %.166117806.us.us, %bb.cu ], [ %.66616.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8456 = add nuw nsw i64 %indvars.iv8455, 1 ; 2 uses
  %exitcond8459.not = icmp eq i64 %indvars.iv.next8456, %wide.trip.count8458
  br i1 %exitcond8459.not, label %._crit_edge7809.us, label %.lr.ph7808.split.us.us, !llvm.loop !184

._crit_edge7809.us:                               ; preds = %..loopexit6869_crit_edge.us.us, %.preheader6874.us
  %.us-phi7820.us = phi <16 x float> [ %.066107822.us, %.preheader6874.us ], [ %.76617.us.us.us, %..loopexit6869_crit_edge.us.us ] ; 2 uses
  %i.fso = getelementptr inbounds [2 x i8], ptr %.018487823.us, i64 %i.fkv ; 2 uses
  %indvars.iv.next8461 = add nuw nsw i64 %indvars.iv8460, 16 ; 3 uses
  %i.fsp = icmp slt i64 %indvars.iv.next8461, %invariant.op8780
  br i1 %i.fsp, label %.preheader6874.us, label %._crit_edge7827.loopexit, !llvm.loop !185

._crit_edge7827.loopexit:                         ; preds = %._crit_edge7809.us
  %i.fsq = trunc nuw nsw i64 %indvars.iv.next8461 to i32
  br label %._crit_edge7827

._crit_edge7827:                                  ; preds = %.preheader6874.lr.ph, %._crit_edge7827.loopexit, %_ZN4ncnn3MatD2Ev.exit2217
  %.06610.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %.us-phi7820.us, %._crit_edge7827.loopexit ], [ zeroinitializer, %.preheader6874.lr.ph ] ; 3 uses
  %.01848.lcssa = phi ptr [ %i.fkq, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fso, %._crit_edge7827.loopexit ], [ %scevgep8445, %.preheader6874.lr.ph ] ; 3 uses
  %.01843.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fsq, %._crit_edge7827.loopexit ], [ %i.ehn, %.preheader6874.lr.ph ] ; 5 uses
  %i.fsr = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fss = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fst = fadd fast <8 x float> %i.fsr, %i.fss   ; 2 uses
  %i.fsu = shufflevector <8 x float> %i.fst, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fsv = shufflevector <8 x float> %i.fst, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fsw = fadd fast <4 x float> %i.fsu, %i.fsv   ; 2 uses
  %i.fsx = shufflevector <4 x float> %i.fsw, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fsy = fadd fast <4 x float> %i.fsx, %i.fsw
  %i.fsz = extractelement <4 x float> %i.fsy, i64 1
  %i.fta = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ftb = or disjoint i32 %.01843.lcssa, 7
  %i.ftc = icmp slt i32 %i.ftb, %i.egi
  br i1 %i.ftc, label %.preheader6873.lr.ph, label %._crit_edge7866

.preheader6873.lr.ph:                             ; preds = %._crit_edge7827
  %i.ftd = load i32, ptr %i.j, align 4
  %invariant.op7857 = sub i32 %.neg6798, %i.ftd
  %i.fte = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ftf = load i32, ptr %i.a, align 4
  %.fr8052 = freeze i32 %i.ftf                    ; 2 uses
  %i.ftg = icmp sgt i32 %.fr8052, 0
  %i.fth = load i32, ptr %i.i, align 4
  %.neg6796 = add nuw nsw i32 %.018688011, 1
  %invariant.op7850 = sub i32 %.neg6796, %i.fth
  %i.fti = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fks, label %.preheader6873.us.preheader, label %.preheader6873.preheader

.preheader6873.preheader:                         ; preds = %.preheader6873.lr.ph
  %i.ftj = sub i32 %i.ehp, %.01843.lcssa          ; 2 uses
  %i.ftk = lshr i32 %i.ftj, 2
  %i.ftl = and i32 %i.ftk, 1073741822
  %narrow8748 = add nuw nsw i32 %i.ftl, 2
  %i.ftm = zext nneg i32 %narrow8748 to i64
  %i.ftn = mul nsw i64 %i.fkx, %i.ftm
  %scevgep8463 = getelementptr i8, ptr %.01848.lcssa, i64 %i.ftn
  %i.fto = add i32 %.01843.lcssa, 8
  %i.ftp = and i32 %i.ftj, -8
  %i.ftq = add i32 %i.fto, %i.ftp
  br label %._crit_edge7866

.preheader6873.us.preheader:                      ; preds = %.preheader6873.lr.ph
  %i.ftr = load i32, ptr %i.c, align 4
  %i.fts = load i32, ptr %i.d, align 4
  %i.ftt = zext i32 %.fr8052 to i64               ; 2 uses
  %i.ftu = zext i32 %.01843.lcssa to i64
  br label %.preheader6873.us

.preheader6873.us:                                ; preds = %.preheader6873.us.preheader, %._crit_edge7855.us
  %indvars.iv8478 = phi i64 [ %i.ftu, %.preheader6873.us.preheader ], [ %indvars.iv.next8479, %._crit_edge7855.us ] ; 11 uses
  %.118497862.us = phi ptr [ %.01848.lcssa, %.preheader6873.us.preheader ], [ %i.fxv, %._crit_edge7855.us ] ; 2 uses
  %.066057861.us = phi <8 x float> [ zeroinitializer, %.preheader6873.us.preheader ], [ %.us-phi7859.us, %._crit_edge7855.us ] ; 2 uses
  %i.ftv = trunc nuw i64 %indvars.iv8478 to i32
  %i.ftw = lshr exact i32 %i.ftv, 2               ; 2 uses
  %i.ftx = zext nneg i32 %i.ftw to i64
  %i.fty = or disjoint i32 %i.ftw, 1
  %i.ftz = zext nneg i32 %i.fty to i64
  %i.fua = lshr exact i64 %indvars.iv8478, 3
  %i.fub = and i64 %i.fua, 536870911
  br i1 %i.ftg, label %.lr.ph7854.split.us.us.preheader, label %._crit_edge7855.us

.lr.ph7854.split.us.us.preheader:                 ; preds = %.preheader6873.us
  %i.fuc = or disjoint i64 %indvars.iv8478, 1
  %i.fud = or disjoint i64 %indvars.iv8478, 2
  %i.fue = or disjoint i64 %indvars.iv8478, 3
  %i.fuf = or disjoint i64 %indvars.iv8478, 4
  %i.fug = or disjoint i64 %indvars.iv8478, 5
  %i.fuh = or disjoint i64 %indvars.iv8478, 6
  %i.fui = or disjoint i64 %indvars.iv8478, 7
  br label %.lr.ph7854.split.us.us

.lr.ph7854.split.us.us:                           ; preds = %.lr.ph7854.split.us.us.preheader, %..loopexit6867_crit_edge.us.us
  %indvars.iv8473 = phi i64 [ 0, %.lr.ph7854.split.us.us.preheader ], [ %indvars.iv.next8474, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %.166067852.us.us = phi <8 x float> [ %.066057861.us, %.lr.ph7854.split.us.us.preheader ], [ %.46609.us.us, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %i.fuj = trunc i64 %indvars.iv8473 to i32
  %i.fuk = mul i32 %i.fts, %i.fuj
  %.reass7858.us.us = add i32 %i.fuk, %invariant.op7857 ; 3 uses
  %i.ful = icmp slt i32 %.reass7858.us.us, 0
  br i1 %i.ful, label %..loopexit6867_crit_edge.us.us, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph7854.split.us.us
  %i.fum = srem i32 %.reass7858.us.us, %i.fte
  %i.fun = sdiv i32 %.reass7858.us.us, %i.fte     ; 2 uses
  %.not2102.us.us = icmp eq i32 %i.fum, 0
  %.not2103.us.us = icmp slt i32 %i.fun, %i.egm
  %or.cond9003 = select i1 %.not2102.us.us, i1 %.not2103.us.us, i1 false
  br i1 %or.cond9003, label %.preheader6866.us.us, label %..loopexit6867_crit_edge.us.us

.preheader6866.us.us:                             ; preds = %bb.cx
  %i.fuo = mul nuw nsw i64 %indvars.iv8473, %i.ftt
  %i.fup = sext i32 %i.fun to i64                 ; 3 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.preheader6866.us.us
  %indvars.iv8468 = phi i64 [ %indvars.iv.next8469, %bb.db ], [ 0, %.preheader6866.us.us ] ; 3 uses
  %.266077847.us.us = phi <8 x float> [ %.36608.us.us, %bb.db ], [ %.166067852.us.us, %.preheader6866.us.us ] ; 4 uses
  %i.fuq = trunc i64 %indvars.iv8468 to i32
  %i.fur = mul i32 %i.ftr, %i.fuq
  %.reass7851.us.us = add i32 %i.fur, %invariant.op7850 ; 3 uses
  %i.fus = icmp slt i32 %.reass7851.us.us, 0
  br i1 %i.fus, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fut = srem i32 %.reass7851.us.us, %i.fti
  %i.fuu = sdiv i32 %.reass7851.us.us, %i.fti     ; 4 uses
  %.not2104.us.us = icmp eq i32 %i.fut, 0
  %.not2105.us.us = icmp slt i32 %i.fuu, %i.egk
  %or.cond9004 = select i1 %.not2104.us.us, i1 %.not2105.us.us, i1 false
  br i1 %or.cond9004, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.fuv = add nuw nsw i64 %i.fuo, %indvars.iv8468
  %i.fuw = shl i64 %i.fuv, 3
  %i.fux = and i64 %i.fuw, 4294967288
  %i.fuy = getelementptr inbounds nuw [2 x i8], ptr %.118497862.us, i64 %i.fux
  switch i32 %.fr8050, label %bb.db [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2208.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2207.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2205.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2205.us.us:                  ; preds = %bb.da
  %i.fuz = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !263
  %i.fva = load ptr, ptr %0, align 8, !tbaa !19, !noalias !263
  %i.fvb = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !263
  %i.fvc = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !263 ; 2 uses
  %factor.op.mul7842.us.us = mul i64 %i.fvb, %i.fvc ; 8 uses
  %i.fvd = sext i32 %i.fuz to i64
  %i.fve = mul nsw i64 %i.fvd, %i.fup
  %i.fvf = mul i64 %i.fve, %i.fvc
  %invariant.gep.us.us7877 = getelementptr i8, ptr %i.fva, i64 %i.fvf
  %i.fvg = sext i32 %i.fuu to i64
  %invariant.gep7844.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7877, i64 %i.fvg ; 8 uses
  %.reass7843.us.us = mul i64 %factor.op.mul7842.us.us, %indvars.iv8478
  %gep7845.us.us = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us
  %i.fvh = load i16, ptr %gep7845.us.us, align 2, !tbaa !28
  %.reass7843.us.us.1 = mul i64 %factor.op.mul7842.us.us, %i.fuc
  %gep7845.us.us.1 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.1
  %i.fvi = load i16, ptr %gep7845.us.us.1, align 2, !tbaa !28
  %.reass7843.us.us.2 = mul i64 %factor.op.mul7842.us.us, %i.fud
  %gep7845.us.us.2 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.2
  %i.fvj = load i16, ptr %gep7845.us.us.2, align 2, !tbaa !28
  %.reass7843.us.us.3 = mul i64 %factor.op.mul7842.us.us, %i.fue
  %gep7845.us.us.3 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.3
  %i.fvk = load i16, ptr %gep7845.us.us.3, align 2, !tbaa !28
  %.reass7843.us.us.4 = mul i64 %factor.op.mul7842.us.us, %i.fuf
  %gep7845.us.us.4 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.4
  %i.fvl = load i16, ptr %gep7845.us.us.4, align 2, !tbaa !28
  %.reass7843.us.us.5 = mul i64 %factor.op.mul7842.us.us, %i.fug
  %gep7845.us.us.5 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.5
  %i.fvm = load i16, ptr %gep7845.us.us.5, align 2, !tbaa !28
  %.reass7843.us.us.6 = mul i64 %factor.op.mul7842.us.us, %i.fuh
  %gep7845.us.us.6 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.6
  %i.fvn = load i16, ptr %gep7845.us.us.6, align 2, !tbaa !28
  %.reass7843.us.us.7 = mul i64 %factor.op.mul7842.us.us, %i.fui
  %gep7845.us.us.7 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.7
  %i.fvo = load i16, ptr %gep7845.us.us.7, align 2, !tbaa !28
  %i.fvp = insertelement <8 x i16> poison, i16 %i.fvh, i64 0
  %i.fvq = insertelement <8 x i16> %i.fvp, i16 %i.fvi, i64 1
  %i.fvr = insertelement <8 x i16> %i.fvq, i16 %i.fvj, i64 2
  %i.fvs = insertelement <8 x i16> %i.fvr, i16 %i.fvk, i64 3
  %i.fvt = insertelement <8 x i16> %i.fvs, i16 %i.fvl, i64 4
  %i.fvu = insertelement <8 x i16> %i.fvt, i16 %i.fvm, i64 5
  %i.fvv = insertelement <8 x i16> %i.fvu, i16 %i.fvn, i64 6
  %i.fvw = insertelement <8 x i16> %i.fvv, i16 %i.fvo, i64 7
  %i.fvx = zext <8 x i16> %i.fvw to <8 x i32>
  %i.fvy = shl nuw <8 x i32> %i.fvx, splat (i32 16)
  %.sroa.08543.28.vec.insert = bitcast <8 x i32> %i.fvy to <8 x float>
  br label %.sink.split8889

_ZN4ncnn3MatD2Ev.exit2207.us.us:                  ; preds = %bb.da
  %i.fvz = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !264
  %i.fwa = load ptr, ptr %0, align 8, !tbaa !19, !noalias !264 ; 2 uses
  %i.fwb = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.fwc = mul i64 %i.fwb, %i.ftx
  %i.fwd = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !264 ; 3 uses
  %i.fwe = mul i64 %i.fwc, %i.fwd
  %i.fwf = getelementptr inbounds nuw i8, ptr %i.fwa, i64 %i.fwe
  %i.fwg = sext i32 %i.fvz to i64
  %i.fwh = mul nsw i64 %i.fwg, %i.fup
  %i.fwi = mul i64 %i.fwh, %i.fwd                 ; 2 uses
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.fwf, i64 %i.fwi
  %i.fwk = shl nsw i32 %i.fuu, 2
  %i.fwl = sext i32 %i.fwk to i64                 ; 2 uses
  %i.fwm = getelementptr inbounds [2 x i8], ptr %i.fwj, i64 %i.fwl
  %i.fwn = mul i64 %i.fwb, %i.ftz
  %i.fwo = mul i64 %i.fwn, %i.fwd
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.fwa, i64 %i.fwo
end_hunk_5
begin_hunk_6_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  br i1 %i.fyu, label %.preheader6872.us.us.preheader, label %.preheader6872.us.preheader

.preheader6872.us.preheader:                      ; preds = %.preheader6872.lr.ph.split.us
  %i.fyv = sub i32 %i.ehq, %.11844.lcssa          ; 2 uses
  %i.fyw = lshr i32 %i.fyv, 1
  %i.fyx = and i32 %i.fyw, 2147483646
  %narrow8750 = add nuw i32 %i.fyx, 2
  %i.fyy = zext i32 %narrow8750 to i64
  %i.fyz = mul nsw i64 %i.fkz, %i.fyy
  %scevgep8482 = getelementptr i8, ptr %.11849.lcssa, i64 %i.fyz
  %i.fza = add i32 %.11844.lcssa, 4
  %i.fzb = and i32 %i.fyv, -4
  %i.fzc = add i32 %i.fza, %i.fzb
  br label %._crit_edge7924

.preheader6872.us.us.preheader:                   ; preds = %.preheader6872.lr.ph.split.us
  %i.fzd = zext nneg i32 %.fr8053 to i64          ; 3 uses
  %i.fze = zext i32 %.11844.lcssa to i64
  br label %.preheader6872.us.us

.preheader6872.us.us:                             ; preds = %.preheader6872.us.us.preheader, %._crit_edge7905.split.us.us.us
  %indvars.iv8502 = phi i64 [ %i.fze, %.preheader6872.us.us.preheader ], [ %indvars.iv.next8503, %._crit_edge7905.split.us.us.us ] ; 6 uses
  %.218507920.us.us = phi ptr [ %.11849.lcssa, %.preheader6872.us.us.preheader ], [ %i.gcj, %._crit_edge7905.split.us.us.us ] ; 3 uses
  %.065417919.us.us = phi <4 x float> [ zeroinitializer, %.preheader6872.us.us.preheader ], [ %.46545.us.us.us, %._crit_edge7905.split.us.us.us ]
  %i.fzf = lshr exact i64 %indvars.iv8502, 2
  %i.fzg = and i64 %i.fzf, 1073741823
  %i.fzh = or disjoint i64 %indvars.iv8502, 1
  %i.fzi = or disjoint i64 %indvars.iv8502, 2
  %i.fzj = or disjoint i64 %indvars.iv8502, 3
  br label %bb.dc

bb.dc:                                            ; preds = %..loopexit6865_crit_edge.us.us.us, %.preheader6872.us.us
  %indvars.iv8497 = phi i64 [ %indvars.iv.next8498, %..loopexit6865_crit_edge.us.us.us ], [ 0, %.preheader6872.us.us ] ; 3 uses
  %.165427902.us.us.us = phi <4 x float> [ %.46545.us.us.us, %..loopexit6865_crit_edge.us.us.us ], [ %.065417919.us.us, %.preheader6872.us.us ] ; 5 uses
  %i.fzk = trunc i64 %indvars.iv8497 to i32
  %i.fzl = mul i32 %i.fyf, %i.fzk
  %.reass7908.us.us.us = add i32 %i.fzl, %invariant.op7907 ; 3 uses
  %i.fzm = icmp slt i32 %.reass7908.us.us.us, 0
  br i1 %i.fzm, label %..loopexit6865_crit_edge.us.us.us, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fzn = srem i32 %.reass7908.us.us.us, %i.fyh
  %i.fzo = sdiv i32 %.reass7908.us.us.us, %i.fyh  ; 2 uses
  %.not2098.us.us.us = icmp eq i32 %i.fzn, 0
  %.not2099.us.us.us = icmp slt i32 %i.fzo, %i.egm
  %or.cond9005 = select i1 %.not2098.us.us.us, i1 %.not2099.us.us.us, i1 false
  br i1 %or.cond9005, label %.preheader6864.us.us.us, label %..loopexit6865_crit_edge.us.us.us

.preheader6864.us.us.us:                          ; preds = %bb.dd
  %i.fzp = mul nuw nsw i64 %indvars.iv8497, %i.fzd ; 2 uses
  %i.fzq = sext i32 %i.fzo to i64                 ; 2 uses
  switch i32 %.fr8050, label %..loopexit6865_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7935.us
    i32 1, label %.lr.ph.split.us7892.us.us.us
  ]

.lr.ph.split.us7892.us.us.us:                     ; preds = %.preheader6864.us.us.us, %bb.df
  %indvars.iv8487 = phi i64 [ %indvars.iv.next8488, %bb.df ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us7894.us.us.us = phi <4 x float> [ %.36544.us7898.us.us.us, %bb.df ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.fzr = trunc i64 %indvars.iv8487 to i32
  %i.fzs = mul i32 %i.fyj, %i.fzr
  %.reass7890.us7895.us.us.us = add i32 %i.fzs, %invariant.op7889 ; 3 uses
  %i.fzt = icmp slt i32 %.reass7890.us7895.us.us.us, 0
  br i1 %i.fzt, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split.us7892.us.us.us
  %i.fzu = srem i32 %.reass7890.us7895.us.us.us, %i.fyl
  %i.fzv = sdiv i32 %.reass7890.us7895.us.us.us, %i.fyl ; 2 uses
  %.not2100.us7896.us.us.us = icmp eq i32 %i.fzu, 0
  %.not2101.us7897.us.us.us = icmp slt i32 %i.fzv, %i.egk
  %or.cond9006 = select i1 %.not2100.us7896.us.us.us, i1 %.not2101.us7897.us.us.us, i1 false
  br i1 %or.cond9006, label %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, label %bb.df

_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us:            ; preds = %bb.de
  %i.fzw = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !266
  %i.fzx = load ptr, ptr %0, align 8, !tbaa !19, !noalias !266
  %i.fzy = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !266
  %i.fzz = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !266 ; 2 uses
  %factor.op.mul7881.us.us.us.us = mul i64 %i.fzy, %i.fzz ; 4 uses
  %i.gaa = sext i32 %i.fzw to i64
  %i.gab = mul nsw i64 %i.gaa, %i.fzq
  %i.gac = mul i64 %i.gab, %i.fzz
  %invariant.gep.us.us7909.us.us = getelementptr i8, ptr %i.fzx, i64 %i.gac
  %i.gad = sext i32 %i.fzv to i64
  %invariant.gep7883.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7909.us.us, i64 %i.gad ; 4 uses
  %.reass7882.us.us.us.us = mul i64 %factor.op.mul7881.us.us.us.us, %indvars.iv8502
  %gep7884.us.us.us.us = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us
  %i.gae = load i16, ptr %gep7884.us.us.us.us, align 2, !tbaa !28
  %.reass7882.us.us.us.us.1 = mul i64 %factor.op.mul7881.us.us.us.us, %i.fzh
  %gep7884.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.1
  %i.gaf = load i16, ptr %gep7884.us.us.us.us.1, align 2, !tbaa !28
  %.reass7882.us.us.us.us.2 = mul i64 %factor.op.mul7881.us.us.us.us, %i.fzi
  %gep7884.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.2
  %i.gag = load i16, ptr %gep7884.us.us.us.us.2, align 2, !tbaa !28
  %.reass7882.us.us.us.us.3 = mul i64 %factor.op.mul7881.us.us.us.us, %i.fzj
  %gep7884.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.3
  %i.gah = load i16, ptr %gep7884.us.us.us.us.3, align 2, !tbaa !28
  %i.gai = zext i16 %i.gae to i32
  %i.gaj = zext i16 %i.gaf to i32
  %i.gak = zext i16 %i.gag to i32
  %i.gal = zext i16 %i.gah to i32
  %i.gam = insertelement <4 x i32> poison, i32 %i.gai, i64 0
  %i.gan = insertelement <4 x i32> %i.gam, i32 %i.gaj, i64 1
  %i.gao = insertelement <4 x i32> %i.gan, i32 %i.gak, i64 2
  %i.gap = insertelement <4 x i32> %i.gao, i32 %i.gal, i64 3
  %i.gaq = shl nuw <4 x i32> %i.gap, splat (i32 16)
  %.sroa.0.12.vec.insert = bitcast <4 x i32> %i.gaq to <4 x float>
  %i.gar = add nuw nsw i64 %i.fzp, %indvars.iv8487
  %i.gas = shl i64 %i.gar, 2
  %i.gat = and i64 %i.gas, 4294967292
  %i.gau = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.gat
  %i.gav = load i64, ptr %i.gau, align 1, !tbaa !26
  %i.gaw = insertelement <2 x i64> poison, i64 %i.gav, i64 0
  %i.gax = bitcast <2 x i64> %i.gaw to <8 x i16>
  %i.gay = shufflevector <8 x i16> %i.gax, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gaz = bitcast <8 x i16> %i.gay to <4 x float>
  %i.gba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert, <4 x float> nofpclass(nan inf) %i.gaz, <4 x float> nofpclass(nan inf) %.265437886.us7894.us.us.us)
  br label %bb.df

bb.df:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, %bb.de, %.lr.ph.split.us7892.us.us.us
  %.36544.us7898.us.us.us = phi nsz <4 x float> [ %.265437886.us7894.us.us.us, %.lr.ph.split.us7892.us.us.us ], [ %i.gba, %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us ], [ %.265437886.us7894.us.us.us, %bb.de ] ; 2 uses
  %indvars.iv.next8488 = add nuw nsw i64 %indvars.iv8487, 1 ; 2 uses
  %exitcond8491.not = icmp eq i64 %indvars.iv.next8488, %i.fzd
  br i1 %exitcond8491.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us7892.us.us.us, !llvm.loop !197

.lr.ph.split.us.us.us7935.us:                     ; preds = %.preheader6864.us.us.us, %bb.dh
  %indvars.iv8492 = phi i64 [ %indvars.iv.next8493, %bb.dh ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us.us.us.us = phi <4 x float> [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.gbb = trunc i64 %indvars.iv8492 to i32
  %i.gbc = mul i32 %i.fyj, %i.gbb
  %.reass7890.us.us.us.us = add i32 %i.gbc, %invariant.op7889 ; 3 uses
  %i.gbd = icmp slt i32 %.reass7890.us.us.us.us, 0
  br i1 %i.gbd, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.split.us.us.us7935.us
  %i.gbe = srem i32 %.reass7890.us.us.us.us, %i.fyl
  %i.gbf = sdiv i32 %.reass7890.us.us.us.us, %i.fyl ; 2 uses
  %.not2100.us.us.us.us = icmp eq i32 %i.gbe, 0
  %.not2101.us.us.us.us = icmp slt i32 %i.gbf, %i.egk
  %or.cond9007 = select i1 %.not2100.us.us.us.us, i1 %.not2101.us.us.us.us, i1 false
  br i1 %or.cond9007, label %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, label %bb.dh

_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us:            ; preds = %bb.dg
  %i.gbg = add nuw nsw i64 %i.fzp, %indvars.iv8492
  %i.gbh = shl i64 %i.gbg, 2
  %i.gbi = and i64 %i.gbh, 4294967292
  %i.gbj = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.gbi
  %i.gbk = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !267
  %i.gbl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !267
  %i.gbm = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !267
  %i.gbn = mul i64 %i.gbm, %i.fzg
  %i.gbo = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !267 ; 2 uses
  %i.gbp = mul i64 %i.gbn, %i.gbo
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbl, i64 %i.gbp
  %i.gbr = sext i32 %i.gbk to i64
  %i.gbs = mul nsw i64 %i.gbr, %i.fzq
  %i.gbt = mul i64 %i.gbs, %i.gbo
  %i.gbu = getelementptr inbounds nuw i8, ptr %i.gbq, i64 %i.gbt
  %i.gbv = shl nsw i32 %i.gbf, 2
  %i.gbw = sext i32 %i.gbv to i64
  %i.gbx = getelementptr inbounds [2 x i8], ptr %i.gbu, i64 %i.gbw
  %i.gby = load i64, ptr %i.gbx, align 1, !tbaa !26
  %i.gbz = insertelement <2 x i64> poison, i64 %i.gby, i64 0
  %i.gca = bitcast <2 x i64> %i.gbz to <8 x i16>
  %i.gcb = shufflevector <8 x i16> %i.gca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gcc = bitcast <8 x i16> %i.gcb to <4 x float>
  %i.gcd = load i64, ptr %i.gbj, align 1, !tbaa !26
  %i.gce = insertelement <2 x i64> poison, i64 %i.gcd, i64 0
  %i.gcf = bitcast <2 x i64> %i.gce to <8 x i16>
  %i.gcg = shufflevector <8 x i16> %i.gcf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gch = bitcast <8 x i16> %i.gcg to <4 x float>
  %i.gci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gcc, <4 x float> nofpclass(nan inf) %i.gch, <4 x float> nofpclass(nan inf) %.265437886.us.us.us.us)
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, %bb.dg, %.lr.ph.split.us.us.us7935.us
  %.36544.us.us.us.us = phi nsz <4 x float> [ %.265437886.us.us.us.us, %.lr.ph.split.us.us.us7935.us ], [ %.265437886.us.us.us.us, %bb.dg ], [ %i.gci, %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us ] ; 2 uses
  %indvars.iv.next8493 = add nuw nsw i64 %indvars.iv8492, 1 ; 2 uses
  %exitcond8496.not = icmp eq i64 %indvars.iv.next8493, %i.fzd
  br i1 %exitcond8496.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7935.us, !llvm.loop !197

..loopexit6865_crit_edge.us.us.us:                ; preds = %bb.df, %bb.dh, %.preheader6864.us.us.us, %bb.dd, %bb.dc
  %.46545.us.us.us = phi nsz <4 x float> [ %.165427902.us.us.us, %bb.dc ], [ %.165427902.us.us.us, %bb.dd ], [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ], [ %.36544.us7898.us.us.us, %bb.df ] ; 3 uses
  %indvars.iv.next8498 = add nuw nsw i64 %indvars.iv8497, 1 ; 2 uses
  %exitcond8501.not = icmp eq i64 %indvars.iv.next8498, %wide.trip.count8500
  br i1 %exitcond8501.not, label %._crit_edge7905.split.us.us.us, label %bb.dc, !llvm.loop !200

._crit_edge7905.split.us.us.us:                   ; preds = %..loopexit6865_crit_edge.us.us.us
  %i.gcj = getelementptr inbounds [2 x i8], ptr %.218507920.us.us, i64 %i.fkz ; 2 uses
  %indvars.iv.next8503 = add nuw nsw i64 %indvars.iv8502, 4 ; 3 uses
  %i.gck = trunc i64 %indvars.iv.next8503 to i32
  %i.gcl = or i32 %i.gck, 3
  %i.gcm = icmp slt i32 %i.gcl, %i.egi
  br i1 %i.gcm, label %.preheader6872.us.us, label %._crit_edge7924.loopexit, !llvm.loop !201

._crit_edge7924.loopexit:                         ; preds = %._crit_edge7905.split.us.us.us
  %i.gcn = trunc nuw i64 %indvars.iv.next8503 to i32
  br label %._crit_edge7924

._crit_edge7924:                                  ; preds = %.preheader6872.preheader, %.preheader6872.us.preheader, %._crit_edge7924.loopexit, %._crit_edge7866
  %.06541.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7866 ], [ %.46545.us.us.us, %._crit_edge7924.loopexit ], [ zeroinitializer, %.preheader6872.us.preheader ], [ zeroinitializer, %.preheader6872.preheader ] ; 2 uses
  %.21850.lcssa = phi ptr [ %.11849.lcssa, %._crit_edge7866 ], [ %i.gcj, %._crit_edge7924.loopexit ], [ %scevgep8482, %.preheader6872.us.preheader ], [ %scevgep8481, %.preheader6872.preheader ] ; 4 uses
  %.21845.lcssa = phi i32 [ %.11844.lcssa, %._crit_edge7866 ], [ %i.gcn, %._crit_edge7924.loopexit ], [ %i.fzc, %.preheader6872.us.preheader ], [ %i.fyt, %.preheader6872.preheader ] ; 5 uses
  %i.gco = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.fyc, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.gcp = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.fyc, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.gcq = fadd fast <4 x float> %i.gco, %i.gcp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fsz, <4 x float> %i.gcq)
  %op.rdx8916 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01853, <8 x float> %i.fta)
  %op.rdx8917 = fadd fast float %op.rdx, %op.rdx8916 ; 4 uses
  %i.gcr = or disjoint i32 %.21845.lcssa, 1
  %i.gcs = icmp slt i32 %i.gcr, %i.egi
  br i1 %i.gcs, label %.preheader6871.lr.ph, label %.preheader6875

.preheader6871.lr.ph:                             ; preds = %._crit_edge7924
  %i.gct = load i32, ptr %i.j, align 4
  %invariant.op7958 = sub i32 %.neg6798, %i.gct
  %i.gcu = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gcv = load i32, ptr %i.i, align 4
  %.neg6788 = add nuw nsw i32 %.018688011, 1
  %invariant.op7951 = sub i32 %.neg6788, %i.gcv
  %i.gcw = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fks, label %.preheader6871.us.preheader, label %.preheader6871.preheader

.preheader6871.preheader:                         ; preds = %.preheader6871.lr.ph
  %i.gcx = sub i32 %i.ehr, %.21845.lcssa          ; 2 uses
  %i.gcy = and i32 %i.gcx, -2
  %i.gcz = zext i32 %i.gcy to i64
  %i.gda = add nuw nsw i64 %i.gcz, 2
  %i.gdb = mul nsw i64 %i.gda, %i.flb
  %scevgep8505 = getelementptr i8, ptr %.21850.lcssa, i64 %i.gdb
  %i.gdc = add i32 %.21845.lcssa, 2
  %i.gdd = and i32 %i.gcx, -2
  %i.gde = add i32 %i.gdc, %i.gdd
  br label %.preheader6875

.preheader6871.us.preheader:                      ; preds = %.preheader6871.lr.ph
  %i.gdf = load i32, ptr %i.c, align 4
  %25 = load i32, ptr %i.a, align 4
  %.fr8054 = freeze i32 %25                       ; 2 uses
  %26 = icmp sgt i32 %.fr8054, 0
  %i.gdg = load i32, ptr %i.d, align 4
  %i.gdh = zext i32 %.fr8054 to i64               ; 2 uses
  %i.gdi = zext i32 %.21845.lcssa to i64          ; 2 uses
  br i1 %26, label %.preheader6871.us.a, label %._crit_edge7956.us

.preheader6871.us.a:                              ; preds = %.preheader6871.us.preheader, %._crit_edge7956.us.loopexit.us
  %indvars.iv8519 = phi i64 [ %indvars.iv.next8534.us, %._crit_edge7956.us.loopexit.us ], [ %i.gdi, %.preheader6871.us.preheader ] ; 3 uses
  %.318517963.us.a = phi ptr [ %28, %._crit_edge7956.us.loopexit.us ], [ %.21850.lcssa, %.preheader6871.us.preheader ] ; 2 uses
  %.118547962.us = phi float [ %.81861.us.us, %._crit_edge7956.us.loopexit.us ], [ %op.rdx8917, %.preheader6871.us.preheader ]
  %27 = or disjoint i64 %indvars.iv8519, 1
  br label %.lr.ph7955.split.us.us

.lr.ph7955.split.us.us:                           ; preds = %..loopexit6863_crit_edge.us.us, %.preheader6871.us.a
  %indvars.iv8514 = phi i64 [ 0, %.preheader6871.us.a ], [ %indvars.iv.next8515, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %.218557953.us.us = phi float [ %.118547962.us, %.preheader6871.us.a ], [ %.81861.us.us, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %i.gdj = trunc i64 %indvars.iv8514 to i32
  %i.gdk = mul i32 %i.gdg, %i.gdj
  %.reass7959.us.us = add i32 %i.gdk, %invariant.op7958 ; 3 uses
  %i.gdl = icmp slt i32 %.reass7959.us.us, 0
  br i1 %i.gdl, label %..loopexit6863_crit_edge.us.us, label %bb.di

bb.di:                                            ; preds = %.lr.ph7955.split.us.us
  %i.gdm = srem i32 %.reass7959.us.us, %i.gcu
  %i.gdn = sdiv i32 %.reass7959.us.us, %i.gcu     ; 2 uses
  %.not2094.us.us = icmp eq i32 %i.gdm, 0
  %.not2095.us.us = icmp slt i32 %i.gdn, %i.egm
  %or.cond9008 = select i1 %.not2094.us.us, i1 %.not2095.us.us, i1 false
  br i1 %or.cond9008, label %.preheader6862.us.us, label %..loopexit6863_crit_edge.us.us

.preheader6862.us.us:                             ; preds = %bb.di
  %i.gdo = mul nuw nsw i64 %indvars.iv8514, %i.gdh
  %i.gdp = sext i32 %i.gdn to i64
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.us.us, %.preheader6862.us.us
  %indvars.iv8509 = phi i64 [ %indvars.iv.next8510, %.loopexit.us.us ], [ 0, %.preheader6862.us.us ] ; 3 uses
  %.318567948.us.us = phi float [ %.61859.us.us, %.loopexit.us.us ], [ %.218557953.us.us, %.preheader6862.us.us ] ; 3 uses
  %i.gdq = trunc i64 %indvars.iv8509 to i32
  %i.gdr = mul i32 %i.gdf, %i.gdq
  %.reass7952.us.us = add i32 %i.gdr, %invariant.op7951 ; 3 uses
  %i.gds = icmp slt i32 %.reass7952.us.us, 0
  br i1 %i.gds, label %.loopexit.us.us, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gdt = srem i32 %.reass7952.us.us, %i.gcw
  %i.gdu = sdiv i32 %.reass7952.us.us, %i.gcw     ; 2 uses
  %.not2096.us.us = icmp eq i32 %i.gdt, 0
  %.not2097.us.us = icmp slt i32 %i.gdu, %i.egk
  %or.cond9009 = select i1 %.not2096.us.us, i1 %.not2097.us.us, i1 false
  br i1 %or.cond9009, label %_ZN4ncnn3MatD2Ev.exit2202.us.us, label %.loopexit.us.us

_ZN4ncnn3MatD2Ev.exit2202.us.us:                  ; preds = %bb.dk
  %i.gdv = add nuw nsw i64 %i.gdo, %indvars.iv8509
  %.idx8751 = shl nuw nsw i64 %i.gdv, 2
  %i.gdw = getelementptr inbounds nuw i8, ptr %.318517963.us.a, i64 %.idx8751 ; 2 uses
  %i.gdx = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !268
  %i.gdy = load ptr, ptr %0, align 8, !tbaa !19, !noalias !268
  %i.gdz = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !268
  %i.gea = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !268 ; 2 uses
  %factor.op.mul7942.us.us = mul i64 %i.gdz, %i.gea ; 2 uses
  %i.geb = sext i32 %i.gdx to i64
  %i.gec = mul nsw i64 %i.geb, %i.gdp
  %i.ged = mul i64 %i.gec, %i.gea
  %invariant.gep.us.us7977 = getelementptr i8, ptr %i.gdy, i64 %i.ged
  %i.gee = sext i32 %i.gdu to i64
  %invariant.gep7944.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7977, i64 %i.gee ; 2 uses
  %.reass7943.us.us = mul i64 %factor.op.mul7942.us.us, %indvars.iv8519
  %gep7945.us.us = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us
  %i.gef = load i16, ptr %gep7945.us.us, align 2, !tbaa !28
  %i.geg = zext i16 %i.gef to i32
  %i.geh = shl nuw i32 %i.geg, 16
  %i.gei = bitcast i32 %i.geh to float
  %i.gej = load i16, ptr %i.gdw, align 2, !tbaa !28
  %i.gek = zext i16 %i.gej to i32
  %i.gel = shl nuw i32 %i.gek, 16
  %i.gem = bitcast i32 %i.gel to float
  %i.gen = fmul fast float %i.gem, %i.gei
  %i.geo = fadd fast float %i.gen, %.318567948.us.us
  %.reass7943.us.us.1 = mul i64 %factor.op.mul7942.us.us, %27
  %gep7945.us.us.1 = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us.1
  %i.gep = load i16, ptr %gep7945.us.us.1, align 2, !tbaa !28
  %i.geq = zext i16 %i.gep to i32
  %i.ger = shl nuw i32 %i.geq, 16
  %i.ges = bitcast i32 %i.ger to float
  %i.get = getelementptr inbounds nuw i8, ptr %i.gdw, i64 2
  %i.geu = load i16, ptr %i.get, align 2, !tbaa !28
  %i.gev = zext i16 %i.geu to i32
  %i.gew = shl nuw i32 %i.gev, 16
  %i.gex = bitcast i32 %i.gew to float
  %i.gey = fmul fast float %i.gex, %i.ges
  %i.gez = fadd fast float %i.gey, %i.geo
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2202.us.us, %bb.dk, %bb.dj
  %.61859.us.us = phi nsz float [ %.318567948.us.us, %bb.dj ], [ %.318567948.us.us, %bb.dk ], [ %i.gez, %_ZN4ncnn3MatD2Ev.exit2202.us.us ] ; 2 uses
  %indvars.iv.next8510 = add nuw nsw i64 %indvars.iv8509, 1 ; 2 uses
  %exitcond8513.not = icmp eq i64 %indvars.iv.next8510, %i.gdh
  br i1 %exitcond8513.not, label %..loopexit6863_crit_edge.us.us, label %bb.dj, !llvm.loop !204

..loopexit6863_crit_edge.us.us:                   ; preds = %.loopexit.us.us, %bb.di, %.lr.ph7955.split.us.us
  %.81861.us.us = phi nsz float [ %.218557953.us.us, %.lr.ph7955.split.us.us ], [ %.218557953.us.us, %bb.di ], [ %.61859.us.us, %.loopexit.us.us ] ; 3 uses
  %indvars.iv.next8515 = add nuw nsw i64 %indvars.iv8514, 1 ; 2 uses
  %exitcond8518.not = icmp eq i64 %indvars.iv.next8515, %wide.trip.count8517
  br i1 %exitcond8518.not, label %._crit_edge7956.us.loopexit.us, label %.lr.ph7955.split.us.us, !llvm.loop !205

._crit_edge7956.us.loopexit.us:                   ; preds = %..loopexit6863_crit_edge.us.us
  %28 = getelementptr inbounds [2 x i8], ptr %.318517963.us.a, i64 %i.flb ; 2 uses
  %indvars.iv.next8534.us = add nuw nsw i64 %indvars.iv8519, 2 ; 3 uses
  %29 = trunc i64 %indvars.iv.next8534.us to i32
  %30 = or i32 %29, 1
  %31 = icmp slt i32 %30, %i.egi
  br i1 %31, label %.preheader6871.us.a, label %.preheader6875.loopexit, !llvm.loop !206

._crit_edge7956.us:                               ; preds = %.preheader6871.us.preheader, %._crit_edge7956.us
  %indvars.iv8533 = phi i64 [ %indvars.iv.next8520, %._crit_edge7956.us ], [ %i.gdi, %.preheader6871.us.preheader ]
  %.318517963.us = phi ptr [ %i.gfa, %._crit_edge7956.us ], [ %.21850.lcssa, %.preheader6871.us.preheader ]
  %i.gfa = getelementptr inbounds [2 x i8], ptr %.318517963.us, i64 %i.flb ; 2 uses
  %indvars.iv.next8520 = add nuw nsw i64 %indvars.iv8533, 2 ; 3 uses
  %i.gfb = trunc i64 %indvars.iv.next8520 to i32
  %i.gfc = or i32 %i.gfb, 1
  %i.gfd = icmp slt i32 %i.gfc, %i.egi
  br i1 %i.gfd, label %._crit_edge7956.us, label %.preheader6875.loopexit, !llvm.loop !206

.preheader6875.loopexit:                          ; preds = %._crit_edge7956.us, %._crit_edge7956.us.loopexit.us
  %.us-phi8536 = phi float [ %.81861.us.us, %._crit_edge7956.us.loopexit.us ], [ %op.rdx8917, %._crit_edge7956.us ]
  %.us-phi8537 = phi ptr [ %28, %._crit_edge7956.us.loopexit.us ], [ %i.gfa, %._crit_edge7956.us ]
  %.us-phi8538 = phi i64 [ %indvars.iv.next8534.us, %._crit_edge7956.us.loopexit.us ], [ %indvars.iv.next8520, %._crit_edge7956.us ]
  %i.gfe = trunc nuw i64 %.us-phi8538 to i32
  br label %.preheader6875

.preheader6875:                                   ; preds = %.preheader6871.preheader, %.preheader6875.loopexit, %._crit_edge7924
  %.11854.lcssa = phi float [ %op.rdx8917, %._crit_edge7924 ], [ %.us-phi8536, %.preheader6875.loopexit ], [ %op.rdx8917, %.preheader6871.preheader ] ; 3 uses
  %.31851.lcssa = phi ptr [ %.21850.lcssa, %._crit_edge7924 ], [ %.us-phi8537, %.preheader6875.loopexit ], [ %scevgep8505, %.preheader6871.preheader ]
  %.31846.lcssa = phi i32 [ %.21845.lcssa, %._crit_edge7924 ], [ %i.gfe, %.preheader6875.loopexit ], [ %i.gde, %.preheader6871.preheader ] ; 2 uses
  %i.gff = icmp slt i32 %.31846.lcssa, %i.egi
  br i1 %i.gff, label %.preheader6870.lr.ph, label %._crit_edge7999

.preheader6870.lr.ph:                             ; preds = %.preheader6875
  %i.gfg = load i32, ptr %i.d, align 4
  %i.gfh = load i32, ptr %i.j, align 4
  %invariant.op7991 = sub i32 %.neg6798, %i.gfh
  %i.gfi = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gfj = load i32, ptr %i.a, align 4
  %.fr8055 = freeze i32 %i.gfj                    ; 2 uses
  %i.gfk = load i32, ptr %i.c, align 4
  %i.gfl = load i32, ptr %i.i, align 4
  %.neg6784 = add nuw nsw i32 %.018688011, 1
  %invariant.op7984 = sub i32 %.neg6784, %i.gfl
  %i.gfm = load i32, ptr %i.e, align 4            ; 2 uses
  %i.gfn = icmp sgt i32 %.fr8055, 0
  %or.cond8893 = and i1 %i.fks, %i.gfn
  br i1 %or.cond8893, label %.preheader6870.us.us.preheader, label %._crit_edge7999

.preheader6870.us.us.preheader:                   ; preds = %.preheader6870.lr.ph
  %i.gfo = zext nneg i32 %.fr8055 to i64          ; 2 uses
  %i.gfp = zext i32 %.31846.lcssa to i64
  br label %.preheader6870.us.us

.preheader6870.us.us:                             ; preds = %.preheader6870.us.us.preheader, %._crit_edge7989.split.us.us.us
  %indvars.iv8532 = phi i64 [ %i.gfp, %.preheader6870.us.us.preheader ], [ %indvars.iv.next8533, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.418527996.us.us = phi ptr [ %.31851.lcssa, %.preheader6870.us.us.preheader ], [ %i.ghb, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.918627995.us.us = phi float [ %.11854.lcssa, %.preheader6870.us.us.preheader ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ]
  br label %bb.dl

bb.dl:                                            ; preds = %..loopexit6861_crit_edge.us.us.us, %.preheader6870.us.us
  %indvars.iv8527 = phi i64 [ %indvars.iv.next8528, %..loopexit6861_crit_edge.us.us.us ], [ 0, %.preheader6870.us.us ] ; 3 uses
  %.1018637986.us.us.us = phi float [ %.15.us.us.us, %..loopexit6861_crit_edge.us.us.us ], [ %.918627995.us.us, %.preheader6870.us.us ] ; 3 uses
  %i.gfq = trunc i64 %indvars.iv8527 to i32
  %i.gfr = mul i32 %i.gfg, %i.gfq
  %.reass7992.us.us.us = add i32 %i.gfr, %invariant.op7991 ; 3 uses
  %i.gfs = icmp slt i32 %.reass7992.us.us.us, 0
  br i1 %i.gfs, label %..loopexit6861_crit_edge.us.us.us, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gft = srem i32 %.reass7992.us.us.us, %i.gfi
  %i.gfu = sdiv i32 %.reass7992.us.us.us, %i.gfi  ; 2 uses
  %.not2090.us.us.us = icmp eq i32 %i.gft, 0
  %.not2091.us.us.us = icmp slt i32 %i.gfu, %i.egm
  %or.cond9010 = select i1 %.not2090.us.us.us, i1 %.not2091.us.us.us, i1 false
  br i1 %or.cond9010, label %.preheader.us.us.us, label %..loopexit6861_crit_edge.us.us.us

.preheader.us.us.us:                              ; preds = %bb.dm
  %i.gfv = mul nuw nsw i64 %indvars.iv8527, %i.gfo
  %i.gfw = sext i32 %i.gfu to i64
  %i.gfx = getelementptr inbounds nuw [2 x i8], ptr %.418527996.us.us, i64 %i.gfv
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %.preheader.us.us.us
  %indvars.iv8522 = phi i64 [ %indvars.iv.next8523, %bb.dp ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %.1118647981.us.us.us = phi float [ %.131866.us.us.us, %bb.dp ], [ %.1018637986.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %i.gfy = trunc i64 %indvars.iv8522 to i32
  %i.gfz = mul i32 %i.gfk, %i.gfy
  %.reass7985.us.us.us = add i32 %i.gfz, %invariant.op7984 ; 3 uses
  %i.gga = icmp slt i32 %.reass7985.us.us.us, 0
  br i1 %i.gga, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ggb = srem i32 %.reass7985.us.us.us, %i.gfm
  %i.ggc = sdiv i32 %.reass7985.us.us.us, %i.gfm  ; 2 uses
  %.not2092.us.us.us = icmp eq i32 %i.ggb, 0
  %.not2093.us.us.us = icmp slt i32 %i.ggc, %i.egk
  %or.cond9011 = select i1 %.not2092.us.us.us, i1 %.not2093.us.us.us, i1 false
  br i1 %or.cond9011, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dp

_ZN4ncnn3MatD2Ev.exit.us.us.us:                   ; preds = %bb.do
  %i.ggd = load i32, ptr %i.egj, align 4, !tbaa !22, !noalias !269
  %i.gge = load ptr, ptr %0, align 8, !tbaa !19, !noalias !269
  %i.ggf = load i64, ptr %i.eha, align 8, !tbaa !17, !noalias !269
  %i.ggg = mul i64 %i.ggf, %indvars.iv8532
  %i.ggh = load i64, ptr %i.ehb, align 8, !tbaa !24, !noalias !269 ; 2 uses
  %i.ggi = mul i64 %i.ggg, %i.ggh
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.gge, i64 %i.ggi
  %i.ggk = sext i32 %i.ggd to i64
  %i.ggl = mul nsw i64 %i.ggk, %i.gfw
  %i.ggm = mul i64 %i.ggl, %i.ggh
  %i.ggn = getelementptr inbounds nuw i8, ptr %i.ggj, i64 %i.ggm
  %i.ggo = sext i32 %i.ggc to i64
  %i.ggp = getelementptr inbounds [2 x i8], ptr %i.ggn, i64 %i.ggo
  %i.ggq = load i16, ptr %i.ggp, align 2, !tbaa !28
  %i.ggr = zext i16 %i.ggq to i32
  %i.ggs = shl nuw i32 %i.ggr, 16
  %i.ggt = bitcast i32 %i.ggs to float
  %i.ggu = getelementptr inbounds nuw [2 x i8], ptr %i.gfx, i64 %indvars.iv8522
  %i.ggv = load i16, ptr %i.ggu, align 2, !tbaa !28
  %i.ggw = zext i16 %i.ggv to i32
  %i.ggx = shl nuw i32 %i.ggw, 16
  %i.ggy = bitcast i32 %i.ggx to float
  %i.ggz = fmul fast float %i.ggy, %i.ggt
  %i.gha = fadd fast float %i.ggz, %.1118647981.us.us.us
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us, %bb.do, %bb.dn
  %.131866.us.us.us = phi nsz float [ %.1118647981.us.us.us, %bb.dn ], [ %.1118647981.us.us.us, %bb.do ], [ %i.gha, %_ZN4ncnn3MatD2Ev.exit.us.us.us ] ; 2 uses
  %indvars.iv.next8523 = add nuw nsw i64 %indvars.iv8522, 1 ; 2 uses
  %exitcond8526.not = icmp eq i64 %indvars.iv.next8523, %i.gfo
  br i1 %exitcond8526.not, label %..loopexit6861_crit_edge.us.us.us, label %bb.dn, !llvm.loop !209

..loopexit6861_crit_edge.us.us.us:                ; preds = %bb.dp, %bb.dm, %bb.dl
  %.15.us.us.us = phi nsz float [ %.1018637986.us.us.us, %bb.dl ], [ %.1018637986.us.us.us, %bb.dm ], [ %.131866.us.us.us, %bb.dp ] ; 3 uses
  %indvars.iv.next8528 = add nuw nsw i64 %indvars.iv8527, 1 ; 2 uses
  %exitcond8531.not = icmp eq i64 %indvars.iv.next8528, %wide.trip.count8530
  br i1 %exitcond8531.not, label %._crit_edge7989.split.us.us.us, label %bb.dl, !llvm.loop !210

._crit_edge7989.split.us.us.us:                   ; preds = %..loopexit6861_crit_edge.us.us.us
  %i.ghb = getelementptr inbounds [2 x i8], ptr %.418527996.us.us, i64 %i.flc
  %indvars.iv.next8533 = add nuw nsw i64 %indvars.iv8532, 1 ; 2 uses
  %i.ghc = trunc nuw i64 %indvars.iv.next8533 to i32
  %i.ghd = icmp sgt i32 %i.egi, %i.ghc
  br i1 %i.ghd, label %.preheader6870.us.us, label %._crit_edge7999, !llvm.loop !211

._crit_edge7999:                                  ; preds = %._crit_edge7989.split.us.us.us, %.preheader6870.lr.ph, %.preheader6875
  %.91862.lcssa = phi float [ %.11854.lcssa, %.preheader6875 ], [ %.11854.lcssa, %.preheader6870.lr.ph ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ] ; 13 uses
  switch i32 %i.fkp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.dq
    i32 2, label %bb.dr
    i32 3, label %bb.ds
    i32 4, label %bb.dt
    i32 5, label %bb.du
    i32 6, label %bb.dv
  ]

bb.dq:                                            ; preds = %._crit_edge7999
  %i.ghe = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.91862.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dr:                                            ; preds = %._crit_edge7999
  %i.ghf = load ptr, ptr %11, align 8, !tbaa !19
  %i.ghg = load float, ptr %i.ghf, align 4, !tbaa !30
  %i.ghh = fcmp fast ogt float %.91862.lcssa, 0.000000e+00
  %i.ghi = select fast i1 %i.ghh, float 1.000000e+00, float %i.ghg
  %i.ghj = fmul fast float %i.ghi, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ds:                                            ; preds = %._crit_edge7999
  %i.ghk = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.ghl = load float, ptr %i.ghk, align 4, !tbaa !30
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.ghk, i64 4
  %i.ghn = load float, ptr %i.ghm, align 4, !tbaa !30
  %spec.select6777 = call nnan ninf nsz float @llvm.maxnum.f32(float %.91862.lcssa, float %i.ghl)
  %spec.select6778 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select6777, float %i.ghn)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dt:                                            ; preds = %._crit_edge7999
  %.sroa.speculated6275 = call nnan ninf nsz float @llvm.minnum.f32(float %.91862.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated6275, float f0xC2B0C0A5)
  %i.gho = fneg fast float %.sroa.speculated
  %i.ghp = call fast float @llvm.exp.f32(float %i.gho)
  %i.ghq = fadd fast float %i.ghp, 1.000000e+00
  %i.ghr = fdiv fast float 1.000000e+00, %i.ghq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.du:                                            ; preds = %._crit_edge7999
  %i.ghs = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.91862.lcssa)
  %i.ght = fadd fast float %i.ghs, 1.000000e+00
  %i.ghu = call fast float @llvm.log.f32(float %i.ght)
  %i.ghv = call fast float @llvm.tanh.f32(float %i.ghu)
  %i.ghw = fmul fast float %i.ghv, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.dv:                                            ; preds = %._crit_edge7999
  %i.ghx = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.ghy = load float, ptr %i.ghx, align 4, !tbaa !30 ; 3 uses
  %i.ghz = getelementptr inbounds nuw i8, ptr %i.ghx, i64 4
  %i.gia = load float, ptr %i.ghz, align 4, !tbaa !30 ; 2 uses
  %i.gib = fneg fast float %i.gia
  %i.gic = fdiv fast float %i.gib, %i.ghy         ; 2 uses
  %i.gid = fcmp fast olt float %.91862.lcssa, %i.gic
  br i1 %i.gid, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gie = fdiv fast float 1.000000e+00, %i.ghy
  %i.gif = fadd fast float %i.gic, %i.gie
  %i.gig = fcmp fast ogt float %.91862.lcssa, %i.gif
  br i1 %i.gig, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.gih = fmul fast float %i.ghy, %.91862.lcssa
  %i.gii = fadd fast float %i.gih, %i.gia
  %i.gij = fmul fast float %i.gii, %.91862.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ds, %bb.dv, %._crit_edge7999, %bb.dq, %bb.dr, %bb.dt, %bb.du, %bb.dw, %bb.dx
  %.16534 = phi nsz float [ %.91862.lcssa, %._crit_edge7999 ], [ %i.ghe, %bb.dq ], [ %i.ghj, %bb.dr ], [ 0.000000e+00, %bb.dv ], [ %spec.select6778, %bb.ds ], [ %i.ghr, %bb.dt ], [ %i.ghw, %bb.du ], [ %i.gij, %bb.dx ], [ %.91862.lcssa, %bb.dw ]
  %i.gik = bitcast float %.16534 to i32
  %i.gil = lshr i32 %i.gik, 16
  %i.gim = trunc nuw i32 %i.gil to i16
  store i16 %i.gim, ptr %.118718010, align 2, !tbaa !28
  %i.gin = getelementptr inbounds nuw i8, ptr %.118718010, i64 2 ; 2 uses
  %i.gio = add nuw nsw i32 %.018688011, 1         ; 2 uses
  %exitcond8535.not = icmp eq i32 %i.gio, %i.ego
  br i1 %exitcond8535.not, label %._crit_edge8012, label %bb.cs, !llvm.loop !212
}

end_hunk_6
