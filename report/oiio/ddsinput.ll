inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.pre.i.i250 = phi i64 [ %.pre.i.i250.pre, %bb.ai ], [ %i.jl, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1173 ] ; 2 uses
  %.pre2.i.i251 = add i64 %.pre.i.i250, 1
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248: ; preds = %.noexc252, %bb.ag
  %i.kr = phi ptr [ %i.jp, %bb.ag ], [ %.pre, %.noexc252 ]
  %.pre-phi.i.i249 = phi i64 [ %i.kk, %bb.ag ], [ %.pre2.i.i251, %.noexc252 ]
  %i.ks = phi i64 [ %i.jl, %bb.ag ], [ %.pre.i.i250, %.noexc252 ]
  store i64 %.pre-phi.i.i249, ptr %i.c, align 8, !tbaa !508
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ks
  store i32 %.lcssa1487, ptr %i.kt, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit253

_ZN3fmt3v126detail6bigintlSEi.exit253:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, %._crit_edge.i246
  %i.ku = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.ku)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit253
  %i.kv = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.kw = lshr i32 %i.kv, 5
  %i.kx = load i32, ptr %i.j, align 8, !tbaa !500
  %i.ky = add nsw i32 %i.kx, %i.kw
  store i32 %i.ky, ptr %i.j, align 8, !tbaa !500
  %i.kz = and i32 %i.kv, 31                       ; 4 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lb = load i64, ptr %i.h, align 8, !tbaa !508 ; 7 uses
  %.not19.i254 = icmp eq i64 %i.lb, 0
  br i1 %.not19.i254, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.ak
  %i.lc = load ptr, ptr %6, align 8, !tbaa !498   ; 3 uses
  %i.ld = sub nuw nsw i32 32, %i.kz               ; 2 uses
  %min.iters.check1499 = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check1499, label %scalar.ph1498.preheader, label %vector.ph1500

vector.ph1500:                                    ; preds = %.lr.ph.i255
  %n.vec1501 = and i64 %i.lb, -8                  ; 3 uses
  %broadcast.splatinsert1502 = insertelement <4 x i32> poison, i32 %i.ld, i64 0
  %broadcast.splat1503 = shufflevector <4 x i32> %broadcast.splatinsert1502, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1504 = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat1505 = shufflevector <4 x i32> %broadcast.splatinsert1504, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1500
  %index1507 = phi i64 [ 0, %vector.ph1500 ], [ %index.next1511, %vector.body1506 ] ; 2 uses
  %vector.recur1508 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1500 ], [ %i.lh, %vector.body1506 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index1507 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %wide.load1509 = load <4 x i32>, ptr %i.le, align 4, !tbaa !3 ; 2 uses
  %wide.load1510 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !3 ; 2 uses
  %i.lg = lshr <4 x i32> %wide.load1509, %broadcast.splat1503 ; 2 uses
  %i.lh = lshr <4 x i32> %wide.load1510, %broadcast.splat1503 ; 3 uses
  %i.li = shufflevector <4 x i32> %vector.recur1508, <4 x i32> %i.lg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lj = shufflevector <4 x i32> %i.lg, <4 x i32> %i.lh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lk = shl <4 x i32> %wide.load1509, %broadcast.splat1505
  %i.ll = shl <4 x i32> %wide.load1510, %broadcast.splat1505
  %i.lm = add <4 x i32> %i.lk, %i.li
  %i.ln = add <4 x i32> %i.ll, %i.lj
  store <4 x i32> %i.lm, ptr %i.le, align 4, !tbaa !3
  store <4 x i32> %i.ln, ptr %i.lf, align 4, !tbaa !3
  %index.next1511 = add nuw i64 %index1507, 8     ; 2 uses
  %i.lo = icmp eq i64 %index.next1511, %n.vec1501
  br i1 %i.lo, label %middle.block1512, label %vector.body1506, !llvm.loop !529

middle.block1512:                                 ; preds = %vector.body1506
  %vector.recur.extract1513 = extractelement <4 x i32> %i.lh, i64 3 ; 2 uses
  %cmp.n1514 = icmp eq i64 %i.lb, %n.vec1501
  br i1 %cmp.n1514, label %._crit_edge.i259, label %scalar.ph1498.preheader

scalar.ph1498.preheader:                          ; preds = %.lr.ph.i255, %middle.block1512
  %.01418.i256.ph = phi i64 [ 0, %.lr.ph.i255 ], [ %n.vec1501, %middle.block1512 ]
  %.017.i257.ph = phi i32 [ 0, %.lr.ph.i255 ], [ %vector.recur.extract1513, %middle.block1512 ]
  br label %scalar.ph1498

._crit_edge.i259:                                 ; preds = %scalar.ph1498, %middle.block1512
  %.lcssa1486 = phi i32 [ %vector.recur.extract1513, %middle.block1512 ], [ %i.lr, %scalar.ph1498 ] ; 2 uses
  %.not.i260 = icmp eq i32 %.lcssa1486, 0
  br i1 %.not.i260, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.al

scalar.ph1498:                                    ; preds = %scalar.ph1498.preheader, %scalar.ph1498
  %.01418.i256 = phi i64 [ %i.lu, %scalar.ph1498 ], [ %.01418.i256.ph, %scalar.ph1498.preheader ] ; 2 uses
  %.017.i257 = phi i32 [ %i.lr, %scalar.ph1498 ], [ %.017.i257.ph, %scalar.ph1498.preheader ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.01418.i256 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3  ; 2 uses
  %i.lr = lshr i32 %i.lq, %i.ld                   ; 2 uses
  %i.ls = shl i32 %i.lq, %i.kz
  %i.lt = add i32 %i.ls, %.017.i257
  store i32 %i.lt, ptr %i.lp, align 4, !tbaa !3
  %i.lu = add nuw i64 %.01418.i256, 1             ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.lu, %i.lb
  br i1 %exitcond.not.i258, label %._crit_edge.i259, label %scalar.ph1498, !llvm.loop !530

bb.al:                                            ; preds = %._crit_edge.i259
  %i.lv = add i64 %i.lb, 1                        ; 3 uses
  %i.lw = load i64, ptr %i.f, align 8, !tbaa !499
  %i.lx = icmp ugt i64 %i.lv, %i.lw
  br i1 %i.lx, label %bb.am, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

bb.am:                                            ; preds = %bb.al
  %i.ly = load ptr, ptr %i.g, align 8, !tbaa !496
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.lv)
          to label %.noexc265 unwind label %.loopexit.split-lp, !inline_history !513

.noexc265:                                        ; preds = %bb.am
  %.pre.i.i263 = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i264 = add i64 %.pre.i.i263, 1
  %.pre677 = load ptr, ptr %6, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261: ; preds = %.noexc265, %bb.al
  %i.lz = phi ptr [ %i.lc, %bb.al ], [ %.pre677, %.noexc265 ]
  %.pre-phi.i.i262 = phi i64 [ %i.lv, %bb.al ], [ %.pre2.i.i264, %.noexc265 ]
  %i.ma = phi i64 [ %i.lb, %bb.al ], [ %.pre.i.i263, %.noexc265 ]
  store i64 %.pre-phi.i.i262, ptr %i.h, align 8, !tbaa !508
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  store i32 %.lcssa1486, ptr %i.mb, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit266

_ZN3fmt3v126detail6bigintlSEi.exit266:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261, %._crit_edge.i259, %bb.ak, %bb.aj
  %i.mc = load ptr, ptr %7, align 8, !tbaa !498
  store i32 1, ptr %i.mc, align 4, !tbaa !3
  %i.md = load i64, ptr %i.k, align 8, !tbaa !499
  %.not8.i.i270.not = icmp eq i64 %i.md, 0
  br i1 %.not8.i.i270.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.me = load ptr, ptr %i.l, align 8, !tbaa !496
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp, !inline_history !526

.noexc272:                                        ; preds = %bb.an
  %.pre.i.i.i.i271 = load i64, ptr %i.k, align 8, !tbaa !499
  %i.mf = icmp ne i64 %.pre.i.i.i.i271, 0
  %i.mg = zext i1 %i.mf to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc272, %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.mh = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit266 ], [ %i.mg, %.noexc272 ]
  store i64 %i.mh, ptr %i.m, align 8, !tbaa !508
  store i32 0, ptr %i.o, align 8, !tbaa !500
  %extract.t816 = trunc i128 %i.jj to i32         ; 2 uses
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mi = load ptr, ptr %8, align 8, !tbaa !498
  store i32 2, ptr %i.mi, align 4, !tbaa !3
  %i.mj = load i64, ptr %i.p, align 8, !tbaa !499
  %.not8.i.i277.not = icmp eq i64 %i.mj, 0
  br i1 %.not8.i.i277.not, label %bb.aq, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.mk = load ptr, ptr %i.q, align 8, !tbaa !496
  invoke void %i.mk(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc279 unwind label %.loopexit.split-lp, !inline_history !531

.noexc279:                                        ; preds = %bb.aq
  %.pre.i.i.i.i278 = load i64, ptr %i.p, align 8, !tbaa !499
  %i.ml = icmp ne i64 %.pre.i.i.i.i278, 0
  %i.mm = zext i1 %i.ml to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.ap, %.noexc279
  %i.mn = phi i64 [ 1, %bb.ap ], [ %i.mm, %.noexc279 ]
  store i64 %i.mn, ptr %i.r, align 8, !tbaa !508
  store i32 0, ptr %i.t, align 8, !tbaa !500
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t816, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t818, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t816, %bb.ao ], [ %extract.t820, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t818, %bb.k ], [ %extract.t818, %._crit_edge.i161 ], [ %extract.t820, %bb.y ], [ %extract.t820, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.k ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.y ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.mo = and i32 %.off0, 1                       ; 2 uses
  %i.mp = xor i32 %i.mo, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.mq = icmp slt i32 %2, 0                      ; 2 uses
  %i.mr = and i32 %1, 2
  %.not98 = icmp eq i32 %i.mr, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.ms = load i64, ptr %i.c, align 8, !tbaa !508 ; 8 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = load i32, ptr %i.e, align 8, !tbaa !500 ; 3 uses
  %i.mv = add nsw i32 %i.mu, %i.mt                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep
  %i.mw = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !508
  %i.mx = trunc i64 %i.mw to i32
  %.2.sroa.gep501 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel502 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep501
  %i.my = load i32, ptr %spec.store.select.sroa.sel502, align 8, !tbaa !500 ; 3 uses
  %i.mz = add nsw i32 %i.my, %i.mx                ; 2 uses
  %i.na = call noundef i32 @llvm.smax.i32(i32 %i.mv, i32 %i.mz) ; 2 uses
  %i.nb = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = load i32, ptr %i.j, align 8, !tbaa !500 ; 3 uses
  %i.ne = add nsw i32 %i.nd, %i.nc                ; 4 uses
  %i.nf = add nsw i32 %i.na, 1
  %i.ng = icmp slt i32 %i.nf, %i.ne
  br i1 %i.ng, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nh = icmp sgt i32 %i.na, %i.ne
  br i1 %i.nh, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ni = call noundef i32 @llvm.smin.i32(i32 %i.mu, i32 %i.my)
  %i.nj = call noundef i32 @llvm.smin.i32(i32 %i.ni, i32 %i.nd) ; 2 uses
  %.not.not.not53.i = icmp sgt i32 %i.ne, %i.nj
  br i1 %.not.not.not53.i, label %.lr.ph.i280, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i280:                                      ; preds = %bb.at
  %i.nk = load ptr, ptr %5, align 8
  %i.nl = load ptr, ptr %spec.store.select, align 8
  %i.nm = load ptr, ptr %6, align 8
  %i.nn = sext i32 %i.nd to i64                   ; 3 uses
  %sext.i = shl i64 %i.nb, 32
  %i.no = ashr exact i64 %sext.i, 32
  %i.np = add nsw i64 %i.no, %i.nn
  %9 = sext i32 %i.ne to i64
  %i.nq = sext i32 %i.mz to i64
  %i.nr = sext i32 %i.my to i64                   ; 2 uses
  %i.ns = sext i32 %i.mv to i64
  %i.nt = sext i32 %i.mu to i64                   ; 2 uses
  %i.nu = sext i32 %i.nj to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.az, %.lr.ph.i280
  %indvars.iv.i = phi i64 [ %i.np, %.lr.ph.i280 ], [ %indvars.iv.next.i, %bb.az ] ; 7 uses
  %.03254.i = phi i64 [ 0, %.lr.ph.i280 ], [ %i.or, %bb.az ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %.not.i.i281 = icmp sgt i64 %indvars.iv.i, %i.nt
  %i.nv = icmp sle i64 %indvars.iv.i, %i.ns
  %or.cond.i = and i1 %.not.i.i281, %i.nv
  br i1 %or.cond.i, label %bb.av, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

bb.av:                                            ; preds = %bb.au
  %i.nw = sub nsw i64 %indvars.iv.next.i, %i.nt
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.nz = zext i32 %i.ny to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i:    ; preds = %bb.av, %bb.au
  %i.oa = phi i64 [ %i.nz, %bb.av ], [ 0, %bb.au ]
  %.not.i43.i = icmp sgt i64 %indvars.iv.i, %i.nr
  %i.ob = icmp sle i64 %indvars.iv.i, %i.nq
  %or.cond50.i = and i1 %.not.i43.i, %i.ob
  br i1 %or.cond50.i, label %bb.aw, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

bb.aw:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.oc = sub nsw i64 %indvars.iv.next.i, %i.nr
  %i.od = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !3
  %i.of = zext i32 %i.oe to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i:  ; preds = %bb.aw, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.og = phi i64 [ %i.of, %bb.aw ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i ]
  %i.oh = add nuw nsw i64 %i.og, %i.oa            ; 3 uses
  %.not.i45.i = icmp sgt i64 %indvars.iv.i, %i.nn
  %10 = icmp sle i64 %indvars.iv.i, %9
  %or.cond51.i = and i1 %.not.i45.i, %10
  br i1 %or.cond51.i, label %bb.ax, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

bb.ax:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.oi = sub nsw i64 %indvars.iv.next.i, %i.nn
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !3
  %i.ol = zext i32 %i.ok to i64
  %i.om = or disjoint i64 %.03254.i, %i.ol
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i:  ; preds = %bb.ax, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.on = phi i64 [ %i.om, %bb.ax ], [ %.03254.i, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i ] ; 3 uses
  %i.oo = icmp ugt i64 %i.oh, %i.on
  br i1 %i.oo, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i
  %i.op = sub nuw nsw i64 %i.on, %i.oh            ; 2 uses
  %i.oq = icmp ugt i64 %i.op, 1
  br i1 %i.oq, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.or = shl nuw nsw i64 %i.op, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.nu
  br i1 %.not.not.not.i, label %bb.au, label %.thread.loopexit.i, !llvm.loop !532

.thread.loopexit.i:                               ; preds = %bb.az
  %i.os = icmp ne i64 %i.on, %i.oh
  %i.ot = sext i1 %i.os to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.ay, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i, %.thread.loopexit.i, %bb.at, %bb.as, %bb.ar
  %.4.i = phi i32 [ 1, %bb.as ], [ -1, %bb.ar ], [ 0, %bb.at ], [ %i.ot, %.thread.loopexit.i ], [ -1, %bb.ay ], [ 1, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i ]
  %i.ou = add nsw i32 %.4.i, %i.mp
  %i.ov = icmp slt i32 %i.ou, 1
  br i1 %i.ov, label %bb.ba, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.ba:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.ow = load i32, ptr %4, align 4, !tbaa !3
  %i.ox = add nsw i32 %i.ow, -1
  store i32 %i.ox, ptr %4, align 4, !tbaa !3
  %.not14.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.ba
  %i.oy = load ptr, ptr %5, align 8, !tbaa !498   ; 4 uses
  %xtraiter = and i64 %i.ms, 1
  %i.oz = icmp eq i64 %i.ms, 1
  br i1 %i.oz, label %.epil.preheader, label %.lr.ph.i.i282.new

.lr.ph.i.i282.new:                                ; preds = %.lr.ph.i.i282
  %unroll_iter = and i64 %i.ms, -2
  br label %bb.bb

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i282
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.px, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.pw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1678 = trunc i64 %i.ms to i1
  call void @llvm.assume(i1 %lcmp.mod1678)
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.013.i.i.epil.init ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3
  %i.pc = zext i32 %i.pb to i64
  %i.pd = mul nuw nsw i64 %i.pc, 10
  %i.pe = add nuw nsw i64 %i.pd, %.01112.i.i.epil.init ; 2 uses
  %i.pf = trunc i64 %i.pe to i32
  store i32 %i.pf, ptr %i.pa, align 4, !tbaa !3
  %i.pg = lshr i64 %i.pe, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1654 = phi i64 [ %i.pw, %._crit_edge.i.i.unr-lcssa ], [ %i.pg, %.epil.preheader ] ; 2 uses
  %i.ph = trunc nuw nsw i64 %.lcssa1654 to i32
  %.not.i.i284 = icmp eq i64 %.lcssa1654, 0
  br i1 %.not.i.i284, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i282.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.px, %bb.bb ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.pw, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %niter.next.1, %bb.bb ]
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.013.i.i ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  %i.pk = zext i32 %i.pj to i64
  %i.pl = mul nuw nsw i64 %i.pk, 10
  %i.pm = add nuw nsw i64 %i.pl, %.01112.i.i      ; 2 uses
  %i.pn = trunc i64 %i.pm to i32
  store i32 %i.pn, ptr %i.pi, align 4, !tbaa !3
  %i.po = lshr i64 %i.pm, 32
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %.013.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 4 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  %i.ps = zext i32 %i.pr to i64
  %i.pt = mul nuw nsw i64 %i.ps, 10
  %i.pu = add nuw nsw i64 %i.pt, %i.po            ; 2 uses
  %i.pv = trunc i64 %i.pu to i32
  store i32 %i.pv, ptr %i.pq, align 4, !tbaa !3
  %i.pw = lshr i64 %i.pu, 32                      ; 3 uses
  %i.px = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bb, !llvm.loop !533

bb.bc:                                            ; preds = %._crit_edge.i.i
  %i.py = add i64 %i.ms, 1                        ; 3 uses
  %i.pz = load i64, ptr %i.a, align 8, !tbaa !499
  %i.qa = icmp ugt i64 %i.py, %i.pz
  br i1 %i.qa, label %bb.bd, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

bb.bd:                                            ; preds = %bb.bc
  %i.qb = load ptr, ptr %i.b, align 8, !tbaa !496
  invoke void %i.qb(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.py)
          to label %.noexc290 unwind label %bb.bm, !inline_history !534

.noexc290:                                        ; preds = %bb.bd
  %.pre.i.i.i287 = load i64, ptr %i.c, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i288 = add i64 %.pre.i.i.i287, 1
  %.pre.i289 = load ptr, ptr %5, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285: ; preds = %.noexc290, %bb.bc
  %i.qc = phi ptr [ %i.oy, %bb.bc ], [ %.pre.i289, %.noexc290 ]
  %.pre-phi.i.i.i286 = phi i64 [ %i.py, %bb.bc ], [ %.pre2.i.i.i288, %.noexc290 ]
  %i.qd = phi i64 [ %i.ms, %bb.bc ], [ %.pre.i.i.i287, %.noexc290 ]
  store i64 %.pre-phi.i.i.i286, ptr %i.c, align 8, !tbaa !508
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qd
  store i32 %i.ph, ptr %i.qe, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285, %._crit_edge.i.i, %bb.ba
  br i1 %i.mq, label %bb.be, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.be:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %i.qf = load i64, ptr %i.m, align 8, !tbaa !508 ; 7 uses
  %.not14.i.i291 = icmp eq i64 %i.qf, 0
  br i1 %.not14.i.i291, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %bb.be
  %i.qg = load ptr, ptr %7, align 8, !tbaa !498   ; 4 uses
  %xtraiter1680 = and i64 %i.qf, 1
  %i.qh = icmp eq i64 %i.qf, 1
  br i1 %i.qh, label %.epil.preheader1679, label %.lr.ph.i.i292.new

.lr.ph.i.i292.new:                                ; preds = %.lr.ph.i.i292
  %unroll_iter1684 = and i64 %i.qf, -2
  br label %bb.bf

._crit_edge.i.i296.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod1681.not = icmp eq i64 %xtraiter1680, 0
  br i1 %lcmp.mod1681.not, label %._crit_edge.i.i296, label %.epil.preheader1679

.epil.preheader1679:                              ; preds = %._crit_edge.i.i296.unr-lcssa, %.lr.ph.i.i292
  %.013.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.rf, %._crit_edge.i.i296.unr-lcssa ]
  %.01112.i.i294.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.re, %._crit_edge.i.i296.unr-lcssa ]
  %lcmp.mod1683 = trunc i64 %i.qf to i1
  call void @llvm.assume(i1 %lcmp.mod1683)
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i293.epil.init ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !3
  %i.qk = zext i32 %i.qj to i64
  %i.ql = mul nuw nsw i64 %i.qk, 10
  %i.qm = add nuw nsw i64 %i.ql, %.01112.i.i294.epil.init ; 2 uses
  %i.qn = trunc i64 %i.qm to i32
  store i32 %i.qn, ptr %i.qi, align 4, !tbaa !3
  %i.qo = lshr i64 %i.qm, 32
  br label %._crit_edge.i.i296

._crit_edge.i.i296:                               ; preds = %._crit_edge.i.i296.unr-lcssa, %.epil.preheader1679
  %.lcssa1653 = phi i64 [ %i.re, %._crit_edge.i.i296.unr-lcssa ], [ %i.qo, %.epil.preheader1679 ] ; 2 uses
  %i.qp = trunc nuw nsw i64 %.lcssa1653 to i32
  %.not.i.i297 = icmp eq i64 %.lcssa1653, 0
  br i1 %.not.i.i297, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %bb.bg

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rf, %bb.bf ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.re, %bb.bf ]
  %niter1685 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1685.next.1, %bb.bf ]
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i293 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw nsw i64 %i.qs, 10
  %i.qu = add nuw nsw i64 %i.qt, %.01112.i.i294   ; 2 uses
  %i.qv = trunc i64 %i.qu to i32
  store i32 %i.qv, ptr %i.qq, align 4, !tbaa !3
  %i.qw = lshr i64 %i.qu, 32
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %.013.i.i293
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 4 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.ra = zext i32 %i.qz to i64
  %i.rb = mul nuw nsw i64 %i.ra, 10
  %i.rc = add nuw nsw i64 %i.rb, %i.qw            ; 2 uses
  %i.rd = trunc i64 %i.rc to i32
  store i32 %i.rd, ptr %i.qy, align 4, !tbaa !3
  %i.re = lshr i64 %i.rc, 32                      ; 3 uses
  %i.rf = add nuw i64 %.013.i.i293, 2             ; 2 uses
  %niter1685.next.1 = add nuw i64 %niter1685, 2   ; 2 uses
  %niter1685.ncmp.1 = icmp eq i64 %niter1685.next.1, %unroll_iter1684
  br i1 %niter1685.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bf, !llvm.loop !533

bb.bg:                                            ; preds = %._crit_edge.i.i296
  %i.rg = add i64 %i.qf, 1                        ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.rw = lshr i64 %i.ru, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1686
  %.lcssa1652 = phi i64 [ %i.sm, %._crit_edge.i.i310.unr-lcssa ], [ %i.rw, %.epil.preheader1686 ] ; 2 uses
  %i.rx = trunc nuw nsw i64 %.lcssa1652 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1652, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %bb.bk

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.sn, %bb.bj ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.sm, %bb.bj ]
  %niter1692 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1692.next.1, %bb.bj ]
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %.013.i.i307 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !3
  %i.sa = zext i32 %i.rz to i64
  %i.sb = mul nuw nsw i64 %i.sa, 10
  %i.sc = add nuw nsw i64 %i.sb, %.01112.i.i308   ; 2 uses
  %i.sd = trunc i64 %i.sc to i32
  store i32 %i.sd, ptr %i.ry, align 4, !tbaa !3
  %i.se = lshr i64 %i.sc, 32
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %.013.i.i307
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  %i.si = zext i32 %i.sh to i64
  %i.sj = mul nuw nsw i64 %i.si, 10
  %i.sk = add nuw nsw i64 %i.sj, %i.se            ; 2 uses
  %i.sl = trunc i64 %i.sk to i32
  store i32 %i.sl, ptr %i.sg, align 4, !tbaa !3
  %i.sm = lshr i64 %i.sk, 32                      ; 3 uses
  %i.sn = add nuw i64 %.013.i.i307, 2             ; 2 uses
  %niter1692.next.1 = add nuw i64 %niter1692, 2   ; 2 uses
  %niter1692.ncmp.1 = icmp eq i64 %niter1692.next.1, %unroll_iter1691
  br i1 %niter1692.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bj, !llvm.loop !533

bb.bk:                                            ; preds = %._crit_edge.i.i310
  %i.so = add i64 %i.rn, 1                        ; 3 uses
  %.2.sroa.gep507 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.sp = load i64, ptr %.2.sroa.gep507, align 8, !tbaa !499
  %i.sq = icmp ugt i64 %i.so, %i.sp
  br i1 %i.sq, label %bb.bl, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

bb.bl:                                            ; preds = %bb.bk
  %.2.sroa.gep510 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.sr = load ptr, ptr %.2.sroa.gep510, align 8, !tbaa !496
  invoke void %i.sr(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.so)
          to label %.noexc317 unwind label %bb.bm, !inline_history !534

.noexc317:                                        ; preds = %bb.bl
  %.pre.i.i.i314 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.2, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bk
  %i.ss = phi ptr [ %i.ro, %bb.bk ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.so, %bb.bk ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.st = phi i64 [ %i.rn, %bb.bk ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.2.sroa.gep, align 8, !tbaa !508
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.st
  store i32 %i.rx, ptr %i.su, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.bm:                                            ; preds = %bb.du, %bb.bp, %bb.bl, %bb.bh, %bb.bd
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bi, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.sw = and i32 %1, 4
  %.not99 = icmp eq i32 %i.sw, 0
  br i1 %.not99, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318
  %i.sx = load i32, ptr %4, align 4, !tbaa !3     ; 3 uses
  %i.sy = icmp sgt i32 %i.sx, -1
  %i.sz = sub nsw i32 2147483646, %i.sx
  %i.ta = icmp sgt i32 %2, %i.sz
  %or.cond.i320 = select i1 %i.sy, i1 %i.ta, i1 false
  br i1 %or.cond.i320, label %bb.bo, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.bo:                                            ; preds = %bb.bn
  %i.tb = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, ptr noundef nonnull @.str.62)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %i.tb, align 8, !tbaa !34
  invoke void @__cxa_throw(ptr nonnull %i.tb, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %.noexc321 unwind label %bb.bm

.noexc321:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.tc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tb) #34
  br label %.body

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.bn
  %i.td = add i32 %2, 1
  %i.te = add i32 %i.td, %i.sx
  br label %bb.br

bb.br:                                            ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v126detail6bigintlSEi.exit168
  %.0542 = phi i32 [ %2, %_ZN3fmt3v126detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318 ], [ %i.te, %_ZN3fmt3v126detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.mq, label %bb.bs, label %bb.de

bb.bs:                                            ; preds = %bb.br
  %i.tf = load ptr, ptr %3, align 8, !tbaa !230   ; 3 uses
  %.2.sroa.gep513 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel514 = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep513
  %.2.sroa.gep516 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel517 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep516
  %i.tg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep522 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep525 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bs
  %indvars.iv673 = phi i64 [ 0, %bb.bs ], [ %indvars.iv673.be, %.backedge.backedge ] ; 7 uses
  %i.tj = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bt unwind label %bb.ch     ; 3 uses

bb.bt:                                            ; preds = %.backedge
  %i.tk = load i64, ptr %i.c, align 8, !tbaa !508 ; 2 uses
  %i.tl = trunc i64 %i.tk to i32                  ; 2 uses
  %i.tm = load i32, ptr %i.e, align 8, !tbaa !500 ; 3 uses
  %i.tn = add nsw i32 %i.tm, %i.tl                ; 4 uses
  %i.to = load i64, ptr %i.m, align 8, !tbaa !508 ; 2 uses
  %i.tp = trunc i64 %i.to to i32                  ; 2 uses
  %i.tq = load i32, ptr %i.o, align 8, !tbaa !500
  %i.tr = add nsw i32 %i.tq, %i.tp                ; 2 uses
  %.not.i322 = icmp eq i32 %i.tn, %i.tr
  br i1 %.not.i322, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ts = icmp sgt i32 %i.tn, %i.tr
  %i.tt = select i1 %i.ts, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.tu = sub nsw i32 %i.tl, %i.tp
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.tu, i32 0)
  %i.tv = load ptr, ptr %5, align 8
  %i.tw = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.tk, 32
  %i.tx = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ty = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.to, 32
  %i.tz = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.tx, i64 %i.ty) ; 2 uses
  %.not35.not.i1489 = icmp sgt i64 %i.tx, %i.ty
  br i1 %.not35.not.i1489, label %.lr.ph1493, label %._crit_edge1494

bb.bw:                                            ; preds = %.lr.ph1493
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ty
  br i1 %.not35.not.i, label %.lr.ph1493, label %._crit_edge1494, !llvm.loop !535

.lr.ph1493:                                       ; preds = %bb.bv, %bb.bw
  %indvars.iv.i3241491 = phi i64 [ %indvars.iv.next.i325, %bb.bw ], [ %i.tx, %bb.bv ]
  %indvars.iv45.i1490 = phi i64 [ %indvars.iv.next46.i, %bb.bw ], [ %i.tz, %bb.bv ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241491, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1490, -1 ; 3 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv.next.i325
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !3  ; 2 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %indvars.iv.next46.i
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !3  ; 2 uses
  %.not37.i = icmp eq i32 %i.ub, %i.ud
  br i1 %.not37.i, label %bb.bw, label %.loopexit.i, !llvm.loop !535

._crit_edge1494:                                  ; preds = %bb.bw, %bb.bv
  %indvars.iv45.i.lcssa = phi i64 [ %i.tz, %bb.bv ], [ %indvars.iv.next46.i, %bb.bw ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge1494
  %i.ue = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.uf = select i1 %i.ue, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1493
  %i.ug = icmp ugt i32 %i.ub, %i.ud
  %i.uh = select i1 %i.ug, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bu, %._crit_edge1494, %bb.bx, %.loopexit.i
  %.3.i = phi i32 [ %i.tt, %bb.bu ], [ 0, %._crit_edge1494 ], [ %i.uf, %bb.bx ], [ %i.uh, %.loopexit.i ]
  %i.ui = icmp sge i32 %.3.i, %i.mp               ; 3 uses
  %i.uj = load i64, ptr %spec.store.select.sroa.sel514, align 8, !tbaa !508
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = load i32, ptr %spec.store.select.sroa.sel517, align 8, !tbaa !500 ; 3 uses
  %i.um = add nsw i32 %i.ul, %i.uk                ; 2 uses
  %i.un = call noundef i32 @llvm.smax.i32(i32 %i.tn, i32 %i.um) ; 2 uses
  %i.uo = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %i.up = trunc i64 %i.uo to i32
  %i.uq = load i32, ptr %i.j, align 8, !tbaa !500 ; 3 uses
  %i.ur = add nsw i32 %i.uq, %i.up                ; 4 uses
  %i.us = add nsw i32 %i.un, 1
  %i.ut = icmp slt i32 %i.us, %i.ur
  br i1 %i.ut, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344, label %bb.by

bb.by:                                            ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %i.uu = icmp sgt i32 %i.un, %i.ur
  br i1 %i.uu, label %.thread835, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.uv = call noundef i32 @llvm.smin.i32(i32 %i.tm, i32 %i.ul)
  %i.uw = call noundef i32 @llvm.smin.i32(i32 %i.uv, i32 %i.uq) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.ur, %i.uw
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344

.lr.ph.i328:                                      ; preds = %bb.bz
  %i.ux = load ptr, ptr %5, align 8
  %i.uy = load ptr, ptr %spec.store.select, align 8
  %i.uz = load ptr, ptr %6, align 8
  %i.va = sext i32 %i.uq to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.uo, 32
  %i.vb = ashr exact i64 %sext.i329, 32
  %i.vc = add nsw i64 %i.vb, %i.va
  %11 = sext i32 %i.ur to i64
  %i.vd = sext i32 %i.um to i64
  %i.ve = sext i32 %i.ul to i64                   ; 2 uses
  %i.vf = sext i32 %i.tn to i64
  %i.vg = sext i32 %i.tm to i64                   ; 2 uses
  %i.vh = sext i32 %i.uw to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cf, %.lr.ph.i328
  %indvars.iv.i330 = phi i64 [ %i.vc, %.lr.ph.i328 ], [ %indvars.iv.next.i332, %bb.cf ] ; 7 uses
  %.03254.i331 = phi i64 [ 0, %.lr.ph.i328 ], [ %i.we, %bb.cf ] ; 2 uses
  %indvars.iv.next.i332 = add nsw i64 %indvars.iv.i330, -1 ; 5 uses
  %.not.i.i333 = icmp sgt i64 %indvars.iv.i330, %i.vg
  %i.vi = icmp sle i64 %indvars.iv.i330, %i.vf
  %or.cond.i334 = and i1 %.not.i.i333, %i.vi
  br i1 %or.cond.i334, label %bb.cb, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335

bb.cb:                                            ; preds = %bb.ca
  %i.vj = sub nsw i64 %indvars.iv.next.i332, %i.vg
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !3
  %i.vm = zext i32 %i.vl to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335: ; preds = %bb.cb, %bb.ca
  %i.vn = phi i64 [ %i.vm, %bb.cb ], [ 0, %bb.ca ]
  %.not.i43.i336 = icmp sgt i64 %indvars.iv.i330, %i.ve
  %i.vo = icmp sle i64 %indvars.iv.i330, %i.vd
  %or.cond50.i337 = and i1 %.not.i43.i336, %i.vo
  br i1 %or.cond50.i337, label %bb.cc, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338

bb.cc:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335
  %i.vp = sub nsw i64 %indvars.iv.next.i332, %i.ve
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vs = zext i32 %i.vr to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338: ; preds = %bb.cc, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335
  %i.vt = phi i64 [ %i.vs, %bb.cc ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i335 ]
  %i.vu = add nuw nsw i64 %i.vt, %i.vn            ; 3 uses
  %.not.i45.i339 = icmp sgt i64 %indvars.iv.i330, %i.va
  %12 = icmp sle i64 %indvars.iv.i330, %11
  %or.cond51.i340 = and i1 %.not.i45.i339, %12
  br i1 %or.cond51.i340, label %bb.cd, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i341

bb.cd:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338
  %i.vv = sub nsw i64 %indvars.iv.next.i332, %i.va
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !3
  %i.vy = zext i32 %i.vx to i64
  %i.vz = or disjoint i64 %.03254.i331, %i.vy
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i341

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i341: ; preds = %bb.cd, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338
  %i.wa = phi i64 [ %i.vz, %bb.cd ], [ %.03254.i331, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i338 ] ; 3 uses
  %i.wb = icmp ugt i64 %i.vu, %i.wa
  br i1 %i.wb, label %.thread835, label %bb.ce

bb.ce:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i341
  %i.wc = sub nuw nsw i64 %i.wa, %i.vu            ; 2 uses
  %i.wd = icmp ugt i64 %i.wc, 1
  br i1 %i.wd, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.we = shl nuw nsw i64 %i.wc, 32
  %.not.not.not.i342 = icmp sgt i64 %indvars.iv.next.i332, %i.vh
  br i1 %.not.not.not.i342, label %bb.ca, label %.thread.loopexit.i343, !llvm.loop !532

.thread.loopexit.i343:                            ; preds = %bb.cf
  %i.wf = icmp ne i64 %i.wa, %i.vu
  %i.wg = sext i1 %i.wf to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344: ; preds = %bb.ce, %.thread.loopexit.i343, %bb.bz, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %.4.i327 = phi i32 [ %i.wg, %.thread.loopexit.i343 ], [ -1, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.bz ], [ -1, %bb.ce ]
  %i.wh = icmp slt i32 %.4.i327, %i.mo            ; 3 uses
  %i.wi = trunc i32 %i.tj to i8                   ; 3 uses
  %i.wj = add i8 %i.wi, 48
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 7 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv673
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !9
  %or.cond.not = select i1 %i.ui, i1 %i.wh, i1 false
  br i1 %or.cond.not, label %bb.ct, label %bb.cg

bb.cg:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344
  br i1 %i.ui, label %.thread547.sink.split, label %bb.cj

.thread835:                                       ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i341, %bb.by
  %i.wl = trunc i32 %i.tj to i8                   ; 3 uses
  %i.wm = add i8 %i.wl, 48
  %indvars.iv.next674829 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv673
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !9
  br i1 %i.ui, label %.thread547.sink.split, label %.thread844

bb.ch:                                            ; preds = %.backedge
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.dd, %bb.cz, %bb.cw, %bb.cs
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %bb.cg
  br i1 %i.wh, label %.thread547, label %.thread844

.thread844:                                       ; preds = %.thread835, %bb.cj
  %indvars.iv.next674832842847 = phi i64 [ %indvars.iv.next674, %bb.cj ], [ %indvars.iv.next674829, %.thread835 ] ; 6 uses
  %i.wq = phi i8 [ %i.wi, %bb.cj ], [ %i.wl, %.thread835 ] ; 3 uses
  %i.wr = load i64, ptr %i.c, align 8, !tbaa !508
  %i.ws = trunc i64 %i.wr to i32
  %i.wt = load i32, ptr %i.e, align 8, !tbaa !500 ; 3 uses
  %i.wu = add nsw i32 %i.wt, %i.ws                ; 3 uses
  %i.wv = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = load i32, ptr %i.j, align 8, !tbaa !500 ; 3 uses
  %i.wy = add nsw i32 %i.wx, %i.ww                ; 4 uses
  %i.wz = add nsw i32 %i.wu, 1
  %i.xa = icmp slt i32 %i.wz, %i.wy
  br i1 %i.xa, label %.thread547, label %bb.ck

bb.ck:                                            ; preds = %.thread844
  %i.xb = icmp sgt i32 %i.wu, %i.wy
  br i1 %i.xb, label %.thread547.sink.split, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xc = call noundef i32 @llvm.smin.i32(i32 %i.wt, i32 %i.wx) ; 2 uses
  %.not.not.not53.i345 = icmp sgt i32 %i.wy, %i.xc
  br i1 %.not.not.not53.i345, label %.lr.ph.i347, label %bb.cr

.lr.ph.i347:                                      ; preds = %bb.cl
  %i.xd = load ptr, ptr %5, align 8
  %i.xe = load ptr, ptr %6, align 8
  %i.xf = sext i32 %i.wx to i64                   ; 3 uses
  %sext.i348 = shl i64 %i.wv, 32
  %i.xg = ashr exact i64 %sext.i348, 32
  %i.xh = add nsw i64 %i.xg, %i.xf
  %13 = sext i32 %i.wy to i64
  %i.xi = sext i32 %i.wu to i64
  %i.xj = sext i32 %i.wt to i64                   ; 2 uses
  %i.xk = sext i32 %i.xc to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cq, %.lr.ph.i347
  %indvars.iv.i349 = phi i64 [ %i.xh, %.lr.ph.i347 ], [ %indvars.iv.next.i351, %bb.cq ] ; 5 uses
  %.03254.i350 = phi i64 [ 0, %.lr.ph.i347 ], [ %i.yb, %bb.cq ] ; 2 uses
  %indvars.iv.next.i351 = add nsw i64 %indvars.iv.i349, -1 ; 4 uses
  %.not.i.i352 = icmp sgt i64 %indvars.iv.i349, %i.xj
  %i.xl = icmp sle i64 %indvars.iv.i349, %i.xi
  %or.cond.i353 = and i1 %.not.i.i352, %i.xl
  br i1 %or.cond.i353, label %bb.cn, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357

bb.cn:                                            ; preds = %bb.cm
  %i.xm = sub nsw i64 %indvars.iv.next.i351, %i.xj
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !3
  %i.xp = zext i32 %i.xo to i64
  %i.xq = shl nuw nsw i64 %i.xp, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357: ; preds = %bb.cm, %bb.cn
  %i.xr = phi i64 [ %i.xq, %bb.cn ], [ 0, %bb.cm ] ; 3 uses
  %.not.i45.i358 = icmp sgt i64 %indvars.iv.i349, %i.xf
  %14 = icmp sle i64 %indvars.iv.i349, %13
  %or.cond51.i359 = and i1 %.not.i45.i358, %14
  br i1 %or.cond51.i359, label %bb.co, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360

bb.co:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357
  %i.xs = sub nsw i64 %indvars.iv.next.i351, %i.xf
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xe, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !3
  %i.xv = zext i32 %i.xu to i64
  %i.xw = or disjoint i64 %.03254.i350, %i.xv
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360: ; preds = %bb.co, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357
  %i.xx = phi i64 [ %i.xw, %bb.co ], [ %.03254.i350, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357 ] ; 3 uses
  %i.xy = icmp ugt i64 %i.xr, %i.xx
  br i1 %i.xy, label %.thread547.sink.split, label %bb.cp

bb.cp:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360
  %i.xz = sub nuw nsw i64 %i.xx, %i.xr            ; 2 uses
  %i.ya = icmp ugt i64 %i.xz, 1
  br i1 %i.ya, label %.thread547, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yb = shl nuw nsw i64 %i.xz, 32
  %.not.not.not.i361 = icmp sgt i64 %indvars.iv.next.i351, %i.xk
  br i1 %.not.not.not.i361, label %bb.cm, label %.thread.loopexit.i362, !llvm.loop !532

.thread.loopexit.i362:                            ; preds = %bb.cq
  %i.yc = icmp ne i64 %i.xx, %i.xr
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cl, %.thread.loopexit.i362
  %.4.i346.ph = phi i1 [ false, %bb.cl ], [ %i.yc, %.thread.loopexit.i362 ]
  %i.yd = and i32 %i.tj, 1
  %.not104 = icmp eq i32 %i.yd, 0
  %or.cond = or i1 %.not104, %.4.i346.ph
  br i1 %or.cond, label %.thread547, label %.thread547.sink.split

.thread547.sink.split:                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360, %bb.cr, %bb.ck, %bb.cg, %.thread835
  %.sink894 = phi i8 [ %i.wi, %bb.cg ], [ %i.wl, %.thread835 ], [ %i.wq, %bb.cr ], [ %i.wq, %bb.ck ], [ %i.wq, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360 ]
  %indvars.iv.next674832841.ph = phi i64 [ %indvars.iv.next674, %bb.cg ], [ %indvars.iv.next674829, %.thread835 ], [ %indvars.iv.next674832842847, %bb.cr ], [ %indvars.iv.next674832842847, %bb.ck ], [ %indvars.iv.next674832842847, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360 ]
  %or.cond.not834838.ph = phi i1 [ %i.wh, %bb.cg ], [ false, %.thread835 ], [ false, %bb.cr ], [ false, %bb.ck ], [ false, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360 ]
  %i.ye = getelementptr i8, ptr %i.tf, i64 %indvars.iv673
  %i.yf = add i8 %.sink894, 49
  store i8 %i.yf, ptr %i.ye, align 1, !tbaa !9
  br label %.thread547

.thread547:                                       ; preds = %bb.cp, %.thread547.sink.split, %.thread844, %bb.cj, %bb.cr
  %indvars.iv.next674832841 = phi i64 [ %indvars.iv.next674832842847, %bb.cr ], [ %indvars.iv.next674832842847, %.thread844 ], [ %indvars.iv.next674832841.ph, %.thread547.sink.split ], [ %indvars.iv.next674, %bb.cj ], [ %indvars.iv.next674832842847, %bb.cp ] ; 3 uses
  %or.cond.not834838 = phi i1 [ false, %bb.cr ], [ false, %.thread844 ], [ %or.cond.not834838.ph, %.thread547.sink.split ], [ false, %bb.cj ], [ false, %bb.cp ]
  %i.yg = load i64, ptr %i.tg, align 8, !tbaa !231 ; 2 uses
  %.not822 = icmp ugt i64 %i.yg, %indvars.iv673
  br i1 %.not822, label %.split, label %bb.cs

bb.cs:                                            ; preds = %.thread547
  %i.yh = load ptr, ptr %i.th, align 8, !tbaa !228
  invoke void %i.yh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next674832841)
          to label %.noexc365 unwind label %bb.ci, !inline_history !536

.noexc365:                                        ; preds = %bb.cs
  %.pre.i364 = load i64, ptr %i.tg, align 8, !tbaa !231
  br label %.split

.split:                                           ; preds = %.noexc365, %.thread547
  %i.yi = phi i64 [ %i.yg, %.thread547 ], [ %.pre.i364, %.noexc365 ]
  %i.yj = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next674832841, i64 %i.yi)
  store i64 %i.yj, ptr %i.ti, align 8, !tbaa !235
  %i.yk = load i32, ptr %4, align 4, !tbaa !3
  %i.yl = trunc nuw nsw i64 %indvars.iv673 to i32
  %i.ym = sub nsw i32 %i.yk, %i.yl
  store i32 %i.ym, ptr %4, align 4, !tbaa !3
  br i1 %or.cond.not834838, label %.backedge.backedge, label %.loopexit

bb.ct:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344
  %i.yn = load i64, ptr %i.c, align 8, !tbaa !508 ; 7 uses
  %.not14.i.i366 = icmp eq i64 %i.yn, 0
  br i1 %.not14.i.i366, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %bb.ct
  %i.yo = load ptr, ptr %5, align 8, !tbaa !498   ; 4 uses
  %xtraiter1708 = and i64 %i.yn, 1
  %i.yp = icmp eq i64 %i.yn, 1
  br i1 %i.yp, label %.epil.preheader1707, label %.lr.ph.i.i367.new

.lr.ph.i.i367.new:                                ; preds = %.lr.ph.i.i367
  %unroll_iter1712 = and i64 %i.yn, -2
  br label %bb.cu

._crit_edge.i.i371.unr-lcssa:                     ; preds = %bb.cu
  %lcmp.mod1709.not = icmp eq i64 %xtraiter1708, 0
  br i1 %lcmp.mod1709.not, label %._crit_edge.i.i371, label %.epil.preheader1707

.epil.preheader1707:                              ; preds = %._crit_edge.i.i371.unr-lcssa, %.lr.ph.i.i367
  %.013.i.i368.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.zn, %._crit_edge.i.i371.unr-lcssa ]
  %.01112.i.i369.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.zm, %._crit_edge.i.i371.unr-lcssa ]
  %lcmp.mod1711 = trunc i64 %i.yn to i1
  call void @llvm.assume(i1 %lcmp.mod1711)
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %.013.i.i368.epil.init ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !3
  %i.ys = zext i32 %i.yr to i64
  %i.yt = mul nuw nsw i64 %i.ys, 10
  %i.yu = add nuw nsw i64 %i.yt, %.01112.i.i369.epil.init ; 2 uses
  %i.yv = trunc i64 %i.yu to i32
  store i32 %i.yv, ptr %i.yq, align 4, !tbaa !3
  %i.yw = lshr i64 %i.yu, 32
  br label %._crit_edge.i.i371

._crit_edge.i.i371:                               ; preds = %._crit_edge.i.i371.unr-lcssa, %.epil.preheader1707
  %.lcssa1641 = phi i64 [ %i.zm, %._crit_edge.i.i371.unr-lcssa ], [ %i.yw, %.epil.preheader1707 ] ; 2 uses
  %i.yx = trunc nuw nsw i64 %.lcssa1641 to i32
  %.not.i.i372 = icmp eq i64 %.lcssa1641, 0
  br i1 %.not.i.i372, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379, label %bb.cv

bb.cu:                                            ; preds = %bb.cu, %.lr.ph.i.i367.new
  %.013.i.i368 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.zn, %bb.cu ] ; 3 uses
  %.01112.i.i369 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.zm, %bb.cu ]
  %niter1713 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %niter1713.next.1, %bb.cu ]
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %.013.i.i368 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.za = zext i32 %i.yz to i64
  %i.zb = mul nuw nsw i64 %i.za, 10
  %i.zc = add nuw nsw i64 %i.zb, %.01112.i.i369   ; 2 uses
  %i.zd = trunc i64 %i.zc to i32
  store i32 %i.zd, ptr %i.yy, align 4, !tbaa !3
  %i.ze = lshr i64 %i.zc, 32
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %.013.i.i368
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 4 ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !3
  %i.zi = zext i32 %i.zh to i64
  %i.zj = mul nuw nsw i64 %i.zi, 10
  %i.zk = add nuw nsw i64 %i.zj, %i.ze            ; 2 uses
  %i.zl = trunc i64 %i.zk to i32
  store i32 %i.zl, ptr %i.zg, align 4, !tbaa !3
  %i.zm = lshr i64 %i.zk, 32                      ; 3 uses
  %i.zn = add nuw i64 %.013.i.i368, 2             ; 2 uses
  %niter1713.next.1 = add nuw i64 %niter1713, 2   ; 2 uses
  %niter1713.ncmp.1 = icmp eq i64 %niter1713.next.1, %unroll_iter1712
  br i1 %niter1713.ncmp.1, label %._crit_edge.i.i371.unr-lcssa, label %bb.cu, !llvm.loop !533

bb.cv:                                            ; preds = %._crit_edge.i.i371
  %i.zo = add i64 %i.yn, 1                        ; 3 uses
  %i.zp = load i64, ptr %i.a, align 8, !tbaa !499
  %i.zq = icmp ugt i64 %i.zo, %i.zp
  br i1 %i.zq, label %bb.cw, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373

bb.cw:                                            ; preds = %bb.cv
  %i.zr = load ptr, ptr %i.b, align 8, !tbaa !496
  invoke void %i.zr(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zo)
          to label %.noexc378 unwind label %bb.ci, !inline_history !534

.noexc378:                                        ; preds = %bb.cw
  %.pre.i.i.i375 = load i64, ptr %i.c, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i376 = add i64 %.pre.i.i.i375, 1
  %.pre.i377 = load ptr, ptr %5, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373: ; preds = %.noexc378, %bb.cv
  %i.zs = phi ptr [ %i.yo, %bb.cv ], [ %.pre.i377, %.noexc378 ]
  %.pre-phi.i.i.i374 = phi i64 [ %i.zo, %bb.cv ], [ %.pre2.i.i.i376, %.noexc378 ]
  %i.zt = phi i64 [ %i.yn, %bb.cv ], [ %.pre.i.i.i375, %.noexc378 ]
  store i64 %.pre-phi.i.i.i374, ptr %i.c, align 8, !tbaa !508
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %i.zt
  store i32 %i.yx, ptr %i.zu, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373, %._crit_edge.i.i371, %bb.ct
  %i.zv = load i64, ptr %i.m, align 8, !tbaa !508 ; 7 uses
  %.not14.i.i380 = icmp eq i64 %i.zv, 0
  br i1 %.not14.i.i380, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379
  %i.zw = load ptr, ptr %7, align 8, !tbaa !498   ; 4 uses
  %xtraiter1715 = and i64 %i.zv, 1
  %i.zx = icmp eq i64 %i.zv, 1
  br i1 %i.zx, label %.epil.preheader1714, label %.lr.ph.i.i381.new

.lr.ph.i.i381.new:                                ; preds = %.lr.ph.i.i381
  %unroll_iter1719 = and i64 %i.zv, -2
  br label %bb.cx

._crit_edge.i.i385.unr-lcssa:                     ; preds = %bb.cx
  %lcmp.mod1716.not = icmp eq i64 %xtraiter1715, 0
  br i1 %lcmp.mod1716.not, label %._crit_edge.i.i385, label %.epil.preheader1714

.epil.preheader1714:                              ; preds = %._crit_edge.i.i385.unr-lcssa, %.lr.ph.i.i381
  %.013.i.i382.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.aav, %._crit_edge.i.i385.unr-lcssa ]
  %.01112.i.i383.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.aau, %._crit_edge.i.i385.unr-lcssa ]
  %lcmp.mod1718 = trunc i64 %i.zv to i1
  call void @llvm.assume(i1 %lcmp.mod1718)
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.013.i.i382.epil.init ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !3
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = mul nuw nsw i64 %i.aaa, 10
  %i.aac = add nuw nsw i64 %i.aab, %.01112.i.i383.epil.init ; 2 uses
  %i.aad = trunc i64 %i.aac to i32
  store i32 %i.aad, ptr %i.zy, align 4, !tbaa !3
  %i.aae = lshr i64 %i.aac, 32
  br label %._crit_edge.i.i385

._crit_edge.i.i385:                               ; preds = %._crit_edge.i.i385.unr-lcssa, %.epil.preheader1714
  %.lcssa1642 = phi i64 [ %i.aau, %._crit_edge.i.i385.unr-lcssa ], [ %i.aae, %.epil.preheader1714 ] ; 2 uses
  %i.aaf = trunc nuw nsw i64 %.lcssa1642 to i32
  %.not.i.i386 = icmp eq i64 %.lcssa1642, 0
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a

.lr.ph.i.i395:                                    ; preds = %bb.da
  %i.abe = load ptr, ptr %.2, align 8, !tbaa !498 ; 4 uses
  %xtraiter1722 = and i64 %i.abd, 1
  %i.abf = icmp eq i64 %i.abd, 1
  br i1 %i.abf, label %.epil.preheader1721, label %.lr.ph.i.i395.new

.lr.ph.i.i395.new:                                ; preds = %.lr.ph.i.i395
  %unroll_iter1726 = and i64 %i.abd, -2
  br label %bb.db

._crit_edge.i.i399.unr-lcssa:                     ; preds = %bb.db
  %lcmp.mod1723.not = icmp eq i64 %xtraiter1722, 0
  br i1 %lcmp.mod1723.not, label %._crit_edge.i.i399, label %.epil.preheader1721

.epil.preheader1721:                              ; preds = %._crit_edge.i.i399.unr-lcssa, %.lr.ph.i.i395
  %.013.i.i396.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.acd, %._crit_edge.i.i399.unr-lcssa ]
  %.01112.i.i397.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.acc, %._crit_edge.i.i399.unr-lcssa ]
  %lcmp.mod1725 = trunc i64 %i.abd to i1
  call void @llvm.assume(i1 %lcmp.mod1725)
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.013.i.i396.epil.init ; 2 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !3
  %i.abi = zext i32 %i.abh to i64
  %i.abj = mul nuw nsw i64 %i.abi, 10
  %i.abk = add nuw nsw i64 %i.abj, %.01112.i.i397.epil.init ; 2 uses
  %i.abl = trunc i64 %i.abk to i32
  store i32 %i.abl, ptr %i.abg, align 4, !tbaa !3
  %i.abm = lshr i64 %i.abk, 32
  br label %._crit_edge.i.i399

._crit_edge.i.i399:                               ; preds = %._crit_edge.i.i399.unr-lcssa, %.epil.preheader1721
  %.lcssa1643 = phi i64 [ %i.acc, %._crit_edge.i.i399.unr-lcssa ], [ %i.abm, %.epil.preheader1721 ] ; 2 uses
  %i.abn = trunc nuw nsw i64 %.lcssa1643 to i32
  %.not.i.i400 = icmp eq i64 %.lcssa1643, 0
  br i1 %.not.i.i400, label %.backedge.backedge, label %bb.dc

bb.db:                                            ; preds = %bb.db, %.lr.ph.i.i395.new
  %.013.i.i396 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.acd, %bb.db ] ; 3 uses
  %.01112.i.i397 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.acc, %bb.db ]
  %niter1727 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %niter1727.next.1, %bb.db ]
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.013.i.i396 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.abq = zext i32 %i.abp to i64
  %i.abr = mul nuw nsw i64 %i.abq, 10
  %i.abs = add nuw nsw i64 %i.abr, %.01112.i.i397 ; 2 uses
  %i.abt = trunc i64 %i.abs to i32
  store i32 %i.abt, ptr %i.abo, align 4, !tbaa !3
  %i.abu = lshr i64 %i.abs, 32
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abe, i64 %.013.i.i396
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 4 ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !3
  %i.aby = zext i32 %i.abx to i64
  %i.abz = mul nuw nsw i64 %i.aby, 10
  %i.aca = add nuw nsw i64 %i.abz, %i.abu         ; 2 uses
  %i.acb = trunc i64 %i.aca to i32
  store i32 %i.acb, ptr %i.abw, align 4, !tbaa !3
  %i.acc = lshr i64 %i.aca, 32                    ; 3 uses
  %i.acd = add nuw i64 %.013.i.i396, 2            ; 2 uses
  %niter1727.next.1 = add nuw i64 %niter1727, 2   ; 2 uses
  %niter1727.ncmp.1 = icmp eq i64 %niter1727.next.1, %unroll_iter1726
  br i1 %niter1727.ncmp.1, label %._crit_edge.i.i399.unr-lcssa, label %bb.db, !llvm.loop !533

bb.dc:                                            ; preds = %._crit_edge.i.i399
  %i.ace = add i64 %i.abd, 1                      ; 3 uses
  %i.acf = load i64, ptr %.2.sroa.gep522, align 8, !tbaa !499
  %i.acg = icmp ugt i64 %i.ace, %i.acf
  br i1 %i.acg, label %bb.dd, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401

bb.dd:                                            ; preds = %bb.dc
  %i.ach = load ptr, ptr %.2.sroa.gep525, align 8, !tbaa !496
  invoke void %i.ach(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.ace)
          to label %.noexc406 unwind label %bb.ci, !inline_history !534

.noexc406:                                        ; preds = %bb.dd
  %.pre.i.i.i403 = load i64, ptr %.2.sroa.gep513, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i404 = add i64 %.pre.i.i.i403, 1
  %.pre.i405 = load ptr, ptr %.2, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401: ; preds = %.noexc406, %bb.dc
  %i.aci = phi ptr [ %i.abe, %bb.dc ], [ %.pre.i405, %.noexc406 ]
  %.pre-phi.i.i.i402 = phi i64 [ %i.ace, %bb.dc ], [ %.pre2.i.i.i404, %.noexc406 ]
  %i.acj = phi i64 [ %i.abd, %bb.dc ], [ %.pre.i.i.i403, %.noexc406 ]
  store i64 %.pre-phi.i.i.i402, ptr %.2.sroa.gep513, align 8, !tbaa !508
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.acj
  store i32 %i.abn, ptr %i.ack, align 4, !tbaa !3
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.br
  %i.acl = add i32 %.0542, -1                     ; 4 uses
  %i.acm = load i32, ptr %4, align 4, !tbaa !3
  %i.acn = sub nsw i32 %i.acm, %i.acl
  store i32 %i.acn, ptr %4, align 4, !tbaa !3
  %i.aco = icmp slt i32 %.0542, 1
  br i1 %i.aco, label %bb.df, label %bb.dt

bb.df:                                            ; preds = %bb.de
  %i.acp = icmp eq i32 %.0542, 0
  br i1 %i.acp, label %bb.dg, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440

bb.dg:                                            ; preds = %bb.df
  %i.acq = load i64, ptr %i.h, align 8, !tbaa !508 ; 8 uses
  %.not14.i.i408 = icmp eq i64 %i.acq, 0
  br i1 %.not14.i.i408, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %bb.dg
  %i.acr = load ptr, ptr %6, align 8, !tbaa !498  ; 4 uses
  %xtraiter1701 = and i64 %i.acq, 1
  %i.acs = icmp eq i64 %i.acq, 1
  br i1 %i.acs, label %.epil.preheader1700, label %.lr.ph.i.i409.new

.lr.ph.i.i409.new:                                ; preds = %.lr.ph.i.i409
  %unroll_iter1705 = and i64 %i.acq, -2
  br label %bb.dh

._crit_edge.i.i413.unr-lcssa:                     ; preds = %bb.dh
  %lcmp.mod1702.not = icmp eq i64 %xtraiter1701, 0
  br i1 %lcmp.mod1702.not, label %._crit_edge.i.i413, label %.epil.preheader1700

.epil.preheader1700:                              ; preds = %._crit_edge.i.i413.unr-lcssa, %.lr.ph.i.i409
  %.013.i.i410.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.adq, %._crit_edge.i.i413.unr-lcssa ]
  %.01112.i.i411.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.adp, %._crit_edge.i.i413.unr-lcssa ]
  %lcmp.mod1704 = trunc i64 %i.acq to i1
  call void @llvm.assume(i1 %lcmp.mod1704)
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %.013.i.i410.epil.init ; 2 uses
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !3
  %i.acv = zext i32 %i.acu to i64
  %i.acw = mul nuw nsw i64 %i.acv, 10
  %i.acx = add nuw nsw i64 %i.acw, %.01112.i.i411.epil.init ; 2 uses
  %i.acy = trunc i64 %i.acx to i32
  store i32 %i.acy, ptr %i.act, align 4, !tbaa !3
  %i.acz = lshr i64 %i.acx, 32
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %._crit_edge.i.i413.unr-lcssa, %.epil.preheader1700
  %.lcssa1644 = phi i64 [ %i.adp, %._crit_edge.i.i413.unr-lcssa ], [ %i.acz, %.epil.preheader1700 ] ; 2 uses
  %i.ada = trunc nuw nsw i64 %.lcssa1644 to i32
  %.not.i.i414 = icmp eq i64 %.lcssa1644, 0
  br i1 %.not.i.i414, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, label %bb.di

bb.dh:                                            ; preds = %bb.dh, %.lr.ph.i.i409.new
  %.013.i.i410 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.adq, %bb.dh ] ; 3 uses
  %.01112.i.i411 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.adp, %bb.dh ]
  %niter1706 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %niter1706.next.1, %bb.dh ]
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %.013.i.i410 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !3
  %i.add = zext i32 %i.adc to i64
  %i.ade = mul nuw nsw i64 %i.add, 10
  %i.adf = add nuw nsw i64 %i.ade, %.01112.i.i411 ; 2 uses
  %i.adg = trunc i64 %i.adf to i32
  store i32 %i.adg, ptr %i.adb, align 4, !tbaa !3
  %i.adh = lshr i64 %i.adf, 32
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %.013.i.i410
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 4 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !3
  %i.adl = zext i32 %i.adk to i64
  %i.adm = mul nuw nsw i64 %i.adl, 10
  %i.adn = add nuw nsw i64 %i.adm, %i.adh         ; 2 uses
  %i.ado = trunc i64 %i.adn to i32
  store i32 %i.ado, ptr %i.adj, align 4, !tbaa !3
  %i.adp = lshr i64 %i.adn, 32                    ; 3 uses
  %i.adq = add nuw i64 %.013.i.i410, 2            ; 2 uses
  %niter1706.next.1 = add nuw i64 %niter1706, 2   ; 2 uses
  %niter1706.ncmp.1 = icmp eq i64 %niter1706.next.1, %unroll_iter1705
  br i1 %niter1706.ncmp.1, label %._crit_edge.i.i413.unr-lcssa, label %bb.dh, !llvm.loop !533

bb.di:                                            ; preds = %._crit_edge.i.i413
  %i.adr = add i64 %i.acq, 1                      ; 3 uses
  %i.ads = load i64, ptr %i.f, align 8, !tbaa !499
  %i.adt = icmp ugt i64 %i.adr, %i.ads
  br i1 %i.adt, label %bb.dj, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

bb.dj:                                            ; preds = %bb.di
  %i.adu = load ptr, ptr %i.g, align 8, !tbaa !496
  invoke void %i.adu(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.adr)
          to label %.noexc420 unwind label %bb.dq, !inline_history !534

.noexc420:                                        ; preds = %bb.dj
  %.pre.i.i.i417 = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i418 = add i64 %.pre.i.i.i417, 1
  %.pre.i419 = load ptr, ptr %6, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415: ; preds = %.noexc420, %bb.di
  %i.adv = phi ptr [ %i.acr, %bb.di ], [ %.pre.i419, %.noexc420 ]
  %.pre-phi.i.i.i416 = phi i64 [ %i.adr, %bb.di ], [ %.pre2.i.i.i418, %.noexc420 ] ; 2 uses
  %i.adw = phi i64 [ %i.acq, %bb.di ], [ %.pre.i.i.i417, %.noexc420 ]
  store i64 %.pre-phi.i.i.i416, ptr %i.h, align 8, !tbaa !508
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %i.adw
  store i32 %i.ada, ptr %i.adx, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415, %._crit_edge.i.i413, %bb.dg
  %i.ady = phi i64 [ %.pre-phi.i.i.i416, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415 ], [ %i.acq, %._crit_edge.i.i413 ], [ 0, %bb.dg ] ; 2 uses
  %i.adz = load i64, ptr %i.c, align 8, !tbaa !508
  %i.aea = trunc i64 %i.adz to i32
  %i.aeb = load i32, ptr %i.e, align 8, !tbaa !500 ; 3 uses
  %i.aec = add nsw i32 %i.aeb, %i.aea             ; 3 uses
  %i.aed = trunc i64 %i.ady to i32
  %i.aee = load i32, ptr %i.j, align 8, !tbaa !500 ; 3 uses
  %i.aef = add nsw i32 %i.aee, %i.aed             ; 4 uses
  %i.aeg = add nsw i32 %i.aec, 1
  %i.aeh = icmp slt i32 %i.aeg, %i.aef
  br i1 %i.aeh, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dk

bb.dk:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421
  %i.aei = icmp sgt i32 %i.aec, %i.aef
  br i1 %i.aei, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aej = call noundef i32 @llvm.smin.i32(i32 %i.aeb, i32 %i.aee) ; 2 uses
  %.not.not.not53.i422 = icmp sgt i32 %i.aef, %i.aej
  br i1 %.not.not.not53.i422, label %.lr.ph.i424, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440

.lr.ph.i424:                                      ; preds = %bb.dl
  %i.aek = load ptr, ptr %5, align 8
  %i.ael = load ptr, ptr %6, align 8
  %i.aem = sext i32 %i.aee to i64                 ; 3 uses
  %sext.i425 = shl i64 %i.ady, 32
  %i.aen = ashr exact i64 %sext.i425, 32
  %i.aeo = add nsw i64 %i.aen, %i.aem
  %15 = sext i32 %i.aef to i64
  %i.aep = sext i32 %i.aec to i64
  %i.aeq = sext i32 %i.aeb to i64                 ; 2 uses
  %i.aer = sext i32 %i.aej to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dp, %.lr.ph.i424
  %indvars.iv.i426 = phi i64 [ %i.aeo, %.lr.ph.i424 ], [ %indvars.iv.next.i428, %bb.dp ] ; 5 uses
  %.03254.i427 = phi i64 [ 0, %.lr.ph.i424 ], [ %i.afi, %bb.dp ] ; 2 uses
  %indvars.iv.next.i428 = add nsw i64 %indvars.iv.i426, -1 ; 4 uses
  %.not.i.i429 = icmp sgt i64 %indvars.iv.i426, %i.aeq
  %i.aes = icmp sle i64 %indvars.iv.i426, %i.aep
  %or.cond.i430 = and i1 %.not.i.i429, %i.aes
  br i1 %or.cond.i430, label %bb.dn, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434

bb.dn:                                            ; preds = %bb.dm
  %i.aet = sub nsw i64 %indvars.iv.next.i428, %i.aeq
  %i.aeu = getelementptr inbounds [4 x i8], ptr %i.aek, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !3
  %i.aew = zext i32 %i.aev to i64
  %i.aex = shl nuw nsw i64 %i.aew, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434: ; preds = %bb.dm, %bb.dn
  %i.aey = phi i64 [ %i.aex, %bb.dn ], [ 0, %bb.dm ] ; 2 uses
  %.not.i45.i435 = icmp sgt i64 %indvars.iv.i426, %i.aem
  %16 = icmp sle i64 %indvars.iv.i426, %15
  %or.cond51.i436 = and i1 %.not.i45.i435, %16
  br i1 %or.cond51.i436, label %bb.do, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437

bb.do:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434
  %i.aez = sub nsw i64 %indvars.iv.next.i428, %i.aem
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !3
  %i.afc = zext i32 %i.afb to i64
  %i.afd = or disjoint i64 %.03254.i427, %i.afc
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437: ; preds = %bb.do, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434
  %i.afe = phi i64 [ %i.afd, %bb.do ], [ %.03254.i427, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434 ] ; 2 uses
  %i.aff = icmp ugt i64 %i.aey, %i.afe
  br i1 %i.aff, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dp

bb.dp:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437
  %i.afg = sub nuw nsw i64 %i.afe, %i.aey         ; 2 uses
  %i.afh = icmp ult i64 %i.afg, 2
  %i.afi = shl nuw nsw i64 %i.afg, 32
  %.not.not.not.i438 = icmp sgt i64 %indvars.iv.next.i428, %i.aer
  %or.cond564 = select i1 %i.afh, i1 %.not.not.not.i438, i1 false
  br i1 %or.cond564, label %bb.dm, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, !llvm.loop !532

bb.dq:                                            ; preds = %bb.dr, %bb.dj
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440: ; preds = %bb.dp, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437, %bb.dl, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, %bb.dk, %bb.df
  %.0541 = phi i8 [ 48, %bb.df ], [ 48, %bb.dl ], [ 49, %bb.dk ], [ 48, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421 ], [ 48, %bb.dp ], [ 49, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437 ]
  %i.afk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !235 ; 2 uses
  %i.afm = add i64 %i.afl, 1                      ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !231
  %i.afp = icmp ugt i64 %i.afm, %i.afo
  br i1 %i.afp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %i.afq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !228
  invoke void %i.afr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.afm)
          to label %.noexc442 unwind label %bb.dq, !inline_history !538

.noexc442:                                        ; preds = %bb.dr
  %.pre.i441 = load i64, ptr %i.afk, align 8, !tbaa !235 ; 2 uses
  %.pre2.i = add i64 %.pre.i441, 1
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc442, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %.pre-phi.i = phi i64 [ %i.afm, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre2.i, %.noexc442 ]
  %i.afs = phi i64 [ %i.afl, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre.i441, %.noexc442 ]
  %i.aft = load ptr, ptr %3, align 8, !tbaa !230
  store i64 %.pre-phi.i, ptr %i.afk, align 8, !tbaa !235
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afs
  store i8 %.0541, ptr %i.afu, align 1, !tbaa !9
  br label %.loopexit

bb.dt:                                            ; preds = %bb.de
  %i.afv = zext nneg i32 %.0542 to i64            ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !231 ; 2 uses
  %i.afy = icmp ult i64 %i.afx, %i.afv
  br i1 %i.afy, label %bb.du, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445

bb.du:                                            ; preds = %bb.dt
  %i.afz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !228
  invoke void %i.aga(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.afv)
          to label %.noexc444 unwind label %bb.bm, !inline_history !536

.noexc444:                                        ; preds = %bb.du
  %.pre.i443 = load i64, ptr %i.afw, align 8, !tbaa !231
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445: ; preds = %bb.dt, %.noexc444
  %i.agb = phi i64 [ %i.afx, %bb.dt ], [ %.pre.i443, %.noexc444 ]
  %i.agc = call noundef i64 @llvm.umin.i64(i64 %i.afv, i64 %i.agb)
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.agc, ptr %i.agd, align 8, !tbaa !235
  %.not623 = icmp eq i32 %.0542, 1                ; 2 uses
  br i1 %.not623, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445
  %wide.trip.count = zext nneg i32 %i.acl to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445
  %i.age = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.ea unwind label %bb.ek     ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459 ] ; 2 uses
  %i.agf = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %.lr.ph
  %i.agg = trunc i32 %i.agf to i8
  %i.agh = add i8 %i.agg, 48
  %i.agi = load ptr, ptr %3, align 8, !tbaa !230
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %indvars.iv
  store i8 %i.agh, ptr %i.agj, align 1, !tbaa !9
  %i.agk = load i64, ptr %i.c, align 8, !tbaa !508 ; 7 uses
  %.not14.i.i446 = icmp eq i64 %i.agk, 0
  br i1 %.not14.i.i446, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, label %.lr.ph.i.i447

.lr.ph.i.i447:                                    ; preds = %bb.dv
  %i.agl = load ptr, ptr %5, align 8, !tbaa !498  ; 4 uses
  %xtraiter1694 = and i64 %i.agk, 1
  %i.agm = icmp eq i64 %i.agk, 1
  br i1 %i.agm, label %.epil.preheader1693, label %.lr.ph.i.i447.new

.lr.ph.i.i447.new:                                ; preds = %.lr.ph.i.i447
  %unroll_iter1698 = and i64 %i.agk, -2
  br label %bb.dw

._crit_edge.i.i451.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1694, 0
  br i1 %lcmp.mod1695.not, label %._crit_edge.i.i451, label %.epil.preheader1693

.epil.preheader1693:                              ; preds = %._crit_edge.i.i451.unr-lcssa, %.lr.ph.i.i447
  %.013.i.i448.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.ahk, %._crit_edge.i.i451.unr-lcssa ]
  %.01112.i.i449.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.ahj, %._crit_edge.i.i451.unr-lcssa ]
  %lcmp.mod1697 = trunc i64 %i.agk to i1
  call void @llvm.assume(i1 %lcmp.mod1697)
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i448.epil.init ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !3
  %i.agp = zext i32 %i.ago to i64
  %i.agq = mul nuw nsw i64 %i.agp, 10
  %i.agr = add nuw nsw i64 %i.agq, %.01112.i.i449.epil.init ; 2 uses
  %i.ags = trunc i64 %i.agr to i32
  store i32 %i.ags, ptr %i.agn, align 4, !tbaa !3
  %i.agt = lshr i64 %i.agr, 32
  br label %._crit_edge.i.i451

._crit_edge.i.i451:                               ; preds = %._crit_edge.i.i451.unr-lcssa, %.epil.preheader1693
  %.lcssa1651 = phi i64 [ %i.ahj, %._crit_edge.i.i451.unr-lcssa ], [ %i.agt, %.epil.preheader1693 ] ; 2 uses
  %i.agu = trunc nuw nsw i64 %.lcssa1651 to i32
  %.not.i.i452 = icmp eq i64 %.lcssa1651, 0
  br i1 %.not.i.i452, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, label %bb.dx

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i.i447.new
  %.013.i.i448 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.ahk, %bb.dw ] ; 3 uses
  %.01112.i.i449 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.ahj, %bb.dw ]
  %niter1699 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %niter1699.next.1, %bb.dw ]
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i448 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !3
  %i.agx = zext i32 %i.agw to i64
  %i.agy = mul nuw nsw i64 %i.agx, 10
  %i.agz = add nuw nsw i64 %i.agy, %.01112.i.i449 ; 2 uses
  %i.aha = trunc i64 %i.agz to i32
  store i32 %i.aha, ptr %i.agv, align 4, !tbaa !3
  %i.ahb = lshr i64 %i.agz, 32
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i448
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !3
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = mul nuw nsw i64 %i.ahf, 10
  %i.ahh = add nuw nsw i64 %i.ahg, %i.ahb         ; 2 uses
  %i.ahi = trunc i64 %i.ahh to i32
  store i32 %i.ahi, ptr %i.ahd, align 4, !tbaa !3
  %i.ahj = lshr i64 %i.ahh, 32                    ; 3 uses
  %i.ahk = add nuw i64 %.013.i.i448, 2            ; 2 uses
  %niter1699.next.1 = add nuw i64 %niter1699, 2   ; 2 uses
  %niter1699.ncmp.1 = icmp eq i64 %niter1699.next.1, %unroll_iter1698
  br i1 %niter1699.ncmp.1, label %._crit_edge.i.i451.unr-lcssa, label %bb.dw, !llvm.loop !533

bb.dx:                                            ; preds = %._crit_edge.i.i451
  %i.ahl = add i64 %i.agk, 1                      ; 3 uses
  %i.ahm = load i64, ptr %i.a, align 8, !tbaa !499
  %i.ahn = icmp ugt i64 %i.ahl, %i.ahm
  br i1 %i.ahn, label %bb.dy, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453

bb.dy:                                            ; preds = %bb.dx
  %i.aho = load ptr, ptr %i.b, align 8, !tbaa !496
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ahl)
          to label %.noexc458 unwind label %bb.dz, !inline_history !534

.noexc458:                                        ; preds = %bb.dy
  %.pre.i.i.i455 = load i64, ptr %i.c, align 8, !tbaa !508 ; 2 uses
  %.pre2.i.i.i456 = add i64 %.pre.i.i.i455, 1
  %.pre.i457 = load ptr, ptr %5, align 8, !tbaa !498
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453: ; preds = %.noexc458, %bb.dx
  %i.ahp = phi ptr [ %i.agl, %bb.dx ], [ %.pre.i457, %.noexc458 ]
  %.pre-phi.i.i.i454 = phi i64 [ %i.ahl, %bb.dx ], [ %.pre2.i.i.i456, %.noexc458 ]
  %i.ahq = phi i64 [ %i.agk, %bb.dx ], [ %.pre.i.i.i455, %.noexc458 ]
  store i64 %.pre-phi.i.i.i454, ptr %i.c, align 8, !tbaa !508
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ahq
  store i32 %i.agu, ptr %i.ahr, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453, %._crit_edge.i.i451, %bb.dv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !539

bb.dz:                                            ; preds = %bb.dy, %.lr.ph
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %._crit_edge
  %i.aht = load i64, ptr %i.c, align 8, !tbaa !508
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = load i32, ptr %i.e, align 8, !tbaa !500 ; 3 uses
  %i.ahw = add nsw i32 %i.ahv, %i.ahu             ; 3 uses
  %i.ahx = load i64, ptr %i.h, align 8, !tbaa !508 ; 2 uses
  %i.ahy = trunc i64 %i.ahx to i32
  %i.ahz = load i32, ptr %i.j, align 8, !tbaa !500 ; 3 uses
  %i.aia = add nsw i32 %i.ahz, %i.ahy             ; 4 uses
  %i.aib = add nsw i32 %i.ahw, 1
  %i.aic = icmp slt i32 %i.aib, %i.aia
  br i1 %i.aic, label %.thread556, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aid = icmp sgt i32 %i.ahw, %i.aia
  br i1 %i.aid, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aie = call noundef i32 @llvm.smin.i32(i32 %i.ahv, i32 %i.ahz) ; 2 uses
  %.not.not.not53.i460 = icmp sgt i32 %i.aia, %i.aie
  br i1 %.not.not.not53.i460, label %.lr.ph.i462, label %bb.ei

.lr.ph.i462:                                      ; preds = %bb.ec
  %i.aif = load ptr, ptr %5, align 8
  %i.aig = load ptr, ptr %6, align 8
  %i.aih = sext i32 %i.ahz to i64                 ; 3 uses
  %sext.i463 = shl i64 %i.ahx, 32
  %i.aii = ashr exact i64 %sext.i463, 32
  %i.aij = add nsw i64 %i.aii, %i.aih
  %17 = sext i32 %i.aia to i64
  %i.aik = sext i32 %i.ahw to i64
  %i.ail = sext i32 %i.ahv to i64                 ; 2 uses
  %i.aim = sext i32 %i.aie to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph.i462
  %indvars.iv.i464 = phi i64 [ %i.aij, %.lr.ph.i462 ], [ %indvars.iv.next.i466, %bb.eh ] ; 5 uses
  %.03254.i465 = phi i64 [ 0, %.lr.ph.i462 ], [ %i.ajd, %bb.eh ] ; 2 uses
  %indvars.iv.next.i466 = add nsw i64 %indvars.iv.i464, -1 ; 4 uses
  %.not.i.i467 = icmp sgt i64 %indvars.iv.i464, %i.ail
  %i.ain = icmp sle i64 %indvars.iv.i464, %i.aik
  %or.cond.i468 = and i1 %.not.i.i467, %i.ain
  br i1 %or.cond.i468, label %bb.ee, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472

bb.ee:                                            ; preds = %bb.ed
  %i.aio = sub nsw i64 %indvars.iv.next.i466, %i.ail
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aif, i64 %i.aio
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !3
  %i.air = zext i32 %i.aiq to i64
  %i.ais = shl nuw nsw i64 %i.air, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472: ; preds = %bb.ed, %bb.ee
  %i.ait = phi i64 [ %i.ais, %bb.ee ], [ 0, %bb.ed ] ; 3 uses
  %.not.i45.i473 = icmp sgt i64 %indvars.iv.i464, %i.aih
  %18 = icmp sle i64 %indvars.iv.i464, %17
  %or.cond51.i474 = and i1 %.not.i45.i473, %18
  br i1 %or.cond51.i474, label %bb.ef, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475

bb.ef:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472
  %i.aiu = sub nsw i64 %indvars.iv.next.i466, %i.aih
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !3
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = or disjoint i64 %.03254.i465, %i.aix
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475: ; preds = %bb.ef, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472
  %i.aiz = phi i64 [ %i.aiy, %bb.ef ], [ %.03254.i465, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472 ] ; 3 uses
  %i.aja = icmp ugt i64 %i.ait, %i.aiz
  br i1 %i.aja, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.eg

bb.eg:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475
  %i.ajb = sub nuw nsw i64 %i.aiz, %i.ait         ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 1
  br i1 %i.ajc, label %.thread556, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ajd = shl nuw nsw i64 %i.ajb, 32
  %.not.not.not.i476 = icmp sgt i64 %indvars.iv.next.i466, %i.aim
  br i1 %.not.not.not.i476, label %bb.ed, label %.thread.loopexit.i477, !llvm.loop !532

.thread.loopexit.i477:                            ; preds = %bb.eh
  %i.aje = icmp ne i64 %i.aiz, %i.ait
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ec, %.thread.loopexit.i477
  %.4.i461.ph = phi i1 [ false, %bb.ec ], [ %i.aje, %.thread.loopexit.i477 ]
  %i.ajf = and i32 %i.age, 1
  %.not100 = icmp eq i32 %i.ajf, 0
  %or.cond115 = or i1 %.not100, %.4.i461.ph
  br i1 %or.cond115, label %.thread556, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475, %bb.eb, %bb.ei
  %i.ajg = icmp eq i32 %i.age, 9
  br i1 %i.ajg, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !230
  %i.aji = sext i32 %i.acl to i64
  %i.ajj = getelementptr inbounds i8, ptr %i.ajh, i64 %i.aji
  store i8 58, ptr %i.ajj, align 1, !tbaa !9
  br i1 %.not623, label %.critedge, label %.lr.ph621

.lr.ph621:                                        ; preds = %bb.ej, %bb.el
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %bb.el ], [ %i.afv, %bb.ej ] ; 3 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv670, -1 ; 2 uses
  %i.ajk = load ptr, ptr %3, align 8, !tbaa !230
  %i.ajl = and i64 %indvars.iv.next671, 4294967295
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajl ; 2 uses
  %i.ajn = load i8, ptr %i.ajm, align 1, !tbaa !9
  %i.ajo = icmp eq i8 %i.ajn, 58
  br i1 %i.ajo, label %bb.el, label %.critedge

.critedge:                                        ; preds = %.lr.ph621, %bb.el, %bb.ej
  %i.ajp = load ptr, ptr %3, align 8, !tbaa !230  ; 2 uses
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !9
  %i.ajr = icmp eq i8 %i.ajq, 58
  br i1 %i.ajr, label %bb.em, label %.loopexit

bb.ek:                                            ; preds = %._crit_edge
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %.lr.ph621
  store i8 48, ptr %i.ajm, align 1, !tbaa !9
  %i.ajt = load ptr, ptr %3, align 8, !tbaa !230
  %i.aju = getelementptr i8, ptr %i.ajt, i64 %indvars.iv670
  %i.ajv = getelementptr i8, ptr %i.aju, i64 -2   ; 2 uses
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !9
  %i.ajx = add i8 %i.ajw, 1
  store i8 %i.ajx, ptr %i.ajv, align 1, !tbaa !9
  %i.ajy = trunc nuw i64 %indvars.iv670 to i32
  %i.ajz = icmp sgt i32 %i.ajy, 2
  br i1 %i.ajz, label %.lr.ph621, label %.critedge, !llvm.loop !540

bb.em:                                            ; preds = %.critedge
  store i8 49, ptr %i.ajp, align 1, !tbaa !9
  %i.aka = and i32 %1, 4
  %.not101 = icmp eq i32 %i.aka, 0
  br i1 %.not101, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.akb = load i64, ptr %i.agd, align 8, !tbaa !235 ; 2 uses
  %i.akc = add i64 %i.akb, 1                      ; 3 uses
  %i.akd = load i64, ptr %i.afw, align 8, !tbaa !231
  %i.ake = icmp ugt i64 %i.akc, %i.akd
  br i1 %i.ake, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !228
  invoke void %i.akg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.akc)
          to label %.noexc482 unwind label %bb.eq, !inline_history !538

.noexc482:                                        ; preds = %bb.eo
  %.pre.i480 = load i64, ptr %i.agd, align 8, !tbaa !235 ; 2 uses
  %.pre2.i481 = add i64 %.pre.i480, 1
  br label %bb.ep

bb.ep:                                            ; preds = %.noexc482, %bb.en
  %.pre-phi.i479 = phi i64 [ %i.akc, %bb.en ], [ %.pre2.i481, %.noexc482 ]
  %i.akh = phi i64 [ %i.akb, %bb.en ], [ %.pre.i480, %.noexc482 ]
  %i.aki = load ptr, ptr %3, align 8, !tbaa !230
  store i64 %.pre-phi.i479, ptr %i.agd, align 8, !tbaa !235
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.akh
  store i8 48, ptr %i.akj, align 1, !tbaa !9
  br label %.loopexit

bb.eq:                                            ; preds = %bb.eo
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %bb.em
  %i.akl = load i32, ptr %4, align 4, !tbaa !3
  %i.akm = add nsw i32 %i.akl, 1
  store i32 %i.akm, ptr %4, align 4, !tbaa !3
  br label %.loopexit

bb.es:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478
  %i.akn = add nsw i32 %i.age, 1
  br label %.thread556

.thread556:                                       ; preds = %bb.eg, %bb.ea, %bb.es, %bb.ei
  %.076 = phi i32 [ %i.akn, %bb.es ], [ %i.age, %bb.ei ], [ %i.age, %bb.ea ], [ %i.age, %bb.eg ]
  %i.ako = trunc i32 %.076 to i8
  %i.akp = add i8 %i.ako, 48
  %i.akq = load ptr, ptr %3, align 8, !tbaa !230
  %i.akr = sext i32 %i.acl to i64
  %i.aks = getelementptr inbounds i8, ptr %i.akq, i64 %i.akr
  store i8 %i.akp, ptr %i.aks, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread556, %bb.ep, %bb.er, %.critedge, %bb.ds
  %i.akt = load ptr, ptr %8, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.akt, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.et

bb.et:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.akt) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.aku = load ptr, ptr %7, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i484.a = icmp eq ptr %i.aku, %i.n
  br i1 %.not.i.i.i484.a, label %_ZN3fmt3v126detail6bigintD2Ev.exit485.a, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.aku) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit485.a

_ZN3fmt3v126detail6bigintD2Ev.exit485.a:          ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.akv = load ptr, ptr %6, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i486.a = icmp eq ptr %i.akv, %i.i
  br i1 %.not.i.i.i486.a, label %_ZN3fmt3v126detail6bigintD2Ev.exit487.a, label %bb.ev

bb.ev:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit485.a
  call void @free(ptr noundef %i.akv) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487.a

_ZN3fmt3v126detail6bigintD2Ev.exit487.a:          ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit485.a, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.akw = load ptr, ptr %5, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i488.a = icmp eq ptr %i.akw, %i.d
  br i1 %.not.i.i.i488.a, label %_ZN3fmt3v126detail6bigintD2Ev.exit489.a, label %bb.ew

bb.ew:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487.a
  call void @free(ptr noundef %i.akw) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489.a

_ZN3fmt3v126detail6bigintD2Ev.exit489.a:          ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487.a, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

.body:                                            ; preds = %.loopexit570, %.loopexit.split-lp, %bb.bm, %bb.bq, %bb.dq, %bb.dz, %bb.ci, %bb.ch, %bb.eq, %bb.ek
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.akk, %bb.eq ], [ %i.sv, %bb.bm ], [ %i.afj, %bb.dq ], [ %i.ahs, %bb.dz ], [ %i.tc, %bb.bq ], [ %i.wo, %bb.ch ], [ %i.wp, %bb.ci ], [ %i.ajs, %bb.ek ], [ %lpad.loopexit, %.loopexit570 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.akx = load ptr, ptr %8, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i490.a = icmp eq ptr %i.akx, %i.s
  br i1 %.not.i.i.i490.a, label %_ZN3fmt3v126detail6bigintD2Ev.exit491.a, label %bb.ex

bb.ex:                                            ; preds = %.body
  call void @free(ptr noundef %i.akx) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491.a

_ZN3fmt3v126detail6bigintD2Ev.exit491.a:          ; preds = %bb.ex, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.aky = load ptr, ptr %7, align 8, !tbaa !498  ; 2 uses
  %.not.i.i.i492.a = icmp eq ptr %i.aky, %i.n
  br i1 %.not.i.i.i492.a, label %_ZN3fmt3v126detail6bigintD2Ev.exit493.a, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491.a
  call void @free(ptr noundef %i.aky) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493.a

end_hunk_2
