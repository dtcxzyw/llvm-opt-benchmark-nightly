inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !34
  %i.ia = zext nneg i32 %i.hx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hz, i8 0, i64 %i.ia, i1 false)
  %indvars.iv.next38.i325.1 = or disjoint i64 %indvars.iv37.i324, 2 ; 2 uses
  %i.ib = trunc nuw i64 %indvars.iv.next38.i325.1 to i32
  %i.ic = sub i32 %spec.select, %i.ib
  %i.id = shl i32 %i.ic, 1
  %i.ie = shl nuw i32 1, %i.id
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.1
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !34
  %i.ih = zext nneg i32 %i.ie to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ig, i8 0, i64 %i.ih, i1 false)
  %indvars.iv.next38.i325.2 = or disjoint i64 %indvars.iv37.i324, 3 ; 2 uses
  %i.ii = trunc nuw i64 %indvars.iv.next38.i325.2 to i32
  %i.ij = sub i32 %spec.select, %i.ii
  %i.ik = shl i32 %i.ij, 1
  %i.il = shl nuw i32 1, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next38.i325.2
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !34
  %i.io = zext nneg i32 %i.il to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, i8 0, i64 %i.io, i1 false)
  %indvars.iv.next38.i325.3 = add nuw nsw i64 %indvars.iv37.i324, 4 ; 2 uses
  %niter924.next.3 = add i64 %niter924, 4         ; 2 uses
  %niter924.ncmp.3 = icmp eq i64 %niter924.next.3, %unroll_iter923
  br i1 %niter924.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa: ; preds = %bb.m
  %lcmp.mod921.not = icmp eq i64 %xtraiter919, 0
  br i1 %lcmp.mod921.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %.epil.preheader917

.epil.preheader917:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, %.lr.ph29.i322
  %indvars.iv37.i324.epil.init = phi i64 [ 0, %.lr.ph29.i322 ], [ %indvars.iv.next38.i325.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa ]
  %lcmp.mod922 = icmp ne i64 %xtraiter919, 0
  call void @llvm.assume(i1 %lcmp.mod922)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader917
  %indvars.iv37.i324.epil = phi i64 [ %indvars.iv37.i324.epil.init, %.epil.preheader917 ], [ %indvars.iv.next38.i325.epil, %bb.n ] ; 3 uses
  %epil.iter920 = phi i64 [ 0, %.epil.preheader917 ], [ %epil.iter920.next, %bb.n ]
  %i.ip = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.iq = sub i32 %spec.select, %i.ip
  %i.ir = shl i32 %i.iq, 1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !34
  %i.iv = zext nneg i32 %i.is to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iu, i8 0, i64 %i.iv, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter920.next = add i64 %epil.iter920, 1   ; 2 uses
  %epil.iter920.cmp.not = icmp eq i64 %epil.iter920.next, %xtraiter919
  br i1 %epil.iter920.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !55

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332: ; preds = %bb.n, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %wide.trip.count40.i
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.ix, align 1, !tbaa !44
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !45
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.iz = getelementptr inbounds nuw [120 x i8], ptr %i.iy, i64 %indvars.iv607 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !56 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.y, align 4, !tbaa !31  ; 2 uses
  %.not582 = icmp eq i32 %i.jd, 0
  br i1 %.not582, label %.preheader533, label %.preheader530.lr.ph

.preheader530.lr.ph:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 104
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !57
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !58
  %i.jh = mul i32 %i.jg, %i.jb
  %i.ji = load i32, ptr %i.u, align 8, !tbaa !59
  %i.jj = add i32 %i.jh, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jf, i64 %i.jk
  %i.jm = load ptr, ptr %i.d, align 8
  %i.jn = load ptr, ptr %i.k, align 8
  %i.jo = zext i32 %i.jb to i64
  %.pre = load i32, ptr %i.v, align 8, !tbaa !30
  br label %.preheader530

.preheader533:                                    ; preds = %._crit_edge, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332
  %.not273542 = icmp eq i32 %spec.select, 0
  br i1 %.not273542, label %._crit_edge545, label %.lr.ph544

.preheader530:                                    ; preds = %.preheader530.lr.ph, %._crit_edge
  %i.jp = phi i32 [ %i.jd, %.preheader530.lr.ph ], [ %i.jt, %._crit_edge ]
  %i.jq = phi i32 [ %.pre, %.preheader530.lr.ph ], [ %i.ju, %._crit_edge ]
  %.0260536 = phi ptr [ %i.jl, %.preheader530.lr.ph ], [ %i.jv, %._crit_edge ] ; 2 uses
  %.0262535 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.jw, %._crit_edge ] ; 3 uses
  %.not583 = icmp eq i32 %i.jq, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jr = mul i32 %.0262535, %i.ax
  %i.js = mul i32 %.0262535, %i.ff
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre611 = load i32, ptr %i.y, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.jt = phi i32 [ %.pre611, %._crit_edge.loopexit ], [ %i.jp, %.preheader530 ] ; 2 uses
  %i.ju = phi i32 [ %i.kn, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %.0260536, i64 %i.jo
  %i.jw = add nuw i32 %.0262535, 1                ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.jt
  br i1 %i.jx, label %.preheader530, label %.preheader533, !llvm.loop !60

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %.0260536, i64 %indvars.iv ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !61
  %i.kb = icmp eq ptr %i.ka, null
  %i.kc = zext i1 %i.kb to i8
  %i.kd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ke = add i32 %i.jr, %i.kd
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kf
  store i8 %i.kc, ptr %i.kg, align 1, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !63
  %i.kj = trunc i32 %i.ki to i8
  %i.kk = add i32 %i.js, %i.kd
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.kl
  store i8 %i.kj, ptr %i.km, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = load i32, ptr %i.v, align 8, !tbaa !30  ; 2 uses
  %i.ko = zext i32 %i.kn to i64
  %i.kp = icmp samesign ult i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %bb.o, label %._crit_edge.loopexit, !llvm.loop !64

._crit_edge545:                                   ; preds = %._crit_edge541.split, %.preheader533
  store i8 0, ptr %i.cn, align 1, !tbaa !44
  store i8 0, ptr %i.eq, align 1, !tbaa !44
  store i8 0, ptr %i.gt, align 1, !tbaa !44
  store i8 0, ptr %i.ix, align 1, !tbaa !44
  %i.kq = zext nneg i32 %spec.select to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !34
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !44
  %.not274 = icmp eq i8 %i.kt, 0
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.kv = icmp eq ptr %i.ku, null                 ; 2 uses
  br i1 %.not274, label %bb.t, label %bb.p

.lr.ph544:                                        ; preds = %.preheader533, %._crit_edge541.split
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %._crit_edge541.split ], [ 1, %.preheader533 ] ; 7 uses
  %i.kw = load i32, ptr %i.y, align 4, !tbaa !31
  %i.kx = trunc nuw nsw i64 %indvars.iv596 to i32 ; 8 uses
  %notmask = shl nsw i32 -1, %i.kx
  %i.ky = xor i32 %notmask, -1                    ; 2 uses
  %i.kz = add i32 %i.kw, %i.ky
  %i.la = lshr i32 %i.kz, %i.kx                   ; 2 uses
  %i.lb = load i32, ptr %i.v, align 8, !tbaa !30
  %i.lc = add i32 %i.lb, %i.ky
  %i.ld = lshr i32 %i.lc, %i.kx                   ; 4 uses
  %.not584 = icmp eq i32 %i.la, 0
  br i1 %.not584, label %._crit_edge541.split, label %.preheader529.lr.ph

.preheader529.lr.ph:                              ; preds = %.lr.ph544
  %.not585 = icmp eq i32 %i.ld, 0
  %i.le = add nsw i64 %indvars.iv596, -1          ; 3 uses
  %i.lf = trunc nuw nsw i64 %i.le to i32          ; 3 uses
  %notmask.i337 = shl nsw i32 -1, %i.lf
  %i.lg = xor i32 %notmask.i337, -1               ; 2 uses
  %i.lh = add i32 %i.ax, %i.lg
  %i.li = lshr i32 %i.lh, %i.lf                   ; 8 uses
  %notmask.i345 = shl nsw i32 -1, %i.kx
  %i.lj = xor i32 %notmask.i345, -1               ; 4 uses
  %i.lk = add i32 %i.ax, %i.lj
  %i.ll = lshr i32 %i.lk, %i.kx                   ; 3 uses
  %i.lm = add i32 %i.dc, %i.lj
  %i.ln = lshr i32 %i.lm, %i.kx                   ; 3 uses
  %i.lo = add i32 %i.ff, %i.lg
  %i.lp = lshr i32 %i.lo, %i.lf                   ; 8 uses
  %i.lq = add i32 %i.ff, %i.lj
  %i.lr = lshr i32 %i.lq, %i.kx                   ; 3 uses
  %i.ls = add i32 %i.hj, %i.lj
  %i.lt = lshr i32 %i.ls, %i.kx                   ; 3 uses
  br i1 %.not585, label %._crit_edge541.split, label %.preheader529.lr.ph.split

.preheader529.lr.ph.split:                        ; preds = %.preheader529.lr.ph
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv596
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv596
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.le
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv596
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv596
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.le
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !34 ; 106 uses
  %i.mb = load ptr, ptr %i.ly, align 8, !tbaa !34 ; 5 uses
  %i.mc = load ptr, ptr %i.lx, align 8, !tbaa !34 ; 5 uses
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !34 ; 106 uses
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !34 ; 5 uses
  %i.mf = load ptr, ptr %i.lu, align 8, !tbaa !34 ; 5 uses
  %wide.trip.count = zext i32 %i.ld to i64        ; 11 uses
  %i.mg = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.mh = shl i32 %i.li, 1
  %i.mi = shl i32 %i.lp, 1
  %scevgep691.a = getelementptr i8, ptr %i.mb, i64 %wide.trip.count
  %scevgep694.a = getelementptr i8, ptr %i.mc, i64 %wide.trip.count
  %scevgep697.a = getelementptr i8, ptr %i.me, i64 %wide.trip.count
  %scevgep700 = getelementptr i8, ptr %i.mf, i64 %wide.trip.count
  %i.mj = add i32 %i.li, 1
  %i.mk = shl i32 %i.li, 1
  %scevgep703 = getelementptr i8, ptr %i.ma, i64 -1
  %i.ml = shl nuw nsw i64 %wide.trip.count, 1     ; 6 uses
  %scevgep704 = getelementptr i8, ptr %scevgep703, i64 %i.ml
  %scevgep707 = getelementptr i8, ptr %i.ma, i64 -1
  %scevgep708 = getelementptr i8, ptr %scevgep707, i64 %i.ml
  %scevgep711 = getelementptr i8, ptr %i.ma, i64 %i.ml
  %i.mm = add i32 %i.lp, 1
  %i.mn = shl i32 %i.lp, 1
  %scevgep714 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep715 = getelementptr i8, ptr %scevgep714, i64 %i.ml
  %scevgep718 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep719 = getelementptr i8, ptr %scevgep718, i64 %i.ml
  %scevgep722 = getelementptr i8, ptr %i.md, i64 %i.ml
  %min.iters.check = icmp ult i32 %i.ld, 9
  %i.mo = trunc i64 %i.mg to i32                  ; 4 uses
  %i.mp = icmp ugt i64 %i.mg, 4294967295
  %i.mq = trunc i64 %i.mg to i32
  %mul.result = shl i32 %i.mq, 1                  ; 8 uses
  %i.mr = icmp ugt i64 %i.mg, 2147483647
  %min.iters.check839 = icmp ult i32 %i.ld, 17
  %n.mod.vf = and i64 %wide.trip.count, 15        ; 2 uses
  %i.ms = icmp eq i64 %n.mod.vf, 0
  %i.mt = select i1 %i.ms, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.mt    ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.mt, 9
  %n.mod.vf840 = and i64 %wide.trip.count, 7      ; 2 uses
  %i.mu = icmp eq i64 %n.mod.vf840, 0
  %i.mv = select i1 %i.mu, i64 8, i64 %n.mod.vf840
  %n.vec841 = sub nsw i64 %wide.trip.count, %i.mv ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader529.lr.ph.split, %._crit_edge539
  %.0269540 = phi i32 [ 0, %.preheader529.lr.ph.split ], [ %i.bez, %._crit_edge539 ] ; 18 uses
  %i.mw = mul i32 %i.ll, %.0269540
  %i.mx = zext i32 %i.mw to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mb, i64 %i.mx ; 9 uses
  %scevgep692.a = getelementptr i8, ptr %scevgep691.a, i64 %i.mx ; 9 uses
  %i.my = mul i32 %i.ln, %.0269540
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %scevgep693.a = getelementptr i8, ptr %i.mc, i64 %i.mz ; 9 uses
  %scevgep695 = getelementptr i8, ptr %scevgep694.a, i64 %i.mz ; 9 uses
  %i.na = mul i32 %i.lr, %.0269540
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %scevgep696.a = getelementptr i8, ptr %i.me, i64 %i.nb ; 9 uses
  %scevgep698 = getelementptr i8, ptr %scevgep697.a, i64 %i.nb ; 9 uses
  %i.nc = mul i32 %i.lt, %.0269540
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  %scevgep699.a = getelementptr i8, ptr %i.mf, i64 %i.nd ; 9 uses
  %scevgep701 = getelementptr i8, ptr %scevgep700, i64 %i.nd ; 9 uses
  %i.ne = mul i32 %i.mk, %.0269540                ; 3 uses
  %i.nf = add i32 %i.mj, %i.ne
  %i.ng = zext i32 %i.nf to i64                   ; 2 uses
  %scevgep702 = getelementptr i8, ptr %i.ma, i64 %i.ng ; 4 uses
  %scevgep705 = getelementptr i8, ptr %scevgep704, i64 %i.ng ; 4 uses
  %i.nh = add i32 %i.li, %i.ne
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %scevgep706 = getelementptr i8, ptr %i.ma, i64 %i.ni ; 4 uses
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.ni ; 4 uses
  %i.nj = zext i32 %i.ne to i64                   ; 2 uses
  %scevgep710 = getelementptr i8, ptr %i.ma, i64 %i.nj ; 4 uses
  %scevgep712 = getelementptr i8, ptr %scevgep711, i64 %i.nj ; 4 uses
  %i.nk = mul i32 %i.mn, %.0269540                ; 3 uses
  %i.nl = add i32 %i.mm, %i.nk
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %scevgep713 = getelementptr i8, ptr %i.md, i64 %i.nm ; 4 uses
  %scevgep716 = getelementptr i8, ptr %scevgep715, i64 %i.nm ; 4 uses
  %i.nn = add i32 %i.lp, %i.nk
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %scevgep717 = getelementptr i8, ptr %i.md, i64 %i.no ; 4 uses
  %scevgep720 = getelementptr i8, ptr %scevgep719, i64 %i.no ; 4 uses
  %i.np = zext i32 %i.nk to i64                   ; 2 uses
  %scevgep721 = getelementptr i8, ptr %i.md, i64 %i.np ; 4 uses
  %scevgep723 = getelementptr i8, ptr %scevgep722, i64 %i.np ; 4 uses
  %i.nq = shl i32 %.0269540, 1                    ; 3 uses
  %i.nr = mul i32 %i.li, %i.nq                    ; 50 uses
  %i.ns = or disjoint i32 %i.nq, 1                ; 2 uses
  %i.nt = mul i32 %i.li, %i.ns                    ; 50 uses
  %i.nu = mul i32 %i.ll, %.0269540                ; 3 uses
  %i.nv = mul i32 %i.ln, %.0269540                ; 3 uses
  %i.nw = mul i32 %i.lp, %i.nq                    ; 50 uses
  %i.nx = mul i32 %i.lp, %i.ns                    ; 50 uses
  %i.ny = mul i32 %i.lr, %.0269540                ; 3 uses
  %i.nz = mul i32 %i.lt, %.0269540                ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.oa = mul i32 %i.mi, %.0269540                ; 4 uses
  %i.ob = add i32 %i.lp, %i.oa
  %i.oc = mul i32 %i.mh, %.0269540                ; 4 uses
  %i.od = add i32 %i.li, %i.oc
  %i.oe = mul i32 %i.lt, %.0269540
  %i.of = mul i32 %i.lr, %.0269540
  %i.og = mul i32 %i.ln, %.0269540
  %i.oh = mul i32 %i.ll, %.0269540
  %i.oi = xor i32 %i.oh, -1
  %i.oj = icmp ult i32 %i.oi, %i.mo
  %i.ok = xor i32 %i.og, -1
  %i.ol = icmp ult i32 %i.ok, %i.mo
  %i.om = or i1 %i.ol, %i.mp
  %i.on = xor i32 %i.of, -1
  %i.oo = icmp ult i32 %i.on, %i.mo
  %i.op = xor i32 %i.oe, -1
  %i.oq = icmp ult i32 %i.op, %i.mo
  %i.or = xor i32 %i.oc, -1
  %i.os = icmp ugt i32 %mul.result, %i.or
  %i.ot = or i1 %i.os, %i.mr
  %i.ou = xor i32 %i.oc, -2
  %i.ov = icmp ult i32 %i.ou, %mul.result
  %i.ow = xor i32 %i.od, -1
  %i.ox = icmp ugt i32 %mul.result, %i.ow
  %i.oy = add i32 %i.li, %i.oc
  %i.oz = sub i32 -2, %i.oy
  %i.pa = icmp ult i32 %i.oz, %mul.result
  %i.pb = xor i32 %i.oa, -1
  %i.pc = icmp ugt i32 %mul.result, %i.pb
  %i.pd = xor i32 %i.oa, -2
  %i.pe = icmp ult i32 %i.pd, %mul.result
  %i.pf = xor i32 %i.ob, -1
  %i.pg = icmp ugt i32 %mul.result, %i.pf
  %i.ph = add i32 %i.lp, %i.oa
  %i.pi = sub i32 -2, %i.ph
  %i.pj = icmp ult i32 %i.pi, %mul.result
  %i.pk = or i1 %i.oj, %i.om
  %i.pl = or i1 %i.oo, %i.pk
  %i.pm = or i1 %i.oq, %i.pl
  %i.pn = or i1 %i.pm, %i.ot
  %i.po = or i1 %i.ov, %i.pn
  %i.pp = or i1 %i.ox, %i.po
  %i.pq = or i1 %i.pa, %i.pp
  %i.pr = or i1 %i.pc, %i.pq
  %i.ps = or i1 %i.pe, %i.pr
  %i.pt = or i1 %i.pg, %i.ps
  %i.pu = or i1 %i.pj, %i.pt
  br i1 %i.pu, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep695
  %bound1 = icmp ult ptr %scevgep693.a, %scevgep692.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0724 = icmp ult ptr %scevgep, %scevgep698
  %bound1725 = icmp ult ptr %scevgep696.a, %scevgep692.a
  %found.conflict726 = and i1 %bound0724, %bound1725
  %conflict.rdx = or i1 %found.conflict, %found.conflict726
  %bound0727.a = icmp ult ptr %scevgep, %scevgep701
  %bound1728.a = icmp ult ptr %scevgep699.a, %scevgep692.a
  %found.conflict729.a = and i1 %bound0727.a, %bound1728.a
  %conflict.rdx730.a = or i1 %conflict.rdx, %found.conflict729.a
  %bound0731.a = icmp ult ptr %scevgep, %scevgep705
  %bound1732.a = icmp ult ptr %scevgep702, %scevgep692.a
  %found.conflict733.a = and i1 %bound0731.a, %bound1732.a
  %conflict.rdx734.a = or i1 %conflict.rdx730.a, %found.conflict733.a
  %bound0735.a = icmp ult ptr %scevgep, %scevgep709
  %bound1736.a = icmp ult ptr %scevgep706, %scevgep692.a
  %found.conflict737.a = and i1 %bound0735.a, %bound1736.a
  %conflict.rdx738.a = or i1 %conflict.rdx734.a, %found.conflict737.a
  %bound0739.a = icmp ult ptr %scevgep, %scevgep712
  %bound1740.a = icmp ult ptr %scevgep710, %scevgep692.a
  %found.conflict741.a = and i1 %bound0739.a, %bound1740.a
  %conflict.rdx742.a = or i1 %conflict.rdx738.a, %found.conflict741.a
  %bound0743.a = icmp ult ptr %scevgep, %scevgep716
  %bound1744.a = icmp ult ptr %scevgep713, %scevgep692.a
  %found.conflict745.a = and i1 %bound0743.a, %bound1744.a
  %conflict.rdx746.a = or i1 %conflict.rdx742.a, %found.conflict745.a
  %bound0747.a = icmp ult ptr %scevgep, %scevgep720
  %bound1748.a = icmp ult ptr %scevgep717, %scevgep692.a
  %found.conflict749.a = and i1 %bound0747.a, %bound1748.a
  %conflict.rdx750.a = or i1 %conflict.rdx746.a, %found.conflict749.a
  %bound0751.a = icmp ult ptr %scevgep, %scevgep723
  %bound1752.a = icmp ult ptr %scevgep721, %scevgep692.a
  %found.conflict753.a = and i1 %bound0751.a, %bound1752.a
  %conflict.rdx754.a = or i1 %conflict.rdx750.a, %found.conflict753.a
  %bound0755.a = icmp ult ptr %scevgep693.a, %scevgep698
  %bound1756.a = icmp ult ptr %scevgep696.a, %scevgep695
  %found.conflict757.a = and i1 %bound0755.a, %bound1756.a
  %conflict.rdx758.a = or i1 %conflict.rdx754.a, %found.conflict757.a
  %bound0759.a = icmp ult ptr %scevgep693.a, %scevgep701
  %bound1760.a = icmp ult ptr %scevgep699.a, %scevgep695
  %found.conflict761.a = and i1 %bound0759.a, %bound1760.a
  %conflict.rdx762.a = or i1 %conflict.rdx758.a, %found.conflict761.a
  %bound0763.a = icmp ult ptr %scevgep693.a, %scevgep705
  %bound1764.a = icmp ult ptr %scevgep702, %scevgep695
  %found.conflict765.a = and i1 %bound0763.a, %bound1764.a
  %conflict.rdx766.a = or i1 %conflict.rdx762.a, %found.conflict765.a
  %bound0767.a = icmp ult ptr %scevgep693.a, %scevgep709
  %bound1768.a = icmp ult ptr %scevgep706, %scevgep695
  %found.conflict769.a = and i1 %bound0767.a, %bound1768.a
  %conflict.rdx770.a = or i1 %conflict.rdx766.a, %found.conflict769.a
  %bound0771.a = icmp ult ptr %scevgep693.a, %scevgep712
  %bound1772.a = icmp ult ptr %scevgep710, %scevgep695
  %found.conflict773.a = and i1 %bound0771.a, %bound1772.a
  %conflict.rdx774.a = or i1 %conflict.rdx770.a, %found.conflict773.a
  %bound0775.a = icmp ult ptr %scevgep693.a, %scevgep716
  %bound1776.a = icmp ult ptr %scevgep713, %scevgep695
  %found.conflict777.a = and i1 %bound0775.a, %bound1776.a
  %conflict.rdx778.a = or i1 %conflict.rdx774.a, %found.conflict777.a
  %bound0779.a = icmp ult ptr %scevgep693.a, %scevgep720
  %bound1780.a = icmp ult ptr %scevgep717, %scevgep695
  %found.conflict781.a = and i1 %bound0779.a, %bound1780.a
  %conflict.rdx782.a = or i1 %conflict.rdx778.a, %found.conflict781.a
  %bound0783.a = icmp ult ptr %scevgep693.a, %scevgep723
  %bound1784.a = icmp ult ptr %scevgep721, %scevgep695
  %found.conflict785.a = and i1 %bound0783.a, %bound1784.a
  %conflict.rdx786.a = or i1 %conflict.rdx782.a, %found.conflict785.a
  %bound0787.a = icmp ult ptr %scevgep696.a, %scevgep701
  %bound1788.a = icmp ult ptr %scevgep699.a, %scevgep698
  %found.conflict789.a = and i1 %bound0787.a, %bound1788.a
  %conflict.rdx790.a = or i1 %conflict.rdx786.a, %found.conflict789.a
  %bound0791.a = icmp ult ptr %scevgep696.a, %scevgep705
  %bound1792.a = icmp ult ptr %scevgep702, %scevgep698
  %found.conflict793.a = and i1 %bound0791.a, %bound1792.a
  %conflict.rdx794.a = or i1 %conflict.rdx790.a, %found.conflict793.a
  %bound0795.a = icmp ult ptr %scevgep696.a, %scevgep709
  %bound1796.a = icmp ult ptr %scevgep706, %scevgep698
  %found.conflict797.a = and i1 %bound0795.a, %bound1796.a
  %conflict.rdx798.a = or i1 %conflict.rdx794.a, %found.conflict797.a
  %bound0799.a = icmp ult ptr %scevgep696.a, %scevgep712
  %bound1800.a = icmp ult ptr %scevgep710, %scevgep698
  %found.conflict801.a = and i1 %bound0799.a, %bound1800.a
  %conflict.rdx802.a = or i1 %conflict.rdx798.a, %found.conflict801.a
  %bound0803.a = icmp ult ptr %scevgep696.a, %scevgep716
  %bound1804.a = icmp ult ptr %scevgep713, %scevgep698
  %found.conflict805.a = and i1 %bound0803.a, %bound1804.a
  %conflict.rdx806.a = or i1 %conflict.rdx802.a, %found.conflict805.a
  %bound0807.a = icmp ult ptr %scevgep696.a, %scevgep720
  %bound1808.a = icmp ult ptr %scevgep717, %scevgep698
  %found.conflict809.a = and i1 %bound0807.a, %bound1808.a
  %conflict.rdx810.a = or i1 %conflict.rdx806.a, %found.conflict809.a
  %bound0811.a = icmp ult ptr %scevgep696.a, %scevgep723
  %bound1812.a = icmp ult ptr %scevgep721, %scevgep698
  %found.conflict813.a = and i1 %bound0811.a, %bound1812.a
  %conflict.rdx814.a = or i1 %conflict.rdx810.a, %found.conflict813.a
  %bound0815 = icmp ult ptr %scevgep699.a, %scevgep705
  %bound1816 = icmp ult ptr %scevgep702, %scevgep701
  %found.conflict817 = and i1 %bound0815, %bound1816
  %conflict.rdx818 = or i1 %conflict.rdx814.a, %found.conflict817
  %bound0819 = icmp ult ptr %scevgep699.a, %scevgep709
  %bound1820 = icmp ult ptr %scevgep706, %scevgep701
  %found.conflict821 = and i1 %bound0819, %bound1820
  %conflict.rdx822 = or i1 %conflict.rdx818, %found.conflict821
  %bound0823 = icmp ult ptr %scevgep699.a, %scevgep712
  %bound1824 = icmp ult ptr %scevgep710, %scevgep701
  %found.conflict825 = and i1 %bound0823, %bound1824
  %conflict.rdx826 = or i1 %conflict.rdx822, %found.conflict825
  %bound0827 = icmp ult ptr %scevgep699.a, %scevgep716
  %bound1828 = icmp ult ptr %scevgep713, %scevgep701
  %found.conflict829 = and i1 %bound0827, %bound1828
  %conflict.rdx830 = or i1 %conflict.rdx826, %found.conflict829
  %bound0831 = icmp ult ptr %scevgep699.a, %scevgep720
  %bound1832 = icmp ult ptr %scevgep717, %scevgep701
  %found.conflict833 = and i1 %bound0831, %bound1832
  %conflict.rdx834 = or i1 %conflict.rdx830, %found.conflict833
  %bound0835 = icmp ult ptr %scevgep699.a, %scevgep723
  %bound1836 = icmp ult ptr %scevgep721, %scevgep701
  %found.conflict837 = and i1 %bound0835, %bound1836
  %conflict.rdx838 = or i1 %conflict.rdx834, %found.conflict837
  br i1 %conflict.rdx838, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check839, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.pv = trunc i64 %index to i32                 ; 20 uses
  %i.pw = shl i32 %i.pv, 1                        ; 5 uses
  %i.px = shl i32 %i.pv, 1                        ; 2 uses
  %i.py = or disjoint i32 %i.px, 2                ; 4 uses
  %i.pz = shl i32 %i.pv, 1                        ; 2 uses
  %i.qa = or disjoint i32 %i.pz, 4                ; 4 uses
  %i.qb = shl i32 %i.pv, 1                        ; 2 uses
  %i.qc = or disjoint i32 %i.qb, 6                ; 4 uses
  %i.qd = shl i32 %i.pv, 1                        ; 2 uses
  %i.qe = or disjoint i32 %i.qd, 8                ; 4 uses
  %i.qf = shl i32 %i.pv, 1                        ; 2 uses
  %i.qg = or disjoint i32 %i.qf, 10               ; 4 uses
  %i.qh = shl i32 %i.pv, 1                        ; 2 uses
  %i.qi = or disjoint i32 %i.qh, 12               ; 4 uses
  %i.qj = shl i32 %i.pv, 1                        ; 2 uses
  %i.qk = or disjoint i32 %i.qj, 14               ; 4 uses
  %i.ql = shl i32 %i.pv, 1                        ; 2 uses
  %i.qm = or disjoint i32 %i.ql, 16               ; 4 uses
  %i.qn = shl i32 %i.pv, 1                        ; 2 uses
  %i.qo = or disjoint i32 %i.qn, 18               ; 4 uses
  %i.qp = shl i32 %i.pv, 1                        ; 2 uses
  %i.qq = or disjoint i32 %i.qp, 20               ; 4 uses
  %i.qr = shl i32 %i.pv, 1                        ; 2 uses
  %i.qs = or disjoint i32 %i.qr, 22               ; 4 uses
  %i.qt = shl i32 %i.pv, 1                        ; 2 uses
  %i.qu = or disjoint i32 %i.qt, 24               ; 4 uses
  %i.qv = shl i32 %i.pv, 1                        ; 2 uses
  %i.qw = or disjoint i32 %i.qv, 26               ; 4 uses
  %i.qx = shl i32 %i.pv, 1                        ; 2 uses
  %i.qy = or disjoint i32 %i.qx, 28               ; 4 uses
  %i.qz = shl i32 %i.pv, 1                        ; 2 uses
  %i.ra = or disjoint i32 %i.qz, 30               ; 4 uses
  %i.rb = add i32 %i.nr, %i.pw
  %i.rc = add i32 %i.nr, %i.py
  %i.rd = add i32 %i.nr, %i.qa
  %i.re = add i32 %i.nr, %i.qc
  %i.rf = add i32 %i.nr, %i.qe
  %i.rg = add i32 %i.nr, %i.qg
  %i.rh = add i32 %i.nr, %i.qi
  %i.ri = add i32 %i.nr, %i.qk
  %i.rj = add i32 %i.nr, %i.qm
  %i.rk = add i32 %i.nr, %i.qo
  %i.rl = add i32 %i.nr, %i.qq
  %i.rm = add i32 %i.nr, %i.qs
  %i.rn = add i32 %i.nr, %i.qu
  %i.ro = add i32 %i.nr, %i.qw
  %i.rp = add i32 %i.nr, %i.qy
  %i.rq = add i32 %i.nr, %i.ra
  %i.rr = zext i32 %i.rb to i64
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
end_hunk_0
