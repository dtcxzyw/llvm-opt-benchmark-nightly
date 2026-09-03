Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_core?download=true
inline.NumInlined: 210
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 39
begin_hunk_0_@extract_audio:bb.a
  %.165.i.i.7.i = phi i32 [ %i.ls, %bb.m ], [ %i.ky, %dca_get_vlc.exit.6.i ]
  %.1.i.i.7.i = phi i32 [ %i.mh, %bb.m ], [ %i.lp, %dca_get_vlc.exit.6.i ]
  %i.mk = add i32 %.1.i.i.7.i, %.165.i.i.7.i
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 %i.mk)
  store i32 %i.ml, ptr %i.v, align 8, !tbaa !32
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.167.i.i.7.i, ptr %i.mm, align 4, !tbaa !34
  br label %get_array.exit

bb.n:                                             ; preds = %bb.d
  %i.mn = icmp slt i32 %2, 8
  br i1 %i.mn, label %bb.o, label %get_array.exit.loopexit

bb.o:                                             ; preds = %bb.n
  %i.mo = tail call fastcc i32 @parse_block_codes(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %get_array.exit

get_array.exit.loopexit:                          ; preds = %bb.n, %bb.c
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mq = add nsw i32 %2, -3                      ; 8 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.mt = load ptr, ptr %i.mp, align 8, !tbaa !29 ; 8 uses
  %i.mu = sub nsw i32 35, %2                      ; 8 uses
  %i.mv = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.mw = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.mx = lshr i32 %i.mv, 3
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 1, !tbaa !45
  %i.nb = tail call i32 @llvm.bswap.i32(i32 %i.na)
  %i.nc = and i32 %i.mv, 7
  %i.nd = shl i32 %i.nb, %i.nc
  %i.ne = ashr i32 %i.nd, %i.mu
  %i.nf = add i32 %i.mq, %i.mv
  %i.ng = tail call i32 @llvm.umin.i32(i32 %i.mw, i32 %i.nf)
  store i32 %i.ng, ptr %i.mr, align 8, !tbaa !32
  store i32 %i.ne, ptr %1, align 4, !tbaa !34
  %i.nh = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.ni = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.nj = lshr i32 %i.nh, 3
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 1, !tbaa !45
  %i.nn = tail call i32 @llvm.bswap.i32(i32 %i.nm)
  %i.no = and i32 %i.nh, 7
  %i.np = shl i32 %i.nn, %i.no
  %i.nq = ashr i32 %i.np, %i.mu
  %i.nr = add i32 %i.mq, %i.nh
  %i.ns = tail call i32 @llvm.umin.i32(i32 %i.ni, i32 %i.nr)
  store i32 %i.ns, ptr %i.mr, align 8, !tbaa !32
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.nq, ptr %i.nt, align 4, !tbaa !34
  %i.nu = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.nv = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.nw = lshr i32 %i.nu, 3
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 1, !tbaa !45
  %i.oa = tail call i32 @llvm.bswap.i32(i32 %i.nz)
  %i.ob = and i32 %i.nu, 7
  %i.oc = shl i32 %i.oa, %i.ob
  %i.od = ashr i32 %i.oc, %i.mu
  %i.oe = add i32 %i.mq, %i.nu
  %i.of = tail call i32 @llvm.umin.i32(i32 %i.nv, i32 %i.oe)
  store i32 %i.of, ptr %i.mr, align 8, !tbaa !32
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.od, ptr %i.og, align 4, !tbaa !34
  %i.oh = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.oi = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.oj = lshr i32 %i.oh, 3
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 1, !tbaa !45
  %i.on = tail call i32 @llvm.bswap.i32(i32 %i.om)
  %i.oo = and i32 %i.oh, 7
  %i.op = shl i32 %i.on, %i.oo
  %i.oq = ashr i32 %i.op, %i.mu
  %i.or = add i32 %i.mq, %i.oh
  %i.os = tail call i32 @llvm.umin.i32(i32 %i.oi, i32 %i.or)
  store i32 %i.os, ptr %i.mr, align 8, !tbaa !32
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.oq, ptr %i.ot, align 4, !tbaa !34
  %i.ou = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.ov = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.ow = lshr i32 %i.ou, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 1, !tbaa !45
  %i.pa = tail call i32 @llvm.bswap.i32(i32 %i.oz)
  %i.pb = and i32 %i.ou, 7
  %i.pc = shl i32 %i.pa, %i.pb
  %i.pd = ashr i32 %i.pc, %i.mu
  %i.pe = add i32 %i.mq, %i.ou
  %i.pf = tail call i32 @llvm.umin.i32(i32 %i.ov, i32 %i.pe)
  store i32 %i.pf, ptr %i.mr, align 8, !tbaa !32
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.pd, ptr %i.pg, align 4, !tbaa !34
  %i.ph = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.pi = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.pj = lshr i32 %i.ph, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 1, !tbaa !45
  %i.pn = tail call i32 @llvm.bswap.i32(i32 %i.pm)
  %i.po = and i32 %i.ph, 7
  %i.pp = shl i32 %i.pn, %i.po
  %i.pq = ashr i32 %i.pp, %i.mu
  %i.pr = add i32 %i.mq, %i.ph
  %i.ps = tail call i32 @llvm.umin.i32(i32 %i.pi, i32 %i.pr)
  store i32 %i.ps, ptr %i.mr, align 8, !tbaa !32
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.pq, ptr %i.pt, align 4, !tbaa !34
  %i.pu = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.pv = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.pw = lshr i32 %i.pu, 3
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 1, !tbaa !45
  %i.qa = tail call i32 @llvm.bswap.i32(i32 %i.pz)
  %i.qb = and i32 %i.pu, 7
  %i.qc = shl i32 %i.qa, %i.qb
  %i.qd = ashr i32 %i.qc, %i.mu
  %i.qe = add i32 %i.mq, %i.pu
  %i.qf = tail call i32 @llvm.umin.i32(i32 %i.pv, i32 %i.qe)
  store i32 %i.qf, ptr %i.mr, align 8, !tbaa !32
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.qd, ptr %i.qg, align 4, !tbaa !34
  %i.qh = load i32, ptr %i.mr, align 8, !tbaa !32 ; 3 uses
  %i.qi = load i32, ptr %i.ms, align 8, !tbaa !31
  %i.qj = lshr i32 %i.qh, 3
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 1, !tbaa !45
  %i.qn = tail call i32 @llvm.bswap.i32(i32 %i.qm)
  %i.qo = and i32 %i.qh, 7
  %i.qp = shl i32 %i.qn, %i.qo
  %i.qq = ashr i32 %i.qp, %i.mu
  %i.qr = add i32 %i.mq, %i.qh
  %i.qs = tail call i32 @llvm.umin.i32(i32 %i.qi, i32 %i.qr)
  store i32 %i.qs, ptr %i.mr, align 8, !tbaa !32
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.qq, ptr %i.qt, align 4, !tbaa !34
  br label %get_array.exit

get_array.exit:                                   ; preds = %get_array.exit.loopexit, %bb.o, %parse_huffman_codes.exit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 1, %parse_huffman_codes.exit ], [ %i.mo, %bb.o ], [ 0, %get_array.exit.loopexit ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ff_dca_core_dequantize(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = sext i32 %3 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 5 uses
  %i.f = icmp sgt i64 %i.e, 8388608
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 23
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %.not.i = icmp ult i32 %i.h, 65536              ; 2 uses
  %i.i = lshr i32 %i.h, 16
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 %i.i ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.j = lshr i32 %spec.select.i, 8
  %i.k = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.j
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.k
  %i.l = zext nneg i32 %.110.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %.1.i, %i.o
  %.fr = freeze i32 %i.p                          ; 2 uses
  %i.q = add nuw nsw i32 %.fr, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.e, %i.r                      ; 5 uses
  %i.t = sub i32 21, %.fr                         ; 3 uses
  %.not = icmp eq i32 %4, 0
  %i.u = icmp sgt i32 %i.t, 0                     ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader31

.thread:                                          ; preds = %bb.a
  %.not46 = icmp eq i32 %4, 0
  br i1 %.not46, label %.preheader.split.us.preheader, label %.preheader31.split.us.preheader

.preheader31:                                     ; preds = %bb.b
  br i1 %i.u, label %.preheader31.split.us.preheader, label %.preheader31.split.preheader

.preheader31.split.preheader:                     ; preds = %.preheader31
  %i.v = add i64 %i.b, 32
  %i.w = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.v, %i.a
  %rt.bound1 = icmp ugt i64 %i.w, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.preheader31.split.preheader.rtscalar, label %.preheader31.split.preheader.rtvec

.preheader31.split.us.preheader:                  ; preds = %.thread, %.preheader31
  %.0254754 = phi i64 [ %i.s, %.preheader31 ], [ %i.e, %.thread ] ; 8 uses
  %.04953 = phi i32 [ %i.t, %.preheader31 ], [ 22, %.thread ] ; 2 uses
  %i.x = zext nneg i32 %.04953 to i64             ; 8 uses
  %i.y = add nsw i32 %.04953, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 1, %i.z                 ; 8 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !34
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %.0254754, %i.ac
  %i.ae = add nsw i64 %i.ad, %i.aa
  %i.af = ashr i64 %i.ae, %i.x
  %.0.i.us = trunc i64 %i.af to i32
  %i.ag = tail call i32 @llvm.smax.i32(i32 %.0.i.us, i32 -8388608)
  %.0.i.i.us = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ag, i32 8388607)
  %i.ah = load i32, ptr %0, align 4, !tbaa !34
  %i.ai = add nsw i32 %.0.i.i.us, %i.ah
  store i32 %i.ai, ptr %0, align 4, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %.0254754, %i.al
  %i.an = add nsw i64 %i.am, %i.aa
  %i.ao = ashr i64 %i.an, %i.x
  %.0.i.us.1 = trunc i64 %i.ao to i32
  %i.ap = tail call i32 @llvm.smax.i32(i32 %.0.i.us.1, i32 -8388608)
  %.0.i.i.us.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ap, i32 8388607)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = add nsw i32 %.0.i.i.us.1, %i.ar
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %.0254754, %i.av
  %i.ax = add nsw i64 %i.aw, %i.aa
  %i.ay = ashr i64 %i.ax, %i.x
  %.0.i.us.2 = trunc i64 %i.ay to i32
  %i.az = tail call i32 @llvm.smax.i32(i32 %.0.i.us.2, i32 -8388608)
  %.0.i.i.us.2 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.az, i32 8388607)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = add nsw i32 %.0.i.i.us.2, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %.0254754, %i.bf
  %i.bh = add nsw i64 %i.bg, %i.aa
  %i.bi = ashr i64 %i.bh, %i.x
  %.0.i.us.3 = trunc i64 %i.bi to i32
  %i.bj = tail call i32 @llvm.smax.i32(i32 %.0.i.us.3, i32 -8388608)
  %.0.i.i.us.3 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.bj, i32 8388607)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.bm = add nsw i32 %.0.i.i.us.3, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %.0254754, %i.bp
  %i.br = add nsw i64 %i.bq, %i.aa
  %i.bs = ashr i64 %i.br, %i.x
  %.0.i.us.4 = trunc i64 %i.bs to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %.0.i.us.4, i32 -8388608)
  %.0.i.i.us.4 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.bt, i32 8388607)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = add nsw i32 %.0.i.i.us.4, %i.bv
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %.0254754, %i.bz
  %i.cb = add nsw i64 %i.ca, %i.aa
  %i.cc = ashr i64 %i.cb, %i.x
  %.0.i.us.5 = trunc i64 %i.cc to i32
  %i.cd = tail call i32 @llvm.smax.i32(i32 %.0.i.us.5, i32 -8388608)
  %.0.i.i.us.5 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.cd, i32 8388607)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !34
  %i.cg = add nsw i32 %.0.i.i.us.5, %i.cf
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul nsw i64 %.0254754, %i.cj
  %i.cl = add nsw i64 %i.ck, %i.aa
  %i.cm = ashr i64 %i.cl, %i.x
  %.0.i.us.6 = trunc i64 %i.cm to i32
  %i.cn = tail call i32 @llvm.smax.i32(i32 %.0.i.us.6, i32 -8388608)
  %.0.i.i.us.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.cn, i32 8388607)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34
  %i.cq = add nsw i32 %.0.i.i.us.6, %i.cp
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !34
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %.0254754, %i.ct
  %i.cv = add nsw i64 %i.cu, %i.aa
  %i.cw = ashr i64 %i.cv, %i.x
  %.0.i.us.7 = trunc i64 %i.cw to i32
  %i.cx = tail call i32 @llvm.smax.i32(i32 %.0.i.us.7, i32 -8388608)
  %.0.i.i.us.7 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.cx, i32 8388607)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !34
  %i.da = add nsw i32 %.0.i.i.us.7, %i.cz
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !34
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  br i1 %i.u, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.db = load i32, ptr %1, align 4, !tbaa !34
  %i.dc = trunc i64 %i.s to i32                   ; 8 uses
  %.0.i29 = mul i32 %i.db, %i.dc
  %i.dd = tail call i32 @llvm.smax.i32(i32 %.0.i29, i32 -8388608)
  %.0.i.i30 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.dd, i32 8388607)
  store i32 %.0.i.i30, ptr %0, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !34
  %.0.i29.1 = mul i32 %i.df, %i.dc
  %i.dg = tail call i32 @llvm.smax.i32(i32 %.0.i29.1, i32 -8388608)
  %.0.i.i30.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.dg, i32 8388607)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i.i30.1, ptr %i.dh, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !34
  %.0.i29.2 = mul i32 %i.dj, %i.dc
  %i.dk = tail call i32 @llvm.smax.i32(i32 %.0.i29.2, i32 -8388608)
  %.0.i.i30.2 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.dk, i32 8388607)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0.i.i30.2, ptr %i.dl, align 4, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !34
  %.0.i29.3 = mul i32 %i.dn, %i.dc
  %i.do = tail call i32 @llvm.smax.i32(i32 %.0.i29.3, i32 -8388608)
  %.0.i.i30.3 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.do, i32 8388607)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.i30.3, ptr %i.dp, align 4, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !34
  %.0.i29.4 = mul i32 %i.dr, %i.dc
  %i.ds = tail call i32 @llvm.smax.i32(i32 %.0.i29.4, i32 -8388608)
  %.0.i.i30.4 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ds, i32 8388607)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.i.i30.4, ptr %i.dt, align 4, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !34
  %.0.i29.5 = mul i32 %i.dv, %i.dc
  %i.dw = tail call i32 @llvm.smax.i32(i32 %.0.i29.5, i32 -8388608)
  %.0.i.i30.5 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.dw, i32 8388607)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.i.i30.5, ptr %i.dx, align 4, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  %.0.i29.6 = mul i32 %i.dz, %i.dc
  %i.ea = tail call i32 @llvm.smax.i32(i32 %.0.i29.6, i32 -8388608)
  %.0.i.i30.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ea, i32 8388607)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i.i30.6, ptr %i.eb, align 4, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !34
  %.0.i29.7 = mul i32 %i.ed, %i.dc
  %i.ee = tail call i32 @llvm.smax.i32(i32 %.0.i29.7, i32 -8388608)
  %.0.i.i30.7 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ee, i32 8388607)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i.i30.7, ptr %i.ef, align 4, !tbaa !34
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.thread, %.preheader
  %.0254858 = phi i64 [ %i.s, %.preheader ], [ %i.e, %.thread ] ; 8 uses
  %.05057 = phi i32 [ %i.t, %.preheader ], [ 22, %.thread ] ; 2 uses
  %i.eg = zext nneg i32 %.05057 to i64            ; 8 uses
  %i.eh = add nsw i32 %.05057, -1
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 1, %i.ei                ; 8 uses
  %i.ek = load i32, ptr %1, align 4, !tbaa !34
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %.0254858, %i.el
  %i.en = add nsw i64 %i.em, %i.ej
  %i.eo = ashr i64 %i.en, %i.eg
  %.0.i29.us = trunc i64 %i.eo to i32
  %i.ep = tail call i32 @llvm.smax.i32(i32 %.0.i29.us, i32 -8388608)
  %.0.i.i30.us = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ep, i32 8388607)
  store i32 %.0.i.i30.us, ptr %0, align 4, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !34
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i64 %.0254858, %i.es
  %i.eu = add nsw i64 %i.et, %i.ej
  %i.ev = ashr i64 %i.eu, %i.eg
  %.0.i29.us.1 = trunc i64 %i.ev to i32
  %i.ew = tail call i32 @llvm.smax.i32(i32 %.0.i29.us.1, i32 -8388608)
  %.0.i.i30.us.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ew, i32 8388607)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i.i30.us.1, ptr %i.ex, align 4, !tbaa !34
end_hunk_0
begin_hunk_1_@alloc_x96_sample_buffer:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9984
  store ptr %i.cs, ptr %i.ct, align 16, !tbaa !49
  %.idx78 = mul nsw i64 %i.m, 116
  %i.cu = getelementptr inbounds i8, ptr %i.j, i64 %.idx78
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9992
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !49
  %.idx79 = mul nsw i64 %i.m, 120
  %i.cx = getelementptr inbounds i8, ptr %i.j, i64 %.idx79
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10000
  store ptr %i.cy, ptr %i.cz, align 16, !tbaa !49
  %.idx80 = mul nsw i64 %i.m, 124
  %i.da = getelementptr inbounds i8, ptr %i.j, i64 %.idx80
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 10008
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !49
  %.idx81 = shl nsw i64 %i.m, 7
  %i.dd = getelementptr inbounds i8, ptr %i.j, i64 %.idx81
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 10016
  store ptr %i.de, ptr %i.df, align 16, !tbaa !49
  %.idx82 = mul nsw i64 %i.m, 132
  %i.dg = getelementptr inbounds i8, ptr %i.j, i64 %.idx82
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10024
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !49
  %.idx83 = mul nsw i64 %i.m, 136
  %i.dj = getelementptr inbounds i8, ptr %i.j, i64 %.idx83
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10032
  store ptr %i.dk, ptr %i.dl, align 16, !tbaa !49
  %.idx84 = mul nsw i64 %i.m, 140
  %i.dm = getelementptr inbounds i8, ptr %i.j, i64 %.idx84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 10040
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !49
  %.idx85 = mul nsw i64 %i.m, 144
  %i.dp = getelementptr inbounds i8, ptr %i.j, i64 %.idx85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 10048
  store ptr %i.dq, ptr %i.dr, align 16, !tbaa !49
  %.idx86 = mul nsw i64 %i.m, 148
  %i.ds = getelementptr inbounds i8, ptr %i.j, i64 %.idx86
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 10056
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !49
  %.idx87 = mul nsw i64 %i.m, 152
  %i.dv = getelementptr inbounds i8, ptr %i.j, i64 %.idx87
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 10064
  store ptr %i.dw, ptr %i.dx, align 16, !tbaa !49
  %.idx88 = mul nsw i64 %i.m, 156
  %i.dy = getelementptr inbounds i8, ptr %i.j, i64 %.idx88
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 10072
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !49
  %.idx89 = mul nsw i64 %i.m, 160
  %i.eb = getelementptr inbounds i8, ptr %i.j, i64 %.idx89
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 10080
  store ptr %i.ec, ptr %i.ed, align 16, !tbaa !49
  %.idx90 = mul nsw i64 %i.m, 164
  %i.ee = getelementptr inbounds i8, ptr %i.j, i64 %.idx90
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 10088
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !49
  %.idx91 = mul nsw i64 %i.m, 168
  %i.eh = getelementptr inbounds i8, ptr %i.j, i64 %.idx91
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 10096
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !49
  %.idx92 = mul nsw i64 %i.m, 172
  %i.ek = getelementptr inbounds i8, ptr %i.j, i64 %.idx92
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 10104
  store ptr %i.el, ptr %i.em, align 8, !tbaa !49
  %.idx93 = mul nsw i64 %i.m, 176
  %i.en = getelementptr inbounds i8, ptr %i.j, i64 %.idx93
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 10112
  store ptr %i.eo, ptr %i.ep, align 16, !tbaa !49
  %.idx94 = mul nsw i64 %i.m, 180
  %i.eq = getelementptr inbounds i8, ptr %i.j, i64 %.idx94
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 10120
  store ptr %i.er, ptr %i.es, align 8, !tbaa !49
  %.idx95 = mul nsw i64 %i.m, 184
  %i.et = getelementptr inbounds i8, ptr %i.j, i64 %.idx95
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 10128
  store ptr %i.eu, ptr %i.ev, align 16, !tbaa !49
  %.idx96 = mul nsw i64 %i.m, 188
  %i.ew = getelementptr inbounds i8, ptr %i.j, i64 %.idx96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 10136
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !49
  %.idx97 = mul nsw i64 %i.m, 192
  %i.ez = getelementptr inbounds i8, ptr %i.j, i64 %.idx97
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 10144
  store ptr %i.fa, ptr %i.fb, align 16, !tbaa !49
  %.idx98 = mul nsw i64 %i.m, 196
  %i.fc = getelementptr inbounds i8, ptr %i.j, i64 %.idx98
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 10152
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !49
  %.idx99 = mul nsw i64 %i.m, 200
  %i.ff = getelementptr inbounds i8, ptr %i.j, i64 %.idx99
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 10160
  store ptr %i.fg, ptr %i.fh, align 16, !tbaa !49
  %.idx100 = mul nsw i64 %i.m, 204
  %i.fi = getelementptr inbounds i8, ptr %i.j, i64 %.idx100
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 10168
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !49
  %.idx101 = mul nsw i64 %i.m, 208
  %i.fl = getelementptr inbounds i8, ptr %i.j, i64 %.idx101
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 10176
  store ptr %i.fm, ptr %i.fn, align 16, !tbaa !49
  %.idx102 = mul nsw i64 %i.m, 212
  %i.fo = getelementptr inbounds i8, ptr %i.j, i64 %.idx102
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 10184
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !49
  %.idx103 = mul nsw i64 %i.m, 216
  %i.fr = getelementptr inbounds i8, ptr %i.j, i64 %.idx103
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 10192
  store ptr %i.fs, ptr %i.ft, align 16, !tbaa !49
  %.idx104 = mul nsw i64 %i.m, 220
  %i.fu = getelementptr inbounds i8, ptr %i.j, i64 %.idx104
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 10200
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !49
  %.idx105 = mul nsw i64 %i.m, 224
  %i.fx = getelementptr inbounds i8, ptr %i.j, i64 %.idx105
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 10208
  store ptr %i.fy, ptr %i.fz, align 16, !tbaa !49
  %.idx106 = mul nsw i64 %i.m, 228
  %i.ga = getelementptr inbounds i8, ptr %i.j, i64 %.idx106
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 10216
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !49
  %.idx107 = mul nsw i64 %i.m, 232
  %i.gd = getelementptr inbounds i8, ptr %i.j, i64 %.idx107
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 10224
  store ptr %i.ge, ptr %i.gf, align 16, !tbaa !49
  %.idx108 = mul nsw i64 %i.m, 236
  %i.gg = getelementptr inbounds i8, ptr %i.j, i64 %.idx108
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 10232
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !49
  %.idx109 = mul nsw i64 %i.m, 240
  %i.gj = getelementptr inbounds i8, ptr %i.j, i64 %.idx109
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 10240
  store ptr %i.gk, ptr %i.gl, align 16, !tbaa !49
  %.idx110 = mul nsw i64 %i.m, 244
  %i.gm = getelementptr inbounds i8, ptr %i.j, i64 %.idx110
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 10248
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !49
  %.idx111 = mul nsw i64 %i.m, 248
  %i.gp = getelementptr inbounds i8, ptr %i.j, i64 %.idx111
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 10256
  store ptr %i.gq, ptr %i.gr, align 16, !tbaa !49
  %.idx112 = mul nsw i64 %i.m, 252
  %i.gs = getelementptr inbounds i8, ptr %i.j, i64 %.idx112
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 10264
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !49
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 10272
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader26
  %index = phi i64 [ 0, %.preheader26 ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader26 ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.gw = add nuw nsw <2 x i64> %vec.ind, splat (i64 64)
  %i.gx = add nuw <2 x i64> %vec.ind, splat (i64 66)
  %i.gy = mul nsw <2 x i64> %i.gw, %broadcast.splat
  %i.gz = mul nsw <2 x i64> %i.gx, %broadcast.splat
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.gy
  %wide.gep113 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.gz
  %wide.gep114 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 16
  %wide.gep115 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep113, i64 16
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <2 x ptr> %wide.gep114, ptr %i.ha, align 8, !tbaa !49
  store <2 x ptr> %wide.gep115, ptr %i.hb, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hc = icmp eq i64 %index.next, 64
  br i1 %i.hc, label %.preheader.2, label %vector.body, !llvm.loop !256

.preheader.2:                                     ; preds = %vector.body
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 10784
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %.preheader.2
  %index120 = phi i64 [ 0, %.preheader.2 ], [ %index.next127, %vector.body119 ] ; 2 uses
  %vec.ind121 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.2 ], [ %vec.ind.next128, %vector.body119 ] ; 3 uses
  %i.he = add nuw nsw <2 x i64> %vec.ind121, splat (i64 128)
  %i.hf = add nuw <2 x i64> %vec.ind121, splat (i64 130)
  %i.hg = mul nsw <2 x i64> %i.he, %broadcast.splat118
  %i.hh = mul nsw <2 x i64> %i.hf, %broadcast.splat118
  %wide.gep123 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.hg
  %wide.gep124 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.hh
  %wide.gep125 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep123, i64 16
  %wide.gep126 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep124, i64 16
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index120 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <2 x ptr> %wide.gep125, ptr %i.hi, align 8, !tbaa !49
  store <2 x ptr> %wide.gep126, ptr %i.hj, align 8, !tbaa !49
  %index.next127 = add nuw i64 %index120, 4       ; 2 uses
  %vec.ind.next128 = add nuw <2 x i64> %vec.ind121, splat (i64 4)
  %i.hk = icmp eq i64 %index.next127, 64
  br i1 %i.hk, label %.preheader.3, label %vector.body119, !llvm.loop !257

.preheader.3:                                     ; preds = %vector.body119
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 11296
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %.preheader.3
  %index134 = phi i64 [ 0, %.preheader.3 ], [ %index.next141, %vector.body133 ] ; 2 uses
  %vec.ind135 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.3 ], [ %vec.ind.next142, %vector.body133 ] ; 3 uses
  %i.hm = add nuw nsw <2 x i64> %vec.ind135, splat (i64 192)
  %i.hn = add nuw <2 x i64> %vec.ind135, splat (i64 194)
  %i.ho = mul nsw <2 x i64> %i.hm, %broadcast.splat132
  %i.hp = mul nsw <2 x i64> %i.hn, %broadcast.splat132
  %wide.gep137 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.ho
  %wide.gep138 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.hp
  %wide.gep139 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep137, i64 16
  %wide.gep140 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep138, i64 16
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %index134 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <2 x ptr> %wide.gep139, ptr %i.hq, align 8, !tbaa !49
  store <2 x ptr> %wide.gep140, ptr %i.hr, align 8, !tbaa !49
  %index.next141 = add nuw i64 %index134, 4       ; 2 uses
  %vec.ind.next142 = add nuw <2 x i64> %vec.ind135, splat (i64 4)
  %i.hs = icmp eq i64 %index.next141, 64
  br i1 %i.hs, label %.preheader.4, label %vector.body133, !llvm.loop !258

.preheader.4:                                     ; preds = %vector.body133
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 11808
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %.preheader.4
  %index148 = phi i64 [ 0, %.preheader.4 ], [ %index.next155, %vector.body147 ] ; 2 uses
  %vec.ind149 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.4 ], [ %vec.ind.next156, %vector.body147 ] ; 3 uses
  %i.hu = add nuw nsw <2 x i64> %vec.ind149, splat (i64 256)
  %i.hv = add nuw <2 x i64> %vec.ind149, splat (i64 258)
  %i.hw = mul nsw <2 x i64> %i.hu, %broadcast.splat146
  %i.hx = mul nsw <2 x i64> %i.hv, %broadcast.splat146
  %wide.gep151 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.hw
  %wide.gep152 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.hx
  %wide.gep153 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep151, i64 16
  %wide.gep154 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep152, i64 16
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index148 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <2 x ptr> %wide.gep153, ptr %i.hy, align 8, !tbaa !49
  store <2 x ptr> %wide.gep154, ptr %i.hz, align 8, !tbaa !49
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next156 = add nuw <2 x i64> %vec.ind149, splat (i64 4)
  %i.ia = icmp eq i64 %index.next155, 64
  br i1 %i.ia, label %.preheader.5, label %vector.body147, !llvm.loop !259

.preheader.5:                                     ; preds = %vector.body147
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 12320
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %.preheader.5
  %index162 = phi i64 [ 0, %.preheader.5 ], [ %index.next169, %vector.body161 ] ; 2 uses
  %vec.ind163 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.5 ], [ %vec.ind.next170, %vector.body161 ] ; 3 uses
  %i.ic = add nuw nsw <2 x i64> %vec.ind163, splat (i64 320)
  %i.id = add nuw <2 x i64> %vec.ind163, splat (i64 322)
  %i.ie = mul nsw <2 x i64> %i.ic, %broadcast.splat160
  %i.if = mul nsw <2 x i64> %i.id, %broadcast.splat160
  %wide.gep165 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.ie
  %wide.gep166 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.if
  %wide.gep167 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep165, i64 16
  %wide.gep168 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep166, i64 16
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index162 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <2 x ptr> %wide.gep167, ptr %i.ig, align 8, !tbaa !49
  store <2 x ptr> %wide.gep168, ptr %i.ih, align 8, !tbaa !49
  %index.next169 = add nuw i64 %index162, 4       ; 2 uses
  %vec.ind.next170 = add nuw <2 x i64> %vec.ind163, splat (i64 4)
  %i.ii = icmp eq i64 %index.next169, 64
  br i1 %i.ii, label %.preheader.6, label %vector.body161, !llvm.loop !260

.preheader.6:                                     ; preds = %vector.body161
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 12832
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %.preheader.6
  %index176 = phi i64 [ 0, %.preheader.6 ], [ %index.next183, %vector.body175 ] ; 2 uses
  %vec.ind177 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.6 ], [ %vec.ind.next184, %vector.body175 ] ; 3 uses
  %i.ik = add nuw nsw <2 x i64> %vec.ind177, splat (i64 384)
  %i.il = add nuw <2 x i64> %vec.ind177, splat (i64 386)
  %i.im = mul nsw <2 x i64> %i.ik, %broadcast.splat174
  %i.in = mul nsw <2 x i64> %i.il, %broadcast.splat174
  %wide.gep179 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.im
  %wide.gep180 = getelementptr inbounds [4 x i8], ptr %i.j, <2 x i64> %i.in
  %wide.gep181 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep179, i64 16
  %wide.gep182 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep180, i64 16
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index176 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <2 x ptr> %wide.gep181, ptr %i.io, align 8, !tbaa !49
  store <2 x ptr> %wide.gep182, ptr %i.ip, align 8, !tbaa !49
  %index.next183 = add nuw i64 %index176, 4       ; 2 uses
  %vec.ind.next184 = add nuw <2 x i64> %vec.ind177, splat (i64 4)
  %i.iq = icmp eq i64 %index.next183, 64
  br i1 %i.iq, label %.loopexit, label %vector.body175, !llvm.loop !261

.loopexit:                                        ; preds = %vector.body175, %bb.b
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !52
  %.not25 = icmp eq i32 %i.is, 0
  br i1 %.not25, label %bb.c, label %erase_x96_adpcm_history.exit

bb.c:                                             ; preds = %.loopexit
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 9760 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !49
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -16
  store i64 0, ptr %i.iw, align 8, !tbaa !45
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !49
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -8
  store i64 0, ptr %i.iy, align 8, !tbaa !45
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !49
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -16
  store i64 0, ptr %i.jc, align 8, !tbaa !45
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !49
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  store i64 0, ptr %i.je, align 8, !tbaa !45
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !49
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -16
  store i64 0, ptr %i.ji, align 8, !tbaa !45
  %i.jj = load ptr, ptr %i.jg, align 8, !tbaa !49
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -8
  store i64 0, ptr %i.jk, align 8, !tbaa !45
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !49
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -16
  store i64 0, ptr %i.jo, align 8, !tbaa !45
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !49
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8
  store i64 0, ptr %i.jq, align 8, !tbaa !45
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 64
  br i1 %exitcond.not.i.3, label %.preheader.1.i, label %bb.d, !llvm.loop !3

.preheader.1.i:                                   ; preds = %bb.d
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 10272 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.1.i
  %indvars.iv.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next.1.i.3, %bb.e ] ; 5 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.1.i ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !49
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -16
  store i64 0, ptr %i.ju, align 8, !tbaa !45
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !49
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -8
  store i64 0, ptr %i.jw, align 8, !tbaa !45
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.1.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !49
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -16
  store i64 0, ptr %i.ka, align 8, !tbaa !45
  %i.kb = load ptr, ptr %i.jy, align 8, !tbaa !49
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -8
  store i64 0, ptr %i.kc, align 8, !tbaa !45
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.1.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !49
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -16
  store i64 0, ptr %i.kg, align 8, !tbaa !45
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !49
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -8
  store i64 0, ptr %i.ki, align 8, !tbaa !45
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.1.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !49
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -16
  store i64 0, ptr %i.km, align 8, !tbaa !45
  %i.kn = load ptr, ptr %i.kk, align 8, !tbaa !49
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -8
  store i64 0, ptr %i.ko, align 8, !tbaa !45
  %indvars.iv.next.1.i.3 = add nuw nsw i64 %indvars.iv.1.i, 4 ; 2 uses
  %exitcond.1.not.i.3 = icmp eq i64 %indvars.iv.next.1.i.3, 64
  br i1 %exitcond.1.not.i.3, label %.preheader.2.i, label %bb.e, !llvm.loop !3

.preheader.2.i:                                   ; preds = %bb.e
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 10784 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.2.i
  %indvars.iv.2.i = phi i64 [ 0, %.preheader.2.i ], [ %indvars.iv.next.2.i.3, %bb.f ] ; 5 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.2.i ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !49
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -16
  store i64 0, ptr %i.ks, align 8, !tbaa !45
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !49
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -8
  store i64 0, ptr %i.ku, align 8, !tbaa !45
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.2.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !49
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -16
  store i64 0, ptr %i.ky, align 8, !tbaa !45
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !49
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -8
  store i64 0, ptr %i.la, align 8, !tbaa !45
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.2.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !49
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -16
  store i64 0, ptr %i.le, align 8, !tbaa !45
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !49
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 -8
  store i64 0, ptr %i.lg, align 8, !tbaa !45
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv.2.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !49
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -16
  store i64 0, ptr %i.lk, align 8, !tbaa !45
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !49
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -8
  store i64 0, ptr %i.lm, align 8, !tbaa !45
  %indvars.iv.next.2.i.3 = add nuw nsw i64 %indvars.iv.2.i, 4 ; 2 uses
  %exitcond.2.not.i.3 = icmp eq i64 %indvars.iv.next.2.i.3, 64
  br i1 %exitcond.2.not.i.3, label %.preheader.3.i, label %bb.f, !llvm.loop !3

.preheader.3.i:                                   ; preds = %bb.f
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 11296 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.3.i
  %indvars.iv.3.i = phi i64 [ 0, %.preheader.3.i ], [ %indvars.iv.next.3.i.3, %bb.g ] ; 5 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.3.i ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !49
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -16
  store i64 0, ptr %i.lq, align 8, !tbaa !45
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !49
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -8
  store i64 0, ptr %i.ls, align 8, !tbaa !45
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.3.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !49
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -16
  store i64 0, ptr %i.lw, align 8, !tbaa !45
  %i.lx = load ptr, ptr %i.lu, align 8, !tbaa !49
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -8
  store i64 0, ptr %i.ly, align 8, !tbaa !45
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.3.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !49
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -16
  store i64 0, ptr %i.mc, align 8, !tbaa !45
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !49
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -8
  store i64 0, ptr %i.me, align 8, !tbaa !45
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.3.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !49
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -16
  store i64 0, ptr %i.mi, align 8, !tbaa !45
  %i.mj = load ptr, ptr %i.mg, align 8, !tbaa !49
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -8
  store i64 0, ptr %i.mk, align 8, !tbaa !45
  %indvars.iv.next.3.i.3 = add nuw nsw i64 %indvars.iv.3.i, 4 ; 2 uses
  %exitcond.3.not.i.3 = icmp eq i64 %indvars.iv.next.3.i.3, 64
  br i1 %exitcond.3.not.i.3, label %.preheader.4.i, label %bb.g, !llvm.loop !3

.preheader.4.i:                                   ; preds = %bb.g
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 11808 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.4.i
  %indvars.iv.4.i = phi i64 [ 0, %.preheader.4.i ], [ %indvars.iv.next.4.i.3, %bb.h ] ; 5 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv.4.i ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !49
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -16
  store i64 0, ptr %i.mo, align 8, !tbaa !45
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !49
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -8
  store i64 0, ptr %i.mq, align 8, !tbaa !45
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv.4.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !49
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 -16
  store i64 0, ptr %i.mu, align 8, !tbaa !45
  %i.mv = load ptr, ptr %i.ms, align 8, !tbaa !49
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8
  store i64 0, ptr %i.mw, align 8, !tbaa !45
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv.4.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !49
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 -16
  store i64 0, ptr %i.na, align 8, !tbaa !45
  %i.nb = load ptr, ptr %i.my, align 8, !tbaa !49
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 -8
  store i64 0, ptr %i.nc, align 8, !tbaa !45
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv.4.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !49
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -16
  store i64 0, ptr %i.ng, align 8, !tbaa !45
  %i.nh = load ptr, ptr %i.ne, align 8, !tbaa !49
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -8
  store i64 0, ptr %i.ni, align 8, !tbaa !45
  %indvars.iv.next.4.i.3 = add nuw nsw i64 %indvars.iv.4.i, 4 ; 2 uses
  %exitcond.4.not.i.3 = icmp eq i64 %indvars.iv.next.4.i.3, 64
  br i1 %exitcond.4.not.i.3, label %.preheader.5.i, label %bb.h, !llvm.loop !3

.preheader.5.i:                                   ; preds = %bb.h
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 12320 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.5.i
  %indvars.iv.5.i = phi i64 [ 0, %.preheader.5.i ], [ %indvars.iv.next.5.i.3, %bb.i ] ; 5 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.5.i ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !49
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -16
  store i64 0, ptr %i.nm, align 8, !tbaa !45
  %i.nn = load ptr, ptr %i.nk, align 8, !tbaa !49
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -8
  store i64 0, ptr %i.no, align 8, !tbaa !45
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.5.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !49
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -16
  store i64 0, ptr %i.ns, align 8, !tbaa !45
  %i.nt = load ptr, ptr %i.nq, align 8, !tbaa !49
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -8
  store i64 0, ptr %i.nu, align 8, !tbaa !45
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.5.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !49
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -16
  store i64 0, ptr %i.ny, align 8, !tbaa !45
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !49
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 -8
  store i64 0, ptr %i.oa, align 8, !tbaa !45
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.5.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !49
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -16
  store i64 0, ptr %i.oe, align 8, !tbaa !45
  %i.of = load ptr, ptr %i.oc, align 8, !tbaa !49
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -8
  store i64 0, ptr %i.og, align 8, !tbaa !45
  %indvars.iv.next.5.i.3 = add nuw nsw i64 %indvars.iv.5.i, 4 ; 2 uses
  %exitcond.5.not.i.3 = icmp eq i64 %indvars.iv.next.5.i.3, 64
  br i1 %exitcond.5.not.i.3, label %.preheader.6.i, label %bb.i, !llvm.loop !3

.preheader.6.i:                                   ; preds = %bb.i
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 12832 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.6.i
  %indvars.iv.6.i = phi i64 [ 0, %.preheader.6.i ], [ %indvars.iv.next.6.i.3, %bb.j ] ; 5 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.6.i ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !49
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 -16
  store i64 0, ptr %i.ok, align 8, !tbaa !45
  %i.ol = load ptr, ptr %i.oi, align 8, !tbaa !49
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 -8
  store i64 0, ptr %i.om, align 8, !tbaa !45
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.6.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !49
  %i.oq = getelementptr inbounds i8, ptr %i.op, i64 -16
  store i64 0, ptr %i.oq, align 8, !tbaa !45
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !49
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -8
  store i64 0, ptr %i.os, align 8, !tbaa !45
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.6.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !49
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 -16
  store i64 0, ptr %i.ow, align 8, !tbaa !45
  %i.ox = load ptr, ptr %i.ou, align 8, !tbaa !49
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 -8
  store i64 0, ptr %i.oy, align 8, !tbaa !45
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %indvars.iv.6.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !49
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 -16
  store i64 0, ptr %i.pc, align 8, !tbaa !45
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !49
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 -8
  store i64 0, ptr %i.pe, align 8, !tbaa !45
  %indvars.iv.next.6.i.3 = add nuw nsw i64 %indvars.iv.6.i, 4 ; 2 uses
  %exitcond.6.not.i.3 = icmp eq i64 %indvars.iv.next.6.i.3, 64
  br i1 %exitcond.6.not.i.3, label %erase_x96_adpcm_history.exit, label %bb.j, !llvm.loop !3

erase_x96_adpcm_history.exit:                     ; preds = %bb.j, %.loopexit, %bb.a
  %.023 = phi i32 [ -12, %bb.a ], [ 0, %.loopexit ], [ 0, %bb.j ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_x96_frame_data(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 44 uses
  %.val.i = load i32, ptr %i.c, align 8, !tbaa !32 ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 20         ; 5 uses
  %.val96.i = load i32, ptr %i.d, align 4, !tbaa !30 ; 2 uses
  %i.e = icmp slt i32 %.val96.i, %.val.i
  br i1 %i.e, label %parse_x96_coding_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 20 uses
  %.pre144.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i, label %ff_dca_check_crc.exit.thread102.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %.val.i, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 1, !tbaa !45
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %.val.i, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 25                        ; 2 uses
  %i.n = add i32 %.val.i, 7
  %i.o = tail call i32 @llvm.umin.i32(i32 %.pre144.i, i32 %i.n) ; 4 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !32
  %i.p = add nuw nsw i32 %i.m, 1                  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9720
  %i.r = load i32, ptr %i.q, align 8, !tbaa !106
  %.not91.i = icmp eq i32 %i.r, 0
  br i1 %.not91.i, label %ff_dca_check_crc.exit.thread102.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 16, !tbaa !36    ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val97.i = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr i8, ptr %i.s, i64 528
  %.val98.i = load i32, ptr %i.u, align 8, !tbaa !73
  %i.v = and i32 %.val98.i, 65537
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %ff_dca_check_crc.exit.thread102.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = shl nuw nsw i32 %i.p, 3
  %i.x = add nsw i32 %i.w, %.val.i
  %i.y = and i32 %.val.i, -2147483641
  %or.cond.i.i = icmp ne i32 %i.y, 0
  %i.z = icmp sgt i32 %i.x, %.val96.i
  %or.cond107.i = select i1 %or.cond.i.i, i1 true, i1 %i.z
  %i.aa = icmp eq i32 %i.m, 0
  %or.cond108.i = select i1 %or.cond107.i, i1 true, i1 %i.aa
  br i1 %or.cond108.i, label %ff_dca_check_crc.exit.thread.i, label %ff_dca_check_crc.exit.i

ff_dca_check_crc.exit.i:                          ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val97.i, i64 77920
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !81
  %i.ad = zext nneg i32 %i.p to i64
  %i.ae = tail call i32 @av_crc(ptr noundef %i.ac, i32 noundef 65535, ptr noundef nonnull %i.h, i64 noundef %i.ad) #14
  %.not18.i.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not18.i.not.i, label %ff_dca_check_crc.exit.thread102.i, label %ff_dca_check_crc.exit.thread.i

ff_dca_check_crc.exit.thread.i:                   ; preds = %ff_dca_check_crc.exit.i, %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.s, i32 noundef 16, ptr noundef nonnull @.str.62) #13
  br label %parse_x96_coding_header.exit.thread

ff_dca_check_crc.exit.thread102.i:                ; preds = %ff_dca_check_crc.exit.i, %bb.d, %bb.c, %bb.b
  %i.af = phi i32 [ %i.o, %ff_dca_check_crc.exit.i ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %.val.i, %bb.b ] ; 4 uses
  %.0.i = phi i32 [ %i.p, %ff_dca_check_crc.exit.i ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ 0, %bb.b ]
  %i.ag = lshr i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !45
  %i.ak = icmp slt i32 %i.af, %.pre144.i
  %i.al = zext i1 %i.ak to i32
  %spec.select.i.i = add i32 %i.af, %i.al         ; 4 uses
  %i.am = zext i8 %i.aj to i32
  %i.an = and i32 %i.af, 7
  %i.ao = shl nuw nsw i32 %i.am, %i.an
  %i.ap = lshr i32 %i.ao, 7
  store i32 %spec.select.i.i, ptr %i.c, align 8, !tbaa !32
  %i.aq = and i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9728 ; 5 uses
  store i32 %i.aq, ptr %i.ar, align 16, !tbaa !297
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 9716
  %i.at = load i32, ptr %i.as, align 4, !tbaa !105
  %i.au = icmp slt i32 %i.at, 8
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %ff_dca_check_crc.exit.thread102.i
  %i.av = lshr i32 %spec.select.i.i, 3
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !45
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.ba = and i32 %spec.select.i.i, 7
  %i.bb = shl i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = lshr i32 %i.bb, 27                      ; 2 uses
  %i.bd = add i32 %spec.select.i.i, 5
  %i.be = tail call i32 @llvm.umin.i32(i32 %.pre144.i, i32 %i.bd)
  store i32 %i.be, ptr %i.c, align 16, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 9732
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !298
  %i.bg = icmp ugt i32 %i.bb, -536870913
  br i1 %i.bg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bh, i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef %i.bc) #13
  br label %parse_x96_coding_header.exit.thread

bb.h:                                             ; preds = %ff_dca_check_crc.exit.thread102.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 9732
  store i32 32, ptr %i.bi, align 4, !tbaa !298
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9724 ; 16 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.bl = icmp slt i32 %2, %i.bk
  br i1 %i.bl, label %.lr.ph.i, label %.preheader112.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = sext i32 %2 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next.i, %i.bp
  br i1 %i.bq, label %bb.k, label %.preheader112.i, !llvm.loop !262

.preheader112.i:                                  ; preds = %bb.j, %bb.i
  %i.br = phi i32 [ %i.bk, %bb.i ], [ %i.bo, %bb.j ] ; 3 uses
  %i.bs = icmp slt i32 %2, %i.br
  br i1 %i.bs, label %.lr.ph117.i, label %.preheader111.i

.lr.ph117.i:                                      ; preds = %.preheader112.i
  %i.bt = icmp ne i32 %2, 0
  %i.bu = add nsw i32 %2, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.bw = sext i32 %2 to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bx = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.by = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ca = lshr i32 %i.bx, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !45
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = and i32 %i.bx, 7
  %i.cg = shl i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 26
  %i.ci = add i32 %i.bx, 6
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.ci)
  store i32 %i.cj, ptr %i.c, align 16, !tbaa !32
  %i.ck = trunc nuw nsw i32 %i.ch to i8
  %i.cl = add nuw nsw i8 %i.ck, 1                 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv.i
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !45
  %i.cn = icmp ult i32 %i.cg, 2080374784
  br i1 %i.cn, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.co = zext nneg i8 %i.cl to i32
  %i.cp = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cp, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %i.co) #13
  br label %parse_x96_coding_header.exit.thread

.preheader111.i:                                  ; preds = %bb.o, %.preheader112.i
  %i.cq = phi i32 [ %i.br, %.preheader112.i ], [ %i.do, %bb.o ] ; 2 uses
  %i.cr = icmp slt i32 %2, %i.cq
  br i1 %i.cr, label %.lr.ph119.i, label %.preheader110.i

.lr.ph119.i:                                      ; preds = %.preheader111.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ct = sext i32 %2 to i64
  br label %bb.q

bb.m:                                             ; preds = %bb.o, %.lr.ph117.i
  %indvars.iv129.i = phi i64 [ %i.bw, %.lr.ph117.i ], [ %indvars.iv.next130.i, %bb.o ] ; 2 uses
  %i.cu = phi i32 [ %i.br, %.lr.ph117.i ], [ %i.do, %bb.o ]
  %i.cv = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.cw = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.cy = lshr i32 %i.cv, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 1, !tbaa !45
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = and i32 %i.cv, 7
  %i.de = shl i32 %i.dc, %i.dd
  %i.df = lshr i32 %i.de, 29                      ; 2 uses
  %i.dg = add i32 %i.cv, 3
  %i.dh = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.dg)
  store i32 %i.dh, ptr %i.c, align 16, !tbaa !32
  %i.di = icmp ne i32 %i.df, 0
  %or.cond.i = and i1 %i.bt, %i.di
  %i.dj = select i1 %or.cond.i, i32 %i.bu, i32 0
  %.084.i = add nsw i32 %i.dj, %i.df              ; 2 uses
  %i.dk = icmp sgt i32 %.084.i, %i.cu
  br i1 %i.dk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dl = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dl, i32 noundef 16, ptr noundef nonnull @.str.65) #13
  br label %parse_x96_coding_header.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.dm = trunc i32 %.084.i to i8
  %i.dn = getelementptr inbounds i8, ptr %i.bv, i64 %indvars.iv129.i
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !45
  %indvars.iv.next130.i = add nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.do = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next130.i, %i.dp
  br i1 %i.dq, label %bb.m, label %.preheader111.i, !llvm.loop !263

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.dr = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next133.i, %i.ds
  br i1 %i.dt, label %bb.q, label %.preheader110.i, !llvm.loop !264

.preheader110.i:                                  ; preds = %bb.p, %.preheader111.i
  %i.du = phi i32 [ %i.cq, %.preheader111.i ], [ %i.dr, %bb.p ] ; 2 uses
  %i.dv = icmp slt i32 %2, %i.du
  br i1 %i.dv, label %.lr.ph121.i, label %.preheader109.i

.lr.ph121.i:                                      ; preds = %.preheader110.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.dx = sext i32 %2 to i64
  br label %bb.s

bb.q:                                             ; preds = %bb.p, %.lr.ph119.i
  %indvars.iv132.i = phi i64 [ %i.ct, %.lr.ph119.i ], [ %indvars.iv.next133.i, %bb.p ] ; 2 uses
  %i.dy = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.dz = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.eb = lshr i32 %i.dy, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !45
  %i.ef = tail call i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = and i32 %i.dy, 7
  %i.eh = shl i32 %i.ef, %i.eg                    ; 2 uses
  %i.ei = lshr i32 %i.eh, 29
  %i.ej = add i32 %i.dy, 3
  %i.ek = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 %i.ej)
  store i32 %i.ek, ptr %i.c, align 16, !tbaa !32
  %i.el = trunc nuw nsw i32 %i.ei to i8
  %i.em = getelementptr inbounds i8, ptr %i.cs, i64 %indvars.iv132.i
  store i8 %i.el, ptr %i.em, align 1, !tbaa !45
  %i.en = icmp ugt i32 %i.eh, -1073741825
  br i1 %i.en, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.eo = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.eo, i32 noundef 16, ptr noundef nonnull @.str.66) #13
  br label %parse_x96_coding_header.exit.thread

.preheader109.i:                                  ; preds = %bb.s, %.preheader110.i
  %i.ep = phi i32 [ %i.du, %.preheader110.i ], [ %i.fk, %bb.s ] ; 4 uses
  %i.eq = load i32, ptr %i.ar, align 16, !tbaa !297 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, -2
  br i1 %i.er, label %.preheader.lr.ph.i, label %._crit_edge125.i

.preheader.lr.ph.i:                               ; preds = %.preheader109.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.et = icmp slt i32 %2, %i.ep
  br i1 %i.et, label %.preheader.preheader.i, label %._crit_edge125.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.eu = sext i32 %2 to i64
  br label %.preheader.i

bb.s:                                             ; preds = %bb.s, %.lr.ph121.i
  %indvars.iv135.i = phi i64 [ %i.dx, %.lr.ph121.i ], [ %indvars.iv.next136.i, %bb.s ] ; 2 uses
  %i.ev = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.ew = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ey = lshr i32 %i.ev, 3
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 1, !tbaa !45
  %i.fc = tail call i32 @llvm.bswap.i32(i32 %i.fb)
  %i.fd = and i32 %i.ev, 7
  %i.fe = shl i32 %i.fc, %i.fd
  %i.ff = lshr i32 %i.fe, 29
  %i.fg = add i32 %i.ev, 3
  %i.fh = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 %i.fg)
  store i32 %i.fh, ptr %i.c, align 16, !tbaa !32
  %i.fi = trunc nuw nsw i32 %i.ff to i8
  %i.fj = getelementptr inbounds i8, ptr %i.dw, i64 %indvars.iv135.i
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !45
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %i.fk = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next136.i, %i.fl
  br i1 %i.fm, label %bb.s, label %.preheader109.i, !llvm.loop !265

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.fn = phi i32 [ %i.eq, %.preheader.preheader.i ], [ %i.gl, %._crit_edge.i ]
  %i.fo = phi i32 [ %i.ep, %.preheader.preheader.i ], [ %i.gm, %._crit_edge.i ] ; 2 uses
  %indvars.iv141.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next142.i, %._crit_edge.i ] ; 4 uses
  %i.fp = icmp slt i32 %2, %i.fo
  br i1 %i.fp, label %.lr.ph123.i, label %._crit_edge.i

.lr.ph123.i:                                      ; preds = %.preheader.i
  %i.fq = getelementptr inbounds nuw i8, ptr @ff_dca_quant_index_sel_nbits, i64 %indvars.iv141.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !45
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = sub nsw i32 32, %i.fs
  %invariant.gep.i = getelementptr i8, ptr %i.es, i64 %indvars.iv141.i
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph123.i
  %indvars.iv138.i = phi i64 [ %i.eu, %.lr.ph123.i ], [ %indvars.iv.next139.i, %bb.t ] ; 2 uses
  %i.fu = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.fv = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.fx = lshr i32 %i.fu, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 1, !tbaa !45
  %i.gb = tail call i32 @llvm.bswap.i32(i32 %i.ga)
  %i.gc = and i32 %i.fu, 7
  %i.gd = shl i32 %i.gb, %i.gc
  %i.ge = lshr i32 %i.gd, %i.ft
  %i.gf = add i32 %i.fu, %i.fs
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 %i.gf)
  store i32 %i.gg, ptr %i.c, align 16, !tbaa !32
  %i.gh = trunc i32 %i.ge to i8
  %gep.i = getelementptr [10 x i8], ptr %invariant.gep.i, i64 %indvars.iv138.i
  store i8 %i.gh, ptr %gep.i, align 1, !tbaa !45
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %i.gi = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next139.i, %i.gj
  br i1 %i.gk, label %bb.t, label %._crit_edge.loopexit.i, !llvm.loop !266

._crit_edge.loopexit.i:                           ; preds = %bb.t
  %.pre145.i = load i32, ptr %i.ar, align 16, !tbaa !297
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.gl = phi i32 [ %.pre145.i, %._crit_edge.loopexit.i ], [ %i.fn, %.preheader.i ] ; 2 uses
  %i.gm = phi i32 [ %i.gi, %._crit_edge.loopexit.i ], [ %i.fo, %.preheader.i ] ; 2 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %i.gn = shl nsw i32 %i.gl, 2
  %i.go = add nsw i32 %i.gn, 5
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv141.i, %i.gp
  br i1 %i.gq, label %.preheader.i, label %._crit_edge125.i, !llvm.loop !267

._crit_edge125.i:                                 ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.preheader109.i
  %i.gr = phi i32 [ %i.ep, %.preheader109.i ], [ %i.ep, %.preheader.lr.ph.i ], [ %i.gm, %._crit_edge.i ] ; 3 uses
  br i1 %.not.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %._crit_edge125.i
  %i.gs = shl nuw nsw i32 %.0.i, 3
  %i.gt = add nsw i32 %i.gs, %.val.i              ; 4 uses
  %.val8.i.i = load i32, ptr %i.c, align 16, !tbaa !32
  %i.gu = icmp slt i32 %i.gt, %.val8.i.i
  br i1 %i.gu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gv = load i32, ptr %i.d, align 4, !tbaa !30
  %i.gw = icmp sgt i32 %i.gt, %i.gv
  br i1 %i.gw, label %bb.w, label %ff_dca_seek_bits.exit.i

ff_dca_seek_bits.exit.i:                          ; preds = %bb.v
  %i.gx = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.gy = icmp slt i32 %i.gt, 0
  %i.gz = tail call i32 @llvm.smin.i32(i32 %i.gt, i32 %i.gx)
  %.0.i.i.v.i.i = select i1 %i.gy, i32 0, i32 %i.gz
  br label %parse_x96_coding_header.exit.sink.split

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ha = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ha, i32 noundef 16, ptr noundef nonnull @.str.67) #13
  br label %parse_x96_coding_header.exit.thread

bb.x:                                             ; preds = %._crit_edge125.i
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !38
  %.not93.i = icmp eq i32 %i.hc, 0
  br i1 %.not93.i, label %parse_x96_coding_header.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hd = load i32, ptr %i.c, align 16, !tbaa !32
  %i.he = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.hf = add i32 %i.hd, 16
  %i.hg = tail call i32 @llvm.umin.i32(i32 %i.he, i32 %i.hf)
  br label %parse_x96_coding_header.exit.sink.split

parse_x96_coding_header.exit.sink.split:          ; preds = %ff_dca_seek_bits.exit.i, %bb.y
  %.sink = phi i32 [ %i.hg, %bb.y ], [ %.0.i.i.v.i.i, %ff_dca_seek_bits.exit.i ]
  store i32 %.sink, ptr %i.c, align 16, !tbaa !32
  br label %parse_x96_coding_header.exit

parse_x96_coding_header.exit:                     ; preds = %parse_x96_coding_header.exit.sink.split, %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !83
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %parse_x96_coding_header.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 9732 ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 11 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.hn = sext i32 %2 to i64                      ; 10 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 158 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 7720 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 7728 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 9760 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 9736 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 45744
  br label %bb.z

.preheader:                                       ; preds = %parse_x96_subframe_audio.exit, %parse_x96_coding_header.exit
  %i.ie = phi i32 [ %i.gr, %parse_x96_coding_header.exit ], [ %i.ajz, %parse_x96_subframe_audio.exit ]
  %i.if = icmp slt i32 %2, %i.ie
  br i1 %i.if, label %.lr.ph133, label %parse_x96_coding_header.exit.thread

.lr.ph133:                                        ; preds = %.preheader
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 9760
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 9732
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.il = sext i32 %2 to i64
  br label %bb.bv

bb.z:                                             ; preds = %.lr.ph, %parse_x96_subframe_audio.exit
  %i.im = phi i32 [ %i.gr, %.lr.ph ], [ %i.ajz, %parse_x96_subframe_audio.exit ] ; 2 uses
  %i.in = phi i32 [ %i.gr, %.lr.ph ], [ %i.aka, %parse_x96_subframe_audio.exit ] ; 3 uses
  %indvars.iv172 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next173, %parse_x96_subframe_audio.exit ] ; 2 uses
  %.086129 = phi i32 [ 0, %.lr.ph ], [ %.0135.lcssa.i, %parse_x96_subframe_audio.exit ] ; 6 uses
  %.val.i58 = load i32, ptr %i.c, align 16, !tbaa !32
  %.val146.i = load i32, ptr %i.d, align 4, !tbaa !30
  %i.io = icmp slt i32 %.val146.i, %.val.i58
  br i1 %i.io, label %parse_x96_coding_header.exit.thread, label %.preheader173.i

.preheader173.i:                                  ; preds = %bb.z
  %i.ip = icmp slt i32 %2, %i.in
  br i1 %i.ip, label %.lr.ph179.i, label %.preheader172.i

.preheader172.i:                                  ; preds = %._crit_edge.i62, %.preheader173.i
  %i.iq = phi i32 [ %i.im, %.preheader173.i ], [ %i.jw, %._crit_edge.i62 ]
  %i.ir = phi i32 [ %i.in, %.preheader173.i ], [ %i.jx, %._crit_edge.i62 ] ; 3 uses
  %i.is = icmp slt i32 %2, %i.ir
  br i1 %i.is, label %.lr.ph185.i, label %.preheader170.i

.lr.ph185.i:                                      ; preds = %.preheader172.i
  %i.it = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %wide.trip.count.i = sext i32 %i.ir to i64
  br label %bb.ab

.lr.ph179.i:                                      ; preds = %.preheader173.i, %._crit_edge.i62
  %i.iv = phi i32 [ %i.jw, %._crit_edge.i62 ], [ %i.im, %.preheader173.i ]
  %i.iw = phi i32 [ %i.jx, %._crit_edge.i62 ], [ %i.in, %.preheader173.i ]
  %indvars.iv229.i = phi i64 [ %indvars.iv.next230.i, %._crit_edge.i62 ], [ %i.hn, %.preheader173.i ] ; 3 uses
  %i.ix = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv229.i ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !45
  %i.ja = sext i8 %i.iz to i32
  %i.jb = icmp slt i32 %i.ix, %i.ja
  br i1 %i.jb, label %.lr.ph.i63, label %._crit_edge.i62

.lr.ph.i63:                                       ; preds = %.lr.ph179.i
  %i.jc = getelementptr inbounds [64 x i8], ptr %i.hm, i64 %indvars.iv229.i
  %i.jd = sext i32 %i.ix to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i63
  %indvars.iv.i64 = phi i64 [ %i.jd, %.lr.ph.i63 ], [ %indvars.iv.next.i66, %bb.aa ] ; 2 uses
  %i.je = load i32, ptr %i.c, align 16, !tbaa !32 ; 4 uses
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.jg = lshr i32 %i.je, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !45
  %i.jk = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.jl = icmp slt i32 %i.je, %i.jk
  %i.jm = zext i1 %i.jl to i32
  %spec.select.i.i65 = add i32 %i.je, %i.jm
  %i.jn = zext i8 %i.jj to i32
  %i.jo = and i32 %i.je, 7
  %i.jp = shl nuw nsw i32 %i.jn, %i.jo
  store i32 %spec.select.i.i65, ptr %i.c, align 16, !tbaa !32
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = lshr i8 %i.jq, 7
  %i.js = getelementptr inbounds i8, ptr %i.jc, i64 %indvars.iv.i64
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !45
  %indvars.iv.next.i66 = add nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %i.jt = load i8, ptr %i.iy, align 1, !tbaa !45
  %i.ju = sext i8 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next.i66, %i.ju
  br i1 %i.jv, label %bb.aa, label %._crit_edge.loopexit.i67, !llvm.loop !268

._crit_edge.loopexit.i67:                         ; preds = %bb.aa
  %.pre.i68 = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.loopexit.i67, %.lr.ph179.i
  %i.jw = phi i32 [ %.pre.i68, %._crit_edge.loopexit.i67 ], [ %i.iv, %.lr.ph179.i ] ; 2 uses
  %i.jx = phi i32 [ %.pre.i68, %._crit_edge.loopexit.i67 ], [ %i.iw, %.lr.ph179.i ] ; 3 uses
  %indvars.iv.next230.i = add nsw i64 %indvars.iv229.i, 1 ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp slt i64 %indvars.iv.next230.i, %i.jy
  br i1 %i.jz, label %.lr.ph179.i, label %.preheader172.i, !llvm.loop !269

bb.ab:                                            ; preds = %._crit_edge183.i, %.lr.ph185.i
  %indvars.iv235.i = phi i64 [ %i.hn, %.lr.ph185.i ], [ %indvars.iv.next236.i, %._crit_edge183.i ] ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv235.i ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !45  ; 2 uses
  %i.kc = sext i8 %i.kb to i32
  %i.kd = icmp slt i32 %i.it, %i.kc
  br i1 %i.kd, label %.lr.ph182.i, label %._crit_edge183.i

.lr.ph182.i:                                      ; preds = %bb.ab
  %i.ke = getelementptr inbounds [64 x i8], ptr %i.hm, i64 %indvars.iv235.i
  %i.kf = getelementptr inbounds [128 x i8], ptr %i.ho, i64 %indvars.iv235.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph182.i
  %i.kg = phi i8 [ %i.kb, %.lr.ph182.i ], [ %i.ky, %bb.ae ]
  %indvars.iv232.i = phi i64 [ %i.iu, %.lr.ph182.i ], [ %indvars.iv.next233.i, %bb.ae ] ; 3 uses
  %i.kh = getelementptr inbounds i8, ptr %i.ke, i64 %indvars.iv232.i
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !45
  %.not145.i = icmp eq i8 %i.ki, 0
  br i1 %.not145.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kj = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.kk = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.km = lshr i32 %i.kj, 3
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 1, !tbaa !45
  %i.kq = tail call i32 @llvm.bswap.i32(i32 %i.kp)
  %i.kr = and i32 %i.kj, 7
  %i.ks = shl i32 %i.kq, %i.kr
  %i.kt = lshr i32 %i.ks, 20
  %i.ku = add i32 %i.kj, 12
  %i.kv = tail call i32 @llvm.umin.i32(i32 %i.kk, i32 %i.ku)
  store i32 %i.kv, ptr %i.c, align 16, !tbaa !32
  %i.kw = trunc nuw nsw i32 %i.kt to i16
  %i.kx = getelementptr inbounds [2 x i8], ptr %i.kf, i64 %indvars.iv232.i
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !72
  %.pre262.i = load i8, ptr %i.ka, align 1, !tbaa !45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ky = phi i8 [ %i.kg, %bb.ac ], [ %.pre262.i, %bb.ad ] ; 2 uses
  %indvars.iv.next233.i = add nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %i.kz = sext i8 %i.ky to i64
  %i.la = icmp slt i64 %indvars.iv.next233.i, %i.kz
  br i1 %i.la, label %bb.ac, label %._crit_edge183.i, !llvm.loop !270

._crit_edge183.i:                                 ; preds = %bb.ae, %bb.ab
  %indvars.iv.next236.i = add nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next236.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader171.i, label %bb.ab, !llvm.loop !271

.preheader170.i:                                  ; preds = %.critedge.i, %.preheader172.i
  %i.lb = phi i32 [ %i.iq, %.preheader172.i ], [ %i.os, %.critedge.i ]
  %i.lc = phi i32 [ %i.ir, %.preheader172.i ], [ %i.os, %.critedge.i ] ; 2 uses
  %i.ld = icmp slt i32 %2, %i.lc
  br i1 %i.ld, label %.lr.ph200.i, label %.preheader168.i

.preheader171.i:                                  ; preds = %._crit_edge183.i, %.critedge.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %.critedge.i ], [ %i.hn, %._crit_edge183.i ] ; 4 uses
  %i.le = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv244.i ; 3 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !45
  %i.lh = sext i8 %i.lg to i32
  %.not144186.i = icmp slt i32 %i.le, %i.lh
  br i1 %.not144186.i, label %.lr.ph190.i, label %.critedge.i

.lr.ph190.i:                                      ; preds = %.preheader171.i
  %i.li = getelementptr inbounds i8, ptr %i.hp, i64 %indvars.iv244.i
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !45  ; 2 uses
  %i.lk = icmp slt i8 %i.lj, 7
  %i.ll = sext i8 %i.lj to i64
  %i.lm = getelementptr inbounds [64 x i8], ptr %i.hq, i64 %indvars.iv244.i ; 2 uses
  %i.ln = sext i32 %i.le to i64                   ; 2 uses
  br i1 %i.lk, label %.lr.ph190.split.us.i, label %.lr.ph190.split.i

.lr.ph190.split.us.i:                             ; preds = %.lr.ph190.i, %bb.ah
  %indvars.iv241.i = phi i64 [ %indvars.iv.next242.i, %bb.ah ], [ %i.ln, %.lr.ph190.i ] ; 2 uses
  %.0188.us.i = phi i32 [ %i.nk, %bb.ah ], [ 0, %.lr.ph190.i ]
  %i.lo = load i32, ptr %i.ar, align 16, !tbaa !297 ; 2 uses
  %i.lp = shl nsw i32 %i.lo, 1
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr [168 x i8], ptr @ff_dca_vlc_quant_index, i64 %i.lq
  %i.ls = getelementptr i8, ptr %i.lr, i64 840
  %i.lt = getelementptr inbounds [24 x i8], ptr %i.ls, i64 %i.ll ; 2 uses
  %.val147.us.i = load i32, ptr %i.lt, align 8, !tbaa !95 ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  %.val148.us.i = load ptr, ptr %i.lu, align 8, !tbaa !96 ; 2 uses
  %i.lv = load i32, ptr %i.c, align 16, !tbaa !32 ; 4 uses
  %i.lw = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31 ; 2 uses
  %i.lx = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ly = lshr i32 %i.lv, 3
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 1, !tbaa !45
  %i.mc = tail call i32 @llvm.bswap.i32(i32 %i.mb)
  %i.md = and i32 %i.lv, 7
  %i.me = shl i32 %i.mc, %i.md
  %i.mf = sub nsw i32 32, %.val147.us.i
  %i.mg = lshr i32 %i.me, %i.mf
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.val148.us.i, i64 %i.mh ; 2 uses
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !45
  %i.mk = sext i16 %i.mj to i32                   ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !45 ; 2 uses
  %i.mn = sext i16 %i.mm to i32                   ; 2 uses
  %i.mo = icmp slt i16 %i.mm, 0
  br i1 %i.mo, label %bb.af, label %dca_get_vlc.exit.us.i

bb.af:                                            ; preds = %.lr.ph190.split.us.i
  %i.mp = add i32 %i.lv, %.val147.us.i
  %i.mq = tail call i32 @llvm.umin.i32(i32 %i.lw, i32 %i.mp) ; 3 uses
  %i.mr = lshr i32 %i.mq, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 1, !tbaa !45
  %i.mv = tail call i32 @llvm.bswap.i32(i32 %i.mu)
  %i.mw = and i32 %i.mq, 7
  %i.mx = shl i32 %i.mv, %i.mw
  %i.my = add nsw i32 %i.mn, 32
  %i.mz = lshr i32 %i.mx, %i.my
  %i.na = add i32 %i.mz, %i.mk
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.val148.us.i, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !45
  %i.nf = sext i16 %i.ne to i32
  %i.ng = load i16, ptr %i.nc, align 2, !tbaa !45
  %i.nh = sext i16 %i.ng to i32
  br label %dca_get_vlc.exit.us.i

dca_get_vlc.exit.us.i:                            ; preds = %bb.af, %.lr.ph190.split.us.i
  %.167.i.i.us.i = phi i32 [ %i.nh, %bb.af ], [ %i.mk, %.lr.ph190.split.us.i ]
  %.165.i.i.us.i = phi i32 [ %i.mq, %bb.af ], [ %i.lv, %.lr.ph190.split.us.i ]
  %.1.i.i.us.i = phi i32 [ %i.nf, %bb.af ], [ %i.mn, %.lr.ph190.split.us.i ]
  %i.ni = add i32 %.1.i.i.us.i, %.165.i.i.us.i
  %i.nj = tail call i32 @llvm.umin.i32(i32 %i.lw, i32 %i.ni)
  store i32 %i.nj, ptr %i.c, align 16, !tbaa !32
  %i.nk = add nsw i32 %.167.i.i.us.i, %.0188.us.i ; 4 uses
  %i.nl = icmp slt i32 %i.nk, 0
  br i1 %i.nl, label %.split.us.i, label %bb.ag

bb.ag:                                            ; preds = %dca_get_vlc.exit.us.i
  %i.nm = shl nsw i32 %i.lo, 3
  %i.nn = or disjoint i32 %i.nm, 7
  %i.no = icmp sgt i32 %i.nk, %i.nn
  br i1 %i.no, label %.split.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.np = trunc i32 %i.nk to i8
  %i.nq = getelementptr inbounds i8, ptr %i.lm, i64 %indvars.iv241.i
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !45
  %indvars.iv.next242.i = add nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %i.nr = load i8, ptr %i.lf, align 1, !tbaa !45
  %i.ns = sext i8 %i.nr to i64
  %.not144.us.i = icmp slt i64 %indvars.iv.next242.i, %i.ns
  br i1 %.not144.us.i, label %.lr.ph190.split.us.i, label %.critedge.i, !llvm.loop !272

.lr.ph190.split.i:                                ; preds = %.lr.ph190.i, %bb.aj
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %bb.aj ], [ %i.ln, %.lr.ph190.i ] ; 2 uses
  %i.nt = load i32, ptr %i.ar, align 16, !tbaa !297 ; 3 uses
  %i.nu = add nsw i32 %i.nt, 3
  %i.nv = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.nw = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.nx = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ny = lshr i32 %i.nv, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 1, !tbaa !45
  %i.oc = tail call i32 @llvm.bswap.i32(i32 %i.ob)
  %i.od = and i32 %i.nv, 7
  %i.oe = shl i32 %i.oc, %i.od
  %i.of = sub nsw i32 29, %i.nt
  %i.og = lshr i32 %i.oe, %i.of                   ; 3 uses
  %i.oh = add i32 %i.nu, %i.nv
  %i.oi = tail call i32 @llvm.umin.i32(i32 %i.nw, i32 %i.oh)
  store i32 %i.oi, ptr %i.c, align 16, !tbaa !32
  %i.oj = icmp slt i32 %i.og, 0
  br i1 %i.oj, label %.split.us.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph190.split.i
  %i.ok = shl nsw i32 %i.nt, 3
  %i.ol = or disjoint i32 %i.ok, 7
  %i.om = icmp sgt i32 %i.og, %i.ol
  br i1 %i.om, label %.split.us.i, label %bb.aj

.split.us.i:                                      ; preds = %bb.ai, %.lr.ph190.split.i, %bb.ag, %dca_get_vlc.exit.us.i
  %i.on = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.on, i32 noundef 16, ptr noundef nonnull @.str.68) #13
  br label %parse_x96_coding_header.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.oo = trunc i32 %i.og to i8
  %i.op = getelementptr inbounds i8, ptr %i.lm, i64 %indvars.iv238.i
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !45
  %indvars.iv.next239.i = add nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %i.oq = load i8, ptr %i.lf, align 1, !tbaa !45
  %i.or = sext i8 %i.oq to i64
  %.not144.i = icmp slt i64 %indvars.iv.next239.i, %i.or
  br i1 %.not144.i, label %.lr.ph190.split.i, label %.critedge.i, !llvm.loop !272

.critedge.i:                                      ; preds = %bb.aj, %bb.ah, %.preheader171.i
  %indvars.iv.next245.i = add nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %i.os = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  %i.ot = sext i32 %i.os to i64
  %i.ou = icmp slt i64 %indvars.iv.next245.i, %i.ot
  br i1 %i.ou, label %.preheader171.i, label %.preheader170.i, !llvm.loop !273

.preheader168.i:                                  ; preds = %._crit_edge198.i, %.preheader170.i
  %i.ov = phi i32 [ %i.lb, %.preheader170.i ], [ %i.sr, %._crit_edge198.i ] ; 2 uses
  %i.ow = phi i32 [ %i.lc, %.preheader170.i ], [ %i.sr, %._crit_edge198.i ] ; 2 uses
  %i.ox = icmp slt i32 %2, %i.ow
  br i1 %i.ox, label %.lr.ph202.i, label %._crit_edge210.i

.lr.ph200.i:                                      ; preds = %.preheader170.i, %._crit_edge198.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %._crit_edge198.i ], [ %i.hn, %.preheader170.i ] ; 4 uses
  %i.oy = load i32, ptr %i.hk, align 4, !tbaa !298 ; 3 uses
  %i.oz = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv247.i ; 3 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !45
  %i.pb = sext i8 %i.pa to i32
  %.not143193.i = icmp slt i32 %i.oy, %i.pb
  br i1 %.not143193.i, label %.lr.ph197.i, label %._crit_edge198.i

.lr.ph197.i:                                      ; preds = %.lr.ph200.i
  %i.pc = getelementptr inbounds i8, ptr %i.hr, i64 %indvars.iv247.i
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !45  ; 4 uses
  %i.pe = sext i8 %i.pd to i32                    ; 2 uses
  %i.pf = icmp sgt i8 %i.pd, 5                    ; 2 uses
  %ff_dca_scale_factor_quant7.ff_dca_scale_factor_quant6.i.i = select i1 %i.pf, ptr @ff_dca_scale_factor_quant7, ptr @ff_dca_scale_factor_quant6 ; 2 uses
  %..i.i = select i1 %i.pf, i32 128, i32 64       ; 2 uses
  %i.pg = icmp slt i8 %i.pd, 5
  %i.ph = add nuw nsw i32 %i.pe, 1
  %i.pi = sub nsw i32 31, %i.pe
  %i.pj = getelementptr inbounds [256 x i8], ptr %i.hs, i64 %indvars.iv247.i ; 2 uses
  br i1 %i.pg, label %.lr.ph197.split.us.i, label %.lr.ph197.split.i

.lr.ph197.split.us.i:                             ; preds = %.lr.ph197.i
  %i.pk = sext i8 %i.pd to i64
  %i.pl = getelementptr inbounds [24 x i8], ptr @ff_dca_vlc_scale_factor, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !96 ; 2 uses
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph197.split.us.i
  %.3123195.us.i = phi i32 [ %i.oy, %.lr.ph197.split.us.i ], [ %i.rn, %bb.am ] ; 3 uses
  %.0156194.us.i = phi i32 [ 0, %.lr.ph197.split.us.i ], [ %i.rc, %bb.am ]
  %i.pp = load i32, ptr %i.c, align 16, !tbaa !32 ; 4 uses
  %i.pq = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31 ; 2 uses
  %i.pr = lshr i32 %i.pp, 3
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 1, !tbaa !45
  %i.pv = tail call i32 @llvm.bswap.i32(i32 %i.pu)
  %i.pw = and i32 %i.pp, 7
  %i.px = shl i32 %i.pv, %i.pw
  %i.py = lshr i32 %i.px, 23
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pz ; 2 uses
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !45
  %i.qc = sext i16 %i.qb to i32                   ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 2
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !45 ; 2 uses
  %i.qf = sext i16 %i.qe to i32                   ; 2 uses
  %i.qg = icmp slt i16 %i.qe, 0
  br i1 %i.qg, label %bb.al, label %get_vlc2.exit.i.us.i

bb.al:                                            ; preds = %bb.ak
  %i.qh = add i32 %i.pp, 9
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.pq, i32 %i.qh) ; 3 uses
  %i.qj = lshr i32 %i.qi, 3
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.qk
  %i.qm = load i32, ptr %i.ql, align 1, !tbaa !45
  %i.qn = tail call i32 @llvm.bswap.i32(i32 %i.qm)
  %i.qo = and i32 %i.qi, 7
  %i.qp = shl i32 %i.qn, %i.qo
  %i.qq = add nsw i32 %i.qf, 32
  %i.qr = lshr i32 %i.qp, %i.qq
  %i.qs = add i32 %i.qr, %i.qc
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.qt ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !45
  %i.qx = sext i16 %i.qw to i32
  %i.qy = load i16, ptr %i.qu, align 2, !tbaa !45
  %i.qz = sext i16 %i.qy to i32
  br label %get_vlc2.exit.i.us.i

get_vlc2.exit.i.us.i:                             ; preds = %bb.al, %bb.ak
  %.167.i.i149.us.i = phi i32 [ %i.qz, %bb.al ], [ %i.qc, %bb.ak ]
  %.165.i.i150.us.i = phi i32 [ %i.qi, %bb.al ], [ %i.pp, %bb.ak ]
  %.1.i.i151.us.i = phi i32 [ %i.qx, %bb.al ], [ %i.qf, %bb.ak ]
  %i.ra = add i32 %.1.i.i151.us.i, %.165.i.i150.us.i
  %i.rb = tail call i32 @llvm.umin.i32(i32 %i.pq, i32 %i.ra)
  store i32 %i.rb, ptr %i.c, align 16, !tbaa !32
  %i.rc = add nsw i32 %.167.i.i149.us.i, %.0156194.us.i ; 3 uses
  %.not.i.us.i = icmp ult i32 %i.rc, %..i.i
  br i1 %.not.i.us.i, label %parse_scale.exit.us.i, label %parse_scale.exit.thread.i

parse_scale.exit.us.i:                            ; preds = %get_vlc2.exit.i.us.i
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_scale_factor_quant7.ff_dca_scale_factor_quant6.i.i, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !34 ; 3 uses
  %i.rg = icmp slt i32 %i.rf, 0
  br i1 %i.rg, label %parse_x96_coding_header.exit.thread, label %bb.am

bb.am:                                            ; preds = %parse_scale.exit.us.i
  %i.rh = ashr i32 %.3123195.us.i, 1
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.ri
  %i.rk = and i32 %.3123195.us.i, 1
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.rl
  store i32 %i.rf, ptr %i.rm, align 4, !tbaa !34
  %i.rn = add nsw i32 %.3123195.us.i, 1           ; 2 uses
  %i.ro = load i8, ptr %i.oz, align 1, !tbaa !45
  %i.rp = sext i8 %i.ro to i32
  %.not143.us.i = icmp slt i32 %i.rn, %i.rp
  br i1 %.not143.us.i, label %bb.ak, label %._crit_edge198.i, !llvm.loop !274

.lr.ph197.split.i:                                ; preds = %.lr.ph197.i
  %i.rq = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph197.split.i
  %.3123195.i = phi i32 [ %i.oy, %.lr.ph197.split.i ], [ %i.so, %bb.ao ] ; 3 uses
  %i.rr = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.rs = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.rt = lshr i32 %i.rr, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 1, !tbaa !45
  %i.rx = tail call i32 @llvm.bswap.i32(i32 %i.rw)
  %i.ry = and i32 %i.rr, 7
  %i.rz = shl i32 %i.rx, %i.ry
  %i.sa = lshr i32 %i.rz, %i.pi                   ; 2 uses
  %i.sb = add i32 %i.ph, %i.rr
  %i.sc = tail call i32 @llvm.umin.i32(i32 %i.rs, i32 %i.sb)
  store i32 %i.sc, ptr %i.c, align 16, !tbaa !32
  %.not.i.i61 = icmp ult i32 %i.sa, %..i.i
  br i1 %.not.i.i61, label %parse_scale.exit.i, label %parse_scale.exit.thread.i

parse_scale.exit.thread.i:                        ; preds = %bb.an, %get_vlc2.exit.i.us.i
  %i.sd = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sd, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %parse_x96_coding_header.exit.thread

parse_scale.exit.i:                               ; preds = %bb.an
  %i.se = zext nneg i32 %i.sa to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_scale_factor_quant7.ff_dca_scale_factor_quant6.i.i, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !34 ; 3 uses
  %i.sh = icmp slt i32 %i.sg, 0
  br i1 %i.sh, label %parse_x96_coding_header.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %parse_scale.exit.i
  %i.si = ashr i32 %.3123195.i, 1
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.sj
  %i.sl = and i32 %.3123195.i, 1
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.sm
  store i32 %i.sg, ptr %i.sn, align 4, !tbaa !34
  %i.so = add nsw i32 %.3123195.i, 1              ; 2 uses
  %i.sp = load i8, ptr %i.oz, align 1, !tbaa !45
  %i.sq = sext i8 %i.sp to i32
  %.not143.i = icmp slt i32 %i.so, %i.sq
  br i1 %.not143.i, label %bb.an, label %._crit_edge198.i, !llvm.loop !274

._crit_edge198.i:                                 ; preds = %bb.ao, %bb.am, %.lr.ph200.i
  %indvars.iv.next248.i = add nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.sr = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = icmp slt i64 %indvars.iv.next248.i, %i.ss
  br i1 %i.st, label %.lr.ph200.i, label %.preheader168.i, !llvm.loop !275

.preheader.i60:                                   ; preds = %bb.ar
  %i.su = icmp slt i32 %2, %i.tr
  br i1 %i.su, label %.lr.ph209.i, label %._crit_edge210.i

.lr.ph202.i:                                      ; preds = %.preheader168.i, %bb.ar
  %i.sv = phi i32 [ %i.tq, %bb.ar ], [ %i.ov, %.preheader168.i ]
  %i.sw = phi i32 [ %i.tr, %bb.ar ], [ %i.ow, %.preheader168.i ]
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %bb.ar ], [ %i.hn, %.preheader168.i ] ; 3 uses
  %i.sx = getelementptr inbounds i8, ptr %i.ht, i64 %indvars.iv250.i
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !45
  %.not142.i = icmp eq i8 %i.sy, 0
  br i1 %.not142.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph202.i
  %i.sz = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.ta = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.tb = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.tc = lshr i32 %i.sz, 3
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 1, !tbaa !45
  %i.tg = tail call i32 @llvm.bswap.i32(i32 %i.tf)
  %i.th = and i32 %i.sz, 7
  %i.ti = shl i32 %i.tg, %i.th
  %i.tj = lshr i32 %i.ti, 29                      ; 2 uses
  %i.tk = add i32 %i.sz, 3
  %i.tl = tail call i32 @llvm.umin.i32(i32 %i.ta, i32 %i.tk)
  store i32 %i.tl, ptr %i.c, align 16, !tbaa !32
  %i.tm = trunc nuw nsw i32 %i.tj to i8
  %i.tn = getelementptr inbounds i8, ptr %i.hu, i64 %indvars.iv250.i
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !45
  %i.to = icmp eq i32 %i.tj, 7
  br i1 %i.to, label %bb.aq, label %._crit_edge263.i

._crit_edge263.i:                                 ; preds = %bb.ap
  %.pre264.i = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.tp = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tp, i32 noundef 16, ptr noundef nonnull @.str.69) #13
  br label %parse_x96_coding_header.exit.thread

bb.ar:                                            ; preds = %._crit_edge263.i, %.lr.ph202.i
  %i.tq = phi i32 [ %.pre264.i, %._crit_edge263.i ], [ %i.sv, %.lr.ph202.i ] ; 2 uses
  %i.tr = phi i32 [ %.pre264.i, %._crit_edge263.i ], [ %i.sw, %.lr.ph202.i ] ; 3 uses
  %indvars.iv.next251.i = add nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %i.ts = sext i32 %i.tr to i64
  %i.tt = icmp slt i64 %indvars.iv.next251.i, %i.ts
  br i1 %i.tt, label %.lr.ph202.i, label %.preheader.i60, !llvm.loop !276

.lr.ph209.i:                                      ; preds = %.preheader.i60, %.thread160.i
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %.thread160.i ], [ %i.hn, %.preheader.i60 ] ; 5 uses
  %i.tu = getelementptr inbounds i8, ptr %i.ht, i64 %indvars.iv259.i
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !45  ; 2 uses
  %i.tw = icmp sgt i8 %i.tv, 0
  br i1 %i.tw, label %bb.as, label %.thread160.i

bb.as:                                            ; preds = %.lr.ph209.i
  %i.tx = zext nneg i8 %i.tv to i64
  %i.ty = add nuw nsw i64 %i.tx, 4294967295
  %i.tz = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv259.i
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !45  ; 3 uses
  %i.ub = and i64 %i.ty, 4294967295
  %i.uc = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ub ; 3 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !45
  %.not141203.i = icmp slt i8 %i.ua, %i.ud
  br i1 %.not141203.i, label %.lr.ph206.i, label %.thread160.i

.lr.ph206.i:                                      ; preds = %bb.as
  %i.ue = getelementptr inbounds i8, ptr %i.hu, i64 %indvars.iv259.i
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !45  ; 3 uses
  %i.ug = sext i8 %i.uf to i32                    ; 2 uses
  %i.uh = icmp slt i8 %i.uf, 5
  %i.ui = add nuw nsw i32 %i.ug, 1
  %i.uj = sub nsw i32 31, %i.ug
  %i.uk = getelementptr inbounds [256 x i8], ptr %i.hv, i64 %indvars.iv259.i ; 2 uses
  br i1 %i.uh, label %.lr.ph206.split.us.i, label %.lr.ph206.split.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph206.i
  %i.ul = sext i8 %i.uf to i64
  %i.um = getelementptr inbounds [24 x i8], ptr @ff_dca_vlc_scale_factor, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !96 ; 2 uses
  %i.up = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.uq = sext i8 %i.ua to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %.lr.ph206.split.us.i
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %bb.av ], [ %i.uq, %.lr.ph206.split.us.i ] ; 2 uses
  %i.ur = load i32, ptr %i.c, align 16, !tbaa !32 ; 4 uses
  %i.us = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31 ; 2 uses
  %i.ut = lshr i32 %i.ur, 3
  %i.uu = zext nneg i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 1, !tbaa !45
  %i.ux = tail call i32 @llvm.bswap.i32(i32 %i.uw)
  %i.uy = and i32 %i.ur, 7
  %i.uz = shl i32 %i.ux, %i.uy
  %i.va = lshr i32 %i.uz, 23
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.vb ; 2 uses
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !45
  %i.ve = sext i16 %i.vd to i32                   ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !45 ; 2 uses
  %i.vh = sext i16 %i.vg to i32                   ; 2 uses
  %i.vi = icmp slt i16 %i.vg, 0
  br i1 %i.vi, label %bb.au, label %get_vlc2.exit.i152.us.i

bb.au:                                            ; preds = %bb.at
  %i.vj = add i32 %i.ur, 9
  %i.vk = tail call i32 @llvm.umin.i32(i32 %i.us, i32 %i.vj) ; 3 uses
  %i.vl = lshr i32 %i.vk, 3
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 1, !tbaa !45
  %i.vp = tail call i32 @llvm.bswap.i32(i32 %i.vo)
  %i.vq = and i32 %i.vk, 7
  %i.vr = shl i32 %i.vp, %i.vq
  %i.vs = add nsw i32 %i.vh, 32
  %i.vt = lshr i32 %i.vr, %i.vs
  %i.vu = add i32 %i.vt, %i.ve
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !45
  %i.vz = sext i16 %i.vy to i32
  %i.wa = load i16, ptr %i.vw, align 2, !tbaa !45
  %i.wb = sext i16 %i.wa to i32
  br label %get_vlc2.exit.i152.us.i

get_vlc2.exit.i152.us.i:                          ; preds = %bb.au, %bb.at
  %.167.i.i153.us.i = phi i32 [ %i.wb, %bb.au ], [ %i.ve, %bb.at ]
  %.165.i.i154.us.i = phi i32 [ %i.vk, %bb.au ], [ %i.ur, %bb.at ]
  %.1.i.i155.us.i = phi i32 [ %i.vz, %bb.au ], [ %i.vh, %bb.at ]
  %i.wc = add i32 %.1.i.i155.us.i, %.165.i.i154.us.i
  %i.wd = tail call i32 @llvm.umin.i32(i32 %i.us, i32 %i.wc)
  store i32 %i.wd, ptr %i.c, align 16, !tbaa !32
  %i.we = add nsw i32 %.167.i.i153.us.i, 64       ; 2 uses
  %i.wf = icmp ugt i32 %i.we, 128
  br i1 %i.wf, label %parse_joint_scale.exit.thread.i, label %parse_joint_scale.exit.us.i

parse_joint_scale.exit.us.i:                      ; preds = %get_vlc2.exit.i152.us.i
  %i.wg = zext nneg i32 %i.we to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_joint_scale_factors, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !34 ; 3 uses
  %i.wj = icmp slt i32 %i.wi, 0
  br i1 %i.wj, label %parse_x96_coding_header.exit.thread, label %bb.av

bb.av:                                            ; preds = %parse_joint_scale.exit.us.i
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %indvars.iv256.i
  store i32 %i.wi, ptr %i.wk, align 4, !tbaa !34
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %i.wl = load i8, ptr %i.uc, align 1, !tbaa !45
  %i.wm = sext i8 %i.wl to i64
  %.not141.us.i = icmp slt i64 %indvars.iv.next257.i, %i.wm
  br i1 %.not141.us.i, label %bb.at, label %.thread160.i, !llvm.loop !277

.lr.ph206.split.i:                                ; preds = %.lr.ph206.i
  %i.wn = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.wo = sext i8 %i.ua to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph206.split.i
  %indvars.iv253.i = phi i64 [ %i.wo, %.lr.ph206.split.i ], [ %indvars.iv.next254.i, %bb.ax ] ; 2 uses
  %i.wp = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.wq = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.wr = lshr i32 %i.wp, 3
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 1, !tbaa !45
  %i.wv = tail call i32 @llvm.bswap.i32(i32 %i.wu)
  %i.ww = and i32 %i.wp, 7
  %i.wx = shl i32 %i.wv, %i.ww
  %i.wy = lshr i32 %i.wx, %i.uj
  %i.wz = add i32 %i.ui, %i.wp
  %i.xa = tail call i32 @llvm.umin.i32(i32 %i.wq, i32 %i.wz)
  store i32 %i.xa, ptr %i.c, align 16, !tbaa !32
  %i.xb = add nsw i32 %i.wy, 64                   ; 2 uses
  %i.xc = icmp ugt i32 %i.xb, 128
  br i1 %i.xc, label %parse_joint_scale.exit.thread.i, label %parse_joint_scale.exit.i

parse_joint_scale.exit.thread.i:                  ; preds = %bb.aw, %get_vlc2.exit.i152.us.i
  %i.xd = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xd, i32 noundef 16, ptr noundef nonnull @.str.27) #13
  br label %parse_x96_coding_header.exit.thread

parse_joint_scale.exit.i:                         ; preds = %bb.aw
  %i.xe = zext nneg i32 %i.xb to i64
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_joint_scale_factors, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !34 ; 3 uses
  %i.xh = icmp slt i32 %i.xg, 0
  br i1 %i.xh, label %parse_x96_coding_header.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %parse_joint_scale.exit.i
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %indvars.iv253.i
  store i32 %i.xg, ptr %i.xi, align 4, !tbaa !34
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %i.xj = load i8, ptr %i.uc, align 1, !tbaa !45
  %i.xk = sext i8 %i.xj to i64
  %.not141.i = icmp slt i64 %indvars.iv.next254.i, %i.xk
  br i1 %.not141.i, label %bb.aw, label %.thread160.i, !llvm.loop !277

.thread160.i:                                     ; preds = %bb.ax, %bb.av, %bb.as, %.lr.ph209.i
  %indvars.iv.next260.i = add nsw i64 %indvars.iv259.i, 1 ; 2 uses
  %i.xl = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next260.i, %i.xm
  br i1 %i.xn, label %.lr.ph209.i, label %._crit_edge210.i, !llvm.loop !278

._crit_edge210.i:                                 ; preds = %.thread160.i, %.preheader.i60, %.preheader168.i
  %i.xo = phi i32 [ %i.ov, %.preheader168.i ], [ %i.tq, %.preheader.i60 ], [ %i.xl, %.thread160.i ] ; 5 uses
  %i.xp = load i32, ptr %i.hw, align 8, !tbaa !38
  %.not.i59 = icmp eq i32 %i.xp, 0
  br i1 %.not.i59, label %parse_x96_subframe_header.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge210.i
  %i.xq = load i32, ptr %i.c, align 16, !tbaa !32
  %i.xr = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.xs = add i32 %i.xq, 16
  %i.xt = tail call i32 @llvm.umin.i32(i32 %i.xr, i32 %i.xs)
  store i32 %i.xt, ptr %i.c, align 16, !tbaa !32
  br label %parse_x96_subframe_header.exit

parse_x96_subframe_header.exit:                   ; preds = %bb.ay, %._crit_edge210.i
  %i.xu = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv172 ; 5 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !45
  %.fr201.i = freeze i8 %i.xv                     ; 4 uses
  %i.xw = sext i8 %.fr201.i to i32
  %i.xx = shl nsw i32 %i.xw, 3                    ; 7 uses
  %i.xy = add nsw i32 %i.xx, %.086129
  %i.xz = load i32, ptr %i.hy, align 4, !tbaa !39
  %i.ya = icmp sgt i32 %i.xy, %i.xz
  br i1 %i.ya, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %parse_x96_subframe_header.exit
  %i.yb = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yb, i32 noundef 16, ptr noundef nonnull @.str.28) #13
  br label %parse_x96_coding_header.exit.thread

bb.ba:                                            ; preds = %parse_x96_subframe_header.exit
  %.val154.i = load i32, ptr %i.c, align 16, !tbaa !32
  %.val155.i = load i32, ptr %i.d, align 4, !tbaa !30
  %i.yc = icmp slt i32 %.val155.i, %.val154.i
  br i1 %i.yc, label %parse_x96_coding_header.exit.thread, label %.preheader165.i

.preheader165.i:                                  ; preds = %bb.ba
  %i.yd = icmp slt i32 %2, %i.xo
  br i1 %i.yd, label %.lr.ph184.i, label %._crit_edge185.i

.lr.ph184.i:                                      ; preds = %.preheader165.i
  %i.ye = icmp sgt i8 %.fr201.i, 0
  %i.yf = sext i32 %i.xx to i64
  %i.yg = shl nsw i64 %i.yf, 2
  %wide.trip.count.i75 = zext nneg i32 %i.xx to i64
  %i.yh = sext i32 %.086129 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge182.i, %.lr.ph184.i
  %i.yi = phi i32 [ %i.xo, %.lr.ph184.i ], [ %i.acx, %._crit_edge182.i ]
  %i.yj = phi i32 [ %i.xo, %.lr.ph184.i ], [ %i.acy, %._crit_edge182.i ]
  %indvars.iv213.i = phi i64 [ %i.hn, %.lr.ph184.i ], [ %indvars.iv.next214.i, %._crit_edge182.i ] ; 5 uses
  %i.yk = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.yl = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv213.i ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !45
  %i.yn = sext i8 %i.ym to i32
  %i.yo = icmp slt i32 %i.yk, %i.yn
  br i1 %i.yo, label %.lr.ph181.i, label %._crit_edge182.i

.lr.ph181.i:                                      ; preds = %bb.bb
  %i.yp = getelementptr inbounds [512 x i8], ptr %i.hz, i64 %indvars.iv213.i
  %i.yq = getelementptr inbounds [256 x i8], ptr %i.hs, i64 %indvars.iv213.i
  %i.yr = getelementptr inbounds [64 x i8], ptr %i.hq, i64 %indvars.iv213.i
  %i.ys = sext i32 %i.yk to i64
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit162.i, %.lr.ph181.i
  %indvars.iv210.i = phi i64 [ %i.ys, %.lr.ph181.i ], [ %indvars.iv.next211.i, %.loopexit162.i ] ; 5 uses
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yp, i64 %indvars.iv210.i
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !49
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.yh ; 4 uses
  %i.yw = trunc nsw i64 %indvars.iv210.i to i32
  %i.yx = ashr i32 %i.yw, 1
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.yy
  %i.za = and i64 %indvars.iv210.i, 1
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !34 ; 6 uses
  %i.zd = getelementptr inbounds i8, ptr %i.yr, i64 %indvars.iv210.i
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !45
  switch i8 %i.ze, label %.loopexit162.i [
    i8 0, label %bb.bd
    i8 1, label %.preheader163.i
  ]

.preheader163.i:                                  ; preds = %bb.bc
  %i.zf = load i8, ptr %i.xu, align 1, !tbaa !45  ; 2 uses
  %i.zg = icmp sgt i8 %i.zf, 0
  br i1 %i.zg, label %.lr.ph176.i, label %.loopexit162.i

.lr.ph176.i:                                      ; preds = %.preheader163.i
  %i.zh = load ptr, ptr %i.b, align 8, !tbaa !29
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.zi = icmp slt i32 %i.zc, 2
  br i1 %i.zi, label %bb.be, label %.preheader161.i

.preheader161.i:                                  ; preds = %bb.bd
  br i1 %i.ye, label %.lr.ph178.i, label %.loopexit162.i

.lr.ph178.i:                                      ; preds = %.preheader161.i
  %i.zj = zext nneg i32 %i.zc to i64              ; 2 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yv, i8 0, i64 %i.yg, i1 false)
  br label %.loopexit162.i

bb.bf:                                            ; preds = %bb.bf, %.lr.ph178.i
  %indvars.iv207.i = phi i64 [ 0, %.lr.ph178.i ], [ %indvars.iv.next208.i.1, %bb.bf ] ; 3 uses
  %i.zk = load i32, ptr %i.ia, align 8, !tbaa !119
  %i.zl = mul i32 %i.zk, 1103515245
  %i.zm = add i32 %i.zl, 12345                    ; 2 uses
  store i32 %i.zm, ptr %i.ia, align 8, !tbaa !119
  %i.zn = and i32 %i.zm, 2147483647
  %i.zo = add nsw i32 %i.zn, -1073741824
  %i.zp = sext i32 %i.zo to i64
  %i.zq = mul nsw i64 %i.zp, %i.zj
  %i.zr = add nsw i64 %i.zq, 1073741824
  %i.zs = lshr i64 %i.zr, 31
  %.0.i.i.i.i = trunc i64 %i.zs to i32
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv207.i
  store i32 %.0.i.i.i.i, ptr %i.zt, align 4, !tbaa !34
  %i.zu = load i32, ptr %i.ia, align 8, !tbaa !119
  %i.zv = mul i32 %i.zu, 1103515245
  %i.zw = add i32 %i.zv, 12345                    ; 2 uses
  store i32 %i.zw, ptr %i.ia, align 8, !tbaa !119
  %i.zx = and i32 %i.zw, 2147483647
  %i.zy = add nsw i32 %i.zx, -1073741824
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = mul nsw i64 %i.zz, %i.zj
  %i.aab = add nsw i64 %i.aaa, 1073741824
  %i.aac = lshr i64 %i.aab, 31
  %.0.i.i.i.i.1 = trunc i64 %i.aac to i32
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv207.i
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  store i32 %.0.i.i.i.i.1, ptr %i.aae, align 4, !tbaa !34
  %indvars.iv.next208.i.1 = add nuw nsw i64 %indvars.iv207.i, 2 ; 2 uses
  %exitcond.not.i81.1 = icmp eq i64 %indvars.iv.next208.i.1, %wide.trip.count.i75
  br i1 %exitcond.not.i81.1, label %.loopexit162.i, label %bb.bf, !llvm.loop !279

bb.bg:                                            ; preds = %._crit_edge.i77, %.lr.ph176.i
  %i.aaf = phi i8 [ %i.acp, %._crit_edge.i77 ], [ %i.zf, %.lr.ph176.i ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.i77 ], [ %i.xx, %.lr.ph176.i ] ; 4 uses
  %.0133175.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i77 ], [ %i.yv, %.lr.ph176.i ] ; 7 uses
  %.0140174.i = phi i32 [ %i.acq, %._crit_edge.i77 ], [ 0, %.lr.ph176.i ] ; 2 uses
  %i.aag = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  %i.aah = tail call i32 @llvm.umin.i32(i32 %i.aag, i32 16)
  %umin = zext nneg i32 %i.aah to i64             ; 2 uses
  %i.aai = shl nuw nsw i64 %umin, 2
  %i.aaj = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  %i.aak = tail call i32 @llvm.umin.i32(i32 %i.aaj, i32 16)
  %umax = zext nneg i32 %i.aak to i64             ; 5 uses
  %i.aal = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.aam = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.aan = lshr i32 %i.aal, 3
  %i.aao = zext nneg i32 %i.aan to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.aao
  %i.aaq = load i32, ptr %i.aap, align 1, !tbaa !45
  %i.aar = tail call i32 @llvm.bswap.i32(i32 %i.aaq)
  %i.aas = and i32 %i.aal, 7
  %i.aat = shl i32 %i.aar, %i.aas
  %i.aau = lshr i32 %i.aat, 22
  %i.aav = add i32 %i.aal, 10
  %i.aaw = tail call i32 @llvm.umin.i32(i32 %i.aam, i32 %i.aav)
  store i32 %i.aaw, ptr %i.c, align 16, !tbaa !32
  %i.aax = zext nneg i32 %i.aau to i64            ; 2 uses
  %i.aay = getelementptr [32 x i8], ptr @ff_dca_high_freq_vq, i64 %i.aax ; 5 uses
  %i.aaz = shl nuw nsw i32 %.0140174.i, 4
  %i.aba = icmp sgt i32 %i.xx, %i.aaz
  br i1 %i.aba, label %.lr.ph.i78.preheader, label %._crit_edge.i77

.lr.ph.i78.preheader:                             ; preds = %bb.bg
  %min.iters.check = icmp eq i32 %indvars.iv, 0
  br i1 %min.iters.check, label %.lr.ph.i78.preheader355, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i78.preheader
  %scevgep = getelementptr i8, ptr %.0133175.i, i64 %i.aai
  %i.abb = shl nuw nsw i64 %i.aax, 5
  %i.abc = getelementptr i8, ptr @ff_dca_high_freq_vq, i64 %i.abb
  %scevgep351 = getelementptr i8, ptr %i.abc, i64 %umin
  %bound0 = icmp ult ptr %.0133175.i, %scevgep351
  %bound1 = icmp ult ptr %i.aay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i78.preheader355, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %umax, 24                      ; 4 uses
  %i.abd = shl nuw nsw i64 %n.vec, 2
  %i.abe = getelementptr i8, ptr %.0133175.i, i64 %i.abd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0133175.i, i64 %i.abf
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aay, i64 %index
  %wide.load = load <4 x i8>, ptr %i.abg, align 4, !tbaa !45, !alias.scope !299
  %i.abh = sext <4 x i8> %wide.load to <4 x i32>
  %i.abi = mul nsw <4 x i32> %broadcast.splat, %i.abh
  %i.abj = add nsw <4 x i32> %i.abi, splat (i32 8)
  %i.abk = ashr <4 x i32> %i.abj, splat (i32 4)
  %i.abl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.abk, <4 x i32> splat (i32 -8388608))
  %i.abm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.abl, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.abm, ptr %next.gep, align 4, !tbaa !34, !alias.scope !300, !noalias !299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abn = icmp eq i64 %index.next, %n.vec
  br i1 %i.abn, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umax
  br i1 %cmp.n, label %._crit_edge.i77.loopexit, label %.lr.ph.i78.preheader355

.lr.ph.i78.preheader355:                          ; preds = %vector.memcheck, %.lr.ph.i78.preheader, %middle.block
  %indvars.iv.i79.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i78.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.1171.i.ph = phi ptr [ %.0133175.i, %vector.memcheck ], [ %.0133175.i, %.lr.ph.i78.preheader ], [ %i.abe, %middle.block ] ; 3 uses
  %xtraiter = and i64 %umax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol

.lr.ph.i78.prol:                                  ; preds = %.lr.ph.i78.preheader355
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aay, i64 %indvars.iv.i79.ph
  %i.abp = load i8, ptr %i.abo, align 8, !tbaa !45
  %i.abq = sext i8 %i.abp to i32
  %i.abr = mul nsw i32 %i.zc, %i.abq
  %i.abs = add nsw i32 %i.abr, 8
  %i.abt = ashr i32 %i.abs, 4
  %i.abu = tail call i32 @llvm.smax.i32(i32 %i.abt, i32 -8388608)
  %.0.i.i.i.prol = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.abu, i32 8388607)
  %i.abv = getelementptr inbounds nuw i8, ptr %.1171.i.ph, i64 4 ; 2 uses
  store i32 %.0.i.i.i.prol, ptr %.1171.i.ph, align 4, !tbaa !34
  %indvars.iv.next.i80.prol = or disjoint i64 %indvars.iv.i79.ph, 1
  br label %.lr.ph.i78.prol.loopexit

.lr.ph.i78.prol.loopexit:                         ; preds = %.lr.ph.i78.prol, %.lr.ph.i78.preheader355
  %.lcssa383.unr = phi ptr [ poison, %.lr.ph.i78.preheader355 ], [ %i.abv, %.lr.ph.i78.prol ]
  %indvars.iv.i79.unr = phi i64 [ %indvars.iv.i79.ph, %.lr.ph.i78.preheader355 ], [ %indvars.iv.next.i80.prol, %.lr.ph.i78.prol ]
  %.1171.i.unr = phi ptr [ %.1171.i.ph, %.lr.ph.i78.preheader355 ], [ %i.abv, %.lr.ph.i78.prol ]
  %i.abw = add nsw i64 %umax, -1
  %i.abx = icmp eq i64 %indvars.iv.i79.ph, %i.abw
  br i1 %i.abx, label %._crit_edge.i77.loopexit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80.1, %.lr.ph.i78 ], [ %indvars.iv.i79.unr, %.lr.ph.i78.prol.loopexit ] ; 3 uses
  %.1171.i = phi ptr [ %i.aco, %.lr.ph.i78 ], [ %.1171.i.unr, %.lr.ph.i78.prol.loopexit ] ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aay, i64 %indvars.iv.i79
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !45
  %i.aca = sext i8 %i.abz to i32
  %i.acb = mul nsw i32 %i.zc, %i.aca
  %i.acc = add nsw i32 %i.acb, 8
  %i.acd = ashr i32 %i.acc, 4
  %i.ace = tail call i32 @llvm.smax.i32(i32 %i.acd, i32 -8388608)
  %.0.i.i.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ace, i32 8388607)
  %i.acf = getelementptr inbounds nuw i8, ptr %.1171.i, i64 4
  store i32 %.0.i.i.i, ptr %.1171.i, align 4, !tbaa !34
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aay, i64 %indvars.iv.i79
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 1
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !45
  %i.acj = sext i8 %i.aci to i32
  %i.ack = mul nsw i32 %i.zc, %i.acj
  %i.acl = add nsw i32 %i.ack, 8
  %i.acm = ashr i32 %i.acl, 4
  %i.acn = tail call i32 @llvm.smax.i32(i32 %i.acm, i32 -8388608)
  %.0.i.i.i.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.acn, i32 8388607)
  %i.aco = getelementptr inbounds nuw i8, ptr %.1171.i, i64 8 ; 2 uses
  store i32 %.0.i.i.i.1, ptr %i.acf, align 4, !tbaa !34
  %indvars.iv.next.i80.1 = add nuw nsw i64 %indvars.iv.i79, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i80.1, %umax
  br i1 %exitcond.not.1, label %._crit_edge.i77.loopexit, label %.lr.ph.i78, !llvm.loop !284

._crit_edge.i77.loopexit:                         ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78, %middle.block
  %.lcssa323 = phi ptr [ %i.abe, %middle.block ], [ %.lcssa383.unr, %.lr.ph.i78.prol.loopexit ], [ %i.aco, %.lr.ph.i78 ]
  %.pre = load i8, ptr %i.xu, align 1, !tbaa !45
  br label %._crit_edge.i77

._crit_edge.i77:                                  ; preds = %._crit_edge.i77.loopexit, %bb.bg
  %i.acp = phi i8 [ %i.aaf, %bb.bg ], [ %.pre, %._crit_edge.i77.loopexit ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0133175.i, %bb.bg ], [ %.lcssa323, %._crit_edge.i77.loopexit ]
  %i.acq = add nuw nsw i32 %.0140174.i, 1         ; 2 uses
  %i.acr = sext i8 %i.acp to i16
  %.lhs.trunc.i = add nsw i16 %i.acr, 1
  %i.acs = sdiv i16 %.lhs.trunc.i, 2
  %.sext.i = sext i16 %i.acs to i32
  %i.act = icmp slt i32 %i.acq, %.sext.i
  %indvars.iv.next = add nsw i32 %indvars.iv, -16
  br i1 %i.act, label %bb.bg, label %.loopexit162.i, !llvm.loop !285

.loopexit162.i:                                   ; preds = %._crit_edge.i77, %bb.bf, %bb.be, %.preheader161.i, %.preheader163.i, %bb.bc
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.acu = load i8, ptr %i.yl, align 1, !tbaa !45
  %i.acv = sext i8 %i.acu to i64
  %i.acw = icmp slt i64 %indvars.iv.next211.i, %i.acv
  br i1 %i.acw, label %bb.bc, label %._crit_edge182.loopexit.i, !llvm.loop !286

._crit_edge182.loopexit.i:                        ; preds = %.loopexit162.i
  %.pre.i76 = load i32, ptr %i.bj, align 4, !tbaa !107 ; 2 uses
  br label %._crit_edge182.i

._crit_edge182.i:                                 ; preds = %._crit_edge182.loopexit.i, %bb.bb
  %i.acx = phi i32 [ %.pre.i76, %._crit_edge182.loopexit.i ], [ %i.yi, %bb.bb ] ; 2 uses
  %i.acy = phi i32 [ %.pre.i76, %._crit_edge182.loopexit.i ], [ %i.yj, %bb.bb ] ; 3 uses
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, 1 ; 2 uses
  %i.acz = sext i32 %i.acy to i64
  %i.ada = icmp slt i64 %indvars.iv.next214.i, %i.acz
  br i1 %i.ada, label %bb.bb, label %._crit_edge185.loopexit.i, !llvm.loop !287

._crit_edge185.loopexit.i:                        ; preds = %._crit_edge182.i
  %.pre232.i = load i8, ptr %i.xu, align 1, !tbaa !45
  br label %._crit_edge185.i

._crit_edge185.i:                                 ; preds = %._crit_edge185.loopexit.i, %.preheader165.i
  %i.adb = phi i32 [ %i.acx, %._crit_edge185.loopexit.i ], [ %i.xo, %.preheader165.i ] ; 2 uses
  %i.adc = phi i32 [ %i.acy, %._crit_edge185.loopexit.i ], [ %i.xo, %.preheader165.i ] ; 5 uses
  %i.add = phi i8 [ %.pre232.i, %._crit_edge185.loopexit.i ], [ %.fr201.i, %.preheader165.i ] ; 3 uses
  %i.ade = icmp sgt i8 %i.add, 0
  br i1 %i.ade, label %.preheader160.lr.ph.i, label %.preheader159.i

.preheader160.lr.ph.i:                            ; preds = %._crit_edge185.i
  %i.adf = sext i32 %.086129 to i64
  br label %.preheader160.i

.preheader160.i:                                  ; preds = %bb.br, %.preheader160.lr.ph.i
  %.pre237.i182 = phi i8 [ %i.add, %.preheader160.lr.ph.i ], [ %.pre237.i, %bb.br ]
  %i.adg = phi i32 [ %i.adb, %.preheader160.lr.ph.i ], [ %i.ahu, %bb.br ] ; 2 uses
  %i.adh = phi i32 [ %i.adc, %.preheader160.lr.ph.i ], [ %i.ahv, %bb.br ] ; 2 uses
  %i.adi = phi i8 [ %i.add, %.preheader160.lr.ph.i ], [ %i.aiq, %bb.br ]
  %i.adj = phi i32 [ %i.adc, %.preheader160.lr.ph.i ], [ %i.ahx, %bb.br ] ; 2 uses
  %i.adk = phi i32 [ %i.adc, %.preheader160.lr.ph.i ], [ %i.ahy, %bb.br ] ; 2 uses
  %indvars.iv222.i = phi i64 [ %i.adf, %.preheader160.lr.ph.i ], [ %indvars.iv.next223.i, %bb.br ] ; 2 uses
  %.1141193.i = phi i32 [ 0, %.preheader160.lr.ph.i ], [ %i.air, %bb.br ] ; 2 uses
  %i.adl = icmp slt i32 %2, %i.adk
  br i1 %i.adl, label %.lr.ph191.i, label %._crit_edge192.i

.preheader159.loopexit.i:                         ; preds = %bb.br
  %i.adm = trunc nsw i64 %indvars.iv.next223.i to i32
  br label %.preheader159.i

.preheader159.i:                                  ; preds = %.preheader159.loopexit.i, %._crit_edge185.i
  %i.adn = phi i32 [ %i.adb, %._crit_edge185.i ], [ %i.ahu, %.preheader159.loopexit.i ] ; 3 uses
  %i.ado = phi i32 [ %i.adc, %._crit_edge185.i ], [ %i.ahv, %.preheader159.loopexit.i ] ; 3 uses
  %i.adp = phi i32 [ %i.adc, %._crit_edge185.i ], [ %i.ahx, %.preheader159.loopexit.i ] ; 4 uses
  %.0135.lcssa.i = phi i32 [ %.086129, %._crit_edge185.i ], [ %i.adm, %.preheader159.loopexit.i ]
  %i.adq = icmp slt i32 %2, %i.adp
  br i1 %i.adq, label %.lr.ph197.i70, label %.preheader.i69

.lr.ph197.i70:                                    ; preds = %.preheader159.i
  %i.adr = icmp sgt i8 %.fr201.i, 0
  %wide.trip.count.i.i = zext nneg i32 %i.xx to i64
  br i1 %i.adr, label %.lr.ph197.split.us.preheader.i, label %.preheader.i69

.lr.ph197.split.us.preheader.i:                   ; preds = %.lr.ph197.i70
  %i.ads = sext i32 %.086129 to i64               ; 2 uses
  %i.adt = shl nsw i64 %i.ads, 2
  br label %.lr.ph197.split.us.i71

.lr.ph197.split.us.i71:                           ; preds = %inverse_adpcm.exit.us.i, %.lr.ph197.split.us.preheader.i
  %i.adu = phi i32 [ %i.adn, %.lr.ph197.split.us.preheader.i ], [ %i.afy, %inverse_adpcm.exit.us.i ]
  %i.adv = phi i32 [ %i.ado, %.lr.ph197.split.us.preheader.i ], [ %i.afz, %inverse_adpcm.exit.us.i ]
  %i.adw = phi i32 [ %i.adp, %.lr.ph197.split.us.preheader.i ], [ %i.aga, %inverse_adpcm.exit.us.i ]
  %indvars.iv225.i = phi i64 [ %i.hn, %.lr.ph197.split.us.preheader.i ], [ %indvars.iv.next226.i, %inverse_adpcm.exit.us.i ] ; 5 uses
  %i.adx = getelementptr inbounds [512 x i8], ptr %i.hz, i64 %indvars.iv225.i
  %i.ady = getelementptr inbounds [128 x i8], ptr %i.ho, i64 %indvars.iv225.i
  %i.adz = getelementptr inbounds [64 x i8], ptr %i.hm, i64 %indvars.iv225.i
  %i.aea = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.aeb = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv225.i
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !45 ; 2 uses
  %i.aed = sext i8 %i.aec to i32
  %i.aee = icmp slt i32 %i.aea, %i.aed
  br i1 %i.aee, label %.lr.ph24.i.us.i, label %inverse_adpcm.exit.us.i

.lr.ph24.i.us.i:                                  ; preds = %.lr.ph197.split.us.i71
  %i.aef = sext i32 %i.aea to i64
  %wide.trip.count30.i.us.i = sext i8 %i.aec to i64
  br label %.lr.ph24.split.us.i.us.i

.lr.ph24.split.us.i.us.i:                         ; preds = %..loopexit_crit_edge.us.i.us.i, %.lr.ph24.i.us.i
  %indvars.iv27.i.us.i = phi i64 [ %i.aef, %.lr.ph24.i.us.i ], [ %indvars.iv.next28.i.us.i, %..loopexit_crit_edge.us.i.us.i ] ; 4 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.adz, i64 %indvars.iv27.i.us.i
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !45
  %.not.us.i.us.i = icmp eq i8 %i.aeh, 0
  br i1 %.not.us.i.us.i, label %..loopexit_crit_edge.us.i.us.i, label %.lr.ph.us.i.us.i

.lr.ph.us.i.us.i:                                 ; preds = %.lr.ph24.split.us.i.us.i
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %indvars.iv27.i.us.i
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !72
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.adx, i64 %indvars.iv27.i.us.i
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !49 ; 2 uses
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.ads
  %i.aen = sext i16 %i.aej to i64
  %i.aeo = getelementptr inbounds [8 x i8], ptr @ff_dca_adpcm_vb, i64 %i.aen ; 4 uses
  %i.aep = load i16, ptr %i.aeo, align 8, !tbaa !72
  %i.aeq = sext i16 %i.aep to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 2
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !72
  %i.aet = sext i16 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4
  %i.aev = load i16, ptr %i.aeu, align 4, !tbaa !72
  %i.aew = sext i16 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeo, i64 6
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !72
  %i.aez = sext i16 %i.aey to i64
  %scevgep353 = getelementptr i8, ptr %i.ael, i64 -4
  %scevgep354 = getelementptr i8, ptr %scevgep353, i64 %i.adt
  %load_initial = load i32, ptr %scevgep354, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.us.i.us.i
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.us.i.us.i ], [ %.0.i.i.us.i.us.i, %bb.bh ]
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.us.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.bh ] ; 2 uses
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.i.us.i ; 5 uses
  %i.afb = getelementptr inbounds i8, ptr %i.afa, i64 -16
  %i.afc = sext i32 %store_forwarded to i64
  %i.afd = mul nsw i64 %i.afc, %i.aeq
  %i.afe = getelementptr inbounds i8, ptr %i.afa, i64 -8
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !34
  %i.afg = sext i32 %i.aff to i64
  %i.afh = mul nsw i64 %i.afg, %i.aet
  %i.afi = getelementptr inbounds i8, ptr %i.afa, i64 -12
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !34
  %i.afk = sext i32 %i.afj to i64
  %i.afl = mul nsw i64 %i.afk, %i.aew
  %i.afm = load i32, ptr %i.afb, align 4, !tbaa !34
  %i.afn = sext i32 %i.afm to i64
  %i.afo = mul nsw i64 %i.afn, %i.aez
  %i.afp = add nsw i64 %i.afd, 4096
  %i.afq = add nsw i64 %i.afp, %i.afh
  %i.afr = add nsw i64 %i.afq, %i.afl
  %i.afs = add nsw i64 %i.afr, %i.afo
  %i.aft = lshr i64 %i.afs, 13
  %.0.i.i.i.us.i.us.i = trunc i64 %i.aft to i32
  %i.afu = tail call i32 @llvm.smax.i32(i32 %.0.i.i.i.us.i.us.i, i32 -8388608)
  %.0.i.i9.i.us.i.us.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.afu, i32 8388607)
  %i.afv = load i32, ptr %i.afa, align 4, !tbaa !34
  %i.afw = add nsw i32 %.0.i.i9.i.us.i.us.i, %i.afv
  %i.afx = tail call i32 @llvm.smax.i32(i32 %i.afw, i32 -8388608)
  %.0.i.i.us.i.us.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.afx, i32 8388607) ; 2 uses
  store i32 %.0.i.i.us.i.us.i, ptr %i.afa, align 4, !tbaa !34
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %..loopexit_crit_edge.us.i.us.i, label %bb.bh, !llvm.loop !0

..loopexit_crit_edge.us.i.us.i:                   ; preds = %bb.bh, %.lr.ph24.split.us.i.us.i
  %indvars.iv.next28.i.us.i = add nsw i64 %indvars.iv27.i.us.i, 1 ; 2 uses
  %exitcond31.not.i.us.i = icmp eq i64 %indvars.iv.next28.i.us.i, %wide.trip.count30.i.us.i
  br i1 %exitcond31.not.i.us.i, label %inverse_adpcm.exit.us.loopexit.i, label %.lr.ph24.split.us.i.us.i, !llvm.loop !1

inverse_adpcm.exit.us.loopexit.i:                 ; preds = %..loopexit_crit_edge.us.i.us.i
  %.pre238.i = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  br label %inverse_adpcm.exit.us.i

inverse_adpcm.exit.us.i:                          ; preds = %inverse_adpcm.exit.us.loopexit.i, %.lr.ph197.split.us.i71
  %i.afy = phi i32 [ %.pre238.i, %inverse_adpcm.exit.us.loopexit.i ], [ %i.adu, %.lr.ph197.split.us.i71 ] ; 2 uses
  %i.afz = phi i32 [ %.pre238.i, %inverse_adpcm.exit.us.loopexit.i ], [ %i.adv, %.lr.ph197.split.us.i71 ] ; 2 uses
  %i.aga = phi i32 [ %.pre238.i, %inverse_adpcm.exit.us.loopexit.i ], [ %i.adw, %.lr.ph197.split.us.i71 ] ; 3 uses
  %indvars.iv.next226.i = add nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %i.agb = sext i32 %i.aga to i64
  %i.agc = icmp slt i64 %indvars.iv.next226.i, %i.agb
  br i1 %i.agc, label %.lr.ph197.split.us.i71, label %.preheader.i69, !llvm.loop !288

.lr.ph191.i:                                      ; preds = %.preheader160.i, %._crit_edge189.i
  %i.agd = phi i32 [ %i.ahp, %._crit_edge189.i ], [ %i.adg, %.preheader160.i ]
  %i.age = phi i32 [ %i.ahq, %._crit_edge189.i ], [ %i.adh, %.preheader160.i ]
  %i.agf = phi i32 [ %i.ahr, %._crit_edge189.i ], [ %i.adj, %.preheader160.i ]
  %indvars.iv219.i = phi i64 [ %indvars.iv.next220.i, %._crit_edge189.i ], [ %i.hn, %.preheader160.i ] ; 6 uses
  %.val.i73 = load i32, ptr %i.c, align 16, !tbaa !32
  %.val153.i = load i32, ptr %i.d, align 4, !tbaa !30
  %i.agg = icmp slt i32 %.val153.i, %.val.i73
  br i1 %i.agg, label %parse_x96_coding_header.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph191.i
  %i.agh = load i32, ptr %i.hk, align 4, !tbaa !298 ; 2 uses
  %i.agi = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv219.i ; 2 uses
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !45 ; 2 uses
  %i.agk = sext i8 %i.agj to i32
  %i.agl = icmp slt i32 %i.agh, %i.agk
  br i1 %i.agl, label %.lr.ph188.i, label %._crit_edge189.i

.lr.ph188.i:                                      ; preds = %bb.bi
  %i.agm = getelementptr inbounds [64 x i8], ptr %i.hq, i64 %indvars.iv219.i
  %i.agn = getelementptr inbounds [256 x i8], ptr %i.hs, i64 %indvars.iv219.i
  %i.ago = getelementptr inbounds [512 x i8], ptr %i.hz, i64 %indvars.iv219.i
  %i.agp = sext i32 %i.agh to i64
  %i.agq = trunc nsw i64 %indvars.iv219.i to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.lr.ph188.i
  %i.agr = phi i8 [ %i.agj, %.lr.ph188.i ], [ %i.ahm, %bb.bn ]
  %indvars.iv216.i = phi i64 [ %i.agp, %.lr.ph188.i ], [ %indvars.iv.next217.i, %bb.bn ] ; 5 uses
  %i.ags = getelementptr inbounds i8, ptr %i.agm, i64 %indvars.iv216.i
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !45 ; 2 uses
  %i.agu = sext i8 %i.agt to i32
  %i.agv = add nsw i32 %i.agu, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.agw = icmp slt i8 %i.agt, 2
  br i1 %i.agw, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.agx = call fastcc i32 @extract_audio(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef %i.agv, i32 noundef %i.agq) ; 2 uses
  %i.agy = icmp slt i32 %i.agx, 0
  br i1 %i.agy, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.agz = load i32, ptr %i.ib, align 4, !tbaa !43
  %i.aha = icmp eq i32 %i.agz, 3
  %i.ahb = zext nneg i32 %i.agv to i64
  %.0.in.v.i = select i1 %i.aha, ptr @ff_dca_lossless_quant, ptr @ff_dca_lossy_quant
  %.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %.0.in.v.i, i64 %i.ahb
  %.0.i74 = load i32, ptr %.0.in.i, align 4, !tbaa !34
  %i.ahc = trunc nsw i64 %indvars.iv216.i to i32
  %i.ahd = ashr i32 %i.ahc, 1
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %i.ahe
  %i.ahg = and i64 %indvars.iv216.i, 1
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.ahg
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !34
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.ago, i64 %indvars.iv216.i
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !49
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.ahk, i64 %indvars.iv222.i
  call fastcc void @ff_dca_core_dequantize(ptr noundef %i.ahl, ptr noundef %i.a, i32 noundef %.0.i74, i32 noundef %i.ahi, i32 noundef 0)
  %.pre233.i = load i8, ptr %i.agi, align 1, !tbaa !45
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %parse_x96_coding_header.exit.thread

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.ahm = phi i8 [ %.pre233.i, %bb.bl ], [ %i.agr, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next217.i = add nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %i.ahn = sext i8 %i.ahm to i64
  %i.aho = icmp slt i64 %indvars.iv.next217.i, %i.ahn
  br i1 %i.aho, label %bb.bj, label %._crit_edge189.loopexit.i, !llvm.loop !289

._crit_edge189.loopexit.i:                        ; preds = %bb.bn
  %.pre234.i = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  br label %._crit_edge189.i

._crit_edge189.i:                                 ; preds = %._crit_edge189.loopexit.i, %bb.bi
  %i.ahp = phi i32 [ %.pre234.i, %._crit_edge189.loopexit.i ], [ %i.agd, %bb.bi ] ; 2 uses
  %i.ahq = phi i32 [ %.pre234.i, %._crit_edge189.loopexit.i ], [ %i.age, %bb.bi ] ; 2 uses
  %i.ahr = phi i32 [ %.pre234.i, %._crit_edge189.loopexit.i ], [ %i.agf, %bb.bi ] ; 4 uses
  %indvars.iv.next220.i = add nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %i.ahs = sext i32 %i.ahr to i64
  %i.aht = icmp slt i64 %indvars.iv.next220.i, %i.ahs
  br i1 %i.aht, label %.lr.ph191.i, label %._crit_edge192.loopexit.i, !llvm.loop !290

._crit_edge192.loopexit.i:                        ; preds = %._crit_edge189.i
  %.pre235.i = load i8, ptr %i.xu, align 1, !tbaa !45 ; 2 uses
  br label %._crit_edge192.i

._crit_edge192.i:                                 ; preds = %._crit_edge192.loopexit.i, %.preheader160.i
  %.pre237.i = phi i8 [ %.pre235.i, %._crit_edge192.loopexit.i ], [ %.pre237.i182, %.preheader160.i ] ; 3 uses
  %i.ahu = phi i32 [ %i.ahp, %._crit_edge192.loopexit.i ], [ %i.adg, %.preheader160.i ] ; 2 uses
  %i.ahv = phi i32 [ %i.ahq, %._crit_edge192.loopexit.i ], [ %i.adh, %.preheader160.i ] ; 2 uses
  %i.ahw = phi i8 [ %.pre235.i, %._crit_edge192.loopexit.i ], [ %i.adi, %.preheader160.i ] ; 2 uses
  %i.ahx = phi i32 [ %i.ahr, %._crit_edge192.loopexit.i ], [ %i.adj, %.preheader160.i ] ; 2 uses
  %i.ahy = phi i32 [ %i.ahr, %._crit_edge192.loopexit.i ], [ %i.adk, %.preheader160.i ]
  %i.ahz = sext i8 %i.ahw to i32                  ; 2 uses
  %i.aia = add nsw i32 %i.ahz, -1
  %i.aib = icmp eq i32 %.1141193.i, %i.aia
  br i1 %i.aib, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge192.i
  %i.aic = load i32, ptr %i.ic, align 4, !tbaa !100
  %.not.i72 = icmp eq i32 %i.aic, 0
  br i1 %.not.i72, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge192.i
  %i.aid = load i32, ptr %i.c, align 16, !tbaa !32 ; 3 uses
  %i.aie = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  %i.aif = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.aig = lshr i32 %i.aid, 3
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 1, !tbaa !45
  %i.aik = tail call i32 @llvm.bswap.i32(i32 %i.aij)
  %i.ail = and i32 %i.aid, 7
  %i.aim = shl i32 %i.aik, %i.ail
  %i.ain = add i32 %i.aid, 16
  %i.aio = tail call i32 @llvm.umin.i32(i32 %i.aie, i32 %i.ain)
  store i32 %i.aio, ptr %i.c, align 16, !tbaa !32
  %.not152.i = icmp ugt i32 %i.aim, -65537
  br i1 %.not152.i, label %._crit_edge236.i, label %bb.bq

._crit_edge236.i:                                 ; preds = %bb.bp
  %.pre240.i = sext i8 %.pre237.i to i32
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.aip = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aip, i32 noundef 16, ptr noundef nonnull @.str.70) #13
  br label %parse_x96_coding_header.exit.thread

bb.br:                                            ; preds = %._crit_edge236.i, %bb.bo
  %.pre-phi.i = phi i32 [ %.pre240.i, %._crit_edge236.i ], [ %i.ahz, %bb.bo ]
  %i.aiq = phi i8 [ %.pre237.i, %._crit_edge236.i ], [ %i.ahw, %bb.bo ]
  %indvars.iv.next223.i = add nsw i64 %indvars.iv222.i, 8 ; 2 uses
  %i.air = add nuw nsw i32 %.1141193.i, 1         ; 2 uses
  %i.ais = icmp slt i32 %i.air, %.pre-phi.i
  br i1 %i.ais, label %.preheader160.i, label %.preheader159.loopexit.i, !llvm.loop !291

.preheader.i69:                                   ; preds = %inverse_adpcm.exit.us.i, %.lr.ph197.i70, %.preheader159.i
  %i.ait = phi i32 [ %i.adn, %.preheader159.i ], [ %i.adn, %.lr.ph197.i70 ], [ %i.afy, %inverse_adpcm.exit.us.i ] ; 2 uses
  %i.aiu = phi i32 [ %i.ado, %.preheader159.i ], [ %i.ado, %.lr.ph197.i70 ], [ %i.afz, %inverse_adpcm.exit.us.i ] ; 2 uses
  %i.aiv = phi i32 [ %i.adp, %.preheader159.i ], [ %i.adp, %.lr.ph197.i70 ], [ %i.aga, %inverse_adpcm.exit.us.i ] ; 2 uses
  %i.aiw = icmp slt i32 %2, %i.aiv
  br i1 %i.aiw, label %.lr.ph199.i, label %parse_x96_subframe_audio.exit

.lr.ph199.i:                                      ; preds = %.preheader.i69
  %i.aix = sext i32 %i.xx to i64
  %i.aiy = sext i32 %.086129 to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.lr.ph199.i
  %i.aiz = phi i32 [ %i.ait, %.lr.ph199.i ], [ %i.aju, %bb.bu ]
  %i.aja = phi i32 [ %i.aiu, %.lr.ph199.i ], [ %i.ajv, %bb.bu ]
  %i.ajb = phi i32 [ %i.aiv, %.lr.ph199.i ], [ %i.ajw, %bb.bu ]
  %indvars.iv228.i = phi i64 [ %i.hn, %.lr.ph199.i ], [ %indvars.iv.next229.i, %bb.bu ] ; 5 uses
  %i.ajc = getelementptr inbounds i8, ptr %i.ht, i64 %indvars.iv228.i
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !45 ; 2 uses
  %i.aje = icmp sgt i8 %i.ajd, 0
  br i1 %i.aje, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ajf = zext nneg i8 %i.ajd to i64
  %i.ajg = add nuw nsw i64 %i.ajf, 4294967295
  %i.ajh = load ptr, ptr %i.id, align 16, !tbaa !97
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !101
  %i.ajk = getelementptr inbounds [512 x i8], ptr %i.hz, i64 %indvars.iv228.i
  %i.ajl = and i64 %i.ajg, 4294967295             ; 2 uses
  %i.ajm = getelementptr inbounds nuw [512 x i8], ptr %i.hz, i64 %i.ajl
  %i.ajn = getelementptr inbounds [256 x i8], ptr %i.hv, i64 %indvars.iv228.i
  %i.ajo = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv228.i
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !45
  %i.ajq = sext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ajl
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !45
  %i.ajt = sext i8 %i.ajs to i64
  tail call void %i.ajj(ptr noundef nonnull %i.ajk, ptr noundef nonnull %i.ajm, ptr noundef nonnull %i.ajn, i64 noundef %i.ajq, i64 noundef %i.ajt, i64 noundef %i.aiy, i64 noundef %i.aix) #13, !inline_history !292
  %.pre239.i = load i32, ptr %i.bj, align 4, !tbaa !107 ; 3 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.aju = phi i32 [ %.pre239.i, %bb.bt ], [ %i.aiz, %bb.bs ] ; 2 uses
  %i.ajv = phi i32 [ %.pre239.i, %bb.bt ], [ %i.aja, %bb.bs ] ; 2 uses
  %i.ajw = phi i32 [ %.pre239.i, %bb.bt ], [ %i.ajb, %bb.bs ] ; 2 uses
  %indvars.iv.next229.i = add nsw i64 %indvars.iv228.i, 1 ; 2 uses
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = icmp slt i64 %indvars.iv.next229.i, %i.ajx
  br i1 %i.ajy, label %bb.bs, label %parse_x96_subframe_audio.exit, !llvm.loop !293

parse_x96_subframe_audio.exit:                    ; preds = %bb.bu, %.preheader.i69
  %i.ajz = phi i32 [ %i.ait, %.preheader.i69 ], [ %i.aju, %bb.bu ] ; 2 uses
  %i.aka = phi i32 [ %i.aiu, %.preheader.i69 ], [ %i.ajv, %bb.bu ]
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.akb = load i32, ptr %i.hh, align 4, !tbaa !83
  %i.akc = sext i32 %i.akb to i64
  %i.akd = icmp slt i64 %indvars.iv.next173, %i.akc
  br i1 %i.akd, label %bb.z, label %.preheader, !llvm.loop !294

bb.bv:                                            ; preds = %.lr.ph133, %bb.cc
  %indvars.iv179 = phi i64 [ %i.il, %.lr.ph133 ], [ %indvars.iv.next180, %bb.cc ] ; 4 uses
  %i.ake = getelementptr inbounds i8, ptr %i.ig, i64 %indvars.iv179
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !45 ; 2 uses
  %i.akg = getelementptr inbounds i8, ptr %i.ih, i64 %indvars.iv179
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !45 ; 2 uses
  %.not = icmp eq i8 %i.akh, 0
  br i1 %.not, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aki = sext i8 %i.akh to i64
  %i.akj = getelementptr i8, ptr %i.ig, i64 %i.aki
  %i.akk = getelementptr i8, ptr %i.akj, i64 -1
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !45
  %i.akm = tail call i8 @llvm.smax.i8(i8 %i.akf, i8 %i.akl)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0.in = phi i8 [ %i.akm, %bb.bw ], [ %i.akf, %bb.bv ]
  %i.akn = getelementptr inbounds [512 x i8], ptr %i.ii, i64 %indvars.iv179
  %i.ako = sext i8 %.0.in to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.cb
  %indvars.iv175 = phi i64 [ 0, %bb.bx ], [ %indvars.iv.next176, %bb.cb ] ; 4 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv175
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !49 ; 2 uses
  %i.akr = getelementptr inbounds i8, ptr %i.akq, i64 -16 ; 4 uses
  %i.aks = load i32, ptr %i.ij, align 4, !tbaa !298
  %i.akt = sext i32 %i.aks to i64
  %.not57 = icmp sge i64 %indvars.iv175, %i.akt
  %i.aku = icmp slt i64 %indvars.iv175, %i.ako
  %or.cond = select i1 %.not57, i1 %i.aku, i1 false
  %i.akv = load i32, ptr %i.ik, align 4, !tbaa !39 ; 2 uses
  br i1 %or.cond, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.akw
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !45
  store i64 %i.aky, ptr %i.akr, align 8, !tbaa !45
  %i.akz = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !45
  %i.ale = getelementptr inbounds i8, ptr %i.akq, i64 -8
  store i64 %i.ald, ptr %i.ale, align 8, !tbaa !45
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.alf = add nsw i32 %i.akv, 4
  %i.alg = sext i32 %i.alf to i64
  %i.alh = shl nsw i64 %i.alg, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.akr, i8 0, i64 %i.alh, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, 64
  br i1 %exitcond178.not, label %bb.cc, label %bb.by, !llvm.loop !295

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.ali = load i32, ptr %i.bj, align 4, !tbaa !107
  %i.alj = sext i32 %i.ali to i64
  %i.alk = icmp slt i64 %indvars.iv.next180, %i.alj
  br i1 %i.alk, label %bb.bv, label %parse_x96_coding_header.exit.thread, !llvm.loop !296

parse_x96_coding_header.exit.thread:              ; preds = %bb.ba, %bb.z, %parse_scale.exit.i, %parse_scale.exit.us.i, %parse_joint_scale.exit.i, %parse_joint_scale.exit.us.i, %.lr.ph191.i, %bb.cc, %.preheader, %bb.bq, %bb.bm, %bb.az, %parse_joint_scale.exit.thread.i, %parse_scale.exit.thread.i, %bb.aq, %.split.us.i, %bb.w, %bb.r, %bb.n, %bb.l, %bb.g, %ff_dca_check_crc.exit.thread.i, %bb.a
  %.050 = phi i32 [ %i.xg, %parse_joint_scale.exit.i ], [ -1094995529, %bb.az ], [ -1094995529, %bb.w ], [ -1094995529, %bb.a ], [ -1094995529, %ff_dca_check_crc.exit.thread.i ], [ -1094995529, %bb.g ], [ -1094995529, %bb.l ], [ -1094995529, %bb.n ], [ -1094995529, %bb.r ], [ -1094995529, %.lr.ph191.i ], [ %i.sg, %parse_scale.exit.i ], [ 0, %bb.cc ], [ -1094995529, %parse_joint_scale.exit.thread.i ], [ -1094995529, %parse_scale.exit.thread.i ], [ 0, %.preheader ], [ -1094995529, %bb.aq ], [ -1094995529, %.split.us.i ], [ -1094995529, %bb.bq ], [ %i.agx, %bb.bm ], [ %i.wi, %parse_joint_scale.exit.us.i ], [ %i.rf, %parse_scale.exit.us.i ], [ -1094995529, %bb.z ], [ -1094995529, %bb.ba ]
  ret i32 %.050
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_dca_downmix_to_stereo_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_dca_downmix_to_stereo_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !50}
!1 = distinct !{!1, !50}
!2 = distinct !{!2, !50}
!3 = distinct !{!3, !50}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS14AVCodecContext", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"GetBitContext", !15, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!17 = !{!"p1 int", !13, i64 0}
!18 = !{!"p1 _ZTS13DCADSPContext", !13, i64 0}
!19 = !{!"DCADCTContext", !9, i64 0}
!20 = !{!"SynthFilterContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!21 = !{!"p1 _ZTS17AVFloatDSPContext", !13, i64 0}
!22 = !{!"p1 _ZTS17AVFixedDSPContext", !13, i64 0}
!23 = !{!"float", !9, i64 0}
!24 = !{!"DCACoreDecoder", !14, i64 0, !16, i64 8, !16, i64 32, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !9, i64 144, !9, i64 151, !9, i64 158, !9, i64 165, !9, i64 172, !9, i64 179, !9, i64 186, !9, i64 256, !9, i64 536, !9, i64 552, !9, i64 1000, !9, i64 1896, !9, i64 2344, !9, i64 5928, !9, i64 7720, !9, i64 7728, !10, i64 9520, !10, i64 9524, !9, i64 9528, !10, i64 9624, !10, i64 9628, !10, i64 9632, !10, i64 9636, !10, i64 9640, !10, i64 9644, !10, i64 9648, !10, i64 9652, !9, i64 9656, !9, i64 9664, !10, i64 9712, !10, i64 9716, !10, i64 9720, !10, i64 9724, !10, i64 9728, !10, i64 9732, !10, i64 9736, !10, i64 9740, !10, i64 9744, !17, i64 9752, !9, i64 9760, !10, i64 13344, !17, i64 13352, !9, i64 13360, !17, i64 15152, !9, i64 15168, !18, i64 45744, !19, i64 45752, !9, i64 45768, !9, i64 45784, !20, i64 45800, !21, i64 45832, !22, i64 45840, !10, i64 45848, !13, i64 45856, !9, i64 45864, !10, i64 46120, !23, i64 46124, !9, i64 46128, !10, i64 46256, !10, i64 46260, !10, i64 46264, !10, i64 46268}
!25 = !{!24, !10, i64 9624}
!26 = !{!24, !10, i64 9740}
!27 = !{!24, !10, i64 9712}
!28 = !{!24, !10, i64 9628}
!29 = !{!16, !15, i64 0}
!30 = !{!16, !10, i64 12}
!31 = !{!16, !10, i64 16}
!32 = !{!16, !10, i64 8}
!33 = !{!15, !15, i64 0}
!34 = !{!10, !10, i64 0}
!35 = !{i64 0, i64 8, !33, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34}
!36 = !{!24, !14, i64 0}
!37 = !{!"short", !9, i64 0}
!38 = !{!24, !10, i64 56}
!39 = !{!24, !10, i64 60}
!40 = !{!24, !10, i64 64}
!41 = !{!24, !10, i64 68}
!42 = !{!24, !10, i64 72}
!43 = !{!24, !10, i64 76}
!44 = !{!24, !10, i64 80}
!45 = !{!9, !9, i64 0}
!46 = !{!24, !10, i64 128}
!47 = !{!24, !10, i64 13344}
!48 = !{!24, !17, i64 13352}
!49 = !{!17, !17, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!24, !17, i64 15152}
!52 = !{!24, !10, i64 108}
!53 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!54 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!55 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!56 = !{!"long", !9, i64 0}
!57 = !{!"AVRational", !10, i64 0, !10, i64 4}
!58 = !{!"p1 short", !13, i64 0}
!59 = !{!"AVChannelLayout", !10, i64 0, !10, i64 4, !9, i64 8, !13, i64 16}
!60 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!61 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!62 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!63 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!64 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!65 = !{!"any p2 pointer", !13, i64 0}
!66 = !{!"p2 _ZTS15AVFrameSideData", !65, i64 0}
!67 = !{!"AVCodecContext", !53, i64 0, !10, i64 8, !10, i64 12, !54, i64 16, !10, i64 24, !10, i64 28, !13, i64 32, !55, i64 40, !13, i64 48, !56, i64 56, !10, i64 64, !10, i64 68, !15, i64 72, !10, i64 80, !57, i64 84, !57, i64 92, !57, i64 100, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !57, i64 128, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !13, i64 184, !13, i64 192, !10, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !58, i64 288, !58, i64 296, !58, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !59, i64 352, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !13, i64 408, !10, i64 416, !10, i64 420, !10, i64 424, !23, i64 428, !23, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !60, i64 456, !56, i64 464, !56, i64 472, !23, i64 480, !23, i64 484, !10, i64 488, !10, i64 492, !15, i64 496, !15, i64 504, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !10, i64 528, !61, i64 536, !13, i64 544, !62, i64 552, !62, i64 560, !10, i64 568, !10, i64 572, !9, i64 576, !10, i64 640, !10, i64 644, !10, i64 648, !10, i64 652, !10, i64 656, !10, i64 660, !10, i64 664, !13, i64 672, !13, i64 680, !10, i64 688, !10, i64 692, !10, i64 696, !10, i64 700, !10, i64 704, !10, i64 708, !10, i64 712, !10, i64 716, !10, i64 720, !63, i64 728, !15, i64 736, !10, i64 744, !10, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !64, i64 776, !10, i64 784, !10, i64 788, !56, i64 792, !10, i64 800, !10, i64 804, !56, i64 808, !13, i64 816, !56, i64 824, !17, i64 832, !10, i64 840, !66, i64 848, !10, i64 856, !10, i64 860}
!68 = !{!67, !13, i64 32}
!69 = !{!24, !10, i64 9520}
!70 = !{!24, !10, i64 9524}
!71 = !{!24, !10, i64 104}
!72 = !{!37, !37, i64 0}
!73 = !{!67, !10, i64 528}
!74 = !{!"DCAExssParser", !14, i64 0, !16, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !9, i64 64, !9, i64 80}
!75 = !{!"DCAXllDecoder", !14, i64 0, !16, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !9, i64 80, !17, i64 8672, !10, i64 8680, !10, i64 8684, !10, i64 8688, !10, i64 8692, !10, i64 8696, !10, i64 8700, !15, i64 8704, !10, i64 8712, !10, i64 8716, !18, i64 8720, !10, i64 8728, !10, i64 8732, !10, i64 8736, !9, i64 8744}
!76 = !{!"p1 float", !13, i64 0}
!77 = !{!"p1 _ZTS11AVTXContext", !13, i64 0}
!78 = !{!"DCALbrDecoder", !14, i64 0, !16, i64 8, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !9, i64 108, !9, i64 204, !9, i64 236, !9, i64 332, !9, i64 428, !9, i64 452, !9, i64 1028, !9, i64 2180, !9, i64 2348, !9, i64 3692, !9, i64 3716, !9, i64 5252, !9, i64 5492, !9, i64 5496, !9, i64 7800, !9, i64 7928, !76, i64 9464, !10, i64 9472, !9, i64 9488, !9, i64 12560, !9, i64 13072, !9, i64 13328, !23, i64 13368, !9, i64 13372, !9, i64 13378, !9, i64 14018, !10, i64 22212, !77, i64 22216, !13, i64 22224, !21, i64 22232, !18, i64 22240}
!79 = !{!"DCADSPContext", !13, i64 0, !13, i64 8, !9, i64 16, !13, i64 32, !9, i64 40, !13, i64 56, !13, i64 64, !9, i64 72, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152}
!80 = !{!"DCAContext", !53, i64 0, !14, i64 8, !24, i64 16, !74, i64 46288, !75, i64 46496, !78, i64 55504, !79, i64 77760, !17, i64 77920, !15, i64 77928, !10, i64 77936, !10, i64 77940, !10, i64 77944, !10, i64 77948, !10, i64 77952, !59, i64 77960}
!81 = !{!80, !17, i64 77920}
!82 = !{!80, !10, i64 77944}
!83 = !{!24, !10, i64 132}
!84 = !{!24, !10, i64 136}
!85 = !{!24, !10, i64 140}
!86 = !{!24, !10, i64 9632}
!87 = !{!24, !10, i64 9636}
!88 = !{!24, !10, i64 9644}
!89 = !{!24, !10, i64 9640}
!90 = !{!24, !10, i64 9648}
!91 = !{!24, !10, i64 9652}
!92 = !{!"llvm.loop.unswitch.partial.disable"}
!93 = !{!"p1 _ZTS7VLCElem", !13, i64 0}
!94 = !{!"VLC", !10, i64 0, !93, i64 8, !10, i64 16, !10, i64 20}
!95 = !{!94, !10, i64 0}
!96 = !{!94, !93, i64 8}
!97 = !{!24, !18, i64 45744}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!24, !10, i64 100}
!101 = !{!79, !13, i64 8}
!102 = !{!"DCAExssAsset", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!103 = !{!102, !10, i64 52}
!104 = !{!80, !10, i64 77940}
!105 = !{!24, !10, i64 9716}
!106 = !{!24, !10, i64 9720}
!107 = !{!24, !10, i64 9724}
!108 = !{!24, !10, i64 46264}
!109 = !{!24, !10, i64 46260}
!110 = !{!24, !13, i64 45856}
!111 = !{!24, !10, i64 46268}
!112 = !{!24, !10, i64 46120}
!113 = !{!24, !23, i64 46124}
!114 = !{!24, !10, i64 112}
!115 = !{!13, !13, i64 0}
!116 = !{!24, !22, i64 45840}
!117 = !{!24, !21, i64 45832}
!118 = !{!24, !17, i64 9752}
!119 = !{!24, !10, i64 9736}
!120 = !{!24, !10, i64 9744}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !50}
!126 = !{!"DCACoreFrameHeader", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !37, i64 4, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24}
!127 = !{!126, !9, i64 0}
!128 = !{!126, !9, i64 3}
!129 = !{!126, !37, i64 4}
!130 = !{!126, !9, i64 6}
!131 = !{!126, !9, i64 2}
!132 = !{!126, !9, i64 7}
!133 = !{!126, !9, i64 8}
!134 = !{!126, !9, i64 9}
!135 = !{!126, !9, i64 21}
!136 = !{!24, !10, i64 116}
!137 = !{!126, !9, i64 23}
!138 = !{!24, !10, i64 84}
!139 = !{!24, !10, i64 88}
!140 = !{!24, !10, i64 96}
!141 = !{!80, !10, i64 77948}
!142 = !{!24, !10, i64 20}
!143 = !{!24, !10, i64 92}
!144 = !{!24, !15, i64 8}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50, !92}
!147 = distinct !{!147, !50}
!148 = distinct !{!148, !50}
!149 = distinct !{!149, !50}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50, !92}
!156 = distinct !{!156, !50}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = distinct !{!161, !50}
!162 = distinct !{!162, !50}
!163 = distinct !{!163, !50}
!164 = distinct !{!164, !50}
!165 = distinct !{!165, !50}
!166 = distinct !{!166, !50}
!167 = distinct !{!167, !50}
!168 = distinct !{!168, !50}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = distinct !{null}
!172 = distinct !{!172, !50}
!173 = distinct !{!173, !50}
!174 = distinct !{!174, !50, !98, !99}
!175 = distinct !{!175, !50, !99, !98}
!176 = distinct !{!176, !50}
!177 = distinct !{!177, !50}
!178 = distinct !{!178, !50}
!179 = distinct !{!179, !50}
!180 = distinct !{!180, !50}
!181 = distinct !{!181, !50}
!182 = distinct !{!182, !50}
!183 = distinct !{!183, !50}
!184 = distinct !{!184, !50}
!185 = !{!79, !13, i64 0}
!186 = distinct !{!186, !50}
!187 = distinct !{!187, !50}
!188 = distinct !{!188, !50}
!189 = distinct !{!189, !50}
!190 = distinct !{!190, !50}
!191 = distinct !{!191, !50}
!192 = distinct !{!192, !50}
!193 = distinct !{!193, !50}
!194 = distinct !{!194, !50}
!195 = distinct !{!195, !50}
!196 = distinct !{!196, !50}
!197 = distinct !{!197, !50}
!198 = distinct !{!198, !50}
!199 = !{!102, !10, i64 72}
!200 = !{!102, !10, i64 76}
!201 = !{!102, !10, i64 64}
!202 = !{!102, !10, i64 68}
!203 = !{!102, !10, i64 80}
!204 = !{!102, !10, i64 84}
!205 = distinct !{!205, !50}
!206 = distinct !{!206, !50}
!207 = !{!79, !13, i64 56}
!208 = !{!79, !13, i64 64}
!209 = distinct !{null}
!210 = distinct !{!210, !50}
!211 = distinct !{!211, !50}
!212 = distinct !{!212, !50}
!213 = distinct !{!213, !50, !98, !99}
!214 = distinct !{!214, !50, !98}
!215 = distinct !{!215, !50}
!216 = distinct !{!216, !50}
!217 = distinct !{!217, !244}
!218 = distinct !{!218, !50}
!219 = distinct !{null}
!220 = distinct !{!220, !50}
!221 = distinct !{!221, !50}
!222 = distinct !{!222, !50}
!223 = distinct !{!223, !50}
!224 = !{!24, !10, i64 46256}
!225 = !{!67, !10, i64 64}
!226 = !{!67, !10, i64 344}
!227 = !{!67, !10, i64 348}
!228 = !{!67, !10, i64 652}
!229 = !{!"p2 omnipotent char", !65, i64 0}
!230 = !{!"p2 _ZTS11AVBufferRef", !65, i64 0}
!231 = !{!"p1 _ZTS12AVDictionary", !13, i64 0}
!232 = !{!"AVFrame", !9, i64 0, !9, i64 64, !229, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !57, i64 124, !56, i64 136, !56, i64 144, !57, i64 152, !10, i64 160, !13, i64 168, !10, i64 176, !10, i64 180, !9, i64 184, !230, i64 248, !10, i64 256, !66, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !56, i64 304, !231, i64 312, !10, i64 320, !62, i64 328, !62, i64 336, !56, i64 344, !56, i64 352, !56, i64 360, !56, i64 368, !13, i64 376, !59, i64 384, !56, i64 408, !10, i64 416}
!233 = !{!232, !10, i64 112}
!234 = !{!24, !10, i64 120}
!235 = !{!79, !13, i64 96}
!236 = !{!79, !13, i64 128}
!237 = !{!79, !13, i64 104}
!238 = !{!24, !10, i64 124}
!239 = !{!"AVFixedDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!240 = !{!239, !13, i64 48}
!241 = !{!67, !10, i64 356}
!242 = !{!232, !229, i64 96}
!243 = !{!76, !76, i64 0}
!244 = !{!"llvm.loop.unroll.disable"}
!245 = !{!77, !77, i64 0}
!246 = !{!79, !13, i64 32}
!247 = !{!"AVFloatDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!248 = !{!247, !13, i64 8}
!249 = !{!247, !13, i64 24}
!250 = !{!247, !13, i64 64}
!251 = !{!67, !10, i64 688}
!252 = !{!67, !56, i64 56}
!253 = distinct !{!253, !50}
!254 = !{!23, !23, i64 0}
!255 = !{!24, !10, i64 45848}
!256 = distinct !{!256, !50, !98, !99}
!257 = distinct !{!257, !50, !98, !99}
!258 = distinct !{!258, !50, !98, !99}
!259 = distinct !{!259, !50, !98, !99}
!260 = distinct !{!260, !50, !98, !99}
!261 = distinct !{!261, !50, !98, !99}
!262 = distinct !{!262, !50}
!263 = distinct !{!263, !50}
!264 = distinct !{!264, !50}
!265 = distinct !{!265, !50}
!266 = distinct !{!266, !50}
!267 = distinct !{!267, !50, !92}
!268 = distinct !{!268, !50}
!269 = distinct !{!269, !50}
!270 = distinct !{!270, !50}
!271 = distinct !{!271, !50}
!272 = distinct !{!272, !50}
!273 = distinct !{!273, !50}
!274 = distinct !{!274, !50}
!275 = distinct !{!275, !50}
!276 = distinct !{!276, !50}
!277 = distinct !{!277, !50}
!278 = distinct !{!278, !50}
!279 = distinct !{!279, !50}
!280 = distinct !{!280, !"LVerDomain"}
!281 = distinct !{!281, !280}
!282 = distinct !{!282, !280}
!283 = distinct !{!283, !50, !98, !99}
!284 = distinct !{!284, !50, !98}
!285 = distinct !{!285, !50}
!286 = distinct !{!286, !50}
!287 = distinct !{!287, !50}
!288 = distinct !{!288, !50}
!289 = distinct !{!289, !50}
!290 = distinct !{!290, !50}
!291 = distinct !{!291, !50}
!292 = distinct !{null}
!293 = distinct !{!293, !50}
!294 = distinct !{!294, !50}
!295 = distinct !{!295, !50}
!296 = distinct !{!296, !50}
!297 = !{!24, !10, i64 9728}
!298 = !{!24, !10, i64 9732}
!299 = !{!281}
!300 = !{!282}
end_hunk_1
