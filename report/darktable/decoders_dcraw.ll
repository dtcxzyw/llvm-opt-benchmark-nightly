Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw19canon_sraw_load_rawEv:bb.a
  %i.iw = getelementptr i8, ptr %i.iv, i64 -4
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !97
  %i.iy = add i16 %i.ix, -16384
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv338 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  store i16 %i.iy, ptr %i.ja, align 2, !tbaa !97
  %i.jb = getelementptr i8, ptr %i.iv, i64 -2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !97
  %i.jd = add i16 %i.jc, -16384
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !97
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge359, %._crit_edge270.us, %._crit_edge266.us, %._crit_edge.us
  %.pre-phi = phi i32 [ %.pre364, %._crit_edge359 ], [ %i.it, %._crit_edge270.us ], [ %i.gl, %._crit_edge266.us ], [ %i.ea, %._crit_edge.us ] ; 3 uses
  %i.jf = phi i32 [ %.pre360.a, %._crit_edge359 ], [ %i.en, %._crit_edge270.us ], [ %i.en, %._crit_edge266.us ], [ %i.jv, %._crit_edge.us ] ; 3 uses
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 2 ; 2 uses
  %i.jg = icmp slt i64 %indvars.iv.next339, %i.ar
  br i1 %i.jg, label %bb.m, label %._crit_edge278.us, !llvm.loop !190

.preheader242.us.a:                               ; preds = %bb.r
  br i1 %i.eo, label %.lr.ph269.us.preheader, label %._crit_edge270.us

.lr.ph269.us.preheader:                           ; preds = %.preheader242.us.a
  %i.jh = add nsw i32 %i.en, -2
  %i.ji = sext i32 %i.ay to i64
  %wide.trip.count336 = zext nneg i32 %i.jh to i64 ; 2 uses
  %invariant.gep392 = getelementptr [2 x i8], ptr %.3203.us, i64 %i.ji ; 5 uses
  %i.jj = trunc nsw i64 %indvars.iv338 to i32     ; 5 uses
  %xtraiter431 = and i64 %wide.trip.count336, 3   ; 3 uses
  %i.jk = add nsw i32 %i.en, -3
  %i.jl = icmp ult i32 %i.jk, 3
  br i1 %i.jl, label %.lr.ph269.us.epil.preheader, label %.lr.ph269.us.preheader.new

.lr.ph269.us.preheader.new:                       ; preds = %.lr.ph269.us.preheader
  %unroll_iter435 = and i64 %wide.trip.count336, 2147483644
  %i.jm = add i32 %i.jj, 1
  %i.jn = add i32 %i.jj, 1
  br label %.lr.ph269.us

.preheader243.us.a:                               ; preds = %bb.r
  br i1 %i.eo, label %.lr.ph265.us.preheader, label %._crit_edge266.us

.lr.ph265.us.preheader:                           ; preds = %.preheader243.us.a
  %i.jo = add nsw i32 %i.en, -2
  %i.jp = sext i32 %i.ay to i64
  %wide.trip.count331 = zext nneg i32 %i.jo to i64 ; 2 uses
  %invariant.gep390 = getelementptr [2 x i8], ptr %.3203.us, i64 %i.jp ; 5 uses
  %i.jq = trunc nsw i64 %indvars.iv338 to i32     ; 5 uses
  %xtraiter426 = and i64 %wide.trip.count331, 3   ; 3 uses
  %i.jr = add nsw i32 %i.en, -3
  %i.js = icmp ult i32 %i.jr, 3
  br i1 %i.js, label %.lr.ph265.us.epil.preheader, label %.lr.ph265.us.preheader.new

.lr.ph265.us.preheader.new:                       ; preds = %.lr.ph265.us.preheader
  %unroll_iter429 = and i64 %wide.trip.count331, 2147483644
  %i.jt = add i32 %i.jq, 1
  %i.ju = add i32 %i.jq, 1
  br label %.lr.ph265.us

.preheader244.us:                                 ; preds = %bb.q
  %i.jv = load i32, ptr %i.l, align 8, !tbaa !125 ; 5 uses
  %i.jw = icmp sgt i32 %i.jv, 2
  br i1 %i.jw, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %.preheader244.us
  %i.jx = add nsw i32 %i.jv, -2                   ; 2 uses
  %i.jy = sext i32 %i.ay to i64
  %wide.trip.count = zext i32 %i.jx to i64        ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.3203.us, i64 %i.jy ; 3 uses
  %i.jz = trunc nsw i64 %indvars.iv338 to i32     ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ka = icmp eq i32 %i.jx, 1
  br i1 %i.ka, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %i.kb = add i32 %i.jz, 1                        ; 3 uses
  br label %.lr.ph.us

._crit_edge278.us:                                ; preds = %bb.s
  %i.kc = ashr i32 %i.jf, 1
  %i.kd = add i32 %.0194282.us, -1
  %i.ke = add i32 %i.kd, %i.kc                    ; 2 uses
  %i.kf = load i16, ptr %i.f, align 4, !tbaa !137
  %i.kg = zext i16 %i.kf to i32
  %i.kh = icmp slt i32 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph286.split.us, label %._crit_edge287, !llvm.loop !191

.lr.ph286.split:                                  ; preds = %.lr.ph286
  %i.ki = ashr i32 %i.ad, 1
  %invariant.op = add nsw i32 %i.ki, -1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph286.split, %bb.u
  %.0194282 = phi i32 [ 0, %.lr.ph286.split ], [ %.reass, %bb.u ]
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.u unwind label %.loopexit.split-lp246.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.reass = add i32 %.0194282, %invariant.op      ; 2 uses
  %i.kj = load i16, ptr %i.f, align 4, !tbaa !137
  %i.kk = zext i16 %i.kj to i32
  %i.kl = icmp slt i32 %.reass, %i.kk
  br i1 %i.kl, label %bb.t, label %._crit_edge287, !llvm.loop !191

.loopexit.split-lp246.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %.lr.ph286.split.us, %bb.t
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %lpad.loopexit.split-lp421, 0
  %i.kn = tail call ptr @__cxa_begin_catch(ptr %i.km) #16 ; 0 uses
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.loopexit.split-lp246.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #17
          to label %bb.bq unwind label %bb.w

._crit_edge287:                                   ; preds = %bb.u, %._crit_edge278.us, %bb.l
  %i.ko = phi i32 [ %i.ad, %bb.l ], [ %i.jf, %._crit_edge278.us ], [ %i.ad, %bb.u ]
  %i.kp = phi i32 [ %i.ae, %bb.l ], [ %i.jf, %._crit_edge278.us ], [ %i.ad, %bb.u ]
  %.1201.lcssa = phi ptr [ %.0200295, %bb.l ], [ %.3203.us, %._crit_edge278.us ], [ %.0200295, %bb.u ]
  %.1188.lcssa = phi i32 [ %.0187298, %bb.l ], [ %.3190.us, %._crit_edge278.us ], [ %.0187298, %bb.u ]
  %.1185.lcssa = phi i32 [ %.0184299, %bb.l ], [ %.pre-phi, %._crit_edge278.us ], [ %.0184299, %bb.u ]
  %i.kq = add nuw nsw i32 %.0198296, 1
  %i.kr = load i16, ptr %i.y, align 2, !tbaa !97  ; 2 uses
  %i.ks = zext i16 %i.kr to i32
  %.not214.not = icmp samesign ult i32 %.0198296, %i.ks
  br i1 %.not214.not, label %bb.i, label %bb.x, !llvm.loop !192

bb.w:                                             ; preds = %bb.v, %.loopexit.split-lp246.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bo unwind label %bb.bp

bb.x:                                             ; preds = %._crit_edge287
  %i.ku = load i32, ptr %i.ac, align 8, !tbaa !140
  %i.kv = and i32 %i.ku, 128
  %.not215 = icmp eq i32 %i.kv, 0
  br i1 %.not215, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %i.kx, null
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.kx)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !101 ; 2 uses
  %.not.1.i = icmp eq ptr %i.kz, null
  br i1 %.not.1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.kz)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !101 ; 2 uses
  %.not.2.i = icmp eq ptr %i.lb, null
  br i1 %.not.2.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.lb)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !101 ; 2 uses
  %.not.3.i = icmp eq ptr %i.ld, null
  br i1 %.not.3.i, label %_ZN6LibRaw9ljpeg_endEP5jhead.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ld)
  br label %_ZN6LibRaw9ljpeg_endEP5jhead.exit

_ZN6LibRaw9ljpeg_endEP5jhead.exit:                ; preds = %bb.ae, %bb.af
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !132
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.lf)
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.lg, align 8, !tbaa !115
  store i16 %i.g, ptr %i.f, align 4, !tbaa !137
  store i16 %i.e, ptr %i.d, align 2, !tbaa !138
  br label %bb.bn

bb.ag:                                            ; preds = %bb.x
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 153520
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0181 = phi ptr [ %i.lh, %bb.ag ], [ %i.lj, %bb.ah ] ; 3 uses
  %i.li = load i8, ptr %.0181, align 1, !tbaa !99 ; 2 uses
  %.not216 = icmp ne i8 %i.li, 0
  %2 = add i8 %i.li, -58
  %isdigit = icmp ult i8 %2, -10
  %or.cond226 = and i1 %.not216, %isdigit
  %i.lj = getelementptr inbounds nuw i8, ptr %.0181, i64 1
  br i1 %or.cond226, label %bb.ah, label %.critedge, !llvm.loop !193

.critedge:                                        ; preds = %bb.ah
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.lm = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.0181, ptr noundef nonnull @.str, ptr noundef nonnull %i.a, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.ll) #16 ; 0 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 381696 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !198 ; 2 uses
  %i.lq = icmp ugt i64 %i.lp, 2147484288
  %.pre361.a = load i32, ptr %i.ln, align 4, !tbaa !123 ; 3 uses
  br i1 %i.lq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.lr = shl i32 %.pre361.a, 2
  %i.ls = add i32 %i.lr, 4
  %i.lt = load i32, ptr %i.a, align 4, !tbaa !120
  %i.lu = mul nsw i32 %i.lt, 1000
  %i.lv = load i32, ptr %i.lk, align 4, !tbaa !120
  %i.lw = add nsw i32 %i.lu, %i.lv
  %i.lx = mul nsw i32 %i.lw, 1000
  %i.ly = load i32, ptr %i.ll, align 4, !tbaa !120
  %i.lz = add nsw i32 %i.lx, %i.ly
  %i.ma = icmp eq i64 %i.lp, 2147484184
  %i.mb = icmp sgt i32 %i.lz, 1000006
  %or.cond6 = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %or.cond6, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %.critedge
  %i.mc = shl i32 %.pre361.a, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0182 = phi i32 [ %i.mc, %bb.aj ], [ %i.ls, %bb.ai ] ; 2 uses
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !139 ; 3 uses
  %i.me = load i16, ptr %i.f, align 4, !tbaa !137
  %.not315.a = icmp eq i16 %i.me, 0
  br i1 %.not315.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak
  %i.mf = lshr i32 %.pre361.a, 1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %._crit_edge
  %.1195305 = phi i32 [ 0, %.lr.ph ], [ %i.qb, %._crit_edge ] ; 4 uses
  %.0199304 = phi ptr [ %i.md, %.lr.ph ], [ %i.qd, %._crit_edge ] ; 9 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  %i.mg = and i32 %i.mf, %.1195305
  %.not219 = icmp eq i32 %i.mg, 0
  %.pre362.a = load i16, ptr %i.d, align 2, !tbaa !138 ; 3 uses
  br i1 %.not219, label %.loopexit241, label %.preheader240

.preheader240:                                    ; preds = %bb.am
  %.not316 = icmp eq i16 %.pre362.a, 0
  br i1 %.not316, label %._crit_edge, label %.preheader239

.preheader239:                                    ; preds = %.preheader240, %bb.at
  %i.mh = phi i16 [ %i.om, %bb.at ], [ %.pre362.a, %.preheader240 ] ; 2 uses
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %bb.at ], [ 0, %.preheader240 ] ; 6 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.0199304, i64 %indvars.iv345 ; 2 uses
  %i.mj = load i16, ptr %i.f, align 4, !tbaa !137
  %i.mk = zext i16 %i.mj to i32
  %i.ml = add nsw i32 %i.mk, -1
  %i.mm = icmp eq i32 %.1195305, %i.ml
  %i.mn = zext i16 %i.mh to i64
  %i.mo = sub nsw i64 %indvars.iv345, %i.mn       ; 2 uses
  br i1 %i.mm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.preheader239
  %i.mp = shl nsw i64 %i.mo, 3
  %i.mq = getelementptr inbounds i8, ptr %.0199304, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !97
  br label %bb.aq

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.al
  %lpad.loopexit.split-lp414 = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %lpad.loopexit.split-lp414, 0
  %i.mu = call ptr @__cxa_begin_catch(ptr %i.mt) #16 ; 0 uses
  invoke void @_ZN6LibRaw9ljpeg_endEP5jhead(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #17
          to label %bb.bq unwind label %bb.bf

bb.ap:                                            ; preds = %.preheader239
  %sext401.a = shl i64 %i.mo, 32
  %i.mv = ashr exact i64 %sext401.a, 29
  %i.mw = getelementptr inbounds i8, ptr %.0199304, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !97
  %i.mz = sext i16 %i.my to i32
  %i.na = zext i16 %i.mh to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.0199304, i64 %indvars.iv345
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !97
  %i.nf = sext i16 %i.ne to i32
  %i.ng = add nsw i32 %i.mz, 1
  %i.nh = add nsw i32 %i.ng, %i.nf
  %i.ni = lshr i32 %i.nh, 1
  %i.nj = trunc i32 %i.ni to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap
  %.sink = phi i16 [ %i.ms, %bb.an ], [ %i.nj, %bb.ap ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store i16 %.sink, ptr %i.nk, align 2, !tbaa !97
  %i.nl = load i16, ptr %i.f, align 4, !tbaa !137
  %i.nm = zext i16 %i.nl to i32
  %i.nn = add nsw i32 %i.nm, -1
  %i.no = icmp eq i32 %.1195305, %i.nn
  %i.np = load i16, ptr %i.d, align 2, !tbaa !138 ; 2 uses
  %i.nq = zext i16 %i.np to i64
  %i.nr = sub nsw i64 %indvars.iv345, %i.nq       ; 2 uses
  br i1 %i.no, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %sext402 = shl i64 %i.nr, 32
  %i.ns = ashr exact i64 %sext402, 29
  %i.nt = getelementptr inbounds i8, ptr %.0199304, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !97
  %i.nw = sext i16 %i.nv to i32
  %i.nx = zext i16 %i.np to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0199304, i64 %indvars.iv345
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nx
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !97
  %i.oc = sext i16 %i.ob to i32
  %i.od = add nsw i32 %i.nw, 1
  %i.oe = add nsw i32 %i.od, %i.oc
  %i.of = lshr i32 %i.oe, 1
  %i.og = trunc i32 %i.of to i16
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.oh = shl nsw i64 %i.nr, 3
  %i.oi = getelementptr inbounds i8, ptr %.0199304, i64 %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !97
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink395 = phi i16 [ %i.ok, %bb.as ], [ %i.og, %bb.ar ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i16 %.sink395, ptr %i.ol, align 2, !tbaa !97
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %i.om = load i16, ptr %i.d, align 2, !tbaa !138 ; 3 uses
  %i.on = zext i16 %i.om to i64
  %i.oo = icmp samesign ult i64 %indvars.iv.next346, %i.on
  br i1 %i.oo, label %.preheader239, label %.loopexit241, !llvm.loop !194

.loopexit241:                                     ; preds = %bb.at, %bb.am
  %i.op = phi i16 [ %.pre362.a, %bb.am ], [ %i.om, %bb.at ] ; 3 uses
  %i.oq = icmp ugt i16 %i.op, 1
  br i1 %i.oq, label %.preheader238, label %._crit_edge

.preheader238:                                    ; preds = %.loopexit241, %bb.ax
  %i.or = phi i16 [ %i.py, %bb.ax ], [ %i.op, %.loopexit241 ]
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %bb.ax ], [ 1, %.loopexit241 ] ; 4 uses
  %i.os = getelementptr [8 x i8], ptr %.0199304, i64 %indvars.iv352 ; 6 uses
  %i.ot = zext i16 %i.or to i64
  %i.ou = add nuw nsw i64 %i.ot, 4294967295
  %i.ov = and i64 %i.ou, 4294967295
  %i.ow = icmp eq i64 %indvars.iv352, %i.ov
  %i.ox = getelementptr i8, ptr %i.os, i64 -6
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !97 ; 2 uses
  br i1 %i.ow, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader238
  %i.oz = sext i16 %i.oy to i32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 10
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !97
  %i.pc = sext i16 %i.pb to i32
  %i.pd = add nsw i32 %i.oz, 1
  %i.pe = add nsw i32 %i.pd, %i.pc
  %i.pf = lshr i32 %i.pe, 1
  %i.pg = trunc i32 %i.pf to i16
  br label %bb.av

bb.av:                                            ; preds = %.preheader238, %bb.au
  %.sink397 = phi i16 [ %i.pg, %bb.au ], [ %i.oy, %.preheader238 ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store i16 %.sink397, ptr %i.ph, align 2, !tbaa !97
  %i.pi = load i16, ptr %i.d, align 2, !tbaa !138
  %i.pj = zext i16 %i.pi to i64
  %i.pk = add nuw nsw i64 %i.pj, 4294967295
  %i.pl = and i64 %i.pk, 4294967295
  %i.pm = icmp eq i64 %indvars.iv352, %i.pl
  %i.pn = getelementptr i8, ptr %i.os, i64 -4
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !97 ; 2 uses
  br i1 %i.pm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pp = sext i16 %i.po to i32
end_hunk_0
