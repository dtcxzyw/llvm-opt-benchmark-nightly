Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc__build_clumps_for_cluster:bb.a
  %i.oa = getelementptr i8, ptr %0, i64 %i.mw
  %scevgep.29 = getelementptr i8, ptr %i.oa, i64 190484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.29, ptr noundef nonnull align 2 dereferenceable(64) %i.dx, i64 64, i1 false), !tbaa !10
  %i.ob = getelementptr i8, ptr %0, i64 %i.mw
  %scevgep.30 = getelementptr i8, ptr %i.ob, i64 192532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.30, ptr noundef nonnull align 2 dereferenceable(64) %i.dz, i64 64, i1 false), !tbaa !10
  %i.oc = getelementptr i8, ptr %0, i64 %i.mw
  %scevgep.31 = getelementptr i8, ptr %i.oc, i64 194580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.31, ptr noundef nonnull align 2 dereferenceable(64) %i.eb, i64 64, i1 false), !tbaa !10
  %i.od = and i32 %.9317, 255
  %i.oe = load i16, ptr %i.kt, align 4, !tbaa !56
  %i.of = sext i16 %i.oe to i32                   ; 2 uses
  %i.og = icmp slt i32 %i.od, %i.of
  br i1 %i.og, label %.lr.ph379, label %._crit_edge

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv420 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next421.7, %bb.ap ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.ap ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i8 0, ptr %i.oi, align 4, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 5
  store i8 0, ptr %i.oj, align 1, !tbaa !23
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i8 0, ptr %i.ol, align 4, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 13
  store i8 0, ptr %i.om, align 1, !tbaa !23
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 20
  store i8 0, ptr %i.oo, align 4, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 21
  store i8 0, ptr %i.op, align 1, !tbaa !23
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 28
  store i8 0, ptr %i.or, align 4, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 29
  store i8 0, ptr %i.os, align 1, !tbaa !23
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  store i8 0, ptr %i.ou, align 4, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 37
  store i8 0, ptr %i.ov, align 1, !tbaa !23
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 44
  store i8 0, ptr %i.ox, align 4, !tbaa !18
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 45
  store i8 0, ptr %i.oy, align 1, !tbaa !23
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 52
  store i8 0, ptr %i.pa, align 4, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 53
  store i8 0, ptr %i.pb, align 1, !tbaa !23
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv420 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  store i8 0, ptr %i.pd, align 4, !tbaa !18
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 61
  store i8 0, ptr %i.pe, align 1, !tbaa !23
  %indvars.iv.next421.7 = add nuw nsw i64 %indvars.iv420, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader347.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !54

.lr.ph379:                                        ; preds = %.preheader347
  %i.pf = shl i32 %1, 12
  %i.pg = and i32 %i.pf, 4190208
  %i.ph = shl i32 %2, 22
  %i.pi = or disjoint i32 %i.pg, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %.mask = and i32 %.9317, 255
  %i.pk = zext nneg i32 %.mask to i64
  %i.pl = zext nneg i32 %i.of to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph379, %bb.aq
  %indvars.iv431 = phi i64 [ %i.pk, %.lr.ph379 ], [ %indvars.iv.next432, %bb.aq ] ; 3 uses
  %i.pm = trunc nuw nsw i64 %indvars.iv431 to i32
  %i.pn = and i32 %i.pm, 4095
  %i.po = or disjoint i32 %i.pn, %i.pi
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv431
  store i32 %i.po, ptr %i.pp, align 4, !tbaa !11
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %i.pq = icmp samesign ult i64 %indvars.iv.next432, %i.pl
  br i1 %i.pq, label %bb.aq, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.aq, %.preheader347
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  store i8 1, ptr %i.pr, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbcc_update_batch_begin(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.a, align 4, !tbaa !24
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc_update_batch_end(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !24
  tail call void @stbcc__build_connected_components_for_clumps(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @stbcc_grid_sizeof() local_unnamed_addr #6 {
bb.a:
  ret i64 6688788
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc_init_grid(ptr nofree noundef captures(none) initializes((0, 20)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  store i32 %2, ptr %0, align 4, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !76
  %i.b = ashr i32 %2, 5                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !21
  %i.d = ashr i32 %3, 5                           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !24
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.preheader65.lr.ph, label %.preheader63

.preheader65.lr.ph:                               ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0
  %i.i = getelementptr i8, ptr %0, i64 20         ; 2 uses
  br i1 %i.h, label %.preheader65.preheader, label %.preheader63

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %i.k = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %i.l = add nsw i64 %i.j, -1                     ; 3 uses
  %i.m = lshr i64 %i.l, 3                         ; 3 uses
  %i.n = and i64 %i.l, -8
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 1    ; 8 uses
  %i.p = shl nuw nsw i64 %wide.trip.count, 7
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %scevgep168 = getelementptr i8, ptr %i.r, i64 -107
  %i.s = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %i.t = insertelement <8 x ptr> poison, ptr %i.i, i64 0
  %i.u = shufflevector <8 x ptr> %i.t, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.v = insertelement <8 x ptr> poison, ptr %scevgep168, i64 0
  %i.w = shufflevector <8 x ptr> %i.v, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %2, 33
  %i.x = trunc i64 %i.m to i32                    ; 2 uses
  %mul.result = shl i32 %i.x, 3
  %mul.overflow = icmp ugt i32 %i.x, 536870911
  %i.y = icmp ugt i64 %i.l, 34359738367
  %i.z = insertelement <8 x i32> poison, i32 %mul.result, i64 0
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op212 = add <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.aa
  %op.rdx200 = or i1 %i.y, %mul.overflow
  %min.iters.check196 = icmp ult i32 %2, 129
  %i.ab = and i64 %i.s, 15                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 16, i64 %i.ab      ; 2 uses
  %n.vec = sub nsw i64 %i.s, %i.ad                ; 3 uses
  %i.ae = shl i64 %n.vec, 3
  %min.epilog.iters.check = icmp samesign ult i64 %i.ad, 5
  %i.af = and i64 %i.s, 3                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %i.af
  %n.vec197 = sub nsw i64 %i.s, %i.ah             ; 2 uses
  %i.ai = shl i64 %n.vec197, 3
  br label %iter.check

iter.check:                                       ; preds = %.preheader65.preheader, %._crit_edge
  %indvars.iv83 = phi i64 [ 0, %.preheader65.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 5 uses
  %i.aj = trunc i64 %indvars.iv83 to i32
  %i.ak = mul nuw nsw i64 %indvars.iv83, %i.k     ; 21 uses
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %indvars.iv83 ; 3 uses
  br i1 %min.iters.check, label %.preheader64.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.am = trunc i64 %indvars.iv83 to i32
  %i.an = mul i32 %2, %i.am
  %i.ao = insertelement <8 x i32> poison, i32 %i.an, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aq = add <8 x i32> %i.ap, <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %.reass213 = add <8 x i32> %i.ap, %invariant.op212
  %i.ar = icmp slt <8 x i32> %.reass213, %i.aq
  %i.as = bitcast <8 x i1> %i.ar to i8
  %i.at = icmp ne i8 %i.as, 0
  %op.rdx201 = or i1 %i.at, %op.rdx200
  br i1 %op.rdx201, label %.preheader64.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.au = mul i32 %2, %i.aj                       ; 8 uses
  %4 = add i32 %i.au, 7
  %i.av = sext i32 %4 to i64                      ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %scevgep, i64 %i.av
  %i.ay = add i32 %i.au, 6
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %i.az
  %i.bb = getelementptr i8, ptr %scevgep, i64 %i.az
  %i.bc = add i32 %i.au, 5
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %scevgep, i64 %i.bd
  %i.bg = add i32 %i.au, 4
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %scevgep, i64 %i.bh
  %i.bk = add i32 %i.au, 3
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr i8, ptr %1, i64 %i.bl
  %i.bn = getelementptr i8, ptr %scevgep, i64 %i.bl
  %i.bo = add i32 %i.au, 2
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %scevgep, i64 %i.bp
  %i.bs = add i32 %i.au, 1
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  %i.bv = getelementptr i8, ptr %scevgep, i64 %i.bt
  %i.bw = sext i32 %i.au to i64                   ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %scevgep, i64 %i.bw
  %i.bz = insertelement <8 x ptr> poison, ptr %i.ax, i64 0
  %i.ca = insertelement <8 x ptr> %i.bz, ptr %i.bb, i64 1
  %i.cb = insertelement <8 x ptr> %i.ca, ptr %i.bf, i64 2
  %i.cc = insertelement <8 x ptr> %i.cb, ptr %i.bj, i64 3
  %i.cd = insertelement <8 x ptr> %i.cc, ptr %i.bn, i64 4
  %i.ce = insertelement <8 x ptr> %i.cd, ptr %i.br, i64 5
  %i.cf = insertelement <8 x ptr> %i.ce, ptr %i.bv, i64 6
  %i.cg = insertelement <8 x ptr> %i.cf, ptr %i.by, i64 7
  %i.ch = icmp ult <8 x ptr> %i.u, %i.cg
  %i.ci = insertelement <8 x ptr> poison, ptr %i.aw, i64 0
  %i.cj = insertelement <8 x ptr> %i.ci, ptr %i.ba, i64 1
  %i.ck = insertelement <8 x ptr> %i.cj, ptr %i.be, i64 2
  %i.cl = insertelement <8 x ptr> %i.ck, ptr %i.bi, i64 3
  %i.cm = insertelement <8 x ptr> %i.cl, ptr %i.bm, i64 4
  %i.cn = insertelement <8 x ptr> %i.cm, ptr %i.bq, i64 5
  %i.co = insertelement <8 x ptr> %i.cn, ptr %i.bu, i64 6
  %i.cp = insertelement <8 x ptr> %i.co, ptr %i.bx, i64 7
  %i.cq = icmp ult <8 x ptr> %i.cp, %i.w
  %i.cr = and <8 x i1> %i.ch, %i.cq
  %i.cs = bitcast <8 x i1> %i.cr to i8
  %.not = icmp eq i8 %i.cs, 0
  br i1 %.not, label %vector.main.loop.iter.check, label %.preheader64.preheader

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ct = shl nuw i64 %index, 3                   ; 16 uses
  %i.cu = or disjoint i64 %i.ct, 8
  %i.cv = or disjoint i64 %i.ct, 16
  %i.cw = or disjoint i64 %i.ct, 24
  %i.cx = or disjoint i64 %i.ct, 32
  %i.cy = or disjoint i64 %i.ct, 40
  %i.cz = or disjoint i64 %i.ct, 48
  %i.da = or disjoint i64 %i.ct, 56
  %i.db = or disjoint i64 %i.ct, 64
  %i.dc = or disjoint i64 %i.ct, 72
  %i.dd = or disjoint i64 %i.ct, 80
  %i.de = or disjoint i64 %i.ct, 88
  %i.df = or disjoint i64 %i.ct, 96
  %i.dg = or disjoint i64 %i.ct, 104
  %i.dh = or disjoint i64 %i.ct, 112
  %i.di = or disjoint i64 %i.ct, 120
  %i.dj = add nuw nsw i64 %i.ct, %i.ak
  %i.dk = add nuw nsw i64 %i.cu, %i.ak
  %i.dl = add nuw nsw i64 %i.cv, %i.ak
  %i.dm = add nuw nsw i64 %i.cw, %i.ak
  %i.dn = add nuw nsw i64 %i.cx, %i.ak
  %i.do = add nuw nsw i64 %i.cy, %i.ak
  %i.dp = add nuw nsw i64 %i.cz, %i.ak
  %i.dq = add nuw nsw i64 %i.da, %i.ak
  %i.dr = add nuw nsw i64 %i.db, %i.ak
  %i.ds = add nuw nsw i64 %i.dc, %i.ak
  %i.dt = add nuw nsw i64 %i.dd, %i.ak
  %i.du = add nuw nsw i64 %i.de, %i.ak
  %i.dv = add nuw nsw i64 %i.df, %i.ak
  %i.dw = add nuw nsw i64 %i.dg, %i.ak
  %i.dx = add nuw nsw i64 %i.dh, %i.ak
  %i.dy = add nuw nsw i64 %i.di, %i.ak
  %i.dz = shl i64 %i.dj, 32                       ; 8 uses
  %i.ea = shl i64 %i.dk, 32                       ; 8 uses
  %i.eb = shl i64 %i.dl, 32                       ; 8 uses
  %i.ec = shl i64 %i.dm, 32                       ; 8 uses
  %i.ed = shl i64 %i.dn, 32                       ; 8 uses
  %i.ee = shl i64 %i.do, 32                       ; 8 uses
  %i.ef = shl i64 %i.dp, 32                       ; 8 uses
  %i.eg = shl i64 %i.dq, 32                       ; 8 uses
  %i.eh = shl i64 %i.dr, 32                       ; 8 uses
  %i.ei = shl i64 %i.ds, 32                       ; 8 uses
  %i.ej = shl i64 %i.dt, 32                       ; 8 uses
  %i.ek = shl i64 %i.du, 32                       ; 8 uses
  %i.el = shl i64 %i.dv, 32                       ; 8 uses
  %i.em = shl i64 %i.dw, 32                       ; 8 uses
  %i.en = shl i64 %i.dx, 32                       ; 8 uses
  %i.eo = shl i64 %i.dy, 32                       ; 8 uses
  %i.ep = ashr exact i64 %i.dz, 32
  %i.eq = ashr exact i64 %i.ea, 32
  %i.er = ashr exact i64 %i.eb, 32
  %i.es = ashr exact i64 %i.ec, 32
  %i.et = ashr exact i64 %i.ed, 32
  %i.eu = ashr exact i64 %i.ee, 32
  %i.ev = ashr exact i64 %i.ef, 32
  %i.ew = ashr exact i64 %i.eg, 32
  %i.ex = ashr exact i64 %i.eh, 32
  %i.ey = ashr exact i64 %i.ei, 32
  %i.ez = ashr exact i64 %i.ej, 32
  %i.fa = ashr exact i64 %i.ek, 32
  %i.fb = ashr exact i64 %i.el, 32
  %i.fc = ashr exact i64 %i.em, 32
  %i.fd = ashr exact i64 %i.en, 32
  %i.fe = ashr exact i64 %i.eo, 32
  %i.ff = getelementptr inbounds i8, ptr %1, i64 %i.ep
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %i.eq
  %i.fh = getelementptr inbounds i8, ptr %1, i64 %i.er
  %i.fi = getelementptr inbounds i8, ptr %1, i64 %i.es
  %i.fj = getelementptr inbounds i8, ptr %1, i64 %i.et
  %i.fk = getelementptr inbounds i8, ptr %1, i64 %i.eu
  %i.fl = getelementptr inbounds i8, ptr %1, i64 %i.ev
  %i.fm = getelementptr inbounds i8, ptr %1, i64 %i.ew
  %i.fn = getelementptr inbounds i8, ptr %1, i64 %i.ex
  %i.fo = getelementptr inbounds i8, ptr %1, i64 %i.ey
  %i.fp = getelementptr inbounds i8, ptr %1, i64 %i.ez
  %i.fq = getelementptr inbounds i8, ptr %1, i64 %i.fa
  %i.fr = getelementptr inbounds i8, ptr %1, i64 %i.fb
  %i.fs = getelementptr inbounds i8, ptr %1, i64 %i.fc
  %i.ft = getelementptr inbounds i8, ptr %1, i64 %i.fd
  %i.fu = getelementptr inbounds i8, ptr %1, i64 %i.fe
  %i.fv = load i8, ptr %i.ff, align 1, !tbaa !11, !alias.scope !77
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !11, !alias.scope !77
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !11, !alias.scope !77
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !11, !alias.scope !77
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !11, !alias.scope !77
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !11, !alias.scope !77
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !11, !alias.scope !77
  %i.gc = load i8, ptr %i.fm, align 1, !tbaa !11, !alias.scope !77
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !11, !alias.scope !77
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !11, !alias.scope !77
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !11, !alias.scope !77
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !11, !alias.scope !77
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !11, !alias.scope !77
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !11, !alias.scope !77
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !11, !alias.scope !77
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !11, !alias.scope !77
  %i.gl = insertelement <16 x i8> poison, i8 %i.fv, i64 0
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 1
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 2
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 3
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 4
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 5
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 6
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 7
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 8
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 9
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 10
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 11
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 12
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 13
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 14
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 15
  %i.hb = icmp eq <16 x i8> %i.ha, zeroinitializer
  %i.hc = zext <16 x i1> %i.hb to <16 x i8>
  %i.hd = add i64 %i.dz, 4294967296
  %i.he = add i64 %i.ea, 4294967296
  %i.hf = add i64 %i.eb, 4294967296
  %i.hg = add i64 %i.ec, 4294967296
  %i.hh = add i64 %i.ed, 4294967296
  %i.hi = add i64 %i.ee, 4294967296
  %i.hj = add i64 %i.ef, 4294967296
  %i.hk = add i64 %i.eg, 4294967296
  %i.hl = add i64 %i.eh, 4294967296
  %i.hm = add i64 %i.ei, 4294967296
  %i.hn = add i64 %i.ej, 4294967296
  %i.ho = add i64 %i.ek, 4294967296
  %i.hp = add i64 %i.el, 4294967296
  %i.hq = add i64 %i.em, 4294967296
  %i.hr = add i64 %i.en, 4294967296
  %i.hs = add i64 %i.eo, 4294967296
  %i.ht = ashr exact i64 %i.hd, 32
  %i.hu = ashr exact i64 %i.he, 32
  %i.hv = ashr exact i64 %i.hf, 32
  %i.hw = ashr exact i64 %i.hg, 32
  %i.hx = ashr exact i64 %i.hh, 32
  %i.hy = ashr exact i64 %i.hi, 32
  %i.hz = ashr exact i64 %i.hj, 32
  %i.ia = ashr exact i64 %i.hk, 32
  %i.ib = ashr exact i64 %i.hl, 32
  %i.ic = ashr exact i64 %i.hm, 32
  %i.id = ashr exact i64 %i.hn, 32
  %i.ie = ashr exact i64 %i.ho, 32
  %i.if = ashr exact i64 %i.hp, 32
  %i.ig = ashr exact i64 %i.hq, 32
  %i.ih = ashr exact i64 %i.hr, 32
  %i.ii = ashr exact i64 %i.hs, 32
  %i.ij = getelementptr inbounds i8, ptr %1, i64 %i.ht
  %i.ik = getelementptr inbounds i8, ptr %1, i64 %i.hu
  %i.il = getelementptr inbounds i8, ptr %1, i64 %i.hv
  %i.im = getelementptr inbounds i8, ptr %1, i64 %i.hw
  %i.in = getelementptr inbounds i8, ptr %1, i64 %i.hx
  %i.io = getelementptr inbounds i8, ptr %1, i64 %i.hy
  %i.ip = getelementptr inbounds i8, ptr %1, i64 %i.hz
  %i.iq = getelementptr inbounds i8, ptr %1, i64 %i.ia
  %i.ir = getelementptr inbounds i8, ptr %1, i64 %i.ib
  %i.is = getelementptr inbounds i8, ptr %1, i64 %i.ic
  %i.it = getelementptr inbounds i8, ptr %1, i64 %i.id
  %i.iu = getelementptr inbounds i8, ptr %1, i64 %i.ie
  %i.iv = getelementptr inbounds i8, ptr %1, i64 %i.if
  %i.iw = getelementptr inbounds i8, ptr %1, i64 %i.ig
  %i.ix = getelementptr inbounds i8, ptr %1, i64 %i.ih
  %i.iy = getelementptr inbounds i8, ptr %1, i64 %i.ii
  %i.iz = load i8, ptr %i.ij, align 1, !tbaa !11, !alias.scope !78
  %i.ja = load i8, ptr %i.ik, align 1, !tbaa !11, !alias.scope !78
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !11, !alias.scope !78
  %i.jc = load i8, ptr %i.im, align 1, !tbaa !11, !alias.scope !78
  %i.jd = load i8, ptr %i.in, align 1, !tbaa !11, !alias.scope !78
  %i.je = load i8, ptr %i.io, align 1, !tbaa !11, !alias.scope !78
  %i.jf = load i8, ptr %i.ip, align 1, !tbaa !11, !alias.scope !78
  %i.jg = load i8, ptr %i.iq, align 1, !tbaa !11, !alias.scope !78
end_hunk_0
begin_hunk_1_@stbcc__remove_clump_connection:bb.a
.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i16 @stbcc__incluster_find(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [64 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.03.0.copyload = load i8, ptr %i.d, align 2, !tbaa !11 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !11 ; 2 uses
  %i.e = zext i8 %.sroa.03.0.copyload to i32      ; 2 uses
  %i.f = icmp eq i32 %1, %i.e
  %i.g = zext i8 %.sroa.6.0.copyload to i32       ; 2 uses
  %i.h = icmp eq i32 %2, %i.g
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %.sroa.6.0.copyload to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i16 @stbcc__incluster_find(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.g) ; 3 uses
  store i16 %i.j, ptr %i.d, align 2, !tbaa !11
  %.sroa.016.0.extract.trunc = trunc i16 %i.j to i8
  %.sroa.3.0.extract.shift = lshr i16 %i.j, 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.0 = phi i8 [ %.sroa.03.0.copyload, %bb.b ], [ %.sroa.016.0.extract.trunc, %bb.c ]
  %.sroa.3.0 = phi i16 [ %i.i, %bb.b ], [ %.sroa.3.0.extract.shift, %bb.c ]
  %.sroa.3.0.insert.shift = shl nuw i16 %.sroa.3.0, 8
  %.sroa.016.0.insert.ext = zext i8 %.sroa.016.0 to i16
  %.sroa.016.0.insert.insert = or disjoint i16 %.sroa.3.0.insert.shift, %.sroa.016.0.insert.ext
  ret i16 %.sroa.016.0.insert.insert
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__incluster_union(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i16 @stbcc__incluster_find(ptr noundef %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %.sroa.53.0.extract.shift = lshr i16 %i.a, 8    ; 2 uses
  %i.b = tail call i16 @stbcc__incluster_find(ptr noundef %0, i32 noundef %3, i32 noundef %4) ; 3 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.b, 8
  %i.c = xor i16 %i.b, %i.a
  %i.d = and i16 %i.c, 255
  %i.e = icmp eq i16 %i.d, 0
  %i.f = icmp eq i16 %.sroa.53.0.extract.shift, %.sroa.5.0.extract.shift
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.53.0.extract.trunc = zext nneg i16 %.sroa.53.0.extract.shift to i64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.53.0.extract.trunc
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  store i16 %i.b, ptr %i.j, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbcc__switch_root(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i16 %3) local_unnamed_addr #5 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i16 %3, 8
  %.sroa.3.0.extract.trunc = zext nneg i16 %.sroa.3.0.extract.shift to i64
  %i.a = trunc i32 %1 to i8                       ; 2 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.3.0.extract.trunc
  %i.c = and i16 %3, 255
  %i.d = zext nneg i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d ; 2 uses
  store i8 %i.a, ptr %i.e, align 2, !tbaa !26
  %i.f = trunc i32 %2 to i8                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !27
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [64 x i8], ptr %0, i64 %i.h
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.j ; 2 uses
  store i8 %i.a, ptr %i.k, align 2, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.f, ptr %i.l, align 1, !tbaa !27
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"", !9, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 4100}
!13 = !{!12, !5, i64 2}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7}
!17 = !{!16, !5, i64 6}
!18 = !{!16, !5, i64 4}
!19 = !{!12, !5, i64 3}
!20 = !{!"st_stbcc_grid", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 131092, !5, i64 2228244}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 12}
!23 = !{!16, !5, i64 5}
!24 = !{!20, !6, i64 16}
!25 = !{!"", !5, i64 0, !5, i64 1}
!26 = !{!25, !5, i64 0}
!27 = !{!25, !5, i64 1}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = !{!12, !9, i64 0}
!57 = distinct !{!57, i1 false, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !57}
!63 = distinct !{!63, !57}
!64 = distinct !{!64, !57}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !57}
!67 = distinct !{!67, !14, !87, !88}
!68 = distinct !{!68, !14, !87, !88}
!69 = distinct !{!69, !14, !87}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14, !90}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14, !90}
!75 = !{!20, !6, i64 0}
!76 = !{!20, !6, i64 4}
!77 = !{!58}
!78 = !{!59}
!79 = !{!60}
!80 = !{!61}
!81 = !{!62}
!82 = !{!63}
!83 = !{!64}
!84 = !{!65}
!85 = !{!66}
!86 = !{!65, !64, !63, !62, !61, !60, !59, !58}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !{!"branch_weights", i32 4, i32 12}
!90 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
