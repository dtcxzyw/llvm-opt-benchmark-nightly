Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_resolution?download=true
inline.NumInlined: 197
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local10resolution14finalize_allocEPNS0_10codestreamERKNS_4rectES6_jjNS_5pointES7_PNS0_9tile_compEPS1_:bb.a
  %i.jw = getelementptr inbounds nuw [104 x i8], ptr %i.jv, i64 %.0264318.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jw, i8 0, i64 98, i1 false)
  %i.jx = add nuw i64 %.0264318.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph.epil, !llvm.loop !120

.loopexit.loopexit:                               ; preds = %.lr.ph.epil, %.loopexit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.hz, align 8, !tbaa !138
  %.pre375 = load i32, ptr %i.il, align 4, !tbaa !139
  %.pre377 = load i32, ptr %i.iq, align 4, !tbaa !136
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit
  %i.jy = phi i32 [ %.pre377, %.loopexit.loopexit ], [ %i.is, %bb.u ], [ 0, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit ]
  %i.jz = phi i32 [ %.pre375, %.loopexit.loopexit ], [ %i.ie, %bb.u ], [ %i.ie, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit ]
  %i.ka = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.ic, %bb.u ], [ %i.ic, %_ZNK4ojph5local9param_cod21get_log_precinct_sizeEj.exit ]
  %i.kb = shl nsw i32 -1, %i.ka
  %i.kc = and i32 %i.kb, %i.bp
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.ke = shl nsw i32 -1, %i.jz
  %i.kf = and i32 %i.ke, %i.br
  %i.kg = load ptr, ptr %8, align 8, !tbaa !141
  %.sroa.0.0.copyload.i = load i64, ptr %i.kg, align 8 ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.557.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.557.0.extract.trunc = trunc nuw i64 %.sroa.557.0.extract.shift to i32
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.not347 = icmp eq i32 %i.jy, 0
  br i1 %.not347, label %.preheader311.a, label %.lr.ph325

.lr.ph325:                                        ; preds = %.loopexit
  %i.ki = load ptr, ptr %i.ib, align 8, !tbaa !87
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre378 = load i32, ptr %i.ia, align 8, !tbaa !86
  br label %bb.v

.preheader311.a:                                  ; preds = %._crit_edge, %.loopexit
  %i.kk = load ptr, ptr %i.cg, align 8, !tbaa !79 ; 3 uses
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !135, !range !84, !noundef !85
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.aa, label %bb.z

bb.v:                                             ; preds = %.lr.ph325, %._crit_edge
  %i.kn = phi i32 [ %.pre378, %.lr.ph325 ], [ %i.kt, %._crit_edge ]
  %.0262323 = phi i32 [ 0, %.lr.ph325 ], [ %i.ku, %._crit_edge ] ; 2 uses
  %.0263322 = phi ptr [ %i.ki, %.lr.ph325 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.not348 = icmp eq i32 %i.kn, 0
  br i1 %.not348, label %._crit_edge, label %.lr.ph321

.lr.ph321:                                        ; preds = %bb.v
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !139
  %i.kp = shl i32 %.0262323, %i.ko
  %i.kq = add i32 %i.kp, %i.kf
  %i.kr = mul i32 %i.kq, %.sroa.6.0.extract.trunc
  %i.ks = call i32 @llvm.umax.i32(i32 %i.kr, i32 %.sroa.557.0.extract.trunc)
  %.sroa.6.0.insert.ext = zext i32 %i.ks to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit, %bb.v
  %i.kt = phi i32 [ 0, %bb.v ], [ %i.lq, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ]
  %.1.lcssa = phi ptr [ %.0263322, %bb.v ], [ %i.lp, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ]
  %i.ku = add nuw i32 %.0262323, 1                ; 2 uses
  %i.kv = load i32, ptr %i.kh, align 4, !tbaa !136
  %i.kw = icmp ult i32 %i.ku, %i.kv
  br i1 %i.kw, label %bb.v, label %.preheader311.a, !llvm.loop !121

bb.w:                                             ; preds = %.lr.ph321, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit
  %.0261320 = phi i32 [ 0, %.lr.ph321 ], [ %i.lo, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ] ; 2 uses
  %.1319 = phi ptr [ %.0263322, %.lr.ph321 ], [ %i.lp, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ] ; 7 uses
  %i.kx = load i32, ptr %i.hz, align 8, !tbaa !138
  %i.ky = shl i32 %.0261320, %i.kx
  %i.kz = add i32 %i.ky, %i.kc
  %i.la = mul i32 %i.kz, %.sroa.0244.0.extract.trunc
  %i.lb = call i32 @llvm.umax.i32(i32 %i.la, i32 %.sroa.055.0.extract.trunc)
  %i.lc = getelementptr inbounds nuw i8, ptr %.1319, i64 8
  %.sroa.0295.0.insert.ext = zext i32 %i.lb to i64
  %.sroa.0295.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0295.0.insert.ext
  store i64 %.sroa.0295.0.insert.insert, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.cg, align 8, !tbaa !79
  %i.le = getelementptr inbounds nuw i8, ptr %.1319, i64 80
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !144
  %i.lf = load i8, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  switch i8 %i.lf, label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit [
    i8 1, label %bb.x
    i8 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.lg = load i8, ptr %i.hl, align 4, !tbaa !61
  %i.lh = lshr i8 %i.lg, 1
  %.lobit.a = and i8 %i.lh, 1
  br label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit

_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit: ; preds = %bb.w, %bb.x
  %.0.i292 = phi i8 [ %.lobit.a, %bb.x ], [ 0, %bb.w ]
  %i.li = getelementptr inbounds nuw i8, ptr %.1319, i64 96
  store i8 %.0.i292, ptr %i.li, align 8, !tbaa !145
  switch i8 %i.lf, label %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit [
    i8 1, label %bb.y
    i8 3, label %bb.y
  ]

bb.y:                                             ; preds = %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit, %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit
  %i.lj = load i8, ptr %i.hl, align 4, !tbaa !61
  %i.lk = lshr i8 %i.lj, 2
  %.lobit306 = and i8 %i.lk, 1
  br label %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit

_ZNK4ojph5local9param_cod15packets_use_ephEv.exit: ; preds = %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit, %bb.y
  %.0.i293 = phi i8 [ %.lobit306, %bb.y ], [ 0, %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.1319, i64 97
  store i8 %.0.i293, ptr %i.ll, align 1, !tbaa !146
  %i.lm = load ptr, ptr %i.kj, align 8, !tbaa !147
  store ptr %i.lm, ptr %.1319, align 8, !tbaa !148
  %i.ln = getelementptr inbounds nuw i8, ptr %.1319, i64 88
  store ptr null, ptr %i.ln, align 8, !tbaa !149
  %i.lo = add nuw i32 %.0261320, 1                ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.1319, i64 104 ; 2 uses
  %i.lq = load i32, ptr %i.ia, align 8, !tbaa !86 ; 2 uses
  %i.lr = icmp ult i32 %i.lo, %i.lq
  br i1 %i.lr, label %bb.w, label %._crit_edge, !llvm.loop !122

.lr.ph331.preheader:                              ; preds = %bb.ag
  %i.ls = shl nuw i32 1, %i.nb                    ; 2 uses
  %i.lt = add i32 %i.mz, 2                        ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.lt, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %i.lu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter429 = and i64 %i.lu, 3                 ; 3 uses
  %i.lv = icmp ult i32 %i.lt, 5
  br i1 %i.lv, label %.lr.ph331.epil.preheader, label %.lr.ph331.preheader.new

.lr.ph331.preheader.new:                          ; preds = %.lr.ph331.preheader
  %unroll_iter433 = and i64 %i.lu, -4
  br label %.lr.ph331

bb.z:                                             ; preds = %.preheader311.a
  %i.lw = load ptr, ptr %i.ib, align 8, !tbaa !87
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.kk, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.lw)
  %.pre379 = load ptr, ptr %i.cg, align 8, !tbaa !79
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader311.a, %bb.z
  %i.lx = phi ptr [ %i.kk, %.preheader311.a ], [ %.pre379, %bb.z ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 120 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !135, !range !84, !noundef !85
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mb = load ptr, ptr %i.ib, align 8, !tbaa !87
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.ly, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.mb)
  %.pre380 = load ptr, ptr %i.cg, align 8, !tbaa !79
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mc = phi ptr [ %.pre380, %bb.ab ], [ %i.lx, %bb.aa ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 240 ; 2 uses
  %i.me = load i8, ptr %i.md, align 8, !tbaa !135, !range !84, !noundef !85
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mg = load ptr, ptr %i.ib, align 8, !tbaa !87
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.mg)
  %.pre381 = load ptr, ptr %i.cg, align 8, !tbaa !79
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.mh = phi ptr [ %.pre381, %bb.ad ], [ %i.mc, %bb.ac ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 360 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !135, !range !84, !noundef !85
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ml = load ptr, ptr %i.ib, align 8, !tbaa !87
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.mi, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.ml)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.mm = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !150
  %i.mo = zext i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.mq = load i8, ptr %i.mp, align 2, !tbaa !151
  %i.mr = zext i8 %i.mq to i64
  %.sroa.2.0.insert.ext.i.i = shl nuw nsw i64 %i.mr, 32
  %.sroa.0.0.insert.ext.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %i.mo
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 8589934594 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw nsw i64 %.sroa.5.0.extract.shift to i32
  %i.ms = load i32, ptr %i.bm, align 8, !tbaa !77 ; 2 uses
  %i.mt = and i32 %i.ms, 1
  %i.mu = load i32, ptr %i.hz, align 8, !tbaa !138
  %i.mv = sub i32 %i.mu, %i.mt                    ; 2 uses
  store i32 %i.mv, ptr %i.hz, align 8, !tbaa !138
  %13 = shl i32 %i.ms, 30
  %14 = ashr i32 %13, 31
  %i.mw = load i32, ptr %i.kd, align 4, !tbaa !139
  %15 = add i32 %i.mw, %14                        ; 2 uses
  store i32 %15, ptr %i.kd, align 4, !tbaa !139
  %i.mx = call i32 @llvm.usub.sat.i32(i32 %i.mv, i32 %.sroa.0.0.extract.trunc)
  %i.my = call i32 @llvm.usub.sat.i32(i32 %15, i32 %.sroa.5.0.extract.trunc)
  %i.mz = call i32 @llvm.umax.i32(i32 %i.mx, i32 %i.my) ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.nb = shl i32 %i.mz, 1                        ; 2 uses
  %i.nc = shl i32 4, %i.nb
  %i.nd = or disjoint i32 %i.nc, 2
  %i.ne = udiv i32 %i.nd, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !89
  %i.ng = add i32 %i.mz, 1                        ; 2 uses
  store i32 %i.ng, ptr %i.na, align 8, !tbaa !152
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  store i32 0, ptr %i.nh, align 8, !tbaa !59
  %.not286327 = icmp eq i32 %i.ng, 0
  br i1 %.not286327, label %._crit_edge332, label %.lr.ph331.preheader

._crit_edge332.loopexit.unr-lcssa:                ; preds = %.lr.ph331
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %._crit_edge332, label %.lr.ph331.epil.preheader

.lr.ph331.epil.preheader:                         ; preds = %._crit_edge332.loopexit.unr-lcssa, %.lr.ph331.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph331.preheader ], [ %i.ob, %._crit_edge332.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph331.preheader ], [ %indvars.iv.next.3, %._crit_edge332.loopexit.unr-lcssa ]
  %.0259328.epil.init = phi i32 [ %i.ls, %.lr.ph331.preheader ], [ %i.oe, %._crit_edge332.loopexit.unr-lcssa ]
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  call void @llvm.assume(i1 %lcmp.mod432)
  br label %.lr.ph331.epil

.lr.ph331.epil:                                   ; preds = %.lr.ph331.epil, %.lr.ph331.epil.preheader
  %i.ni = phi i32 [ %.epil.init, %.lr.ph331.epil.preheader ], [ %i.nj, %.lr.ph331.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph331.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph331.epil ] ; 2 uses
  %.0259328.epil = phi i32 [ %.0259328.epil.init, %.lr.ph331.epil.preheader ], [ %i.nl, %.lr.ph331.epil ] ; 2 uses
  %epil.iter430 = phi i64 [ 0, %.lr.ph331.epil.preheader ], [ %epil.iter430.next, %.lr.ph331.epil ]
  %i.nj = add i32 %i.ni, %.0259328.epil           ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.epil
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.nl = lshr i32 %.0259328.epil, 2
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %._crit_edge332, label %.lr.ph331.epil, !llvm.loop !123

._crit_edge332:                                   ; preds = %._crit_edge332.loopexit.unr-lcssa, %.lr.ph331.epil, %bb.ag
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.nm, align 8
  %i.nn = load i8, ptr %i.u, align 2, !tbaa !72, !range !84, !noundef !85
  %i.no = icmp eq i8 %i.nn, 0
  br i1 %i.no, label %bb.ah, label %bb.ap

.lr.ph331:                                        ; preds = %.lr.ph331, %.lr.ph331.preheader.new
  %i.np = phi i32 [ 0, %.lr.ph331.preheader.new ], [ %i.ob, %.lr.ph331 ]
  %indvars.iv = phi i64 [ 1, %.lr.ph331.preheader.new ], [ %indvars.iv.next.3, %.lr.ph331 ] ; 5 uses
  %.0259328 = phi i32 [ %i.ls, %.lr.ph331.preheader.new ], [ %i.oe, %.lr.ph331 ] ; 5 uses
  %niter434 = phi i64 [ 0, %.lr.ph331.preheader.new ], [ %niter434.next.3, %.lr.ph331 ]
  %i.nq = add i32 %i.np, %.0259328                ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !59
  %i.ns = lshr i32 %.0259328, 2
  %i.nt = add i32 %i.nq, %i.ns                    ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  store i32 %i.nt, ptr %i.nv, align 4, !tbaa !59
  %i.nw = lshr i32 %.0259328, 4
  %i.nx = add i32 %i.nt, %i.nw                    ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i32 %i.nx, ptr %i.nz, align 4, !tbaa !59
  %i.oa = lshr i32 %.0259328, 6
  %i.ob = add i32 %i.nx, %i.oa                    ; 3 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  store i32 %i.ob, ptr %i.od, align 4, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.oe = lshr i32 %.0259328, 8                   ; 2 uses
  %niter434.next.3 = add nuw i64 %niter434, 4     ; 2 uses
  %niter434.ncmp.3 = icmp eq i64 %niter434.next.3, %unroll_iter433
  br i1 %niter434.ncmp.3, label %._crit_edge332.loopexit.unr-lcssa, label %.lr.ph331, !llvm.loop !124

bb.ah:                                            ; preds = %._crit_edge332
  %i.of = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 3 uses
  store ptr %i.of, ptr %i.al, align 8, !tbaa !76
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 2
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !64
  %i.oi = lshr i16 %i.oh, 12
  %i.oj = trunc nuw nsw i16 %i.oi to i8
  %i.ok = and i8 %i.oj, 1
  store i8 %i.ok, ptr %0, align 8, !tbaa !90
  %i.ol = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !63  ; 5 uses
  %i.on = zext i8 %i.om to i32                    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !91
  %i.op = add nuw nsw i32 %i.on, 2
  %i.oq = zext nneg i32 %i.op to i64              ; 2 uses
  %i.or = mul nuw nsw i64 %i.oq, 24
  %i.os = lshr i64 %i.or, 4
  %i.ot = mul nuw nsw i64 %i.os, 24
  %i.ou = add nuw nsw i64 %i.ot, 15               ; 2 uses
  %i.ov = load ptr, ptr %i.bx, align 8, !tbaa !78 ; 2 uses
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = add nsw i64 %i.ow, 7
  %i.oy = and i64 %i.ox, -8
  %i.oz = inttoptr i64 %i.oy to ptr
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ou
  store ptr %i.pa, ptr %i.bx, align 8, !tbaa !78
  %i.pb = load i64, ptr %i.bw, align 8, !tbaa !58
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.oz, ptr %i.pc, align 8, !tbaa !153
  %i.pd = shl nuw nsw i64 %i.oq, 4
  %i.pe = or disjoint i64 %i.pd, 15               ; 2 uses
  %i.pf = load ptr, ptr %i.bx, align 8, !tbaa !78 ; 2 uses
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = add nsw i64 %i.pg, 7
  %i.pi = and i64 %i.ph, -8
  %i.pj = inttoptr i64 %i.pi to ptr               ; 7 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pe
  store ptr %i.pk, ptr %i.bx, align 8, !tbaa !78
  %i.pl = add nuw nsw i64 %i.ou, %i.pe
  %i.pm = sub i64 %i.pb, %i.pl
  store i64 %i.pm, ptr %i.bw, align 8, !tbaa !58
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.pj, ptr %i.pn, align 8, !tbaa !92
  %i.po = zext i8 %i.om to i64                    ; 2 uses
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %i.po ; 5 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !93
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !94
  %.not349 = icmp eq i8 %i.om, 0
  %.pre382 = load ptr, ptr %i.pc, align 8, !tbaa !153 ; 6 uses
  br i1 %.not349, label %._crit_edge336, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.ah
  %wide.trip.count364 = zext i8 %i.om to i64      ; 2 uses
  %xtraiter435 = and i64 %wide.trip.count364, 3   ; 3 uses
  %i.pt = icmp ult i8 %i.om, 4
  br i1 %i.pt, label %.epil.preheader, label %.lr.ph335.new

.lr.ph335.new:                                    ; preds = %.lr.ph335
  %unroll_iter439 = and i64 %wide.trip.count364, 252
  br label %bb.aj

._crit_edge336.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod437.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod437.not, label %._crit_edge336, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge336.loopexit.unr-lcssa, %.lr.ph335
  %indvars.iv361.epil.init = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next362.3, %._crit_edge336.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %indvars.iv361.epil = phi i64 [ %indvars.iv361.epil.init, %.epil.preheader ], [ %indvars.iv.next362.epil, %bb.ai ] ; 3 uses
  %epil.iter436 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter436.next, %bb.ai ]
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pj, i64 %indvars.iv361.epil ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store i8 0, ptr %i.pv, align 8, !tbaa !96
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %.pre382, i64 %indvars.iv361.epil
  store ptr %i.pw, ptr %i.pu, align 8, !tbaa !97
  %indvars.iv.next362.epil = add nuw nsw i64 %indvars.iv361.epil, 1
  %epil.iter436.next = add i64 %epil.iter436, 1   ; 2 uses
  %epil.iter436.cmp.not = icmp eq i64 %epil.iter436.next, %xtraiter435
  br i1 %epil.iter436.cmp.not, label %._crit_edge336, label %bb.ai, !llvm.loop !125

._crit_edge336:                                   ; preds = %._crit_edge336.loopexit.unr-lcssa, %bb.ai, %bb.ah
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i8 0, ptr %i.px, align 8, !tbaa !96
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %.pre382, i64 %i.po ; 2 uses
  store ptr %i.py, ptr %i.pp, align 8, !tbaa !97
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  store i8 0, ptr %i.pz, align 8, !tbaa !96
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  store ptr %i.qa, ptr %i.pr, align 8, !tbaa !97
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.qc = call noundef ptr @_ZNK4ojph5local9param_qcd7get_qccEj(ptr noundef nonnull align 8 dereferenceable(248) %i.qb, i32 noundef %4)
  %i.qd = call noundef i32 @_ZNK4ojph5local9param_qcd17propose_precisionEPKNS0_9param_codE(ptr noundef nonnull align 8 dereferenceable(248) %i.qc, ptr noundef nonnull %i.g)
  %i.qe = load i32, ptr %i.bs, align 4, !tbaa !55
  %i.qf = add i32 %i.qe, 1                        ; 2 uses
  %i.qg = load i8, ptr %0, align 8, !tbaa !90, !range !84, !noundef !85
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.ak, label %.preheader310

.preheader310:                                    ; preds = %._crit_edge336
  %i.qi = load i32, ptr %i.oo, align 4, !tbaa !91
  %.not350 = icmp eq i32 %i.qi, 0
  %.pre402.a = zext i32 %i.qf to i64              ; 5 uses
  br i1 %.not350, label %.preheader310.._crit_edge339_crit_edge, label %.lr.ph338

.preheader310.._crit_edge339_crit_edge:           ; preds = %.preheader310
  %.pre404 = shl nuw nsw i64 %.pre402.a, 2
  %.pre406 = add nuw nsw i64 %.pre404, 60
  %.pre408 = and i64 %.pre406, 34359738304
  %.pre410 = add nuw nsw i64 %.pre408, 131
  br label %._crit_edge339

.lr.ph338:                                        ; preds = %.preheader310
  %i.qj = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ql = shl nuw nsw i64 %.pre402.a, 2
end_hunk_0
