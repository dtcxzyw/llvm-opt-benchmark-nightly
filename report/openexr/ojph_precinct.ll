Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
  %indvars.iv.next38.i325.1 = or disjoint i64 %indvars.iv37.i324, 2 ; 2 uses
  %i.ia = trunc nuw i64 %indvars.iv.next38.i325.1 to i32
  %i.ib = sub nuw i32 %spec.select, %i.ia
  %i.ic = shl nuw nsw i32 %i.ib, 1
  %i.id = shl nuw i32 1, %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.1
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !36
  %i.ig = zext nneg i32 %i.id to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.if, i8 0, i64 %i.ig, i1 false)
  %indvars.iv.next38.i325.2 = or disjoint i64 %indvars.iv37.i324, 3 ; 2 uses
  %i.ih = trunc nuw i64 %indvars.iv.next38.i325.2 to i32
  %i.ii = sub nuw i32 %spec.select, %i.ih
  %i.ij = shl nuw nsw i32 %i.ii, 1
  %i.ik = shl nuw i32 1, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.2
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !36
  %i.in = zext nneg i32 %i.ik to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.im, i8 0, i64 %i.in, i1 false)
  %indvars.iv.next38.i325.3 = add nuw nsw i64 %indvars.iv37.i324, 4 ; 2 uses
  %niter1014.next.3 = add i64 %niter1014, 4       ; 2 uses
  %niter1014.ncmp.3 = icmp eq i64 %niter1014.next.3, %unroll_iter1013
  br i1 %niter1014.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa: ; preds = %bb.m
  %lcmp.mod1011.not = icmp eq i64 %xtraiter1009, 0
  br i1 %lcmp.mod1011.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %.epil.preheader1008

.epil.preheader1008:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, %.lr.ph29.i322
  %indvars.iv37.i324.epil.init = phi i64 [ 0, %.lr.ph29.i322 ], [ %indvars.iv.next38.i325.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa ]
  %lcmp.mod1012 = icmp ne i64 %xtraiter1009, 0
  call void @llvm.assume(i1 %lcmp.mod1012)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader1008
  %indvars.iv37.i324.epil = phi i64 [ %indvars.iv37.i324.epil.init, %.epil.preheader1008 ], [ %indvars.iv.next38.i325.epil, %bb.n ] ; 3 uses
  %epil.iter1010 = phi i64 [ 0, %.epil.preheader1008 ], [ %epil.iter1010.next, %bb.n ]
  %i.io = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.ip = sub nuw i32 %spec.select, %i.io
  %i.iq = shl nuw nsw i32 %i.ip, 1
  %i.ir = shl nuw i32 1, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !36
  %i.iu = zext nneg i32 %i.ir to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.it, i8 0, i64 %i.iu, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter1010.next = add i64 %epil.iter1010, 1 ; 2 uses
  %epil.iter1010.cmp.not = icmp eq i64 %epil.iter1010.next, %xtraiter1009
  br i1 %epil.iter1010.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !76

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332: ; preds = %bb.n, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %wide.trip.count40.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !36 ; 2 uses
  store i8 0, ptr %i.iw, align 1, !tbaa !41
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !43
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.iy = getelementptr inbounds nuw [120 x i8], ptr %i.ix, i64 %indvars.iv605 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !44 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.jc = load i32, ptr %i.y, align 4, !tbaa !33  ; 2 uses
  %.not582 = icmp eq i32 %i.jc, 0
  br i1 %.not582, label %.preheader533, label %.preheader530.lr.ph

.preheader530.lr.ph:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 104
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !45
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !46
  %i.jg = mul i32 %i.jf, %i.ja
  %i.jh = load i32, ptr %i.u, align 8, !tbaa !47
  %i.ji = add i32 %i.jg, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [32 x i8], ptr %i.je, i64 %i.jj
  %i.jl = load ptr, ptr %i.d, align 8
  %i.jm = load ptr, ptr %i.k, align 8
  %i.jn = zext i32 %i.ja to i64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !32
  br label %.preheader530

.preheader533:                                    ; preds = %._crit_edge, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %.not273542 = icmp eq i32 %spec.select, 0
  br i1 %.not273542, label %._crit_edge545, label %.lr.ph544

.preheader530:                                    ; preds = %.preheader530.lr.ph, %._crit_edge
  %i.jo = phi i32 [ %i.jc, %.preheader530.lr.ph ], [ %i.js, %._crit_edge ]
  %i.jp = phi i32 [ %.pre, %.preheader530.lr.ph ], [ %i.jt, %._crit_edge ]
  %.0266536 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.jv, %._crit_edge ] ; 3 uses
  %.0267535 = phi ptr [ %i.jk, %.preheader530.lr.ph ], [ %i.ju, %._crit_edge ] ; 2 uses
  %.not583 = icmp eq i32 %i.jp, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jq = mul i32 %.0266536, %i.ax
  %i.jr = mul i32 %.0266536, %i.fe
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre609 = load i32, ptr %i.y, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.js = phi i32 [ %.pre609, %._crit_edge.loopexit ], [ %i.jo, %.preheader530 ] ; 2 uses
  %i.jt = phi i32 [ %i.km, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %i.jn
  %i.jv = add nuw i32 %.0266536, 1                ; 2 uses
  %i.jw = icmp ult i32 %i.jv, %i.js
  br i1 %i.jw, label %.preheader530, label %.preheader533, !llvm.loop !77

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %indvars.iv ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !102
  %i.ka = icmp eq ptr %i.jz, null
  %i.kb = zext i1 %i.ka to i8
  %i.kc = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.kd = add i32 %i.jq, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ke
  store i8 %i.kb, ptr %i.kf, align 1, !tbaa !41
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !49
  %i.ki = trunc i32 %i.kh to i8
  %i.kj = add i32 %i.jr, %i.kc
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kk
  store i8 %i.ki, ptr %i.kl, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.km = load i32, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp samesign ult i64 %indvars.iv.next, %i.kn
  br i1 %i.ko, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge545:                                   ; preds = %._crit_edge541.split, %.preheader533
  store i8 0, ptr %i.cm, align 1, !tbaa !41
  store i8 0, ptr %i.ep, align 1, !tbaa !41
  store i8 0, ptr %i.gs, align 1, !tbaa !41
  store i8 0, ptr %i.iw, align 1, !tbaa !41
  %i.kp = zext nneg i32 %spec.select to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kp
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !36
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !41
  %.not274 = icmp eq i8 %i.ks, 0
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ku = icmp eq ptr %i.kt, null                 ; 2 uses
  br i1 %.not274, label %bb.t, label %bb.p

.lr.ph544:                                        ; preds = %.preheader533, %._crit_edge541.split
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %._crit_edge541.split ], [ 1, %.preheader533 ] ; 7 uses
  %i.kv = load i32, ptr %i.y, align 4, !tbaa !33
  %i.kw = trunc nuw nsw i64 %indvars.iv594 to i32 ; 8 uses
  %notmask = shl nsw i32 -1, %i.kw
  %i.kx = xor i32 %notmask, -1                    ; 2 uses
  %i.ky = add i32 %i.kv, %i.kx
  %i.kz = lshr i32 %i.ky, %i.kw                   ; 2 uses
  %i.la = load i32, ptr %i.v, align 8, !tbaa !32
  %i.lb = add i32 %i.la, %i.kx
  %i.lc = lshr i32 %i.lb, %i.kw                   ; 4 uses
  %.not584 = icmp eq i32 %i.kz, 0
  br i1 %.not584, label %._crit_edge541.split, label %.preheader529.lr.ph

.preheader529.lr.ph:                              ; preds = %.lr.ph544
  %.not585 = icmp eq i32 %i.lc, 0
  %i.ld = add nsw i64 %indvars.iv594, -1          ; 3 uses
  %i.le = trunc nuw nsw i64 %i.ld to i32          ; 3 uses
  %notmask.i337 = shl nsw i32 -1, %i.le
  %i.lf = xor i32 %notmask.i337, -1               ; 2 uses
  %i.lg = add i32 %i.ax, %i.lf
  %i.lh = lshr i32 %i.lg, %i.le                   ; 6 uses
  %notmask.i345 = shl nsw i32 -1, %i.kw
  %i.li = xor i32 %notmask.i345, -1               ; 4 uses
  %i.lj = add i32 %i.ax, %i.li
  %i.lk = lshr i32 %i.lj, %i.kw
  %i.ll = add i32 %i.db, %i.li
  %i.lm = lshr i32 %i.ll, %i.kw
  %i.ln = add i32 %i.fe, %i.lf
  %i.lo = lshr i32 %i.ln, %i.le                   ; 5 uses
  %i.lp = add i32 %i.fe, %i.li
  %i.lq = lshr i32 %i.lp, %i.kw
  %i.lr = add i32 %i.hi, %i.li
  %i.ls = lshr i32 %i.lr, %i.kw
  br i1 %.not585, label %._crit_edge541.split, label %.preheader529.lr.ph.split

.preheader529.lr.ph.split:                        ; preds = %.preheader529.lr.ph
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv594
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv594
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ld
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv594
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv594
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ld
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !36 ; 105 uses
  %i.ma = load ptr, ptr %i.lx, align 8, !tbaa !36 ; 5 uses
  %i.mb = load ptr, ptr %i.lw, align 8, !tbaa !36 ; 5 uses
  %i.mc = load ptr, ptr %i.lv, align 8, !tbaa !36 ; 105 uses
  %i.md = load ptr, ptr %i.lu, align 8, !tbaa !36 ; 5 uses
  %i.me = load ptr, ptr %i.lt, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext i32 %i.lc to i64        ; 11 uses
  %i.mf = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.mg = shl i32 %i.lh, 1
  %i.mh = shl i32 %i.lo, 1
  %i.mi = add i32 %i.lo, 1                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mc, i64 -1
  %8 = shl nuw nsw i64 %wide.trip.count, 1        ; 4 uses
  %scevgep813 = getelementptr i8, ptr %scevgep, i64 %8 ; 2 uses
  %scevgep814 = getelementptr i8, ptr %i.mc, i64 %8
  %9 = add i32 %i.lh, 1
  %scevgep816.a = getelementptr i8, ptr %i.lz, i64 -1
  %scevgep817.a = getelementptr i8, ptr %scevgep816.a, i64 %8 ; 2 uses
  %scevgep817 = getelementptr i8, ptr %i.lz, i64 %8
  %scevgep818 = getelementptr i8, ptr %i.me, i64 %wide.trip.count
  %scevgep819 = getelementptr i8, ptr %i.md, i64 %wide.trip.count
  %scevgep820 = getelementptr i8, ptr %i.mb, i64 %wide.trip.count
  %scevgep821 = getelementptr i8, ptr %i.ma, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %i.lc, 9
  %i.mj = trunc i64 %i.mf to i32                  ; 4 uses
  %i.mk = icmp ugt i64 %i.mf, 4294967295
  %i.ml = trunc i64 %i.mf to i32
  %mul.result = shl i32 %i.ml, 1                  ; 8 uses
  %i.mm = icmp ugt i64 %i.mf, 2147483647
  %min.iters.check937 = icmp ult i32 %i.lc, 17
  %i.mn = and i64 %wide.trip.count, 15            ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = select i1 %i.mo, i64 16, i64 %i.mn      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.mp    ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.mp, 9
  %i.mq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.mr = icmp eq i64 %i.mq, 0
  %i.ms = select i1 %i.mr, i64 8, i64 %i.mq
  %n.vec938 = sub nsw i64 %wide.trip.count, %i.ms ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader529.lr.ph.split, %._crit_edge539
  %.0262540 = phi i32 [ 0, %.preheader529.lr.ph.split ], [ %i.bfa, %._crit_edge539 ] ; 8 uses
  %i.mt = shl i32 %.0262540, 1                    ; 3 uses
  %i.mu = mul i32 %i.lh, %i.mt                    ; 53 uses
  %i.mv = or disjoint i32 %i.mt, 1                ; 2 uses
  %i.mw = mul i32 %i.lh, %i.mv                    ; 51 uses
  %i.mx = mul i32 %i.lk, %.0262540                ; 5 uses
  %i.my = mul i32 %i.lm, %.0262540                ; 5 uses
  %i.mz = mul i32 %i.lo, %i.mt                    ; 53 uses
  %i.na = mul i32 %i.lo, %i.mv                    ; 51 uses
  %i.nb = mul i32 %i.lq, %.0262540                ; 5 uses
  %i.nc = mul i32 %i.ls, %.0262540                ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.nd = mul i32 %i.mh, %.0262540                ; 3 uses
  %i.ne = add i32 %i.mi, %i.nd
  %i.nf = add i32 %i.lo, %i.nd
  %i.ng = mul i32 %i.mg, %.0262540                ; 3 uses
  %i.nh = add i32 %i.lh, %i.ng
  %i.ni = xor i32 %i.mx, -1
  %i.nj = icmp ult i32 %i.ni, %i.mj
  %i.nk = xor i32 %i.my, -1
  %i.nl = icmp ult i32 %i.nk, %i.mj
  %i.nm = or i1 %i.nl, %i.mk
  %i.nn = xor i32 %i.nb, -1
  %i.no = icmp ult i32 %i.nn, %i.mj
  %i.np = xor i32 %i.nc, -1
  %i.nq = icmp ult i32 %i.np, %i.mj
  %i.nr = xor i32 %i.mu, -1
  %i.ns = icmp ugt i32 %mul.result, %i.nr
  %i.nt = or i1 %i.ns, %i.mm
  %i.nu = xor i32 %i.ng, -2
  %i.nv = icmp ult i32 %i.nu, %mul.result
  %i.nw = xor i32 %i.nh, -1
  %i.nx = icmp ugt i32 %mul.result, %i.nw
  %i.ny = add i32 %i.lh, %i.ng
  %i.nz = sub i32 -2, %i.ny
  %i.oa = icmp ult i32 %i.nz, %mul.result
  %i.ob = xor i32 %i.mz, -1
  %i.oc = icmp ugt i32 %mul.result, %i.ob
  %i.od = xor i32 %i.nd, -2
  %i.oe = icmp ult i32 %i.od, %mul.result
  %i.of = xor i32 %i.nf, -1
  %i.og = icmp ugt i32 %mul.result, %i.of
  %i.oh = xor i32 %i.ne, -1
  %i.oi = icmp ugt i32 %mul.result, %i.oh
  %i.oj = or i1 %i.nj, %i.nm
  %i.ok = or i1 %i.no, %i.oj
  %i.ol = or i1 %i.nq, %i.ok
  %i.om = or i1 %i.ol, %i.nt
  %i.on = or i1 %i.nv, %i.om
  %i.oo = or i1 %i.nx, %i.on
  %i.op = or i1 %i.oa, %i.oo
  %i.oq = or i1 %i.oc, %i.op
  %i.or = or i1 %i.oe, %i.oq
  %i.os = or i1 %i.og, %i.or
  %i.ot = or i1 %i.oi, %i.os
  br i1 %i.ot, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ou = zext i32 %i.mx to i64                   ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ma, i64 %i.ou  ; 9 uses
  %i.ow = getelementptr i8, ptr %scevgep821, i64 %i.ou ; 9 uses
  %i.ox = zext i32 %i.my to i64                   ; 2 uses
  %i.oy = getelementptr i8, ptr %i.mb, i64 %i.ox  ; 9 uses
  %i.oz = getelementptr i8, ptr %scevgep820, i64 %i.ox ; 9 uses
  %i.pa = zext i32 %i.nb to i64                   ; 2 uses
  %i.pb = getelementptr i8, ptr %i.md, i64 %i.pa  ; 9 uses
  %i.pc = getelementptr i8, ptr %scevgep819, i64 %i.pa ; 9 uses
  %i.pd = zext i32 %i.nc to i64                   ; 2 uses
  %i.pe = getelementptr i8, ptr %i.me, i64 %i.pd  ; 9 uses
  %i.pf = getelementptr i8, ptr %scevgep818, i64 %i.pd ; 9 uses
  %i.pg = zext i32 %i.mu to i64                   ; 2 uses
  %i.ph = getelementptr i8, ptr %i.lz, i64 %i.pg  ; 4 uses
  %i.pi = getelementptr i8, ptr %scevgep817, i64 %i.pg ; 4 uses
  %i.pj = zext i32 %i.mw to i64                   ; 2 uses
  %i.pk = getelementptr i8, ptr %i.lz, i64 %i.pj  ; 4 uses
  %i.pl = getelementptr i8, ptr %scevgep817.a, i64 %i.pj ; 4 uses
  %10 = add i32 %9, %i.mu
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.pm = getelementptr i8, ptr %i.lz, i64 %11    ; 4 uses
  %12 = getelementptr i8, ptr %scevgep817.a, i64 %11 ; 4 uses
  %i.pn = zext i32 %i.mz to i64                   ; 2 uses
  %i.po = getelementptr i8, ptr %i.mc, i64 %i.pn  ; 4 uses
  %i.pp = getelementptr i8, ptr %scevgep814, i64 %i.pn ; 4 uses
  %i.pq = zext i32 %i.na to i64                   ; 2 uses
  %i.pr = getelementptr i8, ptr %i.mc, i64 %i.pq  ; 4 uses
  %i.ps = getelementptr i8, ptr %scevgep813, i64 %i.pq ; 4 uses
  %13 = add i32 %i.mi, %i.mz
  %i.pt = zext i32 %13 to i64                     ; 2 uses
  %i.pu = getelementptr i8, ptr %i.mc, i64 %i.pt  ; 4 uses
  %i.pv = getelementptr i8, ptr %scevgep813, i64 %i.pt ; 4 uses
  %bound0 = icmp ult ptr %i.ov, %i.oz
  %bound1 = icmp ult ptr %i.oy, %i.ow
  %found.conflict = and i1 %bound0, %bound1
  %bound0822 = icmp ult ptr %i.ov, %i.pc
  %bound1823 = icmp ult ptr %i.pb, %i.ow
  %found.conflict824 = and i1 %bound0822, %bound1823
  %conflict.rdx = or i1 %found.conflict, %found.conflict824
  %bound0825 = icmp ult ptr %i.ov, %i.pf
  %bound1826 = icmp ult ptr %i.pe, %i.ow
  %found.conflict827 = and i1 %bound0825, %bound1826
  %conflict.rdx828 = or i1 %conflict.rdx, %found.conflict827
  %bound0829 = icmp ult ptr %i.ov, %i.pi
  %bound1830 = icmp ult ptr %i.ph, %i.ow
  %found.conflict831 = and i1 %bound0829, %bound1830
  %conflict.rdx832 = or i1 %conflict.rdx828, %found.conflict831
  %bound0833 = icmp ult ptr %i.ov, %i.pl
  %bound1834 = icmp ult ptr %i.pk, %i.ow
  %found.conflict835 = and i1 %bound0833, %bound1834
  %conflict.rdx836 = or i1 %conflict.rdx832, %found.conflict835
  %bound0837 = icmp ult ptr %i.ov, %12
  %bound1838 = icmp ult ptr %i.pm, %i.ow
  %found.conflict839 = and i1 %bound0837, %bound1838
  %conflict.rdx840 = or i1 %conflict.rdx836, %found.conflict839
  %bound0841 = icmp ult ptr %i.ov, %i.pp
  %bound1842 = icmp ult ptr %i.po, %i.ow
  %found.conflict843 = and i1 %bound0841, %bound1842
  %conflict.rdx844 = or i1 %conflict.rdx840, %found.conflict843
  %bound0845 = icmp ult ptr %i.ov, %i.ps
  %bound1846 = icmp ult ptr %i.pr, %i.ow
  %found.conflict847 = and i1 %bound0845, %bound1846
  %conflict.rdx848 = or i1 %conflict.rdx844, %found.conflict847
  %bound0849 = icmp ult ptr %i.ov, %i.pv
  %bound1850 = icmp ult ptr %i.pu, %i.ow
  %found.conflict851 = and i1 %bound0849, %bound1850
  %conflict.rdx852 = or i1 %conflict.rdx848, %found.conflict851
  %bound0853 = icmp ult ptr %i.oy, %i.pc
  %bound1854 = icmp ult ptr %i.pb, %i.oz
  %found.conflict855 = and i1 %bound0853, %bound1854
  %conflict.rdx856 = or i1 %conflict.rdx852, %found.conflict855
  %bound0857 = icmp ult ptr %i.oy, %i.pf
  %bound1858 = icmp ult ptr %i.pe, %i.oz
  %found.conflict859 = and i1 %bound0857, %bound1858
  %conflict.rdx860 = or i1 %conflict.rdx856, %found.conflict859
  %bound0861 = icmp ult ptr %i.oy, %i.pi
  %bound1862 = icmp ult ptr %i.ph, %i.oz
  %found.conflict863 = and i1 %bound0861, %bound1862
  %conflict.rdx864 = or i1 %conflict.rdx860, %found.conflict863
  %bound0865 = icmp ult ptr %i.oy, %i.pl
  %bound1866 = icmp ult ptr %i.pk, %i.oz
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx864, %found.conflict867
  %bound0869 = icmp ult ptr %i.oy, %12
  %bound1870 = icmp ult ptr %i.pm, %i.oz
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %bound0873 = icmp ult ptr %i.oy, %i.pp
  %bound1874 = icmp ult ptr %i.po, %i.oz
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %conflict.rdx872, %found.conflict875
  %bound0877 = icmp ult ptr %i.oy, %i.ps
  %bound1878 = icmp ult ptr %i.pr, %i.oz
  %found.conflict879 = and i1 %bound0877, %bound1878
  %conflict.rdx880 = or i1 %conflict.rdx876, %found.conflict879
  %bound0881 = icmp ult ptr %i.oy, %i.pv
  %bound1882 = icmp ult ptr %i.pu, %i.oz
  %found.conflict883 = and i1 %bound0881, %bound1882
  %conflict.rdx884 = or i1 %conflict.rdx880, %found.conflict883
  %bound0885 = icmp ult ptr %i.pb, %i.pf
  %bound1886 = icmp ult ptr %i.pe, %i.pc
  %found.conflict887 = and i1 %bound0885, %bound1886
  %conflict.rdx888 = or i1 %conflict.rdx884, %found.conflict887
  %bound0889 = icmp ult ptr %i.pb, %i.pi
  %bound1890 = icmp ult ptr %i.ph, %i.pc
  %found.conflict891 = and i1 %bound0889, %bound1890
  %conflict.rdx892 = or i1 %conflict.rdx888, %found.conflict891
  %bound0893 = icmp ult ptr %i.pb, %i.pl
  %bound1894 = icmp ult ptr %i.pk, %i.pc
  %found.conflict895 = and i1 %bound0893, %bound1894
  %conflict.rdx896 = or i1 %conflict.rdx892, %found.conflict895
  %bound0897 = icmp ult ptr %i.pb, %12
  %bound1898 = icmp ult ptr %i.pm, %i.pc
  %found.conflict899 = and i1 %bound0897, %bound1898
  %conflict.rdx900 = or i1 %conflict.rdx896, %found.conflict899
  %bound0901 = icmp ult ptr %i.pb, %i.pp
  %bound1902 = icmp ult ptr %i.po, %i.pc
  %found.conflict903 = and i1 %bound0901, %bound1902
  %conflict.rdx904 = or i1 %conflict.rdx900, %found.conflict903
  %bound0905 = icmp ult ptr %i.pb, %i.ps
  %bound1906 = icmp ult ptr %i.pr, %i.pc
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %conflict.rdx904, %found.conflict907
  %bound0909 = icmp ult ptr %i.pb, %i.pv
  %bound1910 = icmp ult ptr %i.pu, %i.pc
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx912 = or i1 %conflict.rdx908, %found.conflict911
  %bound0913 = icmp ult ptr %i.pe, %i.pi
  %bound1914 = icmp ult ptr %i.ph, %i.pf
  %found.conflict915 = and i1 %bound0913, %bound1914
  %conflict.rdx916 = or i1 %conflict.rdx912, %found.conflict915
  %bound0917 = icmp ult ptr %i.pe, %i.pl
  %bound1918 = icmp ult ptr %i.pk, %i.pf
  %found.conflict919 = and i1 %bound0917, %bound1918
  %conflict.rdx920 = or i1 %conflict.rdx916, %found.conflict919
  %bound0921 = icmp ult ptr %i.pe, %12
  %bound1922 = icmp ult ptr %i.pm, %i.pf
  %found.conflict923 = and i1 %bound0921, %bound1922
  %conflict.rdx924 = or i1 %conflict.rdx920, %found.conflict923
  %bound0925 = icmp ult ptr %i.pe, %i.pp
  %bound1926 = icmp ult ptr %i.po, %i.pf
  %found.conflict927 = and i1 %bound0925, %bound1926
  %conflict.rdx928 = or i1 %conflict.rdx924, %found.conflict927
  %bound0929 = icmp ult ptr %i.pe, %i.ps
  %bound1930 = icmp ult ptr %i.pr, %i.pf
  %found.conflict931 = and i1 %bound0929, %bound1930
  %conflict.rdx932 = or i1 %conflict.rdx928, %found.conflict931
  %bound0933 = icmp ult ptr %i.pe, %i.pv
  %bound1934 = icmp ult ptr %i.pu, %i.pf
  %found.conflict935 = and i1 %bound0933, %bound1934
  %conflict.rdx936 = or i1 %conflict.rdx932, %found.conflict935
  br i1 %conflict.rdx936, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check937, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.pw = trunc i64 %index to i32                 ; 20 uses
  %i.px = shl i32 %i.pw, 1                        ; 5 uses
  %i.py = shl i32 %i.pw, 1                        ; 2 uses
  %i.pz = or disjoint i32 %i.py, 2                ; 4 uses
  %i.qa = shl i32 %i.pw, 1                        ; 2 uses
  %i.qb = or disjoint i32 %i.qa, 4                ; 4 uses
  %i.qc = shl i32 %i.pw, 1                        ; 2 uses
  %i.qd = or disjoint i32 %i.qc, 6                ; 4 uses
  %i.qe = shl i32 %i.pw, 1                        ; 2 uses
  %i.qf = or disjoint i32 %i.qe, 8                ; 4 uses
  %i.qg = shl i32 %i.pw, 1                        ; 2 uses
  %i.qh = or disjoint i32 %i.qg, 10               ; 4 uses
  %i.qi = shl i32 %i.pw, 1                        ; 2 uses
  %i.qj = or disjoint i32 %i.qi, 12               ; 4 uses
  %i.qk = shl i32 %i.pw, 1                        ; 2 uses
  %i.ql = or disjoint i32 %i.qk, 14               ; 4 uses
  %i.qm = shl i32 %i.pw, 1                        ; 2 uses
  %i.qn = or disjoint i32 %i.qm, 16               ; 4 uses
  %i.qo = shl i32 %i.pw, 1                        ; 2 uses
  %i.qp = or disjoint i32 %i.qo, 18               ; 4 uses
  %i.qq = shl i32 %i.pw, 1                        ; 2 uses
  %i.qr = or disjoint i32 %i.qq, 20               ; 4 uses
  %i.qs = shl i32 %i.pw, 1                        ; 2 uses
  %i.qt = or disjoint i32 %i.qs, 22               ; 4 uses
  %i.qu = shl i32 %i.pw, 1                        ; 2 uses
  %i.qv = or disjoint i32 %i.qu, 24               ; 4 uses
  %i.qw = shl i32 %i.pw, 1                        ; 2 uses
  %i.qx = or disjoint i32 %i.qw, 26               ; 4 uses
  %i.qy = shl i32 %i.pw, 1                        ; 2 uses
  %i.qz = or disjoint i32 %i.qy, 28               ; 4 uses
  %i.ra = shl i32 %i.pw, 1                        ; 2 uses
  %i.rb = or disjoint i32 %i.ra, 30               ; 4 uses
  %i.rc = add i32 %i.mu, %i.px
  %i.rd = add i32 %i.mu, %i.pz
  %i.re = add i32 %i.mu, %i.qb
  %i.rf = add i32 %i.mu, %i.qd
  %i.rg = add i32 %i.mu, %i.qf
  %i.rh = add i32 %i.mu, %i.qh
  %i.ri = add i32 %i.mu, %i.qj
  %i.rj = add i32 %i.mu, %i.ql
  %i.rk = add i32 %i.mu, %i.qn
  %i.rl = add i32 %i.mu, %i.qp
  %i.rm = add i32 %i.mu, %i.qr
  %i.rn = add i32 %i.mu, %i.qt
  %i.ro = add i32 %i.mu, %i.qv
  %i.rp = add i32 %i.mu, %i.qx
  %i.rq = add i32 %i.mu, %i.qz
  %i.rr = add i32 %i.mu, %i.rb
  %i.rs = zext i32 %i.rc to i64
  %i.rt = zext i32 %i.rd to i64
  %i.ru = zext i32 %i.re to i64
  %i.rv = zext i32 %i.rf to i64
  %i.rw = zext i32 %i.rg to i64
  %i.rx = zext i32 %i.rh to i64
  %i.ry = zext i32 %i.ri to i64
  %i.rz = zext i32 %i.rj to i64
  %i.sa = zext i32 %i.rk to i64
  %i.sb = zext i32 %i.rl to i64
  %i.sc = zext i32 %i.rm to i64
  %i.sd = zext i32 %i.rn to i64
  %i.se = zext i32 %i.ro to i64
  %i.sf = zext i32 %i.rp to i64
  %i.sg = zext i32 %i.rq to i64
  %i.sh = zext i32 %i.rr to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rs
  %i.sj = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rt
  %i.sk = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ru
  %i.sl = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rv
  %i.sm = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rw
  %i.sn = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rx
  %i.so = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ry
  %i.sp = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.rz
  %i.sq = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sa
  %i.sr = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sb
  %i.ss = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sc
  %i.st = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sd
  %i.su = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.se
  %i.sv = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sf
  %i.sw = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sg
  %i.sx = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.sh
  %i.sy = load i8, ptr %i.si, align 1, !tbaa !41, !alias.scope !103
  %i.sz = load i8, ptr %i.sj, align 1, !tbaa !41, !alias.scope !103
  %i.ta = load i8, ptr %i.sk, align 1, !tbaa !41, !alias.scope !103
  %i.tb = load i8, ptr %i.sl, align 1, !tbaa !41, !alias.scope !103
  %i.tc = load i8, ptr %i.sm, align 1, !tbaa !41, !alias.scope !103
  %i.td = load i8, ptr %i.sn, align 1, !tbaa !41, !alias.scope !103
  %i.te = load i8, ptr %i.so, align 1, !tbaa !41, !alias.scope !103
  %i.tf = load i8, ptr %i.sp, align 1, !tbaa !41, !alias.scope !103
  %i.tg = load i8, ptr %i.sq, align 1, !tbaa !41, !alias.scope !103
  %i.th = load i8, ptr %i.sr, align 1, !tbaa !41, !alias.scope !103
  %i.ti = load i8, ptr %i.ss, align 1, !tbaa !41, !alias.scope !103
  %i.tj = load i8, ptr %i.st, align 1, !tbaa !41, !alias.scope !103
  %i.tk = load i8, ptr %i.su, align 1, !tbaa !41, !alias.scope !103
  %i.tl = load i8, ptr %i.sv, align 1, !tbaa !41, !alias.scope !103
  %i.tm = load i8, ptr %i.sw, align 1, !tbaa !41, !alias.scope !103
  %i.tn = load i8, ptr %i.sx, align 1, !tbaa !41, !alias.scope !103
  %i.to = insertelement <16 x i8> poison, i8 %i.sy, i64 0
  %i.tp = insertelement <16 x i8> %i.to, i8 %i.sz, i64 1
  %i.tq = insertelement <16 x i8> %i.tp, i8 %i.ta, i64 2
  %i.tr = insertelement <16 x i8> %i.tq, i8 %i.tb, i64 3
  %i.ts = insertelement <16 x i8> %i.tr, i8 %i.tc, i64 4
  %i.tt = insertelement <16 x i8> %i.ts, i8 %i.td, i64 5
  %i.tu = insertelement <16 x i8> %i.tt, i8 %i.te, i64 6
  %i.tv = insertelement <16 x i8> %i.tu, i8 %i.tf, i64 7
  %i.tw = insertelement <16 x i8> %i.tv, i8 %i.tg, i64 8
  %i.tx = insertelement <16 x i8> %i.tw, i8 %i.th, i64 9
  %i.ty = insertelement <16 x i8> %i.tx, i8 %i.ti, i64 10
  %i.tz = insertelement <16 x i8> %i.ty, i8 %i.tj, i64 11
  %i.ua = insertelement <16 x i8> %i.tz, i8 %i.tk, i64 12
  %i.ub = insertelement <16 x i8> %i.ua, i8 %i.tl, i64 13
  %i.uc = insertelement <16 x i8> %i.ub, i8 %i.tm, i64 14
  %i.ud = insertelement <16 x i8> %i.uc, i8 %i.tn, i64 15
  %i.ue = or disjoint i32 %i.px, 1                ; 4 uses
  %i.uf = or disjoint i32 %i.py, 3                ; 4 uses
  %i.ug = or disjoint i32 %i.qa, 5                ; 4 uses
  %i.uh = or disjoint i32 %i.qc, 7                ; 4 uses
  %i.ui = or disjoint i32 %i.qe, 9                ; 4 uses
  %i.uj = or disjoint i32 %i.qg, 11               ; 4 uses
  %i.uk = or disjoint i32 %i.qi, 13               ; 4 uses
  %i.ul = or disjoint i32 %i.qk, 15               ; 4 uses
  %i.um = or disjoint i32 %i.qm, 17               ; 4 uses
  %i.un = or disjoint i32 %i.qo, 19               ; 4 uses
  %i.uo = or disjoint i32 %i.qq, 21               ; 4 uses
  %i.up = or disjoint i32 %i.qs, 23               ; 4 uses
  %i.uq = or disjoint i32 %i.qu, 25               ; 4 uses
  %i.ur = or disjoint i32 %i.qw, 27               ; 4 uses
  %i.us = or disjoint i32 %i.qy, 29               ; 4 uses
  %i.ut = or disjoint i32 %i.ra, 31               ; 4 uses
  %i.uu = add i32 %i.mu, %i.ue
  %i.uv = add i32 %i.mu, %i.uf
  %i.uw = add i32 %i.mu, %i.ug
  %i.ux = add i32 %i.mu, %i.uh
  %i.uy = add i32 %i.mu, %i.ui
  %i.uz = add i32 %i.mu, %i.uj
  %i.va = add i32 %i.mu, %i.uk
  %i.vb = add i32 %i.mu, %i.ul
  %i.vc = add i32 %i.mu, %i.um
  %i.vd = add i32 %i.mu, %i.un
  %i.ve = add i32 %i.mu, %i.uo
  %i.vf = add i32 %i.mu, %i.up
  %i.vg = add i32 %i.mu, %i.uq
  %i.vh = add i32 %i.mu, %i.ur
  %i.vi = add i32 %i.mu, %i.us
  %i.vj = add i32 %i.mu, %i.ut
  %i.vk = zext i32 %i.uu to i64
  %i.vl = zext i32 %i.uv to i64
  %i.vm = zext i32 %i.uw to i64
  %i.vn = zext i32 %i.ux to i64
  %i.vo = zext i32 %i.uy to i64
  %i.vp = zext i32 %i.uz to i64
  %i.vq = zext i32 %i.va to i64
  %i.vr = zext i32 %i.vb to i64
  %i.vs = zext i32 %i.vc to i64
  %i.vt = zext i32 %i.vd to i64
  %i.vu = zext i32 %i.ve to i64
  %i.vv = zext i32 %i.vf to i64
  %i.vw = zext i32 %i.vg to i64
  %i.vx = zext i32 %i.vh to i64
  %i.vy = zext i32 %i.vi to i64
  %i.vz = zext i32 %i.vj to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vk
  %i.wb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vl
  %i.wc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vm
  %i.wd = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vn
  %i.we = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vo
  %i.wf = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vp
  %i.wg = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vq
  %i.wh = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vr
  %i.wi = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vs
  %i.wj = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vt
  %i.wk = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vu
  %i.wl = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vv
  %i.wm = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vw
  %i.wn = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vx
  %i.wo = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vy
  %i.wp = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.vz
  %i.wq = load i8, ptr %i.wa, align 1, !tbaa !41, !alias.scope !103
  %i.wr = load i8, ptr %i.wb, align 1, !tbaa !41, !alias.scope !103
  %i.ws = load i8, ptr %i.wc, align 1, !tbaa !41, !alias.scope !103
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL12bb_terminateEPNS0_12bit_read_bufEb:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.ag, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !62
  %i.ai = add i32 %i.ah, -2
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !62
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !41
  %i.ak = icmp ne i8 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, -110
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.18, ptr %i.ao, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL11bb_skip_ephEPNS0_12bit_read_bufE.exit: ; preds = %bb.l, %bb.g, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !60
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umin.v8i8(<8 x i8>, <8 x i8>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4ojph11coded_listsE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_ZTSN4ojph5pointE", !7, i64 0, !7, i64 4}
!15 = !{!"p1 _ZTSN4ojph5local7subbandE", !10, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN4ojph5local8precinctE", !13, i64 0, !14, i64 8, !6, i64 16, !15, i64 80, !11, i64 88, !16, i64 96, !16, i64 97}
!18 = !{!17, !11, i64 88}
!19 = !{!17, !15, i64 80}
!20 = !{!"_ZTSN4ojph4sizeE", !7, i64 0, !7, i64 4}
!21 = !{!"_ZTSN4ojph4rectE", !14, i64 0, !20, i64 8}
!22 = !{!"p1 _ZTSN4ojph8line_bufE", !10, i64 0}
!23 = !{!"p1 _ZTSN4ojph5local10resolutionE", !10, i64 0}
!24 = !{!"p1 _ZTSN4ojph5local9codeblockE", !10, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!"p1 _ZTSN4ojph5local15coded_cb_headerE", !10, i64 0}
!27 = !{!"p1 _ZTSN4ojph21mem_elastic_allocatorE", !10, i64 0}
!28 = !{!"_ZTSN4ojph5local7subbandE", !16, i64 0, !7, i64 4, !7, i64 8, !16, i64 12, !21, i64 16, !22, i64 32, !23, i64 40, !24, i64 48, !20, i64 56, !20, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !25, i64 92, !25, i64 96, !7, i64 100, !26, i64 104, !27, i64 112}
!29 = !{!28, !16, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!21, !7, i64 8}
!33 = !{!21, !7, i64 12}
!34 = !{!17, !13, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!13, !13, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!6, !6, i64 0}
!42 = !{!"_ZTSN4ojph5local8tag_treeE", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 16}
!43 = !{!42, !7, i64 8}
!44 = !{!28, !7, i64 56}
!45 = !{!28, !26, i64 104}
!46 = !{!21, !7, i64 4}
!47 = !{!21, !7, i64 0}
!48 = !{!"_ZTSN4ojph5local15coded_cb_headerE", !6, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24}
!49 = !{!48, !7, i64 16}
!50 = !{!"_ZTSN4ojph11coded_listsE", !11, i64 0, !7, i64 8, !7, i64 12, !13, i64 16}
!51 = !{!50, !13, i64 16}
!52 = !{!50, !7, i64 8}
!53 = !{!50, !7, i64 12}
!54 = !{!50, !11, i64 0}
!55 = !{!48, !7, i64 8}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 _ZTSN4ojph11infile_baseE", !10, i64 0}
!59 = !{!"_ZTSN4ojph5local12bit_read_bufE", !58, i64 0, !7, i64 8, !7, i64 12, !16, i64 16, !7, i64 20}
!60 = !{!59, !7, i64 12}
!61 = !{!59, !58, i64 0}
!62 = !{!59, !7, i64 20}
!63 = !{!59, !7, i64 8}
!64 = !{!59, !16, i64 16}
!65 = distinct !{!65, !37, !38, !39}
!66 = distinct !{!66, !37, !39, !38}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !37, !38, !39}
!69 = distinct !{!69, !37, !39, !38}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !37, !38, !39}
!72 = distinct !{!72, !37, !39, !38}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !37, !38, !39}
!75 = distinct !{!75, !37, !39, !38}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !37}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !79}
!83 = distinct !{!83, !79}
!84 = distinct !{!84, !79}
!85 = distinct !{!85, !79}
!86 = distinct !{!86, !79}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79}
!89 = distinct !{!89, !79}
!90 = distinct !{!90, !37, !38, !39}
!91 = distinct !{!91, !37, !38, !39}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37, !38}
!95 = distinct !{!95, !37}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !37}
!102 = !{!48, !11, i64 24}
!103 = !{!80}
!104 = !{!81}
!105 = !{!82}
!106 = !{!83}
!107 = !{!89, !88, !87, !80, !81, !82, !86, !85, !84}
!108 = !{!89}
!109 = !{!88, !87, !80, !81, !82, !86, !85, !84}
!110 = !{!86}
!111 = !{!85}
!112 = !{!84}
!113 = !{!88}
!114 = !{!87, !80, !81, !82, !86, !85, !84}
!115 = !{!87}
!116 = !{!80, !81, !82, !86, !85, !84}
!117 = !{!"branch_weights", i32 8, i32 8}
!118 = distinct !{!118, !37}
!119 = distinct !{!119, !37}
!120 = distinct !{!120, !37}
!121 = distinct !{!121, !37}
!122 = distinct !{null}
!123 = distinct !{null, null}
!124 = distinct !{!124, !37, !38, !39}
!125 = distinct !{!125, !37, !39, !38}
!126 = distinct !{!126, !40}
!127 = distinct !{!127, !37, !38, !39}
!128 = distinct !{!128, !37, !39, !38}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !37, !38, !39}
!131 = distinct !{!131, !37, !39, !38}
!132 = distinct !{!132, !40}
!133 = distinct !{!133, !37, !38, !39}
!134 = distinct !{!134, !37, !39, !38}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !37}
!137 = distinct !{!137, !37}
!138 = distinct !{!138, !37}
!139 = distinct !{!139, !37}
!140 = distinct !{null, null}
!141 = distinct !{!141, !37}
!142 = distinct !{!142, !37}
!143 = distinct !{!143, !37}
!144 = distinct !{!144, !37}
!145 = distinct !{!145, !37}
!146 = distinct !{!146, !37}
!147 = distinct !{null}
!148 = distinct !{!148, !37}
!149 = !{!17, !16, i64 96}
!150 = !{!"short", !6, i64 0}
!151 = !{!150, !150, i64 0}
!152 = !{!48, !7, i64 12}
!153 = !{!17, !16, i64 97}
!154 = distinct !{null}
!155 = distinct !{null}
end_hunk_1
