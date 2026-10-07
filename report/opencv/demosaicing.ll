Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/demosaicing?download=true
inline.NumInlined: 241
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv17Bayer2RGB_InvokerIhNS_24SIMDBayerInterpolator_8uEEclERKNS_5RangeE:bb.a

.lr.ph:                                           ; preds = %.preheader376, %.lr.ph
  %.4380 = phi ptr [ %i.nd, %.lr.ph ], [ %.0, %.preheader376 ] ; 9 uses
  %.4327379 = phi ptr [ %i.kv, %.lr.ph ], [ %.0323, %.preheader376 ] ; 8 uses
  %i.kt = load i8, ptr %.4327379, align 1, !tbaa !18
  %i.ku = zext i8 %i.kt to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %.4327379, i64 2 ; 5 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !18
  %i.kx = zext i8 %i.kw to i16
  %i.ky = getelementptr inbounds i8, ptr %.4327379, i64 %i.an ; 3 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !18
  %i.la = zext i8 %i.kz to i16
  %i.lb = getelementptr i8, ptr %i.ky, i64 2      ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !18
  %i.ld = zext i8 %i.lc to i16
  %i.le = add nuw nsw i16 %i.ku, 2
  %i.lf = add nuw nsw i16 %i.le, %i.kx
  %i.lg = add nuw nsw i16 %i.lf, %i.la
  %i.lh = add nuw nsw i16 %i.lg, %i.ld
  %i.li = lshr i16 %i.lh, 2
  %i.lj = getelementptr inbounds nuw i8, ptr %.4327379, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !18
  %i.ll = zext i8 %i.lk to i16
  %i.lm = getelementptr inbounds i8, ptr %.4327379, i64 %i.ao
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !18
  %i.lo = zext i8 %i.ln to i16
  %i.lp = getelementptr inbounds i8, ptr %.4327379, i64 %i.ap ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !18
  %i.lr = zext i8 %i.lq to i16
  %i.ls = getelementptr i8, ptr %i.ky, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !18
  %i.lu = zext i8 %i.lt to i16
  %i.lv = add nuw nsw i16 %i.ll, 2
  %i.lw = add nuw nsw i16 %i.lv, %i.lo
  %i.lx = add nuw nsw i16 %i.lw, %i.lr
  %i.ly = add nuw nsw i16 %i.lx, %i.lu
  %i.lz = lshr i16 %i.ly, 2
  %i.ma = getelementptr inbounds i8, ptr %.4327379, i64 %i.aq ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !18
  %i.mc = getelementptr inbounds i8, ptr %.4380, i64 -1
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !18
  %i.md = trunc nuw i16 %i.lz to i8
  store i8 %i.md, ptr %.4380, align 1, !tbaa !18
  %i.me = trunc nuw i16 %i.li to i8
  %i.mf = getelementptr inbounds nuw i8, ptr %.4380, i64 1
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.4380, i64 2
  store i8 -1, ptr %i.mg, align 1, !tbaa !18
  %i.mh = load i8, ptr %i.kv, align 1, !tbaa !18
  %i.mi = zext i8 %i.mh to i16
  %i.mj = load i8, ptr %i.lb, align 1, !tbaa !18
  %i.mk = zext i8 %i.mj to i16
  %i.ml = add nuw nsw i16 %i.mi, 1
  %i.mm = add nuw nsw i16 %i.ml, %i.mk
  %i.mn = lshr i16 %i.mm, 1
  %i.mo = load i8, ptr %i.ma, align 1, !tbaa !18
  %i.mp = zext i8 %i.mo to i16
  %i.mq = getelementptr inbounds i8, ptr %.4327379, i64 %i.at
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !18
  %i.ms = zext i8 %i.mr to i16
  %i.mt = add nuw nsw i16 %i.mp, 1
  %i.mu = add nuw nsw i16 %i.mt, %i.ms
  %i.mv = lshr i16 %i.mu, 1
  %i.mw = trunc nuw i16 %i.mv to i8
  %i.mx = getelementptr inbounds nuw i8, ptr %.4380, i64 3
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !18
  %i.my = load i8, ptr %i.lp, align 1, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %.4380, i64 4
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !18
  %i.na = trunc nuw i16 %i.mn to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %.4380, i64 5
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %.4380, i64 6
  store i8 -1, ptr %i.nc, align 1, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.4380, i64 %i.au ; 2 uses
  %.not347 = icmp ugt ptr %i.kv, %i.dr
  br i1 %.not347, label %.loopexit, label %.lr.ph, !llvm.loop !163

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph385, %.lr.ph391, %.lr.ph397, %.preheader376, %.preheader374, %.preheader372, %.preheader
  %.5328 = phi ptr [ %i.ik, %.lr.ph385 ], [ %i.du, %.lr.ph397 ], [ %i.gc, %.lr.ph391 ], [ %.0323, %.preheader ], [ %.0323, %.preheader372 ], [ %.0323, %.preheader374 ], [ %.0323, %.preheader376 ], [ %i.kv, %.lr.ph ] ; 8 uses
  %.5 = phi ptr [ %i.ks, %.lr.ph385 ], [ %i.fz, %.lr.ph397 ], [ %i.ih, %.lr.ph391 ], [ %.0, %.preheader ], [ %.0, %.preheader372 ], [ %.0, %.preheader374 ], [ %.0, %.preheader376 ], [ %i.nd, %.lr.ph ] ; 4 uses
  %i.ne = icmp ult ptr %.5328, %i.ay
  br i1 %i.ne, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.nf = load i8, ptr %.5328, align 1, !tbaa !18
  %i.ng = zext i8 %i.nf to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %.5328, i64 2
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !18
  %i.nj = zext i8 %i.ni to i16
  %i.nk = getelementptr inbounds i8, ptr %.5328, i64 %i.an ; 3 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !18
  %i.nm = zext i8 %i.nl to i16
  %i.nn = getelementptr i8, ptr %i.nk, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i16
  %i.nq = add nuw nsw i16 %i.ng, 2
  %i.nr = add nuw nsw i16 %i.nq, %i.nj
  %i.ns = add nuw nsw i16 %i.nr, %i.nm
  %i.nt = add nuw nsw i16 %i.ns, %i.np
  %i.nu = lshr i16 %i.nt, 2
  %i.nv = getelementptr inbounds nuw i8, ptr %.5328, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !18
  %i.nx = zext i8 %i.nw to i16
  %i.ny = getelementptr inbounds i8, ptr %.5328, i64 %i.ao
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !18
  %i.oa = zext i8 %i.nz to i16
  %i.ob = getelementptr inbounds i8, ptr %.5328, i64 %i.ap
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !18
  %i.od = zext i8 %i.oc to i16
  %i.oe = getelementptr i8, ptr %i.nk, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !18
  %i.og = zext i8 %i.of to i16
  %i.oh = add nuw nsw i16 %i.nx, 2
  %i.oi = add nuw nsw i16 %i.oh, %i.oa
  %i.oj = add nuw nsw i16 %i.oi, %i.od
  %i.ok = add nuw nsw i16 %i.oj, %i.og
  %i.ol = lshr i16 %i.ok, 2
  %i.om = trunc nuw i16 %i.nu to i8
  %i.on = sub nsw i32 0, %.1334404
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %.5, i64 %i.oo
  store i8 %i.om, ptr %i.op, align 1, !tbaa !18
  %i.oq = trunc nuw i16 %i.ol to i8
  store i8 %i.oq, ptr %.5, align 1, !tbaa !18
  %i.or = getelementptr inbounds i8, ptr %.5328, i64 %i.aq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !18
  %i.ot = sext i32 %.1334404 to i64
  %i.ou = getelementptr inbounds i8, ptr %.5, i64 %i.ot
  store i8 %i.os, ptr %i.ou, align 1, !tbaa !18
  br i1 %i.ar, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ov = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 -1, ptr %i.ov, align 1, !tbaa !18
  br label %bb.p

bb.n:                                             ; preds = %bb.m, %.loopexit
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ow = getelementptr inbounds i8, ptr %.0336402, i64 -1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !18
  %i.oy = getelementptr inbounds i8, ptr %.0336402, i64 -4
  store i8 %i.ox, ptr %i.oy, align 1, !tbaa !18
  %i.oz = load i8, ptr %.0336402, align 1, !tbaa !18
  %i.pa = getelementptr inbounds i8, ptr %.0336402, i64 -3
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.0336402, i64 1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !18
  %i.pd = getelementptr inbounds i8, ptr %.0336402, i64 -2
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !18
  %i.pe = load i32, ptr %i.al, align 8, !tbaa !166
  %i.pf = mul nsw i32 %i.pe, 3
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr i8, ptr %.0336402, i64 %i.pg ; 2 uses
  %i.pi = getelementptr i8, ptr %i.ph, i64 -4
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !18
  %i.pk = getelementptr i8, ptr %i.ph, i64 -1
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !18
  %i.pl = load i32, ptr %i.al, align 8, !tbaa !166
  %i.pm = mul nsw i32 %i.pl, 3
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr i8, ptr %.0336402, i64 %i.pn ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 -3
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !18
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !18
  br label %bb.q

bb.p:                                             ; preds = %.thread, %bb.n
  %i.pr = getelementptr inbounds i8, ptr %.0336402, i64 -1
  %i.ps = getelementptr inbounds i8, ptr %.0336402, i64 -5
  %i.pt = load <4 x i8>, ptr %i.pr, align 1, !tbaa !18
  store <4 x i8> %i.pt, ptr %i.ps, align 1, !tbaa !18
  %i.pu = load i32, ptr %i.al, align 8, !tbaa !166
  %i.pv = mul nsw i32 %i.pu, %i.e
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr i8, ptr %.0336402, i64 %i.pw ; 2 uses
  %i.py = getelementptr i8, ptr %i.px, i64 -5
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !18
  %i.qa = getelementptr i8, ptr %i.px, i64 -1
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !18
  %i.qb = load i32, ptr %i.al, align 8, !tbaa !166
  %i.qc = mul nsw i32 %i.qb, %i.e
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr i8, ptr %.0336402, i64 %i.qd ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 -4
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !18
  store i8 %i.qg, ptr %i.qe, align 1, !tbaa !18
  %i.qh = load i32, ptr %i.al, align 8, !tbaa !166
  %i.qi = mul nsw i32 %i.qh, %i.e
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr i8, ptr %.0336402, i64 %i.qj ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 -3
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !18
  %i.qn = getelementptr i8, ptr %i.qk, i64 1
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink442 = phi i64 [ 2, %bb.p ], [ 1, %bb.o ]
  %i.qo = load i32, ptr %i.al, align 8, !tbaa !166
  %i.qp = mul nsw i32 %i.qo, %i.e
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr i8, ptr %.0336402, i64 %i.qq ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 -2
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !18
  %i.qu = getelementptr i8, ptr %i.qr, i64 %.sink442
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !18
  %i.qv = sub nsw i32 0, %.1334404
  %i.qw = zext i1 %.not344 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.e, %bb.q
  %.2335 = phi i32 [ %i.qv, %bb.q ], [ %.1334404, %bb.e ], [ %.1334404, %bb.d ]
  %.2332 = phi i32 [ %i.qw, %bb.q ], [ %.1331405, %bb.e ], [ %.1331405, %bb.d ]
  %i.qx = getelementptr inbounds i8, ptr %.0337400, i64 %i.ao
  %i.qy = getelementptr inbounds i8, ptr %.0336402, i64 %i.av
  %i.qz = add nsw i32 %.0329406, 1                ; 2 uses
  %i.ra = load i32, ptr %i.h, align 4, !tbaa !27
  %i.rb = icmp slt i32 %i.qz, %i.ra
  br i1 %i.rb, label %bb.b, label %._crit_edge, !llvm.loop !164
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEED2Ev(ptr noundef nonnull align 8 dead_on_return(444) dereferenceable(444) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEED0Ev(ptr noundef nonnull align 8 dereferenceable(444) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #16, !inline_history !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #16, !inline_history !35
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(444) %0) #16, !inline_history !35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18Bayer2Gray_InvokerIhNS_24SIMDBayerInterpolator_8uEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(444) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !26     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.i = shl i64 %i.h, 32                         ; 2 uses
  %sext = add i64 %i.i, 4294967296
  %i.j = ashr exact i64 %sext, 32
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  %i.l = trunc i64 %i.h to i32
  %i.m = mul nsw i32 %i.a, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = mul nsw i32 %i.a, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.v
  %i.x = and i32 %i.a, 1
  %.not = icmp eq i32 %i.x, 0                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not117 = icmp eq i32 %i.z, 0
  %i.aa = zext i1 %.not117 to i32
  %.0113 = select i1 %.not, i32 %i.z, i32 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %.0145 = select i1 %.not, i32 %i.ac, i32 %i.ae
  %.0148 = select i1 %.not, i32 %i.ae, i32 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.ag = shl nsw i32 %i.t, 1
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %sext119 = shl i64 %i.s, 32                     ; 4 uses
  %i.ai = ashr exact i64 %sext119, 32             ; 4 uses
  %sext120 = add i64 %sext119, 8589934592
  %i.aj = ashr exact i64 %sext120, 32             ; 3 uses
  %sext121 = add i64 %sext119, 4294967296
  %i.ak = ashr exact i64 %sext121, 32             ; 3 uses
  %sext129 = add i64 %sext119, 12884901888
  %i.al = ashr exact i64 %sext129, 32
  %i.am = ashr exact i64 %i.i, 32
  br label %bb.b

._crit_edge164:                                   ; preds = %bb.j, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph163, %bb.j
  %.0112161 = phi i32 [ %i.a, %.lr.ph163 ], [ %i.gf, %bb.j ]
  %.1114160 = phi i32 [ %.0113, %.lr.ph163 ], [ %.2, %bb.j ] ; 2 uses
  %.0115159 = phi ptr [ %i.o, %.lr.ph163 ], [ %i.gh, %bb.j ] ; 9 uses
  %.0116157 = phi ptr [ %i.w, %.lr.ph163 ], [ %i.gg, %bb.j ] ; 8 uses
  %.1146156 = phi i32 [ %.0145, %.lr.ph163 ], [ %.2147, %bb.j ] ; 6 uses
  %.1149155 = phi i32 [ %.0148, %.lr.ph163 ], [ %.2150, %bb.j ] ; 6 uses
  %i.an = load i32, ptr %i.af, align 4, !tbaa !170 ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.0116157, i64 %i.ao ; 2 uses
  %i.aq = icmp slt i32 %i.an, 1
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds i8, ptr %.0115159, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !18
  %i.as = getelementptr inbounds i8, ptr %.0115159, i64 -1
  store i8 0, ptr %i.as, align 1, !tbaa !18
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.not118 = icmp eq i32 %.1114160, 0             ; 2 uses
  br i1 %.not118, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.0116157, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr i8, ptr %.0116157, i64 %i.ah
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.az, %i.av
  %i.bb = mul nsw i32 %i.ba, %.1146156
  %i.bc = getelementptr inbounds i8, ptr %.0116157, i64 %i.ai
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds i8, ptr %.0116157, i64 %i.aj
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.bh, %i.be
  %i.bj = mul nsw i32 %i.bi, %.1149155
  %i.bk = getelementptr inbounds i8, ptr %.0116157, i64 %i.ak
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bm, 19234
  %i.bo = add i32 %i.bb, 16384
  %i.bp = add i32 %i.bo, %i.bj
  %i.bq = add i32 %i.bp, %i.bn
  %i.br = lshr i32 %i.bq, 15
  %i.bs = trunc i32 %i.br to i8
  store i8 %i.bs, ptr %.0115159, align 1, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.0115159, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0110 = phi ptr [ %i.at, %bb.e ], [ %.0116157, %bb.d ] ; 3 uses
  %.0 = phi ptr [ %i.bt, %bb.e ], [ %.0115159, %bb.d ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.ap, i64 -2 ; 2 uses
  %.not122151 = icmp ugt ptr %.0110, %i.bu
  br i1 %.not122151, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bv = shl nsw i32 %.1149155, 2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.1153 = phi ptr [ %.0, %.lr.ph ], [ %i.eg, %bb.g ] ; 3 uses
  %.1111152 = phi ptr [ %.0110, %.lr.ph ], [ %i.by, %bb.g ] ; 8 uses
  %i.bw = load i8, ptr %.1111152, align 1, !tbaa !18
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.1111152, i64 2 ; 5 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.ca, %i.bx
  %i.cc = getelementptr inbounds i8, ptr %.1111152, i64 %i.ah ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.cb, %i.ce
  %i.cg = getelementptr i8, ptr %i.cc, i64 2      ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cf, %i.ci
  %i.ck = mul nsw i32 %i.cj, %.1146156
  %i.cl = getelementptr inbounds nuw i8, ptr %.1111152, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds i8, ptr %.1111152, i64 %i.ai
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !18
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = getelementptr inbounds i8, ptr %.1111152, i64 %i.aj ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
  %i.cu = zext i8 %i.ct to i32
end_hunk_0
