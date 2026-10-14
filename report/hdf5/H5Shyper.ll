Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 70
begin_hunk_0_@H5S__hyper_iter_next_block:bb.a
  %indvars.iv156 = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %indvars.iv.next157.1, %.lr.ph134 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %niter.next.1, %.lr.ph134 ]
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv156 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv156
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !18
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = add i64 %i.bt, %i.bo
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv156
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !18
  %i.bx = add i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv156
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !24
  %indvars.iv.next157 = or disjoint i64 %indvars.iv156, 1 ; 4 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.next157 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !51
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next157
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.cf = mul i64 %i.ce, %i.cc
  %i.cg = add i64 %i.cf, %i.ca
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next157
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !18
  %i.cj = add i64 %i.cg, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next157
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !24
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge135.loopexit.unr-lcssa, label %.lr.ph134, !llvm.loop !249

._crit_edge135.loopexit.unr-lcssa:                ; preds = %.lr.ph134
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %._crit_edge135, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %._crit_edge135.loopexit.unr-lcssa, %.lr.ph134.preheader
  %indvars.iv156.epil.init = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next157.1, %._crit_edge135.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod229 = trunc i32 %.0104186192 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv156.epil.init ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv156.epil.init
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !18
  %i.cr = mul i64 %i.cq, %i.co
  %i.cs = add i64 %i.cr, %i.cm
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv156.epil.init
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !18
  %i.cv = add i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv156.epil.init
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !24
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %.lr.ph134.epil.preheader, %._crit_edge135.loopexit.unr-lcssa, %._crit_edge164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !70 ; 6 uses
  %i.cz = add nsw i32 %i.cy, -1                   ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 6 uses
  %i.db = icmp sgt i32 %i.cy, 0
  br i1 %i.db, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.dc = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !59 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !65
  %i.dh = add i64 %i.dg, 1                        ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dc
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !18
  %.pre = load i64, ptr %i.df, align 8, !tbaa !65
  %.not.peel = icmp ugt i64 %i.dh, %.pre
  br i1 %.not.peel, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !64 ; 2 uses
  %.not108.peel = icmp eq ptr %i.dk, null
  br i1 %.not108.peel, label %bb.o, label %.loopexit150

bb.o:                                             ; preds = %bb.n
  %.not181 = icmp eq i32 %i.cy, 1
  br i1 %.not181, label %.critedge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.o
  %i.dl = add nsw i32 %i.cy, -2
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.peel.next, %bb.r
  %.0122 = phi i32 [ %i.dx, %bb.r ], [ %i.dl, %.lr.ph.peel.next ] ; 5 uses
  %i.dm = zext nneg i32 %.0122 to i64             ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dm ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !18
  %i.dr = add i64 %i.dq, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !18
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.pre163 = load i64, ptr %.phi.trans.insert162, align 8, !tbaa !65
  %.not = icmp ugt i64 %i.dr, %.pre163
  br i1 %.not, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !64 ; 2 uses
  %.not108 = icmp eq ptr %i.dt, null
  br i1 %.not108, label %bb.r, label %.loopexit150

.loopexit150:                                     ; preds = %bb.q, %bb.n
  %.lcssa147 = phi ptr [ %i.dk, %bb.n ], [ %i.dt, %bb.q ] ; 3 uses
  %.0122.lcssa144 = phi i32 [ %i.cz, %bb.n ], [ %.0122, %bb.q ]
  %.lcssa142 = phi i64 [ %i.dc, %bb.n ], [ %i.dm, %bb.q ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.lcssa142
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.lcssa142
  store ptr %.lcssa147, ptr %i.du, align 8, !tbaa !59
  %i.dw = load i64, ptr %.lcssa147, align 8, !tbaa !61
  store i64 %i.dw, ptr %i.dv, align 8, !tbaa !18
  br label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dx = add nsw i32 %.0122, -1
  %i.dy = icmp sgt i32 %.0122, 0
  br i1 %i.dy, label %bb.p, label %.critedge, !llvm.loop !250

.loopexit:                                        ; preds = %bb.p, %.loopexit150
  %.0122146 = phi i32 [ %.0122.lcssa144, %.loopexit150 ], [ %.0122, %bb.p ] ; 4 uses
  %.1100 = phi ptr [ %.lcssa147, %.loopexit150 ], [ %i.do, %bb.p ] ; 2 uses
  %i.dz = icmp slt i32 %.0122146, %i.cz
  br i1 %i.dz, label %.lr.ph125.preheader, label %.critedge

.lr.ph125.preheader:                              ; preds = %.loopexit
  %i.ea = zext nneg i32 %.0122146 to i64          ; 2 uses
  %i.eb = add nsw i32 %i.cy, -2
  %i.ec = sub i32 %.0122146, %i.cy
  %i.ed = and i32 %i.ec, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ed, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph125.prol, label %.lr.ph125.prol.loopexit

.lr.ph125.prol:                                   ; preds = %.lr.ph125.preheader
  %indvars.iv.next.prol = add nuw nsw i64 %i.ea, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1100, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !59 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next.prol
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !59
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !61
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.prol
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !18
  br label %.lr.ph125.prol.loopexit

.lr.ph125.prol.loopexit:                          ; preds = %.lr.ph125.prol, %.lr.ph125.preheader
  %indvars.iv.unr = phi i64 [ %i.ea, %.lr.ph125.preheader ], [ %indvars.iv.next.prol, %.lr.ph125.prol ]
  %.2123.unr = phi ptr [ %.1100, %.lr.ph125.preheader ], [ %i.eh, %.lr.ph125.prol ]
  %i.el = icmp eq i32 %i.eb, %.0122146
  br i1 %i.el, label %.critedge, label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.prol.loopexit, %.lr.ph125
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph125 ], [ %indvars.iv.unr, %.lr.ph125.prol.loopexit ] ; 2 uses
  %.2123 = phi ptr [ %i.ew, %.lr.ph125 ], [ %.2123.unr, %.lr.ph125.prol.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.2123, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !59 ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !59
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !61
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  store i64 %i.er, ptr %i.es, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !59 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next.1
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !59
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !18
  %i.fa = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.fb = icmp sgt i32 %i.cz, %i.fa
  br i1 %i.fb, label %.lr.ph125, label %.critedge, !llvm.loop !251

.critedge:                                        ; preds = %bb.r, %.lr.ph125.prol.loopexit, %.lr.ph125, %bb.m, %bb.o, %bb.l, %.loopexit, %._crit_edge135, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @H5S__hyper_iter_get_seq_list(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(none) %6) #8 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 18 uses
  %i.b = alloca [32 x i64], align 16              ; 6 uses
  %i.c = alloca [32 x i64], align 16              ; 5 uses
  %i.d = alloca [32 x i64], align 16              ; 9 uses
  %i.e = alloca [32 x i64], align 16              ; 7 uses
  %i.f = alloca [32 x i64], align 16              ; 5 uses
  %i.g = alloca [32 x i64], align 16              ; 15 uses
  %i.h = alloca [32 x i64], align 16              ; 5 uses
  %i.i = alloca [32 x i64], align 16              ; 6 uses
  %i.j = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = xor i1 %i.m, true
  %i.o = select i1 %i.k, i1 true, i1 %i.n
  br i1 %i.o, label %bb.b, label %.critedge147, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 30 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.r = load i8, ptr %i.q, align 4, !tbaa !24, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %._crit_edge361, label %bb.av

._crit_edge361:                                   ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq i32 %i.v, 0                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 3 uses
  %i.w = icmp uge i32 %i.v, %.pre
  %spec.select495 = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %.pre)
  %i.x = or i1 %.not, %i.w
  %i.y = select i1 %i.x, i64 272, i64 2352
  %.0121 = select i1 %.not, i32 %.pre, i32 %spec.select495 ; 6 uses
  %i.z = add i32 %.0121, -1
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 3 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.aa ; 6 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.ai = urem i64 %i.af, %i.ah                   ; 2 uses
  %.not137 = icmp eq i64 %i.ai, 0
  br i1 %.not137, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge361
  %.not138 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not138, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %.thread, label %bb.h

bb.e:                                             ; preds = %._crit_edge361
  %.phi.trans.insert363 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.pre364 = load i64, ptr %.phi.trans.insert363, align 8, !tbaa !42
  %i.am = icmp eq i64 %.pre364, 1
  br i1 %i.am, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !52
  %.neg = sub i64 %i.ae, %i.ac
  %i.ap = add i64 %.neg, %i.ao
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !52
  %i.as = sub i64 %i.ar, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0116 = phi i64 [ %i.ap, %.thread ], [ %i.as, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !86
  %. = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %2)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0116, i64 %.) ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %.not282 = icmp eq i32 %.0121, 0
  br i1 %.not282, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 2 uses
  %wide.trip.count = zext i32 %.0121 to i64       ; 3 uses
  %min.iters.check603 = icmp ult i32 %.0121, 4
  br i1 %min.iters.check603, label %scalar.ph602.preheader, label %vector.ph604

vector.ph604:                                     ; preds = %.lr.ph
  %n.vec605 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next616, %vector.body606 ] ; 4 uses
  %vec.phi608 = phi <2 x i64> [ zeroinitializer, %vector.ph604 ], [ %i.bj, %vector.body606 ]
  %vec.phi609 = phi <2 x i64> [ zeroinitializer, %vector.ph604 ], [ %i.bk, %vector.body606 ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index607 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load610 = load <2 x i64>, ptr %i.az, align 8, !tbaa !24
  %wide.load611 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index607 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load612 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !18
  %wide.load613 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !18
  %i.bd = add nsw <2 x i64> %wide.load612, %wide.load610
  %i.be = add nsw <2 x i64> %wide.load613, %wide.load611
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index607 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load614 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !18
  %wide.load615 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !18
  %i.bh = mul <2 x i64> %i.bd, %wide.load614
  %i.bi = mul <2 x i64> %i.be, %wide.load615
  %i.bj = add <2 x i64> %i.bh, %vec.phi608        ; 2 uses
  %i.bk = add <2 x i64> %i.bi, %vec.phi609        ; 2 uses
  %index.next616 = add nuw i64 %index607, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next616, %n.vec605
  br i1 %i.bl, label %middle.block617, label %vector.body606, !llvm.loop !252

middle.block617:                                  ; preds = %vector.body606
  %bin.rdx618 = add <2 x i64> %i.bk, %i.bj
  %7 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx618) ; 2 uses
  %cmp.n619 = icmp eq i64 %n.vec605, %wide.trip.count
  br i1 %cmp.n619, label %._crit_edge, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %.lr.ph, %middle.block617
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec605, %middle.block617 ]
  %.0117277.ph = phi i64 [ 0, %.lr.ph ], [ %7, %middle.block617 ]
  br label %scalar.ph602

scalar.ph602:                                     ; preds = %scalar.ph602.preheader, %scalar.ph602
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph602 ], [ %indvars.iv.ph, %scalar.ph602.preheader ] ; 4 uses
  %.0117277 = phi i64 [ %i.bu, %scalar.ph602 ], [ %.0117277.ph, %scalar.ph602.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !18
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18
  %i.bt = mul i64 %i.bq, %i.bs
  %i.bu = add i64 %i.bt, %.0117277                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph602, !llvm.loop !253

._crit_edge:                                      ; preds = %scalar.ph602, %middle.block617, %bb.g
  %.0117.lcssa = phi i64 [ 0, %bb.g ], [ %7, %middle.block617 ], [ %i.bu, %scalar.ph602 ]
  store i64 %.0117.lcssa, ptr %5, align 8, !tbaa !18
  %i.bv = mul i64 %spec.select, %i.aw
  store i64 %i.bv, ptr %6, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = tail call i32 @H5S__hyper_iter_next(ptr noundef nonnull %0, i64 noundef %spec.select) ; 0 uses
  %i.bz = load i64, ptr %i.at, align 8, !tbaa !86
  %i.ca = sub i64 %i.bz, %spec.select
  store i64 %i.ca, ptr %i.at, align 8, !tbaa !86
  %i.cb = sub i64 %2, %spec.select                ; 2 uses
  %i.cc = add i64 %1, -1                          ; 2 uses
  store i64 1, ptr %3, align 8, !tbaa !18
  store i64 %spec.select, ptr %4, align 8, !tbaa !18
  %i.cd = load i64, ptr %i.at, align 8, !tbaa !86
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = icmp ne i64 %i.cb, 0
  %or.cond.not142 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = icmp ne i64 %i.cc, 0
  %or.cond4.not = and i1 %i.cg, %or.cond.not142
  br i1 %or.cond4.not, label %bb.i, label %.critedge147

bb.h:                                             ; preds = %bb.d, %bb.c
  store i64 0, ptr %3, align 8, !tbaa !18
  store i64 0, ptr %4, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.0131 = phi i64 [ %i.cb, %._crit_edge ], [ %2, %bb.h ] ; 2 uses
  %.0130 = phi i64 [ %i.cc, %._crit_edge ], [ %1, %bb.h ] ; 5 uses
  %.0126 = phi ptr [ %i.bw, %._crit_edge ], [ %5, %bb.h ] ; 31 uses
  %.0125 = phi ptr [ %i.bx, %._crit_edge ], [ %6, %bb.h ] ; 31 uses
  %.not144278.not = icmp eq i32 %.0121, 0
  br i1 %.not144278.not, label %.critedge, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %bb.i
  %wide.trip.count359 = zext i32 %.0121 to i64
  br label %.lr.ph281

bb.j:                                             ; preds = %.lr.ph281
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.critedge, label %.lr.ph281, !llvm.loop !254

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.j
  %indvars.iv356 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next357, %bb.j ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv356
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !42
  %.not143 = icmp eq i64 %i.cj, 1
  br i1 %.not143, label %bb.j, label %bb.v

.critedge:                                        ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ck = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = xor i1 %i.cn, true
  %i.cp = select i1 %i.cl, i1 true, i1 %i.co
  br i1 %i.cp, label %bb.k, label %H5S__hyper_iter_get_seq_list_single.exit, !prof !16

bb.k:                                             ; preds = %.critedge
  %i.cq = load i32, ptr %i.u, align 8, !tbaa !24  ; 3 uses
  %.not.i = icmp ne i32 %i.cq, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !70 ; 3 uses
  %i.cr = icmp ult i32 %i.cq, %.pre.i
  %or.cond320.i = select i1 %.not.i, i1 %i.cr, i1 false
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !71 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 7 uses
  br i1 %or.cond320.i, label %.thread.i, label %._crit_edge275.i

.thread.i:                                        ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2352
  br label %.lr.ph.preheader.i

._crit_edge275.i:                                 ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %.not235.not.i = icmp eq i32 %.pre.i, 0
  br i1 %.not235.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge275.i, %.thread.i
  %.0165290.i = phi i32 [ %i.cq, %.thread.i ], [ %.pre.i, %._crit_edge275.i ] ; 6 uses
  %i.cx = phi i64 [ 2096, %.thread.i ], [ 16, %._crit_edge275.i ]
  %.0173287.i = phi ptr [ %i.cv, %.thread.i ], [ %i.cw, %._crit_edge275.i ] ; 5 uses
  %wide.trip.count.i = zext i32 %.0165290.i to i64 ; 9 uses
  %min.iters.check715 = icmp ult i32 %.0165290.i, 5
  br i1 %min.iters.check715, label %.lr.ph.i.preheader, label %vector.ph716

vector.ph716:                                     ; preds = %.lr.ph.preheader.i
  %i.cy = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 4, i64 %i.cy
  %n.vec717 = sub nsw i64 %wide.trip.count.i, %i.da ; 2 uses
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %vector.ph716
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next722, %vector.body718 ] ; 7 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index719
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index719
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index719
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index719
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load i64, ptr %i.db, align 8, !tbaa !50
  %i.dj = load i64, ptr %i.dd, align 8, !tbaa !50
  %i.dk = insertelement <2 x i64> poison, i64 %i.di, i64 0
  %i.dl = insertelement <2 x i64> %i.dk, i64 %i.dj, i64 1
  %i.dm = load i64, ptr %i.df, align 8, !tbaa !50
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !50
  %i.do = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.dp = insertelement <2 x i64> %i.do, i64 %i.dn, i64 1
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.0173287.i, i64 %index719 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load720 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !18
  %wide.load721 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !18
  %i.ds = add nsw <2 x i64> %wide.load720, %i.dl
  %i.dt = add nsw <2 x i64> %wide.load721, %i.dp
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index719 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x i64> %i.ds, ptr %i.du, align 16, !tbaa !18
  store <2 x i64> %i.dt, ptr %i.dv, align 16, !tbaa !18
  %index.next722 = add nuw i64 %index719, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next722, %n.vec717
  br i1 %i.dw, label %.lr.ph.i.preheader, label %vector.body718, !llvm.loop !255

.lr.ph.i.preheader:                               ; preds = %vector.body718, %.lr.ph.preheader.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec717, %vector.body718 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.0173287.i, i64 %indvars.iv.i
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.eb = add nsw i64 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph199.i.preheader, label %.lr.ph.i, !llvm.loop !256

.lr.ph199.i.preheader:                            ; preds = %.lr.ph.i
  %min.iters.check726 = icmp ult i32 %.0165290.i, 4
  br i1 %min.iters.check726, label %.lr.ph199.i.preheader858, label %vector.ph727

vector.ph727:                                     ; preds = %.lr.ph199.i.preheader
  %n.vec728 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next735, %vector.body729 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index730 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load731 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !24
  %wide.load732 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0173287.i, i64 %index730 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load733 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !18
  %wide.load734 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !18
  %i.eh = add nsw <2 x i64> %wide.load733, %wide.load731
  %i.ei = add nsw <2 x i64> %wide.load734, %wide.load732
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index730 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %i.eh, ptr %i.ej, align 16, !tbaa !18
  store <2 x i64> %i.ei, ptr %i.ek, align 16, !tbaa !18
  %index.next735 = add nuw i64 %index730, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next735, %n.vec728
  br i1 %i.el, label %middle.block736, label %vector.body729, !llvm.loop !257

middle.block736:                                  ; preds = %vector.body729
  %cmp.n737 = icmp eq i64 %n.vec728, %wide.trip.count.i
  br i1 %cmp.n737, label %.lr.ph202.i.preheader, label %.lr.ph199.i.preheader858

.lr.ph199.i.preheader858:                         ; preds = %.lr.ph199.i.preheader, %middle.block736
  %indvars.iv250.i.ph = phi i64 [ 0, %.lr.ph199.i.preheader ], [ %n.vec728, %middle.block736 ]
  br label %.lr.ph199.i

.lr.ph199.i:                                      ; preds = %.lr.ph199.i.preheader858, %.lr.ph199.i
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %.lr.ph199.i ], [ %indvars.iv250.i.ph, %.lr.ph199.i.preheader858 ] ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv250.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0173287.i, i64 %indvars.iv250.i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !18
  %i.eq = add nsw i64 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv250.i
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !18
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next251.i, %wide.trip.count.i
  br i1 %exitcond254.not.i, label %.lr.ph202.i.preheader, label %.lr.ph199.i, !llvm.loop !258

.lr.ph202.i.preheader:                            ; preds = %.lr.ph199.i, %middle.block736
  %min.iters.check740 = icmp ult i32 %.0165290.i, 4
  br i1 %min.iters.check740, label %.lr.ph202.i.preheader854, label %vector.ph741

vector.ph741:                                     ; preds = %.lr.ph202.i.preheader
  %n.vec742 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph741
  %index744 = phi i64 [ 0, %vector.ph741 ], [ %index.next751, %vector.body743 ] ; 3 uses
  %vec.phi745 = phi <2 x i64> [ zeroinitializer, %vector.ph741 ], [ %i.ey, %vector.body743 ]
  %vec.phi746 = phi <2 x i64> [ zeroinitializer, %vector.ph741 ], [ %i.ez, %vector.body743 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index744 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load747 = load <2 x i64>, ptr %i.es, align 16, !tbaa !18
  %wide.load748 = load <2 x i64>, ptr %i.et, align 16, !tbaa !18
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index744 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load749 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !18
  %wide.load750 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !18
  %i.ew = mul <2 x i64> %wide.load749, %wide.load747
  %i.ex = mul <2 x i64> %wide.load750, %wide.load748
  %i.ey = add <2 x i64> %i.ew, %vec.phi745        ; 2 uses
  %i.ez = add <2 x i64> %i.ex, %vec.phi746        ; 2 uses
  %index.next751 = add nuw i64 %index744, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next751, %n.vec742
  br i1 %i.fa, label %middle.block752, label %vector.body743, !llvm.loop !259

middle.block752:                                  ; preds = %vector.body743
  %bin.rdx753 = add <2 x i64> %i.ez, %i.ey
  %8 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx753) ; 2 uses
  %cmp.n754 = icmp eq i64 %n.vec742, %wide.trip.count.i
  br i1 %cmp.n754, label %._crit_edge.i.loopexit, label %.lr.ph202.i.preheader854

.lr.ph202.i.preheader854:                         ; preds = %.lr.ph202.i.preheader, %middle.block752
  %indvars.iv255.i.ph = phi i64 [ 0, %.lr.ph202.i.preheader ], [ %n.vec742, %middle.block752 ]
  %.0166200.i.ph = phi i64 [ 0, %.lr.ph202.i.preheader ], [ %8, %middle.block752 ]
  br label %.lr.ph202.i

.lr.ph202.i:                                      ; preds = %.lr.ph202.i.preheader854, %.lr.ph202.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %.lr.ph202.i ], [ %indvars.iv255.i.ph, %.lr.ph202.i.preheader854 ] ; 3 uses
  %.0166200.i = phi i64 [ %i.fg, %.lr.ph202.i ], [ %.0166200.i.ph, %.lr.ph202.i.preheader854 ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv255.i
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv255.i
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !18
  %i.ff = mul i64 %i.fe, %i.fc
  %i.fg = add i64 %i.ff, %.0166200.i              ; 2 uses
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next256.i, %wide.trip.count.i
  br i1 %exitcond259.not.i, label %._crit_edge.i.loopexit, label %.lr.ph202.i, !llvm.loop !260

._crit_edge.i.loopexit:                           ; preds = %.lr.ph202.i, %middle.block752
  %.lcssa506 = phi i64 [ %8, %middle.block752 ], [ %i.fg, %.lr.ph202.i ]
  %i.fh = add i32 %.0165290.i, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge275.i
  %.not235291296307.i = phi i1 [ false, %._crit_edge275.i ], [ true, %._crit_edge.i.loopexit ] ; 2 uses
  %i.fi = phi i32 [ -1, %._crit_edge275.i ], [ %i.fh, %._crit_edge.i.loopexit ] ; 4 uses
  %.0165289297306.i = phi i32 [ 0, %._crit_edge275.i ], [ %.0165290.i, %._crit_edge.i.loopexit ] ; 7 uses
  %i.fj = phi i64 [ 16, %._crit_edge275.i ], [ %i.cx, %._crit_edge.i.loopexit ]
  %.0173288298305.i = phi ptr [ %i.cw, %._crit_edge275.i ], [ %.0173287.i, %._crit_edge.i.loopexit ] ; 7 uses
  %.0166.lcssa.i = phi i64 [ 0, %._crit_edge275.i ], [ %.lcssa506, %._crit_edge.i.loopexit ] ; 10 uses
  %i.fk = zext i32 %i.fi to i64                   ; 4 uses
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !52 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 5 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !86
  %..i = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %.0131) ; 3 uses
  %i.fq = udiv i64 %..i, %i.fn                    ; 2 uses
  %i.fr = icmp uge i64 %i.fq, %.0130
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %.0130) ; 15 uses
  %.not186.i = icmp eq i64 %i.fs, 0
  br i1 %.not186.i, label %._crit_edge._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.ft = mul i64 %i.fn, %i.ct                    ; 14 uses
  %i.fu = icmp eq i32 %i.fi, 0
  br i1 %i.fu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fv = getelementptr inbounds nuw i8, ptr %.0126, i64 8
  store i64 %.0166.lcssa.i, ptr %.0126, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.0125, i64 8
  store i64 %i.ft, ptr %.0125, align 8, !tbaa !18
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.fx = add i32 %.0165289297306.i, -2           ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %.lr.ph205.i, label %._crit_edge206.thread.i

._crit_edge206.thread.i:                          ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fk
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !18
  br label %bb.p

.lr.ph205.i:                                      ; preds = %bb.n, %bb.o
  %.0156203.i = phi i32 [ %i.gg, %bb.o ], [ %i.fx, %bb.n ] ; 4 uses
  %i.gb = zext nneg i32 %.0156203.i to i64        ; 2 uses
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !52
  %i.gf = icmp ugt i64 %i.ge, 1
  br i1 %i.gf, label %._crit_edge206.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph205.i
  %i.gg = add nsw i32 %.0156203.i, -1
  %i.gh = icmp sgt i32 %.0156203.i, 0
  br i1 %i.gh, label %.lr.ph205.i, label %._crit_edge206.i, !llvm.loop !261

._crit_edge206.i:                                 ; preds = %bb.o, %.lr.ph205.i
  %.pre-phi.i = phi i64 [ %i.fk, %bb.o ], [ %i.gb, %.lr.ph205.i ] ; 2 uses
  %.0164.i = phi i32 [ %i.fi, %bb.o ], [ %.0156203.i, %.lr.ph205.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.pre-phi.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !18 ; 8 uses
  %i.gk = icmp eq i32 %.0164.i, 0
  br i1 %i.gk, label %.preheader192.i.preheader, label %bb.p

.preheader192.i.preheader:                        ; preds = %._crit_edge206.i
  %min.iters.check797 = icmp ult i64 %i.fs, 6
  %9 = ptrtoaddr ptr %.0125 to i64
  %10 = ptrtoaddr ptr %.0126 to i64
  %i.gl = sub i64 %10, %9
  %diff.check795 = icmp ugt i64 %i.gl, -32
  %or.cond = select i1 %min.iters.check797, i1 true, i1 %diff.check795
  br i1 %or.cond, label %.preheader192.i.preheader843, label %vector.ph798

vector.ph798:                                     ; preds = %.preheader192.i.preheader
  %n.vec799 = and i64 %i.fs, -4                   ; 4 uses
  %broadcast.splatinsert800 = insertelement <2 x i64> poison, i64 %i.gj, i64 0
  %broadcast.splat801 = shufflevector <2 x i64> %broadcast.splatinsert800, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = shl i64 %n.vec799, 3                    ; 2 uses
  %i.gn = getelementptr i8, ptr %.0126, i64 %i.gm ; 2 uses
  %i.go = and i64 %i.fs, 3
  %i.gp = mul i64 %n.vec799, %i.gj
  %i.gq = add i64 %.0166.lcssa.i, %i.gp           ; 2 uses
  %i.gr = getelementptr i8, ptr %.0125, i64 %i.gm ; 2 uses
  %i.gs = shl <2 x i64> %broadcast.splat801, splat (i64 1) ; 3 uses
  %broadcast.splatinsert802 = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat803 = shufflevector <2 x i64> %broadcast.splatinsert802, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert804 = insertelement <2 x i64> poison, i64 %.0166.lcssa.i, i64 0
  %broadcast.splat805 = shufflevector <2 x i64> %broadcast.splatinsert804, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gt = mul nuw <2 x i64> %broadcast.splat801, <i64 0, i64 1>
  %induction806 = add <2 x i64> %broadcast.splat805, %i.gt
  %invariant.op1054 = add <2 x i64> %i.gs, %i.gs
  br label %vector.body807

vector.body807:                                   ; preds = %vector.body807, %vector.ph798
  %index808 = phi i64 [ 0, %vector.ph798 ], [ %index.next813, %vector.body807 ] ; 2 uses
  %vec.ind809 = phi <2 x i64> [ %induction806, %vector.ph798 ], [ %vec.ind.next814.reass, %vector.body807 ] ; 3 uses
  %step.add810 = add <2 x i64> %vec.ind809, %i.gs
  %i.gu = shl i64 %index808, 3                    ; 2 uses
  %next.gep811 = getelementptr i8, ptr %.0126, i64 %i.gu ; 2 uses
  %next.gep812 = getelementptr i8, ptr %.0125, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep811, i64 16
  store <2 x i64> %vec.ind809, ptr %next.gep811, align 8, !tbaa !18
  store <2 x i64> %step.add810, ptr %i.gv, align 8, !tbaa !18
  %i.gw = getelementptr i8, ptr %next.gep812, i64 16
  store <2 x i64> %broadcast.splat803, ptr %next.gep812, align 8, !tbaa !18
  store <2 x i64> %broadcast.splat803, ptr %i.gw, align 8, !tbaa !18
  %index.next813 = add nuw i64 %index808, 4       ; 2 uses
  %vec.ind.next814.reass = add <2 x i64> %vec.ind809, %invariant.op1054
  %i.gx = icmp eq i64 %index.next813, %n.vec799
  br i1 %i.gx, label %middle.block815, label %vector.body807, !llvm.loop !262

middle.block815:                                  ; preds = %vector.body807
  %cmp.n816 = icmp eq i64 %i.fs, %n.vec799
  br i1 %cmp.n816, label %.loopexit, label %.preheader192.i.preheader843

.preheader192.i.preheader843:                     ; preds = %.preheader192.i.preheader, %middle.block815
  %.0232.i.ph = phi ptr [ %.0126, %.preheader192.i.preheader ], [ %i.gn, %middle.block815 ] ; 2 uses
  %.0157231.i.ph = phi i64 [ %i.fs, %.preheader192.i.preheader ], [ %i.go, %middle.block815 ] ; 4 uses
  %.1167230.i.ph = phi i64 [ %.0166.lcssa.i, %.preheader192.i.preheader ], [ %i.gq, %middle.block815 ] ; 2 uses
  %.0174229.i.ph = phi ptr [ %.0125, %.preheader192.i.preheader ], [ %i.gr, %middle.block815 ] ; 2 uses
  %i.gy = add i64 %.0157231.i.ph, -1
  %xtraiter956 = and i64 %.0157231.i.ph, 3        ; 2 uses
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.preheader192.i.prol.loopexit, label %.preheader192.i.prol

.preheader192.i.prol:                             ; preds = %.preheader192.i.preheader843, %.preheader192.i.prol
  %.0232.i.prol = phi ptr [ %i.gz, %.preheader192.i.prol ], [ %.0232.i.ph, %.preheader192.i.preheader843 ] ; 2 uses
  %.0157231.i.prol = phi i64 [ %i.hc, %.preheader192.i.prol ], [ %.0157231.i.ph, %.preheader192.i.preheader843 ]
  %.1167230.i.prol = phi i64 [ %i.hb, %.preheader192.i.prol ], [ %.1167230.i.ph, %.preheader192.i.preheader843 ] ; 2 uses
  %.0174229.i.prol = phi ptr [ %i.ha, %.preheader192.i.prol ], [ %.0174229.i.ph, %.preheader192.i.preheader843 ] ; 2 uses
  %prol.iter958 = phi i64 [ %prol.iter958.next, %.preheader192.i.prol ], [ 0, %.preheader192.i.preheader843 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.0232.i.prol, i64 8 ; 3 uses
  store i64 %.1167230.i.prol, ptr %.0232.i.prol, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.0174229.i.prol, i64 8 ; 3 uses
  store i64 %i.ft, ptr %.0174229.i.prol, align 8, !tbaa !18
  %i.hb = add i64 %.1167230.i.prol, %i.gj         ; 3 uses
  %i.hc = add i64 %.0157231.i.prol, -1            ; 2 uses
  %prol.iter958.next = add i64 %prol.iter958, 1   ; 2 uses
  %prol.iter958.cmp.not = icmp eq i64 %prol.iter958.next, %xtraiter956
  br i1 %prol.iter958.cmp.not, label %.preheader192.i.prol.loopexit, label %.preheader192.i.prol, !llvm.loop !263

.preheader192.i.prol.loopexit:                    ; preds = %.preheader192.i.prol, %.preheader192.i.preheader843
  %.lcssa846.unr = phi ptr [ poison, %.preheader192.i.preheader843 ], [ %i.gz, %.preheader192.i.prol ]
  %.lcssa845.unr = phi ptr [ poison, %.preheader192.i.preheader843 ], [ %i.ha, %.preheader192.i.prol ]
  %.lcssa844.unr = phi i64 [ poison, %.preheader192.i.preheader843 ], [ %i.hb, %.preheader192.i.prol ]
  %.0232.i.unr = phi ptr [ %.0232.i.ph, %.preheader192.i.preheader843 ], [ %i.gz, %.preheader192.i.prol ]
  %.0157231.i.unr = phi i64 [ %.0157231.i.ph, %.preheader192.i.preheader843 ], [ %i.hc, %.preheader192.i.prol ]
  %.1167230.i.unr = phi i64 [ %.1167230.i.ph, %.preheader192.i.preheader843 ], [ %i.hb, %.preheader192.i.prol ]
  %.0174229.i.unr = phi ptr [ %.0174229.i.ph, %.preheader192.i.preheader843 ], [ %i.ha, %.preheader192.i.prol ]
  %i.hd = icmp ult i64 %i.gy, 3
  br i1 %i.hd, label %.loopexit, label %.preheader192.i

.preheader192.i:                                  ; preds = %.preheader192.i.prol.loopexit, %.preheader192.i
  %.0232.i = phi ptr [ %i.hn, %.preheader192.i ], [ %.0232.i.unr, %.preheader192.i.prol.loopexit ] ; 5 uses
  %.0157231.i = phi i64 [ %i.hq, %.preheader192.i ], [ %.0157231.i.unr, %.preheader192.i.prol.loopexit ]
  %.1167230.i = phi i64 [ %i.hp, %.preheader192.i ], [ %.1167230.i.unr, %.preheader192.i.prol.loopexit ] ; 2 uses
  %.0174229.i = phi ptr [ %i.ho, %.preheader192.i ], [ %.0174229.i.unr, %.preheader192.i.prol.loopexit ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0232.i, i64 8
  store i64 %.1167230.i, ptr %.0232.i, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.0174229.i, i64 8
  store i64 %i.ft, ptr %.0174229.i, align 8, !tbaa !18
  %i.hg = add i64 %.1167230.i, %i.gj              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0232.i, i64 16
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.0174229.i, i64 16
  store i64 %i.ft, ptr %i.hf, align 8, !tbaa !18
  %i.hj = add i64 %i.hg, %i.gj                    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0232.i, i64 24
  store i64 %i.hj, ptr %i.hh, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.0174229.i, i64 24
  store i64 %i.ft, ptr %i.hi, align 8, !tbaa !18
  %i.hm = add i64 %i.hj, %i.gj                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0232.i, i64 32 ; 2 uses
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.0174229.i, i64 32 ; 2 uses
  store i64 %i.ft, ptr %i.hl, align 8, !tbaa !18
  %i.hp = add i64 %i.hm, %i.gj                    ; 2 uses
  %i.hq = add i64 %.0157231.i, -4                 ; 2 uses
  %.not188.i.3 = icmp eq i64 %i.hq, 0
  br i1 %.not188.i.3, label %.loopexit, label %.preheader192.i, !llvm.loop !264

.loopexit:                                        ; preds = %.preheader192.i.prol.loopexit, %.preheader192.i, %middle.block815
  %.lcssa500 = phi ptr [ %i.gn, %middle.block815 ], [ %.lcssa846.unr, %.preheader192.i.prol.loopexit ], [ %i.hn, %.preheader192.i ]
  %.lcssa499 = phi ptr [ %i.gr, %middle.block815 ], [ %.lcssa845.unr, %.preheader192.i.prol.loopexit ], [ %i.ho, %.preheader192.i ]
  %.lcssa = phi i64 [ %i.gq, %middle.block815 ], [ %.lcssa844.unr, %.preheader192.i.prol.loopexit ], [ %i.hp, %.preheader192.i ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre-phi.i ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !18
  %i.ht = add i64 %i.hs, %i.fs
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !18
  br label %bb.t

bb.p:                                             ; preds = %._crit_edge206.i, %._crit_edge206.thread.i
  %i.hu = phi i64 [ %i.ga, %._crit_edge206.thread.i ], [ %i.gj, %._crit_edge206.i ] ; 8 uses
  %.0164310.i = phi i32 [ %i.fi, %._crit_edge206.thread.i ], [ %.0164.i, %._crit_edge206.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  br i1 %.not235291296307.i, label %.lr.ph212.preheader.i, label %.preheader193.i

.lr.ph212.preheader.i:                            ; preds = %bb.p
  %wide.trip.count263.i = zext i32 %.0165289297306.i to i64 ; 5 uses
  %min.iters.check758 = icmp ult i32 %.0165289297306.i, 5
  br i1 %min.iters.check758, label %.lr.ph212.i.preheader, label %vector.ph759

.lr.ph212.i.preheader:                            ; preds = %vector.body761, %.lr.ph212.preheader.i
  %indvars.iv260.i.ph = phi i64 [ 0, %.lr.ph212.preheader.i ], [ %n.vec760, %vector.body761 ]
  br label %.lr.ph212.i

vector.ph759:                                     ; preds = %.lr.ph212.preheader.i
  %i.hv = and i64 %wide.trip.count263.i, 3        ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  %i.hx = select i1 %i.hw, i64 4, i64 %i.hv
  %n.vec760 = sub nsw i64 %wide.trip.count263.i, %i.hx ; 2 uses
  br label %vector.body761

vector.body761:                                   ; preds = %vector.body761, %vector.ph759
  %index762 = phi i64 [ 0, %vector.ph759 ], [ %index.next765, %vector.body761 ] ; 7 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index762 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load763 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !24
  %wide.load764 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !24
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index762
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index762
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index762
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %index762
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 96
  %i.ih = load i64, ptr %i.ia, align 8, !tbaa !50
  %i.ii = load i64, ptr %i.ic, align 8, !tbaa !50
  %i.ij = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.ik = insertelement <2 x i64> %i.ij, i64 %i.ii, i64 1
  %i.il = load i64, ptr %i.ie, align 8, !tbaa !50
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !50
  %i.in = insertelement <2 x i64> poison, i64 %i.il, i64 0
  %i.io = insertelement <2 x i64> %i.in, i64 %i.im, i64 1
  %i.ip = sub <2 x i64> %wide.load763, %i.ik
  %i.iq = sub <2 x i64> %wide.load764, %i.io
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index762 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <2 x i64> %i.ip, ptr %i.ir, align 16, !tbaa !18
  store <2 x i64> %i.iq, ptr %i.is, align 16, !tbaa !18
  %index.next765 = add nuw i64 %index762, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next765, %n.vec760
  br i1 %i.it, label %.lr.ph212.i.preheader, label %vector.body761, !llvm.loop !265

.lr.ph214.i:                                      ; preds = %.lr.ph212.i
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj ; 3 uses
  %xtraiter948 = and i64 %wide.trip.count263.i, 1
  %i.iv = icmp eq i32 %.0165289297306.i, 1
  br i1 %i.iv, label %.epil.preheader947, label %.lr.ph214.i.new

.lr.ph214.i.new:                                  ; preds = %.lr.ph214.i
  %unroll_iter951 = and i64 %wide.trip.count263.i, 4294967294
  br label %bb.s

.lr.ph212.i:                                      ; preds = %.lr.ph212.i.preheader, %.lr.ph212.i
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %.lr.ph212.i ], [ %indvars.iv260.i.ph, %.lr.ph212.i.preheader ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv260.i
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !24
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv260.i
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !50
  %i.ja = sub i64 %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv260.i
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !18
  %indvars.iv.next261.i = add nuw nsw i64 %indvars.iv260.i, 1 ; 2 uses
  %exitcond264.not.i = icmp eq i64 %indvars.iv.next261.i, %wide.trip.count263.i
  br i1 %exitcond264.not.i, label %.lr.ph214.i, label %.lr.ph212.i, !llvm.loop !266

.preheader193.i.loopexit.unr-lcssa:               ; preds = %bb.s
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %.preheader193.i, label %.epil.preheader947

.epil.preheader947:                               ; preds = %.preheader193.i.loopexit.unr-lcssa, %.lr.ph214.i
  %indvars.iv265.i.epil.init = phi i64 [ 0, %.lr.ph214.i ], [ %indvars.iv.next266.i.1, %.preheader193.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod950 = trunc i32 %.0165289297306.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod950)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv265.i.epil.init
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv265.i.epil.init
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !52
  %i.jh = sub i64 %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv265.i.epil.init
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !18
  %i.jk = mul i64 %i.jh, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv265.i.epil.init
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !18
  br label %.preheader193.i

.preheader193.i:                                  ; preds = %.epil.preheader947, %.preheader193.i.loopexit.unr-lcssa, %bb.p
  %i.jm = icmp sgt i32 %.0164310.i, -1
  br i1 %i.jm, label %.lr.ph218.us.i, label %.preheader193.split.i.preheader

.preheader193.split.i.preheader:                  ; preds = %.preheader193.i
  %min.iters.check771 = icmp ult i64 %i.fs, 6
  %11 = ptrtoaddr ptr %.0125 to i64
  %12 = ptrtoaddr ptr %.0126 to i64
  %i.jn = sub i64 %12, %11
  %diff.check769 = icmp ugt i64 %i.jn, -32
  %or.cond840 = select i1 %min.iters.check771, i1 true, i1 %diff.check769
  br i1 %or.cond840, label %.preheader193.split.i.preheader849, label %vector.ph772

vector.ph772:                                     ; preds = %.preheader193.split.i.preheader
  %n.vec773 = and i64 %i.fs, -4                   ; 4 uses
  %broadcast.splatinsert774 = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %broadcast.splat775 = shufflevector <2 x i64> %broadcast.splatinsert774, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = shl i64 %n.vec773, 3                    ; 2 uses
  %i.jp = getelementptr i8, ptr %.0126, i64 %i.jo ; 2 uses
  %i.jq = and i64 %i.fs, 3
  %i.jr = mul i64 %n.vec773, %i.hu
  %i.js = add i64 %.0166.lcssa.i, %i.jr           ; 2 uses
  %i.jt = getelementptr i8, ptr %.0125, i64 %i.jo ; 2 uses
  %i.ju = shl <2 x i64> %broadcast.splat775, splat (i64 1) ; 3 uses
  %broadcast.splatinsert776 = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat777 = shufflevector <2 x i64> %broadcast.splatinsert776, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert778 = insertelement <2 x i64> poison, i64 %.0166.lcssa.i, i64 0
  %broadcast.splat779 = shufflevector <2 x i64> %broadcast.splatinsert778, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.jv = mul nuw <2 x i64> %broadcast.splat775, <i64 0, i64 1>
  %induction780 = add <2 x i64> %broadcast.splat779, %i.jv
  %invariant.op1053 = add <2 x i64> %i.ju, %i.ju
  br label %vector.body781

vector.body781:                                   ; preds = %vector.body781, %vector.ph772
  %index782 = phi i64 [ 0, %vector.ph772 ], [ %index.next786, %vector.body781 ] ; 2 uses
  %vec.ind783 = phi <2 x i64> [ %induction780, %vector.ph772 ], [ %vec.ind.next787.reass, %vector.body781 ] ; 3 uses
  %step.add784 = add <2 x i64> %vec.ind783, %i.ju
  %i.jw = shl i64 %index782, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0126, i64 %i.jw ; 2 uses
  %next.gep785 = getelementptr i8, ptr %.0125, i64 %i.jw ; 2 uses
  %i.jx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind783, ptr %next.gep, align 8, !tbaa !18
  store <2 x i64> %step.add784, ptr %i.jx, align 8, !tbaa !18
  %i.jy = getelementptr i8, ptr %next.gep785, i64 16
  store <2 x i64> %broadcast.splat777, ptr %next.gep785, align 8, !tbaa !18
  store <2 x i64> %broadcast.splat777, ptr %i.jy, align 8, !tbaa !18
  %index.next786 = add nuw i64 %index782, 4       ; 2 uses
  %vec.ind.next787.reass = add <2 x i64> %vec.ind783, %invariant.op1053
  %i.jz = icmp eq i64 %index.next786, %n.vec773
  br i1 %i.jz, label %middle.block788, label %vector.body781, !llvm.loop !267

middle.block788:                                  ; preds = %vector.body781
  %cmp.n789 = icmp eq i64 %i.fs, %n.vec773
  br i1 %cmp.n789, label %.split.us.i, label %.preheader193.split.i.preheader849

.preheader193.split.i.preheader849:               ; preds = %.preheader193.split.i.preheader, %middle.block788
  %.1226.i.ph = phi ptr [ %.0126, %.preheader193.split.i.preheader ], [ %i.jp, %middle.block788 ] ; 2 uses
  %.1158225.i.ph = phi i64 [ %i.fs, %.preheader193.split.i.preheader ], [ %i.jq, %middle.block788 ] ; 4 uses
  %.2168224.i.ph = phi i64 [ %.0166.lcssa.i, %.preheader193.split.i.preheader ], [ %i.js, %middle.block788 ] ; 2 uses
  %.1175223.i.ph = phi ptr [ %.0125, %.preheader193.split.i.preheader ], [ %i.jt, %middle.block788 ] ; 2 uses
  %i.ka = add i64 %.1158225.i.ph, -1
  %xtraiter953 = and i64 %.1158225.i.ph, 3        ; 2 uses
  %lcmp.mod954.not = icmp eq i64 %xtraiter953, 0
  br i1 %lcmp.mod954.not, label %.preheader193.split.i.prol.loopexit, label %.preheader193.split.i.prol

.preheader193.split.i.prol:                       ; preds = %.preheader193.split.i.preheader849, %.preheader193.split.i.prol
  %.1226.i.prol = phi ptr [ %i.kb, %.preheader193.split.i.prol ], [ %.1226.i.ph, %.preheader193.split.i.preheader849 ] ; 2 uses
  %.1158225.i.prol = phi i64 [ %i.ke, %.preheader193.split.i.prol ], [ %.1158225.i.ph, %.preheader193.split.i.preheader849 ]
  %.2168224.i.prol = phi i64 [ %i.kd, %.preheader193.split.i.prol ], [ %.2168224.i.ph, %.preheader193.split.i.preheader849 ] ; 2 uses
  %.1175223.i.prol = phi ptr [ %i.kc, %.preheader193.split.i.prol ], [ %.1175223.i.ph, %.preheader193.split.i.preheader849 ] ; 2 uses
  %prol.iter955 = phi i64 [ %prol.iter955.next, %.preheader193.split.i.prol ], [ 0, %.preheader193.split.i.preheader849 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.1226.i.prol, i64 8 ; 3 uses
  store i64 %.2168224.i.prol, ptr %.1226.i.prol, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.1175223.i.prol, i64 8 ; 3 uses
  store i64 %i.ft, ptr %.1175223.i.prol, align 8, !tbaa !18
  %i.kd = add i64 %.2168224.i.prol, %i.hu         ; 3 uses
  %i.ke = add i64 %.1158225.i.prol, -1            ; 2 uses
  %prol.iter955.next = add i64 %prol.iter955, 1   ; 2 uses
  %prol.iter955.cmp.not = icmp eq i64 %prol.iter955.next, %xtraiter953
  br i1 %prol.iter955.cmp.not, label %.preheader193.split.i.prol.loopexit, label %.preheader193.split.i.prol, !llvm.loop !268

.preheader193.split.i.prol.loopexit:              ; preds = %.preheader193.split.i.prol, %.preheader193.split.i.preheader849
  %.lcssa853.unr = phi ptr [ poison, %.preheader193.split.i.preheader849 ], [ %i.kb, %.preheader193.split.i.prol ]
  %.lcssa852.unr = phi ptr [ poison, %.preheader193.split.i.preheader849 ], [ %i.kc, %.preheader193.split.i.prol ]
  %.lcssa851.unr = phi i64 [ poison, %.preheader193.split.i.preheader849 ], [ %i.kd, %.preheader193.split.i.prol ]
  %.1226.i.unr = phi ptr [ %.1226.i.ph, %.preheader193.split.i.preheader849 ], [ %i.kb, %.preheader193.split.i.prol ]
  %.1158225.i.unr = phi i64 [ %.1158225.i.ph, %.preheader193.split.i.preheader849 ], [ %i.ke, %.preheader193.split.i.prol ]
  %.2168224.i.unr = phi i64 [ %.2168224.i.ph, %.preheader193.split.i.preheader849 ], [ %i.kd, %.preheader193.split.i.prol ]
  %.1175223.i.unr = phi ptr [ %.1175223.i.ph, %.preheader193.split.i.preheader849 ], [ %i.kc, %.preheader193.split.i.prol ]
  %i.kf = icmp ult i64 %i.ka, 3
  br i1 %i.kf, label %.split.us.i, label %.preheader193.split.i

.lr.ph218.us.i:                                   ; preds = %.preheader193.i, %._crit_edge219.us.i
  %.1226.us.i = phi ptr [ %i.kg, %._crit_edge219.us.i ], [ %.0126, %.preheader193.i ] ; 2 uses
  %.1158225.us.i = phi i64 [ %i.lb, %._crit_edge219.us.i ], [ %i.fs, %.preheader193.i ]
  %.2168224.us.i = phi i64 [ %.3169.lcssa.us.i, %._crit_edge219.us.i ], [ %.0166.lcssa.i, %.preheader193.i ] ; 2 uses
  %.1175223.us.i = phi ptr [ %i.kh, %._crit_edge219.us.i ], [ %.0125, %.preheader193.i ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.1226.us.i, i64 8 ; 2 uses
  store i64 %.2168224.us.i, ptr %.1226.us.i, align 8, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.1175223.us.i, i64 8 ; 2 uses
  store i64 %i.ft, ptr %.1175223.us.i, align 8, !tbaa !18
  %i.ki = add i64 %.2168224.us.i, %i.hu
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph218.us.i
  %.0155216.us.i = phi i32 [ %.0164310.i, %.lr.ph218.us.i ], [ %i.kz, %bb.r ] ; 3 uses
  %.3169215.us.i = phi i64 [ %i.ki, %.lr.ph218.us.i ], [ %i.ky, %bb.r ] ; 2 uses
  %i.kj = zext nneg i32 %.0155216.us.i to i64     ; 5 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kj ; 3 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !18
  %i.km = add i64 %i.kl, 1
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.kj ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !18
  %i.kp = add i64 %i.ko, 1                        ; 2 uses
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.kj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !52
  %i.kt = icmp ult i64 %i.kp, %i.ks
  br i1 %i.kt, label %._crit_edge219.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.kj
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !18
  store i64 %i.kv, ptr %i.kk, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.kj
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !18
  %i.ky = add i64 %i.kx, %.3169215.us.i           ; 2 uses
  store i64 0, ptr %i.kn, align 8, !tbaa !18
  %i.kz = add nsw i32 %.0155216.us.i, -1
  %i.la = icmp sgt i32 %.0155216.us.i, 0
  br i1 %i.la, label %bb.q, label %._crit_edge219.us.i, !llvm.loop !269

._crit_edge219.us.i:                              ; preds = %bb.r, %bb.q
  %.3169.lcssa.us.i = phi i64 [ %.3169215.us.i, %bb.q ], [ %i.ky, %bb.r ] ; 2 uses
  %i.lb = add i64 %.1158225.us.i, -1              ; 2 uses
  %.not187.us.i = icmp eq i64 %i.lb, 0
  br i1 %.not187.us.i, label %.split.us.i, label %.lr.ph218.us.i, !llvm.loop !270

bb.s:                                             ; preds = %bb.s, %.lr.ph214.i.new
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph214.i.new ], [ %indvars.iv.next266.i.1, %bb.s ] ; 6 uses
  %niter952 = phi i64 [ 0, %.lr.ph214.i.new ], [ %niter952.next.1, %bb.s ]
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv265.i
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv265.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !52
  %i.lh = sub i64 %i.ld, %i.lg
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv265.i
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !18
  %i.lk = mul i64 %i.lh, %i.lj
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv265.i
  store i64 %i.lk, ptr %i.ll, align 16, !tbaa !18
  %indvars.iv.next266.i = or disjoint i64 %indvars.iv265.i, 1 ; 4 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next266.i
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.next266.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !52
  %i.lr = sub i64 %i.ln, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next266.i
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !18
  %i.lu = mul i64 %i.lr, %i.lt
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next266.i
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !18
  %indvars.iv.next266.i.1 = add nuw nsw i64 %indvars.iv265.i, 2 ; 2 uses
  %niter952.next.1 = add i64 %niter952, 2         ; 2 uses
  %niter952.ncmp.1 = icmp eq i64 %niter952.next.1, %unroll_iter951
  br i1 %niter952.ncmp.1, label %.preheader193.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !271

.preheader193.split.i:                            ; preds = %.preheader193.split.i.prol.loopexit, %.preheader193.split.i
  %.1226.i = phi ptr [ %i.mf, %.preheader193.split.i ], [ %.1226.i.unr, %.preheader193.split.i.prol.loopexit ] ; 5 uses
  %.1158225.i = phi i64 [ %i.mi, %.preheader193.split.i ], [ %.1158225.i.unr, %.preheader193.split.i.prol.loopexit ]
  %.2168224.i = phi i64 [ %i.mh, %.preheader193.split.i ], [ %.2168224.i.unr, %.preheader193.split.i.prol.loopexit ] ; 2 uses
  %.1175223.i = phi ptr [ %i.mg, %.preheader193.split.i ], [ %.1175223.i.unr, %.preheader193.split.i.prol.loopexit ] ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.1226.i, i64 8
  store i64 %.2168224.i, ptr %.1226.i, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.1175223.i, i64 8
  store i64 %i.ft, ptr %.1175223.i, align 8, !tbaa !18
  %i.ly = add i64 %.2168224.i, %i.hu              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.1226.i, i64 16
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.1175223.i, i64 16
  store i64 %i.ft, ptr %i.lx, align 8, !tbaa !18
  %i.mb = add i64 %i.ly, %i.hu                    ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.1226.i, i64 24
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.1175223.i, i64 24
  store i64 %i.ft, ptr %i.ma, align 8, !tbaa !18
  %i.me = add i64 %i.mb, %i.hu                    ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.1226.i, i64 32 ; 2 uses
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.1175223.i, i64 32 ; 2 uses
  store i64 %i.ft, ptr %i.md, align 8, !tbaa !18
  %i.mh = add i64 %i.me, %i.hu                    ; 2 uses
  %i.mi = add i64 %.1158225.i, -4                 ; 2 uses
  %.not187.i.3 = icmp eq i64 %i.mi, 0
  br i1 %.not187.i.3, label %.split.us.i, label %.preheader193.split.i, !llvm.loop !272

.split.us.i:                                      ; preds = %.preheader193.split.i.prol.loopexit, %.preheader193.split.i, %._crit_edge219.us.i, %middle.block788
  %.us-phi.i = phi ptr [ %i.kh, %._crit_edge219.us.i ], [ %i.jt, %middle.block788 ], [ %.lcssa852.unr, %.preheader193.split.i.prol.loopexit ], [ %i.mg, %.preheader193.split.i ]
  %.us-phi227.i = phi i64 [ %.3169.lcssa.us.i, %._crit_edge219.us.i ], [ %i.js, %middle.block788 ], [ %.lcssa851.unr, %.preheader193.split.i.prol.loopexit ], [ %i.mh, %.preheader193.split.i ]
  %.us-phi228.i = phi ptr [ %i.kg, %._crit_edge219.us.i ], [ %i.jp, %middle.block788 ], [ %.lcssa853.unr, %.preheader193.split.i.prol.loopexit ], [ %i.mf, %.preheader193.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.t

bb.t:                                             ; preds = %.split.us.i, %.loopexit, %bb.m
  %.3177.i = phi ptr [ %i.fw, %bb.m ], [ %.lcssa499, %.loopexit ], [ %.us-phi.i, %.split.us.i ]
  %.5171.i = phi i64 [ %.0166.lcssa.i, %bb.m ], [ %.lcssa, %.loopexit ], [ %.us-phi227.i, %.split.us.i ]
  %.3.i = phi ptr [ %i.fv, %bb.m ], [ %.lcssa500, %.loopexit ], [ %.us-phi228.i, %.split.us.i ]
  %i.mj = mul i64 %i.fs, %i.fn                    ; 4 uses
  %i.mk = load i64, ptr %i.fo, align 8, !tbaa !86 ; 2 uses
  %i.ml = sub i64 %i.mk, %i.mj
  store i64 %i.ml, ptr %i.fo, align 8, !tbaa !86
  %.not189.i = icmp ne i64 %i.mk, %i.mj
  %or.cond.i = and i1 %.not235291296307.i, %.not189.i
  br i1 %or.cond.i, label %.lr.ph234.preheader.i, label %.loopexit.i

.lr.ph234.preheader.i:                            ; preds = %bb.t
  %wide.trip.count273.i = zext i32 %.0165289297306.i to i64 ; 5 uses
  %min.iters.check827 = icmp ult i32 %.0165289297306.i, 14
  br i1 %min.iters.check827, label %.lr.ph234.i.preheader, label %vector.memcheck821

vector.memcheck821:                               ; preds = %.lr.ph234.preheader.i
  %13 = ptrtoaddr ptr %0 to i64
  %14 = ptrtoaddr ptr %i.g to i64
  %i.mm = add i64 %13, 552                        ; 2 uses
  %i.mn = sub i64 %14, %i.mm
  %diff.check822 = icmp ugt i64 %i.mn, -32
  %15 = ptrtoaddr ptr %.0173288298305.i to i64
  %i.mo = sub i64 %15, %i.mm
  %diff.check824 = icmp ugt i64 %i.mo, -32
  %conflict.rdx825 = or i1 %diff.check822, %diff.check824
  br i1 %conflict.rdx825, label %.lr.ph234.i.preheader, label %vector.ph828

vector.ph828:                                     ; preds = %vector.memcheck821
  %n.vec829 = and i64 %wide.trip.count273.i, 4294967292 ; 3 uses
  br label %vector.body830

vector.body830:                                   ; preds = %vector.body830, %vector.ph828
  %index831 = phi i64 [ 0, %vector.ph828 ], [ %index.next836, %vector.body830 ] ; 4 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index831 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load832 = load <2 x i64>, ptr %i.mp, align 16, !tbaa !18
  %wide.load833 = load <2 x i64>, ptr %i.mq, align 16, !tbaa !18
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %index831 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %wide.load834 = load <2 x i64>, ptr %i.mr, align 8, !tbaa !18
  %wide.load835 = load <2 x i64>, ptr %i.ms, align 8, !tbaa !18
  %i.mt = sub nsw <2 x i64> %wide.load832, %wide.load834
  %i.mu = sub nsw <2 x i64> %wide.load833, %wide.load835
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index831 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <2 x i64> %i.mt, ptr %i.mv, align 8, !tbaa !24
  store <2 x i64> %i.mu, ptr %i.mw, align 8, !tbaa !24
  %index.next836 = add nuw i64 %index831, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next836, %n.vec829
  br i1 %i.mx, label %middle.block837, label %vector.body830, !llvm.loop !273

middle.block837:                                  ; preds = %vector.body830
  %cmp.n838 = icmp eq i64 %n.vec829, %wide.trip.count273.i
  br i1 %cmp.n838, label %.loopexit.i, label %.lr.ph234.i.preheader

.lr.ph234.i.preheader:                            ; preds = %vector.memcheck821, %.lr.ph234.preheader.i, %middle.block837
  %indvars.iv270.i.ph = phi i64 [ 0, %vector.memcheck821 ], [ 0, %.lr.ph234.preheader.i ], [ %n.vec829, %middle.block837 ] ; 3 uses
  %xtraiter959 = and i64 %wide.trip.count273.i, 3 ; 2 uses
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %.lr.ph234.i.prol.loopexit, label %.lr.ph234.i.prol

.lr.ph234.i.prol:                                 ; preds = %.lr.ph234.i.preheader, %.lr.ph234.i.prol
  %indvars.iv270.i.prol = phi i64 [ %indvars.iv.next271.i.prol, %.lr.ph234.i.prol ], [ %indvars.iv270.i.ph, %.lr.ph234.i.preheader ] ; 4 uses
  %prol.iter961 = phi i64 [ %prol.iter961.next, %.lr.ph234.i.prol ], [ 0, %.lr.ph234.i.preheader ]
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv270.i.prol
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %indvars.iv270.i.prol
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !18
  %i.nc = sub nsw i64 %i.mz, %i.nb
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv270.i.prol
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !24
  %indvars.iv.next271.i.prol = add nuw nsw i64 %indvars.iv270.i.prol, 1 ; 2 uses
  %prol.iter961.next = add i64 %prol.iter961, 1   ; 2 uses
  %prol.iter961.cmp.not = icmp eq i64 %prol.iter961.next, %xtraiter959
  br i1 %prol.iter961.cmp.not, label %.lr.ph234.i.prol.loopexit, label %.lr.ph234.i.prol, !llvm.loop !274

.lr.ph234.i.prol.loopexit:                        ; preds = %.lr.ph234.i.prol, %.lr.ph234.i.preheader
  %indvars.iv270.i.unr = phi i64 [ %indvars.iv270.i.ph, %.lr.ph234.i.preheader ], [ %indvars.iv.next271.i.prol, %.lr.ph234.i.prol ]
  %i.ne = sub nsw i64 %indvars.iv270.i.ph, %wide.trip.count273.i
  %i.nf = icmp ugt i64 %i.ne, -4
  br i1 %i.nf, label %.loopexit.i, label %.lr.ph234.i

.lr.ph234.i:                                      ; preds = %.lr.ph234.i.prol.loopexit, %.lr.ph234.i
  %indvars.iv270.i = phi i64 [ %indvars.iv.next271.i.3, %.lr.ph234.i ], [ %indvars.iv270.i.unr, %.lr.ph234.i.prol.loopexit ] ; 7 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv270.i
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !18
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %indvars.iv270.i
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !18
  %i.nk = sub nsw i64 %i.nh, %i.nj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv270.i
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !24
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next271.i
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %indvars.iv.next271.i
  %i.np = load i64, ptr %i.no, align 8, !tbaa !18
  %i.nq = sub nsw i64 %i.nn, %i.np
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next271.i
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !24
  %indvars.iv.next271.i.1 = add nuw nsw i64 %indvars.iv270.i, 2 ; 3 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next271.i.1
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !18
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %indvars.iv.next271.i.1
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !18
  %i.nw = sub nsw i64 %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next271.i.1
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !24
  %indvars.iv.next271.i.2 = add nuw nsw i64 %indvars.iv270.i, 3 ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next271.i.2
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.0173288298305.i, i64 %indvars.iv.next271.i.2
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !18
  %i.oc = sub nsw i64 %i.nz, %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next271.i.2
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !24
  %indvars.iv.next271.i.3 = add nuw nsw i64 %indvars.iv270.i, 4 ; 2 uses
  %exitcond274.not.i.3 = icmp eq i64 %indvars.iv.next271.i.3, %wide.trip.count273.i
  br i1 %exitcond274.not.i.3, label %.loopexit.i, label %.lr.ph234.i, !llvm.loop !275

.loopexit.i:                                      ; preds = %.lr.ph234.i.prol.loopexit, %.lr.ph234.i, %middle.block837, %bb.t
  %i.oe = load i64, ptr %3, align 8, !tbaa !18
  %i.of = add i64 %i.oe, %i.fs
  store i64 %i.of, ptr %3, align 8, !tbaa !18
  %i.og = load i64, ptr %4, align 8, !tbaa !18
  %i.oh = add i64 %i.og, %i.mj
  store i64 %i.oh, ptr %4, align 8, !tbaa !18
  br label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %.loopexit.i, %._crit_edge.i
  %.pre-phi278.i = phi i64 [ %i.mj, %.loopexit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.4178.i = phi ptr [ %.3177.i, %.loopexit.i ], [ %.0125, %._crit_edge.i ]
  %.6.i = phi i64 [ %.5171.i, %.loopexit.i ], [ %.0166.lcssa.i, %._crit_edge.i ]
  %.4.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.0126, %._crit_edge.i ]
  %i.oi = icmp ule i64 %..i, %.pre-phi278.i
  %brmerge.i = or i1 %i.fr, %i.oi
  br i1 %brmerge.i, label %H5S__hyper_iter_get_seq_list_single.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge._crit_edge.i
  %i.oj = sub nuw i64 %..i, %.pre-phi278.i        ; 4 uses
  store i64 %.6.i, ptr %.4.i, align 8, !tbaa !18
  %i.ok = mul i64 %i.oj, %i.ct
  store i64 %i.ok, ptr %.4178.i, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fk ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !24
  %i.on = add i64 %i.om, %i.oj
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !24
  %i.oo = load i64, ptr %i.fo, align 8, !tbaa !86
  %i.op = sub i64 %i.oo, %i.oj
  store i64 %i.op, ptr %i.fo, align 8, !tbaa !86
  %i.oq = load i64, ptr %3, align 8, !tbaa !18
  %i.or = add i64 %i.oq, 1
  store i64 %i.or, ptr %3, align 8, !tbaa !18
  %i.os = load i64, ptr %4, align 8, !tbaa !18
  %i.ot = add i64 %i.os, %i.oj
  store i64 %i.ot, ptr %4, align 8, !tbaa !18
  br label %H5S__hyper_iter_get_seq_list_single.exit

H5S__hyper_iter_get_seq_list_single.exit:         ; preds = %.critedge, %._crit_edge._crit_edge.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.critedge147

bb.v:                                             ; preds = %.lr.ph281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.ou = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ov = trunc nuw i8 %i.ou to i1
  %i.ow = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.ox = trunc nuw i8 %i.ow to i1
  %i.oy = xor i1 %i.ox, true
  %i.oz = select i1 %i.ov, i1 true, i1 %i.oy
  br i1 %i.oz, label %bb.w, label %H5S__hyper_iter_get_seq_list_opt.exit, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.pa = load i32, ptr %i.u, align 8, !tbaa !24  ; 3 uses
  %.not.i148 = icmp ne i32 %i.pa, 0
  %.phi.trans.insert.i149 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i150 = load i32, ptr %.phi.trans.insert.i149, align 8, !tbaa !70 ; 3 uses
  %i.pb = icmp ult i32 %i.pa, %.pre.i150
  %or.cond.i151 = select i1 %.not.i148, i1 %i.pb, i1 false
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !71 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !86
  %.535.i = tail call i64 @llvm.umin.i64(i64 %i.pg, i64 %.0131) ; 4 uses
  br i1 %or.cond.i151, label %.thread.i163, label %._crit_edge509.i

.thread.i163:                                     ; preds = %bb.w
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2352
  br label %.lr.ph.preheader.i152

._crit_edge509.i:                                 ; preds = %bb.w
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %.not471.i = icmp eq i32 %.pre.i150, 0
  br i1 %.not471.i, label %._crit_edge.i158, label %.lr.ph.preheader.i152

.lr.ph.preheader.i152:                            ; preds = %._crit_edge509.i, %.thread.i163
  %.0377539.i = phi i32 [ %i.pa, %.thread.i163 ], [ %.pre.i150, %._crit_edge509.i ] ; 5 uses
  %.0382537.i = phi ptr [ %i.ph, %.thread.i163 ], [ %i.pi, %._crit_edge509.i ] ; 3 uses
  %i.pj = phi i64 [ 2096, %.thread.i163 ], [ 16, %._crit_edge509.i ]
  %wide.trip.count.i153 = zext i32 %.0377539.i to i64 ; 7 uses
  %min.iters.check623 = icmp ult i32 %.0377539.i, 4
  br i1 %min.iters.check623, label %.lr.ph.i154.preheader, label %vector.ph624

vector.ph624:                                     ; preds = %.lr.ph.preheader.i152
  %n.vec625 = and i64 %wide.trip.count.i153, 4294967292 ; 3 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ] ; 4 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index627 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %wide.load628 = load <2 x i64>, ptr %i.pk, align 8, !tbaa !24
  %wide.load629 = load <2 x i64>, ptr %i.pl, align 8, !tbaa !24
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.0382537.i, i64 %index627 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %wide.load630 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !18
  %wide.load631 = load <2 x i64>, ptr %i.pn, align 8, !tbaa !18
  %i.po = add nsw <2 x i64> %wide.load630, %wide.load628
  %i.pp = add nsw <2 x i64> %wide.load631, %wide.load629
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index627 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store <2 x i64> %i.po, ptr %i.pq, align 16, !tbaa !18
  store <2 x i64> %i.pp, ptr %i.pr, align 16, !tbaa !18
  %index.next632 = add nuw i64 %index627, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.ps, label %middle.block633, label %vector.body626, !llvm.loop !276

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %n.vec625, %wide.trip.count.i153
  br i1 %cmp.n634, label %.lr.ph412.i.preheader, label %.lr.ph.i154.preheader

.lr.ph.i154.preheader:                            ; preds = %.lr.ph.preheader.i152, %middle.block633
  %indvars.iv.i155.ph = phi i64 [ 0, %.lr.ph.preheader.i152 ], [ %n.vec625, %middle.block633 ]
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.preheader, %.lr.ph.i154
  %indvars.iv.i155 = phi i64 [ %indvars.iv.next.i156, %.lr.ph.i154 ], [ %indvars.iv.i155.ph, %.lr.ph.i154.preheader ] ; 4 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i155
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !24
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.0382537.i, i64 %indvars.iv.i155
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !18
  %i.px = add nsw i64 %i.pw, %i.pu
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i155
  store i64 %i.px, ptr %i.py, align 8, !tbaa !18
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i155, 1 ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %indvars.iv.next.i156, %wide.trip.count.i153
  br i1 %exitcond.not.i157, label %.lr.ph412.i.preheader, label %.lr.ph.i154, !llvm.loop !277

.lr.ph412.i.preheader:                            ; preds = %.lr.ph.i154, %middle.block633
  br label %.lr.ph412.i

.lr.ph412.i:                                      ; preds = %.lr.ph412.i.preheader, %bb.y
  %indvars.iv483.i = phi i64 [ %indvars.iv.next484.i, %bb.y ], [ 0, %.lr.ph412.i.preheader ] ; 5 uses
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv483.i ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !42
  %i.qc = icmp eq i64 %i.qb, 1
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv483.i
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !24
  %i.qf = load i64, ptr %i.pz, align 8, !tbaa !50
  %i.qg = sub i64 %i.qe, %i.qf                    ; 3 uses
  br i1 %i.qc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph412.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !51 ; 2 uses
  %i.qj = udiv i64 %i.qg, %i.qi
  %i.qk = urem i64 %i.qg, %i.qi
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph412.i
  %.sink508.i = phi i64 [ %i.qj, %bb.x ], [ 0, %.lr.ph412.i ]
  %.sink.i = phi i64 [ %i.qk, %bb.x ], [ %i.qg, %.lr.ph412.i ]
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv483.i
  store i64 %.sink508.i, ptr %i.ql, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv483.i
  store i64 %.sink.i, ptr %i.qm, align 8, !tbaa !18
  %indvars.iv.next484.i = add nuw nsw i64 %indvars.iv483.i, 1 ; 2 uses
  %exitcond487.not.i = icmp eq i64 %indvars.iv.next484.i, %wide.trip.count.i153
  br i1 %exitcond487.not.i, label %.lr.ph415.i.preheader, label %.lr.ph412.i, !llvm.loop !278

.lr.ph415.i.preheader:                            ; preds = %bb.y
  %min.iters.check637 = icmp ult i32 %.0377539.i, 4
  br i1 %min.iters.check637, label %.lr.ph415.i.preheader866, label %vector.ph638

vector.ph638:                                     ; preds = %.lr.ph415.i.preheader
  %n.vec639 = and i64 %wide.trip.count.i153, 4294967292 ; 3 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph638
  %index641 = phi i64 [ 0, %vector.ph638 ], [ %index.next648, %vector.body640 ] ; 3 uses
  %vec.phi642 = phi <2 x i64> [ zeroinitializer, %vector.ph638 ], [ %i.qt, %vector.body640 ]
  %vec.phi643 = phi <2 x i64> [ zeroinitializer, %vector.ph638 ], [ %i.qu, %vector.body640 ]
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index641 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %wide.load644 = load <2 x i64>, ptr %i.qn, align 16, !tbaa !18
  %wide.load645 = load <2 x i64>, ptr %i.qo, align 16, !tbaa !18
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %index641 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load646 = load <2 x i64>, ptr %i.qp, align 8, !tbaa !18
  %wide.load647 = load <2 x i64>, ptr %i.qq, align 8, !tbaa !18
  %i.qr = mul <2 x i64> %wide.load646, %wide.load644
  %i.qs = mul <2 x i64> %wide.load647, %wide.load645
  %i.qt = add <2 x i64> %i.qr, %vec.phi642        ; 2 uses
  %i.qu = add <2 x i64> %i.qs, %vec.phi643        ; 2 uses
  %index.next648 = add nuw i64 %index641, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next648, %n.vec639
  br i1 %i.qv, label %middle.block649, label %vector.body640, !llvm.loop !279

middle.block649:                                  ; preds = %vector.body640
  %bin.rdx650 = add <2 x i64> %i.qu, %i.qt
  %16 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx650) ; 2 uses
  %cmp.n651 = icmp eq i64 %n.vec639, %wide.trip.count.i153
  br i1 %cmp.n651, label %._crit_edge.i158.loopexit, label %.lr.ph415.i.preheader866

.lr.ph415.i.preheader866:                         ; preds = %.lr.ph415.i.preheader, %middle.block649
  %indvars.iv488.i.ph = phi i64 [ 0, %.lr.ph415.i.preheader ], [ %n.vec639, %middle.block649 ]
  %.0362413.i.ph = phi i64 [ 0, %.lr.ph415.i.preheader ], [ %16, %middle.block649 ]
  br label %.lr.ph415.i

.lr.ph415.i:                                      ; preds = %.lr.ph415.i.preheader866, %.lr.ph415.i
  %indvars.iv488.i = phi i64 [ %indvars.iv.next489.i, %.lr.ph415.i ], [ %indvars.iv488.i.ph, %.lr.ph415.i.preheader866 ] ; 3 uses
  %.0362413.i = phi i64 [ %i.rb, %.lr.ph415.i ], [ %.0362413.i.ph, %.lr.ph415.i.preheader866 ]
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv488.i
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !18
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv488.i
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !18
  %i.ra = mul i64 %i.qz, %i.qx
  %i.rb = add i64 %i.ra, %.0362413.i              ; 2 uses
  %indvars.iv.next489.i = add nuw nsw i64 %indvars.iv488.i, 1 ; 2 uses
  %exitcond492.not.i = icmp eq i64 %indvars.iv.next489.i, %wide.trip.count.i153
  br i1 %exitcond492.not.i, label %._crit_edge.i158.loopexit, label %.lr.ph415.i, !llvm.loop !280

._crit_edge.i158.loopexit:                        ; preds = %.lr.ph415.i, %middle.block649
  %.lcssa512 = phi i64 [ %16, %middle.block649 ], [ %i.rb, %.lr.ph415.i ]
  %i.rc = add i32 %.0377539.i, -1
  %i.rd = zext i32 %i.rc to i64
  br label %._crit_edge.i158

._crit_edge.i158:                                 ; preds = %._crit_edge.i158.loopexit, %._crit_edge509.i
  %.not471544549564.i = phi i1 [ true, %._crit_edge509.i ], [ false, %._crit_edge.i158.loopexit ] ; 2 uses
  %i.re = phi i64 [ 4294967295, %._crit_edge509.i ], [ %i.rd, %._crit_edge.i158.loopexit ] ; 9 uses
  %.0377540551562.i = phi i32 [ 0, %._crit_edge509.i ], [ %.0377539.i, %._crit_edge.i158.loopexit ] ; 7 uses
  %.0382538552561.i = phi ptr [ %i.pi, %._crit_edge509.i ], [ %.0382537.i, %._crit_edge.i158.loopexit ] ; 10 uses
  %i.rf = phi i64 [ 16, %._crit_edge509.i ], [ %i.pj, %._crit_edge.i158.loopexit ]
  %.0362.lcssa.i = phi i64 [ 0, %._crit_edge509.i ], [ %.lcssa512, %._crit_edge.i158.loopexit ] ; 5 uses
  %i.rg = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.re ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !52 ; 5 uses
  %i.rj = mul i64 %i.ri, %i.pd                    ; 16 uses
  %i.rk = load i64, ptr %i.rg, align 8, !tbaa !50
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !51 ; 3 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.re
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !18
  %i.rp = mul i64 %i.ro, %i.rm                    ; 18 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %i.re
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !18
  %i.rs = add nsw i64 %i.rr, %i.rk
  %i.rt = udiv i64 %.535.i, %i.ri
  %i.ru = tail call i64 @llvm.umin.i64(i64 %i.rt, i64 %.0130) ; 3 uses
  br i1 %.not471544549564.i, label %._crit_edge421.i, label %.lr.ph418.i

.lr.ph418.i:                                      ; preds = %._crit_edge.i158
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 %i.rf ; 3 uses
  %wide.trip.count496.i = zext i32 %.0377540551562.i to i64 ; 5 uses
  %i.rw = add nsw i64 %wide.trip.count496.i, -1   ; 2 uses
  %xtraiter = and i64 %wide.trip.count496.i, 1
  %i.rx = icmp eq i64 %i.rw, 0
  br i1 %i.rx, label %.epil.preheader, label %.lr.ph418.i.new

.lr.ph418.i.new:                                  ; preds = %.lr.ph418.i
  %unroll_iter = and i64 %wide.trip.count496.i, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph418.i.new
  %indvars.iv493.i = phi i64 [ 0, %.lr.ph418.i.new ], [ %indvars.iv.next494.i.1, %bb.z ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph418.i.new ], [ %niter.next.1, %bb.z ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv493.i
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !18
  %i.sa = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv493.i ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !51
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !42
  %i.sf = mul i64 %i.se, %i.sc
  %i.sg = sub i64 %i.rz, %i.sf
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv493.i
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !18
  %i.sj = mul i64 %i.sg, %i.si
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv493.i
  store i64 %i.sj, ptr %i.sk, align 16, !tbaa !18
  %indvars.iv.next494.i = or disjoint i64 %indvars.iv493.i, 1 ; 4 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv.next494.i
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !18
  %i.sn = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.next494.i ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !51
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !42
  %i.ss = mul i64 %i.sr, %i.sp
  %i.st = sub i64 %i.sm, %i.ss
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next494.i
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !18
  %i.sw = mul i64 %i.st, %i.sv
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next494.i
  store i64 %i.sw, ptr %i.sx, align 8, !tbaa !18
  %indvars.iv.next494.i.1 = add nuw nsw i64 %indvars.iv493.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph420.i.preheader.unr-lcssa, label %bb.z, !llvm.loop !281

.lr.ph420.i.preheader.unr-lcssa:                  ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph420.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph420.i.preheader.unr-lcssa, %.lr.ph418.i
  %indvars.iv493.i.epil.init = phi i64 [ 0, %.lr.ph418.i ], [ %indvars.iv.next494.i.1, %.lr.ph420.i.preheader.unr-lcssa ] ; 4 uses
  %lcmp.mod935 = trunc i32 %.0377540551562.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod935)
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv493.i.epil.init
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv493.i.epil.init ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !51
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.te = load i64, ptr %i.td, align 8, !tbaa !42
  %i.tf = mul i64 %i.te, %i.tc
  %i.tg = sub i64 %i.sz, %i.tf
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv493.i.epil.init
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !18
  %i.tj = mul i64 %i.tg, %i.ti
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv493.i.epil.init
  store i64 %i.tj, ptr %i.tk, align 8, !tbaa !18
  br label %.lr.ph420.i.preheader

.lr.ph420.i.preheader:                            ; preds = %.lr.ph420.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter936 = and i64 %wide.trip.count496.i, 1
  %i.tl = icmp eq i64 %i.rw, 0
  br i1 %i.tl, label %.lr.ph420.i.epil.preheader, label %.lr.ph420.i.preheader.new

.lr.ph420.i.preheader.new:                        ; preds = %.lr.ph420.i.preheader
  %unroll_iter939 = and i64 %wide.trip.count496.i, 4294967294
  br label %.lr.ph420.i

.lr.ph420.i:                                      ; preds = %.lr.ph420.i, %.lr.ph420.i.preheader.new
  %indvars.iv498.i = phi i64 [ 0, %.lr.ph420.i.preheader.new ], [ %indvars.iv.next499.i.1, %.lr.ph420.i ] ; 5 uses
  %niter940 = phi i64 [ 0, %.lr.ph420.i.preheader.new ], [ %niter940.next.1, %.lr.ph420.i ]
  %i.tm = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv498.i ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !51
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !52
  %i.tr = sub i64 %i.to, %i.tq
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv498.i
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !18
  %i.tu = mul i64 %i.tr, %i.tt
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv498.i
  store i64 %i.tu, ptr %i.tv, align 16, !tbaa !18
  %indvars.iv.next499.i = or disjoint i64 %indvars.iv498.i, 1 ; 3 uses
  %i.tw = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv.next499.i ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !51
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !52
  %i.ub = sub i64 %i.ty, %i.ua
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next499.i
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !18
  %i.ue = mul i64 %i.ub, %i.ud
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next499.i
  store i64 %i.ue, ptr %i.uf, align 8, !tbaa !18
  %indvars.iv.next499.i.1 = add nuw nsw i64 %indvars.iv498.i, 2 ; 2 uses
  %niter940.next.1 = add i64 %niter940, 2         ; 2 uses
  %niter940.ncmp.1 = icmp eq i64 %niter940.next.1, %unroll_iter939
  br i1 %niter940.ncmp.1, label %._crit_edge421.i.loopexit.unr-lcssa, label %.lr.ph420.i, !llvm.loop !282

._crit_edge421.i.loopexit.unr-lcssa:              ; preds = %.lr.ph420.i
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %._crit_edge421.i, label %.lr.ph420.i.epil.preheader

.lr.ph420.i.epil.preheader:                       ; preds = %._crit_edge421.i.loopexit.unr-lcssa, %.lr.ph420.i.preheader
  %indvars.iv498.i.epil.init = phi i64 [ 0, %.lr.ph420.i.preheader ], [ %indvars.iv.next499.i.1, %._crit_edge421.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod938 = trunc i32 %.0377540551562.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod938)
  %i.ug = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv498.i.epil.init ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !51
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !52
  %i.ul = sub i64 %i.ui, %i.uk
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv498.i.epil.init
  %i.un = load i64, ptr %i.um, align 8, !tbaa !18
  %i.uo = mul i64 %i.ul, %i.un
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv498.i.epil.init
  store i64 %i.uo, ptr %i.up, align 8, !tbaa !18
  br label %._crit_edge421.i

._crit_edge421.i:                                 ; preds = %.lr.ph420.i.epil.preheader, %._crit_edge421.i.loopexit.unr-lcssa, %._crit_edge.i158
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.re ; 3 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !18 ; 3 uses
  %.not396.i = icmp eq i64 %i.ur, 0
  %.phi.trans.insert511.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 3 uses
  %.pre512.i = load i64, ptr %.phi.trans.insert511.i, align 8, !tbaa !42 ; 3 uses
  br i1 %.not396.i, label %.loopexit.i159, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge421.i
  %i.us = sub i64 %.pre512.i, %i.ur
  %i.ut = tail call i64 @llvm.umin.i64(i64 %i.us, i64 %i.ru) ; 10 uses
  %.not397422.i = icmp eq i64 %i.ut, 0
  br i1 %.not397422.i, label %._crit_edge428.i, label %.lr.ph427.i.preheader

.lr.ph427.i.preheader:                            ; preds = %bb.aa
  %min.iters.check657 = icmp ult i64 %i.ut, 6
  %17 = ptrtoaddr ptr %.0125 to i64
  %18 = ptrtoaddr ptr %.0126 to i64
  %i.uu = sub i64 %18, %17
  %diff.check = icmp ugt i64 %i.uu, -32
  %or.cond841 = select i1 %min.iters.check657, i1 true, i1 %diff.check
  br i1 %or.cond841, label %.lr.ph427.i.preheader863, label %vector.ph658

vector.ph658:                                     ; preds = %.lr.ph427.i.preheader
  %n.vec659 = and i64 %i.ut, -4                   ; 5 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.rp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uv = mul i64 %n.vec659, %i.rp
  %i.uw = add i64 %.0362.lcssa.i, %i.uv           ; 2 uses
  %i.ux = and i64 %i.ut, 3
  %i.uy = shl <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert660 = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %broadcast.splat661 = shufflevector <2 x i64> %broadcast.splatinsert660, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert662 = insertelement <2 x i64> poison, i64 %.0362.lcssa.i, i64 0
  %broadcast.splat663 = shufflevector <2 x i64> %broadcast.splatinsert662, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.uz = mul nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction = add <2 x i64> %broadcast.splat663, %i.uz
  %invariant.op = add <2 x i64> %i.uy, %i.uy
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph658
  %index665 = phi i64 [ 0, %vector.ph658 ], [ %index.next666, %vector.body664 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph658 ], [ %vec.ind.next.reass, %vector.body664 ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, %i.uy
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %index665 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  store <2 x i64> %vec.ind, ptr %i.va, align 8, !tbaa !18
  store <2 x i64> %step.add, ptr %i.vb, align 8, !tbaa !18
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %index665 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store <2 x i64> %broadcast.splat661, ptr %i.vc, align 8, !tbaa !18
  store <2 x i64> %broadcast.splat661, ptr %i.vd, align 8, !tbaa !18
  %index.next666 = add nuw i64 %index665, 4       ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.ve = icmp eq i64 %index.next666, %n.vec659
  br i1 %i.ve, label %middle.block667, label %vector.body664, !llvm.loop !283

middle.block667:                                  ; preds = %vector.body664
  %cmp.n668 = icmp eq i64 %i.ut, %n.vec659
  br i1 %cmp.n668, label %._crit_edge428.loopexit.i, label %.lr.ph427.i.preheader863

.lr.ph427.i.preheader863:                         ; preds = %.lr.ph427.i.preheader, %middle.block667
  %.0354425.i.ph = phi i64 [ 0, %.lr.ph427.i.preheader ], [ %n.vec659, %middle.block667 ] ; 4 uses
  %.1363424.i.ph = phi i64 [ %.0362.lcssa.i, %.lr.ph427.i.preheader ], [ %i.uw, %middle.block667 ] ; 3 uses
  %.0380423.i.ph = phi i64 [ %i.ut, %.lr.ph427.i.preheader ], [ %i.ux, %middle.block667 ] ; 4 uses
  %xtraiter941 = and i64 %.0380423.i.ph, 1
  %lcmp.mod942.not = icmp eq i64 %xtraiter941, 0
  br i1 %lcmp.mod942.not, label %.lr.ph427.i.prol.loopexit, label %.lr.ph427.i.prol

.lr.ph427.i.prol:                                 ; preds = %.lr.ph427.i.preheader863
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.0354425.i.ph
  store i64 %.1363424.i.ph, ptr %i.vf, align 8, !tbaa !18
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.0354425.i.ph
  store i64 %i.rj, ptr %i.vg, align 8, !tbaa !18
  %i.vh = or disjoint i64 %.0354425.i.ph, 1       ; 2 uses
  %i.vi = add i64 %.1363424.i.ph, %i.rp           ; 2 uses
  %i.vj = add nsw i64 %.0380423.i.ph, -1
  br label %.lr.ph427.i.prol.loopexit

.lr.ph427.i.prol.loopexit:                        ; preds = %.lr.ph427.i.prol, %.lr.ph427.i.preheader863
  %.lcssa865.unr = phi i64 [ poison, %.lr.ph427.i.preheader863 ], [ %i.vh, %.lr.ph427.i.prol ]
  %.lcssa864.unr = phi i64 [ poison, %.lr.ph427.i.preheader863 ], [ %i.vi, %.lr.ph427.i.prol ]
  %.0354425.i.unr = phi i64 [ %.0354425.i.ph, %.lr.ph427.i.preheader863 ], [ %i.vh, %.lr.ph427.i.prol ]
  %.1363424.i.unr = phi i64 [ %.1363424.i.ph, %.lr.ph427.i.preheader863 ], [ %i.vi, %.lr.ph427.i.prol ]
  %.0380423.i.unr = phi i64 [ %.0380423.i.ph, %.lr.ph427.i.preheader863 ], [ %i.vj, %.lr.ph427.i.prol ]
  %i.vk = icmp eq i64 %.0380423.i.ph, 1
  br i1 %i.vk, label %._crit_edge428.loopexit.i, label %.lr.ph427.i

.lr.ph427.i:                                      ; preds = %.lr.ph427.i.prol.loopexit, %.lr.ph427.i
  %.0354425.i = phi i64 [ %i.vr, %.lr.ph427.i ], [ %.0354425.i.unr, %.lr.ph427.i.prol.loopexit ] ; 4 uses
  %.1363424.i = phi i64 [ %i.vs, %.lr.ph427.i ], [ %.1363424.i.unr, %.lr.ph427.i.prol.loopexit ] ; 2 uses
  %.0380423.i = phi i64 [ %i.vt, %.lr.ph427.i ], [ %.0380423.i.unr, %.lr.ph427.i.prol.loopexit ]
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.0354425.i
  store i64 %.1363424.i, ptr %i.vl, align 8, !tbaa !18
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.0354425.i
  store i64 %i.rj, ptr %i.vm, align 8, !tbaa !18
  %i.vn = add nuw i64 %.0354425.i, 1              ; 2 uses
  %i.vo = add i64 %.1363424.i, %i.rp              ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.vn
  store i64 %i.vo, ptr %i.vp, align 8, !tbaa !18
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %i.vn
  store i64 %i.rj, ptr %i.vq, align 8, !tbaa !18
  %i.vr = add nuw i64 %.0354425.i, 2              ; 2 uses
  %i.vs = add i64 %i.vo, %i.rp                    ; 2 uses
  %i.vt = add i64 %.0380423.i, -2                 ; 2 uses
  %.not397.i.1 = icmp eq i64 %i.vt, 0
  br i1 %.not397.i.1, label %._crit_edge428.loopexit.i, label %.lr.ph427.i, !llvm.loop !284

._crit_edge428.loopexit.i:                        ; preds = %.lr.ph427.i.prol.loopexit, %.lr.ph427.i, %middle.block667
  %.lcssa511 = phi i64 [ %n.vec659, %middle.block667 ], [ %.lcssa865.unr, %.lr.ph427.i.prol.loopexit ], [ %i.vr, %.lr.ph427.i ]
  %.lcssa510 = phi i64 [ %i.uw, %middle.block667 ], [ %.lcssa864.unr, %.lr.ph427.i.prol.loopexit ], [ %i.vs, %.lr.ph427.i ]
  %.pre510.i = load i64, ptr %.phi.trans.insert511.i, align 8, !tbaa !42
  br label %._crit_edge428.i

._crit_edge428.i:                                 ; preds = %._crit_edge428.loopexit.i, %bb.aa
  %i.vu = phi i64 [ %.pre512.i, %bb.aa ], [ %.pre510.i, %._crit_edge428.loopexit.i ] ; 6 uses
  %.1363.lcssa.i = phi i64 [ %.0362.lcssa.i, %bb.aa ], [ %.lcssa510, %._crit_edge428.loopexit.i ] ; 2 uses
  %.0354.lcssa.i = phi i64 [ 0, %bb.aa ], [ %.lcssa511, %._crit_edge428.loopexit.i ] ; 5 uses
  %i.vv = mul i64 %i.ut, %i.ri
  %i.vw = sub i64 %.535.i, %i.vv                  ; 5 uses
  %i.vx = sub nuw i64 %i.ru, %i.ut                ; 5 uses
  %i.vy = add i64 %i.ut, %i.ur                    ; 2 uses
  store i64 %i.vy, ptr %i.uq, align 8, !tbaa !18
  %.not398.i = icmp ult i64 %i.vy, %i.vu
  br i1 %.not398.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge428.i
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.re
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !18
  %i.wb = add i64 %i.wa, %.1363.lcssa.i           ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.re
  store i64 %i.rs, ptr %i.wc, align 8, !tbaa !18
  store i64 0, ptr %i.uq, align 8, !tbaa !18
  %i.wd = add i32 %.0377540551562.i, -2           ; 2 uses
  %i.we = icmp sgt i32 %i.wd, -1
  br i1 %i.we, label %.lr.ph434.i, label %.loopexit.i159

.lr.ph434.i:                                      ; preds = %bb.ab, %bb.ad
  %.2364432.i = phi i64 [ %i.xj, %bb.ad ], [ %i.wb, %bb.ab ] ; 2 uses
  %.0375431.i = phi i32 [ %i.xk, %bb.ad ], [ %i.wd, %bb.ab ] ; 3 uses
  %i.wf = zext nneg i32 %.0375431.i to i64        ; 7 uses
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.wf ; 4 uses
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !18
  %i.wi = add i64 %i.wh, 1                        ; 2 uses
  store i64 %i.wi, ptr %i.wg, align 8, !tbaa !18
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.wf ; 4 uses
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !18
  %i.wl = add i64 %i.wk, 1                        ; 2 uses
  store i64 %i.wl, ptr %i.wj, align 8, !tbaa !18
  %i.wm = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.wf ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !52 ; 2 uses
  %i.wp = icmp ult i64 %i.wl, %i.wo
  br i1 %i.wp, label %.loopexit.i159, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph434.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !51
  %i.ws = sub i64 %i.wi, %i.wo
  %i.wt = add i64 %i.ws, %i.wr
  store i64 %i.wt, ptr %i.wg, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.wf
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !18
  %i.ww = add i64 %i.wv, %.2364432.i              ; 2 uses
  store i64 0, ptr %i.wj, align 8, !tbaa !18
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.wf ; 3 uses
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !18
  %i.wz = add i64 %i.wy, 1                        ; 2 uses
  store i64 %i.wz, ptr %i.wx, align 8, !tbaa !18
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !42
  %i.xc = icmp ult i64 %i.wz, %i.xb
  br i1 %i.xc, label %.loopexit.i159, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.xd = load i64, ptr %i.wm, align 8, !tbaa !50
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %i.wf
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !18
  %i.xg = add nsw i64 %i.xf, %i.xd
  store i64 %i.xg, ptr %i.wg, align 8, !tbaa !18
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.wf
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !18
  %i.xj = add i64 %i.xi, %i.ww                    ; 2 uses
  store i64 0, ptr %i.wx, align 8, !tbaa !18
  store i64 0, ptr %i.wj, align 8, !tbaa !18
  %i.xk = add nsw i32 %.0375431.i, -1
  %i.xl = icmp sgt i32 %.0375431.i, 0
  br i1 %i.xl, label %.lr.ph434.i, label %.loopexit.i159, !llvm.loop !285

bb.ae:                                            ; preds = %._crit_edge428.i
  %i.xm = mul i64 %i.ut, %i.rm
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.re ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !18
  %i.xp = add i64 %i.xo, %i.xm
  store i64 %i.xp, ptr %i.xn, align 8, !tbaa !18
  br label %.loopexit.i159

.loopexit.i159:                                   ; preds = %bb.ad, %bb.ac, %.lr.ph434.i, %bb.ae, %bb.ab, %._crit_edge421.i
  %i.xq = phi i64 [ %.pre512.i, %._crit_edge421.i ], [ %i.vu, %bb.ae ], [ %i.vu, %bb.ab ], [ %i.vu, %.lr.ph434.i ], [ %i.vu, %bb.ac ], [ %i.vu, %bb.ad ] ; 5 uses
  %.0379.i = phi i64 [ %i.ru, %._crit_edge421.i ], [ %i.vx, %bb.ae ], [ %i.vx, %bb.ab ], [ %i.vx, %.lr.ph434.i ], [ %i.vx, %bb.ac ], [ %i.vx, %bb.ad ] ; 3 uses
  %.3365.i = phi i64 [ %.0362.lcssa.i, %._crit_edge421.i ], [ %.1363.lcssa.i, %bb.ae ], [ %i.wb, %bb.ab ], [ %i.xj, %bb.ad ], [ %i.ww, %bb.ac ], [ %.2364432.i, %.lr.ph434.i ] ; 2 uses
  %.1355.i = phi i64 [ 0, %._crit_edge421.i ], [ %.0354.lcssa.i, %bb.ae ], [ %.0354.lcssa.i, %bb.ab ], [ %.0354.lcssa.i, %.lr.ph434.i ], [ %.0354.lcssa.i, %bb.ac ], [ %.0354.lcssa.i, %bb.ad ] ; 2 uses
  %.0352.i = phi i64 [ %.535.i, %._crit_edge421.i ], [ %i.vw, %bb.ae ], [ %i.vw, %bb.ab ], [ %i.vw, %.lr.ph434.i ], [ %i.vw, %bb.ac ], [ %i.vw, %bb.ad ]
  %i.xr = udiv i64 %.0379.i, %i.xq                ; 2 uses
  %.not399450.i = icmp ugt i64 %i.xq, %.0379.i
  br i1 %.not399450.i, label %._crit_edge456.i, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %.loopexit.i159
  %i.xs = add i64 %i.xq, 7
  %i.xt = lshr i64 %i.xs, 3                       ; 8 uses
  %i.xu = and i64 %i.xq, 7
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.re
  %i.xw = add i32 %.0377540551562.i, -2           ; 2 uses
  %i.xx = icmp sgt i32 %i.xw, -1
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge444.i, %.lr.ph455.i
  %.2356453.i = phi i64 [ %.1355.i, %.lr.ph455.i ], [ %i.zc, %._crit_edge444.i ] ; 8 uses
  %.4366452.i = phi i64 [ %.3365.i, %.lr.ph455.i ], [ %.14.i, %._crit_edge444.i ] ; 8 uses
end_hunk_0
begin_hunk_1_@H5S__hyper_iter_get_seq_list:bb.a
  switch i64 %i.xu, label %default.unreachable [
    i64 0, label %bb.ag
    i64 7, label %bb.ah
    i64 6, label %bb.ai
    i64 5, label %bb.aj
    i64 4, label %bb.ak
    i64 3, label %bb.al
    i64 2, label %bb.am
    i64 1, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.an, %bb.af
  %.5367.i = phi i64 [ %.4366452.i, %bb.af ], [ %i.zd, %bb.an ] ; 2 uses
  %.3357.i = phi i64 [ %.2356453.i, %bb.af ], [ %i.zc, %bb.an ] ; 3 uses
  %.0.i = phi i64 [ %i.xt, %bb.af ], [ %i.ze, %bb.an ]
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.3357.i
  store i64 %.5367.i, ptr %i.xy, align 8, !tbaa !18
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.3357.i
  store i64 %i.rj, ptr %i.xz, align 8, !tbaa !18
  %i.ya = add i64 %.3357.i, 1
  %i.yb = add i64 %.5367.i, %i.rp
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.6368.i = phi i64 [ %i.yb, %bb.ag ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.4358.i = phi i64 [ %i.ya, %bb.ag ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.ag ], [ %i.xt, %bb.af ]
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.4358.i
  store i64 %.6368.i, ptr %i.yc, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.4358.i
  store i64 %i.rj, ptr %i.yd, align 8, !tbaa !18
  %i.ye = add i64 %.4358.i, 1
  %i.yf = add i64 %.6368.i, %i.rp
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.7369.i = phi i64 [ %i.yf, %bb.ah ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.5359.i = phi i64 [ %i.ye, %bb.ah ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %bb.ah ], [ %i.xt, %bb.af ]
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.5359.i
  store i64 %.7369.i, ptr %i.yg, align 8, !tbaa !18
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.5359.i
  store i64 %i.rj, ptr %i.yh, align 8, !tbaa !18
  %i.yi = add i64 %.5359.i, 1
  %i.yj = add i64 %.7369.i, %i.rp
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.8370.i = phi i64 [ %i.yj, %bb.ai ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.6360.i = phi i64 [ %i.yi, %bb.ai ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.3.i160 = phi i64 [ %.2.i, %bb.ai ], [ %i.xt, %bb.af ]
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.6360.i
  store i64 %.8370.i, ptr %i.yk, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.6360.i
  store i64 %i.rj, ptr %i.yl, align 8, !tbaa !18
  %i.ym = add i64 %.6360.i, 1
  %i.yn = add i64 %.8370.i, %i.rp
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.9371.i = phi i64 [ %i.yn, %bb.aj ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.7361.i = phi i64 [ %i.ym, %bb.aj ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.4.i161 = phi i64 [ %.3.i160, %bb.aj ], [ %i.xt, %bb.af ]
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.7361.i
  store i64 %.9371.i, ptr %i.yo, align 8, !tbaa !18
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.7361.i
  store i64 %i.rj, ptr %i.yp, align 8, !tbaa !18
  %i.yq = add i64 %.7361.i, 1
  %i.yr = add i64 %.9371.i, %i.rp
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %.10372.i = phi i64 [ %i.yr, %bb.ak ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.8.i = phi i64 [ %i.yq, %bb.ak ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.5.i = phi i64 [ %.4.i161, %bb.ak ], [ %i.xt, %bb.af ]
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.8.i
  store i64 %.10372.i, ptr %i.ys, align 8, !tbaa !18
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.8.i
  store i64 %i.rj, ptr %i.yt, align 8, !tbaa !18
  %i.yu = add i64 %.8.i, 1
  %i.yv = add i64 %.10372.i, %i.rp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.11373.i = phi i64 [ %i.yv, %bb.al ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.9.i = phi i64 [ %i.yu, %bb.al ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.6.i162 = phi i64 [ %.5.i, %bb.al ], [ %i.xt, %bb.af ]
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.9.i
  store i64 %.11373.i, ptr %i.yw, align 8, !tbaa !18
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.9.i
  store i64 %i.rj, ptr %i.yx, align 8, !tbaa !18
  %i.yy = add i64 %.9.i, 1
  %i.yz = add i64 %.11373.i, %i.rp
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.12374.i = phi i64 [ %i.yz, %bb.am ], [ %.4366452.i, %bb.af ] ; 2 uses
  %.10.i = phi i64 [ %i.yy, %bb.am ], [ %.2356453.i, %bb.af ] ; 3 uses
  %.7.i = phi i64 [ %.6.i162, %bb.am ], [ %i.xt, %bb.af ]
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.10.i
  store i64 %.12374.i, ptr %i.za, align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.10.i
  store i64 %i.rj, ptr %i.zb, align 8, !tbaa !18
  %i.zc = add i64 %.10.i, 1                       ; 3 uses
  %i.zd = add i64 %.12374.i, %i.rp                ; 2 uses
  %i.ze = add i64 %.7.i, -1                       ; 2 uses
  %.not403.i = icmp eq i64 %i.ze, 0
  br i1 %.not403.i, label %bb.ao, label %bb.ag, !llvm.loop !286

bb.ao:                                            ; preds = %bb.an
  %i.zf = load i64, ptr %i.xv, align 8, !tbaa !18
  %i.zg = add i64 %i.zf, %i.zd                    ; 2 uses
  br i1 %i.xx, label %.lr.ph443.i, label %._crit_edge444.i

.lr.ph443.i:                                      ; preds = %bb.ao, %bb.aq
  %.13441.i = phi i64 [ %i.aal, %bb.aq ], [ %i.zg, %bb.ao ] ; 2 uses
  %.1376440.i = phi i32 [ %i.aam, %bb.aq ], [ %i.xw, %bb.ao ] ; 3 uses
  %i.zh = zext nneg i32 %.1376440.i to i64        ; 7 uses
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.zh ; 4 uses
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !18
  %i.zk = add i64 %i.zj, 1                        ; 2 uses
  store i64 %i.zk, ptr %i.zi, align 8, !tbaa !18
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.zh ; 4 uses
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !18
  %i.zn = add i64 %i.zm, 1                        ; 2 uses
  store i64 %i.zn, ptr %i.zl, align 8, !tbaa !18
  %i.zo = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.zh ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !52 ; 2 uses
  %i.zr = icmp ult i64 %i.zn, %i.zq
  br i1 %i.zr, label %._crit_edge444.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph443.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !51
  %i.zu = sub i64 %i.zk, %i.zq
  %i.zv = add i64 %i.zu, %i.zt
  store i64 %i.zv, ptr %i.zi, align 8, !tbaa !18
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.zh
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !18
  %i.zy = add i64 %i.zx, %.13441.i                ; 2 uses
  store i64 0, ptr %i.zl, align 8, !tbaa !18
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.zh ; 3 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !18
  %i.aab = add i64 %i.aaa, 1                      ; 2 uses
  store i64 %i.aab, ptr %i.zz, align 8, !tbaa !18
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !42
  %i.aae = icmp ult i64 %i.aab, %i.aad
  br i1 %i.aae, label %._crit_edge444.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.aaf = load i64, ptr %i.zo, align 8, !tbaa !50
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %i.zh
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !18
  %i.aai = add nsw i64 %i.aah, %i.aaf
  store i64 %i.aai, ptr %i.zi, align 8, !tbaa !18
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.zh
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !18
  %i.aal = add i64 %i.aak, %i.zy                  ; 2 uses
  store i64 0, ptr %i.zz, align 8, !tbaa !18
  store i64 0, ptr %i.zl, align 8, !tbaa !18
  %i.aam = add nsw i32 %.1376440.i, -1
  %i.aan = icmp sgt i32 %.1376440.i, 0
  br i1 %i.aan, label %.lr.ph443.i, label %._crit_edge444.i, !llvm.loop !287

._crit_edge444.i:                                 ; preds = %bb.aq, %bb.ap, %.lr.ph443.i, %bb.ao
  %.14.i = phi i64 [ %i.zg, %bb.ao ], [ %i.aal, %bb.aq ], [ %.13441.i, %.lr.ph443.i ], [ %i.zy, %bb.ap ] ; 2 uses
  %i.aao = add i64 %.0378451.i, -1                ; 2 uses
  %.not399.i = icmp eq i64 %i.aao, 0
  br i1 %.not399.i, label %._crit_edge456.loopexit.i, label %bb.af, !llvm.loop !288

._crit_edge456.loopexit.i:                        ; preds = %._crit_edge444.i
  %.pre513.i = load i64, ptr %.phi.trans.insert511.i, align 8, !tbaa !42
  br label %._crit_edge456.i

._crit_edge456.i:                                 ; preds = %._crit_edge456.loopexit.i, %.loopexit.i159
  %i.aap = phi i64 [ %i.xq, %.loopexit.i159 ], [ %.pre513.i, %._crit_edge456.loopexit.i ]
  %.4366.lcssa.i = phi i64 [ %.3365.i, %.loopexit.i159 ], [ %.14.i, %._crit_edge456.loopexit.i ] ; 4 uses
  %.2356.lcssa.i = phi i64 [ %.1355.i, %.loopexit.i159 ], [ %i.zc, %._crit_edge456.loopexit.i ] ; 7 uses
  %i.aaq = mul i64 %i.aap, %i.xr                  ; 2 uses
  %i.aar = mul i64 %i.aaq, %i.ri
  %i.aas = sub i64 %.0352.i, %i.aar               ; 3 uses
  %i.aat = sub i64 %.0379.i, %i.aaq               ; 8 uses
  %.not400.i = icmp eq i64 %i.aas, 0
  br i1 %.not400.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge456.i
  %i.aau = icmp ult i64 %.2356.lcssa.i, %.0130
  br i1 %i.aau, label %.preheader.i, label %bb.au

.preheader.i:                                     ; preds = %bb.ar
  %.not401459.i = icmp eq i64 %i.aat, 0
  br i1 %.not401459.i, label %._crit_edge464.i, label %.lr.ph463.i.preheader

.lr.ph463.i.preheader:                            ; preds = %.preheader.i
  %min.iters.check675 = icmp ult i64 %i.aat, 6
  %19 = ptrtoaddr ptr %.0125 to i64
  %20 = ptrtoaddr ptr %.0126 to i64
  %i.aav = sub i64 %20, %19
  %diff.check673 = icmp ugt i64 %i.aav, -32
  %or.cond842 = select i1 %min.iters.check675, i1 true, i1 %diff.check673
  br i1 %or.cond842, label %.lr.ph463.i.preheader859, label %vector.ph676

vector.ph676:                                     ; preds = %.lr.ph463.i.preheader
  %n.vec677 = and i64 %i.aat, -4                  ; 4 uses
  %broadcast.splatinsert678 = insertelement <2 x i64> poison, i64 %i.rp, i64 0
  %broadcast.splat679 = shufflevector <2 x i64> %broadcast.splatinsert678, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aaw = add i64 %.2356.lcssa.i, %n.vec677      ; 2 uses
  %i.aax = mul i64 %n.vec677, %i.rp
  %i.aay = add i64 %.4366.lcssa.i, %i.aax         ; 2 uses
  %i.aaz = and i64 %i.aat, 3
  %i.aba = shl <2 x i64> %broadcast.splat679, splat (i64 1) ; 3 uses
  %broadcast.splatinsert680 = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %broadcast.splat681 = shufflevector <2 x i64> %broadcast.splatinsert680, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert682 = insertelement <2 x i64> poison, i64 %.4366.lcssa.i, i64 0
  %broadcast.splat683 = shufflevector <2 x i64> %broadcast.splatinsert682, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.abb = mul nuw <2 x i64> %broadcast.splat679, <i64 0, i64 1>
  %induction684 = add <2 x i64> %broadcast.splat683, %i.abb
  %invariant.op1052 = add <2 x i64> %i.aba, %i.aba
  br label %vector.body685

vector.body685:                                   ; preds = %vector.body685, %vector.ph676
  %index686 = phi i64 [ 0, %vector.ph676 ], [ %index.next689, %vector.body685 ] ; 2 uses
  %vec.ind687 = phi <2 x i64> [ %induction684, %vector.ph676 ], [ %vec.ind.next690.reass, %vector.body685 ] ; 3 uses
  %step.add688 = add <2 x i64> %vec.ind687, %i.aba
  %i.abc = add i64 %.2356.lcssa.i, %index686      ; 2 uses
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.abc ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  store <2 x i64> %vec.ind687, ptr %i.abd, align 8, !tbaa !18
  store <2 x i64> %step.add688, ptr %i.abe, align 8, !tbaa !18
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %i.abc ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  store <2 x i64> %broadcast.splat681, ptr %i.abf, align 8, !tbaa !18
  store <2 x i64> %broadcast.splat681, ptr %i.abg, align 8, !tbaa !18
  %index.next689 = add nuw i64 %index686, 4       ; 2 uses
  %vec.ind.next690.reass = add <2 x i64> %vec.ind687, %invariant.op1052
  %i.abh = icmp eq i64 %index.next689, %n.vec677
  br i1 %i.abh, label %middle.block691, label %vector.body685, !llvm.loop !289

middle.block691:                                  ; preds = %vector.body685
  %cmp.n692 = icmp eq i64 %i.aat, %n.vec677
  br i1 %cmp.n692, label %._crit_edge464.i, label %.lr.ph463.i.preheader859

.lr.ph463.i.preheader859:                         ; preds = %.lr.ph463.i.preheader, %middle.block691
  %.11462.i.ph = phi i64 [ %.2356.lcssa.i, %.lr.ph463.i.preheader ], [ %i.aaw, %middle.block691 ] ; 4 uses
  %.15461.i.ph = phi i64 [ %.4366.lcssa.i, %.lr.ph463.i.preheader ], [ %i.aay, %middle.block691 ] ; 3 uses
  %.1381460.i.ph = phi i64 [ %i.aat, %.lr.ph463.i.preheader ], [ %i.aaz, %middle.block691 ] ; 4 uses
  %xtraiter943 = and i64 %.1381460.i.ph, 1
  %lcmp.mod944.not = icmp eq i64 %xtraiter943, 0
  br i1 %lcmp.mod944.not, label %.lr.ph463.i.prol.loopexit, label %.lr.ph463.i.prol

.lr.ph463.i.prol:                                 ; preds = %.lr.ph463.i.preheader859
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.11462.i.ph
  store i64 %.15461.i.ph, ptr %i.abi, align 8, !tbaa !18
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.11462.i.ph
  store i64 %i.rj, ptr %i.abj, align 8, !tbaa !18
  %i.abk = add i64 %.11462.i.ph, 1                ; 2 uses
  %i.abl = add i64 %.15461.i.ph, %i.rp            ; 2 uses
  %i.abm = add nsw i64 %.1381460.i.ph, -1
  br label %.lr.ph463.i.prol.loopexit

.lr.ph463.i.prol.loopexit:                        ; preds = %.lr.ph463.i.prol, %.lr.ph463.i.preheader859
  %.lcssa861.unr = phi i64 [ poison, %.lr.ph463.i.preheader859 ], [ %i.abk, %.lr.ph463.i.prol ]
  %.lcssa860.unr = phi i64 [ poison, %.lr.ph463.i.preheader859 ], [ %i.abl, %.lr.ph463.i.prol ]
  %.11462.i.unr = phi i64 [ %.11462.i.ph, %.lr.ph463.i.preheader859 ], [ %i.abk, %.lr.ph463.i.prol ]
  %.15461.i.unr = phi i64 [ %.15461.i.ph, %.lr.ph463.i.preheader859 ], [ %i.abl, %.lr.ph463.i.prol ]
  %.1381460.i.unr = phi i64 [ %.1381460.i.ph, %.lr.ph463.i.preheader859 ], [ %i.abm, %.lr.ph463.i.prol ]
  %i.abn = icmp eq i64 %.1381460.i.ph, 1
  br i1 %i.abn, label %._crit_edge464.i, label %.lr.ph463.i

.lr.ph463.i:                                      ; preds = %.lr.ph463.i.prol.loopexit, %.lr.ph463.i
  %.11462.i = phi i64 [ %i.abu, %.lr.ph463.i ], [ %.11462.i.unr, %.lr.ph463.i.prol.loopexit ] ; 4 uses
  %.15461.i = phi i64 [ %i.abv, %.lr.ph463.i ], [ %.15461.i.unr, %.lr.ph463.i.prol.loopexit ] ; 2 uses
  %.1381460.i = phi i64 [ %i.abw, %.lr.ph463.i ], [ %.1381460.i.unr, %.lr.ph463.i.prol.loopexit ]
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.11462.i
  store i64 %.15461.i, ptr %i.abo, align 8, !tbaa !18
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.11462.i
  store i64 %i.rj, ptr %i.abp, align 8, !tbaa !18
  %i.abq = add i64 %.11462.i, 1                   ; 2 uses
  %i.abr = add i64 %.15461.i, %i.rp               ; 2 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.abq
  store i64 %i.abr, ptr %i.abs, align 8, !tbaa !18
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %i.abq
  store i64 %i.rj, ptr %i.abt, align 8, !tbaa !18
  %i.abu = add i64 %.11462.i, 2                   ; 2 uses
  %i.abv = add i64 %i.abr, %i.rp                  ; 2 uses
  %i.abw = add i64 %.1381460.i, -2                ; 2 uses
  %.not401.i.1 = icmp eq i64 %i.abw, 0
  br i1 %.not401.i.1, label %._crit_edge464.i, label %.lr.ph463.i, !llvm.loop !290

._crit_edge464.i:                                 ; preds = %.lr.ph463.i.prol.loopexit, %.lr.ph463.i, %middle.block691, %.preheader.i
  %.15.lcssa.i = phi i64 [ %.4366.lcssa.i, %.preheader.i ], [ %i.aay, %middle.block691 ], [ %.lcssa860.unr, %.lr.ph463.i.prol.loopexit ], [ %i.abv, %.lr.ph463.i ]
  %.11.lcssa.i = phi i64 [ %.2356.lcssa.i, %.preheader.i ], [ %i.aaw, %middle.block691 ], [ %.lcssa861.unr, %.lr.ph463.i.prol.loopexit ], [ %i.abu, %.lr.ph463.i ] ; 6 uses
  %i.abx = mul i64 %i.aat, %i.ri
  %i.aby = sub i64 %i.aas, %i.abx                 ; 4 uses
  %i.abz = mul i64 %i.aat, %i.rm
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.re ; 3 uses
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !18
  %i.acc = add i64 %i.acb, %i.abz                 ; 2 uses
  store i64 %i.acc, ptr %i.aca, align 8, !tbaa !18
  %.not402.i = icmp eq i64 %i.aby, 0
  br i1 %.not402.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %._crit_edge464.i
  %i.acd = icmp ult i64 %.11.lcssa.i, %.0130
  br i1 %i.acd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ace = mul i64 %i.aby, %i.pd
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %.11.lcssa.i
  store i64 %.15.lcssa.i, ptr %i.acf, align 8, !tbaa !18
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %.0125, i64 %.11.lcssa.i
  store i64 %i.ace, ptr %i.acg, align 8, !tbaa !18
  %i.ach = add nuw i64 %.11.lcssa.i, 1
  %i.aci = add i64 %i.acc, %i.aby
  store i64 %i.aci, ptr %i.aca, align 8, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge464.i, %bb.ar, %._crit_edge456.i
  %.12.i = phi i64 [ %i.ach, %bb.at ], [ %.11.lcssa.i, %bb.as ], [ %.11.lcssa.i, %._crit_edge464.i ], [ %.2356.lcssa.i, %bb.ar ], [ %.2356.lcssa.i, %._crit_edge456.i ]
  %.1353.i = phi i64 [ 0, %bb.at ], [ %i.aby, %bb.as ], [ 0, %._crit_edge464.i ], [ %i.aas, %bb.ar ], [ 0, %._crit_edge456.i ]
  br i1 %.not471544549564.i, label %._crit_edge470.i, label %.lr.ph469.preheader.i

.lr.ph469.preheader.i:                            ; preds = %bb.au
  %wide.trip.count506.i = zext i32 %.0377540551562.i to i64 ; 5 uses
  %min.iters.check701 = icmp ult i32 %.0377540551562.i, 14
  br i1 %min.iters.check701, label %.lr.ph469.i.preheader, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph469.preheader.i
  %21 = ptrtoaddr ptr %0 to i64
  %22 = ptrtoaddr ptr %i.a to i64
  %i.acj = add i64 %21, 552                       ; 2 uses
  %i.ack = sub i64 %22, %i.acj
  %diff.check697 = icmp ugt i64 %i.ack, -32
  %23 = ptrtoaddr ptr %.0382538552561.i to i64
  %i.acl = sub i64 %23, %i.acj
  %diff.check699 = icmp ugt i64 %i.acl, -32
  %conflict.rdx = or i1 %diff.check697, %diff.check699
  br i1 %conflict.rdx, label %.lr.ph469.i.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %vector.memcheck696
  %n.vec703 = and i64 %wide.trip.count506.i, 4294967292 ; 3 uses
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph702
  %index705 = phi i64 [ 0, %vector.ph702 ], [ %index.next710, %vector.body704 ] ; 4 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index705 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %wide.load706 = load <2 x i64>, ptr %i.acm, align 16, !tbaa !18
  %wide.load707 = load <2 x i64>, ptr %i.acn, align 16, !tbaa !18
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %index705 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %wide.load708 = load <2 x i64>, ptr %i.aco, align 8, !tbaa !18
  %wide.load709 = load <2 x i64>, ptr %i.acp, align 8, !tbaa !18
  %i.acq = sub nsw <2 x i64> %wide.load706, %wide.load708
  %i.acr = sub nsw <2 x i64> %wide.load707, %wide.load709
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index705 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store <2 x i64> %i.acq, ptr %i.acs, align 8, !tbaa !24
  store <2 x i64> %i.acr, ptr %i.act, align 8, !tbaa !24
  %index.next710 = add nuw i64 %index705, 4       ; 2 uses
  %i.acu = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.acu, label %middle.block711, label %vector.body704, !llvm.loop !291

middle.block711:                                  ; preds = %vector.body704
  %cmp.n712 = icmp eq i64 %n.vec703, %wide.trip.count506.i
  br i1 %cmp.n712, label %._crit_edge470.i, label %.lr.ph469.i.preheader

.lr.ph469.i.preheader:                            ; preds = %vector.memcheck696, %.lr.ph469.preheader.i, %middle.block711
  %indvars.iv503.i.ph = phi i64 [ 0, %vector.memcheck696 ], [ 0, %.lr.ph469.preheader.i ], [ %n.vec703, %middle.block711 ] ; 3 uses
  %xtraiter945 = and i64 %wide.trip.count506.i, 3 ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph469.i.prol.loopexit, label %.lr.ph469.i.prol

.lr.ph469.i.prol:                                 ; preds = %.lr.ph469.i.preheader, %.lr.ph469.i.prol
  %indvars.iv503.i.prol = phi i64 [ %indvars.iv.next504.i.prol, %.lr.ph469.i.prol ], [ %indvars.iv503.i.ph, %.lr.ph469.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph469.i.prol ], [ 0, %.lr.ph469.i.preheader ]
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv503.i.prol
  %i.acw = load i64, ptr %i.acv, align 8, !tbaa !18
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv503.i.prol
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !18
  %i.acz = sub nsw i64 %i.acw, %i.acy
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv503.i.prol
  store i64 %i.acz, ptr %i.ada, align 8, !tbaa !24
  %indvars.iv.next504.i.prol = add nuw nsw i64 %indvars.iv503.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter945
  br i1 %prol.iter.cmp.not, label %.lr.ph469.i.prol.loopexit, label %.lr.ph469.i.prol, !llvm.loop !292

.lr.ph469.i.prol.loopexit:                        ; preds = %.lr.ph469.i.prol, %.lr.ph469.i.preheader
  %indvars.iv503.i.unr = phi i64 [ %indvars.iv503.i.ph, %.lr.ph469.i.preheader ], [ %indvars.iv.next504.i.prol, %.lr.ph469.i.prol ]
  %i.adb = sub nsw i64 %indvars.iv503.i.ph, %wide.trip.count506.i
  %i.adc = icmp ugt i64 %i.adb, -4
  br i1 %i.adc, label %._crit_edge470.i, label %.lr.ph469.i

.lr.ph469.i:                                      ; preds = %.lr.ph469.i.prol.loopexit, %.lr.ph469.i
  %indvars.iv503.i = phi i64 [ %indvars.iv.next504.i.3, %.lr.ph469.i ], [ %indvars.iv503.i.unr, %.lr.ph469.i.prol.loopexit ] ; 7 uses
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv503.i
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !18
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv503.i
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !18
  %i.adh = sub nsw i64 %i.ade, %i.adg
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv503.i
  store i64 %i.adh, ptr %i.adi, align 8, !tbaa !24
  %indvars.iv.next504.i = add nuw nsw i64 %indvars.iv503.i, 1 ; 3 uses
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next504.i
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !18
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !18
  %i.adn = sub nsw i64 %i.adk, %i.adm
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next504.i
  store i64 %i.adn, ptr %i.ado, align 8, !tbaa !24
  %indvars.iv.next504.i.1 = add nuw nsw i64 %indvars.iv503.i, 2 ; 3 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next504.i.1
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !18
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i.1
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !18
  %i.adt = sub nsw i64 %i.adq, %i.ads
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next504.i.1
  store i64 %i.adt, ptr %i.adu, align 8, !tbaa !24
  %indvars.iv.next504.i.2 = add nuw nsw i64 %indvars.iv503.i, 3 ; 3 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next504.i.2
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !18
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %.0382538552561.i, i64 %indvars.iv.next504.i.2
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !18
  %i.adz = sub nsw i64 %i.adw, %i.ady
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next504.i.2
  store i64 %i.adz, ptr %i.aea, align 8, !tbaa !24
  %indvars.iv.next504.i.3 = add nuw nsw i64 %indvars.iv503.i, 4 ; 2 uses
  %exitcond507.not.i.3 = icmp eq i64 %indvars.iv.next504.i.3, %wide.trip.count506.i
  br i1 %exitcond507.not.i.3, label %._crit_edge470.i, label %.lr.ph469.i, !llvm.loop !293

._crit_edge470.i:                                 ; preds = %.lr.ph469.i.prol.loopexit, %.lr.ph469.i, %middle.block711, %bb.au
  %i.aeb = sub i64 %.535.i, %.1353.i              ; 2 uses
  %i.aec = load i64, ptr %i.pf, align 8, !tbaa !86
  %i.aed = sub i64 %i.aec, %i.aeb
  store i64 %i.aed, ptr %i.pf, align 8, !tbaa !86
  %i.aee = load i64, ptr %3, align 8, !tbaa !18
  %i.aef = add i64 %i.aee, %.12.i
  store i64 %i.aef, ptr %3, align 8, !tbaa !18
  %i.aeg = load i64, ptr %4, align 8, !tbaa !18
  %i.aeh = add i64 %i.aeg, %i.aeb
  store i64 %i.aeh, ptr %4, align 8, !tbaa !18
  br label %H5S__hyper_iter_get_seq_list_opt.exit

H5S__hyper_iter_get_seq_list_opt.exit:            ; preds = %bb.v, %._crit_edge470.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge147

bb.av:                                            ; preds = %bb.b
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !70 ; 10 uses
  %i.aek = add i32 %i.aej, -1                     ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 2904 ; 7 uses
  %i.aem = zext i32 %i.aek to i64                 ; 17 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %i.aem ; 5 uses
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !24 ; 5 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 17 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 10 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !71 ; 5 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !86
  %..i165 = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.aev) ; 4 uses
  %.not558.i = icmp eq i32 %i.aej, 0              ; 3 uses
  br i1 %.not558.i, label %._crit_edge.i172, label %.lr.ph.preheader.i166

.lr.ph.preheader.i166:                            ; preds = %bb.av
  %wide.trip.count.i167 = zext i32 %i.aej to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.aej, 4
  br i1 %min.iters.check, label %.lr.ph.i168.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i166
  %n.vec = and i64 %wide.trip.count.i167, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aey, %vector.body ]
  %vec.phi568 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aez, %vector.body ]
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %index ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %wide.load = load <2 x i64>, ptr %i.aew, align 8, !tbaa !18
  %wide.load569 = load <2 x i64>, ptr %i.aex, align 8, !tbaa !18
  %i.aey = add <2 x i64> %wide.load, %vec.phi     ; 2 uses
  %i.aez = add <2 x i64> %wide.load569, %vec.phi568 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afa = icmp eq i64 %index.next, %n.vec
  br i1 %i.afa, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aez, %i.aey
  %24 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i167
  br i1 %cmp.n, label %._crit_edge.i172, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %.lr.ph.preheader.i166, %middle.block
  %indvars.iv.i169.ph = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %n.vec, %middle.block ]
  %.0328505.i.ph = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %24, %middle.block ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ %indvars.iv.i169.ph, %.lr.ph.i168.preheader ] ; 2 uses
  %.0328505.i = phi i64 [ %i.afd, %.lr.ph.i168 ], [ %.0328505.i.ph, %.lr.ph.i168.preheader ]
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %indvars.iv.i169
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !18
  %i.afd = add i64 %i.afc, %.0328505.i            ; 2 uses
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i167
  br i1 %exitcond.not.i171, label %._crit_edge.i172, label %.lr.ph.i168, !llvm.loop !295

._crit_edge.i172:                                 ; preds = %.lr.ph.i168, %middle.block, %bb.av
  %.0328.lcssa.i = phi i64 [ 0, %bb.av ], [ %24, %middle.block ], [ %i.afd, %.lr.ph.i168 ] ; 6 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aem ; 8 uses
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !18 ; 2 uses
  %i.afg = load i64, ptr %i.aeo, align 8, !tbaa !61
  %.not.i173 = icmp eq i64 %i.aff, %i.afg
  br i1 %.not.i173, label %.thread.i174, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i172
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !65
  %reass.sub = sub i64 %i.afi, %i.aff
  %i.afj = add i64 %reass.sub, 1
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.afj, i64 %..i165) ; 3 uses
  %i.afk = mul i64 %spec.select.i, %i.aet         ; 3 uses
  store i64 %.0328.lcssa.i, ptr %5, align 8, !tbaa !18
  store i64 %i.afk, ptr %6, align 8, !tbaa !18
  %i.afl = add i64 %i.afk, %.0328.lcssa.i         ; 6 uses
  %i.afm = sub nuw i64 %..i165, %spec.select.i    ; 7 uses
  %.not364.i = icmp eq i64 %i.afm, 0
  br i1 %.not364.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !64 ; 4 uses
  %.not367.i = icmp eq ptr %i.afo, null
  br i1 %.not367.i, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !61 ; 3 uses
  %i.afq = load i64, ptr %i.afe, align 8, !tbaa !18
  %i.afr = sub i64 %i.afp, %i.afq
  %i.afs = mul i64 %i.afr, %i.aet
  %i.aft = add i64 %i.afs, %.0328.lcssa.i
  store i64 %i.afp, ptr %i.afe, align 8, !tbaa !18
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aem
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !18
  %i.afw = add nsw i64 %i.afv, %i.afp
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aem
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !18
  %i.afz = mul i64 %i.afw, %i.afy
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aem
  store i64 %i.afz, ptr %i.aga, align 8, !tbaa !18
  store ptr %i.afo, ptr %i.aen, align 8, !tbaa !59
  br label %.thread.i174

bb.az:                                            ; preds = %bb.aw
  %i.agb = load i64, ptr %i.afe, align 8, !tbaa !18
  %i.agc = add i64 %i.agb, %spec.select.i         ; 2 uses
  store i64 %i.agc, ptr %i.afe, align 8, !tbaa !18
  %i.agd = load i64, ptr %i.afh, align 8, !tbaa !65
  %.not365.i = icmp ugt i64 %i.agc, %i.agd
  br i1 %.not365.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aem ; 2 uses
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !18
  %i.agg = add i64 %i.agf, %i.afk
  store i64 %i.agg, ptr %i.age, align 8, !tbaa !18
  br label %.thread430.i

bb.bb:                                            ; preds = %bb.az
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !64 ; 3 uses
  %.not366.i = icmp eq ptr %i.agi, null
  br i1 %.not366.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.agj = load i64, ptr %i.agi, align 8, !tbaa !61 ; 2 uses
  store i64 %i.agj, ptr %i.afe, align 8, !tbaa !18
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aem
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !18
  %i.agm = add nsw i64 %i.agl, %i.agj
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aem
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !18
  %i.agp = mul i64 %i.agm, %i.ago
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aem
  store i64 %i.agp, ptr %i.agq, align 8, !tbaa !18
  store ptr %i.agi, ptr %i.aen, align 8, !tbaa !59
  br label %.thread430.i

bb.bd:                                            ; preds = %bb.bb, %bb.ax
  %i.agr = add i32 %i.aej, -2                     ; 2 uses
  %i.ags = icmp sgt i32 %i.agr, -1
  br i1 %i.ags, label %.lr.ph511.i, label %.thread.i174

.lr.ph511.i:                                      ; preds = %bb.bd, %bb.bh
  %.0303509.i = phi i32 [ %i.ahs, %bb.bh ], [ %i.agr, %bb.bd ] ; 4 uses
  %i.agt = zext nneg i32 %.0303509.i to i64       ; 10 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %i.agt
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !59 ; 3 uses
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.agt ; 2 uses
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !18
  %i.agy = add i64 %i.agx, 1                      ; 2 uses
  store i64 %i.agy, ptr %i.agw, align 8, !tbaa !18
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !65
  %.not368.i = icmp ugt i64 %i.agy, %i.aha
  br i1 %.not368.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph511.i
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.agt
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !18
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.agt ; 2 uses
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !18
  %i.ahf = add i64 %i.ahe, %i.ahc
  store i64 %i.ahf, ptr %i.ahd, align 8, !tbaa !18
  br label %bb.bi

bb.bf:                                            ; preds = %.lr.ph511.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agv, i64 24
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !64 ; 4 uses
  %.not369.i = icmp eq ptr %i.ahh, null
  br i1 %.not369.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %i.agt
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.agt
  store ptr %i.ahh, ptr %i.ahi, align 8, !tbaa !59
  %i.ahk = load i64, ptr %i.ahh, align 8, !tbaa !61 ; 2 uses
  store i64 %i.ahk, ptr %i.ahj, align 8, !tbaa !18
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.agt
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !18
  %i.ahn = add nsw i64 %i.ahm, %i.ahk
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.agt
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !18
  %i.ahq = mul i64 %i.ahn, %i.ahp
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.agt
  store i64 %i.ahq, ptr %i.ahr, align 8, !tbaa !18
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ahs = add nsw i32 %.0303509.i, -1
  %i.aht = icmp sgt i32 %.0303509.i, 0
  br i1 %i.aht, label %.lr.ph511.i, label %.thread.i174, !llvm.loop !296

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %.2338.i = phi ptr [ %i.agv, %bb.be ], [ %i.ahh, %bb.bg ] ; 2 uses
  %i.ahu = icmp ult i32 %.0303509.i, %i.aek
  br i1 %i.ahu, label %.lr.ph515.i, label %.lr.ph519.preheader.i

.preheader453.i:                                  ; preds = %.lr.ph515.i
  br i1 %.not558.i, label %.thread.i174, label %.lr.ph519.preheader.i

.lr.ph519.preheader.i:                            ; preds = %.preheader453.i, %bb.bi
  %.3339.lcssa650.i = phi ptr [ %i.aid, %.preheader453.i ], [ %.2338.i, %bb.bi ] ; 2 uses
  %wide.trip.count625.i = zext i32 %i.aej to i64  ; 3 uses
  %min.iters.check571 = icmp ult i32 %i.aej, 4
  br i1 %min.iters.check571, label %.lr.ph519.i.preheader, label %vector.ph572

vector.ph572:                                     ; preds = %.lr.ph519.preheader.i
  %n.vec573 = and i64 %wide.trip.count625.i, 4294967292 ; 3 uses
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph572
  %index575 = phi i64 [ 0, %vector.ph572 ], [ %index.next580, %vector.body574 ] ; 2 uses
  %vec.phi576 = phi <2 x i64> [ zeroinitializer, %vector.ph572 ], [ %i.ahx, %vector.body574 ]
  %vec.phi577 = phi <2 x i64> [ zeroinitializer, %vector.ph572 ], [ %i.ahy, %vector.body574 ]
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %index575 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  %wide.load578 = load <2 x i64>, ptr %i.ahv, align 8, !tbaa !18
  %wide.load579 = load <2 x i64>, ptr %i.ahw, align 8, !tbaa !18
  %i.ahx = add <2 x i64> %wide.load578, %vec.phi576 ; 2 uses
  %i.ahy = add <2 x i64> %wide.load579, %vec.phi577 ; 2 uses
  %index.next580 = add nuw i64 %index575, 4       ; 2 uses
  %i.ahz = icmp eq i64 %index.next580, %n.vec573
  br i1 %i.ahz, label %middle.block581, label %vector.body574, !llvm.loop !297

middle.block581:                                  ; preds = %vector.body574
  %bin.rdx582 = add <2 x i64> %i.ahy, %i.ahx
  %25 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx582) ; 2 uses
  %cmp.n583 = icmp eq i64 %n.vec573, %wide.trip.count625.i
  br i1 %cmp.n583, label %.thread.i174, label %.lr.ph519.i.preheader

.lr.ph519.i.preheader:                            ; preds = %.lr.ph519.preheader.i, %middle.block581
  %indvars.iv622.i.ph = phi i64 [ 0, %.lr.ph519.preheader.i ], [ %n.vec573, %middle.block581 ]
  %.2330517.i.ph = phi i64 [ 0, %.lr.ph519.preheader.i ], [ %25, %middle.block581 ]
  br label %.lr.ph519.i

.lr.ph515.i:                                      ; preds = %bb.bi, %.lr.ph515.i
  %indvars.iv617.i = phi i64 [ %indvars.iv.next618.i, %.lr.ph515.i ], [ %i.agt, %bb.bi ]
  %.3339512.i = phi ptr [ %i.aid, %.lr.ph515.i ], [ %.2338.i, %bb.bi ]
  %indvars.iv.next618.i = add nuw nsw i64 %indvars.iv617.i, 1 ; 7 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.3339512.i, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !62
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 56
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !59 ; 5 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %indvars.iv.next618.i
  store ptr %i.aid, ptr %i.aie, align 8, !tbaa !59
  %i.aif = load i64, ptr %i.aid, align 8, !tbaa !61 ; 2 uses
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next618.i
  store i64 %i.aif, ptr %i.aig, align 8, !tbaa !18
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %indvars.iv.next618.i
  %i.aii = load i64, ptr %i.aih, align 8, !tbaa !18
  %i.aij = add nsw i64 %i.aii, %i.aif
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv.next618.i
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !18
  %i.aim = mul i64 %i.aij, %i.ail
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %indvars.iv.next618.i
  store i64 %i.aim, ptr %i.ain, align 8, !tbaa !18
  %exitcond621.not.i = icmp eq i64 %indvars.iv.next618.i, %i.aem
  br i1 %exitcond621.not.i, label %.preheader453.i, label %.lr.ph515.i, !llvm.loop !298

.lr.ph519.i:                                      ; preds = %.lr.ph519.i.preheader, %.lr.ph519.i
  %indvars.iv622.i = phi i64 [ %indvars.iv.next623.i, %.lr.ph519.i ], [ %indvars.iv622.i.ph, %.lr.ph519.i.preheader ] ; 2 uses
  %.2330517.i = phi i64 [ %i.aiq, %.lr.ph519.i ], [ %.2330517.i.ph, %.lr.ph519.i.preheader ]
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %indvars.iv622.i
  %i.aip = load i64, ptr %i.aio, align 8, !tbaa !18
  %i.aiq = add i64 %i.aip, %.2330517.i            ; 2 uses
  %indvars.iv.next623.i = add nuw nsw i64 %indvars.iv622.i, 1 ; 2 uses
  %exitcond626.not.i = icmp eq i64 %indvars.iv.next623.i, %wide.trip.count625.i
  br i1 %exitcond626.not.i, label %.thread.i174, label %.lr.ph519.i, !llvm.loop !299

.thread.i174:                                     ; preds = %bb.bh, %.lr.ph519.i, %middle.block581, %.preheader453.i, %bb.bd, %bb.ay, %._crit_edge.i172
  %.4340.i = phi ptr [ %i.aid, %.preheader453.i ], [ %i.afo, %bb.ay ], [ %i.aeo, %._crit_edge.i172 ], [ null, %bb.bd ], [ %.3339.lcssa650.i, %middle.block581 ], [ %.3339.lcssa650.i, %.lr.ph519.i ], [ null, %bb.bh ]
  %.3331.i = phi i64 [ 0, %.preheader453.i ], [ %i.aft, %bb.ay ], [ %.0328.lcssa.i, %._crit_edge.i172 ], [ %.0328.lcssa.i, %bb.bd ], [ %25, %middle.block581 ], [ %i.aiq, %.lr.ph519.i ], [ %.0328.lcssa.i, %bb.bh ]
  %.0323.i = phi i64 [ %i.afl, %.preheader453.i ], [ %i.afl, %bb.ay ], [ 0, %._crit_edge.i172 ], [ %i.afl, %bb.bd ], [ %i.afl, %middle.block581 ], [ %i.afl, %.lr.ph519.i ], [ %i.afl, %bb.bh ]
  %.0311.i = phi i64 [ %i.afm, %.preheader453.i ], [ %i.afm, %bb.ay ], [ %..i165, %._crit_edge.i172 ], [ %i.afm, %bb.bd ], [ %i.afm, %middle.block581 ], [ %i.afm, %.lr.ph519.i ], [ %i.afm, %bb.bh ] ; 3 uses
  %.0307.i = phi i64 [ 1, %.preheader453.i ], [ 1, %bb.ay ], [ 0, %._crit_edge.i172 ], [ 1, %bb.bd ], [ 1, %middle.block581 ], [ 1, %.lr.ph519.i ], [ 1, %bb.bh ] ; 3 uses
  %i.air = icmp ne i64 %.0311.i, 0
  %i.ais = icmp ult i64 %.0307.i, %1
  %i.ait = and i1 %i.air, %i.ais
  br i1 %i.ait, label %.preheader451.lr.ph.i, label %.thread430.i

.preheader451.lr.ph.i:                            ; preds = %.thread.i174
  %i.aiu = add i32 %i.aej, -2                     ; 2 uses
  %i.aiv = icmp sgt i32 %i.aiu, -1
  %wide.trip.count635.i = zext i32 %i.aej to i64  ; 3 uses
  %min.iters.check587 = icmp ult i32 %i.aej, 4
  %n.vec589 = and i64 %wide.trip.count635.i, 4294967292 ; 3 uses
  %cmp.n599 = icmp eq i64 %n.vec589, %wide.trip.count635.i
  br label %.preheader451.i

.loopexit.i177:                                   ; preds = %.lr.ph549.i, %middle.block597, %.preheader.i178
  %.12.lcssa662.i = phi ptr [ %i.aml, %.preheader.i178 ], [ %.12.lcssa661.i, %middle.block597 ], [ %.12.lcssa661.i, %.lr.ph549.i ]
  %.7335.lcssa.i = phi i64 [ 0, %.preheader.i178 ], [ %26, %middle.block597 ], [ %i.amy, %.lr.ph549.i ]
  %i.aiw = icmp ne i64 %.4315412.i, 0
  %i.aix = icmp ult i64 %.6415.i, %1
  %i.aiy = select i1 %i.aiw, i1 %i.aix, i1 false
  br i1 %i.aiy, label %.preheader451.i, label %.thread430.i

.preheader451.i:                                  ; preds = %.loopexit.i177, %.preheader451.lr.ph.i
  %.1308555.i = phi i64 [ %.0307.i, %.preheader451.lr.ph.i ], [ %.6415.i, %.loopexit.i177 ] ; 2 uses
  %.1312554.i = phi i64 [ %.0311.i, %.preheader451.lr.ph.i ], [ %.4315412.i, %.loopexit.i177 ] ; 2 uses
  %.1324553.i = phi i64 [ %.0323.i, %.preheader451.lr.ph.i ], [ %.2325461.i, %.loopexit.i177 ] ; 2 uses
  %.4332552.i = phi i64 [ %.3331.i, %.preheader451.lr.ph.i ], [ %.7335.lcssa.i, %.loopexit.i177 ]
  %.5341551.i = phi ptr [ %.4340.i, %.preheader451.lr.ph.i ], [ %.12.lcssa662.i, %.loopexit.i177 ] ; 3 uses
  %.not370521.i = icmp eq ptr %.5341551.i, null
  br i1 %.not370521.i, label %.thread396.thread.i, label %.lr.ph528.i

.lr.ph528.i:                                      ; preds = %.preheader451.i, %bb.bq
  %.0296527.i = phi ptr [ %.6342522.i, %bb.bq ], [ %.5341551.i, %.preheader451.i ]
  %.2309526.i = phi i64 [ %.4.i179, %bb.bq ], [ %.1308555.i, %.preheader451.i ] ; 12 uses
  %.2313525.i = phi i64 [ %i.ajs, %bb.bq ], [ %.1312554.i, %.preheader451.i ] ; 5 uses
  %.2325524.i = phi i64 [ %i.akb, %bb.bq ], [ %.1324553.i, %.preheader451.i ] ; 3 uses
  %.5333523.i = phi i64 [ %i.ajd, %bb.bq ], [ %.4332552.i, %.preheader451.i ]
  %.6342522.i = phi ptr [ %i.akd, %bb.bq ], [ %.5341551.i, %.preheader451.i ] ; 9 uses
  %i.aiz = load i64, ptr %.6342522.i, align 8, !tbaa !61 ; 2 uses
  %i.aja = load i64, ptr %.0296527.i, align 8, !tbaa !61
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = mul i64 %i.ajb, %i.aet
  %i.ajd = add i64 %i.ajc, %.5333523.i            ; 6 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 8
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !65
  %i.ajg = sub i64 %i.ajf, %i.aiz
  %i.ajh = add i64 %i.ajg, 1                      ; 4 uses
  %.not371.i = icmp ult i64 %i.ajh, %.2313525.i
  br i1 %.not371.i, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph528.i
  %i.aji = mul i64 %.2313525.i, %i.aet            ; 2 uses
  %.not374.i = icmp ne i64 %.2309526.i, 0
  %i.ajj = icmp eq i64 %.2325524.i, %i.ajd
  %or.cond.i176 = select i1 %.not374.i, i1 %i.ajj, i1 false
  br i1 %or.cond.i176, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ajk = getelementptr [8 x i8], ptr %6, i64 %.2309526.i
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 -8   ; 2 uses
  %i.ajm = load i64, ptr %i.ajl, align 8, !tbaa !18
  %i.ajn = add i64 %i.ajm, %i.aji
  store i64 %i.ajn, ptr %i.ajl, align 8, !tbaa !18
  br label %.thread388.thread.i

bb.bl:                                            ; preds = %bb.bj
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2309526.i
  store i64 %i.ajd, ptr %i.ajo, align 8, !tbaa !18
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.2309526.i
  store i64 %i.aji, ptr %i.ajp, align 8, !tbaa !18
  %i.ajq = add nuw i64 %.2309526.i, 1
  br label %.thread388.thread.i

bb.bm:                                            ; preds = %.lr.ph528.i
  %i.ajr = mul i64 %i.ajh, %i.aet                 ; 3 uses
  %i.ajs = sub nuw i64 %.2313525.i, %i.ajh        ; 3 uses
  %.not372.i = icmp ne i64 %.2309526.i, 0
  %i.ajt = icmp eq i64 %.2325524.i, %i.ajd
  %or.cond381.i = select i1 %.not372.i, i1 %i.ajt, i1 false
  br i1 %or.cond381.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.aju = getelementptr [8 x i8], ptr %6, i64 %.2309526.i
  %i.ajv = getelementptr i8, ptr %i.aju, i64 -8   ; 2 uses
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !18
  %i.ajx = add i64 %i.ajw, %i.ajr
  store i64 %i.ajx, ptr %i.ajv, align 8, !tbaa !18
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2309526.i
  store i64 %i.ajd, ptr %i.ajy, align 8, !tbaa !18
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.2309526.i
  store i64 %i.ajr, ptr %i.ajz, align 8, !tbaa !18
  %i.aka = add i64 %.2309526.i, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.4.i179 = phi i64 [ %.2309526.i, %bb.bn ], [ %i.aka, %bb.bo ] ; 4 uses
  %.not373.i = icmp ult i64 %.4.i179, %1
  br i1 %.not373.i, label %bb.bq, label %.thread388.thread.i

bb.bq:                                            ; preds = %bb.bp
  %i.akb = add i64 %i.ajr, %i.ajd                 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 24
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !64 ; 2 uses
  %.not370.i = icmp eq ptr %i.akd, null
  br i1 %.not370.i, label %.thread396.thread.i, label %.lr.ph528.i

.thread388.thread.i:                              ; preds = %bb.bp, %bb.bl, %bb.bk
  %.6414.i = phi i64 [ %.2309526.i, %bb.bk ], [ %i.ajq, %bb.bl ], [ %.4.i179, %bb.bp ] ; 3 uses
  %.4315411.i = phi i64 [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.ajs, %bb.bp ] ; 3 uses
  %.5322407.i = phi i64 [ %.2313525.i, %bb.bk ], [ %.2313525.i, %bb.bl ], [ %i.ajh, %bb.bp ] ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 8
  %i.akf = load i64, ptr %.6342522.i, align 8, !tbaa !61
  %i.akg = add i64 %i.akf, %.5322407.i            ; 2 uses
  store i64 %i.akg, ptr %i.afe, align 8, !tbaa !18
  %i.akh = load i64, ptr %i.ake, align 8, !tbaa !65
  %.not377.i = icmp ugt i64 %i.akg, %i.akh
  br i1 %.not377.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread388.thread.i
  store ptr %.6342522.i, ptr %i.aen, align 8, !tbaa !59
  %i.aki = load i64, ptr %.6342522.i, align 8, !tbaa !61
  %i.akj = add nsw i64 %i.aki, %.5322407.i
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aem
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !18
  %i.akm = add nsw i64 %i.akj, %i.akl
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aem
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !18
  %i.akp = mul i64 %i.akm, %i.ako
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aem
  store i64 %i.akp, ptr %i.akq, align 8, !tbaa !18
  br label %.thread430.i

bb.bs:                                            ; preds = %.thread388.thread.i
  %i.akr = getelementptr inbounds nuw i8, ptr %.6342522.i, i64 24
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !64 ; 3 uses
  %.not378.i = icmp eq ptr %i.aks, null
  br i1 %.not378.i, label %.thread396.thread.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !61 ; 2 uses
  store i64 %i.akt, ptr %i.afe, align 8, !tbaa !18
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.aem
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !18
  %i.akw = add nsw i64 %i.akv, %i.akt
  %i.akx = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.aem
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !18
  %i.akz = mul i64 %i.akw, %i.aky
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.aem
  store i64 %i.akz, ptr %i.ala, align 8, !tbaa !18
  store ptr %i.aks, ptr %i.aen, align 8, !tbaa !59
  br label %.thread430.i

.thread396.thread.i:                              ; preds = %bb.bq, %bb.bs, %.preheader451.i
  %.2325461.i = phi i64 [ %.2325524.i, %bb.bs ], [ %.1324553.i, %.preheader451.i ], [ %i.akb, %bb.bq ]
  %.6415.i = phi i64 [ %.6414.i, %bb.bs ], [ %.1308555.i, %.preheader451.i ], [ %.4.i179, %bb.bq ] ; 5 uses
  %.4315412.i = phi i64 [ %.4315411.i, %bb.bs ], [ %.1312554.i, %.preheader451.i ], [ %i.ajs, %bb.bq ] ; 5 uses
  br i1 %i.aiv, label %.lr.ph536.i, label %.thread430.i

.lr.ph536.i:                                      ; preds = %.thread396.thread.i, %bb.bx
  %.2305534.i = phi i32 [ %i.ama, %bb.bx ], [ %i.aiu, %.thread396.thread.i ] ; 4 uses
  %i.alb = zext nneg i32 %.2305534.i to i64       ; 10 uses
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %i.alb
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !59 ; 3 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.alb ; 2 uses
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !18
  %i.alg = add i64 %i.alf, 1                      ; 2 uses
  store i64 %i.alg, ptr %i.ale, align 8, !tbaa !18
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !65
  %.not379.i = icmp ugt i64 %i.alg, %i.ali
  br i1 %.not379.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph536.i
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.alb
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !18
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.alb ; 2 uses
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !18
  %i.aln = add i64 %i.alm, %i.alk
  store i64 %i.aln, ptr %i.all, align 8, !tbaa !18
  br label %bb.by

bb.bv:                                            ; preds = %.lr.ph536.i
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ald, i64 24
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !64 ; 4 uses
  %.not380.i = icmp eq ptr %i.alp, null
  br i1 %.not380.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %i.alb
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.alb
  store ptr %i.alp, ptr %i.alq, align 8, !tbaa !59
  %i.als = load i64, ptr %i.alp, align 8, !tbaa !61 ; 2 uses
  store i64 %i.als, ptr %i.alr, align 8, !tbaa !18
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %i.alb
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !18
  %i.alv = add nsw i64 %i.alu, %i.als
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %i.alb
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !18
  %i.aly = mul i64 %i.alv, %i.alx
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.alb
  store i64 %i.aly, ptr %i.alz, align 8, !tbaa !18
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ama = add nsw i32 %.2305534.i, -1
  %i.amb = icmp sgt i32 %.2305534.i, 0
  br i1 %i.amb, label %.lr.ph536.i, label %.thread430.i, !llvm.loop !300

bb.by:                                            ; preds = %bb.bw, %bb.bu
  %.11.i = phi ptr [ %i.ald, %bb.bu ], [ %i.alp, %bb.bw ] ; 2 uses
  %i.amc = icmp ult i32 %.2305534.i, %i.aek
  br i1 %i.amc, label %.lr.ph545.i, label %.lr.ph549.preheader.i

.preheader.i178:                                  ; preds = %.lr.ph545.i
  br i1 %.not558.i, label %.loopexit.i177, label %.lr.ph549.preheader.i

.lr.ph549.preheader.i:                            ; preds = %.preheader.i178, %bb.by
  %.12.lcssa661.i = phi ptr [ %i.aml, %.preheader.i178 ], [ %.11.i, %bb.by ] ; 2 uses
  br i1 %min.iters.check587, label %.lr.ph549.i.preheader, label %vector.body590

vector.body590:                                   ; preds = %.lr.ph549.preheader.i, %vector.body590
  %index591 = phi i64 [ %index.next596, %vector.body590 ], [ 0, %.lr.ph549.preheader.i ] ; 2 uses
  %vec.phi592 = phi <2 x i64> [ %i.amf, %vector.body590 ], [ zeroinitializer, %.lr.ph549.preheader.i ]
  %vec.phi593 = phi <2 x i64> [ %i.amg, %vector.body590 ], [ zeroinitializer, %.lr.ph549.preheader.i ]
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %index591 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 16
  %wide.load594 = load <2 x i64>, ptr %i.amd, align 8, !tbaa !18
  %wide.load595 = load <2 x i64>, ptr %i.ame, align 8, !tbaa !18
  %i.amf = add <2 x i64> %wide.load594, %vec.phi592 ; 2 uses
  %i.amg = add <2 x i64> %wide.load595, %vec.phi593 ; 2 uses
  %index.next596 = add nuw i64 %index591, 4       ; 2 uses
  %i.amh = icmp eq i64 %index.next596, %n.vec589
  br i1 %i.amh, label %middle.block597, label %vector.body590, !llvm.loop !301

middle.block597:                                  ; preds = %vector.body590
  %bin.rdx598 = add <2 x i64> %i.amg, %i.amf
  %26 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx598) ; 2 uses
  br i1 %cmp.n599, label %.loopexit.i177, label %.lr.ph549.i.preheader

.lr.ph549.i.preheader:                            ; preds = %.lr.ph549.preheader.i, %middle.block597
  %indvars.iv632.i.ph = phi i64 [ 0, %.lr.ph549.preheader.i ], [ %n.vec589, %middle.block597 ]
  %.7335547.i.ph = phi i64 [ 0, %.lr.ph549.preheader.i ], [ %26, %middle.block597 ]
  br label %.lr.ph549.i

.lr.ph545.i:                                      ; preds = %bb.by, %.lr.ph545.i
  %indvars.iv627.i = phi i64 [ %indvars.iv.next628.i, %.lr.ph545.i ], [ %i.alb, %bb.by ]
  %.12542.i = phi ptr [ %i.aml, %.lr.ph545.i ], [ %.11.i, %bb.by ]
  %indvars.iv.next628.i = add nuw nsw i64 %indvars.iv627.i, 1 ; 7 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.12542.i, i64 16
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !62
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 56
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !59 ; 5 uses
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %indvars.iv.next628.i
  store ptr %i.aml, ptr %i.amm, align 8, !tbaa !59
  %i.amn = load i64, ptr %i.aml, align 8, !tbaa !61 ; 2 uses
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next628.i
  store i64 %i.amn, ptr %i.amo, align 8, !tbaa !18
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.aer, i64 %indvars.iv.next628.i
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !18
  %i.amr = add nsw i64 %i.amq, %i.amn
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv.next628.i
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !18
  %i.amu = mul i64 %i.amr, %i.amt
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %indvars.iv.next628.i
  store i64 %i.amu, ptr %i.amv, align 8, !tbaa !18
  %exitcond631.not.i = icmp eq i64 %indvars.iv.next628.i, %i.aem
  br i1 %exitcond631.not.i, label %.preheader.i178, label %.lr.ph545.i, !llvm.loop !302

.lr.ph549.i:                                      ; preds = %.lr.ph549.i.preheader, %.lr.ph549.i
  %indvars.iv632.i = phi i64 [ %indvars.iv.next633.i, %.lr.ph549.i ], [ %indvars.iv632.i.ph, %.lr.ph549.i.preheader ] ; 2 uses
  %.7335547.i = phi i64 [ %i.amy, %.lr.ph549.i ], [ %.7335547.i.ph, %.lr.ph549.i.preheader ]
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %indvars.iv632.i
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !18
  %i.amy = add i64 %i.amx, %.7335547.i            ; 2 uses
  %indvars.iv.next633.i = add nuw nsw i64 %indvars.iv632.i, 1 ; 2 uses
  %exitcond636.not.i = icmp eq i64 %indvars.iv.next633.i, %wide.trip.count635.i
  br i1 %exitcond636.not.i, label %.loopexit.i177, label %.lr.ph549.i, !llvm.loop !303

.thread430.i:                                     ; preds = %.thread396.thread.i, %.loopexit.i177, %bb.bx, %bb.bt, %bb.br, %.thread.i174, %bb.bc, %bb.ba
  %.5316.i = phi i64 [ %.0311.i, %.thread.i174 ], [ %.4315411.i, %bb.br ], [ %.4315411.i, %bb.bt ], [ 0, %bb.bc ], [ 0, %bb.ba ], [ %.4315412.i, %bb.bx ], [ %.4315412.i, %.loopexit.i177 ], [ %.4315412.i, %.thread396.thread.i ]
  %.7.i175 = phi i64 [ %.0307.i, %.thread.i174 ], [ %.6414.i, %bb.br ], [ %.6414.i, %bb.bt ], [ 1, %bb.bc ], [ 1, %bb.ba ], [ %.6415.i, %bb.bx ], [ %.6415.i, %.loopexit.i177 ], [ %.6415.i, %.thread396.thread.i ]
  %i.amz = sub i64 %..i165, %.5316.i              ; 2 uses
  %i.ana = load i64, ptr %i.aeu, align 8, !tbaa !86
  %i.anb = sub i64 %i.ana, %i.amz
  store i64 %i.anb, ptr %i.aeu, align 8, !tbaa !86
  store i64 %.7.i175, ptr %3, align 8, !tbaa !18
  store i64 %i.amz, ptr %4, align 8, !tbaa !18
  br label %.critedge147

.critedge147:                                     ; preds = %.thread430.i, %._crit_edge, %bb.a, %H5S__hyper_iter_get_seq_list_single.exit, %H5S__hyper_iter_get_seq_list_opt.exit
  %.3 = phi i32 [ 0, %H5S__hyper_iter_get_seq_list_opt.exit ], [ -1, %bb.a ], [ 0, %._crit_edge ], [ 0, %H5S__hyper_iter_get_seq_list_single.exit ], [ 0, %.thread430.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__hyper_iter_release(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i32 @H5S__hyper_free_span_info(ptr noundef nonnull %i.h)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_iter_release, i32 noundef 2751, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.13) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5VM_array_calc(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @H5S__hyper_span_nblocks_helper(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.lr.ph35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.031 = phi ptr [ %i.u, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.02230 = phi i64 [ %i.s, %.lr.ph ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = tail call fastcc i64 @H5S__hyper_span_nblocks_helper(ptr noundef %i.q, i64 noundef %1)
  %i.s = add i64 %i.r, %.02230                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %.loopexit, label %.lr.ph, !llvm.loop !304

.lr.ph35:                                         ; preds = %bb.d, %.lr.ph35
  %.134 = phi ptr [ %i.x, %.lr.ph35 ], [ %i.m, %bb.d ]
  %.12333 = phi i64 [ %i.v, %.lr.ph35 ], [ 0, %bb.d ]
  %i.v = add i64 %.12333, 1                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.134, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %.loopexit, label %.lr.ph35, !llvm.loop !305

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph35
  %.2 = phi i64 [ %i.v, %.lr.ph35 ], [ %i.s, %.lr.ph ] ; 2 uses
  store i64 %1, ptr %i.g, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2, ptr %i.y, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.loopexit, %bb.a
  %.3 = phi i64 [ %i.k, %bb.c ], [ %.2, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5S__hyper_get_version_enc_size(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [32 x %struct.H5S_hyper_dim_t], align 16 ; 5 uses
  %i.a = alloca [32 x i64], align 16              ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.as, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 11 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2568
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %H5S__hyper_bounds.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.k, align 8, !tbaa !25
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2056
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2312
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2584
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.041.i = phi ptr [ %i.q, %bb.d ], [ %i.v, %bb.e ]
end_hunk_1
