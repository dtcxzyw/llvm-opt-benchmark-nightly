Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  br i1 %epil.iter724.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %bb.ag, !llvm.loop !132

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bu, align 8, !tbaa !43
  store i8 0, ptr %i.jz, align 1, !tbaa !41
  %i.ka = load ptr, ptr %0, align 8, !tbaa !34
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 %i.bs
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cc, align 8, !tbaa !35 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %wide.load = load <2 x i32>, ptr %i.kd, align 4, !tbaa !35
  %wide.load658 = load <2 x i32>, ptr %i.ke, align 4, !tbaa !35
  %i.kf = zext <2 x i32> %wide.load to <2 x i64>
  %i.kg = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.kc, <2 x i64> %i.kf
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.kc, <2 x i64> %i.kg
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store <2 x ptr> %wide.gep, ptr %i.kh, align 8, !tbaa !36
  store <2 x ptr> %wide.gep659, ptr %i.ki, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !133

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
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !35
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !36
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !134

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.kp = trunc i64 %.sroa.0.0.copyload to i32
  %xtraiter730 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.kq = icmp samesign ult i32 %i.ef, 3
  br i1 %i.kq, label %.epil.preheader729, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter734 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.kr, align 8, !tbaa !36
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.ks = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.ks, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !0

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter735 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter735.next.3, %bb.ah ]
  %i.kt = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.ku = sub nuw i32 %spec.select, %i.kt
  %i.kv = shl nuw nsw i32 %i.ku, 1
  %i.kw = shl nuw i32 1, %i.kv
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !36
  %i.kz = zext nneg i32 %i.kw to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 0, i64 %i.kz, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.la = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.lb = sub nuw i32 %spec.select, %i.la
  %i.lc = shl nuw nsw i32 %i.lb, 1
  %i.ld = shl nuw i32 1, %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !36
  %i.lg = zext nneg i32 %i.ld to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lf, i8 0, i64 %i.lg, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.lh = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.li = sub nuw i32 %spec.select, %i.lh
  %i.lj = shl nuw nsw i32 %i.li, 1
  %i.lk = shl nuw i32 1, %i.lj
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !36
  %i.ln = zext nneg i32 %i.lk to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lm, i8 0, i64 %i.ln, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lo = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.lp = sub nuw i32 %spec.select, %i.lo
  %i.lq = shl nuw nsw i32 %i.lp, 1
  %i.lr = shl nuw i32 1, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !36
  %i.lu = zext nneg i32 %i.lr to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lt, i8 0, i64 %i.lu, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter735.next.3 = add i64 %niter735, 4         ; 2 uses
  %niter735.ncmp.3 = icmp eq i64 %niter735.next.3, %unroll_iter734
  br i1 %niter735.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod732.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod732.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader729

.epil.preheader729:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod733 = icmp ne i64 %xtraiter730, 0
  call void @llvm.assume(i1 %lcmp.mod733)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader729
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader729 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter731 = phi i64 [ 0, %.epil.preheader729 ], [ %epil.iter731.next, %bb.ai ]
  %i.lv = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lw = sub nuw i32 %spec.select, %i.lv
  %i.lx = shl nuw nsw i32 %i.lw, 1
  %i.ly = shl nuw i32 1, %i.lx
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !36
  %i.mb = zext nneg i32 %i.ly to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ma, i8 0, i64 %i.mb, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter731.next = add i64 %epil.iter731, 1   ; 2 uses
  %epil.iter731.cmp.not = icmp eq i64 %epil.iter731.next, %xtraiter730
  br i1 %epil.iter731.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !36
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !43
  store i8 0, ptr %i.md, align 1, !tbaa !41
  %i.me = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mf = getelementptr inbounds nuw [120 x i8], ptr %i.me, i64 %indvars.iv557
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !44
  %i.mi = load i32, ptr %i.cc, align 8, !tbaa !32 ; 2 uses
  %i.mj = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %.not541 = icmp eq i32 %i.mj, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %.not542 = icmp eq i32 %i.mi, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mw, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.ml = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mm = getelementptr inbounds nuw [120 x i8], ptr %i.ml, i64 %indvars.iv557
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 104
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !45
  %i.mp = load i32, ptr %i.cb, align 8, !tbaa !47
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !46
  %i.mr = add i32 %i.mq, %.0210524
  %i.ms = mul i32 %i.mr, %i.mh
  %i.mt = add i32 %i.ms, %i.mp
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %i.mo, i64 %i.mu
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aap, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mv, %.preheader480.lr.ph ], [ %i.aaq, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mw = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mw, %i.mj
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !136

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %12 = trunc nuw i64 %indvars.iv.next to i32     ; 5 uses
  %i.mx = lshr i32 %.0208522, %12                 ; 2 uses
  %i.my = lshr i32 %.0210524, %12                 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !36
  %notmask.i278 = shl nsw i32 -1, %12
  %i.nb = xor i32 %notmask.i278, -1               ; 2 uses
  %i.nc = add i32 %i.ee, %i.nb
  %i.nd = lshr i32 %i.nc, %12
  %i.ne = mul i32 %i.nd, %i.my
  %i.nf = add i32 %i.ne, %i.mx
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ng ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !41
  %i.nj = icmp eq i8 %i.ni, 1
  br i1 %i.nj, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !36
  %i.nm = add i32 %i.gi, %i.nb
  %i.nn = lshr i32 %i.nm, %12
  %i.no = mul i32 %i.nn, %i.my
  %i.np = add i32 %i.no, %i.mx
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nq ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !41
  %i.nt = icmp eq i8 %i.ns, 0
  br i1 %i.nt, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nu = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.nw = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i284 = icmp eq i32 %i.nw, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.nx = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !57
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = call noundef i64 %i.oa(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !123
  %.not12.i.i285 = icmp eq i64 %i.ob, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oc = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.oc, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.oc, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.od = load i32, ptr %i.k, align 4, !tbaa !35  ; 3 uses
  store i32 %i.od, ptr %i.r, align 8, !tbaa !63
  %i.oe = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.oe
  %i.of = zext nneg i8 %narrow13.i.i286 to i32
  %i.og = icmp eq i32 %i.od, 255
  %i.oh = zext i1 %i.og to i8
  store i8 %i.oh, ptr %i.s, align 8, !tbaa !64
  %i.oi = load i32, ptr %i.q, align 4, !tbaa !62
  %i.oj = add i32 %i.oi, -1
  store i32 %i.oj, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.ok = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i287 = sub nuw nsw i8 8, %i.ok
  %i.ol = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.om = add nsw i32 %i.ol, -1
  store i32 %i.om, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.on = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.on, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.on, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.of, %bb.ap ], [ %i.nu, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.od, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.oo = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.oo, ptr %i.p, align 4, !tbaa !60
  %i.op = lshr i32 %.ph438, %i.oo                 ; 2 uses
  %i.oq = trunc i32 %i.op to i1
  %i.or = trunc i32 %i.op to i8
  %i.os = and i8 %i.or, 1
  %i.ot = xor i8 %i.os, 1
  store i8 %i.ot, ptr %i.nh, align 1, !tbaa !41
  store i8 1, ptr %i.nr, align 1, !tbaa !41
  br i1 %i.oq, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not218, label %.preheader479, label %bb.aj, !llvm.loop !137

bb.as:                                            ; preds = %bb.ba
  %i.ou = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !152
  %i.ow = icmp ugt i32 %.2202, %i.ov
  br i1 %i.ow, label %bb.bb, label %bb.bc

.preheader479:                                    ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.ox = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.oy = lshr i32 %.0208522, %i.ox
  %i.oz = lshr i32 %.0210524, %i.ox
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !36
  %notmask.i291 = shl nsw i32 -1, %i.ox
  %i.pc = xor i32 %notmask.i291, -1
  %i.pd = add i32 %i.il, %i.pc
  %i.pe = lshr i32 %i.pd, %i.ox
  %i.pf = mul i32 %i.pe, %i.oz
  %i.pg = add i32 %i.pf, %i.oy
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !41
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  %i.pl = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pm = lshr i32 %.0208522, %i.pl               ; 2 uses
  %i.pn = lshr i32 %.0210524, %i.pl               ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next555
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !36
  %notmask.i292 = shl nsw i32 -1, %i.pl
  %i.pq = xor i32 %notmask.i292, -1               ; 2 uses
  %i.pr = add i32 %i.kp, %i.pq
  %i.ps = lshr i32 %i.pr, %i.pl
  %i.pt = mul i32 %i.ps, %i.pn
  %i.pu = add i32 %i.pt, %i.pm
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pv ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !41
  %i.py = icmp eq i8 %i.px, 0
  br i1 %i.py, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %.preheader479
  %.pre573 = load i32, ptr %i.p, align 4, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ay
  %i.pz = phi i32 [ %i.qt, %bb.ay ], [ %.pre573, %.preheader.preheader ] ; 2 uses
  %.1201518 = phi i32 [ %i.qw, %bb.ay ], [ %i.pk, %.preheader.preheader ]
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.at, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293: ; preds = %.preheader
  %.pre.i295 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ay

bb.at:                                            ; preds = %.preheader
  %i.qb = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i297 = icmp eq i32 %i.qb, 0
  br i1 %.not.i.not.i297, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.qc = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !57
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = call noundef i64 %i.qf(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !123
  %.not12.i.i298 = icmp eq i64 %i.qg, 1
  br i1 %.not12.i.i298, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.qh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.qi = load i32, ptr %i.j, align 4, !tbaa !35  ; 3 uses
  store i32 %i.qi, ptr %i.r, align 8, !tbaa !63
  %i.qj = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i299 = sub nuw nsw i8 8, %i.qj
  %i.qk = zext nneg i8 %narrow13.i.i299 to i32
  %i.ql = icmp eq i32 %i.qi, 255
  %i.qm = zext i1 %i.ql to i8
  store i8 %i.qm, ptr %i.s, align 8, !tbaa !64
  %i.qn = load i32, ptr %i.q, align 4, !tbaa !62
  %i.qo = add i32 %i.qn, -1
  store i32 %i.qo, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.qp = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i300 = sub nuw nsw i8 8, %i.qp
  %i.qq = zext nneg i8 %narrow.i.i300 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.qr = add nsw i32 %i.qq, -1
  store i32 %i.qr, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.qs = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.1, ptr %i.qs, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qs, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ay:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293, %bb.aw
  %.ph449 = phi i32 [ %i.qk, %bb.aw ], [ %i.pz, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %.ph450 = phi i32 [ %i.qi, %bb.aw ], [ %.pre.i295, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %i.qt = add nsw i32 %.ph449, -1                 ; 3 uses
  store i32 %i.qt, ptr %i.p, align 4, !tbaa !60
  %i.qu = lshr i32 %.ph450, %i.qt
  %i.qv = and i32 %i.qu, 1                        ; 2 uses
  %reass.sub = add i32 %.1201518, 1
  %i.qw = sub i32 %reass.sub, %i.qv               ; 3 uses
  %i.qx = icmp eq i32 %i.qv, 0
  br i1 %i.qx, label %.preheader, label %bb.az, !llvm.loop !138

bb.az:                                            ; preds = %bb.ay
  %i.qy = trunc i32 %i.qw to i8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next555
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !36
  %i.rb = add i32 %i.il, %i.pq
  %i.rc = lshr i32 %i.rb, %i.pl
  %i.rd = mul i32 %i.rc, %i.pn
  %i.re = add i32 %i.rd, %i.pm
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rf
  store i8 %i.qy, ptr %i.rg, align 1, !tbaa !41
  store i8 1, ptr %i.pw, align 1, !tbaa !41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader479
  %.2202 = phi i32 [ %i.qw, %bb.az ], [ %i.pk, %.preheader479 ] ; 2 uses
  %.not219 = icmp eq i64 %indvars.iv.next555, 0
  br i1 %.not219, label %bb.as, label %.preheader479, !llvm.loop !139

bb.bb:                                            ; preds = %bb.as
  %i.rh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.2, ptr %i.rh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bc:                                            ; preds = %bb.as
  %i.ri = getelementptr inbounds nuw i8, ptr %.0209521, i64 16 ; 3 uses
  store i32 %.2202, ptr %i.ri, align 8, !tbaa !49
  %i.rj = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.bd, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304: ; preds = %bb.bc
  %.pre.i306 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rl = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i308 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.not.i308, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 0, ptr %i.i, align 4, !tbaa !35
  %i.rm = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !57
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = call noundef i64 %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !123
  %.not12.i.i309 = icmp eq i64 %i.rq, 1
  br i1 %.not12.i.i309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rr = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.rr, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rr, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rs = load i32, ptr %i.i, align 4, !tbaa !35  ; 3 uses
  store i32 %i.rs, ptr %i.r, align 8, !tbaa !63
  %i.rt = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i310 = sub nuw nsw i8 8, %i.rt
  %i.ru = zext nneg i8 %narrow13.i.i310 to i32
  %i.rv = icmp eq i32 %i.rs, 255
  %i.rw = zext i1 %i.rv to i8
  store i8 %i.rw, ptr %i.s, align 8, !tbaa !64
  %i.rx = load i32, ptr %i.q, align 4, !tbaa !62
  %i.ry = add i32 %i.rx, -1
  store i32 %i.ry, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.rz = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i311 = sub nuw nsw i8 8, %i.rz
  %i.sa = zext nneg i8 %narrow.i.i311 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.sb = add nsw i32 %i.sa, -1
end_hunk_0
