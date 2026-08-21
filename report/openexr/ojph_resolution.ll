inline.NumInlined: 197
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ojph5local10resolution14finalize_allocEPNS0_10codestreamERKNS_4rectES6_jjNS_5pointES7_PNS0_9tile_compEPS1_:bb.a
  %i.in = add i32 %i.di, -1
  %i.io = add i32 %i.in, %i.im
  %i.ip = lshr i32 %i.io, %i.ie
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ir = lshr i32 %i.br, %i.ie
  %i.is = sub i32 %i.ip, %i.ir                    ; 3 uses
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !93
  %i.it = zext i32 %i.ik to i64
  %i.iu = zext i32 %i.is to i64
  %i.iv = mul nuw i64 %i.iu, %i.it                ; 5 uses
  %i.iw = mul i64 %i.iv, 104
  %i.ix = lshr i64 %i.iw, 6
  %i.iy = mul i64 %i.ix, 104
  %i.iz = add i64 %i.iy, 15                       ; 2 uses
  %i.ja = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = add nsw i64 %i.jb, 7
  %i.jd = and i64 %i.jc, -8
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iz
  store ptr %i.jf, ptr %i.bx, align 8, !tbaa !83
  %i.jg = load i64, ptr %i.bw, align 8, !tbaa !57
  %i.jh = sub i64 %i.jg, %i.iz
  store i64 %i.jh, ptr %i.bw, align 8, !tbaa !57
  store ptr %i.je, ptr %i.ib, align 8, !tbaa !94
  %.not346 = icmp eq i64 %i.iv, 0
  br i1 %.not346, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter = and i64 %i.iv, 3                    ; 3 uses
  %i.ji = icmp ult i64 %i.iv, 4
  br i1 %i.ji, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.iv, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0264318 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ju, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.jj = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.jk = getelementptr inbounds nuw [104 x i8], ptr %i.jj, i64 %.0264318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jk, i8 0, i64 98, i1 false)
  %i.jl = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.jm = getelementptr inbounds nuw [104 x i8], ptr %i.jl, i64 %.0264318
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jn, i8 0, i64 98, i1 false)
  %i.jo = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.jp = getelementptr inbounds nuw [104 x i8], ptr %i.jo, i64 %.0264318
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jq, i8 0, i64 98, i1 false)
  %i.jr = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.js = getelementptr inbounds nuw [104 x i8], ptr %i.jr, i64 %.0264318
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jt, i8 0, i64 98, i1 false)
  %i.ju = add nuw i64 %.0264318, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !95

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0264318.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ju, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod428 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod428)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0264318.epil = phi i64 [ %i.jx, %.lr.ph.epil ], [ %.0264318.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.jv = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.jw = getelementptr inbounds nuw [104 x i8], ptr %i.jv, i64 %.0264318.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98) %i.jw, i8 0, i64 98, i1 false)
  %i.jx = add nuw i64 %.0264318.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph.epil, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %.lr.ph.epil, %.loopexit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.hz, align 8, !tbaa !99
  %.pre375 = load i32, ptr %i.il, align 4, !tbaa !100
  %.pre377 = load i32, ptr %i.iq, align 4, !tbaa !93
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
  %i.kg = load ptr, ptr %8, align 8, !tbaa !101
  %.sroa.0.0.copyload.i = load i64, ptr %i.kg, align 8 ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %.sroa.557.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.557.0.extract.trunc = trunc nuw i64 %.sroa.557.0.extract.shift to i32
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.not347 = icmp eq i32 %i.jy, 0
  br i1 %.not347, label %.preheader311, label %.lr.ph325

.lr.ph325:                                        ; preds = %.loopexit
  %i.ki = load ptr, ptr %i.ib, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre378 = load i32, ptr %i.ia, align 8, !tbaa !92
  br label %bb.v

.preheader311:                                    ; preds = %._crit_edge, %.loopexit
  %i.kk = load ptr, ptr %i.cg, align 8, !tbaa !84 ; 3 uses
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !85, !range !90, !noundef !91
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.aa, label %bb.z

bb.v:                                             ; preds = %.lr.ph325, %._crit_edge
  %i.kn = phi i32 [ %.pre378, %.lr.ph325 ], [ %i.kt, %._crit_edge ]
  %.0262323 = phi i32 [ 0, %.lr.ph325 ], [ %i.ku, %._crit_edge ] ; 2 uses
  %.0263322 = phi ptr [ %i.ki, %.lr.ph325 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.not348 = icmp eq i32 %i.kn, 0
  br i1 %.not348, label %._crit_edge, label %.lr.ph321

.lr.ph321:                                        ; preds = %bb.v
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !100
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
  %i.kv = load i32, ptr %i.kh, align 4, !tbaa !93
  %i.kw = icmp ult i32 %i.ku, %i.kv
  br i1 %i.kw, label %bb.v, label %.preheader311, !llvm.loop !103

bb.w:                                             ; preds = %.lr.ph321, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit
  %.0261320 = phi i32 [ 0, %.lr.ph321 ], [ %i.lo, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ] ; 2 uses
  %.1319 = phi ptr [ %.0263322, %.lr.ph321 ], [ %i.lp, %_ZNK4ojph5local9param_cod15packets_use_ephEv.exit ] ; 7 uses
  %i.kx = load i32, ptr %i.hz, align 8, !tbaa !99
  %i.ky = shl i32 %.0261320, %i.kx
  %i.kz = add i32 %i.ky, %i.kc
  %i.la = mul i32 %i.kz, %.sroa.0244.0.extract.trunc
  %i.lb = call i32 @llvm.umax.i32(i32 %i.la, i32 %.sroa.055.0.extract.trunc)
  %i.lc = getelementptr inbounds nuw i8, ptr %.1319, i64 8
  %.sroa.0295.0.insert.ext = zext i32 %i.lb to i64
  %.sroa.0295.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0295.0.insert.ext
  store i64 %.sroa.0295.0.insert.insert, ptr %i.lc, align 8
  %i.ld = load ptr, ptr %i.cg, align 8, !tbaa !84
  %i.le = getelementptr inbounds nuw i8, ptr %.1319, i64 80
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !104
  %i.lf = load i8, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  switch i8 %i.lf, label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit [
    i8 1, label %bb.x
    i8 3, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.lg = load i8, ptr %i.hl, align 4, !tbaa !61
  %i.lh = lshr i8 %i.lg, 1
  %.lobit = and i8 %i.lh, 1
  br label %_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit

_ZNK4ojph5local9param_cod19packets_may_use_sopEv.exit: ; preds = %bb.w, %bb.x
  %.0.i292 = phi i8 [ %.lobit, %bb.x ], [ 0, %bb.w ]
  %i.li = getelementptr inbounds nuw i8, ptr %.1319, i64 96
  store i8 %.0.i292, ptr %i.li, align 8, !tbaa !107
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
  store i8 %.0.i293, ptr %i.ll, align 1, !tbaa !108
  %i.lm = load ptr, ptr %i.kj, align 8, !tbaa !109
  store ptr %i.lm, ptr %.1319, align 8, !tbaa !110
  %i.ln = getelementptr inbounds nuw i8, ptr %.1319, i64 88
  store ptr null, ptr %i.ln, align 8, !tbaa !111
  %i.lo = add nuw i32 %.0261320, 1                ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.1319, i64 104 ; 2 uses
  %i.lq = load i32, ptr %i.ia, align 8, !tbaa !92 ; 2 uses
  %i.lr = icmp ult i32 %i.lo, %i.lq
  br i1 %i.lr, label %bb.w, label %._crit_edge, !llvm.loop !112

.lr.ph331.preheader:                              ; preds = %bb.ag
  %i.ls = shl nuw i32 1, %i.ne                    ; 2 uses
  %i.lt = add i32 %i.nc, 2                        ; 2 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.lt, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %i.lu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter429 = and i64 %i.lu, 3                 ; 3 uses
  %i.lv = icmp ult i32 %i.lt, 5
  br i1 %i.lv, label %.lr.ph331.epil.preheader, label %.lr.ph331.preheader.new

.lr.ph331.preheader.new:                          ; preds = %.lr.ph331.preheader
  %unroll_iter433 = and i64 %i.lu, -4
  br label %.lr.ph331

bb.z:                                             ; preds = %.preheader311
  %i.lw = load ptr, ptr %i.ib, align 8, !tbaa !94
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.kk, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.lw)
  %.pre379 = load ptr, ptr %i.cg, align 8, !tbaa !84
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader311, %bb.z
  %i.lx = phi ptr [ %i.kk, %.preheader311 ], [ %.pre379, %bb.z ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 120 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !85, !range !90, !noundef !91
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mb = load ptr, ptr %i.ib, align 8, !tbaa !94
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.ly, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.mb)
  %.pre380 = load ptr, ptr %i.cg, align 8, !tbaa !84
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mc = phi ptr [ %.pre380, %bb.ab ], [ %i.lx, %bb.aa ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 240 ; 2 uses
  %i.me = load i8, ptr %i.md, align 8, !tbaa !85, !range !90, !noundef !91
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mg = load ptr, ptr %i.ib, align 8, !tbaa !94
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.md, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.mg)
  %.pre381 = load ptr, ptr %i.cg, align 8, !tbaa !84
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.mh = phi ptr [ %.pre381, %bb.ad ], [ %i.mc, %bb.ac ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 360 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !85, !range !90, !noundef !91
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ml = load ptr, ptr %i.ib, align 8, !tbaa !94
  call void @_ZN4ojph5local7subband14get_cb_indicesERKNS_4sizeEPNS0_8precinctE(ptr noundef nonnull align 8 dereferenceable(120) %i.mi, ptr noundef nonnull align 4 dereferenceable(8) %i.ia, ptr noundef %i.ml)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.mm = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !113
  %i.mo = zext i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.mq = load i8, ptr %i.mp, align 2, !tbaa !114
  %i.mr = zext i8 %i.mq to i64
  %.sroa.2.0.insert.ext.i.i = shl nuw nsw i64 %i.mr, 32
  %.sroa.0.0.insert.ext.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %i.mo
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 8589934594 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw nsw i64 %.sroa.5.0.extract.shift to i32
  %i.ms = load i32, ptr %i.bm, align 8, !tbaa !82 ; 2 uses
  %i.mt = and i32 %i.ms, 1
  %i.mu = load i32, ptr %i.hz, align 8, !tbaa !99
  %i.mv = sub i32 %i.mu, %i.mt                    ; 2 uses
  store i32 %i.mv, ptr %i.hz, align 8, !tbaa !99
  %i.mw = shl i32 %i.ms, 30
  %i.mx = ashr i32 %i.mw, 31
  %i.my = load i32, ptr %i.kd, align 4, !tbaa !100
  %i.mz = add i32 %i.my, %i.mx                    ; 2 uses
  store i32 %i.mz, ptr %i.kd, align 4, !tbaa !100
  %i.na = call i32 @llvm.usub.sat.i32(i32 %i.mv, i32 %.sroa.0.0.extract.trunc)
  %i.nb = call i32 @llvm.usub.sat.i32(i32 %i.mz, i32 %.sroa.5.0.extract.trunc)
  %i.nc = call i32 @llvm.umax.i32(i32 %i.na, i32 %i.nb) ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ne = shl i32 %i.nc, 1                        ; 2 uses
  %i.nf = shl i32 4, %i.ne
  %i.ng = or disjoint i32 %i.nf, 2
  %i.nh = udiv i32 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !115
  %i.nj = add i32 %i.nc, 1                        ; 2 uses
  store i32 %i.nj, ptr %i.nd, align 8, !tbaa !116
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  store i32 0, ptr %i.nk, align 8, !tbaa !60
  %.not286327 = icmp eq i32 %i.nj, 0
  br i1 %.not286327, label %._crit_edge332, label %.lr.ph331.preheader

._crit_edge332.loopexit.unr-lcssa:                ; preds = %.lr.ph331
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %._crit_edge332, label %.lr.ph331.epil.preheader

.lr.ph331.epil.preheader:                         ; preds = %._crit_edge332.loopexit.unr-lcssa, %.lr.ph331.preheader
  %.epil.init = phi i32 [ 0, %.lr.ph331.preheader ], [ %i.oe, %._crit_edge332.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph331.preheader ], [ %indvars.iv.next.3, %._crit_edge332.loopexit.unr-lcssa ]
  %.0259328.epil.init = phi i32 [ %i.ls, %.lr.ph331.preheader ], [ %i.oh, %._crit_edge332.loopexit.unr-lcssa ]
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  call void @llvm.assume(i1 %lcmp.mod432)
  br label %.lr.ph331.epil

.lr.ph331.epil:                                   ; preds = %.lr.ph331.epil, %.lr.ph331.epil.preheader
  %i.nl = phi i32 [ %.epil.init, %.lr.ph331.epil.preheader ], [ %i.nm, %.lr.ph331.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph331.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph331.epil ] ; 2 uses
  %.0259328.epil = phi i32 [ %.0259328.epil.init, %.lr.ph331.epil.preheader ], [ %i.no, %.lr.ph331.epil ] ; 2 uses
  %epil.iter430 = phi i64 [ 0, %.lr.ph331.epil.preheader ], [ %epil.iter430.next, %.lr.ph331.epil ]
  %i.nm = add i32 %i.nl, %.0259328.epil           ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv.epil
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !60
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.no = lshr i32 %.0259328.epil, 2
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %._crit_edge332, label %.lr.ph331.epil, !llvm.loop !117

._crit_edge332:                                   ; preds = %._crit_edge332.loopexit.unr-lcssa, %.lr.ph331.epil, %bb.ag
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.np, align 8
  %i.nq = load i8, ptr %i.u, align 2, !tbaa !73, !range !90, !noundef !91
  %i.nr = icmp eq i8 %i.nq, 0
  br i1 %i.nr, label %bb.ah, label %bb.ap

.lr.ph331:                                        ; preds = %.lr.ph331, %.lr.ph331.preheader.new
  %i.ns = phi i32 [ 0, %.lr.ph331.preheader.new ], [ %i.oe, %.lr.ph331 ]
  %indvars.iv = phi i64 [ 1, %.lr.ph331.preheader.new ], [ %indvars.iv.next.3, %.lr.ph331 ] ; 5 uses
  %.0259328 = phi i32 [ %i.ls, %.lr.ph331.preheader.new ], [ %i.oh, %.lr.ph331 ] ; 5 uses
  %niter434 = phi i64 [ 0, %.lr.ph331.preheader.new ], [ %niter434.next.3, %.lr.ph331 ]
  %i.nt = add i32 %i.ns, %.0259328                ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !60
  %i.nv = lshr i32 %.0259328, 2
  %i.nw = add i32 %i.nt, %i.nv                    ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  store i32 %i.nw, ptr %i.ny, align 4, !tbaa !60
  %i.nz = lshr i32 %.0259328, 4
  %i.oa = add i32 %i.nw, %i.nz                    ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 %i.oa, ptr %i.oc, align 4, !tbaa !60
  %i.od = lshr i32 %.0259328, 6
  %i.oe = add i32 %i.oa, %i.od                    ; 3 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  store i32 %i.oe, ptr %i.og, align 4, !tbaa !60
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.oh = lshr i32 %.0259328, 8                   ; 2 uses
  %niter434.next.3 = add nuw i64 %niter434, 4     ; 2 uses
  %niter434.ncmp.3 = icmp eq i64 %niter434.next.3, %unroll_iter433
  br i1 %niter434.ncmp.3, label %._crit_edge332.loopexit.unr-lcssa, label %.lr.ph331, !llvm.loop !118

bb.ah:                                            ; preds = %._crit_edge332
  %i.oi = load ptr, ptr %i.aj, align 8, !tbaa !47 ; 3 uses
  store ptr %i.oi, ptr %i.al, align 8, !tbaa !81
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !64
  %i.ol = lshr i16 %i.ok, 12
  %i.om = trunc nuw nsw i16 %i.ol to i8
  %i.on = and i8 %i.om, 1
  store i8 %i.on, ptr %0, align 8, !tbaa !119
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.op = load i8, ptr %i.oo, align 8, !tbaa !63  ; 5 uses
  %i.oq = zext i8 %i.op to i32                    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !120
  %i.os = add nuw nsw i32 %i.oq, 2
  %i.ot = zext nneg i32 %i.os to i64              ; 2 uses
  %i.ou = mul nuw nsw i64 %i.ot, 24
  %i.ov = lshr i64 %i.ou, 4
  %i.ow = mul nuw nsw i64 %i.ov, 24
  %i.ox = add nuw nsw i64 %i.ow, 15               ; 2 uses
  %i.oy = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = add nsw i64 %i.oz, 7
  %i.pb = and i64 %i.pa, -8
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ox
  store ptr %i.pd, ptr %i.bx, align 8, !tbaa !83
  %i.pe = load i64, ptr %i.bw, align 8, !tbaa !57
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.pc, ptr %i.pf, align 8, !tbaa !121
  %i.pg = shl nuw nsw i64 %i.ot, 4
  %i.ph = or disjoint i64 %i.pg, 15               ; 2 uses
  %i.pi = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = add nsw i64 %i.pj, 7
  %i.pl = and i64 %i.pk, -8
  %i.pm = inttoptr i64 %i.pl to ptr               ; 7 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.ph
  store ptr %i.pn, ptr %i.bx, align 8, !tbaa !83
  %i.po = add nuw nsw i64 %i.ox, %i.ph
  %i.pp = sub i64 %i.pe, %i.po
  store i64 %i.pp, ptr %i.bw, align 8, !tbaa !57
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.pm, ptr %i.pq, align 8, !tbaa !122
  %i.pr = zext i8 %i.op to i64                    ; 2 uses
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %i.pr ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !123
end_hunk_0
