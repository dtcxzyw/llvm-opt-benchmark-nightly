inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
.lr.ph.i327:                                      ; preds = %.preheader.i320, %.lr.ph.i327
  %indvars.iv33.i328 = phi i64 [ %indvars.iv.next34.i329, %.lr.ph.i327 ], [ %wide.trip.count.i, %.preheader.i320 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv33.i328
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.hl, align 8, !tbaa !34
  %indvars.iv.next34.i329 = add nuw nsw i64 %indvars.iv33.i328, 1 ; 2 uses
  %i.hm = and i64 %indvars.iv.next34.i329, 4294967295
  %exitcond36.not.i330 = icmp eq i64 %i.hm, 16
  br i1 %exitcond36.not.i330, label %.lr.ph29.i322, label %.lr.ph.i327, !llvm.loop !40

bb.m:                                             ; preds = %bb.m, %.lr.ph29.i322.new
  %indvars.iv37.i324 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %indvars.iv.next38.i325.3, %bb.m ] ; 6 uses
  %niter895 = phi i64 [ 0, %.lr.ph29.i322.new ], [ %niter895.next.3, %bb.m ]
  %i.hn = trunc nuw i64 %indvars.iv37.i324 to i32
  %i.ho = sub i32 %spec.select, %i.hn
  %i.hp = shl i32 %i.ho, 1
  %i.hq = shl nuw i32 1, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !34
  %i.ht = zext nneg i32 %i.hq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false)
  %indvars.iv.next38.i325 = or disjoint i64 %indvars.iv37.i324, 1 ; 2 uses
  %i.hu = trunc nuw i64 %indvars.iv.next38.i325 to i32
  %i.hv = sub i32 %spec.select, %i.hu
  %i.hw = shl i32 %i.hv, 1
  %i.hx = shl nuw i32 1, %i.hw
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
  %niter895.next.3 = add i64 %niter895, 4         ; 2 uses
  %niter895.ncmp.3 = icmp eq i64 %niter895.next.3, %unroll_iter894
  br i1 %niter895.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, label %bb.m, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa: ; preds = %bb.m
  %lcmp.mod892.not = icmp eq i64 %xtraiter890, 0
  br i1 %lcmp.mod892.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %.epil.preheader888

.epil.preheader888:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa, %.lr.ph29.i322
  %indvars.iv37.i324.epil.init = phi i64 [ 0, %.lr.ph29.i322 ], [ %indvars.iv.next38.i325.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332.unr-lcssa ]
  %lcmp.mod893 = icmp ne i64 %xtraiter890, 0
  call void @llvm.assume(i1 %lcmp.mod893)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader888
  %indvars.iv37.i324.epil = phi i64 [ %indvars.iv37.i324.epil.init, %.epil.preheader888 ], [ %indvars.iv.next38.i325.epil, %bb.n ] ; 3 uses
  %epil.iter891 = phi i64 [ 0, %.epil.preheader888 ], [ %epil.iter891.next, %bb.n ]
  %i.ip = trunc nuw i64 %indvars.iv37.i324.epil to i32
  %i.iq = sub i32 %spec.select, %i.ip
  %i.ir = shl i32 %i.iq, 1
  %i.is = shl nuw i32 1, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i324.epil
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !34
  %i.iv = zext nneg i32 %i.is to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iu, i8 0, i64 %i.iv, i1 false)
  %indvars.iv.next38.i325.epil = add nuw nsw i64 %indvars.iv37.i324.epil, 1
  %epil.iter891.next = add i64 %epil.iter891, 1   ; 2 uses
  %epil.iter891.cmp.not = icmp eq i64 %epil.iter891.next, %xtraiter890
  br i1 %epil.iter891.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit332, label %bb.n, !llvm.loop !55

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
  %.0266536 = phi i32 [ 0, %.preheader530.lr.ph ], [ %i.jw, %._crit_edge ] ; 3 uses
  %.0267535 = phi ptr [ %i.jl, %.preheader530.lr.ph ], [ %i.jv, %._crit_edge ] ; 2 uses
  %.not583 = icmp eq i32 %i.jq, 0
  br i1 %.not583, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader530
  %i.jr = mul i32 %.0266536, %i.ax
  %i.js = mul i32 %.0266536, %i.ff
  br label %bb.o

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre611 = load i32, ptr %i.y, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader530
  %i.jt = phi i32 [ %.pre611, %._crit_edge.loopexit ], [ %i.jp, %.preheader530 ] ; 2 uses
  %i.ju = phi i32 [ %i.kn, %._crit_edge.loopexit ], [ 0, %.preheader530 ]
  %i.jv = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %i.jo
  %i.jw = add nuw i32 %.0266536, 1                ; 2 uses
  %i.jx = icmp ult i32 %i.jw, %i.jt
  br i1 %i.jx, label %.preheader530, label %.preheader533, !llvm.loop !60

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %.0267535, i64 %indvars.iv ; 2 uses
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
  %i.ll = lshr i32 %i.lk, %i.kx                   ; 2 uses
  %i.lm = add i32 %i.dc, %i.lj
  %i.ln = lshr i32 %i.lm, %i.kx                   ; 2 uses
  %i.lo = add i32 %i.ff, %i.lg
  %i.lp = lshr i32 %i.lo, %i.lf                   ; 8 uses
  %i.lq = add i32 %i.ff, %i.lj
  %i.lr = lshr i32 %i.lq, %i.kx                   ; 2 uses
  %i.ls = add i32 %i.hj, %i.lj
  %i.lt = lshr i32 %i.ls, %i.kx                   ; 2 uses
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
  %scevgep667 = getelementptr i8, ptr %i.mb, i64 %wide.trip.count
  %scevgep670 = getelementptr i8, ptr %i.mc, i64 %wide.trip.count
  %scevgep673 = getelementptr i8, ptr %i.me, i64 %wide.trip.count
  %scevgep676 = getelementptr i8, ptr %i.mf, i64 %wide.trip.count
  %i.mj = add i32 %i.li, 1
  %i.mk = shl i32 %i.li, 1
  %scevgep679 = getelementptr i8, ptr %i.ma, i64 -1
  %i.ml = shl nuw nsw i64 %wide.trip.count, 1     ; 6 uses
  %scevgep680 = getelementptr i8, ptr %scevgep679, i64 %i.ml
  %scevgep683 = getelementptr i8, ptr %i.ma, i64 -1
  %scevgep684 = getelementptr i8, ptr %scevgep683, i64 %i.ml
  %scevgep687 = getelementptr i8, ptr %i.ma, i64 %i.ml
  %i.mm = add i32 %i.lp, 1
  %i.mn = shl i32 %i.lp, 1
  %scevgep690 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep691 = getelementptr i8, ptr %scevgep690, i64 %i.ml
  %scevgep694 = getelementptr i8, ptr %i.md, i64 -1
  %scevgep695 = getelementptr i8, ptr %scevgep694, i64 %i.ml
  %scevgep698 = getelementptr i8, ptr %i.md, i64 %i.ml
  %min.iters.check = icmp ult i32 %i.ld, 9
  %i.mo = trunc i64 %i.mg to i32                  ; 4 uses
  %i.mp = icmp ugt i64 %i.mg, 4294967295
  %i.mq = trunc i64 %i.mg to i32
  %mul.result = shl i32 %i.mq, 1                  ; 8 uses
  %i.mr = icmp ugt i64 %i.mg, 2147483647
  %min.iters.check815 = icmp ult i32 %i.ld, 17
  %i.ms = and i64 %wide.trip.count, 15            ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  %i.mu = select i1 %i.mt, i64 16, i64 %i.ms      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.mu    ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.mu, 9
  %i.mv = and i64 %wide.trip.count, 7             ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = select i1 %i.mw, i64 8, i64 %i.mv
  %n.vec816 = sub nsw i64 %wide.trip.count, %i.mx ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.preheader529.lr.ph.split, %._crit_edge539
  %.0262540 = phi i32 [ 0, %.preheader529.lr.ph.split ], [ %i.bex, %._crit_edge539 ] ; 14 uses
  %i.my = mul i32 %i.ll, %.0262540
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mb, i64 %i.mz ; 9 uses
  %scevgep668 = getelementptr i8, ptr %scevgep667, i64 %i.mz ; 9 uses
  %i.na = mul i32 %i.ln, %.0262540
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %scevgep669 = getelementptr i8, ptr %i.mc, i64 %i.nb ; 9 uses
  %scevgep671 = getelementptr i8, ptr %scevgep670, i64 %i.nb ; 9 uses
  %i.nc = mul i32 %i.lr, %.0262540
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  %scevgep672 = getelementptr i8, ptr %i.me, i64 %i.nd ; 9 uses
  %scevgep674 = getelementptr i8, ptr %scevgep673, i64 %i.nd ; 9 uses
  %i.ne = mul i32 %i.lt, %.0262540
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %scevgep675 = getelementptr i8, ptr %i.mf, i64 %i.nf ; 9 uses
  %scevgep677 = getelementptr i8, ptr %scevgep676, i64 %i.nf ; 9 uses
  %i.ng = mul i32 %i.mk, %.0262540                ; 3 uses
  %i.nh = add i32 %i.mj, %i.ng
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %scevgep678 = getelementptr i8, ptr %i.ma, i64 %i.ni ; 4 uses
  %scevgep681 = getelementptr i8, ptr %scevgep680, i64 %i.ni ; 4 uses
  %i.nj = add i32 %i.li, %i.ng
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  %scevgep682 = getelementptr i8, ptr %i.ma, i64 %i.nk ; 4 uses
  %scevgep685 = getelementptr i8, ptr %scevgep684, i64 %i.nk ; 4 uses
  %i.nl = zext i32 %i.ng to i64                   ; 2 uses
  %scevgep686 = getelementptr i8, ptr %i.ma, i64 %i.nl ; 4 uses
  %scevgep688 = getelementptr i8, ptr %scevgep687, i64 %i.nl ; 4 uses
  %i.nm = mul i32 %i.mn, %.0262540                ; 3 uses
  %i.nn = add i32 %i.mm, %i.nm
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %scevgep689 = getelementptr i8, ptr %i.md, i64 %i.no ; 4 uses
  %scevgep692 = getelementptr i8, ptr %scevgep691, i64 %i.no ; 4 uses
  %i.np = add i32 %i.lp, %i.nm
  %i.nq = zext i32 %i.np to i64                   ; 2 uses
  %scevgep693 = getelementptr i8, ptr %i.md, i64 %i.nq ; 4 uses
  %scevgep696 = getelementptr i8, ptr %scevgep695, i64 %i.nq ; 4 uses
  %i.nr = zext i32 %i.nm to i64                   ; 2 uses
  %scevgep697 = getelementptr i8, ptr %i.md, i64 %i.nr ; 4 uses
  %scevgep699 = getelementptr i8, ptr %scevgep698, i64 %i.nr ; 4 uses
  %i.ns = shl i32 %.0262540, 1                    ; 3 uses
  %i.nt = mul i32 %i.li, %i.ns                    ; 51 uses
  %i.nu = or disjoint i32 %i.ns, 1                ; 2 uses
  %i.nv = mul i32 %i.li, %i.nu                    ; 50 uses
  %i.nw = mul i32 %i.ll, %.0262540                ; 4 uses
  %i.nx = mul i32 %i.ln, %.0262540                ; 4 uses
  %i.ny = mul i32 %i.lp, %i.ns                    ; 51 uses
  %i.nz = mul i32 %i.lp, %i.nu                    ; 50 uses
  %i.oa = mul i32 %i.lr, %.0262540                ; 4 uses
  %i.ob = mul i32 %i.lt, %.0262540                ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.oc = mul i32 %i.mi, %.0262540                ; 3 uses
  %i.od = add i32 %i.lp, %i.oc
  %i.oe = mul i32 %i.mh, %.0262540                ; 3 uses
  %i.of = add i32 %i.li, %i.oe
  %i.og = xor i32 %i.nw, -1
  %i.oh = icmp ult i32 %i.og, %i.mo
  %i.oi = xor i32 %i.nx, -1
  %i.oj = icmp ult i32 %i.oi, %i.mo
  %i.ok = or i1 %i.oj, %i.mp
  %i.ol = xor i32 %i.oa, -1
  %i.om = icmp ult i32 %i.ol, %i.mo
  %i.on = xor i32 %i.ob, -1
  %i.oo = icmp ult i32 %i.on, %i.mo
  %i.op = xor i32 %i.nt, -1
  %i.oq = icmp ugt i32 %mul.result, %i.op
  %i.or = or i1 %i.oq, %i.mr
  %i.os = xor i32 %i.oe, -2
  %i.ot = icmp ult i32 %i.os, %mul.result
  %i.ou = xor i32 %i.of, -1
  %i.ov = icmp ugt i32 %mul.result, %i.ou
  %i.ow = add i32 %i.li, %i.oe
  %i.ox = sub i32 -2, %i.ow
  %i.oy = icmp ult i32 %i.ox, %mul.result
  %i.oz = xor i32 %i.ny, -1
  %i.pa = icmp ugt i32 %mul.result, %i.oz
  %i.pb = xor i32 %i.oc, -2
  %i.pc = icmp ult i32 %i.pb, %mul.result
  %i.pd = xor i32 %i.od, -1
  %i.pe = icmp ugt i32 %mul.result, %i.pd
  %i.pf = add i32 %i.lp, %i.oc
  %i.pg = sub i32 -2, %i.pf
  %i.ph = icmp ult i32 %i.pg, %mul.result
  %i.pi = or i1 %i.oh, %i.ok
  %i.pj = or i1 %i.om, %i.pi
  %i.pk = or i1 %i.oo, %i.pj
  %i.pl = or i1 %i.pk, %i.or
  %i.pm = or i1 %i.ot, %i.pl
  %i.pn = or i1 %i.ov, %i.pm
  %i.po = or i1 %i.oy, %i.pn
  %i.pp = or i1 %i.pa, %i.po
  %i.pq = or i1 %i.pc, %i.pp
  %i.pr = or i1 %i.pe, %i.pq
  %i.ps = or i1 %i.ph, %i.pr
  br i1 %i.ps, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep671
  %bound1 = icmp ult ptr %scevgep669, %scevgep668
  %found.conflict = and i1 %bound0, %bound1
  %bound0700 = icmp ult ptr %scevgep, %scevgep674
  %bound1701 = icmp ult ptr %scevgep672, %scevgep668
  %found.conflict702 = and i1 %bound0700, %bound1701
  %conflict.rdx = or i1 %found.conflict, %found.conflict702
  %bound0703 = icmp ult ptr %scevgep, %scevgep677
  %bound1704 = icmp ult ptr %scevgep675, %scevgep668
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx, %found.conflict705
  %bound0707 = icmp ult ptr %scevgep, %scevgep681
  %bound1708 = icmp ult ptr %scevgep678, %scevgep668
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  %bound0711 = icmp ult ptr %scevgep, %scevgep685
  %bound1712 = icmp ult ptr %scevgep682, %scevgep668
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %conflict.rdx710, %found.conflict713
  %bound0715 = icmp ult ptr %scevgep, %scevgep688
  %bound1716 = icmp ult ptr %scevgep686, %scevgep668
  %found.conflict717 = and i1 %bound0715, %bound1716
  %conflict.rdx718 = or i1 %conflict.rdx714, %found.conflict717
  %bound0719 = icmp ult ptr %scevgep, %scevgep692
  %bound1720 = icmp ult ptr %scevgep689, %scevgep668
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx718, %found.conflict721
  %bound0723 = icmp ult ptr %scevgep, %scevgep696
  %bound1724 = icmp ult ptr %scevgep693, %scevgep668
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %conflict.rdx722, %found.conflict725
  %bound0727 = icmp ult ptr %scevgep, %scevgep699
  %bound1728 = icmp ult ptr %scevgep697, %scevgep668
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %conflict.rdx726, %found.conflict729
  %bound0731 = icmp ult ptr %scevgep669, %scevgep674
  %bound1732 = icmp ult ptr %scevgep672, %scevgep671
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %conflict.rdx730, %found.conflict733
  %bound0735 = icmp ult ptr %scevgep669, %scevgep677
  %bound1736 = icmp ult ptr %scevgep675, %scevgep671
  %found.conflict737 = and i1 %bound0735, %bound1736
  %conflict.rdx738 = or i1 %conflict.rdx734, %found.conflict737
  %bound0739 = icmp ult ptr %scevgep669, %scevgep681
  %bound1740 = icmp ult ptr %scevgep678, %scevgep671
  %found.conflict741 = and i1 %bound0739, %bound1740
  %conflict.rdx742 = or i1 %conflict.rdx738, %found.conflict741
  %bound0743 = icmp ult ptr %scevgep669, %scevgep685
  %bound1744 = icmp ult ptr %scevgep682, %scevgep671
  %found.conflict745 = and i1 %bound0743, %bound1744
  %conflict.rdx746 = or i1 %conflict.rdx742, %found.conflict745
  %bound0747 = icmp ult ptr %scevgep669, %scevgep688
  %bound1748 = icmp ult ptr %scevgep686, %scevgep671
  %found.conflict749 = and i1 %bound0747, %bound1748
  %conflict.rdx750 = or i1 %conflict.rdx746, %found.conflict749
  %bound0751 = icmp ult ptr %scevgep669, %scevgep692
  %bound1752 = icmp ult ptr %scevgep689, %scevgep671
  %found.conflict753 = and i1 %bound0751, %bound1752
  %conflict.rdx754 = or i1 %conflict.rdx750, %found.conflict753
  %bound0755 = icmp ult ptr %scevgep669, %scevgep696
  %bound1756 = icmp ult ptr %scevgep693, %scevgep671
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx758 = or i1 %conflict.rdx754, %found.conflict757
  %bound0759 = icmp ult ptr %scevgep669, %scevgep699
  %bound1760 = icmp ult ptr %scevgep697, %scevgep671
  %found.conflict761 = and i1 %bound0759, %bound1760
  %conflict.rdx762 = or i1 %conflict.rdx758, %found.conflict761
  %bound0763 = icmp ult ptr %scevgep672, %scevgep677
  %bound1764 = icmp ult ptr %scevgep675, %scevgep674
  %found.conflict765 = and i1 %bound0763, %bound1764
  %conflict.rdx766 = or i1 %conflict.rdx762, %found.conflict765
  %bound0767 = icmp ult ptr %scevgep672, %scevgep681
  %bound1768 = icmp ult ptr %scevgep678, %scevgep674
  %found.conflict769 = and i1 %bound0767, %bound1768
  %conflict.rdx770 = or i1 %conflict.rdx766, %found.conflict769
  %bound0771 = icmp ult ptr %scevgep672, %scevgep685
  %bound1772 = icmp ult ptr %scevgep682, %scevgep674
  %found.conflict773 = and i1 %bound0771, %bound1772
  %conflict.rdx774 = or i1 %conflict.rdx770, %found.conflict773
  %bound0775 = icmp ult ptr %scevgep672, %scevgep688
  %bound1776 = icmp ult ptr %scevgep686, %scevgep674
  %found.conflict777 = and i1 %bound0775, %bound1776
  %conflict.rdx778 = or i1 %conflict.rdx774, %found.conflict777
  %bound0779 = icmp ult ptr %scevgep672, %scevgep692
  %bound1780 = icmp ult ptr %scevgep689, %scevgep674
  %found.conflict781 = and i1 %bound0779, %bound1780
  %conflict.rdx782 = or i1 %conflict.rdx778, %found.conflict781
  %bound0783 = icmp ult ptr %scevgep672, %scevgep696
  %bound1784 = icmp ult ptr %scevgep693, %scevgep674
  %found.conflict785 = and i1 %bound0783, %bound1784
  %conflict.rdx786 = or i1 %conflict.rdx782, %found.conflict785
  %bound0787 = icmp ult ptr %scevgep672, %scevgep699
  %bound1788 = icmp ult ptr %scevgep697, %scevgep674
  %found.conflict789 = and i1 %bound0787, %bound1788
  %conflict.rdx790 = or i1 %conflict.rdx786, %found.conflict789
  %bound0791 = icmp ult ptr %scevgep675, %scevgep681
  %bound1792 = icmp ult ptr %scevgep678, %scevgep677
  %found.conflict793 = and i1 %bound0791, %bound1792
  %conflict.rdx794 = or i1 %conflict.rdx790, %found.conflict793
  %bound0795 = icmp ult ptr %scevgep675, %scevgep685
  %bound1796 = icmp ult ptr %scevgep682, %scevgep677
  %found.conflict797 = and i1 %bound0795, %bound1796
  %conflict.rdx798 = or i1 %conflict.rdx794, %found.conflict797
  %bound0799 = icmp ult ptr %scevgep675, %scevgep688
  %bound1800 = icmp ult ptr %scevgep686, %scevgep677
  %found.conflict801 = and i1 %bound0799, %bound1800
  %conflict.rdx802 = or i1 %conflict.rdx798, %found.conflict801
  %bound0803 = icmp ult ptr %scevgep675, %scevgep692
  %bound1804 = icmp ult ptr %scevgep689, %scevgep677
  %found.conflict805 = and i1 %bound0803, %bound1804
  %conflict.rdx806 = or i1 %conflict.rdx802, %found.conflict805
  %bound0807 = icmp ult ptr %scevgep675, %scevgep696
  %bound1808 = icmp ult ptr %scevgep693, %scevgep677
  %found.conflict809 = and i1 %bound0807, %bound1808
  %conflict.rdx810 = or i1 %conflict.rdx806, %found.conflict809
  %bound0811 = icmp ult ptr %scevgep675, %scevgep699
  %bound1812 = icmp ult ptr %scevgep697, %scevgep677
  %found.conflict813 = and i1 %bound0811, %bound1812
  %conflict.rdx814 = or i1 %conflict.rdx810, %found.conflict813
  br i1 %conflict.rdx814, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check815, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.pt = trunc i64 %index to i32                 ; 20 uses
  %i.pu = shl i32 %i.pt, 1                        ; 5 uses
  %i.pv = shl i32 %i.pt, 1                        ; 2 uses
  %i.pw = or disjoint i32 %i.pv, 2                ; 4 uses
  %i.px = shl i32 %i.pt, 1                        ; 2 uses
  %i.py = or disjoint i32 %i.px, 4                ; 4 uses
  %i.pz = shl i32 %i.pt, 1                        ; 2 uses
  %i.qa = or disjoint i32 %i.pz, 6                ; 4 uses
  %i.qb = shl i32 %i.pt, 1                        ; 2 uses
  %i.qc = or disjoint i32 %i.qb, 8                ; 4 uses
  %i.qd = shl i32 %i.pt, 1                        ; 2 uses
  %i.qe = or disjoint i32 %i.qd, 10               ; 4 uses
  %i.qf = shl i32 %i.pt, 1                        ; 2 uses
  %i.qg = or disjoint i32 %i.qf, 12               ; 4 uses
  %i.qh = shl i32 %i.pt, 1                        ; 2 uses
  %i.qi = or disjoint i32 %i.qh, 14               ; 4 uses
  %i.qj = shl i32 %i.pt, 1                        ; 2 uses
  %i.qk = or disjoint i32 %i.qj, 16               ; 4 uses
  %i.ql = shl i32 %i.pt, 1                        ; 2 uses
  %i.qm = or disjoint i32 %i.ql, 18               ; 4 uses
  %i.qn = shl i32 %i.pt, 1                        ; 2 uses
  %i.qo = or disjoint i32 %i.qn, 20               ; 4 uses
  %i.qp = shl i32 %i.pt, 1                        ; 2 uses
  %i.qq = or disjoint i32 %i.qp, 22               ; 4 uses
  %i.qr = shl i32 %i.pt, 1                        ; 2 uses
  %i.qs = or disjoint i32 %i.qr, 24               ; 4 uses
  %i.qt = shl i32 %i.pt, 1                        ; 2 uses
  %i.qu = or disjoint i32 %i.qt, 26               ; 4 uses
  %i.qv = shl i32 %i.pt, 1                        ; 2 uses
  %i.qw = or disjoint i32 %i.qv, 28               ; 4 uses
  %i.qx = shl i32 %i.pt, 1                        ; 2 uses
  %i.qy = or disjoint i32 %i.qx, 30               ; 4 uses
  %i.qz = add i32 %i.nt, %i.pu
  %i.ra = add i32 %i.nt, %i.pw
  %i.rb = add i32 %i.nt, %i.py
  %i.rc = add i32 %i.nt, %i.qa
  %i.rd = add i32 %i.nt, %i.qc
  %i.re = add i32 %i.nt, %i.qe
  %i.rf = add i32 %i.nt, %i.qg
  %i.rg = add i32 %i.nt, %i.qi
  %i.rh = add i32 %i.nt, %i.qk
  %i.ri = add i32 %i.nt, %i.qm
  %i.rj = add i32 %i.nt, %i.qo
  %i.rk = add i32 %i.nt, %i.qq
  %i.rl = add i32 %i.nt, %i.qs
  %i.rm = add i32 %i.nt, %i.qu
  %i.rn = add i32 %i.nt, %i.qw
  %i.ro = add i32 %i.nt, %i.qy
  %i.rp = zext i32 %i.qz to i64
  %i.rq = zext i32 %i.ra to i64
  %i.rr = zext i32 %i.rb to i64
  %i.rs = zext i32 %i.rc to i64
end_hunk_0
