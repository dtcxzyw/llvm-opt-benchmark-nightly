inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bu, align 8, !tbaa !45
  store i8 0, ptr %i.ka, align 1, !tbaa !44
  %i.kb = load ptr, ptr %0, align 8, !tbaa !32
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.bs
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cc, align 8 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %wide.load = load <2 x i32>, ptr %i.ke, align 4, !tbaa !33
  %wide.load658 = load <2 x i32>, ptr %i.kf, align 4, !tbaa !33
  %i.kg = zext <2 x i32> %wide.load to <2 x i64>
  %i.kh = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kg
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.kd, <2 x i64> %i.kh
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ki, align 8, !tbaa !34
  store <2 x ptr> %wide.gep659, ptr %i.kj, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i264, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, %middle.block
  %indvars.iv.i261.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i264:                                  ; preds = %scalar.ph, %middle.block
  br i1 %i.dy, label %.lr.ph.i271, label %.lr.ph29.i266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i261 = phi i64 [ %indvars.iv.next.i262, %scalar.ph ], [ %indvars.iv.i261.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !34
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !137

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.kq = trunc i64 %.sroa.0.0.copyload to i32
  %umax732 = call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.eg)
  %xtraiter733 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.kr = icmp samesign ult i64 %umax732, 3
  br i1 %i.kr, label %.epil.preheader731, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter737 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ks, align 8, !tbaa !34
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.kt = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.kt, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !40

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter738 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter738.next.3, %bb.ah ]
  %i.ku = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.kv = sub i32 %spec.select, %i.ku
  %i.kw = shl i32 %i.kv, 1
  %i.kx = shl nuw i32 1, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !34
  %i.la = zext nneg i32 %i.kx to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kz, i8 0, i64 %i.la, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.lb = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.lc = sub i32 %spec.select, %i.lb
  %i.ld = shl i32 %i.lc, 1
  %i.le = shl nuw i32 1, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !34
  %i.lh = zext nneg i32 %i.le to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i8 0, i64 %i.lh, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.li = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.lj = sub i32 %spec.select, %i.li
  %i.lk = shl i32 %i.lj, 1
  %i.ll = shl nuw i32 1, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !34
  %i.lo = zext nneg i32 %i.ll to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ln, i8 0, i64 %i.lo, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lp = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lq = sub i32 %spec.select, %i.lp
  %i.lr = shl i32 %i.lq, 1
  %i.ls = shl nuw i32 1, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !34
  %i.lv = zext nneg i32 %i.ls to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lu, i8 0, i64 %i.lv, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !41

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod735.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod735.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader731

.epil.preheader731:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  call void @llvm.assume(i1 %lcmp.mod736)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader731
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader731 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter734 = phi i64 [ 0, %.epil.preheader731 ], [ %epil.iter734.next, %bb.ai ]
  %i.lw = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lx = sub i32 %spec.select, %i.lw
  %i.ly = shl i32 %i.lx, 1
  %i.lz = shl nuw i32 1, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !34
  %i.mc = zext nneg i32 %i.lz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mb, i8 0, i64 %i.mc, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !138

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !34
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !45
  store i8 0, ptr %i.me, align 1, !tbaa !44
  %i.mf = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.mg = getelementptr inbounds nuw [120 x i8], ptr %i.mf, i64 %indvars.iv557
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !56
  %i.mj = load i32, ptr %i.cc, align 8, !tbaa !30 ; 2 uses
  %i.mk = load i32, ptr %i.cf, align 4, !tbaa !31 ; 2 uses
  %.not541 = icmp eq i32 %i.mk, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mj, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mx, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.mm = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.mn = getelementptr inbounds nuw [120 x i8], ptr %i.mm, i64 %indvars.iv557
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 104
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !57
  %i.mq = load i32, ptr %i.cb, align 8, !tbaa !59
  %i.mr = load i32, ptr %i.ml, align 4, !tbaa !58
  %i.ms = add i32 %i.mr, %.0210524
  %i.mt = mul i32 %i.ms, %i.mi
  %i.mu = add i32 %i.mt, %i.mq
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mp, i64 %i.mv
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aaq, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mw, %.preheader480.lr.ph ], [ %i.aar, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mx = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mx, %i.mk
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !139

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %12 = trunc nuw i64 %indvars.iv.next to i32     ; 5 uses
  %i.my = lshr i32 %.0208522, %12                 ; 2 uses
  %i.mz = lshr i32 %.0210524, %12                 ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !34
  %notmask.i278 = shl nsw i32 -1, %12
  %i.nc = xor i32 %notmask.i278, -1               ; 2 uses
  %i.nd = add i32 %i.ee, %i.nc
  %i.ne = lshr i32 %i.nd, %12
  %i.nf = mul i32 %i.ne, %i.mz
  %i.ng = add i32 %i.nf, %i.my
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !44
  %i.nk = icmp eq i8 %i.nj, 1
  br i1 %i.nk, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !34
  %i.nn = add i32 %i.gj, %i.nc
  %i.no = lshr i32 %i.nn, %12
  %i.np = mul i32 %i.no, %i.mz
  %i.nq = add i32 %i.np, %i.my
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nr ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !44
  %i.nu = icmp eq i8 %i.nt, 0
  br i1 %i.nu, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nv = load i32, ptr %i.p, align 4, !tbaa !115 ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.nx = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i284 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !33
  %i.ny = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !109
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call noundef i64 %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !126
  %.not12.i.i285 = icmp eq i64 %i.oc, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.od = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.od, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.od, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.oe = load i32, ptr %i.k, align 4, !tbaa !33  ; 3 uses
  store i32 %i.oe, ptr %i.r, align 8, !tbaa !120
  %i.of = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.of
  %i.og = zext nneg i8 %narrow13.i.i286 to i32
  %i.oh = icmp eq i32 %i.oe, 255
  %i.oi = zext i1 %i.oh to i8
  store i8 %i.oi, ptr %i.s, align 8, !tbaa !121
  %i.oj = load i32, ptr %i.q, align 4, !tbaa !119
  %i.ok = add i32 %i.oj, -1
  store i32 %i.ok, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.ol = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i287 = sub nuw nsw i8 8, %i.ol
  %i.om = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.on = add nsw i32 %i.om, -1
  store i32 %i.on, ptr %i.p, align 4, !tbaa !115
  store i32 0, ptr %4, align 4, !tbaa !33
  %i.oo = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.oo, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.oo, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.og, %bb.ap ], [ %i.nv, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.oe, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.op = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.op, ptr %i.p, align 4, !tbaa !115
  %i.oq = lshr i32 %.ph438, %i.op                 ; 2 uses
  %i.or = trunc i32 %i.oq to i1
  %i.os = trunc i32 %i.oq to i8
  %i.ot = and i8 %i.os, 1
  %i.ou = xor i8 %i.ot, 1
  store i8 %i.ou, ptr %i.ni, align 1, !tbaa !44
  store i8 1, ptr %i.ns, align 1, !tbaa !44
  br i1 %i.or, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not218, label %.preheader479, label %bb.aj, !llvm.loop !140

bb.as:                                            ; preds = %bb.ba
  %i.ov = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !141
  %i.ox = icmp ugt i32 %.2202, %i.ow
  br i1 %i.ox, label %bb.bb, label %bb.bc

.preheader479:                                    ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.oy = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.oz = lshr i32 %.0208522, %i.oy
  %i.pa = lshr i32 %.0210524, %i.oy
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !34
  %notmask.i291 = shl nsw i32 -1, %i.oy
  %i.pd = xor i32 %notmask.i291, -1
  %i.pe = add i32 %i.im, %i.pd
  %i.pf = lshr i32 %i.pe, %i.oy
  %i.pg = mul i32 %i.pf, %i.pa
  %i.ph = add i32 %i.pg, %i.oz
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !44
  %i.pl = zext i8 %i.pk to i32                    ; 2 uses
  %i.pm = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pn = lshr i32 %.0208522, %i.pm               ; 2 uses
  %i.po = lshr i32 %.0210524, %i.pm               ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next555
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !34
  %notmask.i292 = shl nsw i32 -1, %i.pm
  %i.pr = xor i32 %notmask.i292, -1               ; 2 uses
  %i.ps = add i32 %i.kq, %i.pr
  %i.pt = lshr i32 %i.ps, %i.pm
  %i.pu = mul i32 %i.pt, %i.po
  %i.pv = add i32 %i.pu, %i.pn
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pw ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !44
  %i.pz = icmp eq i8 %i.py, 0
  br i1 %i.pz, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %.preheader479
  %.pre573 = load i32, ptr %i.p, align 4, !tbaa !115
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ay
  %i.qa = phi i32 [ %i.qu, %bb.ay ], [ %.pre573, %.preheader.preheader ] ; 2 uses
  %.1201518 = phi i32 [ %i.qx, %bb.ay ], [ %i.pl, %.preheader.preheader ]
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %bb.at, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293: ; preds = %.preheader
  %.pre.i295 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.ay

bb.at:                                            ; preds = %.preheader
  %i.qc = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i297 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.not.i297, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %i.qd = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !109
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = call noundef i64 %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !126
  %.not12.i.i298 = icmp eq i64 %i.qh, 1
  br i1 %.not12.i.i298, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qi = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.qi, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.qi, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.qj = load i32, ptr %i.j, align 4, !tbaa !33  ; 3 uses
  store i32 %i.qj, ptr %i.r, align 8, !tbaa !120
  %i.qk = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i299 = sub nuw nsw i8 8, %i.qk
  %i.ql = zext nneg i8 %narrow13.i.i299 to i32
  %i.qm = icmp eq i32 %i.qj, 255
  %i.qn = zext i1 %i.qm to i8
  store i8 %i.qn, ptr %i.s, align 8, !tbaa !121
  %i.qo = load i32, ptr %i.q, align 4, !tbaa !119
  %i.qp = add i32 %i.qo, -1
  store i32 %i.qp, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.qq = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i300 = sub nuw nsw i8 8, %i.qq
  %i.qr = zext nneg i8 %narrow.i.i300 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.qs = add nsw i32 %i.qr, -1
  store i32 %i.qs, ptr %i.p, align 4, !tbaa !115
  store i32 0, ptr %4, align 4, !tbaa !33
  %i.qt = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.1, ptr %i.qt, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.qt, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ay:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293, %bb.aw
  %.ph449 = phi i32 [ %i.ql, %bb.aw ], [ %i.qa, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %.ph450 = phi i32 [ %i.qj, %bb.aw ], [ %.pre.i295, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %i.qu = add nsw i32 %.ph449, -1                 ; 3 uses
  store i32 %i.qu, ptr %i.p, align 4, !tbaa !115
  %i.qv = lshr i32 %.ph450, %i.qu
  %i.qw = and i32 %i.qv, 1                        ; 2 uses
  %reass.sub = add i32 %.1201518, 1
  %i.qx = sub i32 %reass.sub, %i.qw               ; 3 uses
  %i.qy = icmp eq i32 %i.qw, 0
  br i1 %i.qy, label %.preheader, label %bb.az, !llvm.loop !142

bb.az:                                            ; preds = %bb.ay
  %i.qz = trunc i32 %i.qx to i8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next555
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !34
  %i.rc = add i32 %i.im, %i.pr
  %i.rd = lshr i32 %i.rc, %i.pm
  %i.re = mul i32 %i.rd, %i.po
  %i.rf = add i32 %i.re, %i.pn
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rg
  store i8 %i.qz, ptr %i.rh, align 1, !tbaa !44
  store i8 1, ptr %i.px, align 1, !tbaa !44
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader479
  %.2202 = phi i32 [ %i.qx, %bb.az ], [ %i.pl, %.preheader479 ] ; 2 uses
  %.not219 = icmp eq i64 %indvars.iv.next555, 0
  br i1 %.not219, label %bb.as, label %.preheader479, !llvm.loop !143

bb.bb:                                            ; preds = %bb.as
  %i.ri = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.2, ptr %i.ri, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.ri, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bc:                                            ; preds = %bb.as
  %i.rj = getelementptr inbounds nuw i8, ptr %.0209521, i64 16 ; 3 uses
  store i32 %.2202, ptr %i.rj, align 8, !tbaa !63
  %i.rk = load i32, ptr %i.p, align 4, !tbaa !115 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, 0
  br i1 %i.rl, label %bb.bd, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304: ; preds = %bb.bc
  %.pre.i306 = load i32, ptr %i.r, align 8, !tbaa !120
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rm = load i32, ptr %i.q, align 4, !tbaa !119
  %.not.i.not.i308 = icmp eq i32 %i.rm, 0
  br i1 %.not.i.not.i308, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 0, ptr %i.i, align 4, !tbaa !33
  %i.rn = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !109
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = call noundef i64 %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !126
  %.not12.i.i309 = icmp eq i64 %i.rr, 1
  br i1 %.not12.i.i309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rs = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.rs, align 16, !tbaa !34
  call void @__cxa_throw(ptr nonnull %i.rs, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rt = load i32, ptr %i.i, align 4, !tbaa !33  ; 3 uses
  store i32 %i.rt, ptr %i.r, align 8, !tbaa !120
  %i.ru = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow13.i.i310 = sub nuw nsw i8 8, %i.ru
  %i.rv = zext nneg i8 %narrow13.i.i310 to i32
  %i.rw = icmp eq i32 %i.rt, 255
  %i.rx = zext i1 %i.rw to i8
  store i8 %i.rx, ptr %i.s, align 8, !tbaa !121
  %i.ry = load i32, ptr %i.q, align 4, !tbaa !119
  %i.rz = add i32 %i.ry, -1
  store i32 %i.rz, ptr %i.q, align 4, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i32 0, ptr %i.r, align 8, !tbaa !120
  %i.sa = load i8, ptr %i.s, align 8, !tbaa !121, !range !28, !noundef !29
  %narrow.i.i311 = sub nuw nsw i8 8, %i.sa
  %i.sb = zext nneg i8 %narrow.i.i311 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !121
  %i.sc = add nsw i32 %i.sb, -1
end_hunk_0
