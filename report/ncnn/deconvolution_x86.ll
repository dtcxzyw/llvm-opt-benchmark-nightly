Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnn17Deconvolution_x8615create_pipelineERKNS_6OptionE:bb.a
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader693.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %indvars.iv.i.prol
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !39
  %i.jw = xor i64 %indvars.iv.i.prol, -1
  %i.jx = getelementptr [4 x i8], ptr %i.jm, i64 %i.jw
  store float %i.jv, ptr %i.jx, align 4, !tbaa !39
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.jy = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.jz = icmp ugt i64 %i.jy, -4
  br i1 %i.jz, label %._crit_edge.i, label %scalar.ph

._crit_edge698.split.i:                           ; preds = %._crit_edge.i, %.preheader693.lr.ph.i, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bo, i32 noundef %i.bu, i32 noundef %i.bt, ptr noundef null)
          to label %bb.ct unwind label %bb.cw

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %i.iz
  %i.kb = add nuw nsw i32 %.0301697.i, 1          ; 2 uses
  %exitcond897.not.i = icmp eq i32 %i.kb, %i.iw
  br i1 %exitcond897.not.i, label %._crit_edge698.split.i, label %.preheader693.i, !llvm.loop !79

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %indvars.iv.i
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !39
  %i.ke = xor i64 %indvars.iv.i, -1
  %i.kf = getelementptr [4 x i8], ptr %i.jm, i64 %i.ke
  store float %i.kd, ptr %i.kf, align 4, !tbaa !39
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %indvars.iv.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !39
  %i.kj = sub i64 -2, %indvars.iv.i
  %i.kk = getelementptr [4 x i8], ptr %i.jm, i64 %i.kj
  store float %i.ki, ptr %i.kk, align 4, !tbaa !39
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %indvars.iv.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !39
  %i.ko = sub i64 -3, %indvars.iv.i
  %i.kp = getelementptr [4 x i8], ptr %i.jm, i64 %i.ko
  store float %i.kn, ptr %i.kp, align 4, !tbaa !39
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0302696.i, i64 %indvars.iv.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !39
  %i.kt = sub i64 -4, %indvars.iv.i
  %i.ku = getelementptr [4 x i8], ptr %i.jm, i64 %i.kt
  store float %i.ks, ptr %i.ku, align 4, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !80

bb.ct:                                            ; preds = %._crit_edge698.split.i
  %i.kv = icmp sgt i32 %i.bt, 3
  br i1 %i.kv, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.kw = icmp sgt i32 %i.bu, 3                   ; 2 uses
  br i1 %i.kw, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.kx = shl nsw i32 %i.bo, 4
  %i.ky = lshr i32 %i.bu, 2
  %i.kz = lshr i32 %i.bu, 1
  %i.la = and i32 %i.kz, 1
  %i.lb = and i32 %i.bu, 1
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  br label %.invoke1069.i

bb.cw:                                            ; preds = %._crit_edge698.split.i
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit343.i

bb.cx:                                            ; preds = %.invoke.i, %.invoke1069.i
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !11 ; 2 uses
  %.not.i410.i = icmp eq ptr %i.lh, null
  br i1 %.not.i410.i, label %_ZN4ncnn3MatD2Ev.exit343.i, label %bb.dx

bb.cy:                                            ; preds = %bb.cu
  %i.li = icmp sgt i32 %i.bu, 1
  br i1 %i.li, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.lj = shl nsw i32 %i.bo, 3
  %i.lk = and i32 %i.bu, 1
  %i.ll = add nuw nsw i32 %i.lk, 1
  br label %.invoke1069.i

bb.da:                                            ; preds = %bb.cy
  %i.lm = shl nsw i32 %i.bo, 2
  br label %.invoke1069.i

.invoke1069.i:                                    ; preds = %bb.da, %bb.cz, %bb.cv
  %i.ln = phi i32 [ %i.lm, %bb.da ], [ %i.lj, %bb.cz ], [ %i.kx, %bb.cv ]
  %i.lo = phi i32 [ %i.bu, %bb.da ], [ %i.ll, %bb.cz ], [ %i.ld, %bb.cv ]
  %i.lp = lshr i32 %i.bt, 2
  %i.lq = lshr i32 %i.bt, 1
  %i.lr = and i32 %i.lq, 1
  %i.ls = and i32 %i.bt, 1
  %i.lt = add nuw nsw i32 %i.ls, %i.lp
  %i.lu = add nuw nsw i32 %i.lt, %i.lr
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, i32 noundef %i.ln, i32 noundef %i.lo, i32 noundef %i.lu, i64 noundef 4, ptr noundef null)
          to label %.noexc470.lr.ph.i unwind label %bb.cx

bb.db:                                            ; preds = %bb.ct
  %i.lv = icmp sgt i32 %i.bt, 1
  %i.lw = icmp sgt i32 %i.bu, 3                   ; 2 uses
  br i1 %i.lv, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  br i1 %i.lw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.lx = shl nsw i32 %i.bo, 3
  %i.ly = lshr i32 %i.bu, 2
  %i.lz = lshr i32 %i.bu, 1
  %i.ma = and i32 %i.lz, 1
  %i.mb = and i32 %i.bu, 1
  %i.mc = add nuw nsw i32 %i.mb, %i.ly
  %i.md = add nuw nsw i32 %i.mc, %i.ma
  %i.me = and i32 %i.bt, 1
  %i.mf = add nuw nsw i32 %i.me, 1
  br label %.invoke.i

bb.de:                                            ; preds = %bb.dc
  %i.mg = icmp sgt i32 %i.bu, 1
  br i1 %i.mg, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mh = shl nsw i32 %i.bo, 2
  %i.mi = and i32 %i.bu, 1
  %i.mj = add nuw nsw i32 %i.mi, 1
  %i.mk = and i32 %i.bt, 1
  %i.ml = add nuw nsw i32 %i.mk, 1
  br label %.invoke.i

bb.dg:                                            ; preds = %bb.de
  %i.mm = shl nsw i32 %i.bo, 1
  %i.mn = and i32 %i.bt, 1
  %i.mo = add nuw nsw i32 %i.mn, 1
  br label %.invoke.i

bb.dh:                                            ; preds = %bb.db
  br i1 %i.lw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.mp = shl nsw i32 %i.bo, 2
  %i.mq = lshr i32 %i.bu, 2
  %i.mr = lshr i32 %i.bu, 1
  %i.ms = and i32 %i.mr, 1
  %i.mt = and i32 %i.bu, 1
  %i.mu = add nuw nsw i32 %i.mt, %i.mq
  %i.mv = add nuw nsw i32 %i.mu, %i.ms
  br label %.invoke.i

bb.dj:                                            ; preds = %bb.dh
  %i.mw = icmp sgt i32 %i.bu, 1
  br i1 %i.mw, label %bb.dk, label %.invoke.i

bb.dk:                                            ; preds = %bb.dj
  %i.mx = shl nsw i32 %i.bo, 1
  %i.my = and i32 %i.bu, 1
  %i.mz = add nuw nsw i32 %i.my, 1
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg, %bb.df, %bb.dd
  %i.na = phi i32 [ %i.lx, %bb.dd ], [ %i.mx, %bb.dk ], [ %i.mp, %bb.di ], [ %i.mm, %bb.dg ], [ %i.mh, %bb.df ], [ %i.bo, %bb.dj ]
  %i.nb = phi i32 [ %i.md, %bb.dd ], [ %i.mz, %bb.dk ], [ %i.mv, %bb.di ], [ %i.bu, %bb.dg ], [ %i.mj, %bb.df ], [ %i.bu, %bb.dj ]
  %i.nc = phi i32 [ %i.mf, %bb.dd ], [ %i.bt, %bb.dk ], [ %i.bt, %bb.di ], [ %i.mo, %bb.dg ], [ %i.ml, %bb.df ], [ %i.bt, %bb.dj ]
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, i32 noundef %i.na, i32 noundef %i.nb, i32 noundef %i.nc, i64 noundef 4, ptr noundef null)
          to label %.preheader682.i unwind label %bb.cx

.noexc470.lr.ph.i:                                ; preds = %.invoke1069.i
  %i.nd = load ptr, ptr %i.iq, align 8, !tbaa !18, !noalias !81
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !20, !noalias !81
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !57, !noalias !81
  %factor.op.mul755.i = mul i64 %i.nh, %i.nf
  %i.ni = icmp sgt i32 %i.bo, 0                   ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.nm = and i32 %i.bu, -4                       ; 3 uses
  %i.nn = sext i32 %i.bu to i64
  %i.no = zext nneg i32 %i.bt to i64
  %wide.trip.count912.i = zext i32 %i.bo to i64   ; 12 uses
  %invariant.op.i = add nsw i64 %i.nn, -3
  %i.np = or disjoint i32 %i.nm, 1
  %i.nq = icmp slt i32 %i.np, %i.bu
  %i.nr = shl nuw nsw i64 %wide.trip.count912.i, 4
  %i.ns = shl nuw nsw i64 %wide.trip.count912.i, 2 ; 12 uses
  %i.nt = shl nuw nsw i64 %wide.trip.count912.i, 5
  %min.iters.check369 = icmp ult i32 %i.bo, 16
  %n.vec371 = and i64 %wide.trip.count912.i, 2147483644 ; 4 uses
  %i.nu = shl nuw nsw i64 %n.vec371, 5
  %cmp.n386 = icmp eq i64 %n.vec371, %wide.trip.count912.i
  %min.iters.check305 = icmp ult i32 %i.bo, 12
  %n.vec307 = and i64 %wide.trip.count912.i, 2147483644 ; 4 uses
  %i.nv = shl nuw nsw i64 %n.vec307, 4
  %cmp.n316 = icmp eq i64 %n.vec307, %wide.trip.count912.i
  %xtraiter668 = and i64 %wide.trip.count912.i, 1
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  %i.nw = add nsw i64 %wide.trip.count912.i, -1
  br label %.noexc470.i

.preheader682.loopexit.i:                         ; preds = %._crit_edge748.split.i
  %i.nx = trunc nuw nsw i64 %indvars.iv.next946.i to i32
  br label %.preheader682.i

.preheader682.i:                                  ; preds = %.preheader682.loopexit.i, %.invoke.i
  %.0297.lcssa.i = phi i32 [ %i.nx, %.preheader682.loopexit.i ], [ 0, %.invoke.i ] ; 3 uses
  %i.ny = or disjoint i32 %.0297.lcssa.i, 1
  %i.nz = icmp slt i32 %i.ny, %i.bt
  br i1 %i.nz, label %.noexc462.lr.ph.i, label %.preheader671.i

.noexc462.lr.ph.i:                                ; preds = %.preheader682.i
  %i.oa = load ptr, ptr %i.iq, align 8, !tbaa !18, !noalias !84
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !20, !noalias !84
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !57, !noalias !84
  %factor.op.mul821.i = mul i64 %i.oe, %i.oc
  %i.of = icmp sgt i32 %i.bu, 3
  %i.og = icmp sgt i32 %i.bo, 0                   ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ok = and i32 %i.bu, -4                       ; 3 uses
  %i.ol = sext i32 %i.bu to i64                   ; 2 uses
  %i.om = zext i32 %.0297.lcssa.i to i64
  %i.on = sext i32 %i.bt to i64
  %wide.trip.count959.i = zext i32 %i.bo to i64   ; 17 uses
  %invariant.op1066.i.a = add nsw i64 %i.ol, -3
  %invariant.op1067.i = add nsw i64 %i.on, -1
  %i.oo = or disjoint i32 %i.ok, 1
  %i.op = icmp slt i32 %i.oo, %i.bu
  %i.oq = shl nuw nsw i64 %wide.trip.count959.i, 3
  %i.or = shl nuw nsw i64 %wide.trip.count959.i, 2 ; 12 uses
  %i.os = shl nuw nsw i64 %wide.trip.count959.i, 4
  %i.ot = shl nuw nsw i64 %wide.trip.count959.i, 5
  %i.ou = add nsw i64 %i.ol, -4                   ; 3 uses
  %i.ov = and i64 %i.ou, -4                       ; 2 uses
  %i.ow = or i64 %i.ou, 3
  %i.ox = or disjoint i64 %i.ov, 2
  %i.oy = or disjoint i64 %i.ov, 1
  %i.oz = and i64 %i.ou, -4
  %min.iters.check533 = icmp ult i32 %i.bo, 20
  %n.vec535 = and i64 %wide.trip.count959.i, 2147483644 ; 4 uses
  %i.pa = shl nuw nsw i64 %n.vec535, 5
  %cmp.n550 = icmp eq i64 %n.vec535, %wide.trip.count959.i
  %min.iters.check453 = icmp ult i32 %i.bo, 8
  %n.vec455 = and i64 %wide.trip.count959.i, 2147483644 ; 4 uses
  %i.pb = shl nuw nsw i64 %n.vec455, 4
  %cmp.n466 = icmp eq i64 %n.vec455, %wide.trip.count959.i
  %xtraiter671 = and i64 %wide.trip.count959.i, 1
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  %i.pc = add nsw i64 %wide.trip.count959.i, -1
  %min.iters.check407 = icmp ult i32 %i.bo, 10
  %n.vec409 = and i64 %wide.trip.count959.i, 2147483644 ; 4 uses
  %i.pd = shl nuw nsw i64 %n.vec409, 3
  %cmp.n422 = icmp eq i64 %n.vec409, %wide.trip.count959.i
  %xtraiter674 = and i64 %wide.trip.count959.i, 3 ; 2 uses
  %lcmp.mod675.not = icmp eq i64 %xtraiter674, 0
  br label %.noexc462.i

.noexc470.i:                                      ; preds = %._crit_edge748.split.i, %.noexc470.lr.ph.i
  %indvars.iv945.i = phi i64 [ 0, %.noexc470.lr.ph.i ], [ %indvars.iv.next946.i, %._crit_edge748.split.i ] ; 20 uses
  %i.pe = or disjoint i64 %indvars.iv945.i, 2
  %i.pf = or disjoint i64 %indvars.iv945.i, 1
  %i.pg = or disjoint i64 %indvars.iv945.i, 2
  %i.ph = or disjoint i64 %indvars.iv945.i, 1
  %i.pi = lshr exact i64 %indvars.iv945.i, 2
  %.reass756.i = mul i64 %factor.op.mul755.i, %i.pi
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.reass756.i ; 4 uses
  br i1 %i.kw, label %.preheader690.lr.ph.i, label %.preheader692.i

.preheader690.lr.ph.i:                            ; preds = %.noexc470.i
  %i.pk = load i32, ptr %i.nj, align 4
  %i.pl = load ptr, ptr %3, align 8
  %i.pm = load i64, ptr %i.nl, align 8            ; 2 uses
  %i.pn = sext i32 %i.pk to i64
  %factor.op.mul703.i = mul i64 %i.pm, %i.pn      ; 4 uses
  br i1 %i.ni, label %.preheader690.us.preheader.i, label %.preheader692.i.thread

.preheader690.us.preheader.i:                     ; preds = %.preheader690.lr.ph.i
  %i.po = load i64, ptr %i.nk, align 8
  %factor.op.mul.i = mul i64 %i.po, %i.pm         ; 4 uses
  %.reass.us.i = mul i64 %factor.op.mul.i, %indvars.iv945.i ; 4 uses
  %i.pp = or disjoint i64 %indvars.iv945.i, 1
  %.reass.us.1.i = mul i64 %factor.op.mul.i, %i.pp ; 4 uses
  %i.pq = or disjoint i64 %indvars.iv945.i, 2
  %.reass.us.2.i = mul i64 %factor.op.mul.i, %i.pq ; 4 uses
  %i.pr = or disjoint i64 %indvars.iv945.i, 3
  %.reass.us.3.i = mul i64 %factor.op.mul.i, %i.pr ; 4 uses
  br label %.preheader690.us.i

.preheader690.us.i:                               ; preds = %._crit_edge710.us.i, %.preheader690.us.preheader.i
  %indvars.iv914.i = phi i64 [ 0, %.preheader690.us.preheader.i ], [ %indvars.iv.next915.i, %._crit_edge710.us.i ] ; 5 uses
  %.0286711.us.i = phi ptr [ %i.pj, %.preheader690.us.preheader.i ], [ %i.ra, %._crit_edge710.us.i ]
  %.reass704.us.i = mul i64 %indvars.iv914.i, %factor.op.mul703.i
  %i.ps = or disjoint i64 %indvars.iv914.i, 1
  %.reass704.us.1.i = mul i64 %i.ps, %factor.op.mul703.i
  %i.pt = or disjoint i64 %indvars.iv914.i, 2
  %.reass704.us.2.i = mul i64 %i.pt, %factor.op.mul703.i
  %i.pu = or disjoint i64 %indvars.iv914.i, 3
  %.reass704.us.3.i = mul i64 %i.pu, %factor.op.mul703.i
  br label %.preheader687.us.i

.preheader687.us.i:                               ; preds = %.preheader687.us.i, %.preheader690.us.i
  %indvars.iv909.i = phi i64 [ 0, %.preheader690.us.i ], [ %indvars.iv.next910.i, %.preheader687.us.i ] ; 2 uses
  %.1287708.us.i = phi ptr [ %.0286711.us.i, %.preheader690.us.i ], [ %i.ra, %.preheader687.us.i ] ; 17 uses
  %invariant.gep705.us.i = getelementptr [4 x i8], ptr %i.pl, i64 %indvars.iv909.i ; 4 uses
  %gep.us.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.i ; 4 uses
  %gep700.us.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.i
  %i.pv = load float, ptr %gep700.us.i, align 4, !tbaa !39
  store float %i.pv, ptr %.1287708.us.i, align 4, !tbaa !39
  %i.pw = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 4
  %gep700.us.1.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.1.i
  %i.px = load float, ptr %gep700.us.1.i, align 4, !tbaa !39
  store float %i.px, ptr %i.pw, align 4, !tbaa !39
  %i.py = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 8
  %gep700.us.2.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.2.i
  %i.pz = load float, ptr %gep700.us.2.i, align 4, !tbaa !39
  store float %i.pz, ptr %i.py, align 4, !tbaa !39
  %i.qa = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 12
  %gep700.us.3.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.3.i
  %i.qb = load float, ptr %gep700.us.3.i, align 4, !tbaa !39
  store float %i.qb, ptr %i.qa, align 4, !tbaa !39
  %i.qc = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 16
  %gep.us.1.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.1.i ; 4 uses
  %gep700.us.1906.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.i
  %i.qd = load float, ptr %gep700.us.1906.i, align 4, !tbaa !39
  store float %i.qd, ptr %i.qc, align 4, !tbaa !39
  %i.qe = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 20
  %gep700.us.1.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.1.i
  %i.qf = load float, ptr %gep700.us.1.1.i, align 4, !tbaa !39
  store float %i.qf, ptr %i.qe, align 4, !tbaa !39
  %i.qg = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 24
  %gep700.us.2.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.2.i
  %i.qh = load float, ptr %gep700.us.2.1.i, align 4, !tbaa !39
  store float %i.qh, ptr %i.qg, align 4, !tbaa !39
  %i.qi = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 28
  %gep700.us.3.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.3.i
  %i.qj = load float, ptr %gep700.us.3.1.i, align 4, !tbaa !39
  store float %i.qj, ptr %i.qi, align 4, !tbaa !39
  %i.qk = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 32
  %gep.us.2.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.2.i ; 4 uses
  %gep700.us.2907.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.i
  %i.ql = load float, ptr %gep700.us.2907.i, align 4, !tbaa !39
  store float %i.ql, ptr %i.qk, align 4, !tbaa !39
  %i.qm = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 36
  %gep700.us.1.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.1.i
  %i.qn = load float, ptr %gep700.us.1.2.i, align 4, !tbaa !39
  store float %i.qn, ptr %i.qm, align 4, !tbaa !39
  %i.qo = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 40
  %gep700.us.2.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.2.i
  %i.qp = load float, ptr %gep700.us.2.2.i, align 4, !tbaa !39
  store float %i.qp, ptr %i.qo, align 4, !tbaa !39
  %i.qq = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 44
  %gep700.us.3.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.3.i
  %i.qr = load float, ptr %gep700.us.3.2.i, align 4, !tbaa !39
  store float %i.qr, ptr %i.qq, align 4, !tbaa !39
  %i.qs = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 48
  %gep.us.3.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.3.i ; 4 uses
  %gep700.us.3908.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.i
  %i.qt = load float, ptr %gep700.us.3908.i, align 4, !tbaa !39
  store float %i.qt, ptr %i.qs, align 4, !tbaa !39
  %i.qu = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 52
  %gep700.us.1.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.1.i
  %i.qv = load float, ptr %gep700.us.1.3.i, align 4, !tbaa !39
  store float %i.qv, ptr %i.qu, align 4, !tbaa !39
  %i.qw = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 56
  %gep700.us.2.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.2.i
  %i.qx = load float, ptr %gep700.us.2.3.i, align 4, !tbaa !39
  store float %i.qx, ptr %i.qw, align 4, !tbaa !39
  %i.qy = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 60
  %gep700.us.3.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.3.i
  %i.qz = load float, ptr %gep700.us.3.3.i, align 4, !tbaa !39
  store float %i.qz, ptr %i.qy, align 4, !tbaa !39
  %i.ra = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 64 ; 3 uses
  %indvars.iv.next910.i = add nuw nsw i64 %indvars.iv909.i, 1 ; 2 uses
  %exitcond913.not.i = icmp eq i64 %indvars.iv.next910.i, %wide.trip.count912.i
  br i1 %exitcond913.not.i, label %._crit_edge710.us.i, label %.preheader687.us.i, !llvm.loop !87

._crit_edge710.us.i:                              ; preds = %.preheader687.us.i
  %indvars.iv.next915.i = add nuw nsw i64 %indvars.iv914.i, 4 ; 3 uses
  %i.rb = icmp slt i64 %indvars.iv.next915.i, %invariant.op.i
  br i1 %i.rb, label %.preheader690.us.i, label %.preheader692.loopexit.i, !llvm.loop !88

.preheader692.loopexit.i:                         ; preds = %._crit_edge710.us.i
  %i.rc = trunc nuw nsw i64 %indvars.iv.next915.i to i32
  br label %.preheader692.i

.preheader692.i:                                  ; preds = %.preheader692.loopexit.i, %.noexc470.i
  %.0286.lcssa.i = phi ptr [ %i.pj, %.noexc470.i ], [ %i.ra, %.preheader692.loopexit.i ] ; 3 uses
  %.0283.lcssa.i = phi i32 [ 0, %.noexc470.i ], [ %i.rc, %.preheader692.loopexit.i ] ; 4 uses
  %i.rd = or disjoint i32 %.0283.lcssa.i, 1
  %i.re = icmp slt i32 %i.rd, %i.bu
  br i1 %i.re, label %.preheader689.lr.ph.i, label %.preheader691.i

.preheader692.i.thread:                           ; preds = %.preheader690.lr.ph.i
  br i1 %i.nq, label %.preheader689.preheader.i, label %.preheader691.i

.preheader689.lr.ph.i:                            ; preds = %.preheader692.i
  %i.rf = load i32, ptr %i.nj, align 4
  %i.rg = load ptr, ptr %3, align 8               ; 18 uses
  %i.rh = load i64, ptr %i.nl, align 8            ; 11 uses
  %i.ri = sext i32 %i.rf to i64                   ; 4 uses
  %factor.op.mul721.i = mul i64 %i.rh, %i.ri      ; 2 uses
  br i1 %i.ni, label %.preheader689.us.preheader.i, label %.preheader689.preheader.i

.preheader689.preheader.i:                        ; preds = %.preheader692.i.thread, %.preheader689.lr.ph.i
  %.0286.lcssa.i124130 = phi ptr [ %.0286.lcssa.i, %.preheader689.lr.ph.i ], [ %i.pj, %.preheader692.i.thread ]
  %.0283.lcssa.i125129 = phi i32 [ %.0283.lcssa.i, %.preheader689.lr.ph.i ], [ %i.nm, %.preheader692.i.thread ] ; 3 uses
  %i.rj = add i32 %.0283.lcssa.i125129, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.rj)
  %reass.sub = sub i32 %smax.i, %.0283.lcssa.i125129
  %i.rk = and i32 %reass.sub, -2
  %i.rl = add i32 %.0283.lcssa.i125129, %i.rk
  br label %.preheader691.i

.preheader689.us.preheader.i:                     ; preds = %.preheader689.lr.ph.i
  %i.rm = load i64, ptr %i.nk, align 8            ; 5 uses
  %factor.op.mul716.i = mul i64 %i.rm, %i.rh      ; 4 uses
  %i.rn = zext i32 %.0283.lcssa.i to i64          ; 3 uses
  %.reass.us733.i = mul i64 %factor.op.mul716.i, %indvars.iv945.i ; 4 uses
  %i.ro = or disjoint i64 %indvars.iv945.i, 1
  %.reass.us733.1.i = mul i64 %factor.op.mul716.i, %i.ro ; 4 uses
  %i.rp = or disjoint i64 %indvars.iv945.i, 2
  %.reass.us733.2.i = mul i64 %factor.op.mul716.i, %i.rp ; 4 uses
  %i.rq = or disjoint i64 %indvars.iv945.i, 3     ; 2 uses
  %.reass.us733.3.i = mul i64 %factor.op.mul716.i, %i.rq ; 4 uses
  %i.rr = mul i64 %i.rm, %i.rq                    ; 2 uses
  %i.rs = add nuw nsw i64 %i.rn, 1
  %i.rt = mul i64 %i.rs, %i.ri                    ; 4 uses
  %i.ru = add i64 %i.rr, %i.rt
  %i.rv = mul i64 %i.rh, %i.ru                    ; 2 uses
  %i.rw = shl i64 %i.rh, 1
  %i.rx = mul i64 %i.rw, %i.ri
  %i.ry = mul i64 %i.rm, %i.pe                    ; 2 uses
  %i.rz = add i64 %i.ry, %i.rt
  %i.sa = mul i64 %i.rh, %i.rz                    ; 2 uses
  %i.sb = mul i64 %i.rm, %i.pf                    ; 2 uses
  %i.sc = add i64 %i.sb, %i.rt
  %i.sd = mul i64 %i.rh, %i.sc                    ; 2 uses
  %i.se = mul i64 %i.rm, %indvars.iv945.i         ; 2 uses
  %i.sf = add i64 %i.se, %i.rt
  %i.sg = mul i64 %i.rh, %i.sf                    ; 2 uses
  %i.sh = mul nsw i64 %i.ri, %i.rn                ; 4 uses
  %i.si = add i64 %i.rr, %i.sh
  %i.sj = mul i64 %i.rh, %i.si                    ; 2 uses
  %i.sk = add i64 %i.ry, %i.sh
  %i.sl = mul i64 %i.rh, %i.sk                    ; 2 uses
  %i.sm = add i64 %i.sb, %i.sh
  %i.sn = mul i64 %i.rh, %i.sm                    ; 2 uses
  %i.so = add i64 %i.se, %i.sh
  %i.sp = mul i64 %i.rh, %i.so                    ; 2 uses
  %i.sq = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.sr = getelementptr i8, ptr %i.sq, i64 %i.sp
  %i.ss = getelementptr i8, ptr %i.rg, i64 %i.sp
  %i.st = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.su = getelementptr i8, ptr %i.st, i64 %i.sn
  %i.sv = getelementptr i8, ptr %i.rg, i64 %i.sn
  %i.sw = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.sx = getelementptr i8, ptr %i.sw, i64 %i.sl
  %i.sy = getelementptr i8, ptr %i.rg, i64 %i.sl
  %i.sz = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.ta = getelementptr i8, ptr %i.sz, i64 %i.sj
  %i.tb = getelementptr i8, ptr %i.rg, i64 %i.sj
  %i.tc = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.td = getelementptr i8, ptr %i.tc, i64 %i.sg
  %i.te = getelementptr i8, ptr %i.rg, i64 %i.sg
  %i.tf = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.tg = getelementptr i8, ptr %i.tf, i64 %i.sd
  %i.th = getelementptr i8, ptr %i.rg, i64 %i.sd
  %i.ti = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.tj = getelementptr i8, ptr %i.ti, i64 %i.sa
  %i.tk = getelementptr i8, ptr %i.rg, i64 %i.sa
  %i.tl = getelementptr i8, ptr %i.rg, i64 %i.ns
  %i.tm = getelementptr i8, ptr %i.tl, i64 %i.rv
  %i.tn = getelementptr i8, ptr %i.rg, i64 %i.rv
  br label %.preheader689.us.i

.preheader689.us.i:                               ; preds = %._crit_edge728.us.i, %.preheader689.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge728.us.i ], [ 0, %.preheader689.us.preheader.i ] ; 2 uses
  %indvars.iv930.i = phi i64 [ %indvars.iv.next931.i, %._crit_edge728.us.i ], [ %i.rn, %.preheader689.us.preheader.i ] ; 3 uses
  %.4290729.us.i = phi ptr [ %.lcssa264.a, %._crit_edge728.us.i ], [ %.0286.lcssa.i, %.preheader689.us.preheader.i ] ; 6 uses
  %.reass722.us.i = mul i64 %indvars.iv930.i, %factor.op.mul721.i ; 2 uses
  %i.to = add nuw nsw i64 %indvars.iv930.i, 1
  %.reass722.us.1.i = mul i64 %i.to, %factor.op.mul721.i ; 2 uses
  br i1 %min.iters.check369, label %.preheader686.us.i.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %.preheader689.us.i
  %i.tp = mul i64 %i.rx, %indvar                  ; 16 uses
  %scevgep336 = getelementptr i8, ptr %i.sr, i64 %i.tp
  %scevgep335 = getelementptr i8, ptr %i.ss, i64 %i.tp
  %scevgep334 = getelementptr i8, ptr %i.su, i64 %i.tp
  %scevgep333 = getelementptr i8, ptr %i.sv, i64 %i.tp
  %scevgep332 = getelementptr i8, ptr %i.sx, i64 %i.tp
  %scevgep331 = getelementptr i8, ptr %i.sy, i64 %i.tp
  %scevgep330 = getelementptr i8, ptr %i.ta, i64 %i.tp
  %scevgep329 = getelementptr i8, ptr %i.tb, i64 %i.tp
  %scevgep328 = getelementptr i8, ptr %i.td, i64 %i.tp
  %scevgep327 = getelementptr i8, ptr %i.te, i64 %i.tp
  %scevgep326 = getelementptr i8, ptr %i.tg, i64 %i.tp
  %scevgep325 = getelementptr i8, ptr %i.th, i64 %i.tp
  %scevgep324 = getelementptr i8, ptr %i.tj, i64 %i.tp
  %scevgep323 = getelementptr i8, ptr %i.tk, i64 %i.tp
  %scevgep322 = getelementptr i8, ptr %i.tm, i64 %i.tp
  %scevgep321 = getelementptr i8, ptr %i.tn, i64 %i.tp
  %scevgep320 = getelementptr i8, ptr %.4290729.us.i, i64 %i.nt
  %i.tq = insertelement <8 x ptr> poison, ptr %.4290729.us.i, i64 0
  %i.tr = shufflevector <8 x ptr> %i.tq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ts = insertelement <8 x ptr> poison, ptr %scevgep322, i64 0
  %i.tt = insertelement <8 x ptr> %i.ts, ptr %scevgep324, i64 1
  %i.tu = insertelement <8 x ptr> %i.tt, ptr %scevgep326, i64 2
  %i.tv = insertelement <8 x ptr> %i.tu, ptr %scevgep328, i64 3
  %i.tw = insertelement <8 x ptr> %i.tv, ptr %scevgep330, i64 4
  %i.tx = insertelement <8 x ptr> %i.tw, ptr %scevgep332, i64 5
  %i.ty = insertelement <8 x ptr> %i.tx, ptr %scevgep334, i64 6
  %i.tz = insertelement <8 x ptr> %i.ty, ptr %scevgep336, i64 7
  %i.ua = icmp ult <8 x ptr> %i.tr, %i.tz
  %i.ub = insertelement <8 x ptr> poison, ptr %scevgep321, i64 0
  %i.uc = insertelement <8 x ptr> %i.ub, ptr %scevgep323, i64 1
  %i.ud = insertelement <8 x ptr> %i.uc, ptr %scevgep325, i64 2
  %i.ue = insertelement <8 x ptr> %i.ud, ptr %scevgep327, i64 3
  %i.uf = insertelement <8 x ptr> %i.ue, ptr %scevgep329, i64 4
  %i.ug = insertelement <8 x ptr> %i.uf, ptr %scevgep331, i64 5
  %i.uh = insertelement <8 x ptr> %i.ug, ptr %scevgep333, i64 6
  %i.ui = insertelement <8 x ptr> %i.uh, ptr %scevgep335, i64 7
  %i.uj = insertelement <8 x ptr> poison, ptr %scevgep320, i64 0
  %i.uk = shufflevector <8 x ptr> %i.uj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ul = icmp ult <8 x ptr> %i.ui, %i.uk
  %i.um = and <8 x i1> %i.ua, %i.ul
  %i.un = bitcast <8 x i1> %i.um to i8
  %.not655 = icmp eq i8 %i.un, 0
  br i1 %.not655, label %vector.ph370, label %.preheader686.us.i.preheader

vector.ph370:                                     ; preds = %vector.memcheck319
  %i.uo = getelementptr i8, ptr %.4290729.us.i, i64 %i.nu ; 2 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next384, %vector.body372 ] ; 3 uses
  %i.up = shl i64 %index373, 5
  %next.gep374 = getelementptr i8, ptr %.4290729.us.i, i64 %i.up
  %i.uq = getelementptr [4 x i8], ptr %i.rg, i64 %index373 ; 2 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 %.reass722.us.i ; 4 uses
  %i.us = getelementptr i8, ptr %i.ur, i64 %.reass.us733.i
  %wide.load375.a = load <4 x float>, ptr %i.us, align 4, !tbaa !39, !alias.scope !89
  %i.ut = getelementptr i8, ptr %i.ur, i64 %.reass.us733.1.i
  %wide.load376.a = load <4 x float>, ptr %i.ut, align 4, !tbaa !39, !alias.scope !92
  %i.uu = getelementptr i8, ptr %i.ur, i64 %.reass.us733.2.i
  %wide.load377.a = load <4 x float>, ptr %i.uu, align 4, !tbaa !39, !alias.scope !94
  %i.uv = getelementptr i8, ptr %i.ur, i64 %.reass.us733.3.i
  %wide.load378.a = load <4 x float>, ptr %i.uv, align 4, !tbaa !39, !alias.scope !96
  %i.uw = getelementptr i8, ptr %i.uq, i64 %.reass722.us.1.i ; 4 uses
  %i.ux = getelementptr i8, ptr %i.uw, i64 %.reass.us733.i
  %wide.load379.a = load <4 x float>, ptr %i.ux, align 4, !tbaa !39, !alias.scope !98
  %i.uy = getelementptr i8, ptr %i.uw, i64 %.reass.us733.1.i
  %wide.load380.a = load <4 x float>, ptr %i.uy, align 4, !tbaa !39, !alias.scope !100
  %i.uz = getelementptr i8, ptr %i.uw, i64 %.reass.us733.2.i
  %wide.load381 = load <4 x float>, ptr %i.uz, align 4, !tbaa !39, !alias.scope !102
  %i.va = getelementptr i8, ptr %i.uw, i64 %.reass.us733.3.i
  %wide.load382 = load <4 x float>, ptr %i.va, align 4, !tbaa !39, !alias.scope !104
  %i.vb = shufflevector <4 x float> %wide.load375.a, <4 x float> %wide.load376.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vc = shufflevector <4 x float> %wide.load377.a, <4 x float> %wide.load378.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vd = shufflevector <4 x float> %wide.load379.a, <4 x float> %wide.load380.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ve = shufflevector <4 x float> %wide.load381, <4 x float> %wide.load382, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vf = shufflevector <8 x float> %i.vb, <8 x float> %i.vc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vg = shufflevector <8 x float> %i.vd, <8 x float> %i.ve, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec383 = shufflevector <16 x float> %i.vf, <16 x float> %i.vg, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec383, ptr %next.gep374, align 4, !tbaa !39, !alias.scope !106, !noalias !108
  %index.next384 = add nuw i64 %index373, 4       ; 2 uses
  %i.vh = icmp eq i64 %index.next384, %n.vec371
  br i1 %i.vh, label %middle.block385, label %vector.body372, !llvm.loop !109

middle.block385:                                  ; preds = %vector.body372
  br i1 %cmp.n386, label %._crit_edge728.us.i, label %.preheader686.us.i.preheader

.preheader686.us.i.preheader:                     ; preds = %vector.memcheck319, %.preheader689.us.i, %middle.block385
  %indvars.iv925.i.ph = phi i64 [ 0, %vector.memcheck319 ], [ 0, %.preheader689.us.i ], [ %n.vec371, %middle.block385 ]
  %.5291726.us.i.ph = phi ptr [ %.4290729.us.i, %vector.memcheck319 ], [ %.4290729.us.i, %.preheader689.us.i ], [ %i.uo, %middle.block385 ]
  br label %.preheader686.us.i

.preheader686.us.i:                               ; preds = %.preheader686.us.i.preheader, %.preheader686.us.i
  %indvars.iv925.i = phi i64 [ %indvars.iv.next926.i, %.preheader686.us.i ], [ %indvars.iv925.i.ph, %.preheader686.us.i.preheader ] ; 2 uses
  %.5291726.us.i = phi ptr [ %i.vx, %.preheader686.us.i ], [ %.5291726.us.i.ph, %.preheader686.us.i.preheader ] ; 9 uses
  %invariant.gep723.us.i = getelementptr [4 x i8], ptr %i.rg, i64 %indvars.iv925.i ; 2 uses
  %gep.us734.i = getelementptr i8, ptr %invariant.gep723.us.i, i64 %.reass722.us.i ; 4 uses
  %gep718.us.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.i
  %i.vi = load float, ptr %gep718.us.i, align 4, !tbaa !39
  store float %i.vi, ptr %.5291726.us.i, align 4, !tbaa !39
  %i.vj = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 4
  %gep718.us.1.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.1.i
  %i.vk = load float, ptr %gep718.us.1.i, align 4, !tbaa !39
  store float %i.vk, ptr %i.vj, align 4, !tbaa !39
  %i.vl = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 8
  %gep718.us.2.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.2.i
  %i.vm = load float, ptr %gep718.us.2.i, align 4, !tbaa !39
  store float %i.vm, ptr %i.vl, align 4, !tbaa !39
  %i.vn = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 12
  %gep718.us.3.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.3.i
  %i.vo = load float, ptr %gep718.us.3.i, align 4, !tbaa !39
  store float %i.vo, ptr %i.vn, align 4, !tbaa !39
  %i.vp = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 16
  %gep.us734.1.i = getelementptr i8, ptr %invariant.gep723.us.i, i64 %.reass722.us.1.i ; 4 uses
  %gep718.us.1924.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.i
  %i.vq = load float, ptr %gep718.us.1924.i, align 4, !tbaa !39
  store float %i.vq, ptr %i.vp, align 4, !tbaa !39
  %i.vr = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 20
  %gep718.us.1.1.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.1.i
  %i.vs = load float, ptr %gep718.us.1.1.i, align 4, !tbaa !39
  store float %i.vs, ptr %i.vr, align 4, !tbaa !39
  %i.vt = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 24
  %gep718.us.2.1.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.2.i
  %i.vu = load float, ptr %gep718.us.2.1.i, align 4, !tbaa !39
  store float %i.vu, ptr %i.vt, align 4, !tbaa !39
  %i.vv = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 28
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Deconvolution_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.wt = mul i64 %i.ws, %i.wf                    ; 4 uses
  %i.wu = add i64 %i.wl, %i.wt
  %i.wv = mul i64 %i.we, %i.wu
  %scevgep276.a = getelementptr i8, ptr %scevgep275.a, i64 %i.wv
  %i.ww = mul i64 %i.we, %i.wf
  %i.wx = mul i64 %i.wg, %i.pg                    ; 2 uses
  %i.wy = add i64 %i.wx, %i.wm
  %i.wz = mul i64 %i.we, %i.wy
  %scevgep277.a = getelementptr i8, ptr %i.wd, i64 %i.wz
  %scevgep278.a = getelementptr i8, ptr %i.wd, i64 %i.ns
  %i.xa = add i64 %i.wx, %i.wt
  %i.xb = mul i64 %i.we, %i.xa
  %scevgep279.a = getelementptr i8, ptr %scevgep278.a, i64 %i.xb
  %i.xc = mul i64 %i.wg, %i.ph                    ; 2 uses
  %i.xd = add i64 %i.xc, %i.wm
  %i.xe = mul i64 %i.we, %i.xd
  %scevgep280.a = getelementptr i8, ptr %i.wd, i64 %i.xe
  %scevgep281.a = getelementptr i8, ptr %i.wd, i64 %i.ns
  %i.xf = add i64 %i.xc, %i.wt
  %i.xg = mul i64 %i.we, %i.xf
  %scevgep282.a = getelementptr i8, ptr %scevgep281.a, i64 %i.xg
  %i.xh = mul i64 %i.wg, %indvars.iv945.i         ; 2 uses
  %i.xi = add i64 %i.xh, %i.wm
  %i.xj = mul i64 %i.we, %i.xi
  %scevgep283.a = getelementptr i8, ptr %i.wd, i64 %i.xj
  %scevgep284 = getelementptr i8, ptr %i.wd, i64 %i.ns
  %i.xk = add i64 %i.xh, %i.wt
  %i.xl = mul i64 %i.we, %i.xk
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.xl
  %i.xm = insertelement <4 x ptr> poison, ptr %scevgep279.a, i64 0
  %i.xn = insertelement <4 x ptr> %i.xm, ptr %scevgep276.a, i64 1
  %i.xo = insertelement <4 x ptr> %i.xn, ptr %scevgep282.a, i64 2
  %i.xp = insertelement <4 x ptr> %i.xo, ptr %scevgep285, i64 3
  %i.xq = insertelement <4 x ptr> poison, ptr %scevgep277.a, i64 0
  %i.xr = insertelement <4 x ptr> %i.xq, ptr %scevgep274.a, i64 1
  %i.xs = insertelement <4 x ptr> %i.xr, ptr %scevgep280.a, i64 2
  %i.xt = insertelement <4 x ptr> %i.xs, ptr %scevgep283.a, i64 3
  %stride.check293 = icmp slt i64 %i.ww, 0
  br label %.preheader688.i

.preheader688.i:                                  ; preds = %._crit_edge745.i, %.preheader688.preheader.i
  %indvars.iv942.i = phi i64 [ %i.wh, %.preheader688.preheader.i ], [ %indvars.iv.next943.i, %._crit_edge745.i ] ; 2 uses
  %.8294746.i = phi ptr [ %.4290.lcssa.i, %.preheader688.preheader.i ], [ %.lcssa266, %._crit_edge745.i ] ; 6 uses
  %.reass750.i = mul i64 %factor.op.mul749.i, %indvars.iv942.i
  %invariant.gep.i = getelementptr i8, ptr %i.wd, i64 %.reass750.i ; 4 uses
  br i1 %min.iters.check305, label %.preheader685.i.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.preheader688.i
  %scevgep273 = getelementptr i8, ptr %.8294746.i, i64 %i.nr
  %i.xu = insertelement <4 x ptr> poison, ptr %.8294746.i, i64 0
  %i.xv = shufflevector <4 x ptr> %i.xu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.xw = icmp ult <4 x ptr> %i.xv, %i.xp
  %i.xx = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.xy = shufflevector <4 x ptr> %i.xx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.xz = icmp ult <4 x ptr> %i.xt, %i.xy
  %i.ya = and <4 x i1> %i.xw, %i.xz
  %i.yb = bitcast <4 x i1> %i.ya to i4
  %i.yc = icmp ne i4 %i.yb, 0
  %op.rdx654 = or i1 %i.yc, %stride.check293
  br i1 %op.rdx654, label %.preheader685.i.preheader, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck272
  %i.yd = getelementptr i8, ptr %.8294746.i, i64 %i.nv ; 2 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next314, %vector.body308 ] ; 3 uses
  %i.ye = shl i64 %index309, 4
  %next.gep = getelementptr i8, ptr %.8294746.i, i64 %i.ye
  %i.yf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index309 ; 4 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 %.reass.i
  %wide.load310.a = load <4 x float>, ptr %i.yg, align 4, !tbaa !39, !alias.scope !112
  %i.yh = getelementptr i8, ptr %i.yf, i64 %.reass.1.i
  %wide.load311.a = load <4 x float>, ptr %i.yh, align 4, !tbaa !39, !alias.scope !115
  %i.yi = getelementptr i8, ptr %i.yf, i64 %.reass.2.i
  %wide.load312 = load <4 x float>, ptr %i.yi, align 4, !tbaa !39, !alias.scope !117
  %i.yj = getelementptr i8, ptr %i.yf, i64 %.reass.3.i
  %wide.load313 = load <4 x float>, ptr %i.yj, align 4, !tbaa !39, !alias.scope !119
  %i.yk = shufflevector <4 x float> %wide.load310.a, <4 x float> %wide.load311.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yl = shufflevector <4 x float> %wide.load312, <4 x float> %wide.load313, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.yk, <8 x float> %i.yl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !39, !alias.scope !121, !noalias !123
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.ym, label %middle.block315, label %vector.body308, !llvm.loop !124

middle.block315:                                  ; preds = %vector.body308
  br i1 %cmp.n316, label %._crit_edge745.i, label %.preheader685.i.preheader

.preheader685.i.preheader:                        ; preds = %vector.memcheck272, %.preheader688.i, %middle.block315
  %indvars.iv937.i.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.preheader688.i ], [ %n.vec307, %middle.block315 ] ; 4 uses
  %.9295743.i.ph = phi ptr [ %.8294746.i, %vector.memcheck272 ], [ %.8294746.i, %.preheader688.i ], [ %i.yd, %middle.block315 ] ; 6 uses
  br i1 %lcmp.mod669.not, label %.preheader685.i.prol.loopexit, label %.preheader685.i.prol

.preheader685.i.prol:                             ; preds = %.preheader685.i.preheader
  %invariant.gep739.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i.ph ; 4 uses
  %gep740.i.prol = getelementptr i8, ptr %invariant.gep739.i.prol, i64 %.reass.i
  %i.yn = load float, ptr %gep740.i.prol, align 4, !tbaa !39
  store float %i.yn, ptr %.9295743.i.ph, align 4, !tbaa !39
  %i.yo = getelementptr inbounds nuw i8, ptr %.9295743.i.ph, i64 4
  %gep740.1.i.prol = getelementptr i8, ptr %invariant.gep739.i.prol, i64 %.reass.1.i
  %i.yp = load float, ptr %gep740.1.i.prol, align 4, !tbaa !39
  store float %i.yp, ptr %i.yo, align 4, !tbaa !39
  %i.yq = getelementptr inbounds nuw i8, ptr %.9295743.i.ph, i64 8
  %gep740.2.i.prol = getelementptr i8, ptr %invariant.gep739.i.prol, i64 %.reass.2.i
  %i.yr = load float, ptr %gep740.2.i.prol, align 4, !tbaa !39
  store float %i.yr, ptr %i.yq, align 4, !tbaa !39
  %i.ys = getelementptr inbounds nuw i8, ptr %.9295743.i.ph, i64 12
  %gep740.3.i.prol = getelementptr i8, ptr %invariant.gep739.i.prol, i64 %.reass.3.i
  %i.yt = load float, ptr %gep740.3.i.prol, align 4, !tbaa !39
  store float %i.yt, ptr %i.ys, align 4, !tbaa !39
  %i.yu = getelementptr inbounds nuw i8, ptr %.9295743.i.ph, i64 16 ; 2 uses
  %indvars.iv.next938.i.prol = or disjoint i64 %indvars.iv937.i.ph, 1
  br label %.preheader685.i.prol.loopexit

.preheader685.i.prol.loopexit:                    ; preds = %.preheader685.i.prol, %.preheader685.i.preheader
  %.lcssa667.unr = phi ptr [ poison, %.preheader685.i.preheader ], [ %i.yu, %.preheader685.i.prol ]
  %indvars.iv937.i.unr = phi i64 [ %indvars.iv937.i.ph, %.preheader685.i.preheader ], [ %indvars.iv.next938.i.prol, %.preheader685.i.prol ]
  %.9295743.i.unr = phi ptr [ %.9295743.i.ph, %.preheader685.i.preheader ], [ %i.yu, %.preheader685.i.prol ]
  %i.yv = icmp eq i64 %indvars.iv937.i.ph, %i.nw
  br i1 %i.yv, label %._crit_edge745.i, label %.preheader685.i

.preheader685.i:                                  ; preds = %.preheader685.i.prol.loopexit, %.preheader685.i
  %indvars.iv937.i = phi i64 [ %indvars.iv.next938.i.1, %.preheader685.i ], [ %indvars.iv937.i.unr, %.preheader685.i.prol.loopexit ] ; 3 uses
  %.9295743.i = phi ptr [ %i.zm, %.preheader685.i ], [ %.9295743.i.unr, %.preheader685.i.prol.loopexit ] ; 9 uses
  %invariant.gep739.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i ; 4 uses
  %gep740.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.i
  %i.yw = load float, ptr %gep740.i, align 4, !tbaa !39
  store float %i.yw, ptr %.9295743.i, align 4, !tbaa !39
  %i.yx = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 4
  %gep740.1.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.1.i
  %i.yy = load float, ptr %gep740.1.i, align 4, !tbaa !39
  store float %i.yy, ptr %i.yx, align 4, !tbaa !39
  %i.yz = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 8
  %gep740.2.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.2.i
  %i.za = load float, ptr %gep740.2.i, align 4, !tbaa !39
  store float %i.za, ptr %i.yz, align 4, !tbaa !39
  %i.zb = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 12
  %gep740.3.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.3.i
  %i.zc = load float, ptr %gep740.3.i, align 4, !tbaa !39
  store float %i.zc, ptr %i.zb, align 4, !tbaa !39
  %i.zd = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 16
  %i.ze = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i
  %invariant.gep739.i.1 = getelementptr i8, ptr %i.ze, i64 4 ; 4 uses
  %gep740.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.i
  %i.zf = load float, ptr %gep740.i.1, align 4, !tbaa !39
  store float %i.zf, ptr %i.zd, align 4, !tbaa !39
  %i.zg = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 20
  %gep740.1.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.1.i
  %i.zh = load float, ptr %gep740.1.i.1, align 4, !tbaa !39
  store float %i.zh, ptr %i.zg, align 4, !tbaa !39
  %i.zi = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 24
  %gep740.2.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.2.i
  %i.zj = load float, ptr %gep740.2.i.1, align 4, !tbaa !39
  store float %i.zj, ptr %i.zi, align 4, !tbaa !39
  %i.zk = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 28
  %gep740.3.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.3.i
  %i.zl = load float, ptr %gep740.3.i.1, align 4, !tbaa !39
  store float %i.zl, ptr %i.zk, align 4, !tbaa !39
  %i.zm = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 32 ; 2 uses
  %indvars.iv.next938.i.1 = add nuw nsw i64 %indvars.iv937.i, 2 ; 2 uses
  %exitcond941.not.i.1 = icmp eq i64 %indvars.iv.next938.i.1, %wide.trip.count912.i
  br i1 %exitcond941.not.i.1, label %._crit_edge745.i, label %.preheader685.i, !llvm.loop !125

._crit_edge745.i:                                 ; preds = %.preheader685.i.prol.loopexit, %.preheader685.i, %middle.block315
  %.lcssa266 = phi ptr [ %i.yd, %middle.block315 ], [ %.lcssa667.unr, %.preheader685.i.prol.loopexit ], [ %i.zm, %.preheader685.i ]
  %indvars.iv.next943.i = add nuw nsw i64 %indvars.iv942.i, 1 ; 2 uses
  %i.zn = trunc nuw i64 %indvars.iv.next943.i to i32
  %i.zo = icmp sgt i32 %i.bu, %i.zn
  br i1 %i.zo, label %.preheader688.i, label %._crit_edge748.split.i, !llvm.loop !126

._crit_edge748.split.i:                           ; preds = %._crit_edge745.i, %.preheader688.lr.ph.i, %.preheader691.i
  %indvars.iv.next946.i = add nuw nsw i64 %indvars.iv945.i, 4 ; 3 uses
  %i.zp = or disjoint i64 %indvars.iv.next946.i, 3
  %i.zq = icmp samesign ult i64 %i.zp, %i.no
  br i1 %i.zq, label %.noexc470.i, label %.preheader682.loopexit.i, !llvm.loop !127

.preheader671.loopexit.i:                         ; preds = %._crit_edge814.split.i
  %i.zr = trunc nuw nsw i64 %indvars.iv.next992.i to i32
  br label %.preheader671.i

.preheader671.i:                                  ; preds = %.preheader671.loopexit.i, %.preheader682.i
  %.1298.lcssa.i = phi i32 [ %.0297.lcssa.i, %.preheader682.i ], [ %i.zr, %.preheader671.loopexit.i ] ; 2 uses
  %i.zs = icmp slt i32 %.1298.lcssa.i, %i.bt
  br i1 %i.zs, label %.noexc454.lr.ph.i, label %._crit_edge865.i

.noexc454.lr.ph.i:                                ; preds = %.preheader671.i
  %i.zt = load ptr, ptr %i.iq, align 8, !tbaa !18, !noalias !128
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !20, !noalias !128
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !57, !noalias !128
  %factor.op.mul866.i = mul i64 %i.zx, %i.zv
  %i.zy = icmp sgt i32 %i.bu, 3
  %i.zz = icmp sgt i32 %i.bo, 0                   ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aad = and i32 %i.bu, -4
  %i.aae = sext i32 %i.bu to i64                  ; 2 uses
  %i.aaf = zext i32 %.1298.lcssa.i to i64
  %wide.trip.count1029.i = zext i32 %i.bt to i64
  %wide.trip.count1001.i = zext i32 %i.bo to i64  ; 18 uses
  %invariant.op1068.i = add nsw i64 %i.aae, -3
  %i.aag = shl nuw nsw i64 %wide.trip.count1001.i, 3
  %i.aah = shl nuw nsw i64 %wide.trip.count1001.i, 2 ; 5 uses
  %i.aai = shl nuw nsw i64 %wide.trip.count1001.i, 4
  %i.aaj = add nsw i64 %i.aae, -4                 ; 3 uses
  %i.aak = and i64 %i.aaj, -4                     ; 2 uses
  %i.aal = or i64 %i.aaj, 3
  %i.aam = or disjoint i64 %i.aak, 2
  %i.aan = or disjoint i64 %i.aak, 1
  %i.aao = and i64 %i.aaj, -4
  %min.iters.check637 = icmp ult i32 %i.bo, 12
  %n.vec639 = and i64 %wide.trip.count1001.i, 2147483644 ; 4 uses
  %i.aap = shl nuw nsw i64 %n.vec639, 4
  %cmp.n650 = icmp eq i64 %n.vec639, %wide.trip.count1001.i
  %xtraiter677 = and i64 %wide.trip.count1001.i, 1
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  %i.aaq = add nsw i64 %wide.trip.count1001.i, -1
  %min.iters.check587 = icmp ult i32 %i.bo, 6
  %n.vec589 = and i64 %wide.trip.count1001.i, 2147483644 ; 4 uses
  %i.aar = shl nuw nsw i64 %n.vec589, 3
  %cmp.n602 = icmp eq i64 %n.vec589, %wide.trip.count1001.i
  %xtraiter680 = and i64 %wide.trip.count1001.i, 3 ; 2 uses
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  %min.iters.check558 = icmp ult i32 %i.bo, 8
  %n.vec560 = and i64 %wide.trip.count1001.i, 2147483640 ; 4 uses
  %i.aas = shl nuw nsw i64 %n.vec560, 2
  %cmp.n568 = icmp eq i64 %n.vec560, %wide.trip.count1001.i
  %xtraiter683 = and i64 %wide.trip.count1001.i, 7 ; 2 uses
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br label %.noexc454.i

.noexc462.i:                                      ; preds = %._crit_edge814.split.i, %.noexc462.lr.ph.i
  %indvars.iv991.i = phi i64 [ %i.om, %.noexc462.lr.ph.i ], [ %indvars.iv.next992.i, %._crit_edge814.split.i ] ; 11 uses
  %i.aat = trunc nuw i64 %indvars.iv991.i to i32  ; 2 uses
  %i.aau = lshr i32 %i.aat, 2
  %i.aav = lshr i32 %i.aat, 1
  %i.aaw = and i32 %i.aav, 1
  %i.aax = add nuw nsw i32 %i.aaw, %i.aau
  %i.aay = zext nneg i32 %i.aax to i64
  %.reass822.i = mul i64 %factor.op.mul821.i, %i.aay
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.reass822.i ; 4 uses
  br i1 %i.of, label %.preheader679.lr.ph.i, label %.preheader681.i

.preheader679.lr.ph.i:                            ; preds = %.noexc462.i
  %i.aba = load i32, ptr %i.oh, align 4
  %i.abb = load ptr, ptr %3, align 8              ; 16 uses
  %i.abc = load i64, ptr %i.oj, align 8           ; 17 uses
  %i.abd = sext i32 %i.aba to i64                 ; 10 uses
  %factor.op.mul757.i = mul i64 %i.abc, %i.abd    ; 4 uses
  br i1 %i.og, label %.preheader679.us.preheader.i, label %.preheader681.i.thread

.preheader679.us.preheader.i:                     ; preds = %.preheader679.lr.ph.i
  %i.abe = load i64, ptr %i.oi, align 8           ; 3 uses
  %factor.op.mul762.i = mul i64 %i.abe, %i.abc    ; 2 uses
  %.reass763.us.i = mul i64 %factor.op.mul762.i, %indvars.iv991.i ; 3 uses
  %i.abf = add nuw nsw i64 %indvars.iv991.i, 1    ; 2 uses
  %.reass763.us.1.i = mul i64 %factor.op.mul762.i, %i.abf ; 3 uses
  %i.abg = mul i64 %i.abe, %i.abf                 ; 7 uses
  %i.abh = mul nsw i64 %i.abd, 3                  ; 2 uses
  %i.abi = add i64 %i.abg, %i.abh
  %i.abj = mul i64 %i.abc, %i.abi
  %scevgep471.a = getelementptr i8, ptr %i.abb, i64 %i.abj
  %scevgep472.a = getelementptr i8, ptr %i.abb, i64 %i.or
  %i.abk = mul i64 %i.ow, %i.abd                  ; 2 uses
  %i.abl = add i64 %i.abg, %i.abk
  %i.abm = mul i64 %i.abc, %i.abl
  %scevgep473.a = getelementptr i8, ptr %scevgep472.a, i64 %i.abm
  %i.abn = shl i64 %i.abc, 2
  %i.abo = mul i64 %i.abn, %i.abd
  %i.abp = shl nsw i64 %i.abd, 1                  ; 2 uses
  %i.abq = add i64 %i.abg, %i.abp
  %i.abr = mul i64 %i.abc, %i.abq
  %scevgep474.a = getelementptr i8, ptr %i.abb, i64 %i.abr
  %scevgep475.a = getelementptr i8, ptr %i.abb, i64 %i.or
  %i.abs = mul i64 %i.ox, %i.abd                  ; 2 uses
  %i.abt = add i64 %i.abg, %i.abs
  %i.abu = mul i64 %i.abc, %i.abt
  %scevgep476.a = getelementptr i8, ptr %scevgep475.a, i64 %i.abu
  %i.abv = add i64 %i.abg, %i.abd
  %i.abw = mul i64 %i.abc, %i.abv
  %scevgep477.a = getelementptr i8, ptr %i.abb, i64 %i.abw
  %scevgep478.a = getelementptr i8, ptr %i.abb, i64 %i.or ; 2 uses
  %i.abx = mul i64 %i.oy, %i.abd                  ; 2 uses
  %i.aby = add i64 %i.abg, %i.abx
  %i.abz = mul i64 %i.abc, %i.aby
  %scevgep479.a = getelementptr i8, ptr %scevgep478.a, i64 %i.abz
  %scevgep480.a = getelementptr i8, ptr %i.abb, i64 %.reass763.us.1.i
  %i.aca = mul i64 %i.oz, %i.abd                  ; 2 uses
  %i.acb = add i64 %i.aca, %i.abg
  %i.acc = mul i64 %i.abc, %i.acb
  %scevgep481.a = getelementptr i8, ptr %scevgep478.a, i64 %i.acc
  %i.acd = mul i64 %i.abe, %indvars.iv991.i       ; 7 uses
  %i.ace = add i64 %i.acd, %i.abh
  %i.acf = mul i64 %i.abc, %i.ace
  %scevgep482.a = getelementptr i8, ptr %i.abb, i64 %i.acf
  %scevgep483.a = getelementptr i8, ptr %i.abb, i64 %i.or
  %i.acg = add i64 %i.acd, %i.abk
  %i.ach = mul i64 %i.abc, %i.acg
  %scevgep484.a = getelementptr i8, ptr %scevgep483.a, i64 %i.ach
  %i.aci = add i64 %i.acd, %i.abp
  %i.acj = mul i64 %i.abc, %i.aci
  %scevgep485.a = getelementptr i8, ptr %i.abb, i64 %i.acj
  %scevgep486.a = getelementptr i8, ptr %i.abb, i64 %i.or
  %i.ack = add i64 %i.acd, %i.abs
  %i.acl = mul i64 %i.abc, %i.ack
  %scevgep487.a = getelementptr i8, ptr %scevgep486.a, i64 %i.acl
  %i.acm = add i64 %i.acd, %i.abd
  %i.acn = mul i64 %i.abc, %i.acm
  %scevgep488.a = getelementptr i8, ptr %i.abb, i64 %i.acn
  %scevgep489.a = getelementptr i8, ptr %i.abb, i64 %i.or ; 2 uses
  %i.aco = add i64 %i.acd, %i.abx
  %i.acp = mul i64 %i.abc, %i.aco
  %scevgep490.a = getelementptr i8, ptr %scevgep489.a, i64 %i.acp
  %scevgep491 = getelementptr i8, ptr %i.abb, i64 %.reass763.us.i
  %i.acq = add i64 %i.aca, %i.acd
  %i.acr = mul i64 %i.abc, %i.acq
  %scevgep492 = getelementptr i8, ptr %scevgep489.a, i64 %i.acr
  %i.acs = insertelement <8 x ptr> poison, ptr %scevgep476.a, i64 0
  %i.act = insertelement <8 x ptr> %i.acs, ptr %scevgep473.a, i64 1
  %i.acu = insertelement <8 x ptr> %i.act, ptr %scevgep479.a, i64 2
  %i.acv = insertelement <8 x ptr> %i.acu, ptr %scevgep481.a, i64 3
  %i.acw = insertelement <8 x ptr> %i.acv, ptr %scevgep484.a, i64 4
  %i.acx = insertelement <8 x ptr> %i.acw, ptr %scevgep487.a, i64 5
  %i.acy = insertelement <8 x ptr> %i.acx, ptr %scevgep490.a, i64 6
  %i.acz = insertelement <8 x ptr> %i.acy, ptr %scevgep492, i64 7
  %i.ada = insertelement <8 x ptr> poison, ptr %scevgep474.a, i64 0
  %i.adb = insertelement <8 x ptr> %i.ada, ptr %scevgep471.a, i64 1
  %i.adc = insertelement <8 x ptr> %i.adb, ptr %scevgep477.a, i64 2
  %i.add = insertelement <8 x ptr> %i.adc, ptr %scevgep480.a, i64 3
  %i.ade = insertelement <8 x ptr> %i.add, ptr %scevgep482.a, i64 4
  %i.adf = insertelement <8 x ptr> %i.ade, ptr %scevgep485.a, i64 5
  %i.adg = insertelement <8 x ptr> %i.adf, ptr %scevgep488.a, i64 6
  %i.adh = insertelement <8 x ptr> %i.adg, ptr %scevgep491, i64 7
  %stride.check500 = icmp slt i64 %i.abo, 0
  br label %.preheader679.us.i

.preheader679.us.i:                               ; preds = %._crit_edge770.us.i, %.preheader679.us.preheader.i
  %indvars.iv961.i = phi i64 [ 0, %.preheader679.us.preheader.i ], [ %indvars.iv.next962.i, %._crit_edge770.us.i ] ; 5 uses
  %.0267772.us.i = phi ptr [ %i.aaz, %.preheader679.us.preheader.i ], [ %.lcssa259, %._crit_edge770.us.i ] ; 6 uses
  %.reass758.us.i = mul i64 %indvars.iv961.i, %factor.op.mul757.i ; 4 uses
  %i.adi = or disjoint i64 %indvars.iv961.i, 1
  %.reass758.us.1.i = mul i64 %i.adi, %factor.op.mul757.i ; 4 uses
  %i.adj = or disjoint i64 %indvars.iv961.i, 2
  %.reass758.us.2.i = mul i64 %i.adj, %factor.op.mul757.i ; 4 uses
  %i.adk = or disjoint i64 %indvars.iv961.i, 3
  %.reass758.us.3.i = mul i64 %i.adk, %factor.op.mul757.i ; 4 uses
  br i1 %min.iters.check533, label %.preheader676.us.i.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.preheader679.us.i
  %scevgep470 = getelementptr i8, ptr %.0267772.us.i, i64 %i.ot
  %i.adl = insertelement <8 x ptr> poison, ptr %.0267772.us.i, i64 0
  %i.adm = shufflevector <8 x ptr> %i.adl, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.adn = icmp ult <8 x ptr> %i.adm, %i.acz
  %i.ado = insertelement <8 x ptr> poison, ptr %scevgep470, i64 0
  %i.adp = shufflevector <8 x ptr> %i.ado, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.adq = icmp ult <8 x ptr> %i.adh, %i.adp
  %i.adr = and <8 x i1> %i.adn, %i.adq
  %i.ads = bitcast <8 x i1> %i.adr to i8
  %i.adt = icmp ne i8 %i.ads, 0
  %op.rdx653 = or i1 %i.adt, %stride.check500
  br i1 %op.rdx653, label %.preheader676.us.i.preheader, label %vector.ph534

vector.ph534:                                     ; preds = %vector.memcheck469
  %i.adu = getelementptr i8, ptr %.0267772.us.i, i64 %i.pa ; 2 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next548, %vector.body536 ] ; 3 uses
  %i.adv = shl i64 %index537, 5
  %next.gep538 = getelementptr i8, ptr %.0267772.us.i, i64 %i.adv
  %i.adw = getelementptr [4 x i8], ptr %i.abb, i64 %index537 ; 2 uses
  %i.adx = getelementptr i8, ptr %i.adw, i64 %.reass763.us.i ; 4 uses
  %i.ady = getelementptr i8, ptr %i.adx, i64 %.reass758.us.i
  %wide.load539.a = load <4 x float>, ptr %i.ady, align 4, !tbaa !39, !alias.scope !131
  %i.adz = getelementptr i8, ptr %i.adx, i64 %.reass758.us.1.i
  %wide.load540.a = load <4 x float>, ptr %i.adz, align 4, !tbaa !39, !alias.scope !134
  %i.aea = getelementptr i8, ptr %i.adx, i64 %.reass758.us.2.i
  %wide.load541.a = load <4 x float>, ptr %i.aea, align 4, !tbaa !39, !alias.scope !136
  %i.aeb = getelementptr i8, ptr %i.adx, i64 %.reass758.us.3.i
  %wide.load542.a = load <4 x float>, ptr %i.aeb, align 4, !tbaa !39, !alias.scope !138
  %i.aec = getelementptr i8, ptr %i.adw, i64 %.reass763.us.1.i ; 4 uses
  %i.aed = getelementptr i8, ptr %i.aec, i64 %.reass758.us.i
  %wide.load543.a = load <4 x float>, ptr %i.aed, align 4, !tbaa !39, !alias.scope !140
  %i.aee = getelementptr i8, ptr %i.aec, i64 %.reass758.us.1.i
  %wide.load544.a = load <4 x float>, ptr %i.aee, align 4, !tbaa !39, !alias.scope !142
  %i.aef = getelementptr i8, ptr %i.aec, i64 %.reass758.us.2.i
  %wide.load545 = load <4 x float>, ptr %i.aef, align 4, !tbaa !39, !alias.scope !144
  %i.aeg = getelementptr i8, ptr %i.aec, i64 %.reass758.us.3.i
  %wide.load546 = load <4 x float>, ptr %i.aeg, align 4, !tbaa !39, !alias.scope !146
  %i.aeh = shufflevector <4 x float> %wide.load539.a, <4 x float> %wide.load540.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aei = shufflevector <4 x float> %wide.load541.a, <4 x float> %wide.load542.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aej = shufflevector <4 x float> %wide.load543.a, <4 x float> %wide.load544.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aek = shufflevector <4 x float> %wide.load545, <4 x float> %wide.load546, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ael = shufflevector <8 x float> %i.aeh, <8 x float> %i.aei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aem = shufflevector <8 x float> %i.aej, <8 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec547 = shufflevector <16 x float> %i.ael, <16 x float> %i.aem, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec547, ptr %next.gep538, align 4, !tbaa !39, !alias.scope !148, !noalias !150
  %index.next548 = add nuw i64 %index537, 4       ; 2 uses
  %i.aen = icmp eq i64 %index.next548, %n.vec535
  br i1 %i.aen, label %middle.block549, label %vector.body536, !llvm.loop !151

middle.block549:                                  ; preds = %vector.body536
  br i1 %cmp.n550, label %._crit_edge770.us.i, label %.preheader676.us.i.preheader

.preheader676.us.i.preheader:                     ; preds = %vector.memcheck469, %.preheader679.us.i, %middle.block549
  %indvars.iv956.i.ph = phi i64 [ 0, %vector.memcheck469 ], [ 0, %.preheader679.us.i ], [ %n.vec535, %middle.block549 ]
  %.1268768.us.i.ph = phi ptr [ %.0267772.us.i, %vector.memcheck469 ], [ %.0267772.us.i, %.preheader679.us.i ], [ %i.adu, %middle.block549 ]
  br label %.preheader676.us.i

.preheader676.us.i:                               ; preds = %.preheader676.us.i.preheader, %.preheader676.us.i
  %indvars.iv956.i = phi i64 [ %indvars.iv.next957.i, %.preheader676.us.i ], [ %indvars.iv956.i.ph, %.preheader676.us.i.preheader ] ; 2 uses
  %.1268768.us.i = phi ptr [ %i.afd, %.preheader676.us.i ], [ %.1268768.us.i.ph, %.preheader676.us.i.preheader ] ; 9 uses
  %invariant.gep764.us.i = getelementptr [4 x i8], ptr %i.abb, i64 %indvars.iv956.i ; 2 uses
  %gep765.us.i = getelementptr i8, ptr %invariant.gep764.us.i, i64 %.reass763.us.i ; 4 uses
  %gep.us776.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.i
  %i.aeo = load float, ptr %gep.us776.i, align 4, !tbaa !39
  store float %i.aeo, ptr %.1268768.us.i, align 4, !tbaa !39
  %i.aep = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 4
  %gep.us776.1.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.1.i
  %i.aeq = load float, ptr %gep.us776.1.i, align 4, !tbaa !39
  store float %i.aeq, ptr %i.aep, align 4, !tbaa !39
  %i.aer = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 8
  %gep.us776.2.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.2.i
  %i.aes = load float, ptr %gep.us776.2.i, align 4, !tbaa !39
  store float %i.aes, ptr %i.aer, align 4, !tbaa !39
  %i.aet = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 12
  %gep.us776.3.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.3.i
  %i.aeu = load float, ptr %gep.us776.3.i, align 4, !tbaa !39
  store float %i.aeu, ptr %i.aet, align 4, !tbaa !39
  %i.aev = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 16
  %gep765.us.1.i = getelementptr i8, ptr %invariant.gep764.us.i, i64 %.reass763.us.1.i ; 4 uses
  %gep.us776.1955.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.i
  %i.aew = load float, ptr %gep.us776.1955.i, align 4, !tbaa !39
  store float %i.aew, ptr %i.aev, align 4, !tbaa !39
  %i.aex = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 20
  %gep.us776.1.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.1.i
  %i.aey = load float, ptr %gep.us776.1.1.i, align 4, !tbaa !39
  store float %i.aey, ptr %i.aex, align 4, !tbaa !39
  %i.aez = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 24
  %gep.us776.2.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.2.i
  %i.afa = load float, ptr %gep.us776.2.1.i, align 4, !tbaa !39
  store float %i.afa, ptr %i.aez, align 4, !tbaa !39
  %i.afb = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 28
  %gep.us776.3.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.3.i
  %i.afc = load float, ptr %gep.us776.3.1.i, align 4, !tbaa !39
  store float %i.afc, ptr %i.afb, align 4, !tbaa !39
  %i.afd = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 32 ; 2 uses
  %indvars.iv.next957.i = add nuw nsw i64 %indvars.iv956.i, 1 ; 2 uses
  %exitcond960.not.i = icmp eq i64 %indvars.iv.next957.i, %wide.trip.count959.i
  br i1 %exitcond960.not.i, label %._crit_edge770.us.i, label %.preheader676.us.i, !llvm.loop !152

._crit_edge770.us.i:                              ; preds = %.preheader676.us.i, %middle.block549
  %.lcssa259 = phi ptr [ %i.adu, %middle.block549 ], [ %i.afd, %.preheader676.us.i ] ; 2 uses
  %indvars.iv.next962.i = add nuw nsw i64 %indvars.iv961.i, 4 ; 3 uses
  %i.afe = icmp slt i64 %indvars.iv.next962.i, %invariant.op1066.i.a
  br i1 %i.afe, label %.preheader679.us.i, label %.preheader681.loopexit.i, !llvm.loop !153

.preheader681.loopexit.i:                         ; preds = %._crit_edge770.us.i
  %i.aff = trunc nuw nsw i64 %indvars.iv.next962.i to i32
  br label %.preheader681.i

.preheader681.i:                                  ; preds = %.preheader681.loopexit.i, %.noexc462.i
  %.0267.lcssa.i = phi ptr [ %i.aaz, %.noexc462.i ], [ %.lcssa259, %.preheader681.loopexit.i ] ; 3 uses
  %.0264.lcssa.i = phi i32 [ 0, %.noexc462.i ], [ %i.aff, %.preheader681.loopexit.i ] ; 4 uses
  %i.afg = or disjoint i32 %.0264.lcssa.i, 1
  %i.afh = icmp slt i32 %i.afg, %i.bu
  br i1 %i.afh, label %.preheader678.lr.ph.i, label %.preheader680.i

.preheader681.i.thread:                           ; preds = %.preheader679.lr.ph.i
  br i1 %i.op, label %.preheader678.preheader.i, label %.preheader680.i

.preheader678.lr.ph.i:                            ; preds = %.preheader681.i
  %i.afi = load i32, ptr %i.oh, align 4
  %i.afj = load ptr, ptr %3, align 8              ; 12 uses
  %i.afk = load i64, ptr %i.oj, align 8           ; 7 uses
  %i.afl = sext i32 %i.afi to i64                 ; 4 uses
  %factor.op.mul779.i = mul i64 %i.afk, %i.afl    ; 2 uses
  br i1 %i.og, label %.preheader678.us.preheader.i, label %.preheader678.preheader.i

.preheader678.preheader.i:                        ; preds = %.preheader681.i.thread, %.preheader678.lr.ph.i
  %.0267.lcssa.i133139 = phi ptr [ %.0267.lcssa.i, %.preheader678.lr.ph.i ], [ %i.aaz, %.preheader681.i.thread ]
  %.0264.lcssa.i134138 = phi i32 [ %.0264.lcssa.i, %.preheader678.lr.ph.i ], [ %i.ok, %.preheader681.i.thread ] ; 3 uses
  %i.afm = add i32 %.0264.lcssa.i134138, 3
  %smax964.i = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.afm)
  %reass.sub165 = sub i32 %smax964.i, %.0264.lcssa.i134138
  %i.afn = and i32 %reass.sub165, -2
  %i.afo = add i32 %.0264.lcssa.i134138, %i.afn
  br label %.preheader680.i

.preheader678.us.preheader.i:                     ; preds = %.preheader678.lr.ph.i
  %i.afp = load i64, ptr %i.oi, align 8           ; 3 uses
  %factor.op.mul784.i = mul i64 %i.afp, %i.afk    ; 2 uses
  %i.afq = zext i32 %.0264.lcssa.i to i64         ; 3 uses
  %.reass785.us.i = mul i64 %factor.op.mul784.i, %indvars.iv991.i ; 4 uses
  %i.afr = add nuw nsw i64 %indvars.iv991.i, 1    ; 2 uses
  %.reass785.us.1.i = mul i64 %factor.op.mul784.i, %i.afr ; 4 uses
  %i.afs = mul i64 %i.afp, %i.afr                 ; 2 uses
  %i.aft = add nuw nsw i64 %i.afq, 1
  %i.afu = mul i64 %i.aft, %i.afl                 ; 2 uses
  %i.afv = add i64 %i.afs, %i.afu
  %i.afw = mul i64 %i.afk, %i.afv                 ; 2 uses
  %i.afx = shl i64 %i.afk, 1
  %i.afy = mul i64 %i.afx, %i.afl
  %i.afz = mul nsw i64 %i.afl, %i.afq             ; 2 uses
  %i.aga = add i64 %i.afs, %i.afz
  %i.agb = mul i64 %i.afk, %i.aga                 ; 2 uses
  %i.agc = mul i64 %i.afp, %indvars.iv991.i       ; 2 uses
  %i.agd = add i64 %i.agc, %i.afu
  %i.age = mul i64 %i.afk, %i.agd                 ; 2 uses
  %i.agf = add i64 %i.agc, %i.afz
  %i.agg = mul i64 %i.afk, %i.agf                 ; 2 uses
  %i.agh = getelementptr i8, ptr %i.afj, i64 %i.or
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.agg
  %i.agj = getelementptr i8, ptr %i.afj, i64 %i.agg
  %i.agk = getelementptr i8, ptr %i.afj, i64 %i.or
  %i.agl = getelementptr i8, ptr %i.agk, i64 %i.age
  %i.agm = getelementptr i8, ptr %i.afj, i64 %i.age
  %i.agn = getelementptr i8, ptr %i.afj, i64 %i.or
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.agb
  %i.agp = getelementptr i8, ptr %i.afj, i64 %i.agb
  %i.agq = getelementptr i8, ptr %i.afj, i64 %i.or
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.afw
  %i.ags = getelementptr i8, ptr %i.afj, i64 %i.afw
  br label %.preheader678.us.i

.preheader678.us.i:                               ; preds = %._crit_edge792.us.i, %.preheader678.us.preheader.i
  %indvar427 = phi i64 [ %indvar.next428, %._crit_edge792.us.i ], [ 0, %.preheader678.us.preheader.i ] ; 2 uses
  %indvars.iv977.i = phi i64 [ %indvars.iv.next978.i, %._crit_edge792.us.i ], [ %i.afq, %.preheader678.us.preheader.i ] ; 3 uses
  %.4271794.us.i = phi ptr [ %.lcssa260.a, %._crit_edge792.us.i ], [ %.0267.lcssa.i, %.preheader678.us.preheader.i ] ; 9 uses
  %.reass780.us.i = mul i64 %indvars.iv977.i, %factor.op.mul779.i ; 8 uses
  %i.agt = or disjoint i64 %indvars.iv977.i, 1
  %.reass780.us.1.i = mul i64 %i.agt, %factor.op.mul779.i ; 8 uses
  br i1 %min.iters.check453, label %.preheader675.us.i.preheader, label %vector.memcheck425

vector.memcheck425:                               ; preds = %.preheader678.us.i
  %i.agu = mul i64 %i.afy, %indvar427             ; 8 uses
  %scevgep436 = getelementptr i8, ptr %i.agi, i64 %i.agu
  %scevgep435 = getelementptr i8, ptr %i.agj, i64 %i.agu
  %scevgep434 = getelementptr i8, ptr %i.agl, i64 %i.agu
  %scevgep433 = getelementptr i8, ptr %i.agm, i64 %i.agu
  %scevgep432 = getelementptr i8, ptr %i.ago, i64 %i.agu
  %scevgep431 = getelementptr i8, ptr %i.agp, i64 %i.agu
  %scevgep430 = getelementptr i8, ptr %i.agr, i64 %i.agu
  %scevgep429 = getelementptr i8, ptr %i.ags, i64 %i.agu
  %scevgep426 = getelementptr i8, ptr %.4271794.us.i, i64 %i.os ; 4 uses
  %bound0437 = icmp ult ptr %.4271794.us.i, %scevgep430
  %bound1438 = icmp ult ptr %scevgep429, %scevgep426
  %found.conflict439 = and i1 %bound0437, %bound1438
  %bound0440 = icmp ult ptr %.4271794.us.i, %scevgep432
  %bound1441 = icmp ult ptr %scevgep431, %scevgep426
  %found.conflict442 = and i1 %bound0440, %bound1441
  %conflict.rdx443 = or i1 %found.conflict439, %found.conflict442
  %bound0444 = icmp ult ptr %.4271794.us.i, %scevgep434
  %bound1445 = icmp ult ptr %scevgep433, %scevgep426
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx447 = or i1 %conflict.rdx443, %found.conflict446
  %bound0448 = icmp ult ptr %.4271794.us.i, %scevgep436
  %bound1449 = icmp ult ptr %scevgep435, %scevgep426
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %conflict.rdx447, %found.conflict450
  br i1 %conflict.rdx451, label %.preheader675.us.i.preheader, label %vector.ph454

vector.ph454:                                     ; preds = %vector.memcheck425
  %i.agv = getelementptr i8, ptr %.4271794.us.i, i64 %i.pb ; 2 uses
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next464, %vector.body456 ] ; 3 uses
  %i.agw = shl i64 %index457, 4
  %next.gep458 = getelementptr i8, ptr %.4271794.us.i, i64 %i.agw
  %i.agx = getelementptr [4 x i8], ptr %i.afj, i64 %index457 ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 %.reass785.us.i ; 2 uses
  %i.agz = getelementptr i8, ptr %i.agy, i64 %.reass780.us.i
  %wide.load459.a = load <4 x float>, ptr %i.agz, align 4, !tbaa !39, !alias.scope !154
  %i.aha = getelementptr i8, ptr %i.agy, i64 %.reass780.us.1.i
  %wide.load460.a = load <4 x float>, ptr %i.aha, align 4, !tbaa !39, !alias.scope !157
  %i.ahb = getelementptr i8, ptr %i.agx, i64 %.reass785.us.1.i ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 %.reass780.us.i
  %wide.load461 = load <4 x float>, ptr %i.ahc, align 4, !tbaa !39, !alias.scope !159
  %i.ahd = getelementptr i8, ptr %i.ahb, i64 %.reass780.us.1.i
  %wide.load462 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !39, !alias.scope !161
  %i.ahe = shufflevector <4 x float> %wide.load459.a, <4 x float> %wide.load460.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahf = shufflevector <4 x float> %wide.load461, <4 x float> %wide.load462, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec463 = shufflevector <8 x float> %i.ahe, <8 x float> %i.ahf, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec463, ptr %next.gep458, align 4, !tbaa !39, !alias.scope !163, !noalias !165
  %index.next464 = add nuw i64 %index457, 4       ; 2 uses
  %i.ahg = icmp eq i64 %index.next464, %n.vec455
  br i1 %i.ahg, label %middle.block465, label %vector.body456, !llvm.loop !166

middle.block465:                                  ; preds = %vector.body456
  br i1 %cmp.n466, label %._crit_edge792.us.i, label %.preheader675.us.i.preheader

.preheader675.us.i.preheader:                     ; preds = %vector.memcheck425, %.preheader678.us.i, %middle.block465
  %indvars.iv972.i.ph = phi i64 [ 0, %vector.memcheck425 ], [ 0, %.preheader678.us.i ], [ %n.vec455, %middle.block465 ] ; 4 uses
  %.5272790.us.i.ph = phi ptr [ %.4271794.us.i, %vector.memcheck425 ], [ %.4271794.us.i, %.preheader678.us.i ], [ %i.agv, %middle.block465 ] ; 6 uses
  br i1 %lcmp.mod672.not, label %.preheader675.us.i.prol.loopexit, label %.preheader675.us.i.prol

.preheader675.us.i.prol:                          ; preds = %.preheader675.us.i.preheader
  %invariant.gep786.us.i.prol = getelementptr [4 x i8], ptr %i.afj, i64 %indvars.iv972.i.ph ; 2 uses
  %gep787.us.i.prol = getelementptr i8, ptr %invariant.gep786.us.i.prol, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i.prol = getelementptr i8, ptr %gep787.us.i.prol, i64 %.reass780.us.i
  %i.ahh = load float, ptr %gep.us798.i.prol, align 4, !tbaa !39
  store float %i.ahh, ptr %.5272790.us.i.ph, align 4, !tbaa !39
  %i.ahi = getelementptr inbounds nuw i8, ptr %.5272790.us.i.ph, i64 4
  %gep.us798.1.i.prol = getelementptr i8, ptr %gep787.us.i.prol, i64 %.reass780.us.1.i
  %i.ahj = load float, ptr %gep.us798.1.i.prol, align 4, !tbaa !39
  store float %i.ahj, ptr %i.ahi, align 4, !tbaa !39
  %i.ahk = getelementptr inbounds nuw i8, ptr %.5272790.us.i.ph, i64 8
  %gep787.us.1.i.prol = getelementptr i8, ptr %invariant.gep786.us.i.prol, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i.prol = getelementptr i8, ptr %gep787.us.1.i.prol, i64 %.reass780.us.i
  %i.ahl = load float, ptr %gep.us798.1971.i.prol, align 4, !tbaa !39
  store float %i.ahl, ptr %i.ahk, align 4, !tbaa !39
  %i.ahm = getelementptr inbounds nuw i8, ptr %.5272790.us.i.ph, i64 12
  %gep.us798.1.1.i.prol = getelementptr i8, ptr %gep787.us.1.i.prol, i64 %.reass780.us.1.i
  %i.ahn = load float, ptr %gep.us798.1.1.i.prol, align 4, !tbaa !39
  store float %i.ahn, ptr %i.ahm, align 4, !tbaa !39
  %i.aho = getelementptr inbounds nuw i8, ptr %.5272790.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next973.i.prol = or disjoint i64 %indvars.iv972.i.ph, 1
  br label %.preheader675.us.i.prol.loopexit

.preheader675.us.i.prol.loopexit:                 ; preds = %.preheader675.us.i.prol, %.preheader675.us.i.preheader
  %.lcssa661.unr.a = phi ptr [ poison, %.preheader675.us.i.preheader ], [ %i.aho, %.preheader675.us.i.prol ]
  %indvars.iv972.i.unr = phi i64 [ %indvars.iv972.i.ph, %.preheader675.us.i.preheader ], [ %indvars.iv.next973.i.prol, %.preheader675.us.i.prol ]
  %.5272790.us.i.unr = phi ptr [ %.5272790.us.i.ph, %.preheader675.us.i.preheader ], [ %i.aho, %.preheader675.us.i.prol ]
  %i.ahp = icmp eq i64 %indvars.iv972.i.ph, %i.pc
  br i1 %i.ahp, label %._crit_edge792.us.i, label %.preheader675.us.i

.preheader675.us.i:                               ; preds = %.preheader675.us.i.prol.loopexit, %.preheader675.us.i
  %indvars.iv972.i = phi i64 [ %indvars.iv.next973.i.1, %.preheader675.us.i ], [ %indvars.iv972.i.unr, %.preheader675.us.i.prol.loopexit ] ; 3 uses
  %.5272790.us.i = phi ptr [ %i.aig, %.preheader675.us.i ], [ %.5272790.us.i.unr, %.preheader675.us.i.prol.loopexit ] ; 9 uses
  %invariant.gep786.us.i = getelementptr [4 x i8], ptr %i.afj, i64 %indvars.iv972.i ; 2 uses
  %gep787.us.i = getelementptr i8, ptr %invariant.gep786.us.i, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i = getelementptr i8, ptr %gep787.us.i, i64 %.reass780.us.i
  %i.ahq = load float, ptr %gep.us798.i, align 4, !tbaa !39
  store float %i.ahq, ptr %.5272790.us.i, align 4, !tbaa !39
  %i.ahr = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 4
  %gep.us798.1.i = getelementptr i8, ptr %gep787.us.i, i64 %.reass780.us.1.i
  %i.ahs = load float, ptr %gep.us798.1.i, align 4, !tbaa !39
  store float %i.ahs, ptr %i.ahr, align 4, !tbaa !39
  %i.aht = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 8
  %gep787.us.1.i = getelementptr i8, ptr %invariant.gep786.us.i, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i = getelementptr i8, ptr %gep787.us.1.i, i64 %.reass780.us.i
  %i.ahu = load float, ptr %gep.us798.1971.i, align 4, !tbaa !39
  store float %i.ahu, ptr %i.aht, align 4, !tbaa !39
  %i.ahv = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 12
  %gep.us798.1.1.i = getelementptr i8, ptr %gep787.us.1.i, i64 %.reass780.us.1.i
  %i.ahw = load float, ptr %gep.us798.1.1.i, align 4, !tbaa !39
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !39
  %i.ahx = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 16
  %i.ahy = getelementptr [4 x i8], ptr %i.afj, i64 %indvars.iv972.i
  %invariant.gep786.us.i.1 = getelementptr i8, ptr %i.ahy, i64 4 ; 2 uses
  %gep787.us.i.1 = getelementptr i8, ptr %invariant.gep786.us.i.1, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i.1 = getelementptr i8, ptr %gep787.us.i.1, i64 %.reass780.us.i
  %i.ahz = load float, ptr %gep.us798.i.1, align 4, !tbaa !39
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !39
  %i.aia = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 20
  %gep.us798.1.i.1 = getelementptr i8, ptr %gep787.us.i.1, i64 %.reass780.us.1.i
  %i.aib = load float, ptr %gep.us798.1.i.1, align 4, !tbaa !39
  store float %i.aib, ptr %i.aia, align 4, !tbaa !39
  %i.aic = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 24
  %gep787.us.1.i.1 = getelementptr i8, ptr %invariant.gep786.us.i.1, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i.1 = getelementptr i8, ptr %gep787.us.1.i.1, i64 %.reass780.us.i
  %i.aid = load float, ptr %gep.us798.1971.i.1, align 4, !tbaa !39
  store float %i.aid, ptr %i.aic, align 4, !tbaa !39
  %i.aie = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 28
  %gep.us798.1.1.i.1 = getelementptr i8, ptr %gep787.us.1.i.1, i64 %.reass780.us.1.i
  %i.aif = load float, ptr %gep.us798.1.1.i.1, align 4, !tbaa !39
  store float %i.aif, ptr %i.aie, align 4, !tbaa !39
  %i.aig = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 32 ; 2 uses
  %indvars.iv.next973.i.1 = add nuw nsw i64 %indvars.iv972.i, 2 ; 2 uses
  %exitcond976.not.i.1 = icmp eq i64 %indvars.iv.next973.i.1, %wide.trip.count959.i
  br i1 %exitcond976.not.i.1, label %._crit_edge792.us.i, label %.preheader675.us.i, !llvm.loop !167

._crit_edge792.us.i:                              ; preds = %.preheader675.us.i.prol.loopexit, %.preheader675.us.i, %middle.block465
  %.lcssa260.a = phi ptr [ %i.agv, %middle.block465 ], [ %.lcssa661.unr.a, %.preheader675.us.i.prol.loopexit ], [ %i.aig, %.preheader675.us.i ] ; 2 uses
  %indvars.iv.next978.i = add nuw nsw i64 %indvars.iv977.i, 2 ; 2 uses
  %i.aih = trunc i64 %indvars.iv.next978.i to i32 ; 2 uses
  %i.aii = or i32 %i.aih, 1
  %i.aij = icmp slt i32 %i.aii, %i.bu
  %indvar.next428 = add i64 %indvar427, 1
  br i1 %i.aij, label %.preheader678.us.i, label %.preheader680.i, !llvm.loop !168

.preheader680.i:                                  ; preds = %._crit_edge792.us.i, %.preheader681.i.thread, %.preheader678.preheader.i, %.preheader681.i
  %.4271.lcssa.i = phi ptr [ %.0267.lcssa.i, %.preheader681.i ], [ %i.aaz, %.preheader681.i.thread ], [ %.0267.lcssa.i133139, %.preheader678.preheader.i ], [ %.lcssa260.a, %._crit_edge792.us.i ]
  %.1265.lcssa.i = phi i32 [ %.0264.lcssa.i, %.preheader681.i ], [ %i.ok, %.preheader681.i.thread ], [ %i.afo, %.preheader678.preheader.i ], [ %i.aih, %._crit_edge792.us.i ] ; 3 uses
  %i.aik = icmp slt i32 %.1265.lcssa.i, %i.bu
  br i1 %i.aik, label %.preheader677.lr.ph.i, label %._crit_edge814.split.i
end_hunk_1
begin_hunk_2_@_ZN4ncnn17Deconvolution_x8615create_pipelineERKNS_6OptionE:bb.a
  br i1 %i.zy, label %.preheader668.lr.ph.i, label %.preheader670.i

.preheader668.lr.ph.i:                            ; preds = %.noexc454.i
  %i.ale = load i32, ptr %i.aaa, align 4
  %i.alf = load ptr, ptr %3, align 8              ; 7 uses
  %i.alg = load i64, ptr %i.aab, align 8          ; 2 uses
  %i.alh = mul i64 %i.alg, %indvars.iv1026.i
  %i.ali = load i64, ptr %i.aac, align 8          ; 10 uses
  %i.alj = mul i64 %i.alh, %i.ali
  %i.alk = getelementptr i8, ptr %i.alf, i64 %i.alj ; 5 uses
  %i.all = sext i32 %i.ale to i64                 ; 9 uses
  %factor.op.mul823.i = mul i64 %i.ali, %i.all    ; 4 uses
  br i1 %i.zz, label %.preheader668.us.i.preheader, label %.preheader670.i

.preheader668.us.i.preheader:                     ; preds = %.preheader668.lr.ph.i
  %i.alm = mul i64 %i.alg, %indvars.iv1026.i      ; 7 uses
  %i.aln = mul nsw i64 %i.all, 3
  %i.alo = add i64 %i.alm, %i.aln
  %i.alp = mul i64 %i.ali, %i.alo
  %scevgep607.a = getelementptr i8, ptr %i.alf, i64 %i.alp
  %scevgep608.a = getelementptr i8, ptr %i.alf, i64 %i.aah
  %i.alq = mul i64 %i.aal, %i.all
  %i.alr = add i64 %i.alm, %i.alq
  %i.als = mul i64 %i.ali, %i.alr
  %scevgep609.a = getelementptr i8, ptr %scevgep608.a, i64 %i.als
  %i.alt = shl i64 %i.ali, 2
  %i.alu = mul i64 %i.alt, %i.all
  %i.alv = shl nsw i64 %i.all, 1
  %i.alw = add i64 %i.alm, %i.alv
  %i.alx = mul i64 %i.ali, %i.alw
  %scevgep610.a = getelementptr i8, ptr %i.alf, i64 %i.alx
  %scevgep611.a = getelementptr i8, ptr %i.alf, i64 %i.aah
  %i.aly = mul i64 %i.aam, %i.all
  %i.alz = add i64 %i.alm, %i.aly
  %i.ama = mul i64 %i.ali, %i.alz
  %scevgep612.a = getelementptr i8, ptr %scevgep611.a, i64 %i.ama
  %i.amb = add i64 %i.alm, %i.all
  %i.amc = mul i64 %i.ali, %i.amb
  %scevgep613.a = getelementptr i8, ptr %i.alf, i64 %i.amc
  %scevgep614.a = getelementptr i8, ptr %i.alf, i64 %i.aah ; 2 uses
  %i.amd = mul i64 %i.aan, %i.all
  %i.ame = add i64 %i.alm, %i.amd
  %i.amf = mul i64 %i.ali, %i.ame
  %scevgep615 = getelementptr i8, ptr %scevgep614.a, i64 %i.amf
  %i.amg = mul i64 %i.aao, %i.all
  %i.amh = add i64 %i.amg, %i.alm
  %i.ami = mul i64 %i.ali, %i.amh
  %scevgep616 = getelementptr i8, ptr %scevgep614.a, i64 %i.ami
  %i.amj = insertelement <4 x ptr> poison, ptr %scevgep612.a, i64 0
  %i.amk = insertelement <4 x ptr> %i.amj, ptr %scevgep609.a, i64 1
  %i.aml = insertelement <4 x ptr> %i.amk, ptr %scevgep615, i64 2
  %i.amm = insertelement <4 x ptr> %i.aml, ptr %scevgep616, i64 3
  %i.amn = insertelement <4 x ptr> poison, ptr %scevgep610.a, i64 0
  %i.amo = insertelement <4 x ptr> %i.amn, ptr %scevgep607.a, i64 1
  %i.amp = insertelement <4 x ptr> %i.amo, ptr %scevgep613.a, i64 2
  %i.amq = insertelement <4 x ptr> %i.amp, ptr %i.alk, i64 3
  %stride.check624 = icmp slt i64 %i.alu, 0
  br label %.preheader668.us.i

.preheader668.us.i:                               ; preds = %.preheader668.us.i.preheader, %._crit_edge830.us.i
  %indvars.iv1003.i = phi i64 [ %indvars.iv.next1004.i, %._crit_edge830.us.i ], [ 0, %.preheader668.us.i.preheader ] ; 5 uses
  %.0253832.us.i = phi ptr [ %.lcssa255, %._crit_edge830.us.i ], [ %i.ald, %.preheader668.us.i.preheader ] ; 6 uses
  %.reass824.us.i = mul i64 %indvars.iv1003.i, %factor.op.mul823.i ; 4 uses
  %i.amr = or disjoint i64 %indvars.iv1003.i, 1
  %.reass824.us.1.i = mul i64 %i.amr, %factor.op.mul823.i ; 4 uses
  %i.ams = or disjoint i64 %indvars.iv1003.i, 2
  %.reass824.us.2.i = mul i64 %i.ams, %factor.op.mul823.i ; 4 uses
  %i.amt = or disjoint i64 %indvars.iv1003.i, 3
  %.reass824.us.3.i = mul i64 %i.amt, %factor.op.mul823.i ; 4 uses
  br i1 %min.iters.check637, label %.preheader665.us.i.preheader, label %vector.memcheck605

vector.memcheck605:                               ; preds = %.preheader668.us.i
  %scevgep606 = getelementptr i8, ptr %.0253832.us.i, i64 %i.aai
  %i.amu = insertelement <4 x ptr> poison, ptr %.0253832.us.i, i64 0
  %i.amv = shufflevector <4 x ptr> %i.amu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.amw = icmp ult <4 x ptr> %i.amv, %i.amm
  %i.amx = insertelement <4 x ptr> poison, ptr %scevgep606, i64 0
  %i.amy = shufflevector <4 x ptr> %i.amx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.amz = icmp ult <4 x ptr> %i.amq, %i.amy
  %i.ana = and <4 x i1> %i.amw, %i.amz
  %i.anb = bitcast <4 x i1> %i.ana to i4
  %i.anc = icmp ne i4 %i.anb, 0
  %op.rdx = or i1 %i.anc, %stride.check624
  br i1 %op.rdx, label %.preheader665.us.i.preheader, label %vector.ph638

vector.ph638:                                     ; preds = %vector.memcheck605
  %i.and = getelementptr i8, ptr %.0253832.us.i, i64 %i.aap ; 2 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph638
  %index641 = phi i64 [ 0, %vector.ph638 ], [ %index.next648, %vector.body640 ] ; 3 uses
  %i.ane = shl i64 %index641, 4
  %next.gep642 = getelementptr i8, ptr %.0253832.us.i, i64 %i.ane
  %i.anf = getelementptr [4 x i8], ptr %i.alk, i64 %index641 ; 4 uses
  %i.ang = getelementptr i8, ptr %i.anf, i64 %.reass824.us.i
  %wide.load643.a = load <4 x float>, ptr %i.ang, align 4, !tbaa !39, !alias.scope !182
  %i.anh = getelementptr i8, ptr %i.anf, i64 %.reass824.us.1.i
  %wide.load644.a = load <4 x float>, ptr %i.anh, align 4, !tbaa !39, !alias.scope !185
  %i.ani = getelementptr i8, ptr %i.anf, i64 %.reass824.us.2.i
  %wide.load645 = load <4 x float>, ptr %i.ani, align 4, !tbaa !39, !alias.scope !187
  %i.anj = getelementptr i8, ptr %i.anf, i64 %.reass824.us.3.i
  %wide.load646 = load <4 x float>, ptr %i.anj, align 4, !tbaa !39, !alias.scope !189
  %i.ank = shufflevector <4 x float> %wide.load643.a, <4 x float> %wide.load644.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anl = shufflevector <4 x float> %wide.load645, <4 x float> %wide.load646, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec647 = shufflevector <8 x float> %i.ank, <8 x float> %i.anl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec647, ptr %next.gep642, align 4, !tbaa !39, !alias.scope !191, !noalias !193
  %index.next648 = add nuw i64 %index641, 4       ; 2 uses
  %i.anm = icmp eq i64 %index.next648, %n.vec639
  br i1 %i.anm, label %middle.block649, label %vector.body640, !llvm.loop !194

middle.block649:                                  ; preds = %vector.body640
  br i1 %cmp.n650, label %._crit_edge830.us.i, label %.preheader665.us.i.preheader

.preheader665.us.i.preheader:                     ; preds = %vector.memcheck605, %.preheader668.us.i, %middle.block649
  %indvars.iv998.i.ph = phi i64 [ 0, %vector.memcheck605 ], [ 0, %.preheader668.us.i ], [ %n.vec639, %middle.block649 ] ; 4 uses
  %.1254828.us.i.ph = phi ptr [ %.0253832.us.i, %vector.memcheck605 ], [ %.0253832.us.i, %.preheader668.us.i ], [ %i.and, %middle.block649 ] ; 6 uses
  br i1 %lcmp.mod678.not, label %.preheader665.us.i.prol.loopexit, label %.preheader665.us.i.prol

.preheader665.us.i.prol:                          ; preds = %.preheader665.us.i.preheader
  %invariant.gep825.us.i.prol = getelementptr [4 x i8], ptr %i.alk, i64 %indvars.iv998.i.ph ; 4 uses
  %gep.us836.i.prol = getelementptr i8, ptr %invariant.gep825.us.i.prol, i64 %.reass824.us.i
  %i.ann = load float, ptr %gep.us836.i.prol, align 4, !tbaa !39
  store float %i.ann, ptr %.1254828.us.i.ph, align 4, !tbaa !39
  %i.ano = getelementptr inbounds nuw i8, ptr %.1254828.us.i.ph, i64 4
  %gep.us836.1.i.prol = getelementptr i8, ptr %invariant.gep825.us.i.prol, i64 %.reass824.us.1.i
  %i.anp = load float, ptr %gep.us836.1.i.prol, align 4, !tbaa !39
  store float %i.anp, ptr %i.ano, align 4, !tbaa !39
  %i.anq = getelementptr inbounds nuw i8, ptr %.1254828.us.i.ph, i64 8
  %gep.us836.2.i.prol = getelementptr i8, ptr %invariant.gep825.us.i.prol, i64 %.reass824.us.2.i
  %i.anr = load float, ptr %gep.us836.2.i.prol, align 4, !tbaa !39
  store float %i.anr, ptr %i.anq, align 4, !tbaa !39
  %i.ans = getelementptr inbounds nuw i8, ptr %.1254828.us.i.ph, i64 12
  %gep.us836.3.i.prol = getelementptr i8, ptr %invariant.gep825.us.i.prol, i64 %.reass824.us.3.i
  %i.ant = load float, ptr %gep.us836.3.i.prol, align 4, !tbaa !39
  store float %i.ant, ptr %i.ans, align 4, !tbaa !39
  %i.anu = getelementptr inbounds nuw i8, ptr %.1254828.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next999.i.prol = or disjoint i64 %indvars.iv998.i.ph, 1
  br label %.preheader665.us.i.prol.loopexit

.preheader665.us.i.prol.loopexit:                 ; preds = %.preheader665.us.i.prol, %.preheader665.us.i.preheader
  %.lcssa656.unr = phi ptr [ poison, %.preheader665.us.i.preheader ], [ %i.anu, %.preheader665.us.i.prol ]
  %indvars.iv998.i.unr = phi i64 [ %indvars.iv998.i.ph, %.preheader665.us.i.preheader ], [ %indvars.iv.next999.i.prol, %.preheader665.us.i.prol ]
  %.1254828.us.i.unr = phi ptr [ %.1254828.us.i.ph, %.preheader665.us.i.preheader ], [ %i.anu, %.preheader665.us.i.prol ]
  %i.anv = icmp eq i64 %indvars.iv998.i.ph, %i.aaq
  br i1 %i.anv, label %._crit_edge830.us.i, label %.preheader665.us.i

.preheader665.us.i:                               ; preds = %.preheader665.us.i.prol.loopexit, %.preheader665.us.i
  %indvars.iv998.i = phi i64 [ %indvars.iv.next999.i.1, %.preheader665.us.i ], [ %indvars.iv998.i.unr, %.preheader665.us.i.prol.loopexit ] ; 3 uses
  %.1254828.us.i = phi ptr [ %i.aom, %.preheader665.us.i ], [ %.1254828.us.i.unr, %.preheader665.us.i.prol.loopexit ] ; 9 uses
  %invariant.gep825.us.i = getelementptr [4 x i8], ptr %i.alk, i64 %indvars.iv998.i ; 4 uses
  %gep.us836.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.i
  %i.anw = load float, ptr %gep.us836.i, align 4, !tbaa !39
  store float %i.anw, ptr %.1254828.us.i, align 4, !tbaa !39
  %i.anx = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 4
  %gep.us836.1.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.1.i
  %i.any = load float, ptr %gep.us836.1.i, align 4, !tbaa !39
  store float %i.any, ptr %i.anx, align 4, !tbaa !39
  %i.anz = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 8
  %gep.us836.2.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.2.i
  %i.aoa = load float, ptr %gep.us836.2.i, align 4, !tbaa !39
  store float %i.aoa, ptr %i.anz, align 4, !tbaa !39
  %i.aob = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 12
  %gep.us836.3.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.3.i
  %i.aoc = load float, ptr %gep.us836.3.i, align 4, !tbaa !39
  store float %i.aoc, ptr %i.aob, align 4, !tbaa !39
  %i.aod = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 16
  %i.aoe = getelementptr [4 x i8], ptr %i.alk, i64 %indvars.iv998.i
  %invariant.gep825.us.i.1 = getelementptr i8, ptr %i.aoe, i64 4 ; 4 uses
  %gep.us836.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.i
  %i.aof = load float, ptr %gep.us836.i.1, align 4, !tbaa !39
  store float %i.aof, ptr %i.aod, align 4, !tbaa !39
  %i.aog = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 20
  %gep.us836.1.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.1.i
  %i.aoh = load float, ptr %gep.us836.1.i.1, align 4, !tbaa !39
  store float %i.aoh, ptr %i.aog, align 4, !tbaa !39
  %i.aoi = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 24
  %gep.us836.2.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.2.i
  %i.aoj = load float, ptr %gep.us836.2.i.1, align 4, !tbaa !39
  store float %i.aoj, ptr %i.aoi, align 4, !tbaa !39
  %i.aok = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 28
  %gep.us836.3.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.3.i
  %i.aol = load float, ptr %gep.us836.3.i.1, align 4, !tbaa !39
  store float %i.aol, ptr %i.aok, align 4, !tbaa !39
  %i.aom = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 32 ; 2 uses
  %indvars.iv.next999.i.1 = add nuw nsw i64 %indvars.iv998.i, 2 ; 2 uses
  %exitcond1002.not.i.1 = icmp eq i64 %indvars.iv.next999.i.1, %wide.trip.count1001.i
  br i1 %exitcond1002.not.i.1, label %._crit_edge830.us.i, label %.preheader665.us.i, !llvm.loop !195

._crit_edge830.us.i:                              ; preds = %.preheader665.us.i.prol.loopexit, %.preheader665.us.i, %middle.block649
  %.lcssa255 = phi ptr [ %i.and, %middle.block649 ], [ %.lcssa656.unr, %.preheader665.us.i.prol.loopexit ], [ %i.aom, %.preheader665.us.i ] ; 2 uses
  %indvars.iv.next1004.i = add nuw nsw i64 %indvars.iv1003.i, 4 ; 3 uses
  %i.aon = icmp slt i64 %indvars.iv.next1004.i, %invariant.op1068.i
  br i1 %i.aon, label %.preheader668.us.i, label %.preheader670.loopexit.i, !llvm.loop !196

.preheader670.loopexit.i:                         ; preds = %._crit_edge830.us.i
  %i.aoo = trunc nuw nsw i64 %indvars.iv.next1004.i to i32
  br label %.preheader670.i

.preheader670.i:                                  ; preds = %.preheader670.loopexit.i, %.preheader668.lr.ph.i, %.noexc454.i
  %.0253.lcssa.i = phi ptr [ %i.ald, %.noexc454.i ], [ %.lcssa255, %.preheader670.loopexit.i ], [ %i.ald, %.preheader668.lr.ph.i ] ; 3 uses
  %.0252.lcssa.i = phi i32 [ 0, %.noexc454.i ], [ %i.aoo, %.preheader670.loopexit.i ], [ %i.aad, %.preheader668.lr.ph.i ] ; 6 uses
  %i.aop = or disjoint i32 %.0252.lcssa.i, 1
  %i.aoq = icmp slt i32 %i.aop, %i.bu
  br i1 %i.aoq, label %.preheader667.lr.ph.i, label %.preheader669.i

.preheader667.lr.ph.i:                            ; preds = %.preheader670.i
  %i.aor = load i32, ptr %i.aaa, align 4
  %i.aos = load ptr, ptr %3, align 8              ; 5 uses
  %i.aot = load i64, ptr %i.aab, align 8          ; 2 uses
  %i.aou = mul i64 %i.aot, %indvars.iv1026.i
  %i.aov = load i64, ptr %i.aac, align 8          ; 5 uses
  %i.aow = mul i64 %i.aou, %i.aov
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aow ; 6 uses
  %i.aoy = sext i32 %i.aor to i64                 ; 4 uses
  %factor.op.mul839.i = mul i64 %i.aov, %i.aoy    ; 2 uses
  br i1 %i.zz, label %.preheader667.us.preheader.i, label %.preheader667.preheader.i

.preheader667.preheader.i:                        ; preds = %.preheader667.lr.ph.i
  %i.aoz = add i32 %.0252.lcssa.i, 3
  %smax1006.i = call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.aoz)
  %reass.sub166 = sub i32 %smax1006.i, %.0252.lcssa.i
  %i.apa = and i32 %reass.sub166, -2
  %i.apb = add i32 %.0252.lcssa.i, %i.apa
  br label %.preheader669.i

.preheader667.us.preheader.i:                     ; preds = %.preheader667.lr.ph.i
  %i.apc = zext i32 %.0252.lcssa.i to i64         ; 3 uses
  %i.apd = mul i64 %i.aot, %indvars.iv1026.i      ; 2 uses
  %i.ape = add nuw nsw i64 %i.apc, 1
  %i.apf = mul i64 %i.ape, %i.aoy
  %i.apg = add i64 %i.apd, %i.apf
  %i.aph = mul i64 %i.aov, %i.apg                 ; 2 uses
  %i.api = shl i64 %i.aov, 1
  %i.apj = mul i64 %i.api, %i.aoy
  %i.apk = mul nsw i64 %i.aoy, %i.apc
  %i.apl = add i64 %i.apd, %i.apk
  %i.apm = mul i64 %i.aov, %i.apl                 ; 2 uses
  %i.apn = getelementptr i8, ptr %i.aos, i64 %i.aah
  %i.apo = getelementptr i8, ptr %i.apn, i64 %i.apm
  %i.app = getelementptr i8, ptr %i.aos, i64 %i.apm
  %i.apq = getelementptr i8, ptr %i.aos, i64 %i.aah
  %i.apr = getelementptr i8, ptr %i.apq, i64 %i.aph
  %i.aps = getelementptr i8, ptr %i.aos, i64 %i.aph
  br label %.preheader667.us.i

.preheader667.us.i:                               ; preds = %._crit_edge846.us.i, %.preheader667.us.preheader.i
  %indvar573 = phi i64 [ %indvar.next574, %._crit_edge846.us.i ], [ 0, %.preheader667.us.preheader.i ] ; 2 uses
  %indvars.iv1015.i = phi i64 [ %indvars.iv.next1016.i, %._crit_edge846.us.i ], [ %i.apc, %.preheader667.us.preheader.i ] ; 3 uses
  %.3848.us.i = phi ptr [ %.lcssa256.a, %._crit_edge846.us.i ], [ %.0253.lcssa.i, %.preheader667.us.preheader.i ] ; 8 uses
  %.reass840.us.i = mul i64 %indvars.iv1015.i, %factor.op.mul839.i ; 6 uses
  %i.apt = add nuw nsw i64 %indvars.iv1015.i, 1
  %.reass840.us.1.i = mul i64 %i.apt, %factor.op.mul839.i ; 6 uses
  br i1 %min.iters.check587, label %.preheader.us.i.preheader, label %vector.memcheck571

vector.memcheck571:                               ; preds = %.preheader667.us.i
  %i.apu = mul i64 %i.apj, %indvar573             ; 4 uses
  %scevgep578 = getelementptr i8, ptr %i.apo, i64 %i.apu
  %scevgep577 = getelementptr i8, ptr %i.app, i64 %i.apu
  %scevgep576 = getelementptr i8, ptr %i.apr, i64 %i.apu
  %scevgep575 = getelementptr i8, ptr %i.aps, i64 %i.apu
  %scevgep572 = getelementptr i8, ptr %.3848.us.i, i64 %i.aag ; 2 uses
  %bound0579 = icmp ult ptr %.3848.us.i, %scevgep576
  %bound1580 = icmp ult ptr %scevgep575, %scevgep572
  %found.conflict581 = and i1 %bound0579, %bound1580
  %bound0582 = icmp ult ptr %.3848.us.i, %scevgep578
  %bound1583 = icmp ult ptr %scevgep577, %scevgep572
  %found.conflict584 = and i1 %bound0582, %bound1583
  %conflict.rdx585 = or i1 %found.conflict581, %found.conflict584
  br i1 %conflict.rdx585, label %.preheader.us.i.preheader, label %vector.ph588

vector.ph588:                                     ; preds = %vector.memcheck571
  %i.apv = getelementptr i8, ptr %.3848.us.i, i64 %i.aar ; 2 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph588
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next600, %vector.body590 ] ; 3 uses
  %i.apw = shl i64 %index591, 3                   ; 2 uses
  %next.gep592 = getelementptr i8, ptr %.3848.us.i, i64 %i.apw
  %i.apx = getelementptr i8, ptr %.3848.us.i, i64 %i.apw
  %next.gep593 = getelementptr i8, ptr %i.apx, i64 16
  %i.apy = getelementptr [4 x i8], ptr %i.aox, i64 %index591 ; 2 uses
  %i.apz = getelementptr i8, ptr %i.apy, i64 %.reass840.us.i ; 2 uses
  %i.aqa = getelementptr i8, ptr %i.apz, i64 8
  %wide.load594.a = load <2 x float>, ptr %i.apz, align 4, !tbaa !39, !alias.scope !197
  %wide.load595.a = load <2 x float>, ptr %i.aqa, align 4, !tbaa !39, !alias.scope !197
  %i.aqb = getelementptr i8, ptr %i.apy, i64 %.reass840.us.1.i ; 2 uses
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 8
  %wide.load596 = load <2 x float>, ptr %i.aqb, align 4, !tbaa !39, !alias.scope !200
  %wide.load597 = load <2 x float>, ptr %i.aqc, align 4, !tbaa !39, !alias.scope !200
  %interleaved.vec598 = shufflevector <2 x float> %wide.load594.a, <2 x float> %wide.load596, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec598, ptr %next.gep592, align 4, !tbaa !39, !alias.scope !202, !noalias !204
  %interleaved.vec599 = shufflevector <2 x float> %wide.load595.a, <2 x float> %wide.load597, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec599, ptr %next.gep593, align 4, !tbaa !39, !alias.scope !202, !noalias !204
  %index.next600 = add nuw i64 %index591, 4       ; 2 uses
  %i.aqd = icmp eq i64 %index.next600, %n.vec589
  br i1 %i.aqd, label %middle.block601, label %vector.body590, !llvm.loop !205

middle.block601:                                  ; preds = %vector.body590
  br i1 %cmp.n602, label %._crit_edge846.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %vector.memcheck571, %.preheader667.us.i, %middle.block601
  %indvars.iv1010.i.ph = phi i64 [ 0, %vector.memcheck571 ], [ 0, %.preheader667.us.i ], [ %n.vec589, %middle.block601 ] ; 3 uses
  %.4844.us.i.ph = phi ptr [ %.3848.us.i, %vector.memcheck571 ], [ %.3848.us.i, %.preheader667.us.i ], [ %i.apv, %middle.block601 ] ; 2 uses
  br i1 %lcmp.mod681.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader, %.preheader.us.i.prol
  %indvars.iv1010.i.prol = phi i64 [ %indvars.iv.next1011.i.prol, %.preheader.us.i.prol ], [ %indvars.iv1010.i.ph, %.preheader.us.i.preheader ] ; 2 uses
  %.4844.us.i.prol = phi ptr [ %i.aqh, %.preheader.us.i.prol ], [ %.4844.us.i.ph, %.preheader.us.i.preheader ] ; 3 uses
  %prol.iter682 = phi i64 [ %prol.iter682.next, %.preheader.us.i.prol ], [ 0, %.preheader.us.i.preheader ]
  %invariant.gep841.us.i.prol = getelementptr [4 x i8], ptr %i.aox, i64 %indvars.iv1010.i.prol ; 2 uses
  %gep.us852.i.prol = getelementptr i8, ptr %invariant.gep841.us.i.prol, i64 %.reass840.us.i
  %i.aqe = load float, ptr %gep.us852.i.prol, align 4, !tbaa !39
  store float %i.aqe, ptr %.4844.us.i.prol, align 4, !tbaa !39
  %i.aqf = getelementptr inbounds nuw i8, ptr %.4844.us.i.prol, i64 4
  %gep.us852.1.i.prol = getelementptr i8, ptr %invariant.gep841.us.i.prol, i64 %.reass840.us.1.i
  %i.aqg = load float, ptr %gep.us852.1.i.prol, align 4, !tbaa !39
  store float %i.aqg, ptr %i.aqf, align 4, !tbaa !39
  %i.aqh = getelementptr inbounds nuw i8, ptr %.4844.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1011.i.prol = add nuw nsw i64 %indvars.iv1010.i.prol, 1 ; 2 uses
  %prol.iter682.next = add i64 %prol.iter682, 1   ; 2 uses
  %prol.iter682.cmp.not = icmp eq i64 %prol.iter682.next, %xtraiter680
  br i1 %prol.iter682.cmp.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol, !llvm.loop !206

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader
  %.lcssa657.unr.a = phi ptr [ poison, %.preheader.us.i.preheader ], [ %i.aqh, %.preheader.us.i.prol ]
  %indvars.iv1010.i.unr = phi i64 [ %indvars.iv1010.i.ph, %.preheader.us.i.preheader ], [ %indvars.iv.next1011.i.prol, %.preheader.us.i.prol ]
  %.4844.us.i.unr = phi ptr [ %.4844.us.i.ph, %.preheader.us.i.preheader ], [ %i.aqh, %.preheader.us.i.prol ]
  %i.aqi = sub nsw i64 %indvars.iv1010.i.ph, %wide.trip.count1001.i
  %i.aqj = icmp ugt i64 %i.aqi, -4
  br i1 %i.aqj, label %._crit_edge846.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv1010.i = phi i64 [ %indvars.iv.next1011.i.3, %.preheader.us.i ], [ %indvars.iv1010.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %.4844.us.i = phi ptr [ %i.arc, %.preheader.us.i ], [ %.4844.us.i.unr, %.preheader.us.i.prol.loopexit ] ; 9 uses
  %invariant.gep841.us.i = getelementptr [4 x i8], ptr %i.aox, i64 %indvars.iv1010.i ; 2 uses
  %gep.us852.i = getelementptr i8, ptr %invariant.gep841.us.i, i64 %.reass840.us.i
  %i.aqk = load float, ptr %gep.us852.i, align 4, !tbaa !39
  store float %i.aqk, ptr %.4844.us.i, align 4, !tbaa !39
  %i.aql = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 4
  %gep.us852.1.i = getelementptr i8, ptr %invariant.gep841.us.i, i64 %.reass840.us.1.i
  %i.aqm = load float, ptr %gep.us852.1.i, align 4, !tbaa !39
  store float %i.aqm, ptr %i.aql, align 4, !tbaa !39
  %i.aqn = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 8
  %i.aqo = getelementptr [4 x i8], ptr %i.aox, i64 %indvars.iv1010.i
  %invariant.gep841.us.i.1 = getelementptr i8, ptr %i.aqo, i64 4 ; 2 uses
  %gep.us852.i.1 = getelementptr i8, ptr %invariant.gep841.us.i.1, i64 %.reass840.us.i
  %i.aqp = load float, ptr %gep.us852.i.1, align 4, !tbaa !39
  store float %i.aqp, ptr %i.aqn, align 4, !tbaa !39
  %i.aqq = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 12
  %gep.us852.1.i.1 = getelementptr i8, ptr %invariant.gep841.us.i.1, i64 %.reass840.us.1.i
  %i.aqr = load float, ptr %gep.us852.1.i.1, align 4, !tbaa !39
  store float %i.aqr, ptr %i.aqq, align 4, !tbaa !39
  %i.aqs = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 16
  %i.aqt = getelementptr [4 x i8], ptr %i.aox, i64 %indvars.iv1010.i
  %invariant.gep841.us.i.2 = getelementptr i8, ptr %i.aqt, i64 8 ; 2 uses
  %gep.us852.i.2 = getelementptr i8, ptr %invariant.gep841.us.i.2, i64 %.reass840.us.i
  %i.aqu = load float, ptr %gep.us852.i.2, align 4, !tbaa !39
  store float %i.aqu, ptr %i.aqs, align 4, !tbaa !39
  %i.aqv = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 20
  %gep.us852.1.i.2 = getelementptr i8, ptr %invariant.gep841.us.i.2, i64 %.reass840.us.1.i
  %i.aqw = load float, ptr %gep.us852.1.i.2, align 4, !tbaa !39
  store float %i.aqw, ptr %i.aqv, align 4, !tbaa !39
  %i.aqx = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 24
  %i.aqy = getelementptr [4 x i8], ptr %i.aox, i64 %indvars.iv1010.i
  %invariant.gep841.us.i.3 = getelementptr i8, ptr %i.aqy, i64 12 ; 2 uses
  %gep.us852.i.3 = getelementptr i8, ptr %invariant.gep841.us.i.3, i64 %.reass840.us.i
  %i.aqz = load float, ptr %gep.us852.i.3, align 4, !tbaa !39
  store float %i.aqz, ptr %i.aqx, align 4, !tbaa !39
  %i.ara = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 28
  %gep.us852.1.i.3 = getelementptr i8, ptr %invariant.gep841.us.i.3, i64 %.reass840.us.1.i
  %i.arb = load float, ptr %gep.us852.1.i.3, align 4, !tbaa !39
  store float %i.arb, ptr %i.ara, align 4, !tbaa !39
  %i.arc = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 32 ; 2 uses
  %indvars.iv.next1011.i.3 = add nuw nsw i64 %indvars.iv1010.i, 4 ; 2 uses
  %exitcond1014.not.i.3 = icmp eq i64 %indvars.iv.next1011.i.3, %wide.trip.count1001.i
  br i1 %exitcond1014.not.i.3, label %._crit_edge846.us.i, label %.preheader.us.i, !llvm.loop !207

._crit_edge846.us.i:                              ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block601
  %.lcssa256.a = phi ptr [ %i.apv, %middle.block601 ], [ %.lcssa657.unr.a, %.preheader.us.i.prol.loopexit ], [ %i.arc, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next1016.i = add nuw nsw i64 %indvars.iv1015.i, 2 ; 2 uses
  %i.ard = trunc i64 %indvars.iv.next1016.i to i32 ; 2 uses
  %i.are = or i32 %i.ard, 1
  %i.arf = icmp slt i32 %i.are, %i.bu
  %indvar.next574 = add i64 %indvar573, 1
  br i1 %i.arf, label %.preheader667.us.i, label %.preheader669.i, !llvm.loop !208

.preheader669.i:                                  ; preds = %._crit_edge846.us.i, %.preheader667.preheader.i, %.preheader670.i
  %.3.lcssa.i = phi ptr [ %.0253.lcssa.i, %.preheader670.i ], [ %.0253.lcssa.i, %.preheader667.preheader.i ], [ %.lcssa256.a, %._crit_edge846.us.i ]
  %.1.lcssa.i = phi i32 [ %.0252.lcssa.i, %.preheader670.i ], [ %i.apb, %.preheader667.preheader.i ], [ %i.ard, %._crit_edge846.us.i ] ; 2 uses
  %i.arg = icmp slt i32 %.1.lcssa.i, %i.bu
  br i1 %i.arg, label %.preheader666.lr.ph.i, label %._crit_edge861.split.i

.preheader666.lr.ph.i:                            ; preds = %.preheader669.i
  %i.arh = load i32, ptr %i.aaa, align 4
  %i.ari = load ptr, ptr %3, align 8              ; 2 uses
  %i.arj = load i64, ptr %i.aab, align 8          ; 2 uses
  %i.ark = mul i64 %i.arj, %indvars.iv1026.i
  %i.arl = load i64, ptr %i.aac, align 8          ; 4 uses
  %i.arm = mul i64 %i.ark, %i.arl
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arm
  %i.aro = sext i32 %i.arh to i64                 ; 3 uses
  %factor.op.mul862.i = mul i64 %i.arl, %i.aro
  br i1 %i.zz, label %.preheader666.preheader.i, label %._crit_edge861.split.i

.preheader666.preheader.i:                        ; preds = %.preheader666.lr.ph.i
  %i.arp = ptrtoaddr ptr %i.ari to i64
  %i.arq = zext i32 %.1.lcssa.i to i64            ; 2 uses
  %i.arr = mul i64 %i.arj, %indvars.iv1026.i
  %i.ars = mul nsw i64 %i.aro, %i.arq
  %i.art = add i64 %i.arr, %i.ars
  %i.aru = mul i64 %i.arl, %i.art
  %i.arv = add i64 %i.aru, %i.arp
  %i.arw = mul i64 %i.arl, %i.aro
  br label %.preheader666.i

.preheader666.i:                                  ; preds = %._crit_edge857.i, %.preheader666.preheader.i
  %indvar555 = phi i64 [ %indvar.next556, %._crit_edge857.i ], [ 0, %.preheader666.preheader.i ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %._crit_edge857.i ], [ %i.arq, %.preheader666.preheader.i ] ; 2 uses
  %.6859.i = phi ptr [ %.lcssa258, %._crit_edge857.i ], [ %.3.lcssa.i, %.preheader666.preheader.i ] ; 5 uses
  %.reass863.i = mul i64 %factor.op.mul862.i, %indvars.iv1023.i
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arn, i64 %.reass863.i ; 10 uses
  br i1 %min.iters.check558, label %.noexc449.i.preheader, label %vector.memcheck553

end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.af:                                            ; preds = %bb.ad
  %.not.i106 = icmp eq ptr %i.gw, null
  br i1 %.not.i106, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.gw) #10
  br label %_ZN4ncnn3MatD2Ev.exit67

bb.ah:                                            ; preds = %bb.ae
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %bb.ac, %_ZN4ncnn3MatD2Ev.exit70, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.dl

bb.ai:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  %i.hc = load i32, ptr %i.bk, align 8, !tbaa !233
  %i.hd = mul nsw i32 %i.hc, %i.bi
  %i.he = load i32, ptr %i.o, align 4, !tbaa !68
  %i.hf = load i32, ptr %i.bc, align 4, !tbaa !232
  %i.hg = mul nsw i32 %i.hf, %i.he
  %i.hh = sub nsw i32 %i.hd, %i.hg
  %i.hi = select i1 %i.by, i32 2, i32 0
  %i.hj = shl i32 %i.hh, %i.hi
  store i32 %i.hj, ptr %i.s, align 4, !tbaa !68
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.t, i32 %i.hl)
  %_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined._ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1 = select i1 %i.by, ptr @_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr @_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull %_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined._ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.q, ptr nonnull %6, ptr nonnull %i.r, ptr nonnull %4, ptr nonnull %0, ptr nonnull %i.p, ptr nonnull %i.o, ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !42 ; 3 uses
  %.not59 = icmp eq ptr %i.hn, null
  br i1 %.not59, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef i32 %i.hq(ptr noundef nonnull align 8 dereferenceable(208) %i.hn, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.ak unwind label %bb.v      ; 0 uses

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.hs = load ptr, ptr %i.fw, align 8, !tbaa !11 ; 2 uses
  %.not.i71 = icmp eq ptr %i.hs, null
  br i1 %.not.i71, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ht = atomicrmw add ptr %i.hs, i32 -1 acq_rel, align 4
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit69

bb.am:                                            ; preds = %bb.al
  %i.hv = load ptr, ptr %i.fx, align 8, !tbaa !17 ; 3 uses
  %.not3.i72 = icmp eq ptr %i.hv, null
  %i.hw = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i72, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.hw)
          to label %_ZN4ncnn3MatD2Ev.exit69 unwind label %bb.aq, !inline_history !19

bb.ao:                                            ; preds = %bb.am
  %.not.i110 = icmp eq ptr %i.hw, null
  br i1 %.not.i110, label %_ZN4ncnn3MatD2Ev.exit69, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.hw) #10
  br label %_ZN4ncnn3MatD2Ev.exit69

bb.aq:                                            ; preds = %bb.an
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit69:                          ; preds = %bb.al, %bb.ak, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ic = load ptr, ptr %i.eu, align 8, !tbaa !11 ; 2 uses
  %.not.i75 = icmp eq ptr %i.ic, null
  br i1 %.not.i75, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.ar

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69
  %i.id = atomicrmw add ptr %i.ic, i32 -1 acq_rel, align 4
  %i.ie = icmp eq i32 %i.id, 1
  br i1 %i.ie, label %bb.as, label %_ZN4ncnn3MatD2Ev.exit68

bb.as:                                            ; preds = %bb.ar
  %i.if = load ptr, ptr %i.fc, align 16, !tbaa !17 ; 3 uses
  %.not3.i76 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i76, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ig)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.aw, !inline_history !19

bb.au:                                            ; preds = %bb.as
  %.not.i108 = icmp eq ptr %i.ig, null
  br i1 %.not.i108, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.ig) #10
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.aw:                                            ; preds = %bb.at
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit69, %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.cw

bb.ax:                                            ; preds = %bb.r
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.io = load i32, ptr %i.an, align 4, !tbaa !230 ; 2 uses
  %i.ip = load i32, ptr %i.au, align 8, !tbaa !231 ; 2 uses
  %i.iq = load i32, ptr %i.bc, align 4, !tbaa !232
  %i.ir = load i32, ptr %i.bk, align 8, !tbaa !233
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.it = load i32, ptr %i.is, align 4, !tbaa !38
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !68
  store i32 %i.ep, ptr %i.b, align 4, !tbaa !68
  store i32 %i.io, ptr %i.c, align 4, !tbaa !68
  store i32 %i.ip, ptr %i.d, align 4, !tbaa !68
  store i32 %i.iq, ptr %i.e, align 4, !tbaa !68
  store i32 %i.ir, ptr %i.f, align 4, !tbaa !68
  store i32 %i.it, ptr %i.g, align 4, !tbaa !68
  %i.iv = load i32, ptr %i.cg, align 8, !tbaa !67 ; 2 uses
  %i.iw = mul nsw i32 %i.ek, %i.iv                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.ix = sext i32 %i.iv to i64
  %i.iy = mul i64 %i.ej, %i.ix
  store i64 %i.iy, ptr %i.h, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.iz = add nsw i32 %i.eo, -1
  %i.ja = mul nsw i32 %i.io, %i.iz
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.i, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.jc = add nsw i32 %i.ep, -1
  %i.jd = mul nsw i32 %i.ip, %i.jc
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  store i32 %i.eq, ptr %i.k, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.jf = load ptr, ptr %i.in, align 8, !tbaa !18
  store ptr %i.jf, ptr %i.l, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.jg = sdiv i32 %i.iw, 4
  store i32 %i.jg, ptr %i.m, align 4, !tbaa !68
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.t, i32 %i.ji)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.im, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.iu, ptr nonnull %i.h)
  %i.jj = load i32, ptr %i.m, align 4, !tbaa !68
  %i.jk = shl nsw i32 %i.jj, 2
  %i.jl = load i32, ptr %i.n, align 4, !tbaa !68
  %i.jm = add nsw i32 %i.jl, %i.jk                ; 5 uses
  store i32 %i.jm, ptr %i.n, align 4, !tbaa !68
  %i.jn = sub nsw i32 %i.iw, %i.jm                ; 2 uses
  %i.jo = sdiv i32 %i.jn, 2                       ; 3 uses
  store i32 %i.jo, ptr %i.m, align 4, !tbaa !68
  %i.jp = icmp sgt i32 %i.jn, 1
  br i1 %i.jp, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, label %._crit_edge1064.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.i:                 ; preds = %bb.ax
  %i.jq = load i32, ptr %i.am, align 8, !tbaa !67
  %.fr.i = freeze i32 %i.jq                       ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !69
  %i.jt = mul i32 %i.js, %.fr.i                   ; 10 uses
  %i.ju = load i32, ptr %i.ag, align 4, !tbaa !56 ; 5 uses
  %i.jv = load i32, ptr %i.ai, align 8, !tbaa !216 ; 4 uses
  %i.jw = load i32, ptr %i.cj, align 4, !tbaa !56 ; 2 uses
  %i.jx = load i32, ptr %i.ck, align 16, !tbaa !216 ; 2 uses
  %i.jy = load ptr, ptr %4, align 16, !tbaa !18, !noalias !251 ; 2 uses
  %i.jz = load i64, ptr %i.cm, align 16, !tbaa !20, !noalias !251
  %i.ka = load i64, ptr %i.cf, align 16, !tbaa !57, !noalias !251
  %factor.op.mul.i = mul i64 %i.ka, %i.jz         ; 2 uses
  %i.kb = icmp slt i32 %i.jx, 1
  %i.kc = icmp slt i32 %i.jw, 1
  %i.kd = icmp sgt i32 %i.jt, 3
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %brmerge.i = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %brmerge.i, label %._crit_edge1064.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kh = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !254
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !20, !noalias !254
  %i.kj = load i64, ptr %i.kf, align 8, !tbaa !57, !noalias !254
  %factor.op.mul1070.i = mul i64 %i.kj, %i.ki
  %i.kk = and i32 %i.jt, -4                       ; 2 uses
  %i.kl = add i32 %i.kk, -4
  %i.km = zext i32 %i.kl to i64
  %i.kn = add nuw nsw i64 %i.km, 4
  %i.ko = sext i32 %i.jt to i64
  %i.kp = sext i32 %i.jm to i64
  %wide.trip.count1329.i = zext nneg i32 %i.jo to i64
  %invariant.op1440.i = add nsw i64 %i.ko, -3
  %i.kq = sext i32 %i.ju to i64                   ; 4 uses
  %i.kr = and i32 %i.jt, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1064.split.i:                          ; preds = %._crit_edge1062.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.ax
  %i.ks = shl nsw i32 %i.jo, 1                    ; 2 uses
  %i.kt = add nsw i32 %i.ks, %i.jm
  %i.ku = icmp slt i32 %i.kt, %i.iw
  br i1 %i.ku, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1064.split.i
  %i.kv = load i32, ptr %i.am, align 8, !tbaa !67
  %.fr1092.i = freeze i32 %i.kv                   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !69
  %i.ky = mul i32 %i.kx, %.fr1092.i               ; 10 uses
  %i.kz = load i32, ptr %i.ag, align 4, !tbaa !56 ; 5 uses
  %i.la = load i32, ptr %i.ai, align 8, !tbaa !216 ; 4 uses
  %i.lb = load i32, ptr %i.cj, align 4, !tbaa !56 ; 2 uses
  %i.lc = load i32, ptr %i.ck, align 16, !tbaa !216 ; 2 uses
  %i.ld = load ptr, ptr %4, align 16, !tbaa !18, !noalias !257
  %i.le = load i64, ptr %i.cm, align 16, !tbaa !20, !noalias !257
  %i.lf = load i64, ptr %i.cf, align 16, !tbaa !57, !noalias !257
  %factor.op.mul1213.i = mul i64 %i.lf, %i.le
  %i.lg = icmp slt i32 %i.lc, 1
  %i.lh = icmp slt i32 %i.lb, 1
  %i.li = icmp sgt i32 %i.ky, 3
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %brmerge1222.i = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %brmerge1222.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.lm = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !260
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !20, !noalias !260
  %i.lo = load i64, ptr %i.lk, align 8, !tbaa !57, !noalias !260
  %factor.op.mul1216.i = mul i64 %i.lo, %i.ln
  %i.lp = and i32 %i.ky, -4                       ; 2 uses
  %i.lq = add i32 %i.lp, -4
  %i.lr = zext i32 %i.lq to i64
  %i.ls = add nuw nsw i64 %i.lr, 4
  %i.lt = sext i32 %i.ky to i64
  %i.lu = sext i32 %i.jm to i64
  %i.lv = sext i32 %i.ks to i64
  %i.lw = add nsw i64 %i.lv, %i.lu
  %i.lx = sext i32 %i.iw to i64
  %invariant.op1441.i = add nsw i64 %i.lt, -3
  %i.ly = sext i32 %i.kz to i64                   ; 4 uses
  %i.lz = and i32 %i.ky, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1062.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1326.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1327.i, %._crit_edge1062.i ] ; 2 uses
  %i.ma = shl nuw nsw i64 %indvars.iv1326.i, 1
  %i.mb = add nsw i64 %i.ma, %i.kp                ; 4 uses
  %.reass.i = mul i64 %i.mb, %factor.op.mul.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.reass.i
  %i.md = add nsw i64 %i.mb, 1
  %.reass1067.i = mul i64 %i.md, %factor.op.mul.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.reass1067.i
  %i.mf = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.mf, null
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.mb
  %i.mh = trunc nsw i64 %i.mb to i32              ; 2 uses
  %i.mi = sdiv i32 %i.mh, 4
  %i.mj = srem i32 %i.mh, 4
  %.lhs.trunc.i = trunc nsw i32 %i.mj to i8
  %i.mk = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.mk to i32
  %i.ml = add nsw i32 %i.mi, %.sext.i
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load i32, ptr %i.g, align 4
  %.reass1071.i = mul i64 %factor.op.mul1070.i, %i.mm
  %i.mo = getelementptr i8, ptr %i.kh, i64 %.reass1071.i ; 3 uses
  br label %.preheader903.i

.preheader903.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03811061.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg879.i, %._crit_edge.i ]
  %.03821060.i = phi ptr [ %i.me, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.xv, %._crit_edge.i ]
  %.03841059.i = phi ptr [ %i.mc, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.xu, %._crit_edge.i ]
  %i.mp = load i32, ptr %i.b, align 4             ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0                   ; 3 uses
  %.neg879.i = add nuw nsw i32 %.03811061.i, 1    ; 5 uses
  %i.mr = load i32, ptr %i.k, align 4             ; 3 uses
  %i.ms = shl i32 %i.mr, 3
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  %i.mu = shl i32 %i.mr, 2
  %i.mv = sext i32 %i.mu to i64                   ; 3 uses
  %i.mw = shl nsw i32 %i.mr, 1
  %i.mx = sext i32 %i.mw to i64
  %i.my = mul nsw i64 %i.kn, %i.mt
  %scevgep1274.i = getelementptr i8, ptr %i.mo, i64 %i.my
  %wide.trip.count1287.i = zext nneg i32 %i.mp to i64 ; 4 uses
  br label %bb.ay

._crit_edge1062.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1327.i = add nuw nsw i64 %indvars.iv1326.i, 1 ; 2 uses
  %exitcond1330.not.i = icmp eq i64 %indvars.iv.next1327.i, %wide.trip.count1329.i
  br i1 %exitcond1330.not.i, label %._crit_edge1064.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !263

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1325.not.i = icmp eq i32 %.neg879.i, %i.jx
  br i1 %exitcond1325.not.i, label %._crit_edge1062.i, label %.preheader903.i, !llvm.loop !264

bb.ay:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader903.i
  %.03801057.i = phi i32 [ 0, %.preheader903.i ], [ %i.xw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  %.13831056.i = phi ptr [ %.03821060.i, %.preheader903.i ], [ %i.xv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13851055.i = phi ptr [ %.03841059.i, %.preheader903.i ], [ %i.xu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mz = load <2 x float>, ptr %i.mg, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.az, %bb.ay
  %i.na = phi <2 x float> [ %i.mz, %bb.az ], [ zeroinitializer, %bb.ay ]
  br i1 %i.kd, label %.preheader901.lr.ph.i, label %._crit_edge950.i

.preheader901.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.nb = load i32, ptr %i.d, align 4             ; 2 uses
  %i.nc = load i32, ptr %i.j, align 4
  %invariant.op931.i = sub i32 %.neg879.i, %i.nc  ; 2 uses
  %i.nd = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ne = load i32, ptr %i.a, align 4
  %.fr1223.i = freeze i32 %i.ne                   ; 2 uses
  %i.nf = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ng = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op.i = sub i32 %.neg881.i, %i.ng     ; 2 uses
  %i.nh = load i32, ptr %i.e, align 4             ; 4 uses
  %i.ni = icmp sgt i32 %.fr1223.i, 0
  %or.cond.i = and i1 %i.mq, %i.ni
  br i1 %or.cond.i, label %.preheader901.us.us.preheader.i, label %._crit_edge950.i

.preheader901.us.us.preheader.i:                  ; preds = %.preheader901.lr.ph.i
  %i.nj = zext nneg i32 %.fr1223.i to i64         ; 4 uses
  br label %.preheader901.us.us.i

.preheader901.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.us.us.preheader.i
  %indvars.iv1289.i = phi i64 [ 0, %.preheader901.us.us.preheader.i ], [ %indvars.iv.next1290.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0345946.us.us.i = phi ptr [ %i.mo, %.preheader901.us.us.preheader.i ], [ %i.qf, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0827945.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader901.us.us.preheader.i ], [ %.us-phi136, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0832944.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader901.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.nk = lshr exact i64 %indvars.iv1289.i, 2
  %i.nl = or disjoint i64 %indvars.iv1289.i, 1
  %i.nm = or disjoint i64 %indvars.iv1289.i, 2
  %i.nn = or disjoint i64 %indvars.iv1289.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader901.us.us.i.split.us
    i32 1, label %.preheader901.us.us.i.split.us137
  ]

.preheader901.us.us.i.split.us:                   ; preds = %.preheader901.us.us.i, %..loopexit898_crit_edge.us.us.us.i.us
  %indvars.iv1284.i.us = phi i64 [ %indvars.iv.next1285.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ 0, %.preheader901.us.us.i ] ; 3 uses
  %.1828927.us.us.us.i.us = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %.1833926.us.us.us.i.us = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %i.no = trunc i64 %indvars.iv1284.i.us to i32
  %i.np = mul i32 %i.nb, %i.no
  %.reass.us932.us.us.i.us = add i32 %i.np, %invariant.op931.i ; 3 uses
  %i.nq = icmp slt i32 %.reass.us932.us.us.i.us, 0
  br i1 %i.nq, label %..loopexit898_crit_edge.us.us.us.i.us, label %bb.ba

bb.ba:                                            ; preds = %.preheader901.us.us.i.split.us
  %i.nr = srem i32 %.reass.us932.us.us.i.us, %i.nd
  %i.ns = sdiv i32 %.reass.us932.us.us.i.us, %i.nd ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.nr, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.ns, %i.jv
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader897.us.us.us.i.us, label %..loopexit898_crit_edge.us.us.us.i.us

.preheader897.us.us.us.i.us:                      ; preds = %bb.ba
  %i.nt = mul nuw nsw i64 %indvars.iv1284.i.us, %i.nj
  %i.nu = sext i32 %i.ns to i64
  %i.nv = mul nsw i64 %i.nu, %i.kq
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader897.us.us.us.i.us, %bb.bc
  %indvars.iv1279.i.us = phi i64 [ %indvars.iv.next1280.i.us, %bb.bc ], [ 0, %.preheader897.us.us.us.i.us ] ; 3 uses
  %.2829908.us.us.us.us.i.us = phi <4 x float> [ %.3830.us.us.us.us.i.us, %bb.bc ], [ %.1828927.us.us.us.i.us, %.preheader897.us.us.us.i.us ] ; 3 uses
  %.2834907.us.us.us.us.i.us = phi <4 x float> [ %.3835.us.us.us.us.i.us, %bb.bc ], [ %.1833926.us.us.us.i.us, %.preheader897.us.us.us.i.us ] ; 3 uses
  %i.nw = trunc i64 %indvars.iv1279.i.us to i32
  %i.nx = mul i32 %i.nf, %i.nw
  %.reass911.us.us.us.us.i.us = add i32 %i.nx, %invariant.op.i ; 3 uses
  %i.ny = icmp slt i32 %.reass911.us.us.us.us.i.us, 0
  br i1 %i.ny, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.nz = srem i32 %.reass911.us.us.us.us.i.us, %i.nh
  %i.oa = sdiv i32 %.reass911.us.us.us.us.i.us, %i.nh ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.nz, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.oa, %i.ju
  %or.cond298.a = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond298.a, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.bc

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.bb
  %i.ob = add nuw nsw i64 %indvars.iv1279.i.us, %i.nt
  %i.oc = shl i64 %i.ob, 3
  %i.od = and i64 %i.oc, 4294967288
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0345946.us.us.i, i64 %i.od ; 2 uses
  %i.of = load ptr, ptr %1, align 8, !tbaa !18, !noalias !265
  %i.og = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !265
  %i.oh = mul i64 %i.og, %i.nk
  %i.oi = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !265 ; 2 uses
  %i.oj = mul i64 %i.oh, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oj
  %i.ol = mul i64 %i.nv, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol
  %i.on = shl nsw i32 %i.oa, 2
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.oo
  %i.oq = load <4 x float>, ptr %i.op, align 16, !tbaa !245 ; 2 uses
  %i.or = load <4 x float>, ptr %i.oe, align 16, !tbaa !245
  %i.os = fmul fast <4 x float> %i.or, %i.oq
  %i.ot = fadd fast <4 x float> %i.os, %.2834907.us.us.us.us.i.us
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.ov = load <4 x float>, ptr %i.ou, align 16, !tbaa !245
  %i.ow = fmul fast <4 x float> %i.ov, %i.oq
  %i.ox = fadd fast <4 x float> %i.ow, %.2829908.us.us.us.us.i.us
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.bb, %.lr.ph.split.us.us.us.us.i.us
  %.3835.us.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2834907.us.us.us.us.i.us, %bb.bb ], [ %i.ot, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3830.us.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2829908.us.us.us.us.i.us, %bb.bb ], [ %i.ox, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1280.i.us = add nuw nsw i64 %indvars.iv1279.i.us, 1 ; 2 uses
  %exitcond1283.not.i.us = icmp eq i64 %indvars.iv.next1280.i.us, %i.nj
  br i1 %exitcond1283.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !268

..loopexit898_crit_edge.us.us.us.i.us:            ; preds = %bb.bc, %bb.ba, %.preheader901.us.us.i.split.us
  %.4836.us.us.us.i.us = phi nsz <4 x float> [ %.1833926.us.us.us.i.us, %.preheader901.us.us.i.split.us ], [ %.1833926.us.us.us.i.us, %bb.ba ], [ %.3835.us.us.us.us.i.us, %bb.bc ] ; 2 uses
  %.4831.us.us.us.i.us = phi nsz <4 x float> [ %.1828927.us.us.us.i.us, %.preheader901.us.us.i.split.us ], [ %.1828927.us.us.us.i.us, %bb.ba ], [ %.3830.us.us.us.us.i.us, %bb.bc ] ; 2 uses
  %indvars.iv.next1285.i.us = add nuw nsw i64 %indvars.iv1284.i.us, 1 ; 2 uses
  %exitcond1288.not.i.us = icmp eq i64 %indvars.iv.next1285.i.us, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us, !llvm.loop !269

.preheader901.us.us.i.split.us137:                ; preds = %.preheader901.us.us.i, %..loopexit898_crit_edge.us.us.us.i.us145
  %indvars.iv1284.i.us138 = phi i64 [ %indvars.iv.next1285.i.us148, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ 0, %.preheader901.us.us.i ] ; 3 uses
  %.1828927.us.us.us.i.us139 = phi <4 x float> [ %.4831.us.us.us.i.us147, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ %.0827945.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %.1833926.us.us.us.i.us140 = phi <4 x float> [ %.4836.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us145 ], [ %.0832944.us.us.i, %.preheader901.us.us.i ] ; 3 uses
  %i.oy = trunc i64 %indvars.iv1284.i.us138 to i32
  %i.oz = mul i32 %i.nb, %i.oy
  %.reass.us932.us.us.i.us141 = add i32 %i.oz, %invariant.op931.i ; 3 uses
  %i.pa = icmp slt i32 %.reass.us932.us.us.i.us141, 0
  br i1 %i.pa, label %..loopexit898_crit_edge.us.us.us.i.us145, label %bb.bd

bb.bd:                                            ; preds = %.preheader901.us.us.i.split.us137
  %i.pb = srem i32 %.reass.us932.us.us.i.us141, %i.nd
  %i.pc = sdiv i32 %.reass.us932.us.us.i.us141, %i.nd ; 2 uses
  %.not442.us.us.us.i.us142 = icmp eq i32 %i.pb, 0
  %.not443.us.us.us.i.us143 = icmp slt i32 %i.pc, %i.jv
  %or.cond299.a = select i1 %.not442.us.us.us.i.us142, i1 %.not443.us.us.us.i.us143, i1 false
  br i1 %or.cond299.a, label %.preheader897.us.us.us.i.us144, label %..loopexit898_crit_edge.us.us.us.i.us145

.preheader897.us.us.us.i.us144:                   ; preds = %bb.bd
  %i.pd = mul nuw nsw i64 %indvars.iv1284.i.us138, %i.nj
  %i.pe = sext i32 %i.pc to i64
  %i.pf = mul nsw i64 %i.pe, %i.kq
  br label %.lr.ph.split.us913.us.us.us.i.us

.lr.ph.split.us913.us.us.us.i.us:                 ; preds = %.preheader897.us.us.us.i.us144, %bb.bf
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.bf ], [ 0, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %.2829908.us915.us.us.us.i.us = phi <4 x float> [ %.3830.us921.us.us.us.i.us, %bb.bf ], [ %.1828927.us.us.us.i.us139, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %.2834907.us916.us.us.us.i.us = phi <4 x float> [ %.3835.us920.us.us.us.i.us, %bb.bf ], [ %.1833926.us.us.us.i.us140, %.preheader897.us.us.us.i.us144 ] ; 3 uses
  %i.pg = trunc i64 %indvars.iv.i.us to i32
  %i.ph = mul i32 %i.nf, %i.pg
  %.reass911.us917.us.us.us.i.us = add i32 %i.ph, %invariant.op.i ; 3 uses
  %i.pi = icmp slt i32 %.reass911.us917.us.us.us.i.us, 0
  br i1 %i.pi, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.split.us913.us.us.us.i.us
  %i.pj = srem i32 %.reass911.us917.us.us.us.i.us, %i.nh
  %i.pk = sdiv i32 %.reass911.us917.us.us.us.i.us, %i.nh ; 2 uses
  %.not444.us918.us.us.us.i.us = icmp eq i32 %i.pj, 0
  %.not445.us919.us.us.us.i.us = icmp slt i32 %i.pk, %i.ju
  %or.cond300.a = select i1 %.not444.us918.us.us.us.i.us, i1 %.not445.us919.us.us.us.i.us, i1 false
  br i1 %or.cond300.a, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.bf

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.be
  %i.pl = load ptr, ptr %1, align 8, !tbaa !18, !noalias !270
  %i.pm = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !270
  %i.pn = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !270 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.pn, %i.pm ; 4 uses
  %i.po = mul i64 %i.pf, %i.pn
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.pl, i64 %i.po
  %i.pp = sext i32 %i.pk to i64
  %invariant.gep904.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.pp ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1289.i
  %gep905.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.pq = load float, ptr %gep905.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.01396.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.pq, i64 0
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nl
  %gep905.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.pr = load float, ptr %gep905.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.01396.4.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.0.vec.insert.i.us, float %i.pr, i64 1
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nm
  %gep905.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.ps = load float, ptr %gep905.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.01396.8.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.4.vec.insert.i.us, float %i.ps, i64 2
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.nn
  %gep905.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep904.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.pt = load float, ptr %gep905.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.01396.12.vec.insert.i.us = insertelement <4 x float> %.sroa.01396.8.vec.insert.i.us, float %i.pt, i64 3 ; 2 uses
  %i.pu = add nuw nsw i64 %indvars.iv.i.us, %i.pd
  %i.pv = shl i64 %i.pu, 3
  %i.pw = and i64 %i.pv, 4294967288
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0345946.us.us.i, i64 %i.pw ; 2 uses
  %i.py = load <4 x float>, ptr %i.px, align 16, !tbaa !245
  %i.pz = fmul fast <4 x float> %i.py, %.sroa.01396.12.vec.insert.i.us
  %i.qa = fadd fast <4 x float> %i.pz, %.2834907.us916.us.us.us.i.us
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !tbaa !245
  %i.qd = fmul fast <4 x float> %i.qc, %.sroa.01396.12.vec.insert.i.us
  %i.qe = fadd fast <4 x float> %i.qd, %.2829908.us915.us.us.us.i.us
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.be, %.lr.ph.split.us913.us.us.us.i.us
  %.3835.us920.us.us.us.i.us = phi nsz <4 x float> [ %.2834907.us916.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qa, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2834907.us916.us.us.us.i.us, %bb.be ] ; 2 uses
  %.3830.us921.us.us.us.i.us = phi nsz <4 x float> [ %.2829908.us915.us.us.us.i.us, %.lr.ph.split.us913.us.us.us.i.us ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2829908.us915.us.us.us.i.us, %bb.be ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.nj
  br i1 %exitcond.not.i.us, label %..loopexit898_crit_edge.us.us.us.i.us145, label %.lr.ph.split.us913.us.us.us.i.us, !llvm.loop !268

..loopexit898_crit_edge.us.us.us.i.us145:         ; preds = %bb.bf, %bb.bd, %.preheader901.us.us.i.split.us137
  %.4836.us.us.us.i.us146 = phi nsz <4 x float> [ %.1833926.us.us.us.i.us140, %.preheader901.us.us.i.split.us137 ], [ %.1833926.us.us.us.i.us140, %bb.bd ], [ %.3835.us920.us.us.us.i.us, %bb.bf ] ; 2 uses
  %.4831.us.us.us.i.us147 = phi nsz <4 x float> [ %.1828927.us.us.us.i.us139, %.preheader901.us.us.i.split.us137 ], [ %.1828927.us.us.us.i.us139, %bb.bd ], [ %.3830.us921.us.us.us.i.us, %bb.bf ] ; 2 uses
  %indvars.iv.next1285.i.us148 = add nuw nsw i64 %indvars.iv1284.i.us138, 1 ; 2 uses
  %exitcond1288.not.i.us149 = icmp eq i64 %indvars.iv.next1285.i.us148, %wide.trip.count1287.i
  br i1 %exitcond1288.not.i.us149, label %._crit_edge.split.us.us.us.i, label %.preheader901.us.us.i.split.us137, !llvm.loop !269

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit898_crit_edge.us.us.us.i.us145, %..loopexit898_crit_edge.us.us.us.i.us, %.preheader901.us.us.i
  %.us-phi = phi <4 x float> [ %.4836.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0832944.us.us.i, %.preheader901.us.us.i ], [ %.4836.us.us.us.i.us146, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %.us-phi136 = phi <4 x float> [ %.4831.us.us.us.i.us, %..loopexit898_crit_edge.us.us.us.i.us ], [ %.0827945.us.us.i, %.preheader901.us.us.i ], [ %.4831.us.us.us.i.us147, %..loopexit898_crit_edge.us.us.us.i.us145 ] ; 2 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.0345946.us.us.i, i64 %i.mt ; 2 uses
  %indvars.iv.next1290.i = add nuw nsw i64 %indvars.iv1289.i, 4 ; 2 uses
  %i.qg = icmp slt i64 %indvars.iv.next1290.i, %invariant.op1440.i
  br i1 %i.qg, label %.preheader901.us.us.i, label %._crit_edge950.i, !llvm.loop !273

._crit_edge950.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader901.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0832.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0827.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader901.lr.ph.i ], [ %.us-phi136, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.mo, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1274.i, %.preheader901.lr.ph.i ], [ %i.qf, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.kk, %.preheader901.lr.ph.i ], [ %i.kr, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %i.qh = shufflevector <4 x float> %.0832.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qi = fadd fast <4 x float> %i.qh, %.0832.lcssa.i ; 2 uses
  %i.qj = shufflevector <4 x float> %.0827.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.qk = fadd fast <4 x float> %i.qj, %.0827.lcssa.i ; 2 uses
  %i.ql = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 1, i32 5>
  %i.qm = fadd fast <2 x float> %i.ql, %i.na
  %i.qn = shufflevector <4 x float> %i.qi, <4 x float> %i.qk, <2 x i32> <i32 0, i32 4>
  %i.qo = fadd fast <2 x float> %i.qm, %i.qn      ; 4 uses
  %i.qp = or disjoint i32 %.0342.lcssa.i, 1
  %i.qq = icmp slt i32 %i.qp, %i.jt
  br i1 %i.qq, label %.preheader900.lr.ph.i, label %.preheader902.i

.preheader900.lr.ph.i:                            ; preds = %._crit_edge950.i
  %i.qr = load i32, ptr %i.d, align 4
  %i.qs = load i32, ptr %i.j, align 4
  %invariant.op985.i = sub i32 %.neg879.i, %i.qs
  %i.qt = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qu = load i32, ptr %i.a, align 4
  %.fr1224.i = freeze i32 %i.qu                   ; 2 uses
  %i.qv = load i32, ptr %i.c, align 4
  %i.qw = load i32, ptr %i.i, align 4
  %.neg877.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op977.i = sub i32 %.neg877.i, %i.qw
  %i.qx = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.mq, label %.preheader900.lr.ph.split.us.i, label %.preheader900.preheader.i

.preheader900.preheader.i:                        ; preds = %.preheader900.lr.ph.i
  %8 = or disjoint i32 %.0342.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %8)
  %reass.sub = sub i32 %smax.i, %.0342.lcssa.i
  %9 = add i32 %reass.sub, -2                     ; 2 uses
  %i.qy = lshr i32 %9, 1
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = shl nuw nsw i64 %i.qz, 2
  %i.rb = add nuw nsw i64 %i.ra, 4
  %i.rc = mul i64 %i.rb, %i.mv
  %scevgep1292.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.rc
  %i.rd = or disjoint i32 %.0342.lcssa.i, 2
  %i.re = and i32 %9, -2
  %i.rf = add i32 %i.rd, %i.re
  br label %.preheader902.i

.preheader900.lr.ph.split.us.i:                   ; preds = %.preheader900.lr.ph.i
  %i.rg = icmp sgt i32 %.fr1224.i, 0
  br i1 %i.rg, label %.preheader900.us.us.preheader.i, label %.preheader900.us.preheader.i

.preheader900.us.preheader.i:                     ; preds = %.preheader900.lr.ph.split.us.i
  %10 = or disjoint i32 %.0342.lcssa.i, 3
  %smax1293.i = call i32 @llvm.smax.i32(i32 %i.jt, i32 %10)
  %reass.sub168 = sub i32 %smax1293.i, %.0342.lcssa.i
  %11 = add i32 %reass.sub168, -2                 ; 2 uses
  %i.rh = lshr i32 %11, 1
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = shl nuw nsw i64 %i.ri, 2
  %i.rk = add nuw nsw i64 %i.rj, 4
  %i.rl = mul i64 %i.rk, %i.mv
  %scevgep1294.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.rl
  %i.rm = or disjoint i32 %.0342.lcssa.i, 2
  %i.rn = and i32 %11, -2
  %i.ro = add i32 %i.rm, %i.rn
  br label %.preheader902.i

.preheader900.us.us.preheader.i:                  ; preds = %.preheader900.lr.ph.split.us.i
  %i.rp = zext nneg i32 %.fr1224.i to i64         ; 2 uses
  %i.rq = zext i32 %.0342.lcssa.i to i64
  br label %.preheader900.us.us.i

.preheader900.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.us.preheader.i
  %indvars.iv1308.i = phi i64 [ %i.rq, %.preheader900.us.us.preheader.i ], [ %indvars.iv.next1309.i, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %.1346993.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader900.us.us.preheader.i ], [ %i.tg, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.rr = phi <2 x float> [ %i.qo, %.preheader900.us.us.preheader.i ], [ %i.tc, %._crit_edge.split.us.us.us1012.i ]
  %i.rs = or disjoint i64 %indvars.iv1308.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %..loopexit896_crit_edge.us.us.us.i, %.preheader900.us.us.i
  %indvars.iv1303.i = phi i64 [ %indvars.iv.next1304.i, %..loopexit896_crit_edge.us.us.us.i ], [ 0, %.preheader900.us.us.i ] ; 3 uses
  %i.rt = phi <2 x float> [ %i.tc, %..loopexit896_crit_edge.us.us.us.i ], [ %i.rr, %.preheader900.us.us.i ] ; 3 uses
  %i.ru = trunc i64 %indvars.iv1303.i to i32
  %i.rv = mul i32 %i.qr, %i.ru
  %.reass986.us.us.us.i = add i32 %i.rv, %invariant.op985.i ; 3 uses
  %i.rw = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.rw, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rx = srem i32 %.reass986.us.us.us.i, %i.qt
  %i.ry = sdiv i32 %.reass986.us.us.us.i, %i.qt   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.rx, 0
  %.not439.us.us.us.i = icmp slt i32 %i.ry, %i.jv
  %or.cond301.a = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond301.a, label %.preheader895.us.us.us.i, label %..loopexit896_crit_edge.us.us.us.i

bb.bi:                                            ; preds = %.preheader895.us.us.us.i, %.loopexit892.us.us.us.i
  %indvars.iv1298.i = phi i64 [ 0, %.preheader895.us.us.us.i ], [ %indvars.iv.next1299.i, %.loopexit892.us.us.us.i ] ; 3 uses
  %i.rz = phi <2 x float> [ %i.rt, %.preheader895.us.us.us.i ], [ %i.tb, %.loopexit892.us.us.us.i ] ; 3 uses
  %i.sa = trunc i64 %indvars.iv1298.i to i32
  %i.sb = mul i32 %i.qv, %i.sa
  %.reass978.us.us.us.i = add i32 %invariant.op977.i, %i.sb ; 3 uses
  %i.sc = icmp slt i32 %.reass978.us.us.us.i, 0
  br i1 %i.sc, label %.loopexit892.us.us.us.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sd = srem i32 %.reass978.us.us.us.i, %i.qx
  %i.se = sdiv i32 %.reass978.us.us.us.i, %i.qx   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.sd, 0
  %.not441.us.us.us.i = icmp slt i32 %i.se, %i.ju
  %or.cond302.a = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond302.a, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit892.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.bj
  %i.sf = add nuw nsw i64 %indvars.iv1298.i, %i.td
  %i.sg = shl i64 %i.sf, 2
  %i.sh = and i64 %i.sg, 4294967292
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.1346993.us.us.i, i64 %i.sh
  %i.sj = load ptr, ptr %1, align 8, !tbaa !18, !noalias !274
  %i.sk = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !274
  %i.sl = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !274 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.sl, %i.sk ; 2 uses
  %i.sm = mul i64 %i.tf, %i.sl
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.sj, i64 %i.sm
  %i.sn = sext i32 %i.se to i64
  %invariant.gep967.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.sn ; 2 uses
  %.reass.us987.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1308.i
  %gep968.us.us.us.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.i
  %i.so = load float, ptr %gep968.us.us.us.i, align 4, !tbaa !39
  %.reass.us987.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.rs
  %gep968.us.us.us.1.i = getelementptr i8, ptr %invariant.gep967.us.us.us.i, i64 %.reass.us987.us.us.1.i
  %i.sp = load float, ptr %gep968.us.us.us.1.i, align 4, !tbaa !39
  %i.sq = load <4 x float>, ptr %i.si, align 4, !tbaa !39 ; 2 uses
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ss = insertelement <2 x float> poison, float %i.so, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.su = fmul fast <2 x float> %i.sr, %i.st
  %i.sv = fadd fast <2 x float> %i.rz, %i.su
  %i.sw = shufflevector <4 x float> %i.sq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.sx = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul fast <2 x float> %i.sw, %i.sy
  %i.ta = fadd fast <2 x float> %i.sz, %i.sv
  br label %.loopexit892.us.us.us.i

.loopexit892.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.bj, %bb.bi
  %i.tb = phi <2 x float> [ %i.rz, %bb.bi ], [ %i.rz, %bb.bj ], [ %i.ta, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1299.i = add nuw nsw i64 %indvars.iv1298.i, 1 ; 2 uses
  %exitcond1302.not.i = icmp eq i64 %indvars.iv.next1299.i, %i.rp
  br i1 %exitcond1302.not.i, label %..loopexit896_crit_edge.us.us.us.i, label %bb.bi, !llvm.loop !277

..loopexit896_crit_edge.us.us.us.i:               ; preds = %.loopexit892.us.us.us.i, %bb.bh, %bb.bg
  %i.tc = phi <2 x float> [ %i.rt, %bb.bg ], [ %i.rt, %bb.bh ], [ %i.tb, %.loopexit892.us.us.us.i ] ; 3 uses
  %indvars.iv.next1304.i = add nuw nsw i64 %indvars.iv1303.i, 1 ; 2 uses
  %exitcond1307.not.i = icmp eq i64 %indvars.iv.next1304.i, %wide.trip.count1287.i
  br i1 %exitcond1307.not.i, label %._crit_edge.split.us.us.us1012.i, label %bb.bg, !llvm.loop !278

.preheader895.us.us.us.i:                         ; preds = %bb.bh
  %i.td = mul nuw nsw i64 %indvars.iv1303.i, %i.rp
  %i.te = sext i32 %i.ry to i64
  %i.tf = mul nsw i64 %i.te, %i.kq
  br label %bb.bi

._crit_edge.split.us.us.us1012.i:                 ; preds = %..loopexit896_crit_edge.us.us.us.i
  %i.tg = getelementptr inbounds [4 x i8], ptr %.1346993.us.us.i, i64 %i.mv ; 2 uses
  %indvars.iv.next1309.i = add nuw nsw i64 %indvars.iv1308.i, 2 ; 2 uses
  %i.th = trunc i64 %indvars.iv.next1309.i to i32 ; 2 uses
  %i.ti = or i32 %i.th, 1
  %i.tj = icmp slt i32 %i.ti, %i.jt
  br i1 %i.tj, label %.preheader900.us.us.i, label %.preheader902.i, !llvm.loop !279

.preheader902.i:                                  ; preds = %._crit_edge.split.us.us.us1012.i, %.preheader900.us.preheader.i, %.preheader900.preheader.i, %._crit_edge950.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge950.i ], [ %scevgep1292.i, %.preheader900.preheader.i ], [ %scevgep1294.i, %.preheader900.us.preheader.i ], [ %i.tg, %._crit_edge.split.us.us.us1012.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge950.i ], [ %i.rf, %.preheader900.preheader.i ], [ %i.ro, %.preheader900.us.preheader.i ], [ %i.th, %._crit_edge.split.us.us.us1012.i ] ; 2 uses
  %i.tk = phi <2 x float> [ %i.qo, %._crit_edge950.i ], [ %i.qo, %.preheader900.preheader.i ], [ %i.qo, %.preheader900.us.preheader.i ], [ %i.tc, %._crit_edge.split.us.us.us1012.i ] ; 3 uses
  %i.tl = icmp slt i32 %.1343.lcssa.i, %i.jt
  br i1 %i.tl, label %.preheader899.lr.ph.i, label %._crit_edge1040.i

.preheader899.lr.ph.i:                            ; preds = %.preheader902.i
  %i.tm = load i32, ptr %i.d, align 4
  %i.tn = load i32, ptr %i.j, align 4
  %invariant.op1029.i = sub i32 %.neg879.i, %i.tn
  %i.to = load i32, ptr %i.f, align 4             ; 2 uses
  %i.tp = load i32, ptr %i.a, align 4
  %.fr1225.i = freeze i32 %i.tp                   ; 2 uses
  %i.tq = load i32, ptr %i.c, align 4
  %i.tr = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03801057.i, 1
  %invariant.op1022.i = sub i32 %.neg873.i, %i.tr
  %i.ts = load i32, ptr %i.e, align 4             ; 2 uses
  %i.tt = icmp sgt i32 %.fr1225.i, 0
  %or.cond1442.i = and i1 %i.mq, %i.tt
  br i1 %or.cond1442.i, label %.preheader899.us.us.preheader.i, label %._crit_edge1040.i

.preheader899.us.us.preheader.i:                  ; preds = %.preheader899.lr.ph.i
  %i.tu = zext nneg i32 %.fr1225.i to i64         ; 2 uses
  %i.tv = zext i32 %.1343.lcssa.i to i64
  br label %.preheader899.us.us.i

.preheader899.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1052.i, %.preheader899.us.us.preheader.i
  %indvars.iv1321.i = phi i64 [ %i.tv, %.preheader899.us.us.preheader.i ], [ %indvars.iv.next1322.i, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %.23471037.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader899.us.us.preheader.i ], [ %i.vg, %._crit_edge.split.us.us.us1052.i ] ; 2 uses
  %i.tw = phi <2 x float> [ %i.tk, %.preheader899.us.us.preheader.i ], [ %i.vc, %._crit_edge.split.us.us.us1052.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %..loopexit894_crit_edge.us.us.us.i, %.preheader899.us.us.i
  %indvars.iv1316.i = phi i64 [ %indvars.iv.next1317.i, %..loopexit894_crit_edge.us.us.us.i ], [ 0, %.preheader899.us.us.i ] ; 3 uses
  %i.tx = phi <2 x float> [ %i.vc, %..loopexit894_crit_edge.us.us.us.i ], [ %i.tw, %.preheader899.us.us.i ] ; 3 uses
  %i.ty = trunc i64 %indvars.iv1316.i to i32
  %i.tz = mul i32 %i.tm, %i.ty
  %.reass1030.us.us.us.i = add i32 %i.tz, %invariant.op1029.i ; 3 uses
  %i.ua = icmp slt i32 %.reass1030.us.us.us.i, 0
  br i1 %i.ua, label %..loopexit894_crit_edge.us.us.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ub = srem i32 %.reass1030.us.us.us.i, %i.to
  %i.uc = sdiv i32 %.reass1030.us.us.us.i, %i.to  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.ub, 0
  %.not435.us.us.us.i = icmp slt i32 %i.uc, %i.jv
  %or.cond303.a = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond303.a, label %.preheader893.us.us.us.i, label %..loopexit894_crit_edge.us.us.us.i

bb.bm:                                            ; preds = %.preheader893.us.us.us.i, %bb.bo
  %indvars.iv1311.i = phi i64 [ 0, %.preheader893.us.us.us.i ], [ %indvars.iv.next1312.i, %bb.bo ] ; 3 uses
  %i.ud = phi <2 x float> [ %i.tx, %.preheader893.us.us.us.i ], [ %i.vb, %bb.bo ] ; 3 uses
  %i.ue = trunc i64 %indvars.iv1311.i to i32
  %i.uf = mul i32 %i.tq, %i.ue
  %.reass.us1031.us.us.i = add i32 %invariant.op1022.i, %i.uf ; 3 uses
  %i.ug = icmp slt i32 %.reass.us1031.us.us.i, 0
  br i1 %i.ug, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.uh = srem i32 %.reass.us1031.us.us.i, %i.ts
  %i.ui = sdiv i32 %.reass.us1031.us.us.i, %i.ts  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.uh, 0
  %.not437.us.us.us.i = icmp slt i32 %i.ui, %i.ju
  %or.cond304.a = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond304.a, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.bo

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.bn
  %i.uj = add nuw nsw i64 %indvars.iv1311.i, %i.vd
  %.idx.i = shl nuw nsw i64 %i.uj, 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.23471037.us.us.i, i64 %.idx.i
  %i.ul = load ptr, ptr %1, align 8, !tbaa !18, !noalias !280
  %i.um = load i64, ptr %i.ke, align 8, !tbaa !20, !noalias !280
  %i.un = mul i64 %i.um, %indvars.iv1321.i
  %i.uo = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !280 ; 2 uses
  %i.up = mul i64 %i.un, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.up
  %i.ur = mul i64 %i.vf, %i.uo
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ur
  %i.ut = sext i32 %i.ui to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.ut
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !39
  %i.uw = load <2 x float>, ptr %i.uk, align 4, !tbaa !39
  %i.ux = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uz = fmul fast <2 x float> %i.uw, %i.uy
  %i.va = fadd fast <2 x float> %i.uz, %i.ud
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, %bb.bn, %bb.bm
  %i.vb = phi <2 x float> [ %i.ud, %bb.bm ], [ %i.ud, %bb.bn ], [ %i.va, %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i ] ; 2 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %invariant.op1098.i = sub i32 %.neg867.i, %i.yw ; 2 uses
  %i.yx = load i32, ptr %i.f, align 4             ; 4 uses
  %i.yy = load i32, ptr %i.a, align 4
  %.fr1226.i = freeze i32 %i.yy                   ; 2 uses
  %i.yz = load i32, ptr %i.c, align 4             ; 2 uses
  %i.za = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1080.i = sub i32 %.neg869.i, %i.za ; 2 uses
  %i.zb = load i32, ptr %i.e, align 4             ; 4 uses
  %i.zc = icmp sgt i32 %.fr1226.i, 0
  %or.cond1443.i = and i1 %i.yl, %i.zc
  br i1 %or.cond1443.i, label %.preheader889.us.us.preheader.i, label %._crit_edge1114.i

.preheader889.us.us.preheader.i:                  ; preds = %.preheader889.lr.ph.i
  %i.zd = zext nneg i32 %.fr1226.i to i64         ; 4 uses
  br label %.preheader889.us.us.i

.preheader889.us.us.i:                            ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.us.us.preheader.i
  %indvars.iv1354.i = phi i64 [ 0, %.preheader889.us.us.preheader.i ], [ %indvars.iv.next1355.i, %._crit_edge1096.split.us.us.us.i ] ; 6 uses
  %.03231110.us.us.i = phi ptr [ %i.yj, %.preheader889.us.us.preheader.i ], [ %i.abr, %._crit_edge1096.split.us.us.us.i ] ; 3 uses
  %.08221109.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader889.us.us.preheader.i ], [ %.us-phi154, %._crit_edge1096.split.us.us.us.i ] ; 3 uses
  %i.ze = lshr exact i64 %indvars.iv1354.i, 2
  %i.zf = or disjoint i64 %indvars.iv1354.i, 1
  %i.zg = or disjoint i64 %indvars.iv1354.i, 2
  %i.zh = or disjoint i64 %indvars.iv1354.i, 3
  switch i32 %.fr1092.i, label %._crit_edge1096.split.us.us.us.i [
    i32 4, label %.preheader889.us.us.i.split.us
    i32 1, label %.preheader889.us.us.i.split.us155
  ]

.preheader889.us.us.i.split.us:                   ; preds = %.preheader889.us.us.i, %..loopexit886_crit_edge.us.us.us.i.us
  %indvars.iv1349.i.us = phi i64 [ %indvars.iv.next1350.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ 0, %.preheader889.us.us.i ] ; 3 uses
  %.18231093.us.us.us.i.us = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ] ; 3 uses
  %i.zi = trunc i64 %indvars.iv1349.i.us to i32
  %i.zj = mul i32 %i.yv, %i.zi
  %.reass1099.us.us.us.i.us = add i32 %i.zj, %invariant.op1098.i ; 3 uses
  %i.zk = icmp slt i32 %.reass1099.us.us.us.i.us, 0
  br i1 %i.zk, label %..loopexit886_crit_edge.us.us.us.i.us, label %bb.bx

bb.bx:                                            ; preds = %.preheader889.us.us.i.split.us
  %i.zl = srem i32 %.reass1099.us.us.us.i.us, %i.yx
  %i.zm = sdiv i32 %.reass1099.us.us.us.i.us, %i.yx ; 2 uses
  %.not429.us.us.us.i.us = icmp eq i32 %i.zl, 0
  %.not430.us.us.us.i.us = icmp slt i32 %i.zm, %i.la
  %or.cond305.a = select i1 %.not429.us.us.us.i.us, i1 %.not430.us.us.us.i.us, i1 false
  br i1 %or.cond305.a, label %.preheader885.us.us.us.i.us, label %..loopexit886_crit_edge.us.us.us.i.us

.preheader885.us.us.us.i.us:                      ; preds = %bb.bx
  %i.zn = mul nuw nsw i64 %indvars.iv1349.i.us, %i.zd
  %i.zo = sext i32 %i.zm to i64
  %i.zp = mul nsw i64 %i.zo, %i.ly
  br label %.lr.ph.split.us.us.us.us1129.i.us

.lr.ph.split.us.us.us.us1129.i.us:                ; preds = %.preheader885.us.us.us.i.us, %bb.bz
  %indvars.iv1344.i.us = phi i64 [ %indvars.iv.next1345.i.us, %bb.bz ], [ 0, %.preheader885.us.us.us.i.us ] ; 3 uses
  %.28241077.us.us.us.us.i.us = phi <4 x float> [ %.3825.us.us.us.us.i.us, %bb.bz ], [ %.18231093.us.us.us.i.us, %.preheader885.us.us.us.i.us ] ; 3 uses
  %i.zq = trunc i64 %indvars.iv1344.i.us to i32
  %i.zr = mul i32 %i.yz, %i.zq
  %.reass1081.us.us.us.us.i.us = add i32 %i.zr, %invariant.op1080.i ; 3 uses
  %i.zs = icmp slt i32 %.reass1081.us.us.us.us.i.us, 0
  br i1 %i.zs, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.split.us.us.us.us1129.i.us
  %i.zt = srem i32 %.reass1081.us.us.us.us.i.us, %i.zb
  %i.zu = sdiv i32 %.reass1081.us.us.us.us.i.us, %i.zb ; 2 uses
  %.not431.us.us.us.us.i.us = icmp eq i32 %i.zt, 0
  %.not432.us.us.us.us.i.us = icmp slt i32 %i.zu, %i.kz
  %or.cond306.a = select i1 %.not431.us.us.us.us.i.us, i1 %.not432.us.us.us.us.i.us, i1 false
  br i1 %or.cond306.a, label %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, label %bb.bz

_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us:        ; preds = %bb.by
  %i.zv = add nuw nsw i64 %indvars.iv1344.i.us, %i.zn
  %i.zw = shl i64 %i.zv, 2
  %i.zx = and i64 %i.zw, 4294967292
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.03231110.us.us.i, i64 %i.zx
  %i.zz = load ptr, ptr %1, align 8, !tbaa !18, !noalias !289
  %i.aaa = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !289
  %i.aab = mul i64 %i.aaa, %i.ze
  %i.aac = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !289 ; 2 uses
  %i.aad = mul i64 %i.aab, %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 %i.aad
  %i.aaf = mul i64 %i.zp, %i.aac
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aaf
  %i.aah = shl nsw i32 %i.zu, 2
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.aag, i64 %i.aai
  %i.aak = load <4 x float>, ptr %i.aaj, align 16, !tbaa !245
  %i.aal = load <4 x float>, ptr %i.zy, align 16, !tbaa !245
  %i.aam = fmul fast <4 x float> %i.aal, %i.aak
  %i.aan = fadd fast <4 x float> %i.aam, %.28241077.us.us.us.us.i.us
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, %bb.by, %.lr.ph.split.us.us.us.us1129.i.us
  %.3825.us.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us1129.i.us ], [ %.28241077.us.us.us.us.i.us, %bb.by ], [ %i.aan, %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1345.i.us = add nuw nsw i64 %indvars.iv1344.i.us, 1 ; 2 uses
  %exitcond1348.not.i.us = icmp eq i64 %indvars.iv.next1345.i.us, %i.zd
  br i1 %exitcond1348.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us1129.i.us, !llvm.loop !292

..loopexit886_crit_edge.us.us.us.i.us:            ; preds = %bb.bz, %bb.bx, %.preheader889.us.us.i.split.us
  %.4826.us.us.us.i.us = phi nsz <4 x float> [ %.18231093.us.us.us.i.us, %.preheader889.us.us.i.split.us ], [ %.18231093.us.us.us.i.us, %bb.bx ], [ %.3825.us.us.us.us.i.us, %bb.bz ] ; 2 uses
  %indvars.iv.next1350.i.us = add nuw nsw i64 %indvars.iv1349.i.us, 1 ; 2 uses
  %exitcond1353.not.i.us = icmp eq i64 %indvars.iv.next1350.i.us, %wide.trip.count1352.i
  br i1 %exitcond1353.not.i.us, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us, !llvm.loop !293

.preheader889.us.us.i.split.us155:                ; preds = %.preheader889.us.us.i, %..loopexit886_crit_edge.us.us.us.i.us162
  %indvars.iv1349.i.us156 = phi i64 [ %indvars.iv.next1350.i.us164, %..loopexit886_crit_edge.us.us.us.i.us162 ], [ 0, %.preheader889.us.us.i ] ; 3 uses
  %.18231093.us.us.us.i.us157 = phi <4 x float> [ %.4826.us.us.us.i.us163, %..loopexit886_crit_edge.us.us.us.i.us162 ], [ %.08221109.us.us.i, %.preheader889.us.us.i ] ; 3 uses
  %i.aao = trunc i64 %indvars.iv1349.i.us156 to i32
  %i.aap = mul i32 %i.yv, %i.aao
  %.reass1099.us.us.us.i.us158 = add i32 %i.aap, %invariant.op1098.i ; 3 uses
  %i.aaq = icmp slt i32 %.reass1099.us.us.us.i.us158, 0
  br i1 %i.aaq, label %..loopexit886_crit_edge.us.us.us.i.us162, label %bb.ca

bb.ca:                                            ; preds = %.preheader889.us.us.i.split.us155
  %i.aar = srem i32 %.reass1099.us.us.us.i.us158, %i.yx
  %i.aas = sdiv i32 %.reass1099.us.us.us.i.us158, %i.yx ; 2 uses
  %.not429.us.us.us.i.us159 = icmp eq i32 %i.aar, 0
  %.not430.us.us.us.i.us160 = icmp slt i32 %i.aas, %i.la
  %or.cond307.a = select i1 %.not429.us.us.us.i.us159, i1 %.not430.us.us.us.i.us160, i1 false
  br i1 %or.cond307.a, label %.preheader885.us.us.us.i.us161, label %..loopexit886_crit_edge.us.us.us.i.us162

.preheader885.us.us.us.i.us161:                   ; preds = %bb.ca
  %i.aat = mul nuw nsw i64 %indvars.iv1349.i.us156, %i.zd
  %i.aau = sext i32 %i.aas to i64
  %i.aav = mul nsw i64 %i.aau, %i.ly
  br label %.lr.ph.split.us1083.us.us.us.i.us

.lr.ph.split.us1083.us.us.us.i.us:                ; preds = %.preheader885.us.us.us.i.us161, %bb.cc
  %indvars.iv1339.i.us = phi i64 [ %indvars.iv.next1340.i.us, %bb.cc ], [ 0, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %.28241077.us1085.us.us.us.i.us = phi <4 x float> [ %.3825.us1089.us.us.us.i.us, %bb.cc ], [ %.18231093.us.us.us.i.us157, %.preheader885.us.us.us.i.us161 ] ; 3 uses
  %i.aaw = trunc i64 %indvars.iv1339.i.us to i32
  %i.aax = mul i32 %i.yz, %i.aaw
  %.reass1081.us1086.us.us.us.i.us = add i32 %i.aax, %invariant.op1080.i ; 3 uses
  %i.aay = icmp slt i32 %.reass1081.us1086.us.us.us.i.us, 0
  br i1 %i.aay, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us1083.us.us.us.i.us
  %i.aaz = srem i32 %.reass1081.us1086.us.us.us.i.us, %i.zb
  %i.aba = sdiv i32 %.reass1081.us1086.us.us.us.i.us, %i.zb ; 2 uses
  %.not431.us1087.us.us.us.i.us = icmp eq i32 %i.aaz, 0
  %.not432.us1088.us.us.us.i.us = icmp slt i32 %i.aba, %i.kz
  %or.cond308.a = select i1 %.not431.us1087.us.us.us.i.us, i1 %.not432.us1088.us.us.us.i.us, i1 false
  br i1 %or.cond308.a, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.cb
  %i.abb = load ptr, ptr %1, align 8, !tbaa !18, !noalias !294
  %i.abc = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !294
  %i.abd = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !294 ; 2 uses
  %factor.op.mul1072.us.us.us.us.i.us = mul i64 %i.abd, %i.abc ; 4 uses
  %i.abe = mul i64 %i.aav, %i.abd
  %invariant.gep.us.us.us1125.us.i.us = getelementptr i8, ptr %i.abb, i64 %i.abe
  %i.abf = sext i32 %i.aba to i64
  %invariant.gep1074.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1125.us.i.us, i64 %i.abf ; 4 uses
  %.reass1073.us.us.us.us.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %indvars.iv1354.i
  %gep1075.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.i.us
  %i.abg = load float, ptr %gep1075.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.abg, i64 0
  %.reass1073.us.us.us.us.1.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zf
  %gep1075.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.1.i.us
  %i.abh = load float, ptr %gep1075.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.abh, i64 1
  %.reass1073.us.us.us.us.2.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zg
  %gep1075.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.2.i.us
  %i.abi = load float, ptr %gep1075.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.abi, i64 2
  %.reass1073.us.us.us.us.3.i.us = mul i64 %factor.op.mul1072.us.us.us.us.i.us, %i.zh
  %gep1075.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1074.us.us.us.us.i.us, i64 %.reass1073.us.us.us.us.3.i.us
  %i.abj = load float, ptr %gep1075.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.abj, i64 3
  %i.abk = add nuw nsw i64 %indvars.iv1339.i.us, %i.aat
  %i.abl = shl i64 %i.abk, 2
  %i.abm = and i64 %i.abl, 4294967292
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.03231110.us.us.i, i64 %i.abm
  %i.abo = load <4 x float>, ptr %i.abn, align 16, !tbaa !245
  %i.abp = fmul fast <4 x float> %i.abo, %.sroa.0.12.vec.insert.i.us
  %i.abq = fadd fast <4 x float> %i.abp, %.28241077.us1085.us.us.us.i.us
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.cb, %.lr.ph.split.us1083.us.us.us.i.us
  %.3825.us1089.us.us.us.i.us = phi nsz <4 x float> [ %.28241077.us1085.us.us.us.i.us, %.lr.ph.split.us1083.us.us.us.i.us ], [ %i.abq, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28241077.us1085.us.us.us.i.us, %bb.cb ] ; 2 uses
  %indvars.iv.next1340.i.us = add nuw nsw i64 %indvars.iv1339.i.us, 1 ; 2 uses
  %exitcond1343.not.i.us = icmp eq i64 %indvars.iv.next1340.i.us, %i.zd
  br i1 %exitcond1343.not.i.us, label %..loopexit886_crit_edge.us.us.us.i.us162, label %.lr.ph.split.us1083.us.us.us.i.us, !llvm.loop !292

..loopexit886_crit_edge.us.us.us.i.us162:         ; preds = %bb.cc, %bb.ca, %.preheader889.us.us.i.split.us155
  %.4826.us.us.us.i.us163 = phi nsz <4 x float> [ %.18231093.us.us.us.i.us157, %.preheader889.us.us.i.split.us155 ], [ %.18231093.us.us.us.i.us157, %bb.ca ], [ %.3825.us1089.us.us.us.i.us, %bb.cc ] ; 2 uses
  %indvars.iv.next1350.i.us164 = add nuw nsw i64 %indvars.iv1349.i.us156, 1 ; 2 uses
  %exitcond1353.not.i.us165 = icmp eq i64 %indvars.iv.next1350.i.us164, %wide.trip.count1352.i
  br i1 %exitcond1353.not.i.us165, label %._crit_edge1096.split.us.us.us.i, label %.preheader889.us.us.i.split.us155, !llvm.loop !293

._crit_edge1096.split.us.us.us.i:                 ; preds = %..loopexit886_crit_edge.us.us.us.i.us162, %..loopexit886_crit_edge.us.us.us.i.us, %.preheader889.us.us.i
  %.us-phi154 = phi <4 x float> [ %.4826.us.us.us.i.us, %..loopexit886_crit_edge.us.us.us.i.us ], [ %.08221109.us.us.i, %.preheader889.us.us.i ], [ %.4826.us.us.us.i.us163, %..loopexit886_crit_edge.us.us.us.i.us162 ] ; 2 uses
  %i.abr = getelementptr inbounds [4 x i8], ptr %.03231110.us.us.i, i64 %i.yo ; 2 uses
  %indvars.iv.next1355.i = add nuw nsw i64 %indvars.iv1354.i, 4 ; 2 uses
  %i.abs = icmp slt i64 %indvars.iv.next1355.i, %invariant.op1441.i
  br i1 %i.abs, label %.preheader889.us.us.i, label %._crit_edge1114.i, !llvm.loop !297

._crit_edge1114.i:                                ; preds = %._crit_edge1096.split.us.us.us.i, %.preheader889.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0822.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader889.lr.ph.i ], [ %.us-phi154, %._crit_edge1096.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.yj, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1332.i, %.preheader889.lr.ph.i ], [ %i.abr, %._crit_edge1096.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.lp, %.preheader889.lr.ph.i ], [ %i.lz, %._crit_edge1096.split.us.us.us.i ] ; 9 uses
  %i.abt = shufflevector <4 x float> %.0822.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.abu = fadd fast <4 x float> %i.abt, %.0822.lcssa.i ; 2 uses
  %i.abv = extractelement <4 x float> %i.abu, i64 1
  %i.abw = extractelement <4 x float> %i.abu, i64 0
  %i.abx = fadd fast float %i.abv, %.0326.i
  %i.aby = fadd fast float %i.abx, %i.abw         ; 4 uses
  %i.abz = or disjoint i32 %.0322.lcssa.i, 1
  %i.aca = icmp slt i32 %i.abz, %i.ky
  br i1 %i.aca, label %.preheader888.lr.ph.i, label %.preheader890.i

.preheader888.lr.ph.i:                            ; preds = %._crit_edge1114.i
  %i.acb = load i32, ptr %i.d, align 4
  %i.acc = load i32, ptr %i.j, align 4
  %invariant.op1149.i = sub i32 %.neg867.i, %i.acc
  %i.acd = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ace = load i32, ptr %i.a, align 4
  %.fr1227.i = freeze i32 %i.ace                  ; 2 uses
  %i.acf = load i32, ptr %i.c, align 4
  %i.acg = load i32, ptr %i.i, align 4
  %.neg865.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1142.i = sub i32 %.neg865.i, %i.acg
  %i.ach = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.yl, label %.preheader888.lr.ph.split.us.i, label %.preheader888.preheader.i

.preheader888.preheader.i:                        ; preds = %.preheader888.lr.ph.i
  %12 = or disjoint i32 %.0322.lcssa.i, 3
  %smax1357.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %12)
  %reass.sub169 = sub i32 %smax1357.i, %.0322.lcssa.i
  %13 = add i32 %reass.sub169, -2                 ; 2 uses
  %i.aci = lshr i32 %13, 1
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = shl nuw nsw i64 %i.acj, 2
  %i.acl = add nuw nsw i64 %i.ack, 4
  %i.acm = mul i64 %i.acl, %i.yq
  %scevgep1358.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.acm
  %i.acn = or disjoint i32 %.0322.lcssa.i, 2
  %i.aco = and i32 %13, -2
  %i.acp = add i32 %i.acn, %i.aco
  br label %.preheader890.i

.preheader888.lr.ph.split.us.i:                   ; preds = %.preheader888.lr.ph.i
  %i.acq = icmp sgt i32 %.fr1227.i, 0
  br i1 %i.acq, label %.preheader888.us.us.preheader.i, label %.preheader888.us.preheader.i

.preheader888.us.preheader.i:                     ; preds = %.preheader888.lr.ph.split.us.i
  %14 = or disjoint i32 %.0322.lcssa.i, 3
  %smax1359.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 %14)
  %reass.sub170 = sub i32 %smax1359.i, %.0322.lcssa.i
  %15 = add i32 %reass.sub170, -2                 ; 2 uses
  %i.acr = lshr i32 %15, 1
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = shl nuw nsw i64 %i.acs, 2
  %i.acu = add nuw nsw i64 %i.act, 4
  %i.acv = mul i64 %i.acu, %i.yq
  %scevgep1360.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.acv
  %i.acw = or disjoint i32 %.0322.lcssa.i, 2
  %i.acx = and i32 %15, -2
  %i.acy = add i32 %i.acw, %i.acx
  br label %.preheader890.i

.preheader888.us.us.preheader.i:                  ; preds = %.preheader888.lr.ph.split.us.i
  %i.acz = zext nneg i32 %.fr1227.i to i64        ; 2 uses
  %i.ada = zext i32 %.0322.lcssa.i to i64
  br label %.preheader888.us.us.i

.preheader888.us.us.i:                            ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.us.preheader.i
  %indvars.iv1374.i.a = phi i64 [ %i.ada, %.preheader888.us.us.preheader.i ], [ %indvars.iv.next1375.i.a, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.13241154.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader888.us.us.preheader.i ], [ %i.aef, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %.13271153.us.us.i = phi float [ %i.aby, %.preheader888.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ]
  %i.adb = or disjoint i64 %indvars.iv1374.i.a, 1
  br label %bb.cd

bb.cd:                                            ; preds = %..loopexit884_crit_edge.us.us.us.i, %.preheader888.us.us.i
  %indvars.iv1369.i = phi i64 [ %indvars.iv.next1370.i, %..loopexit884_crit_edge.us.us.us.i ], [ 0, %.preheader888.us.us.i ] ; 3 uses
  %.23281144.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit884_crit_edge.us.us.us.i ], [ %.13271153.us.us.i, %.preheader888.us.us.i ] ; 3 uses
  %i.adc = trunc i64 %indvars.iv1369.i to i32
  %i.add = mul i32 %i.acb, %i.adc
  %.reass1150.us.us.us.i = add i32 %i.add, %invariant.op1149.i ; 3 uses
  %i.ade = icmp slt i32 %.reass1150.us.us.us.i, 0
  br i1 %i.ade, label %..loopexit884_crit_edge.us.us.us.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.adf = srem i32 %.reass1150.us.us.us.i, %i.acd
  %i.adg = sdiv i32 %.reass1150.us.us.us.i, %i.acd ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.adf, 0
  %.not426.us.us.us.i = icmp slt i32 %i.adg, %i.la
  %or.cond309.a = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond309.a, label %.preheader883.us.us.us.i, label %..loopexit884_crit_edge.us.us.us.i

bb.cf:                                            ; preds = %.preheader883.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv1364.i = phi i64 [ 0, %.preheader883.us.us.us.i ], [ %indvars.iv.next1365.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.31139.us.us.us.i = phi float [ %.23281144.us.us.us.i, %.preheader883.us.us.us.i ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.adh = trunc i64 %indvars.iv1364.i to i32
  %i.adi = mul i32 %i.acf, %i.adh
  %.reass1143.us.us.us.i = add i32 %invariant.op1142.i, %i.adi ; 3 uses
  %i.adj = icmp slt i32 %.reass1143.us.us.us.i, 0
  br i1 %i.adj, label %.loopexit.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.adk = srem i32 %.reass1143.us.us.us.i, %i.ach
  %i.adl = sdiv i32 %.reass1143.us.us.us.i, %i.ach ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.adk, 0
  %.not428.us.us.us.i = icmp slt i32 %i.adl, %i.kz
  %or.cond310 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond310, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.cg
  %i.adm = add nuw nsw i64 %indvars.iv1364.i, %i.aec
  %.idx1431.i = shl nuw nsw i64 %i.adm, 3
  %i.adn = getelementptr inbounds nuw i8, ptr %.13241154.us.us.i, i64 %.idx1431.i ; 2 uses
  %i.ado = load ptr, ptr %1, align 8, !tbaa !18, !noalias !298
  %i.adp = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !298
  %i.adq = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !298 ; 2 uses
  %factor.op.mul1133.us.us.us.i = mul i64 %i.adq, %i.adp ; 2 uses
  %i.adr = mul i64 %i.aee, %i.adq
  %invariant.gep.us.us.us1171.i = getelementptr i8, ptr %i.ado, i64 %i.adr
  %i.ads = sext i32 %i.adl to i64
  %invariant.gep1135.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us1171.i, i64 %i.ads ; 2 uses
  %.reass1134.us.us.us.i = mul i64 %factor.op.mul1133.us.us.us.i, %indvars.iv1374.i.a
  %gep1136.us.us.us.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.i
  %i.adt = load float, ptr %gep1136.us.us.us.i, align 4, !tbaa !39
  %i.adu = load float, ptr %i.adn, align 4, !tbaa !39
  %i.adv = fmul fast float %i.adu, %i.adt
  %i.adw = fadd fast float %.31139.us.us.us.i, %i.adv
  %.reass1134.us.us.us.1.i = mul i64 %factor.op.mul1133.us.us.us.i, %i.adb
  %gep1136.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1135.us.us.us.i, i64 %.reass1134.us.us.us.1.i
  %i.adx = load float, ptr %gep1136.us.us.us.1.i, align 4, !tbaa !39
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !39
  %i.aea = fmul fast float %i.adz, %i.adx
  %i.aeb = fadd fast float %i.aea, %i.adw
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.cg, %bb.cf
  %.6.us.us.us.i = phi nsz float [ %.31139.us.us.us.i, %bb.cf ], [ %.31139.us.us.us.i, %bb.cg ], [ %i.aeb, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1365.i = add nuw nsw i64 %indvars.iv1364.i, 1 ; 2 uses
  %exitcond1368.not.i = icmp eq i64 %indvars.iv.next1365.i, %i.acz
  br i1 %exitcond1368.not.i, label %..loopexit884_crit_edge.us.us.us.i, label %bb.cf, !llvm.loop !301

..loopexit884_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.ce, %bb.cd
  %.8.us.us.us.i = phi nsz float [ %.23281144.us.us.us.i, %bb.cd ], [ %.23281144.us.us.us.i, %bb.ce ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1370.i = add nuw nsw i64 %indvars.iv1369.i, 1 ; 2 uses
  %exitcond1373.not.i = icmp eq i64 %indvars.iv.next1370.i, %wide.trip.count1352.i
  br i1 %exitcond1373.not.i, label %._crit_edge1147.split.us.us.us.i, label %bb.cd, !llvm.loop !302

.preheader883.us.us.us.i:                         ; preds = %bb.ce
  %i.aec = mul nuw nsw i64 %indvars.iv1369.i, %i.acz
  %i.aed = sext i32 %i.adg to i64
  %i.aee = mul nsw i64 %i.aed, %i.ly
  br label %bb.cf

._crit_edge1147.split.us.us.us.i:                 ; preds = %..loopexit884_crit_edge.us.us.us.i
  %i.aef = getelementptr inbounds [4 x i8], ptr %.13241154.us.us.i, i64 %i.yq ; 2 uses
  %indvars.iv.next1375.i.a = add nuw nsw i64 %indvars.iv1374.i.a, 2 ; 2 uses
  %i.aeg = trunc i64 %indvars.iv.next1375.i.a to i32 ; 2 uses
  %i.aeh = or i32 %i.aeg, 1
  %i.aei = icmp slt i32 %i.aeh, %i.ky
  br i1 %i.aei, label %.preheader888.us.us.i, label %.preheader890.i, !llvm.loop !303

.preheader890.i:                                  ; preds = %._crit_edge1147.split.us.us.us.i, %.preheader888.us.preheader.i, %.preheader888.preheader.i, %._crit_edge1114.i
  %.1327.lcssa.i = phi float [ %i.aby, %._crit_edge1114.i ], [ %i.aby, %.preheader888.preheader.i ], [ %i.aby, %.preheader888.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1147.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1114.i ], [ %scevgep1358.i, %.preheader888.preheader.i ], [ %scevgep1360.i, %.preheader888.us.preheader.i ], [ %i.aef, %._crit_edge1147.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1114.i ], [ %i.acp, %.preheader888.preheader.i ], [ %i.acy, %.preheader888.us.preheader.i ], [ %i.aeg, %._crit_edge1147.split.us.us.us.i ] ; 2 uses
  %i.aej = icmp slt i32 %.1.lcssa.i, %i.ky
  br i1 %i.aej, label %.preheader887.lr.ph.i, label %._crit_edge1193.i

.preheader887.lr.ph.i:                            ; preds = %.preheader890.i
  %i.aek = load i32, ptr %i.d, align 4
  %i.ael = load i32, ptr %i.j, align 4
  %invariant.op1185.i = sub i32 %.neg867.i, %i.ael
  %i.aem = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aen = load i32, ptr %i.a, align 4
  %.fr1228.i = freeze i32 %i.aen                  ; 2 uses
  %i.aeo = load i32, ptr %i.c, align 4
  %i.aep = load i32, ptr %i.i, align 4
  %.neg861.i = add nuw nsw i32 %.03291205.i, 1
  %invariant.op1178.i = sub i32 %.neg861.i, %i.aep
  %i.aeq = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aer = icmp sgt i32 %.fr1228.i, 0
  %or.cond1444.i = and i1 %i.yl, %i.aer
  br i1 %or.cond1444.i, label %.preheader887.us.us.preheader.i, label %._crit_edge1193.i

.preheader887.us.us.preheader.i:                  ; preds = %.preheader887.lr.ph.i
  %i.aes = zext nneg i32 %.fr1228.i to i64        ; 2 uses
  %i.aet = zext i32 %.1.lcssa.i to i64
  br label %.preheader887.us.us.i

.preheader887.us.us.i:                            ; preds = %._crit_edge1183.split.us.us.us.i, %.preheader887.us.us.preheader.i
  %indvars.iv1387.i = phi i64 [ %i.aet, %.preheader887.us.us.preheader.i ], [ %indvars.iv.next1388.i, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.23251190.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader887.us.us.preheader.i ], [ %i.afx, %._crit_edge1183.split.us.us.us.i ] ; 2 uses
  %.91189.us.us.i = phi float [ %.1327.lcssa.i, %.preheader887.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1183.split.us.us.us.i ]
  br label %bb.ch

bb.ch:                                            ; preds = %..loopexit882_crit_edge.us.us.us.i, %.preheader887.us.us.i
  %indvars.iv1382.i = phi i64 [ %indvars.iv.next1383.i, %..loopexit882_crit_edge.us.us.us.i ], [ 0, %.preheader887.us.us.i ] ; 3 uses
  %.101180.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit882_crit_edge.us.us.us.i ], [ %.91189.us.us.i, %.preheader887.us.us.i ] ; 3 uses
  %i.aeu = trunc i64 %indvars.iv1382.i to i32
  %i.aev = mul i32 %i.aek, %i.aeu
  %.reass1186.us.us.us.i = add i32 %i.aev, %invariant.op1185.i ; 3 uses
  %i.aew = icmp slt i32 %.reass1186.us.us.us.i, 0
  br i1 %i.aew, label %..loopexit882_crit_edge.us.us.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aex = srem i32 %.reass1186.us.us.us.i, %i.aem
  %i.aey = sdiv i32 %.reass1186.us.us.us.i, %i.aem ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.aex, 0
  %.not422.us.us.us.i = icmp slt i32 %i.aey, %i.la
  %or.cond311 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond311, label %.preheader.us.us.us.i, label %..loopexit882_crit_edge.us.us.us.i

bb.cj:                                            ; preds = %.preheader.us.us.us.i, %bb.cl
  %indvars.iv1377.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next1378.i, %bb.cl ] ; 3 uses
  %.111175.us.us.us.i = phi float [ %.101180.us.us.us.i, %.preheader.us.us.us.i ], [ %.13.us.us.us.i, %bb.cl ] ; 3 uses
  %i.aez = trunc i64 %indvars.iv1377.i to i32
  %i.afa = mul i32 %i.aeo, %i.aez
  %.reass1179.us.us.us.i = add i32 %invariant.op1178.i, %i.afa ; 3 uses
  %i.afb = icmp slt i32 %.reass1179.us.us.us.i, 0
  br i1 %i.afb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afc = srem i32 %.reass1179.us.us.us.i, %i.aeq
  %i.afd = sdiv i32 %.reass1179.us.us.us.i, %i.aeq ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.afc, 0
  %.not424.us.us.us.i = icmp slt i32 %i.afd, %i.kz
  %or.cond312 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond312, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.cl

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ck
  %i.afe = load ptr, ptr %1, align 8, !tbaa !18, !noalias !304
  %i.aff = load i64, ptr %i.lj, align 8, !tbaa !20, !noalias !304
  %i.afg = mul i64 %i.aff, %indvars.iv1387.i
  %i.afh = load i64, ptr %i.ak, align 8, !tbaa !57, !noalias !304 ; 2 uses
  %i.afi = mul i64 %i.afg, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.afi
  %i.afk = mul i64 %i.afw, %i.afh
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = sext i32 %i.afd to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !39
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv1377.i
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !39
  %i.afr = fmul fast float %i.afq, %i.afo
  %i.afs = fadd fast float %i.afr, %.111175.us.us.us.i
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ck, %bb.cj
  %.13.us.us.us.i = phi nsz float [ %.111175.us.us.us.i, %bb.cj ], [ %.111175.us.us.us.i, %bb.ck ], [ %i.afs, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %i.aes
  br i1 %exitcond1381.not.i, label %..loopexit882_crit_edge.us.us.us.i, label %bb.cj, !llvm.loop !307

..loopexit882_crit_edge.us.us.us.i:               ; preds = %bb.cl, %bb.ci, %bb.ch
  %.15.us.us.us.i = phi nsz float [ %.101180.us.us.us.i, %bb.ch ], [ %.101180.us.us.us.i, %bb.ci ], [ %.13.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next1383.i = add nuw nsw i64 %indvars.iv1382.i, 1 ; 2 uses
  %exitcond1386.not.i = icmp eq i64 %indvars.iv.next1383.i, %wide.trip.count1352.i
  br i1 %exitcond1386.not.i, label %._crit_edge1183.split.us.us.us.i, label %bb.ch, !llvm.loop !308

end_hunk_4
begin_hunk_5_@_ZN4ncnn17Deconvolution_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader693.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %indvars.iv.i.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39
  %i.as = xor i64 %indvars.iv.i.prol, -1
  %i.at = getelementptr [4 x i8], ptr %i.ai, i64 %i.as
  store float %i.ar, ptr %i.at, align 4, !tbaa !39
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !319

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.au = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %._crit_edge.i, label %scalar.ph

._crit_edge698.split.i:                           ; preds = %._crit_edge.i, %.preheader693.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.e, i32 noundef %i.k, i32 noundef %i.j, ptr noundef null)
          to label %bb.b unwind label %bb.e

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %i.v
  %i.ax = add nuw nsw i32 %.0319697.i, 1          ; 2 uses
  %exitcond897.not.i = icmp eq i32 %i.ax, %i.s
  br i1 %exitcond897.not.i, label %._crit_edge698.split.i, label %.preheader693.i, !llvm.loop !320

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %indvars.iv.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !39
  %i.ba = xor i64 %indvars.iv.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.ai, i64 %i.ba
  store float %i.az, ptr %i.bb, align 4, !tbaa !39
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !39
  %i.bf = sub i64 -2, %indvars.iv.i
  %i.bg = getelementptr [4 x i8], ptr %i.ai, i64 %i.bf
  store float %i.be, ptr %i.bg, align 4, !tbaa !39
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !39
  %i.bk = sub i64 -3, %indvars.iv.i
  %i.bl = getelementptr [4 x i8], ptr %i.ai, i64 %i.bk
  store float %i.bj, ptr %i.bl, align 4, !tbaa !39
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.0320696.i, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = sub i64 -4, %indvars.iv.i
  %i.bq = getelementptr [4 x i8], ptr %i.ai, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !321

bb.b:                                             ; preds = %._crit_edge698.split.i
  %i.br = icmp sgt i32 %i.j, 3
  br i1 %i.br, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bs = icmp sgt i32 %i.k, 3                    ; 2 uses
  br i1 %i.bs, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bt = shl nsw i32 %i.e, 4
  %i.bu = lshr i32 %i.k, 2
  %i.bv = lshr i32 %i.k, 1
  %i.bw = and i32 %i.bv, 1
  %i.bx = and i32 %i.k, 1
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = add nuw nsw i32 %i.by, %i.bw
  br label %.invoke1069.i

bb.e:                                             ; preds = %._crit_edge698.split.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit343.i

bb.f:                                             ; preds = %.invoke.i, %.invoke1069.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not.i410.i = icmp eq ptr %i.cd, null
  br i1 %.not.i410.i, label %_ZN4ncnn3MatD2Ev.exit343.i, label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.ce = icmp sgt i32 %i.k, 1
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = shl nsw i32 %i.e, 3
  %i.cg = and i32 %i.k, 1
  %i.ch = add nuw nsw i32 %i.cg, 1
  br label %.invoke1069.i

bb.i:                                             ; preds = %bb.g
  %i.ci = shl nsw i32 %i.e, 2
  br label %.invoke1069.i

.invoke1069.i:                                    ; preds = %bb.i, %bb.h, %bb.d
  %i.cj = phi i32 [ %i.ci, %bb.i ], [ %i.cf, %bb.h ], [ %i.bt, %bb.d ]
  %i.ck = phi i32 [ %i.k, %bb.i ], [ %i.ch, %bb.h ], [ %i.bz, %bb.d ]
  %i.cl = lshr i32 %i.j, 2
  %i.cm = lshr i32 %i.j, 1
  %i.cn = and i32 %i.cm, 1
  %i.co = and i32 %i.j, 1
  %i.cp = add nuw nsw i32 %i.co, %i.cl
  %i.cq = add nuw nsw i32 %i.cp, %i.cn
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cq, i64 noundef 2, ptr noundef null)
          to label %.noexc470.lr.ph.i unwind label %bb.f

bb.j:                                             ; preds = %bb.b
  %i.cr = icmp sgt i32 %i.j, 1
  %i.cs = icmp sgt i32 %i.k, 3                    ; 2 uses
  br i1 %i.cr, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ct = shl nsw i32 %i.e, 3
  %i.cu = lshr i32 %i.k, 2
  %i.cv = lshr i32 %i.k, 1
  %i.cw = and i32 %i.cv, 1
  %i.cx = and i32 %i.k, 1
  %i.cy = add nuw nsw i32 %i.cx, %i.cu
  %i.cz = add nuw nsw i32 %i.cy, %i.cw
  %i.da = and i32 %i.j, 1
  %i.db = add nuw nsw i32 %i.da, 1
  br label %.invoke.i

bb.m:                                             ; preds = %bb.k
  %i.dc = icmp sgt i32 %i.k, 1
  br i1 %i.dc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dd = shl nsw i32 %i.e, 2
  %i.de = and i32 %i.k, 1
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = and i32 %i.j, 1
  %i.dh = add nuw nsw i32 %i.dg, 1
  br label %.invoke.i

bb.o:                                             ; preds = %bb.m
  %i.di = shl nsw i32 %i.e, 1
  %i.dj = and i32 %i.j, 1
  %i.dk = add nuw nsw i32 %i.dj, 1
  br label %.invoke.i

bb.p:                                             ; preds = %bb.j
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dl = shl nsw i32 %i.e, 2
  %i.dm = lshr i32 %i.k, 2
  %i.dn = lshr i32 %i.k, 1
  %i.do = and i32 %i.dn, 1
  %i.dp = and i32 %i.k, 1
  %i.dq = add nuw nsw i32 %i.dp, %i.dm
  %i.dr = add nuw nsw i32 %i.dq, %i.do
  br label %.invoke.i

bb.r:                                             ; preds = %bb.p
  %i.ds = icmp sgt i32 %i.k, 1
  br i1 %i.ds, label %bb.s, label %.invoke.i

bb.s:                                             ; preds = %bb.r
  %i.dt = shl nsw i32 %i.e, 1
  %i.du = and i32 %i.k, 1
  %i.dv = add nuw nsw i32 %i.du, 1
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l
  %i.dw = phi i32 [ %i.ct, %bb.l ], [ %i.dt, %bb.s ], [ %i.dl, %bb.q ], [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.e, %bb.r ]
  %i.dx = phi i32 [ %i.cz, %bb.l ], [ %i.dv, %bb.s ], [ %i.dr, %bb.q ], [ %i.k, %bb.o ], [ %i.df, %bb.n ], [ %i.k, %bb.r ]
  %i.dy = phi i32 [ %i.db, %bb.l ], [ %i.j, %bb.s ], [ %i.j, %bb.q ], [ %i.dk, %bb.o ], [ %i.dh, %bb.n ], [ %i.j, %bb.r ]
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i32 noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.dy, i64 noundef 2, ptr noundef null)
          to label %.preheader682.i unwind label %bb.f

.noexc470.lr.ph.i:                                ; preds = %.invoke1069.i
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !18, !noalias !322
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !20, !noalias !322
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !57, !noalias !322
  %factor.op.mul755.i = mul i64 %i.ed, %i.eb
  %i.ee = icmp sgt i32 %i.e, 0                    ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ei = and i32 %i.k, -4                        ; 3 uses
  %i.ej = sext i32 %i.k to i64
  %i.ek = zext nneg i32 %i.j to i64
  %wide.trip.count912.i = zext i32 %i.e to i64    ; 4 uses
  %invariant.op.i = add nsw i64 %i.ej, -3
  %i.el = or disjoint i32 %i.ei, 1
  %i.em = icmp slt i32 %i.el, %i.k
  %xtraiter148 = and i64 %wide.trip.count912.i, 1
  %i.en = icmp eq i32 %i.e, 1
  %unroll_iter = and i64 %wide.trip.count912.i, 2147483646
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %lcmp.mod151 = trunc i32 %i.e to i1
  br label %.noexc470.i

.preheader682.loopexit.i:                         ; preds = %._crit_edge748.split.i
  %i.eo = trunc nuw nsw i64 %indvars.iv.next946.i to i32
  br label %.preheader682.i

.preheader682.i:                                  ; preds = %.preheader682.loopexit.i, %.invoke.i
  %.0297.lcssa.i = phi i32 [ %i.eo, %.preheader682.loopexit.i ], [ 0, %.invoke.i ] ; 3 uses
  %i.ep = or disjoint i32 %.0297.lcssa.i, 1
  %i.eq = icmp slt i32 %i.ep, %i.j
  br i1 %i.eq, label %.noexc462.lr.ph.i, label %.preheader671.i

.noexc462.lr.ph.i:                                ; preds = %.preheader682.i
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !18, !noalias !325
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.et = load i64, ptr %i.es, align 8, !tbaa !20, !noalias !325
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !57, !noalias !325
  %factor.op.mul821.i = mul i64 %i.ev, %i.et
  %i.ew = icmp sgt i32 %i.k, 3
  %i.ex = icmp sgt i32 %i.e, 0                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fb = and i32 %i.k, -4                        ; 3 uses
  %i.fc = sext i32 %i.k to i64
  %i.fd = zext nneg i32 %.0297.lcssa.i to i64
  %i.fe = sext i32 %i.j to i64
  %wide.trip.count959.i = zext i32 %i.e to i64    ; 6 uses
  %invariant.op1066.i.a = add nsw i64 %i.fc, -3
  %invariant.op1067.i = add nsw i64 %i.fe, -1
  %i.ff = or disjoint i32 %i.fb, 1
  %i.fg = icmp slt i32 %i.ff, %i.k
  %xtraiter152 = and i64 %wide.trip.count959.i, 1
  %i.fh = icmp eq i32 %i.e, 1
  %unroll_iter156 = and i64 %wide.trip.count959.i, 2147483646
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod155 = trunc i32 %i.e to i1
  %min.iters.check96 = icmp ult i32 %i.e, 4
  %n.vec98 = and i64 %wide.trip.count959.i, 2147483644 ; 4 uses
  %i.fi = shl nuw nsw i64 %n.vec98, 2
  %cmp.n105 = icmp eq i64 %n.vec98, %wide.trip.count959.i
  br label %.noexc462.i

.noexc470.i:                                      ; preds = %._crit_edge748.split.i, %.noexc470.lr.ph.i
  %indvars.iv945.i = phi i64 [ 0, %.noexc470.lr.ph.i ], [ %indvars.iv.next946.i, %._crit_edge748.split.i ] ; 14 uses
  %i.fj = lshr exact i64 %indvars.iv945.i, 2
  %.reass756.i = mul i64 %factor.op.mul755.i, %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.reass756.i ; 4 uses
  br i1 %i.bs, label %.preheader690.lr.ph.i, label %.preheader692.i

.preheader690.lr.ph.i:                            ; preds = %.noexc470.i
  %i.fl = load i32, ptr %i.ef, align 4
  %i.fm = load ptr, ptr %3, align 8
  %i.fn = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.fo = sext i32 %i.fl to i64
  %factor.op.mul703.i = mul i64 %i.fn, %i.fo      ; 4 uses
  br i1 %i.ee, label %.preheader690.us.preheader.i, label %.preheader692.i.thread

.preheader690.us.preheader.i:                     ; preds = %.preheader690.lr.ph.i
  %i.fp = load i64, ptr %i.eg, align 8
  %factor.op.mul.i = mul i64 %i.fp, %i.fn         ; 4 uses
  %.reass.us.i = mul i64 %factor.op.mul.i, %indvars.iv945.i ; 4 uses
  %i.fq = or disjoint i64 %indvars.iv945.i, 1
  %.reass.us.1.i = mul i64 %factor.op.mul.i, %i.fq ; 4 uses
  %i.fr = or disjoint i64 %indvars.iv945.i, 2
  %.reass.us.2.i = mul i64 %factor.op.mul.i, %i.fr ; 4 uses
  %i.fs = or disjoint i64 %indvars.iv945.i, 3
  %.reass.us.3.i = mul i64 %factor.op.mul.i, %i.fs ; 4 uses
  br label %.preheader690.us.i

.preheader690.us.i:                               ; preds = %._crit_edge710.us.i, %.preheader690.us.preheader.i
  %indvars.iv914.i = phi i64 [ 0, %.preheader690.us.preheader.i ], [ %indvars.iv.next915.i, %._crit_edge710.us.i ] ; 5 uses
  %.0286711.us.i = phi ptr [ %i.fk, %.preheader690.us.preheader.i ], [ %i.ih, %._crit_edge710.us.i ]
  %.reass704.us.i = mul i64 %indvars.iv914.i, %factor.op.mul703.i
  %i.ft = or disjoint i64 %indvars.iv914.i, 1
  %.reass704.us.1.i = mul i64 %i.ft, %factor.op.mul703.i
  %i.fu = or disjoint i64 %indvars.iv914.i, 2
  %.reass704.us.2.i = mul i64 %i.fu, %factor.op.mul703.i
  %i.fv = or disjoint i64 %indvars.iv914.i, 3
  %.reass704.us.3.i = mul i64 %i.fv, %factor.op.mul703.i
  br label %.preheader687.us.i

.preheader687.us.i:                               ; preds = %.preheader687.us.i, %.preheader690.us.i
  %indvars.iv909.i = phi i64 [ 0, %.preheader690.us.i ], [ %indvars.iv.next910.i, %.preheader687.us.i ] ; 2 uses
  %.1287708.us.i = phi ptr [ %.0286711.us.i, %.preheader690.us.i ], [ %i.ih, %.preheader687.us.i ] ; 17 uses
  %invariant.gep705.us.i = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv909.i ; 4 uses
  %gep.us.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.i ; 4 uses
  %gep700.us.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.i
  %i.fw = load i32, ptr %gep700.us.i, align 4, !tbaa !39
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = trunc nuw i32 %i.fx to i16
  store i16 %i.fy, ptr %.1287708.us.i, align 2, !tbaa !328
  %i.fz = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 2
  %gep700.us.1.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.1.i
  %i.ga = load i32, ptr %gep700.us.1.i, align 4, !tbaa !39
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  store i16 %i.gc, ptr %i.fz, align 2, !tbaa !328
  %i.gd = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 4
  %gep700.us.2.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.2.i
  %i.ge = load i32, ptr %gep700.us.2.i, align 4, !tbaa !39
  %i.gf = lshr i32 %i.ge, 16
  %i.gg = trunc nuw i32 %i.gf to i16
  store i16 %i.gg, ptr %i.gd, align 2, !tbaa !328
  %i.gh = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 6
  %gep700.us.3.i = getelementptr i8, ptr %gep.us.i, i64 %.reass.us.3.i
  %i.gi = load i32, ptr %gep700.us.3.i, align 4, !tbaa !39
  %i.gj = lshr i32 %i.gi, 16
  %i.gk = trunc nuw i32 %i.gj to i16
  store i16 %i.gk, ptr %i.gh, align 2, !tbaa !328
  %i.gl = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 8
  %gep.us.1.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.1.i ; 4 uses
  %gep700.us.1906.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.i
  %i.gm = load i32, ptr %gep700.us.1906.i, align 4, !tbaa !39
  %i.gn = lshr i32 %i.gm, 16
  %i.go = trunc nuw i32 %i.gn to i16
  store i16 %i.go, ptr %i.gl, align 2, !tbaa !328
  %i.gp = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 10
  %gep700.us.1.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.1.i
  %i.gq = load i32, ptr %gep700.us.1.1.i, align 4, !tbaa !39
  %i.gr = lshr i32 %i.gq, 16
  %i.gs = trunc nuw i32 %i.gr to i16
  store i16 %i.gs, ptr %i.gp, align 2, !tbaa !328
  %i.gt = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 12
  %gep700.us.2.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.2.i
  %i.gu = load i32, ptr %gep700.us.2.1.i, align 4, !tbaa !39
  %i.gv = lshr i32 %i.gu, 16
  %i.gw = trunc nuw i32 %i.gv to i16
  store i16 %i.gw, ptr %i.gt, align 2, !tbaa !328
  %i.gx = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 14
  %gep700.us.3.1.i = getelementptr i8, ptr %gep.us.1.i, i64 %.reass.us.3.i
  %i.gy = load i32, ptr %gep700.us.3.1.i, align 4, !tbaa !39
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = trunc nuw i32 %i.gz to i16
  store i16 %i.ha, ptr %i.gx, align 2, !tbaa !328
  %i.hb = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 16
  %gep.us.2.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.2.i ; 4 uses
  %gep700.us.2907.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.i
  %i.hc = load i32, ptr %gep700.us.2907.i, align 4, !tbaa !39
  %i.hd = lshr i32 %i.hc, 16
  %i.he = trunc nuw i32 %i.hd to i16
  store i16 %i.he, ptr %i.hb, align 2, !tbaa !328
  %i.hf = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 18
  %gep700.us.1.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.1.i
  %i.hg = load i32, ptr %gep700.us.1.2.i, align 4, !tbaa !39
  %i.hh = lshr i32 %i.hg, 16
  %i.hi = trunc nuw i32 %i.hh to i16
  store i16 %i.hi, ptr %i.hf, align 2, !tbaa !328
  %i.hj = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 20
  %gep700.us.2.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.2.i
  %i.hk = load i32, ptr %gep700.us.2.2.i, align 4, !tbaa !39
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = trunc nuw i32 %i.hl to i16
  store i16 %i.hm, ptr %i.hj, align 2, !tbaa !328
  %i.hn = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 22
  %gep700.us.3.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.3.i
  %i.ho = load i32, ptr %gep700.us.3.2.i, align 4, !tbaa !39
  %i.hp = lshr i32 %i.ho, 16
  %i.hq = trunc nuw i32 %i.hp to i16
  store i16 %i.hq, ptr %i.hn, align 2, !tbaa !328
  %i.hr = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 24
  %gep.us.3.i = getelementptr i8, ptr %invariant.gep705.us.i, i64 %.reass704.us.3.i ; 4 uses
  %gep700.us.3908.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.i
  %i.hs = load i32, ptr %gep700.us.3908.i, align 4, !tbaa !39
  %i.ht = lshr i32 %i.hs, 16
  %i.hu = trunc nuw i32 %i.ht to i16
  store i16 %i.hu, ptr %i.hr, align 2, !tbaa !328
  %i.hv = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 26
  %gep700.us.1.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.1.i
  %i.hw = load i32, ptr %gep700.us.1.3.i, align 4, !tbaa !39
  %i.hx = lshr i32 %i.hw, 16
  %i.hy = trunc nuw i32 %i.hx to i16
  store i16 %i.hy, ptr %i.hv, align 2, !tbaa !328
  %i.hz = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 28
  %gep700.us.2.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.2.i
  %i.ia = load i32, ptr %gep700.us.2.3.i, align 4, !tbaa !39
  %i.ib = lshr i32 %i.ia, 16
  %i.ic = trunc nuw i32 %i.ib to i16
  store i16 %i.ic, ptr %i.hz, align 2, !tbaa !328
  %i.id = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 30
  %gep700.us.3.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.3.i
  %i.ie = load i32, ptr %gep700.us.3.3.i, align 4, !tbaa !39
  %i.if = lshr i32 %i.ie, 16
  %i.ig = trunc nuw i32 %i.if to i16
  store i16 %i.ig, ptr %i.id, align 2, !tbaa !328
  %i.ih = getelementptr inbounds nuw i8, ptr %.1287708.us.i, i64 32 ; 3 uses
  %indvars.iv.next910.i = add nuw nsw i64 %indvars.iv909.i, 1 ; 2 uses
  %exitcond913.not.i = icmp eq i64 %indvars.iv.next910.i, %wide.trip.count912.i
  br i1 %exitcond913.not.i, label %._crit_edge710.us.i, label %.preheader687.us.i, !llvm.loop !330

._crit_edge710.us.i:                              ; preds = %.preheader687.us.i
  %indvars.iv.next915.i = add nuw nsw i64 %indvars.iv914.i, 4 ; 3 uses
  %i.ii = icmp slt i64 %indvars.iv.next915.i, %invariant.op.i
  br i1 %i.ii, label %.preheader690.us.i, label %.preheader692.loopexit.i, !llvm.loop !331

.preheader692.loopexit.i:                         ; preds = %._crit_edge710.us.i
  %i.ij = trunc nuw nsw i64 %indvars.iv.next915.i to i32
  br label %.preheader692.i

.preheader692.i:                                  ; preds = %.preheader692.loopexit.i, %.noexc470.i
  %.0286.lcssa.i = phi ptr [ %i.fk, %.noexc470.i ], [ %i.ih, %.preheader692.loopexit.i ] ; 3 uses
  %.0283.lcssa.i = phi i32 [ 0, %.noexc470.i ], [ %i.ij, %.preheader692.loopexit.i ] ; 4 uses
  %i.ik = or disjoint i32 %.0283.lcssa.i, 1
  %i.il = icmp slt i32 %i.ik, %i.k
  br i1 %i.il, label %.preheader689.lr.ph.i, label %.preheader691.i

.preheader692.i.thread:                           ; preds = %.preheader690.lr.ph.i
  br i1 %i.em, label %.preheader689.preheader.i, label %.preheader691.i

.preheader689.lr.ph.i:                            ; preds = %.preheader692.i
  %i.im = load i32, ptr %i.ef, align 4
  %i.in = load ptr, ptr %3, align 8
  %i.io = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ip = sext i32 %i.im to i64
  %factor.op.mul721.i = mul i64 %i.io, %i.ip      ; 2 uses
  br i1 %i.ee, label %.preheader689.us.preheader.i, label %.preheader689.preheader.i

.preheader689.preheader.i:                        ; preds = %.preheader692.i.thread, %.preheader689.lr.ph.i
  %.0286.lcssa.i612 = phi ptr [ %.0286.lcssa.i, %.preheader689.lr.ph.i ], [ %i.fk, %.preheader692.i.thread ]
  %.0283.lcssa.i711 = phi i32 [ %.0283.lcssa.i, %.preheader689.lr.ph.i ], [ %i.ei, %.preheader692.i.thread ] ; 3 uses
  %i.iq = add i32 %.0283.lcssa.i711, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.k, i32 %i.iq)
  %reass.sub = sub i32 %smax.i, %.0283.lcssa.i711
  %i.ir = and i32 %reass.sub, -2
  %i.is = add i32 %.0283.lcssa.i711, %i.ir
  br label %.preheader691.i

.preheader689.us.preheader.i:                     ; preds = %.preheader689.lr.ph.i
  %i.it = load i64, ptr %i.eg, align 8
  %factor.op.mul716.i = mul i64 %i.it, %i.io      ; 4 uses
  %i.iu = zext i32 %.0283.lcssa.i to i64
  %.reass.us733.i = mul i64 %factor.op.mul716.i, %indvars.iv945.i ; 2 uses
  %i.iv = or disjoint i64 %indvars.iv945.i, 1
  %.reass.us733.1.i = mul i64 %factor.op.mul716.i, %i.iv ; 2 uses
  %i.iw = or disjoint i64 %indvars.iv945.i, 2
  %.reass.us733.2.i = mul i64 %factor.op.mul716.i, %i.iw ; 2 uses
  %i.ix = or disjoint i64 %indvars.iv945.i, 3
  %.reass.us733.3.i = mul i64 %factor.op.mul716.i, %i.ix ; 2 uses
  br label %.preheader689.us.i

.preheader689.us.i:                               ; preds = %._crit_edge728.us.i, %.preheader689.us.preheader.i
  %indvars.iv930.i = phi i64 [ %i.iu, %.preheader689.us.preheader.i ], [ %indvars.iv.next931.i, %._crit_edge728.us.i ] ; 3 uses
  %.4290729.us.i = phi ptr [ %.0286.lcssa.i, %.preheader689.us.preheader.i ], [ %i.ke, %._crit_edge728.us.i ]
  %.reass722.us.i = mul i64 %indvars.iv930.i, %factor.op.mul721.i
  %i.iy = add nuw nsw i64 %indvars.iv930.i, 1
  %.reass722.us.1.i = mul i64 %i.iy, %factor.op.mul721.i
  br label %.preheader686.us.i

.preheader686.us.i:                               ; preds = %.preheader686.us.i, %.preheader689.us.i
  %indvars.iv925.i = phi i64 [ 0, %.preheader689.us.i ], [ %indvars.iv.next926.i, %.preheader686.us.i ] ; 2 uses
  %.5291726.us.i = phi ptr [ %.4290729.us.i, %.preheader689.us.i ], [ %i.ke, %.preheader686.us.i ] ; 9 uses
  %invariant.gep723.us.i = getelementptr [4 x i8], ptr %i.in, i64 %indvars.iv925.i ; 2 uses
  %gep.us734.i = getelementptr i8, ptr %invariant.gep723.us.i, i64 %.reass722.us.i ; 4 uses
  %gep718.us.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.i
  %i.iz = load i32, ptr %gep718.us.i, align 4, !tbaa !39
  %i.ja = lshr i32 %i.iz, 16
  %i.jb = trunc nuw i32 %i.ja to i16
  store i16 %i.jb, ptr %.5291726.us.i, align 2, !tbaa !328
  %i.jc = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 2
  %gep718.us.1.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.1.i
  %i.jd = load i32, ptr %gep718.us.1.i, align 4, !tbaa !39
  %i.je = lshr i32 %i.jd, 16
  %i.jf = trunc nuw i32 %i.je to i16
  store i16 %i.jf, ptr %i.jc, align 2, !tbaa !328
  %i.jg = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 4
  %gep718.us.2.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.2.i
  %i.jh = load i32, ptr %gep718.us.2.i, align 4, !tbaa !39
  %i.ji = lshr i32 %i.jh, 16
  %i.jj = trunc nuw i32 %i.ji to i16
  store i16 %i.jj, ptr %i.jg, align 2, !tbaa !328
  %i.jk = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 6
  %gep718.us.3.i = getelementptr i8, ptr %gep.us734.i, i64 %.reass.us733.3.i
  %i.jl = load i32, ptr %gep718.us.3.i, align 4, !tbaa !39
  %i.jm = lshr i32 %i.jl, 16
  %i.jn = trunc nuw i32 %i.jm to i16
  store i16 %i.jn, ptr %i.jk, align 2, !tbaa !328
  %i.jo = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 8
  %gep.us734.1.i = getelementptr i8, ptr %invariant.gep723.us.i, i64 %.reass722.us.1.i ; 4 uses
  %gep718.us.1924.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.i
  %i.jp = load i32, ptr %gep718.us.1924.i, align 4, !tbaa !39
  %i.jq = lshr i32 %i.jp, 16
  %i.jr = trunc nuw i32 %i.jq to i16
  store i16 %i.jr, ptr %i.jo, align 2, !tbaa !328
  %i.js = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 10
  %gep718.us.1.1.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.1.i
  %i.jt = load i32, ptr %gep718.us.1.1.i, align 4, !tbaa !39
  %i.ju = lshr i32 %i.jt, 16
  %i.jv = trunc nuw i32 %i.ju to i16
  store i16 %i.jv, ptr %i.js, align 2, !tbaa !328
  %i.jw = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 12
  %gep718.us.2.1.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.2.i
  %i.jx = load i32, ptr %gep718.us.2.1.i, align 4, !tbaa !39
  %i.jy = lshr i32 %i.jx, 16
  %i.jz = trunc nuw i32 %i.jy to i16
  store i16 %i.jz, ptr %i.jw, align 2, !tbaa !328
  %i.ka = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 14
  %gep718.us.3.1.i = getelementptr i8, ptr %gep.us734.1.i, i64 %.reass.us733.3.i
  %i.kb = load i32, ptr %gep718.us.3.1.i, align 4, !tbaa !39
  %i.kc = lshr i32 %i.kb, 16
  %i.kd = trunc nuw i32 %i.kc to i16
  store i16 %i.kd, ptr %i.ka, align 2, !tbaa !328
  %i.ke = getelementptr inbounds nuw i8, ptr %.5291726.us.i, i64 16 ; 3 uses
  %indvars.iv.next926.i = add nuw nsw i64 %indvars.iv925.i, 1 ; 2 uses
  %exitcond929.not.i = icmp eq i64 %indvars.iv.next926.i, %wide.trip.count912.i
  br i1 %exitcond929.not.i, label %._crit_edge728.us.i, label %.preheader686.us.i, !llvm.loop !332

._crit_edge728.us.i:                              ; preds = %.preheader686.us.i
  %indvars.iv.next931.i = add nuw nsw i64 %indvars.iv930.i, 2 ; 2 uses
  %i.kf = trunc i64 %indvars.iv.next931.i to i32  ; 2 uses
  %i.kg = or i32 %i.kf, 1
  %i.kh = icmp slt i32 %i.kg, %i.k
  br i1 %i.kh, label %.preheader689.us.i, label %.preheader691.i, !llvm.loop !333

.preheader691.i:                                  ; preds = %._crit_edge728.us.i, %.preheader692.i.thread, %.preheader689.preheader.i, %.preheader692.i
  %.4290.lcssa.i = phi ptr [ %.0286.lcssa.i, %.preheader692.i ], [ %i.fk, %.preheader692.i.thread ], [ %.0286.lcssa.i612, %.preheader689.preheader.i ], [ %i.ke, %._crit_edge728.us.i ]
  %.1284.lcssa.i = phi i32 [ %.0283.lcssa.i, %.preheader692.i ], [ %i.ei, %.preheader692.i.thread ], [ %i.is, %.preheader689.preheader.i ], [ %i.kf, %._crit_edge728.us.i ] ; 2 uses
  %i.ki = icmp slt i32 %.1284.lcssa.i, %i.k
  br i1 %i.ki, label %.preheader688.lr.ph.i, label %._crit_edge748.split.i

.preheader688.lr.ph.i:                            ; preds = %.preheader691.i
  %i.kj = load i32, ptr %i.ef, align 4
  %i.kk = load ptr, ptr %3, align 8
  %i.kl = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.km = sext i32 %i.kj to i64
  %factor.op.mul749.i = mul i64 %i.kl, %i.km
  br i1 %i.ee, label %.preheader688.preheader.i, label %._crit_edge748.split.i

.preheader688.preheader.i:                        ; preds = %.preheader688.lr.ph.i
  %i.kn = load i64, ptr %i.eg, align 8
  %factor.op.mul738.i = mul i64 %i.kn, %i.kl      ; 4 uses
  %i.ko = zext i32 %.1284.lcssa.i to i64
  %.reass.i = mul i64 %factor.op.mul738.i, %indvars.iv945.i ; 3 uses
  %i.kp = or disjoint i64 %indvars.iv945.i, 1
  %.reass.1.i = mul i64 %factor.op.mul738.i, %i.kp ; 3 uses
  %i.kq = or disjoint i64 %indvars.iv945.i, 2
  %.reass.2.i = mul i64 %factor.op.mul738.i, %i.kq ; 3 uses
  %i.kr = or disjoint i64 %indvars.iv945.i, 3
  %.reass.3.i = mul i64 %factor.op.mul738.i, %i.kr ; 3 uses
  br label %.preheader688.i

.preheader688.i:                                  ; preds = %._crit_edge745.i, %.preheader688.preheader.i
  %indvars.iv942.i = phi i64 [ %i.ko, %.preheader688.preheader.i ], [ %indvars.iv.next943.i, %._crit_edge745.i ] ; 2 uses
  %.8294746.i = phi ptr [ %.4290.lcssa.i, %.preheader688.preheader.i ], [ %.lcssa147, %._crit_edge745.i ] ; 2 uses
  %.reass750.i = mul i64 %factor.op.mul749.i, %indvars.iv942.i
  %invariant.gep.i = getelementptr i8, ptr %i.kk, i64 %.reass750.i ; 3 uses
  br i1 %i.en, label %.preheader685.i.epil.preheader, label %.preheader685.i

.preheader685.i:                                  ; preds = %.preheader688.i, %.preheader685.i
  %indvars.iv937.i = phi i64 [ %indvars.iv.next938.i.1, %.preheader685.i ], [ 0, %.preheader688.i ] ; 3 uses
  %.9295743.i = phi ptr [ %i.ly, %.preheader685.i ], [ %.8294746.i, %.preheader688.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.preheader685.i ], [ 0, %.preheader688.i ]
  %invariant.gep739.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i ; 4 uses
  %gep740.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.i
  %i.ks = load i32, ptr %gep740.i, align 4, !tbaa !39
  %i.kt = lshr i32 %i.ks, 16
  %i.ku = trunc nuw i32 %i.kt to i16
  store i16 %i.ku, ptr %.9295743.i, align 2, !tbaa !328
  %i.kv = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 2
  %gep740.1.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.1.i
  %i.kw = load i32, ptr %gep740.1.i, align 4, !tbaa !39
  %i.kx = lshr i32 %i.kw, 16
  %i.ky = trunc nuw i32 %i.kx to i16
  store i16 %i.ky, ptr %i.kv, align 2, !tbaa !328
  %i.kz = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 4
  %gep740.2.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.2.i
  %i.la = load i32, ptr %gep740.2.i, align 4, !tbaa !39
  %i.lb = lshr i32 %i.la, 16
  %i.lc = trunc nuw i32 %i.lb to i16
  store i16 %i.lc, ptr %i.kz, align 2, !tbaa !328
  %i.ld = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 6
  %gep740.3.i = getelementptr i8, ptr %invariant.gep739.i, i64 %.reass.3.i
  %i.le = load i32, ptr %gep740.3.i, align 4, !tbaa !39
  %i.lf = lshr i32 %i.le, 16
  %i.lg = trunc nuw i32 %i.lf to i16
  store i16 %i.lg, ptr %i.ld, align 2, !tbaa !328
  %i.lh = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 8
  %i.li = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i
  %invariant.gep739.i.1 = getelementptr i8, ptr %i.li, i64 4 ; 4 uses
  %gep740.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.i
  %i.lj = load i32, ptr %gep740.i.1, align 4, !tbaa !39
  %i.lk = lshr i32 %i.lj, 16
  %i.ll = trunc nuw i32 %i.lk to i16
  store i16 %i.ll, ptr %i.lh, align 2, !tbaa !328
  %i.lm = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 10
  %gep740.1.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.1.i
  %i.ln = load i32, ptr %gep740.1.i.1, align 4, !tbaa !39
  %i.lo = lshr i32 %i.ln, 16
  %i.lp = trunc nuw i32 %i.lo to i16
  store i16 %i.lp, ptr %i.lm, align 2, !tbaa !328
  %i.lq = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 12
  %gep740.2.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.2.i
  %i.lr = load i32, ptr %gep740.2.i.1, align 4, !tbaa !39
  %i.ls = lshr i32 %i.lr, 16
  %i.lt = trunc nuw i32 %i.ls to i16
  store i16 %i.lt, ptr %i.lq, align 2, !tbaa !328
  %i.lu = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 14
  %gep740.3.i.1 = getelementptr i8, ptr %invariant.gep739.i.1, i64 %.reass.3.i
  %i.lv = load i32, ptr %gep740.3.i.1, align 4, !tbaa !39
  %i.lw = lshr i32 %i.lv, 16
  %i.lx = trunc nuw i32 %i.lw to i16
  store i16 %i.lx, ptr %i.lu, align 2, !tbaa !328
  %i.ly = getelementptr inbounds nuw i8, ptr %.9295743.i, i64 16 ; 3 uses
  %indvars.iv.next938.i.1 = add nuw nsw i64 %indvars.iv937.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge745.i.unr-lcssa, label %.preheader685.i, !llvm.loop !334

._crit_edge745.i.unr-lcssa:                       ; preds = %.preheader685.i
  br i1 %lcmp.mod149.not, label %._crit_edge745.i, label %.preheader685.i.epil.preheader

.preheader685.i.epil.preheader:                   ; preds = %._crit_edge745.i.unr-lcssa, %.preheader688.i
  %indvars.iv937.i.epil.init = phi i64 [ 0, %.preheader688.i ], [ %indvars.iv.next938.i.1, %._crit_edge745.i.unr-lcssa ]
  %.9295743.i.epil.init = phi ptr [ %.8294746.i, %.preheader688.i ], [ %i.ly, %._crit_edge745.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod151)
  %invariant.gep739.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv937.i.epil.init ; 4 uses
  %gep740.i.epil = getelementptr i8, ptr %invariant.gep739.i.epil, i64 %.reass.i
  %i.lz = load i32, ptr %gep740.i.epil, align 4, !tbaa !39
  %i.ma = lshr i32 %i.lz, 16
  %i.mb = trunc nuw i32 %i.ma to i16
  store i16 %i.mb, ptr %.9295743.i.epil.init, align 2, !tbaa !328
  %i.mc = getelementptr inbounds nuw i8, ptr %.9295743.i.epil.init, i64 2
  %gep740.1.i.epil = getelementptr i8, ptr %invariant.gep739.i.epil, i64 %.reass.1.i
  %i.md = load i32, ptr %gep740.1.i.epil, align 4, !tbaa !39
  %i.me = lshr i32 %i.md, 16
  %i.mf = trunc nuw i32 %i.me to i16
  store i16 %i.mf, ptr %i.mc, align 2, !tbaa !328
  %i.mg = getelementptr inbounds nuw i8, ptr %.9295743.i.epil.init, i64 4
  %gep740.2.i.epil = getelementptr i8, ptr %invariant.gep739.i.epil, i64 %.reass.2.i
  %i.mh = load i32, ptr %gep740.2.i.epil, align 4, !tbaa !39
  %i.mi = lshr i32 %i.mh, 16
  %i.mj = trunc nuw i32 %i.mi to i16
  store i16 %i.mj, ptr %i.mg, align 2, !tbaa !328
  %i.mk = getelementptr inbounds nuw i8, ptr %.9295743.i.epil.init, i64 6
  %gep740.3.i.epil = getelementptr i8, ptr %invariant.gep739.i.epil, i64 %.reass.3.i
  %i.ml = load i32, ptr %gep740.3.i.epil, align 4, !tbaa !39
  %i.mm = lshr i32 %i.ml, 16
  %i.mn = trunc nuw i32 %i.mm to i16
  store i16 %i.mn, ptr %i.mk, align 2, !tbaa !328
  %i.mo = getelementptr inbounds nuw i8, ptr %.9295743.i.epil.init, i64 8
  br label %._crit_edge745.i

._crit_edge745.i:                                 ; preds = %._crit_edge745.i.unr-lcssa, %.preheader685.i.epil.preheader
  %.lcssa147 = phi ptr [ %i.ly, %._crit_edge745.i.unr-lcssa ], [ %i.mo, %.preheader685.i.epil.preheader ]
  %indvars.iv.next943.i = add nuw nsw i64 %indvars.iv942.i, 1 ; 2 uses
  %i.mp = trunc nuw i64 %indvars.iv.next943.i to i32
  %i.mq = icmp sgt i32 %i.k, %i.mp
  br i1 %i.mq, label %.preheader688.i, label %._crit_edge748.split.i, !llvm.loop !335

._crit_edge748.split.i:                           ; preds = %._crit_edge745.i, %.preheader688.lr.ph.i, %.preheader691.i
  %indvars.iv.next946.i = add nuw nsw i64 %indvars.iv945.i, 4 ; 3 uses
  %i.mr = or disjoint i64 %indvars.iv.next946.i, 3
  %i.ms = icmp samesign ult i64 %i.mr, %i.ek
  br i1 %i.ms, label %.noexc470.i, label %.preheader682.loopexit.i, !llvm.loop !336

.preheader671.loopexit.i:                         ; preds = %._crit_edge814.split.i
  %i.mt = trunc nuw nsw i64 %indvars.iv.next992.i to i32
  br label %.preheader671.i

.preheader671.i:                                  ; preds = %.preheader671.loopexit.i, %.preheader682.i
  %.1298.lcssa.i = phi i32 [ %.0297.lcssa.i, %.preheader682.i ], [ %i.mt, %.preheader671.loopexit.i ] ; 2 uses
  %i.mu = icmp slt i32 %.1298.lcssa.i, %i.j
  br i1 %i.mu, label %.noexc454.lr.ph.i, label %._crit_edge865.i

.noexc454.lr.ph.i:                                ; preds = %.preheader671.i
  %i.mv = load ptr, ptr %i.m, align 8, !tbaa !18, !noalias !337
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !20, !noalias !337
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !57, !noalias !337
  %factor.op.mul866.i = mul i64 %i.mz, %i.mx
  %i.na = icmp sgt i32 %i.k, 3
  %i.nb = icmp sgt i32 %i.e, 0                    ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.nf = and i32 %i.k, -4
  %i.ng = sext i32 %i.k to i64
  %i.nh = zext nneg i32 %.1298.lcssa.i to i64
  %wide.trip.count1029.i = zext i32 %i.j to i64
  %wide.trip.count1001.i = zext i32 %i.e to i64   ; 8 uses
  %invariant.op1068.i = add nsw i64 %i.ng, -3
  %xtraiter158 = and i64 %wide.trip.count1001.i, 1
  %i.ni = icmp eq i32 %i.e, 1
  %unroll_iter162 = and i64 %wide.trip.count1001.i, 2147483646
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod161 = trunc i32 %i.e to i1
  %min.iters.check123 = icmp ult i32 %i.e, 4
  %n.vec125 = and i64 %wide.trip.count1001.i, 2147483644 ; 4 uses
  %i.nj = shl nuw nsw i64 %n.vec125, 2
  %cmp.n134 = icmp eq i64 %n.vec125, %wide.trip.count1001.i
  %min.iters.check109 = icmp ult i32 %i.e, 8
  %n.vec111 = and i64 %wide.trip.count1001.i, 2147483640 ; 4 uses
  %i.nk = shl nuw nsw i64 %n.vec111, 1
  %cmp.n119 = icmp eq i64 %n.vec111, %wide.trip.count1001.i
  br label %.noexc454.i

.noexc462.i:                                      ; preds = %._crit_edge814.split.i, %.noexc462.lr.ph.i
  %indvars.iv991.i = phi i64 [ %i.fd, %.noexc462.lr.ph.i ], [ %indvars.iv.next992.i, %._crit_edge814.split.i ] ; 8 uses
  %i.nl = trunc nuw i64 %indvars.iv991.i to i32   ; 2 uses
  %i.nm = lshr i32 %i.nl, 2
  %i.nn = lshr i32 %i.nl, 1
  %i.no = and i32 %i.nn, 1
  %i.np = add nuw nsw i32 %i.no, %i.nm
  %i.nq = zext nneg i32 %i.np to i64
  %.reass822.i = mul i64 %factor.op.mul821.i, %i.nq
  %i.nr = getelementptr inbounds nuw i8, ptr %i.er, i64 %.reass822.i ; 4 uses
  br i1 %i.ew, label %.preheader679.lr.ph.i, label %.preheader681.i

.preheader679.lr.ph.i:                            ; preds = %.noexc462.i
  %i.ns = load i32, ptr %i.ey, align 4
  %i.nt = load ptr, ptr %3, align 8
  %i.nu = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.nv = sext i32 %i.ns to i64
  %factor.op.mul757.i = mul i64 %i.nu, %i.nv      ; 4 uses
  br i1 %i.ex, label %.preheader679.us.preheader.i, label %.preheader681.i.thread

.preheader679.us.preheader.i:                     ; preds = %.preheader679.lr.ph.i
  %i.nw = load i64, ptr %i.ez, align 8
  %factor.op.mul762.i = mul i64 %i.nw, %i.nu      ; 2 uses
  %.reass763.us.i = mul i64 %factor.op.mul762.i, %indvars.iv991.i
  %i.nx = add nuw nsw i64 %indvars.iv991.i, 1
  %.reass763.us.1.i = mul i64 %factor.op.mul762.i, %i.nx
  br label %.preheader679.us.i

.preheader679.us.i:                               ; preds = %._crit_edge770.us.i, %.preheader679.us.preheader.i
  %indvars.iv961.i = phi i64 [ 0, %.preheader679.us.preheader.i ], [ %indvars.iv.next962.i, %._crit_edge770.us.i ] ; 5 uses
  %.0267772.us.i = phi ptr [ %i.nr, %.preheader679.us.preheader.i ], [ %i.pg, %._crit_edge770.us.i ]
  %.reass758.us.i = mul i64 %indvars.iv961.i, %factor.op.mul757.i ; 2 uses
  %i.ny = or disjoint i64 %indvars.iv961.i, 1
  %.reass758.us.1.i = mul i64 %i.ny, %factor.op.mul757.i ; 2 uses
  %i.nz = or disjoint i64 %indvars.iv961.i, 2
  %.reass758.us.2.i = mul i64 %i.nz, %factor.op.mul757.i ; 2 uses
  %i.oa = or disjoint i64 %indvars.iv961.i, 3
  %.reass758.us.3.i = mul i64 %i.oa, %factor.op.mul757.i ; 2 uses
  br label %.preheader676.us.i

.preheader676.us.i:                               ; preds = %.preheader676.us.i, %.preheader679.us.i
  %indvars.iv956.i = phi i64 [ 0, %.preheader679.us.i ], [ %indvars.iv.next957.i, %.preheader676.us.i ] ; 2 uses
  %.1268768.us.i = phi ptr [ %.0267772.us.i, %.preheader679.us.i ], [ %i.pg, %.preheader676.us.i ] ; 9 uses
  %invariant.gep764.us.i = getelementptr [4 x i8], ptr %i.nt, i64 %indvars.iv956.i ; 2 uses
  %gep765.us.i = getelementptr i8, ptr %invariant.gep764.us.i, i64 %.reass763.us.i ; 4 uses
  %gep.us776.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.i
  %i.ob = load i32, ptr %gep.us776.i, align 4, !tbaa !39
  %i.oc = lshr i32 %i.ob, 16
  %i.od = trunc nuw i32 %i.oc to i16
  store i16 %i.od, ptr %.1268768.us.i, align 2, !tbaa !328
  %i.oe = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 2
  %gep.us776.1.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.1.i
  %i.of = load i32, ptr %gep.us776.1.i, align 4, !tbaa !39
  %i.og = lshr i32 %i.of, 16
  %i.oh = trunc nuw i32 %i.og to i16
  store i16 %i.oh, ptr %i.oe, align 2, !tbaa !328
  %i.oi = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 4
  %gep.us776.2.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.2.i
  %i.oj = load i32, ptr %gep.us776.2.i, align 4, !tbaa !39
  %i.ok = lshr i32 %i.oj, 16
  %i.ol = trunc nuw i32 %i.ok to i16
  store i16 %i.ol, ptr %i.oi, align 2, !tbaa !328
  %i.om = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 6
  %gep.us776.3.i = getelementptr i8, ptr %gep765.us.i, i64 %.reass758.us.3.i
  %i.on = load i32, ptr %gep.us776.3.i, align 4, !tbaa !39
  %i.oo = lshr i32 %i.on, 16
  %i.op = trunc nuw i32 %i.oo to i16
  store i16 %i.op, ptr %i.om, align 2, !tbaa !328
  %i.oq = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 8
  %gep765.us.1.i = getelementptr i8, ptr %invariant.gep764.us.i, i64 %.reass763.us.1.i ; 4 uses
  %gep.us776.1955.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.i
  %i.or = load i32, ptr %gep.us776.1955.i, align 4, !tbaa !39
  %i.os = lshr i32 %i.or, 16
  %i.ot = trunc nuw i32 %i.os to i16
  store i16 %i.ot, ptr %i.oq, align 2, !tbaa !328
  %i.ou = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 10
  %gep.us776.1.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.1.i
  %i.ov = load i32, ptr %gep.us776.1.1.i, align 4, !tbaa !39
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = trunc nuw i32 %i.ow to i16
  store i16 %i.ox, ptr %i.ou, align 2, !tbaa !328
  %i.oy = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 12
  %gep.us776.2.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.2.i
  %i.oz = load i32, ptr %gep.us776.2.1.i, align 4, !tbaa !39
  %i.pa = lshr i32 %i.oz, 16
  %i.pb = trunc nuw i32 %i.pa to i16
  store i16 %i.pb, ptr %i.oy, align 2, !tbaa !328
  %i.pc = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 14
  %gep.us776.3.1.i = getelementptr i8, ptr %gep765.us.1.i, i64 %.reass758.us.3.i
  %i.pd = load i32, ptr %gep.us776.3.1.i, align 4, !tbaa !39
  %i.pe = lshr i32 %i.pd, 16
  %i.pf = trunc nuw i32 %i.pe to i16
  store i16 %i.pf, ptr %i.pc, align 2, !tbaa !328
  %i.pg = getelementptr inbounds nuw i8, ptr %.1268768.us.i, i64 16 ; 3 uses
  %indvars.iv.next957.i = add nuw nsw i64 %indvars.iv956.i, 1 ; 2 uses
  %exitcond960.not.i = icmp eq i64 %indvars.iv.next957.i, %wide.trip.count959.i
  br i1 %exitcond960.not.i, label %._crit_edge770.us.i, label %.preheader676.us.i, !llvm.loop !340

._crit_edge770.us.i:                              ; preds = %.preheader676.us.i
  %indvars.iv.next962.i = add nuw nsw i64 %indvars.iv961.i, 4 ; 3 uses
  %i.ph = icmp slt i64 %indvars.iv.next962.i, %invariant.op1066.i.a
  br i1 %i.ph, label %.preheader679.us.i, label %.preheader681.loopexit.i, !llvm.loop !341

.preheader681.loopexit.i:                         ; preds = %._crit_edge770.us.i
  %i.pi = trunc nuw nsw i64 %indvars.iv.next962.i to i32
  br label %.preheader681.i

.preheader681.i:                                  ; preds = %.preheader681.loopexit.i, %.noexc462.i
  %.0267.lcssa.i = phi ptr [ %i.nr, %.noexc462.i ], [ %i.pg, %.preheader681.loopexit.i ] ; 3 uses
  %.0264.lcssa.i = phi i32 [ 0, %.noexc462.i ], [ %i.pi, %.preheader681.loopexit.i ] ; 4 uses
  %i.pj = or disjoint i32 %.0264.lcssa.i, 1
  %i.pk = icmp slt i32 %i.pj, %i.k
  br i1 %i.pk, label %.preheader678.lr.ph.i, label %.preheader680.i

.preheader681.i.thread:                           ; preds = %.preheader679.lr.ph.i
  br i1 %i.fg, label %.preheader678.preheader.i, label %.preheader680.i

.preheader678.lr.ph.i:                            ; preds = %.preheader681.i
  %i.pl = load i32, ptr %i.ey, align 4
  %i.pm = load ptr, ptr %3, align 8               ; 3 uses
  %i.pn = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.po = sext i32 %i.pl to i64
  %factor.op.mul779.i = mul i64 %i.pn, %i.po      ; 2 uses
  br i1 %i.ex, label %.preheader678.us.preheader.i, label %.preheader678.preheader.i

.preheader678.preheader.i:                        ; preds = %.preheader681.i.thread, %.preheader678.lr.ph.i
  %.0267.lcssa.i1521 = phi ptr [ %.0267.lcssa.i, %.preheader678.lr.ph.i ], [ %i.nr, %.preheader681.i.thread ]
  %.0264.lcssa.i1620 = phi i32 [ %.0264.lcssa.i, %.preheader678.lr.ph.i ], [ %i.fb, %.preheader681.i.thread ] ; 3 uses
  %i.pp = add i32 %.0264.lcssa.i1620, 3
  %smax964.i = call i32 @llvm.smax.i32(i32 %i.k, i32 %i.pp)
  %reass.sub33 = sub i32 %smax964.i, %.0264.lcssa.i1620
  %i.pq = and i32 %reass.sub33, -2
  %i.pr = add i32 %.0264.lcssa.i1620, %i.pq
  br label %.preheader680.i

.preheader678.us.preheader.i:                     ; preds = %.preheader678.lr.ph.i
  %i.ps = load i64, ptr %i.ez, align 8
  %factor.op.mul784.i = mul i64 %i.ps, %i.pn      ; 2 uses
  %i.pt = zext i32 %.0264.lcssa.i to i64
  %.reass785.us.i = mul i64 %factor.op.mul784.i, %indvars.iv991.i ; 3 uses
  %i.pu = add nuw nsw i64 %indvars.iv991.i, 1
  %.reass785.us.1.i = mul i64 %factor.op.mul784.i, %i.pu ; 3 uses
  br label %.preheader678.us.i

.preheader678.us.i:                               ; preds = %._crit_edge792.us.i, %.preheader678.us.preheader.i
  %indvars.iv977.i = phi i64 [ %i.pt, %.preheader678.us.preheader.i ], [ %indvars.iv.next978.i, %._crit_edge792.us.i ] ; 3 uses
  %.4271794.us.i = phi ptr [ %.0267.lcssa.i, %.preheader678.us.preheader.i ], [ %.lcssa141, %._crit_edge792.us.i ] ; 2 uses
  %.reass780.us.i = mul i64 %indvars.iv977.i, %factor.op.mul779.i ; 6 uses
  %i.pv = or disjoint i64 %indvars.iv977.i, 1
  %.reass780.us.1.i = mul i64 %i.pv, %factor.op.mul779.i ; 6 uses
  br i1 %i.fh, label %.preheader675.us.i.epil.preheader, label %.preheader675.us.i

.preheader675.us.i:                               ; preds = %.preheader678.us.i, %.preheader675.us.i
  %indvars.iv972.i = phi i64 [ %indvars.iv.next973.i.1, %.preheader675.us.i ], [ 0, %.preheader678.us.i ] ; 3 uses
  %.5272790.us.i = phi ptr [ %i.rc, %.preheader675.us.i ], [ %.4271794.us.i, %.preheader678.us.i ] ; 9 uses
  %niter157 = phi i64 [ %niter157.next.1, %.preheader675.us.i ], [ 0, %.preheader678.us.i ]
  %invariant.gep786.us.i = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv972.i ; 2 uses
  %gep787.us.i = getelementptr i8, ptr %invariant.gep786.us.i, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i = getelementptr i8, ptr %gep787.us.i, i64 %.reass780.us.i
  %i.pw = load i32, ptr %gep.us798.i, align 4, !tbaa !39
  %i.px = lshr i32 %i.pw, 16
  %i.py = trunc nuw i32 %i.px to i16
  store i16 %i.py, ptr %.5272790.us.i, align 2, !tbaa !328
  %i.pz = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 2
  %gep.us798.1.i = getelementptr i8, ptr %gep787.us.i, i64 %.reass780.us.1.i
  %i.qa = load i32, ptr %gep.us798.1.i, align 4, !tbaa !39
  %i.qb = lshr i32 %i.qa, 16
  %i.qc = trunc nuw i32 %i.qb to i16
  store i16 %i.qc, ptr %i.pz, align 2, !tbaa !328
  %i.qd = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 4
  %gep787.us.1.i = getelementptr i8, ptr %invariant.gep786.us.i, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i = getelementptr i8, ptr %gep787.us.1.i, i64 %.reass780.us.i
  %i.qe = load i32, ptr %gep.us798.1971.i, align 4, !tbaa !39
  %i.qf = lshr i32 %i.qe, 16
  %i.qg = trunc nuw i32 %i.qf to i16
  store i16 %i.qg, ptr %i.qd, align 2, !tbaa !328
  %i.qh = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 6
  %gep.us798.1.1.i = getelementptr i8, ptr %gep787.us.1.i, i64 %.reass780.us.1.i
  %i.qi = load i32, ptr %gep.us798.1.1.i, align 4, !tbaa !39
  %i.qj = lshr i32 %i.qi, 16
  %i.qk = trunc nuw i32 %i.qj to i16
  store i16 %i.qk, ptr %i.qh, align 2, !tbaa !328
  %i.ql = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 8
  %i.qm = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv972.i
  %invariant.gep786.us.i.1 = getelementptr i8, ptr %i.qm, i64 4 ; 2 uses
  %gep787.us.i.1 = getelementptr i8, ptr %invariant.gep786.us.i.1, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i.1 = getelementptr i8, ptr %gep787.us.i.1, i64 %.reass780.us.i
  %i.qn = load i32, ptr %gep.us798.i.1, align 4, !tbaa !39
  %i.qo = lshr i32 %i.qn, 16
  %i.qp = trunc nuw i32 %i.qo to i16
  store i16 %i.qp, ptr %i.ql, align 2, !tbaa !328
  %i.qq = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 10
  %gep.us798.1.i.1 = getelementptr i8, ptr %gep787.us.i.1, i64 %.reass780.us.1.i
  %i.qr = load i32, ptr %gep.us798.1.i.1, align 4, !tbaa !39
  %i.qs = lshr i32 %i.qr, 16
  %i.qt = trunc nuw i32 %i.qs to i16
  store i16 %i.qt, ptr %i.qq, align 2, !tbaa !328
  %i.qu = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 12
  %gep787.us.1.i.1 = getelementptr i8, ptr %invariant.gep786.us.i.1, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i.1 = getelementptr i8, ptr %gep787.us.1.i.1, i64 %.reass780.us.i
  %i.qv = load i32, ptr %gep.us798.1971.i.1, align 4, !tbaa !39
  %i.qw = lshr i32 %i.qv, 16
  %i.qx = trunc nuw i32 %i.qw to i16
  store i16 %i.qx, ptr %i.qu, align 2, !tbaa !328
  %i.qy = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 14
  %gep.us798.1.1.i.1 = getelementptr i8, ptr %gep787.us.1.i.1, i64 %.reass780.us.1.i
  %i.qz = load i32, ptr %gep.us798.1.1.i.1, align 4, !tbaa !39
  %i.ra = lshr i32 %i.qz, 16
  %i.rb = trunc nuw i32 %i.ra to i16
  store i16 %i.rb, ptr %i.qy, align 2, !tbaa !328
  %i.rc = getelementptr inbounds nuw i8, ptr %.5272790.us.i, i64 16 ; 3 uses
  %indvars.iv.next973.i.1 = add nuw nsw i64 %indvars.iv972.i, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %._crit_edge792.us.i.unr-lcssa, label %.preheader675.us.i, !llvm.loop !342

._crit_edge792.us.i.unr-lcssa:                    ; preds = %.preheader675.us.i
  br i1 %lcmp.mod153.not, label %._crit_edge792.us.i, label %.preheader675.us.i.epil.preheader

.preheader675.us.i.epil.preheader:                ; preds = %._crit_edge792.us.i.unr-lcssa, %.preheader678.us.i
  %indvars.iv972.i.epil.init = phi i64 [ 0, %.preheader678.us.i ], [ %indvars.iv.next973.i.1, %._crit_edge792.us.i.unr-lcssa ]
  %.5272790.us.i.epil.init = phi ptr [ %.4271794.us.i, %.preheader678.us.i ], [ %i.rc, %._crit_edge792.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod155)
  %invariant.gep786.us.i.epil = getelementptr [4 x i8], ptr %i.pm, i64 %indvars.iv972.i.epil.init ; 2 uses
  %gep787.us.i.epil = getelementptr i8, ptr %invariant.gep786.us.i.epil, i64 %.reass785.us.i ; 2 uses
  %gep.us798.i.epil = getelementptr i8, ptr %gep787.us.i.epil, i64 %.reass780.us.i
  %i.rd = load i32, ptr %gep.us798.i.epil, align 4, !tbaa !39
  %i.re = lshr i32 %i.rd, 16
  %i.rf = trunc nuw i32 %i.re to i16
  store i16 %i.rf, ptr %.5272790.us.i.epil.init, align 2, !tbaa !328
  %i.rg = getelementptr inbounds nuw i8, ptr %.5272790.us.i.epil.init, i64 2
  %gep.us798.1.i.epil = getelementptr i8, ptr %gep787.us.i.epil, i64 %.reass780.us.1.i
  %i.rh = load i32, ptr %gep.us798.1.i.epil, align 4, !tbaa !39
  %i.ri = lshr i32 %i.rh, 16
  %i.rj = trunc nuw i32 %i.ri to i16
  store i16 %i.rj, ptr %i.rg, align 2, !tbaa !328
  %i.rk = getelementptr inbounds nuw i8, ptr %.5272790.us.i.epil.init, i64 4
  %gep787.us.1.i.epil = getelementptr i8, ptr %invariant.gep786.us.i.epil, i64 %.reass785.us.1.i ; 2 uses
  %gep.us798.1971.i.epil = getelementptr i8, ptr %gep787.us.1.i.epil, i64 %.reass780.us.i
  %i.rl = load i32, ptr %gep.us798.1971.i.epil, align 4, !tbaa !39
  %i.rm = lshr i32 %i.rl, 16
  %i.rn = trunc nuw i32 %i.rm to i16
  store i16 %i.rn, ptr %i.rk, align 2, !tbaa !328
  %i.ro = getelementptr inbounds nuw i8, ptr %.5272790.us.i.epil.init, i64 6
  %gep.us798.1.1.i.epil = getelementptr i8, ptr %gep787.us.1.i.epil, i64 %.reass780.us.1.i
  %i.rp = load i32, ptr %gep.us798.1.1.i.epil, align 4, !tbaa !39
  %i.rq = lshr i32 %i.rp, 16
  %i.rr = trunc nuw i32 %i.rq to i16
  store i16 %i.rr, ptr %i.ro, align 2, !tbaa !328
  %i.rs = getelementptr inbounds nuw i8, ptr %.5272790.us.i.epil.init, i64 8
  br label %._crit_edge792.us.i

._crit_edge792.us.i:                              ; preds = %._crit_edge792.us.i.unr-lcssa, %.preheader675.us.i.epil.preheader
  %.lcssa141 = phi ptr [ %i.rc, %._crit_edge792.us.i.unr-lcssa ], [ %i.rs, %.preheader675.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next978.i = add nuw nsw i64 %indvars.iv977.i, 2 ; 2 uses
  %i.rt = trunc i64 %indvars.iv.next978.i to i32  ; 2 uses
  %i.ru = or i32 %i.rt, 1
  %i.rv = icmp slt i32 %i.ru, %i.k
  br i1 %i.rv, label %.preheader678.us.i, label %.preheader680.i, !llvm.loop !343

.preheader680.i:                                  ; preds = %._crit_edge792.us.i, %.preheader681.i.thread, %.preheader678.preheader.i, %.preheader681.i
  %.4271.lcssa.i = phi ptr [ %.0267.lcssa.i, %.preheader681.i ], [ %i.nr, %.preheader681.i.thread ], [ %.0267.lcssa.i1521, %.preheader678.preheader.i ], [ %.lcssa141, %._crit_edge792.us.i ]
  %.1265.lcssa.i = phi i32 [ %.0264.lcssa.i, %.preheader681.i ], [ %i.fb, %.preheader681.i.thread ], [ %i.pr, %.preheader678.preheader.i ], [ %i.rt, %._crit_edge792.us.i ] ; 2 uses
  %i.rw = icmp slt i32 %.1265.lcssa.i, %i.k
  br i1 %i.rw, label %.preheader677.lr.ph.i, label %._crit_edge814.split.i

.preheader677.lr.ph.i:                            ; preds = %.preheader680.i
  %i.rx = load i32, ptr %i.ey, align 4
  %i.ry = load ptr, ptr %3, align 8
  %i.rz = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.sa = sext i32 %i.rx to i64
  %factor.op.mul815.i = mul i64 %i.rz, %i.sa
  br i1 %i.ex, label %.preheader677.preheader.i, label %._crit_edge814.split.i

.preheader677.preheader.i:                        ; preds = %.preheader677.lr.ph.i
  %i.sb = load i64, ptr %i.ez, align 8
  %factor.op.mul801.i = mul i64 %i.sb, %i.rz      ; 2 uses
  %i.sc = zext i32 %.1265.lcssa.i to i64
  %.reass802.i = mul i64 %factor.op.mul801.i, %indvars.iv991.i ; 2 uses
  %i.sd = add nuw nsw i64 %indvars.iv991.i, 1
  %.reass802.1.i = mul i64 %factor.op.mul801.i, %i.sd ; 2 uses
  br label %.preheader677.i

.preheader677.i:                                  ; preds = %._crit_edge810.i, %.preheader677.preheader.i
  %indvars.iv988.i = phi i64 [ %i.sc, %.preheader677.preheader.i ], [ %indvars.iv.next989.i, %._crit_edge810.i ] ; 2 uses
  %.8812.i = phi ptr [ %.4271.lcssa.i, %.preheader677.preheader.i ], [ %.lcssa85, %._crit_edge810.i ] ; 3 uses
  %.reass816.i = mul i64 %factor.op.mul815.i, %indvars.iv988.i
  %invariant.gep803.i = getelementptr i8, ptr %i.ry, i64 %.reass816.i ; 2 uses
  br i1 %min.iters.check96, label %.preheader674.i.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %.preheader677.i
  %i.se = getelementptr i8, ptr %.8812.i, i64 %i.fi ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.sf = shl i64 %index100, 2
  %next.gep = getelementptr i8, ptr %.8812.i, i64 %i.sf
  %i.sg = getelementptr [4 x i8], ptr %invariant.gep803.i, i64 %index100 ; 2 uses
  %i.sh = getelementptr i8, ptr %i.sg, i64 %.reass802.i
  %wide.load101 = load <4 x i32>, ptr %i.sh, align 4, !tbaa !39
  %i.si = getelementptr i8, ptr %i.sg, i64 %.reass802.1.i
  %wide.load102 = load <4 x i32>, ptr %i.si, align 4, !tbaa !39
  %i.sj = shufflevector <4 x i32> %wide.load101, <4 x i32> %wide.load102, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sk = lshr <8 x i32> %i.sj, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.sk to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !328
  %index.next103 = add nuw i64 %index100, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.sl, label %middle.block104, label %vector.body99, !llvm.loop !344

middle.block104:                                  ; preds = %vector.body99
  br i1 %cmp.n105, label %._crit_edge810.i, label %.preheader674.i.preheader

.preheader674.i.preheader:                        ; preds = %.preheader677.i, %middle.block104
  %indvars.iv983.i.ph = phi i64 [ 0, %.preheader677.i ], [ %n.vec98, %middle.block104 ]
  %.9808.i.ph = phi ptr [ %.8812.i, %.preheader677.i ], [ %i.se, %middle.block104 ]
  br label %.preheader674.i

.preheader674.i:                                  ; preds = %.preheader674.i.preheader, %.preheader674.i
  %indvars.iv983.i = phi i64 [ %indvars.iv.next984.i, %.preheader674.i ], [ %indvars.iv983.i.ph, %.preheader674.i.preheader ] ; 2 uses
  %.9808.i = phi ptr [ %i.st, %.preheader674.i ], [ %.9808.i.ph, %.preheader674.i.preheader ] ; 3 uses
  %invariant.gep804.i = getelementptr [4 x i8], ptr %invariant.gep803.i, i64 %indvars.iv983.i ; 2 uses
  %gep805.i = getelementptr i8, ptr %invariant.gep804.i, i64 %.reass802.i
  %i.sm = load i32, ptr %gep805.i, align 4, !tbaa !39
  %i.sn = lshr i32 %i.sm, 16
  %i.so = trunc nuw i32 %i.sn to i16
  store i16 %i.so, ptr %.9808.i, align 2, !tbaa !328
  %i.sp = getelementptr inbounds nuw i8, ptr %.9808.i, i64 2
  %gep805.1.i = getelementptr i8, ptr %invariant.gep804.i, i64 %.reass802.1.i
  %i.sq = load i32, ptr %gep805.1.i, align 4, !tbaa !39
  %i.sr = lshr i32 %i.sq, 16
  %i.ss = trunc nuw i32 %i.sr to i16
  store i16 %i.ss, ptr %i.sp, align 2, !tbaa !328
  %i.st = getelementptr inbounds nuw i8, ptr %.9808.i, i64 4 ; 2 uses
  %indvars.iv.next984.i = add nuw nsw i64 %indvars.iv983.i, 1 ; 2 uses
  %exitcond987.not.i = icmp eq i64 %indvars.iv.next984.i, %wide.trip.count959.i
  br i1 %exitcond987.not.i, label %._crit_edge810.i, label %.preheader674.i, !llvm.loop !345

._crit_edge810.i:                                 ; preds = %.preheader674.i, %middle.block104
  %.lcssa85 = phi ptr [ %i.se, %middle.block104 ], [ %i.st, %.preheader674.i ]
  %indvars.iv.next989.i = add nuw nsw i64 %indvars.iv988.i, 1 ; 2 uses
  %i.su = trunc nuw i64 %indvars.iv.next989.i to i32
  %i.sv = icmp sgt i32 %i.k, %i.su
  br i1 %i.sv, label %.preheader677.i, label %._crit_edge814.split.i, !llvm.loop !346

._crit_edge814.split.i:                           ; preds = %._crit_edge810.i, %.preheader677.lr.ph.i, %.preheader680.i
  %indvars.iv.next992.i = add nuw nsw i64 %indvars.iv991.i, 2 ; 3 uses
  %i.sw = icmp slt i64 %indvars.iv.next992.i, %invariant.op1067.i
  br i1 %i.sw, label %.noexc462.i, label %.preheader671.loopexit.i, !llvm.loop !347

.noexc454.i:                                      ; preds = %._crit_edge861.split.i, %.noexc454.lr.ph.i
  %indvars.iv1026.i = phi i64 [ %i.nh, %.noexc454.lr.ph.i ], [ %indvars.iv.next1027.i, %._crit_edge861.split.i ] ; 5 uses
  %i.sx = trunc nuw nsw i64 %indvars.iv1026.i to i32 ; 3 uses
  %i.sy = lshr i32 %i.sx, 2
  %i.sz = lshr i32 %i.sx, 1
  %i.ta = and i32 %i.sz, 1
  %i.tb = and i32 %i.sx, 1
  %i.tc = add nuw nsw i32 %i.tb, %i.sy
  %i.td = add nuw nsw i32 %i.tc, %i.ta
  %i.te = zext nneg i32 %i.td to i64
  %.reass867.i = mul i64 %factor.op.mul866.i, %i.te
  %i.tf = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.reass867.i ; 3 uses
  br i1 %i.na, label %.preheader668.lr.ph.i, label %.preheader670.i

.preheader668.lr.ph.i:                            ; preds = %.noexc454.i
  %i.tg = load i32, ptr %i.nc, align 4
  %i.th = load ptr, ptr %3, align 8
  %i.ti = load i64, ptr %i.nd, align 8
  %i.tj = mul i64 %i.ti, %indvars.iv1026.i
  %i.tk = load i64, ptr %i.ne, align 8            ; 2 uses
  %i.tl = mul i64 %i.tj, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tl ; 3 uses
  %i.tn = sext i32 %i.tg to i64
  %factor.op.mul823.i = mul i64 %i.tk, %i.tn      ; 4 uses
  br i1 %i.nb, label %.preheader668.us.i, label %.preheader670.i

.preheader668.us.i:                               ; preds = %.preheader668.lr.ph.i, %._crit_edge830.us.i
  %indvars.iv1003.i = phi i64 [ %indvars.iv.next1004.i, %._crit_edge830.us.i ], [ 0, %.preheader668.lr.ph.i ] ; 5 uses
  %.0253832.us.i = phi ptr [ %.lcssa, %._crit_edge830.us.i ], [ %i.tf, %.preheader668.lr.ph.i ] ; 2 uses
  %.reass824.us.i = mul i64 %indvars.iv1003.i, %factor.op.mul823.i ; 3 uses
  %i.to = or disjoint i64 %indvars.iv1003.i, 1
  %.reass824.us.1.i = mul i64 %i.to, %factor.op.mul823.i ; 3 uses
  %i.tp = or disjoint i64 %indvars.iv1003.i, 2
  %.reass824.us.2.i = mul i64 %i.tp, %factor.op.mul823.i ; 3 uses
  %i.tq = or disjoint i64 %indvars.iv1003.i, 3
  %.reass824.us.3.i = mul i64 %i.tq, %factor.op.mul823.i ; 3 uses
  br i1 %i.ni, label %.preheader665.us.i.epil.preheader, label %.preheader665.us.i

.preheader665.us.i:                               ; preds = %.preheader668.us.i, %.preheader665.us.i
  %indvars.iv998.i = phi i64 [ %indvars.iv.next999.i.1, %.preheader665.us.i ], [ 0, %.preheader668.us.i ] ; 3 uses
  %.1254828.us.i = phi ptr [ %i.ux, %.preheader665.us.i ], [ %.0253832.us.i, %.preheader668.us.i ] ; 9 uses
  %niter163 = phi i64 [ %niter163.next.1, %.preheader665.us.i ], [ 0, %.preheader668.us.i ]
  %invariant.gep825.us.i = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv998.i ; 4 uses
  %gep.us836.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.i
  %i.tr = load i32, ptr %gep.us836.i, align 4, !tbaa !39
  %i.ts = lshr i32 %i.tr, 16
  %i.tt = trunc nuw i32 %i.ts to i16
  store i16 %i.tt, ptr %.1254828.us.i, align 2, !tbaa !328
  %i.tu = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 2
  %gep.us836.1.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.1.i
  %i.tv = load i32, ptr %gep.us836.1.i, align 4, !tbaa !39
  %i.tw = lshr i32 %i.tv, 16
  %i.tx = trunc nuw i32 %i.tw to i16
  store i16 %i.tx, ptr %i.tu, align 2, !tbaa !328
  %i.ty = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 4
  %gep.us836.2.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.2.i
  %i.tz = load i32, ptr %gep.us836.2.i, align 4, !tbaa !39
  %i.ua = lshr i32 %i.tz, 16
  %i.ub = trunc nuw i32 %i.ua to i16
  store i16 %i.ub, ptr %i.ty, align 2, !tbaa !328
  %i.uc = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 6
  %gep.us836.3.i = getelementptr i8, ptr %invariant.gep825.us.i, i64 %.reass824.us.3.i
  %i.ud = load i32, ptr %gep.us836.3.i, align 4, !tbaa !39
  %i.ue = lshr i32 %i.ud, 16
  %i.uf = trunc nuw i32 %i.ue to i16
  store i16 %i.uf, ptr %i.uc, align 2, !tbaa !328
  %i.ug = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 8
  %i.uh = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv998.i
  %invariant.gep825.us.i.1 = getelementptr i8, ptr %i.uh, i64 4 ; 4 uses
  %gep.us836.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.i
  %i.ui = load i32, ptr %gep.us836.i.1, align 4, !tbaa !39
  %i.uj = lshr i32 %i.ui, 16
  %i.uk = trunc nuw i32 %i.uj to i16
  store i16 %i.uk, ptr %i.ug, align 2, !tbaa !328
  %i.ul = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 10
  %gep.us836.1.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.1.i
  %i.um = load i32, ptr %gep.us836.1.i.1, align 4, !tbaa !39
  %i.un = lshr i32 %i.um, 16
  %i.uo = trunc nuw i32 %i.un to i16
  store i16 %i.uo, ptr %i.ul, align 2, !tbaa !328
  %i.up = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 12
  %gep.us836.2.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.2.i
  %i.uq = load i32, ptr %gep.us836.2.i.1, align 4, !tbaa !39
  %i.ur = lshr i32 %i.uq, 16
  %i.us = trunc nuw i32 %i.ur to i16
  store i16 %i.us, ptr %i.up, align 2, !tbaa !328
  %i.ut = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 14
  %gep.us836.3.i.1 = getelementptr i8, ptr %invariant.gep825.us.i.1, i64 %.reass824.us.3.i
  %i.uu = load i32, ptr %gep.us836.3.i.1, align 4, !tbaa !39
  %i.uv = lshr i32 %i.uu, 16
  %i.uw = trunc nuw i32 %i.uv to i16
  store i16 %i.uw, ptr %i.ut, align 2, !tbaa !328
  %i.ux = getelementptr inbounds nuw i8, ptr %.1254828.us.i, i64 16 ; 3 uses
  %indvars.iv.next999.i.1 = add nuw nsw i64 %indvars.iv998.i, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge830.us.i.unr-lcssa, label %.preheader665.us.i, !llvm.loop !348

._crit_edge830.us.i.unr-lcssa:                    ; preds = %.preheader665.us.i
  br i1 %lcmp.mod159.not, label %._crit_edge830.us.i, label %.preheader665.us.i.epil.preheader

.preheader665.us.i.epil.preheader:                ; preds = %._crit_edge830.us.i.unr-lcssa, %.preheader668.us.i
  %indvars.iv998.i.epil.init = phi i64 [ 0, %.preheader668.us.i ], [ %indvars.iv.next999.i.1, %._crit_edge830.us.i.unr-lcssa ]
  %.1254828.us.i.epil.init = phi ptr [ %.0253832.us.i, %.preheader668.us.i ], [ %i.ux, %._crit_edge830.us.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod161)
  %invariant.gep825.us.i.epil = getelementptr [4 x i8], ptr %i.tm, i64 %indvars.iv998.i.epil.init ; 4 uses
  %gep.us836.i.epil = getelementptr i8, ptr %invariant.gep825.us.i.epil, i64 %.reass824.us.i
  %i.uy = load i32, ptr %gep.us836.i.epil, align 4, !tbaa !39
  %i.uz = lshr i32 %i.uy, 16
  %i.va = trunc nuw i32 %i.uz to i16
  store i16 %i.va, ptr %.1254828.us.i.epil.init, align 2, !tbaa !328
  %i.vb = getelementptr inbounds nuw i8, ptr %.1254828.us.i.epil.init, i64 2
  %gep.us836.1.i.epil = getelementptr i8, ptr %invariant.gep825.us.i.epil, i64 %.reass824.us.1.i
  %i.vc = load i32, ptr %gep.us836.1.i.epil, align 4, !tbaa !39
  %i.vd = lshr i32 %i.vc, 16
  %i.ve = trunc nuw i32 %i.vd to i16
  store i16 %i.ve, ptr %i.vb, align 2, !tbaa !328
  %i.vf = getelementptr inbounds nuw i8, ptr %.1254828.us.i.epil.init, i64 4
  %gep.us836.2.i.epil = getelementptr i8, ptr %invariant.gep825.us.i.epil, i64 %.reass824.us.2.i
  %i.vg = load i32, ptr %gep.us836.2.i.epil, align 4, !tbaa !39
  %i.vh = lshr i32 %i.vg, 16
  %i.vi = trunc nuw i32 %i.vh to i16
  store i16 %i.vi, ptr %i.vf, align 2, !tbaa !328
  %i.vj = getelementptr inbounds nuw i8, ptr %.1254828.us.i.epil.init, i64 6
  %gep.us836.3.i.epil = getelementptr i8, ptr %invariant.gep825.us.i.epil, i64 %.reass824.us.3.i
  %i.vk = load i32, ptr %gep.us836.3.i.epil, align 4, !tbaa !39
  %i.vl = lshr i32 %i.vk, 16
  %i.vm = trunc nuw i32 %i.vl to i16
  store i16 %i.vm, ptr %i.vj, align 2, !tbaa !328
  %i.vn = getelementptr inbounds nuw i8, ptr %.1254828.us.i.epil.init, i64 8
  br label %._crit_edge830.us.i

._crit_edge830.us.i:                              ; preds = %._crit_edge830.us.i.unr-lcssa, %.preheader665.us.i.epil.preheader
  %.lcssa = phi ptr [ %i.ux, %._crit_edge830.us.i.unr-lcssa ], [ %i.vn, %.preheader665.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next1004.i = add nuw nsw i64 %indvars.iv1003.i, 4 ; 3 uses
  %i.vo = icmp slt i64 %indvars.iv.next1004.i, %invariant.op1068.i
  br i1 %i.vo, label %.preheader668.us.i, label %.preheader670.loopexit.i, !llvm.loop !349

.preheader670.loopexit.i:                         ; preds = %._crit_edge830.us.i
  %i.vp = trunc nuw nsw i64 %indvars.iv.next1004.i to i32
  br label %.preheader670.i

.preheader670.i:                                  ; preds = %.preheader670.loopexit.i, %.preheader668.lr.ph.i, %.noexc454.i
  %.0253.lcssa.i = phi ptr [ %i.tf, %.noexc454.i ], [ %.lcssa, %.preheader670.loopexit.i ], [ %i.tf, %.preheader668.lr.ph.i ] ; 3 uses
  %.0252.lcssa.i = phi i32 [ 0, %.noexc454.i ], [ %i.vp, %.preheader670.loopexit.i ], [ %i.nf, %.preheader668.lr.ph.i ] ; 6 uses
  %i.vq = or disjoint i32 %.0252.lcssa.i, 1
  %i.vr = icmp slt i32 %i.vq, %i.k
  br i1 %i.vr, label %.preheader667.lr.ph.i, label %.preheader669.i

.preheader667.lr.ph.i:                            ; preds = %.preheader670.i
  %i.vs = load i32, ptr %i.nc, align 4
  %i.vt = load ptr, ptr %3, align 8
  %i.vu = load i64, ptr %i.nd, align 8
  %i.vv = mul i64 %i.vu, %indvars.iv1026.i
  %i.vw = load i64, ptr %i.ne, align 8            ; 2 uses
  %i.vx = mul i64 %i.vv, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vx ; 2 uses
  %i.vz = sext i32 %i.vs to i64
  %factor.op.mul839.i = mul i64 %i.vw, %i.vz      ; 2 uses
  br i1 %i.nb, label %.preheader667.us.preheader.i, label %.preheader667.preheader.i

.preheader667.preheader.i:                        ; preds = %.preheader667.lr.ph.i
  %i.wa = add i32 %.0252.lcssa.i, 3
  %smax1006.i = call i32 @llvm.smax.i32(i32 %i.k, i32 %i.wa)
  %reass.sub34 = sub i32 %smax1006.i, %.0252.lcssa.i
  %i.wb = and i32 %reass.sub34, -2
  %i.wc = add i32 %.0252.lcssa.i, %i.wb
  br label %.preheader669.i

.preheader667.us.preheader.i:                     ; preds = %.preheader667.lr.ph.i
  %i.wd = zext i32 %.0252.lcssa.i to i64
  br label %.preheader667.us.i

.preheader667.us.i:                               ; preds = %._crit_edge846.us.i, %.preheader667.us.preheader.i
  %indvars.iv1015.i = phi i64 [ %i.wd, %.preheader667.us.preheader.i ], [ %indvars.iv.next1016.i, %._crit_edge846.us.i ] ; 3 uses
  %.3848.us.i = phi ptr [ %.0253.lcssa.i, %.preheader667.us.preheader.i ], [ %.lcssa79.a, %._crit_edge846.us.i ] ; 3 uses
  %.reass840.us.i = mul i64 %indvars.iv1015.i, %factor.op.mul839.i ; 2 uses
  %i.we = add nuw nsw i64 %indvars.iv1015.i, 1
  %.reass840.us.1.i = mul i64 %i.we, %factor.op.mul839.i ; 2 uses
  br i1 %min.iters.check123, label %.preheader.us.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.preheader667.us.i
  %i.wf = getelementptr i8, ptr %.3848.us.i, i64 %i.nj ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ] ; 3 uses
  %i.wg = shl i64 %index127, 2
  %next.gep128 = getelementptr i8, ptr %.3848.us.i, i64 %i.wg
  %i.wh = getelementptr [4 x i8], ptr %i.vy, i64 %index127 ; 2 uses
  %i.wi = getelementptr i8, ptr %i.wh, i64 %.reass840.us.i
  %wide.load129 = load <4 x i32>, ptr %i.wi, align 4, !tbaa !39
  %i.wj = getelementptr i8, ptr %i.wh, i64 %.reass840.us.1.i
  %wide.load130 = load <4 x i32>, ptr %i.wj, align 4, !tbaa !39
  %i.wk = shufflevector <4 x i32> %wide.load129, <4 x i32> %wide.load130, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wl = lshr <8 x i32> %i.wk, splat (i32 16)
  %interleaved.vec131 = trunc nuw <8 x i32> %i.wl to <8 x i16>
  store <8 x i16> %interleaved.vec131, ptr %next.gep128, align 2, !tbaa !328
  %index.next132 = add nuw i64 %index127, 4       ; 2 uses
  %i.wm = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.wm, label %middle.block133, label %vector.body126, !llvm.loop !350

middle.block133:                                  ; preds = %vector.body126
  br i1 %cmp.n134, label %._crit_edge846.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader667.us.i, %middle.block133
  %indvars.iv1010.i.ph = phi i64 [ 0, %.preheader667.us.i ], [ %n.vec125, %middle.block133 ]
  %.4844.us.i.ph = phi ptr [ %.3848.us.i, %.preheader667.us.i ], [ %i.wf, %middle.block133 ]
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv1010.i = phi i64 [ %indvars.iv.next1011.i, %.preheader.us.i ], [ %indvars.iv1010.i.ph, %.preheader.us.i.preheader ] ; 2 uses
  %.4844.us.i = phi ptr [ %i.wu, %.preheader.us.i ], [ %.4844.us.i.ph, %.preheader.us.i.preheader ] ; 3 uses
  %invariant.gep841.us.i = getelementptr [4 x i8], ptr %i.vy, i64 %indvars.iv1010.i ; 2 uses
  %gep.us852.i = getelementptr i8, ptr %invariant.gep841.us.i, i64 %.reass840.us.i
  %i.wn = load i32, ptr %gep.us852.i, align 4, !tbaa !39
  %i.wo = lshr i32 %i.wn, 16
  %i.wp = trunc nuw i32 %i.wo to i16
  store i16 %i.wp, ptr %.4844.us.i, align 2, !tbaa !328
  %i.wq = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 2
  %gep.us852.1.i = getelementptr i8, ptr %invariant.gep841.us.i, i64 %.reass840.us.1.i
  %i.wr = load i32, ptr %gep.us852.1.i, align 4, !tbaa !39
  %i.ws = lshr i32 %i.wr, 16
  %i.wt = trunc nuw i32 %i.ws to i16
  store i16 %i.wt, ptr %i.wq, align 2, !tbaa !328
  %i.wu = getelementptr inbounds nuw i8, ptr %.4844.us.i, i64 4 ; 2 uses
  %indvars.iv.next1011.i = add nuw nsw i64 %indvars.iv1010.i, 1 ; 2 uses
  %exitcond1014.not.i = icmp eq i64 %indvars.iv.next1011.i, %wide.trip.count1001.i
  br i1 %exitcond1014.not.i, label %._crit_edge846.us.i, label %.preheader.us.i, !llvm.loop !351

._crit_edge846.us.i:                              ; preds = %.preheader.us.i, %middle.block133
  %.lcssa79.a = phi ptr [ %i.wf, %middle.block133 ], [ %i.wu, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next1016.i = add nuw nsw i64 %indvars.iv1015.i, 2 ; 2 uses
  %i.wv = trunc i64 %indvars.iv.next1016.i to i32 ; 2 uses
  %i.ww = or i32 %i.wv, 1
  %i.wx = icmp slt i32 %i.ww, %i.k
  br i1 %i.wx, label %.preheader667.us.i, label %.preheader669.i, !llvm.loop !352

.preheader669.i:                                  ; preds = %._crit_edge846.us.i, %.preheader667.preheader.i, %.preheader670.i
  %.3.lcssa.i = phi ptr [ %.0253.lcssa.i, %.preheader670.i ], [ %.0253.lcssa.i, %.preheader667.preheader.i ], [ %.lcssa79.a, %._crit_edge846.us.i ]
  %.1.lcssa.i = phi i32 [ %.0252.lcssa.i, %.preheader670.i ], [ %i.wc, %.preheader667.preheader.i ], [ %i.wv, %._crit_edge846.us.i ] ; 2 uses
  %i.wy = icmp slt i32 %.1.lcssa.i, %i.k
  br i1 %i.wy, label %.preheader666.lr.ph.i, label %._crit_edge861.split.i

.preheader666.lr.ph.i:                            ; preds = %.preheader669.i
  %i.wz = load i32, ptr %i.nc, align 4
  %i.xa = load ptr, ptr %3, align 8
  %i.xb = load i64, ptr %i.nd, align 8
  %i.xc = mul i64 %i.xb, %indvars.iv1026.i
  %i.xd = load i64, ptr %i.ne, align 8            ; 2 uses
  %i.xe = mul i64 %i.xc, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xe
  %i.xg = sext i32 %i.wz to i64
  %factor.op.mul862.i = mul i64 %i.xd, %i.xg
  br i1 %i.nb, label %.preheader666.preheader.i, label %._crit_edge861.split.i

.preheader666.preheader.i:                        ; preds = %.preheader666.lr.ph.i
  %i.xh = zext i32 %.1.lcssa.i to i64
  br label %.preheader666.i

.preheader666.i:                                  ; preds = %._crit_edge857.i, %.preheader666.preheader.i
  %indvars.iv1023.i = phi i64 [ %i.xh, %.preheader666.preheader.i ], [ %indvars.iv.next1024.i, %._crit_edge857.i ] ; 2 uses
  %.6859.i = phi ptr [ %.3.lcssa.i, %.preheader666.preheader.i ], [ %.lcssa81, %._crit_edge857.i ] ; 3 uses
  %.reass863.i = mul i64 %factor.op.mul862.i, %indvars.iv1023.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.reass863.i ; 2 uses
  br i1 %min.iters.check109, label %.noexc449.i.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %.preheader666.i
  %i.xj = getelementptr i8, ptr %.6859.i, i64 %i.nk ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next117, %vector.body112 ] ; 3 uses
  %i.xk = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %.6859.i, i64 %i.xk ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %index113 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %wide.load115 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !39
  %wide.load116 = load <4 x i32>, ptr %i.xm, align 4, !tbaa !39
  %i.xn = lshr <4 x i32> %wide.load115, splat (i32 16)
  %i.xo = lshr <4 x i32> %wide.load116, splat (i32 16)
  %i.xp = trunc nuw <4 x i32> %i.xn to <4 x i16>
  %i.xq = trunc nuw <4 x i32> %i.xo to <4 x i16>
  %i.xr = getelementptr i8, ptr %next.gep114, i64 8
  store <4 x i16> %i.xp, ptr %next.gep114, align 2, !tbaa !328
  store <4 x i16> %i.xq, ptr %i.xr, align 2, !tbaa !328
  %index.next117 = add nuw i64 %index113, 8       ; 2 uses
  %i.xs = icmp eq i64 %index.next117, %n.vec111
  br i1 %i.xs, label %middle.block118, label %vector.body112, !llvm.loop !353

middle.block118:                                  ; preds = %vector.body112
  br i1 %cmp.n119, label %._crit_edge857.i, label %.noexc449.i.preheader

.noexc449.i.preheader:                            ; preds = %.preheader666.i, %middle.block118
  %indvars.iv1018.i.ph = phi i64 [ 0, %.preheader666.i ], [ %n.vec111, %middle.block118 ]
  %.7855.i.ph = phi ptr [ %.6859.i, %.preheader666.i ], [ %i.xj, %middle.block118 ]
  br label %.noexc449.i

._crit_edge857.i:                                 ; preds = %.noexc449.i, %middle.block118
  %.lcssa81 = phi ptr [ %i.xj, %middle.block118 ], [ %i.xz, %.noexc449.i ]
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.xt = trunc nuw i64 %indvars.iv.next1024.i to i32
  %i.xu = icmp sgt i32 %i.k, %i.xt
  br i1 %i.xu, label %.preheader666.i, label %._crit_edge861.split.i, !llvm.loop !354

.noexc449.i:                                      ; preds = %.noexc449.i.preheader, %.noexc449.i
  %indvars.iv1018.i = phi i64 [ %indvars.iv.next1019.i, %.noexc449.i ], [ %indvars.iv1018.i.ph, %.noexc449.i.preheader ] ; 2 uses
  %.7855.i = phi ptr [ %i.xz, %.noexc449.i ], [ %.7855.i.ph, %.noexc449.i.preheader ] ; 2 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv1018.i
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !39
  %i.xx = lshr i32 %i.xw, 16
  %i.xy = trunc nuw i32 %i.xx to i16
  store i16 %i.xy, ptr %.7855.i, align 2, !tbaa !328
  %i.xz = getelementptr inbounds nuw i8, ptr %.7855.i, i64 2 ; 2 uses
  %indvars.iv.next1019.i = add nuw nsw i64 %indvars.iv1018.i, 1 ; 2 uses
  %exitcond1022.not.i = icmp eq i64 %indvars.iv.next1019.i, %wide.trip.count1001.i
  br i1 %exitcond1022.not.i, label %._crit_edge857.i, label %.noexc449.i, !llvm.loop !355

._crit_edge861.split.i:                           ; preds = %._crit_edge857.i, %.preheader666.lr.ph.i, %.preheader669.i
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge865.i, label %.noexc454.i, !llvm.loop !356

._crit_edge865.i:                                 ; preds = %._crit_edge861.split.i, %.preheader671.i
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !11 ; 2 uses
  %.not.i402.i = icmp eq ptr %i.yb, null
  br i1 %.not.i402.i, label %_ZN4ncnn3MatD2Ev.exit345.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge865.i
  %i.yc = atomicrmw add ptr %i.yb, i32 -1 acq_rel, align 4
  %i.yd = icmp eq i32 %i.yc, 1
  br i1 %i.yd, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit345.i

bb.u:                                             ; preds = %bb.t
  %i.ye = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !17 ; 3 uses
  %.not3.i403.i = icmp eq ptr %i.yf, null
  %i.yg = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i403.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yh = load ptr, ptr %i.yf, align 8, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8
  invoke void %i.yj(ptr noundef nonnull align 8 dereferenceable(8) %i.yf, ptr noundef %i.yg)
          to label %_ZN4ncnn3MatD2Ev.exit345.i unwind label %bb.y, !inline_history !19

bb.w:                                             ; preds = %bb.u
  %.not.i423.i = icmp eq ptr %i.yg, null
  br i1 %.not.i423.i, label %_ZN4ncnn3MatD2Ev.exit345.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.yg) #10
  br label %_ZN4ncnn3MatD2Ev.exit345.i

bb.y:                                             ; preds = %bb.v
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit345.i:                       ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %._crit_edge865.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ym = load ptr, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %.not.i406.i = icmp eq ptr %i.ym, null
end_hunk_5
begin_hunk_6_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
          cleanup
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = atomicrmw add ptr %i.cj, i32 -1 acq_rel, align 4
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit32

bb.h:                                             ; preds = %bb.g
  %i.cm = load ptr, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.cm, null
  %i.cn = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cn)
          to label %_ZN4ncnn3MatD2Ev.exit32 unwind label %bb.l, !inline_history !19

bb.j:                                             ; preds = %bb.h
  %.not.i38 = icmp eq ptr %i.cn, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.cn) #10
  br label %_ZN4ncnn3MatD2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit32:                          ; preds = %bb.g, %bb.f, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %i.ci

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %.not.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i40, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = atomicrmw add ptr %i.cu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre107 = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre107, null
  br i1 %.not.i.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = atomicrmw add ptr %.pre107, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %.thread unwind label %bb.f, !inline_history !65

bb.r:                                             ; preds = %bb.p
  %.not.i18.i = icmp eq ptr %i.cz, null
  br i1 %.not.i18.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.cz) #10
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.o, %bb.n, %bb.q, %bb.s, %bb.r
  %i.dd = load <2 x ptr>, ptr %2, align 8, !tbaa !66
  store <2 x ptr> %i.dd, ptr %4, align 16, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !57
  store i64 %i.df, ptr %i.bi, align 16, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !67
  store i32 %i.dh, ptr %i.bj, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  store ptr %i.dj, ptr %i.bk, align 16, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dl = load <4 x i32>, ptr %i.dk, align 8, !tbaa !68
  store <4 x i32> %i.dl, ptr %i.bl, align 8, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !69
  store i32 %i.dn, ptr %i.bo, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !20
  store i64 %i.dp, ptr %i.bp, align 16, !tbaa !20
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.e, %.thread
  %.sink160 = phi i64 [ 8, %.thread ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %bb.b ], [ 16, %bb.a ], [ 16, %._crit_edge ]
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.sink160
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !242
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.an, i32 noundef %i.av, i32 noundef %i.bg, i64 noundef %i.bf, i32 noundef %.031, ptr noundef %i.dr)
          to label %bb.t unwind label %bb.f

bb.t:                                             ; preds = %.thread.invoke
  %i.ds = load ptr, ptr %4, align 16, !tbaa !18
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %_ZNK4ncnn3Mat5emptyEv.exit42

_ZNK4ncnn3Mat5emptyEv.exit42:                     ; preds = %bb.t
  %i.du = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.dv = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.du, %i.dw
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNK4ncnn3Mat5emptyEv.exit42.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit42
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = load i32, ptr %i.u, align 4, !tbaa !49  ; 3 uses
  %i.ec = load i32, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ed = load i32, ptr %i.s, align 4, !tbaa !230 ; 2 uses
  %i.ee = load i32, ptr %i.z, align 8, !tbaa !231 ; 2 uses
  %i.ef = load i32, ptr %i.ah, align 4, !tbaa !232
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !233
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ek = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !68
  store i32 %i.ec, ptr %i.b, align 4, !tbaa !68
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !68
  store i32 %i.ee, ptr %i.d, align 4, !tbaa !68
  store i32 %i.ef, ptr %i.e, align 4, !tbaa !68
  store i32 %i.eg, ptr %i.f, align 4, !tbaa !68
  store i32 %i.ei, ptr %i.g, align 4, !tbaa !68
  %i.el = load i32, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.em = load i32, ptr %i.bo, align 8, !tbaa !69
  %i.en = mul nsw i32 %i.em, %i.el                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.eo = load i64, ptr %i.bp, align 16, !tbaa !20
  %i.ep = sext i32 %i.el to i64
  %i.eq = mul i64 %i.eo, %i.ep
  store i64 %i.eq, ptr %i.h, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.er = add nsw i32 %i.eb, -1
  %i.es = mul nsw i32 %i.ed, %i.er
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.i, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.eu = add nsw i32 %i.ec, -1
  %i.ev = mul nsw i32 %i.ee, %i.eu
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ex = mul nsw i32 %i.ec, %i.eb
  store i32 %i.ex, ptr %i.k, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.ey = load ptr, ptr %i.ea, align 8, !tbaa !18
  store ptr %i.ey, ptr %i.l, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store i32 0, ptr %i.n, align 4, !tbaa !68
  %i.ez = sdiv i32 %i.en, 4
  store i32 %i.ez, ptr %i.m, align 4, !tbaa !68
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !247
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.ek, i32 %i.fb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 18, ptr nonnull @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %i.dz, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.k, ptr nonnull %i.g, ptr nonnull align 8 dereferenceable(72) %i.ej, ptr nonnull %i.h)
  %i.fc = load i32, ptr %i.m, align 4, !tbaa !68
  %i.fd = shl nsw i32 %i.fc, 2
  %i.fe = load i32, ptr %i.n, align 4, !tbaa !68
  %i.ff = add nsw i32 %i.fe, %i.fd                ; 5 uses
  store i32 %i.ff, ptr %i.n, align 4, !tbaa !68
  %i.fg = sub nsw i32 %i.en, %i.ff                ; 2 uses
  %i.fh = sdiv i32 %i.fg, 2                       ; 3 uses
  store i32 %i.fh, ptr %i.m, align 4, !tbaa !68
  %i.fi = icmp sgt i32 %i.fg, 1
  br i1 %i.fi, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, label %._crit_edge1072.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.i:                 ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !67
  %.fr.i = freeze i32 %i.fk                       ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  %i.fn = mul i32 %i.fm, %.fr.i                   ; 10 uses
  %i.fo = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.fp = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.fq = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.fr = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.fs = load ptr, ptr %4, align 16, !tbaa !18, !noalias !357 ; 2 uses
  %i.ft = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !357
  %i.fu = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !357
  %factor.op.mul.i = mul i64 %i.fu, %i.ft         ; 2 uses
  %i.fv = icmp slt i32 %i.fr, 1
  %i.fw = icmp slt i32 %i.fq, 1
  %i.fx = icmp sgt i32 %i.fn, 3
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge.i = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %brmerge.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gc = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !360
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !20, !noalias !360
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !57, !noalias !360
  %factor.op.mul1078.i = mul i64 %i.ge, %i.gd
  %i.gf = add i32 %i.fn, -4                       ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.gg, 2147483646
  %narrow.i = add nuw i32 %i.gh, 2
  %i.gi = zext i32 %narrow.i to i64
  %i.gj = and i32 %i.gf, -4
  %i.gk = add i32 %i.gj, 4
  %i.gl = sext i32 %i.fn to i64
  %i.gm = sext i32 %i.ff to i64
  %wide.trip.count1337.i = zext nneg i32 %i.fh to i64
  %invariant.op1449.i = add nsw i64 %i.gl, -3
  %i.gn = sext i32 %i.fo to i64                   ; 4 uses
  %i.go = and i32 %i.fn, -4
  br label %_ZN4ncnn3MatD2Ev.exit457.i

._crit_edge1072.split.i:                          ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.i, %bb.u
  %i.gp = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.gq = add nsw i32 %i.gp, %i.ff
  %i.gr = icmp slt i32 %i.gq, %i.en
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit450.lr.ph.i:                 ; preds = %._crit_edge1072.split.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !67
  %.fr1100.i = freeze i32 %i.gt                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !69
  %i.gw = mul i32 %i.gv, %.fr1100.i               ; 10 uses
  %i.gx = load i32, ptr %i.o, align 4, !tbaa !56  ; 5 uses
  %i.gy = load i32, ptr %i.q, align 8, !tbaa !216 ; 4 uses
  %i.gz = load i32, ptr %i.bm, align 4, !tbaa !56 ; 2 uses
  %i.ha = load i32, ptr %i.bn, align 16, !tbaa !216 ; 2 uses
  %i.hb = load ptr, ptr %4, align 16, !tbaa !18, !noalias !363
  %i.hc = load i64, ptr %i.bp, align 16, !tbaa !20, !noalias !363
  %i.hd = load i64, ptr %i.bi, align 16, !tbaa !57, !noalias !363
  %factor.op.mul1221.i = mul i64 %i.hd, %i.hc
  %i.he = icmp slt i32 %i.ha, 1
  %i.hf = icmp slt i32 %i.gz, 1
  %i.hg = icmp sgt i32 %i.gw, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %brmerge1230.i = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %brmerge1230.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit450.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit450.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.hl = load ptr, ptr %i.dz, align 8, !tbaa !18, !noalias !366
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !20, !noalias !366
  %i.hn = load i64, ptr %i.hj, align 8, !tbaa !57, !noalias !366
  %factor.op.mul1224.i = mul i64 %i.hn, %i.hm
  %i.ho = add i32 %i.gw, -4                       ; 2 uses
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = and i32 %i.hp, 2147483646
  %narrow1439.i = add nuw i32 %i.hq, 2
  %i.hr = zext i32 %narrow1439.i to i64
  %i.hs = and i32 %i.ho, -4
  %i.ht = add i32 %i.hs, 4
  %i.hu = sext i32 %i.gw to i64
  %i.hv = sext i32 %i.ff to i64
  %i.hw = sext i32 %i.gp to i64
  %i.hx = add nsw i64 %i.hw, %i.hv
  %i.hy = sext i32 %i.en to i64
  %invariant.op1450.i = add nsw i64 %i.hu, -3
  %i.hz = sext i32 %i.gx to i64                   ; 4 uses
  %i.ia = and i32 %i.gw, -4
  br label %_ZN4ncnn3MatD2Ev.exit450.i

_ZN4ncnn3MatD2Ev.exit457.i:                       ; preds = %._crit_edge1070.i, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i
  %indvars.iv1334.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit457.lr.ph.split.split.i ], [ %indvars.iv.next1335.i, %._crit_edge1070.i ] ; 2 uses
  %i.ib = shl nuw nsw i64 %indvars.iv1334.i, 1
  %i.ic = add nsw i64 %i.ib, %i.gm                ; 4 uses
  %.reass.i = mul i64 %i.ic, %factor.op.mul.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass.i
  %i.ie = add nsw i64 %i.ic, 1
  %.reass1075.i = mul i64 %i.ie, %factor.op.mul.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.reass1075.i
  %i.ig = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not433.i = icmp eq ptr %i.ig, null
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ic
  %i.ii = trunc nsw i64 %i.ic to i32              ; 2 uses
  %i.ij = sdiv i32 %i.ii, 4
  %i.ik = srem i32 %i.ii, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ik to i8
  %i.il = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.il to i32
  %i.im = add nsw i32 %i.ij, %.sext.i
  %i.in = sext i32 %i.im to i64
  %i.io = load i32, ptr %i.g, align 4
  %.reass1079.i = mul i64 %factor.op.mul1078.i, %i.in
  %i.ip = getelementptr i8, ptr %i.gc, i64 %.reass1079.i ; 3 uses
  br label %.preheader911.i

.preheader911.i:                                  ; preds = %._crit_edge.i, %_ZN4ncnn3MatD2Ev.exit457.i
  %.03811069.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %.neg887.i, %._crit_edge.i ]
  %.03821068.i = phi ptr [ %i.if, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vj, %._crit_edge.i ]
  %.03841067.i = phi ptr [ %i.id, %_ZN4ncnn3MatD2Ev.exit457.i ], [ %i.vi, %._crit_edge.i ]
  %i.iq = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, 0                   ; 3 uses
  %.neg887.i = add nuw nsw i32 %.03811069.i, 1    ; 5 uses
  %i.is = load i32, ptr %i.k, align 4             ; 3 uses
  %i.it = shl i32 %i.is, 3
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl i32 %i.is, 2
  %i.iw = sext i32 %i.iv to i64                   ; 3 uses
  %i.ix = shl nsw i32 %i.is, 1
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %i.iu, %i.gi
  %scevgep1282.i = getelementptr i8, ptr %i.ip, i64 %i.iz
  %wide.trip.count1295.i = zext nneg i32 %i.iq to i64 ; 4 uses
  br label %bb.v

._crit_edge1070.i:                                ; preds = %._crit_edge.i
  %indvars.iv.next1335.i = add nuw nsw i64 %indvars.iv1334.i, 1 ; 2 uses
  %exitcond1338.not.i = icmp eq i64 %indvars.iv.next1335.i, %wide.trip.count1337.i
  br i1 %exitcond1338.not.i, label %._crit_edge1072.split.i, label %_ZN4ncnn3MatD2Ev.exit457.i, !llvm.loop !369

._crit_edge.i:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i
  %exitcond1333.not.i = icmp eq i32 %.neg887.i, %i.fr
  br i1 %exitcond1333.not.i, label %._crit_edge1070.i, label %.preheader911.i, !llvm.loop !370

bb.v:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i, %.preheader911.i
  %.03801065.i = phi i32 [ 0, %.preheader911.i ], [ %i.vk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 4 uses
  %.13831064.i = phi ptr [ %.03821068.i, %.preheader911.i ], [ %i.vj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  %.13851063.i = phi ptr [ %.03841067.i, %.preheader911.i ], [ %i.vi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit542.i ] ; 2 uses
  br i1 %.not433.i, label %_ZN4ncnn3MatD2Ev.exit455.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ja = load <2 x float>, ptr %i.ih, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit455.i

_ZN4ncnn3MatD2Ev.exit455.i:                       ; preds = %bb.w, %bb.v
  %i.jb = phi <2 x float> [ %i.ja, %bb.w ], [ zeroinitializer, %bb.v ]
  br i1 %i.fx, label %.preheader909.lr.ph.i, label %._crit_edge958.i

.preheader909.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit455.i
  %i.jc = load i32, ptr %i.d, align 4             ; 2 uses
  %i.jd = load i32, ptr %i.j, align 4
  %invariant.op939.i = sub i32 %.neg887.i, %i.jd  ; 2 uses
  %i.je = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jf = load i32, ptr %i.a, align 4
  %.fr1231.i = freeze i32 %i.jf                   ; 2 uses
  %i.jg = load i32, ptr %i.c, align 4             ; 2 uses
  %i.jh = load i32, ptr %i.i, align 4
  %.neg889.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op.i = sub i32 %.neg889.i, %i.jh     ; 2 uses
  %i.ji = load i32, ptr %i.e, align 4             ; 4 uses
  %i.jj = icmp sgt i32 %.fr1231.i, 0
  %or.cond.i = and i1 %i.ir, %i.jj
  br i1 %or.cond.i, label %.preheader909.us.us.preheader.i, label %._crit_edge958.i

.preheader909.us.us.preheader.i:                  ; preds = %.preheader909.lr.ph.i
  %i.jk = zext nneg i32 %.fr1231.i to i64         ; 4 uses
  br label %.preheader909.us.us.i

.preheader909.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.us.us.preheader.i
  %indvars.iv1297.i = phi i64 [ 0, %.preheader909.us.us.preheader.i ], [ %indvars.iv.next1298.i, %._crit_edge.split.us.us.us.i ] ; 6 uses
  %.0345954.us.us.i = phi ptr [ %i.ip, %.preheader909.us.us.preheader.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0835953.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %.0840952.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader909.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 3 uses
  %i.jl = lshr exact i64 %indvars.iv1297.i, 2
  %i.jm = or disjoint i64 %indvars.iv1297.i, 1
  %i.jn = or disjoint i64 %indvars.iv1297.i, 2
  %i.jo = or disjoint i64 %indvars.iv1297.i, 3
  switch i32 %.fr.i, label %._crit_edge.split.us.us.us.i [
    i32 4, label %.preheader909.us.us.i.split.us
    i32 1, label %.preheader909.us.us.i.split.us61
  ]

.preheader909.us.us.i.split.us:                   ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us
  %indvars.iv1292.i.us = phi i64 [ %indvars.iv.next1293.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.jp = trunc i64 %indvars.iv1292.i.us to i32
  %i.jq = mul i32 %i.jc, %i.jp
  %.reass.us940.us.us.i.us = add i32 %i.jq, %invariant.op939.i ; 3 uses
  %i.jr = icmp slt i32 %.reass.us940.us.us.i.us, 0
  br i1 %i.jr, label %..loopexit906_crit_edge.us.us.us.i.us, label %bb.x

bb.x:                                             ; preds = %.preheader909.us.us.i.split.us
  %i.js = srem i32 %.reass.us940.us.us.i.us, %i.je
  %i.jt = sdiv i32 %.reass.us940.us.us.i.us, %i.je ; 2 uses
  %.not442.us.us.us.i.us = icmp eq i32 %i.js, 0
  %.not443.us.us.us.i.us = icmp slt i32 %i.jt, %i.fp
  %or.cond = select i1 %.not442.us.us.us.i.us, i1 %.not443.us.us.us.i.us, i1 false
  br i1 %or.cond, label %.preheader905.us.us.us.i.us, label %..loopexit906_crit_edge.us.us.us.i.us

.preheader905.us.us.us.i.us:                      ; preds = %bb.x
  %i.ju = mul nuw nsw i64 %indvars.iv1292.i.us, %i.jk
  %i.jv = sext i32 %i.jt to i64
  %i.jw = mul nsw i64 %i.jv, %i.gn
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader905.us.us.us.i.us, %bb.z
  %indvars.iv1287.i.us = phi i64 [ %indvars.iv.next1288.i.us, %bb.z ], [ 0, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2837916.us.us.us.us.i.us = phi <4 x float> [ %.3838.us.us.us.us.i.us, %bb.z ], [ %.1836935.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %.2842915.us.us.us.us.i.us = phi <4 x float> [ %.3843.us.us.us.us.i.us, %bb.z ], [ %.1841934.us.us.us.i.us, %.preheader905.us.us.us.i.us ] ; 3 uses
  %i.jx = trunc i64 %indvars.iv1287.i.us to i32
  %i.jy = mul i32 %i.jg, %i.jx
  %.reass919.us.us.us.us.i.us = add i32 %i.jy, %invariant.op.i ; 3 uses
  %i.jz = icmp slt i32 %.reass919.us.us.us.us.i.us, 0
  br i1 %i.jz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.ka = srem i32 %.reass919.us.us.us.us.i.us, %i.ji
  %i.kb = sdiv i32 %.reass919.us.us.us.us.i.us, %i.ji ; 2 uses
  %.not444.us.us.us.us.i.us = icmp eq i32 %i.ka, 0
  %.not445.us.us.us.us.i.us = icmp slt i32 %i.kb, %i.fo
  %or.cond197.a = select i1 %.not444.us.us.us.us.i.us, i1 %.not445.us.us.us.us.i.us, i1 false
  br i1 %or.cond197.a, label %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, label %bb.z

_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us:        ; preds = %bb.y
  %i.kc = add nuw nsw i64 %indvars.iv1287.i.us, %i.ju
  %i.kd = shl i64 %i.kc, 3
  %i.ke = and i64 %i.kd, 4294967288
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.ke ; 2 uses
  %i.kg = load ptr, ptr %1, align 8, !tbaa !18, !noalias !371
  %i.kh = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !371
  %i.ki = mul i64 %i.kh, %i.jl
  %i.kj = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !371 ; 2 uses
  %i.kk = mul i64 %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kk
  %i.km = mul i64 %i.jw, %i.kj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km
  %i.ko = shl nsw i32 %i.kb, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 1, !tbaa !245
  %i.ks = insertelement <2 x i64> poison, i64 %i.kr, i64 0
  %i.kt = bitcast <2 x i64> %i.ks to <8 x i16>
  %i.ku = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kv = bitcast <8 x i16> %i.ku to <4 x float>  ; 2 uses
  %i.kw = load i64, ptr %i.kf, align 1, !tbaa !245
  %i.kx = insertelement <2 x i64> poison, i64 %i.kw, i64 0
  %i.ky = bitcast <2 x i64> %i.kx to <8 x i16>
  %i.kz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ky, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.la = bitcast <8 x i16> %i.kz to <4 x float>
  %i.lb = fmul fast <4 x float> %i.la, %i.kv
  %i.lc = fadd fast <4 x float> %i.lb, %.2837916.us.us.us.us.i.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.le = load i64, ptr %i.ld, align 1, !tbaa !245
  %i.lf = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %i.lg = bitcast <2 x i64> %i.lf to <8 x i16>
  %i.lh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.li = bitcast <8 x i16> %i.lh to <4 x float>
  %i.lj = fmul fast <4 x float> %i.li, %i.kv
  %i.lk = fadd fast <4 x float> %i.lj, %.2842915.us.us.us.us.i.us
  br label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us, %bb.y, %.lr.ph.split.us.us.us.us.i.us
  %.3843.us.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2842915.us.us.us.us.i.us, %bb.y ], [ %i.lk, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %.3838.us.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.2837916.us.us.us.us.i.us, %bb.y ], [ %i.lc, %_ZN4ncnn3MatD2Ev.exit454.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1288.i.us = add nuw nsw i64 %indvars.iv1287.i.us, 1 ; 2 uses
  %exitcond1291.not.i.us = icmp eq i64 %indvars.iv.next1288.i.us, %i.jk
  br i1 %exitcond1291.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !374

..loopexit906_crit_edge.us.us.us.i.us:            ; preds = %bb.z, %bb.x, %.preheader909.us.us.i.split.us
  %.4844.us.us.us.i.us = phi nsz <4 x float> [ %.1841934.us.us.us.i.us, %.preheader909.us.us.i.split.us ], [ %.1841934.us.us.us.i.us, %bb.x ], [ %.3843.us.us.us.us.i.us, %bb.z ] ; 2 uses
  %.4839.us.us.us.i.us = phi nsz <4 x float> [ %.1836935.us.us.us.i.us, %.preheader909.us.us.i.split.us ], [ %.1836935.us.us.us.i.us, %bb.x ], [ %.3838.us.us.us.us.i.us, %bb.z ] ; 2 uses
  %indvars.iv.next1293.i.us = add nuw nsw i64 %indvars.iv1292.i.us, 1 ; 2 uses
  %exitcond1296.not.i.us = icmp eq i64 %indvars.iv.next1293.i.us, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us, !llvm.loop !375

.preheader909.us.us.i.split.us61:                 ; preds = %.preheader909.us.us.i, %..loopexit906_crit_edge.us.us.us.i.us69
  %indvars.iv1292.i.us62 = phi i64 [ %indvars.iv.next1293.i.us72, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ 0, %.preheader909.us.us.i ] ; 3 uses
  %.1836935.us.us.us.i.us63 = phi <4 x float> [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ %.0835953.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %.1841934.us.us.us.i.us64 = phi <4 x float> [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ], [ %.0840952.us.us.i, %.preheader909.us.us.i ] ; 3 uses
  %i.ll = trunc i64 %indvars.iv1292.i.us62 to i32
  %i.lm = mul i32 %i.jc, %i.ll
  %.reass.us940.us.us.i.us65 = add i32 %i.lm, %invariant.op939.i ; 3 uses
  %i.ln = icmp slt i32 %.reass.us940.us.us.i.us65, 0
  br i1 %i.ln, label %..loopexit906_crit_edge.us.us.us.i.us69, label %bb.aa

bb.aa:                                            ; preds = %.preheader909.us.us.i.split.us61
  %i.lo = srem i32 %.reass.us940.us.us.i.us65, %i.je
  %i.lp = sdiv i32 %.reass.us940.us.us.i.us65, %i.je ; 2 uses
  %.not442.us.us.us.i.us66 = icmp eq i32 %i.lo, 0
  %.not443.us.us.us.i.us67 = icmp slt i32 %i.lp, %i.fp
  %or.cond198.a = select i1 %.not442.us.us.us.i.us66, i1 %.not443.us.us.us.i.us67, i1 false
  br i1 %or.cond198.a, label %.preheader905.us.us.us.i.us68, label %..loopexit906_crit_edge.us.us.us.i.us69

.preheader905.us.us.us.i.us68:                    ; preds = %bb.aa
  %i.lq = mul nuw nsw i64 %indvars.iv1292.i.us62, %i.jk
  %i.lr = sext i32 %i.lp to i64
  %i.ls = mul nsw i64 %i.lr, %i.gn
  br label %.lr.ph.split.us921.us.us.us.i.us

.lr.ph.split.us921.us.us.us.i.us:                 ; preds = %.preheader905.us.us.us.i.us68, %bb.ac
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.ac ], [ 0, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2837916.us923.us.us.us.i.us = phi <4 x float> [ %.3838.us929.us.us.us.i.us, %bb.ac ], [ %.1836935.us.us.us.i.us63, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %.2842915.us924.us.us.us.i.us = phi <4 x float> [ %.3843.us928.us.us.us.i.us, %bb.ac ], [ %.1841934.us.us.us.i.us64, %.preheader905.us.us.us.i.us68 ] ; 3 uses
  %i.lt = trunc i64 %indvars.iv.i.us to i32
  %i.lu = mul i32 %i.jg, %i.lt
  %.reass919.us925.us.us.us.i.us = add i32 %i.lu, %invariant.op.i ; 3 uses
  %i.lv = icmp slt i32 %.reass919.us925.us.us.us.i.us, 0
  br i1 %i.lv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.us921.us.us.us.i.us
  %i.lw = srem i32 %.reass919.us925.us.us.us.i.us, %i.ji
  %i.lx = sdiv i32 %.reass919.us925.us.us.us.i.us, %i.ji ; 2 uses
  %.not444.us926.us.us.us.i.us = icmp eq i32 %i.lw, 0
  %.not445.us927.us.us.us.i.us = icmp slt i32 %i.lx, %i.fo
  %or.cond199.a = select i1 %.not444.us926.us.us.us.i.us, i1 %.not445.us927.us.us.us.i.us, i1 false
  br i1 %or.cond199.a, label %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, label %bb.ac

_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us:        ; preds = %bb.ab
  %i.ly = load ptr, ptr %1, align 8, !tbaa !18, !noalias !376
  %i.lz = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !376
  %i.ma = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !376 ; 2 uses
  %factor.op.mul.us.us.us.us.i.us = mul i64 %i.ma, %i.lz ; 4 uses
  %i.mb = mul i64 %i.ls, %i.ma
  %invariant.gep.us.us.us.us.i.us = getelementptr i8, ptr %i.ly, i64 %i.mb
  %i.mc = sext i32 %i.lx to i64
  %invariant.gep912.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.us.i.us, i64 %i.mc ; 4 uses
  %.reass.us.us.us.us.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %indvars.iv1297.i
  %gep913.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.i.us
  %i.md = load i16, ptr %gep913.us.us.us.us.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jm
  %gep913.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.1.i.us
  %i.me = load i16, ptr %gep913.us.us.us.us.1.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jn
  %gep913.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.2.i.us
  %i.mf = load i16, ptr %gep913.us.us.us.us.2.i.us, align 2, !tbaa !328
  %.reass.us.us.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us.us.i.us, %i.jo
  %gep913.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep912.us.us.us.us.i.us, i64 %.reass.us.us.us.us.3.i.us
  %i.mg = load i16, ptr %gep913.us.us.us.us.3.i.us, align 2, !tbaa !328
  %i.mh = insertelement <4 x i16> poison, i16 %i.md, i64 0
  %i.mi = insertelement <4 x i16> %i.mh, i16 %i.me, i64 1
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.mf, i64 2
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.mg, i64 3
  %i.ml = zext <4 x i16> %i.mk to <4 x i32>
  %i.mm = shl nuw <4 x i32> %i.ml, splat (i32 16)
  %.sroa.01404.12.vec.insert.i.us = bitcast <4 x i32> %i.mm to <4 x float> ; 2 uses
  %i.mn = add nuw nsw i64 %indvars.iv.i.us, %i.lq
  %i.mo = shl i64 %i.mn, 3
  %i.mp = and i64 %i.mo, 4294967288
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %.0345954.us.us.i, i64 %i.mp ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 1, !tbaa !245
  %i.ms = insertelement <2 x i64> poison, i64 %i.mr, i64 0
  %i.mt = bitcast <2 x i64> %i.ms to <8 x i16>
  %i.mu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mv = bitcast <8 x i16> %i.mu to <4 x float>
  %i.mw = fmul fast <4 x float> %i.mv, %.sroa.01404.12.vec.insert.i.us
  %i.mx = fadd fast <4 x float> %i.mw, %.2837916.us923.us.us.us.i.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mz = load i64, ptr %i.my, align 1, !tbaa !245
  %i.na = insertelement <2 x i64> poison, i64 %i.mz, i64 0
  %i.nb = bitcast <2 x i64> %i.na to <8 x i16>
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = bitcast <8 x i16> %i.nc to <4 x float>
  %i.ne = fmul fast <4 x float> %i.nd, %.sroa.01404.12.vec.insert.i.us
  %i.nf = fadd fast <4 x float> %i.ne, %.2842915.us924.us.us.us.i.us
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us, %bb.ab, %.lr.ph.split.us921.us.us.us.i.us
  %.3843.us928.us.us.us.i.us = phi nsz <4 x float> [ %.2842915.us924.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.nf, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2842915.us924.us.us.us.i.us, %bb.ab ] ; 2 uses
  %.3838.us929.us.us.us.i.us = phi nsz <4 x float> [ %.2837916.us923.us.us.us.i.us, %.lr.ph.split.us921.us.us.us.i.us ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit453.us.us.us.us.i.us ], [ %.2837916.us923.us.us.us.i.us, %bb.ab ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.jk
  br i1 %exitcond.not.i.us, label %..loopexit906_crit_edge.us.us.us.i.us69, label %.lr.ph.split.us921.us.us.us.i.us, !llvm.loop !374

..loopexit906_crit_edge.us.us.us.i.us69:          ; preds = %bb.ac, %bb.aa, %.preheader909.us.us.i.split.us61
  %.4844.us.us.us.i.us70 = phi nsz <4 x float> [ %.1841934.us.us.us.i.us64, %.preheader909.us.us.i.split.us61 ], [ %.1841934.us.us.us.i.us64, %bb.aa ], [ %.3843.us928.us.us.us.i.us, %bb.ac ] ; 2 uses
  %.4839.us.us.us.i.us71 = phi nsz <4 x float> [ %.1836935.us.us.us.i.us63, %.preheader909.us.us.i.split.us61 ], [ %.1836935.us.us.us.i.us63, %bb.aa ], [ %.3838.us929.us.us.us.i.us, %bb.ac ] ; 2 uses
  %indvars.iv.next1293.i.us72 = add nuw nsw i64 %indvars.iv1292.i.us62, 1 ; 2 uses
  %exitcond1296.not.i.us73 = icmp eq i64 %indvars.iv.next1293.i.us72, %wide.trip.count1295.i
  br i1 %exitcond1296.not.i.us73, label %._crit_edge.split.us.us.us.i, label %.preheader909.us.us.i.split.us61, !llvm.loop !375

._crit_edge.split.us.us.us.i:                     ; preds = %..loopexit906_crit_edge.us.us.us.i.us69, %..loopexit906_crit_edge.us.us.us.i.us, %.preheader909.us.us.i
  %.us-phi = phi <4 x float> [ %.4844.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0840952.us.us.i, %.preheader909.us.us.i ], [ %.4844.us.us.us.i.us70, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %.us-phi60 = phi <4 x float> [ %.4839.us.us.us.i.us, %..loopexit906_crit_edge.us.us.us.i.us ], [ %.0835953.us.us.i, %.preheader909.us.us.i ], [ %.4839.us.us.us.i.us71, %..loopexit906_crit_edge.us.us.us.i.us69 ] ; 2 uses
  %i.ng = getelementptr inbounds [2 x i8], ptr %.0345954.us.us.i, i64 %i.iu ; 2 uses
  %indvars.iv.next1298.i = add nuw nsw i64 %indvars.iv1297.i, 4 ; 2 uses
  %i.nh = icmp slt i64 %indvars.iv.next1298.i, %invariant.op1449.i
  br i1 %i.nh, label %.preheader909.us.us.i, label %._crit_edge958.i, !llvm.loop !379

._crit_edge958.i:                                 ; preds = %._crit_edge.split.us.us.us.i, %.preheader909.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit455.i
  %.0840.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0835.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit455.i ], [ zeroinitializer, %.preheader909.lr.ph.i ], [ %.us-phi60, %._crit_edge.split.us.us.us.i ] ; 2 uses
  %.0345.lcssa.i = phi ptr [ %i.ip, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %scevgep1282.i, %.preheader909.lr.ph.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ] ; 4 uses
  %.0342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit455.i ], [ %i.gk, %.preheader909.lr.ph.i ], [ %i.go, %._crit_edge.split.us.us.us.i ] ; 9 uses
  %i.ni = shufflevector <4 x float> %.0835.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nj = fadd fast <4 x float> %i.ni, %.0835.lcssa.i ; 2 uses
  %i.nk = shufflevector <4 x float> %.0840.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nl = fadd fast <4 x float> %i.nk, %.0840.lcssa.i ; 2 uses
  %i.nm = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 1, i32 5>
  %i.nn = fadd fast <2 x float> %i.nm, %i.jb
  %i.no = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <2 x i32> <i32 0, i32 4>
  %i.np = fadd fast <2 x float> %i.nn, %i.no      ; 4 uses
  %i.nq = or disjoint i32 %.0342.lcssa.i, 1
  %i.nr = icmp slt i32 %i.nq, %i.fn
  br i1 %i.nr, label %.preheader908.lr.ph.i, label %.preheader910.i

.preheader908.lr.ph.i:                            ; preds = %._crit_edge958.i
  %i.ns = load i32, ptr %i.d, align 4
  %i.nt = load i32, ptr %i.j, align 4
  %invariant.op993.i = sub i32 %.neg887.i, %i.nt
  %i.nu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.nv = load i32, ptr %i.a, align 4
  %.fr1232.i = freeze i32 %i.nv                   ; 2 uses
  %i.nw = load i32, ptr %i.c, align 4
  %i.nx = load i32, ptr %i.i, align 4
  %.neg885.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op985.i = sub i32 %.neg885.i, %i.nx
  %i.ny = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ir, label %.preheader908.lr.ph.split.us.i, label %.preheader908.preheader.i

.preheader908.preheader.i:                        ; preds = %.preheader908.lr.ph.i
  %5 = add i32 %.0342.lcssa.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %5)
  %reass.sub = sub i32 %smax.i, %.0342.lcssa.i
  %i.nz = and i32 %reass.sub, -2                  ; 2 uses
  %6 = add i32 %i.nz, -2
  %i.oa = zext i32 %6 to i64
  %i.ob = add nuw nsw i64 %i.oa, 2
  %i.oc = mul nsw i64 %i.ob, %i.iw
  %scevgep1300.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.oc
  %i.od = add i32 %.0342.lcssa.i, %i.nz
  br label %.preheader910.i

.preheader908.lr.ph.split.us.i:                   ; preds = %.preheader908.lr.ph.i
  %i.oe = icmp sgt i32 %.fr1232.i, 0
  br i1 %i.oe, label %.preheader908.us.us.preheader.i, label %.preheader908.us.preheader.i

.preheader908.us.preheader.i:                     ; preds = %.preheader908.lr.ph.split.us.i
  %7 = add i32 %.0342.lcssa.i, 3
  %smax1301.i = call i32 @llvm.smax.i32(i32 %i.fn, i32 %7)
  %reass.sub92 = sub i32 %smax1301.i, %.0342.lcssa.i
  %i.of = and i32 %reass.sub92, -2                ; 2 uses
  %8 = add i32 %i.of, -2
  %i.og = zext i32 %8 to i64
  %i.oh = add nuw nsw i64 %i.og, 2
  %i.oi = mul nsw i64 %i.oh, %i.iw
  %scevgep1302.i = getelementptr i8, ptr %.0345.lcssa.i, i64 %i.oi
  %i.oj = add i32 %.0342.lcssa.i, %i.of
  br label %.preheader910.i

.preheader908.us.us.preheader.i:                  ; preds = %.preheader908.lr.ph.split.us.i
  %i.ok = zext nneg i32 %.fr1232.i to i64         ; 2 uses
  %i.ol = zext i32 %.0342.lcssa.i to i64
  br label %.preheader908.us.us.i

.preheader908.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.us.preheader.i
  %indvars.iv1316.i = phi i64 [ %i.ol, %.preheader908.us.us.preheader.i ], [ %indvars.iv.next1317.i, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %.13461001.us.us.i = phi ptr [ %.0345.lcssa.i, %.preheader908.us.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.om = phi <2 x float> [ %i.np, %.preheader908.us.us.preheader.i ], [ %i.qh, %._crit_edge.split.us.us.us1020.i ]
  %i.on = add nuw nsw i64 %indvars.iv1316.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %..loopexit904_crit_edge.us.us.us.i, %.preheader908.us.us.i
  %indvars.iv1311.i = phi i64 [ %indvars.iv.next1312.i, %..loopexit904_crit_edge.us.us.us.i ], [ 0, %.preheader908.us.us.i ] ; 3 uses
  %i.oo = phi <2 x float> [ %i.qh, %..loopexit904_crit_edge.us.us.us.i ], [ %i.om, %.preheader908.us.us.i ] ; 3 uses
  %i.op = trunc i64 %indvars.iv1311.i to i32
  %i.oq = mul i32 %i.ns, %i.op
  %.reass994.us.us.us.i = add i32 %i.oq, %invariant.op993.i ; 3 uses
  %i.or = icmp slt i32 %.reass994.us.us.us.i, 0
  br i1 %i.or, label %..loopexit904_crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.os = srem i32 %.reass994.us.us.us.i, %i.nu
  %i.ot = sdiv i32 %.reass994.us.us.us.i, %i.nu   ; 2 uses
  %.not438.us.us.us.i = icmp eq i32 %i.os, 0
  %.not439.us.us.us.i = icmp slt i32 %i.ot, %i.fp
  %or.cond200.a = select i1 %.not438.us.us.us.i, i1 %.not439.us.us.us.i, i1 false
  br i1 %or.cond200.a, label %.preheader903.us.us.us.i, label %..loopexit904_crit_edge.us.us.us.i

bb.af:                                            ; preds = %.preheader903.us.us.us.i, %.loopexit900.us.us.us.i
  %indvars.iv1306.i = phi i64 [ 0, %.preheader903.us.us.us.i ], [ %indvars.iv.next1307.i, %.loopexit900.us.us.us.i ] ; 3 uses
  %i.ou = phi <2 x float> [ %i.oo, %.preheader903.us.us.us.i ], [ %i.qg, %.loopexit900.us.us.us.i ] ; 3 uses
  %i.ov = trunc i64 %indvars.iv1306.i to i32
  %i.ow = mul i32 %i.nw, %i.ov
  %.reass986.us.us.us.i = add i32 %invariant.op985.i, %i.ow ; 3 uses
  %i.ox = icmp slt i32 %.reass986.us.us.us.i, 0
  br i1 %i.ox, label %.loopexit900.us.us.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.oy = srem i32 %.reass986.us.us.us.i, %i.ny
  %i.oz = sdiv i32 %.reass986.us.us.us.i, %i.ny   ; 2 uses
  %.not440.us.us.us.i = icmp eq i32 %i.oy, 0
  %.not441.us.us.us.i = icmp slt i32 %i.oz, %i.fo
  %or.cond201.a = select i1 %.not440.us.us.us.i, i1 %.not441.us.us.us.i, i1 false
  br i1 %or.cond201.a, label %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, label %.loopexit900.us.us.us.i

_ZN4ncnn3MatD2Ev.exit452.us.us.us.i:              ; preds = %bb.ag
  %i.pa = add nuw nsw i64 %indvars.iv1306.i, %i.qi
  %i.pb = shl i64 %i.pa, 2
  %i.pc = and i64 %i.pb, 4294967292
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %.13461001.us.us.i, i64 %i.pc
  %i.pe = load ptr, ptr %1, align 8, !tbaa !18, !noalias !380
  %i.pf = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !380
  %i.pg = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !380 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.pg, %i.pf ; 2 uses
  %i.ph = mul i64 %i.qk, %i.pg
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.pe, i64 %i.ph
  %i.pi = sext i32 %i.oz to i64
  %invariant.gep975.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.pi ; 2 uses
  %.reass.us995.us.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv1316.i
  %gep976.us.us.us.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.i
  %i.pj = load i16, ptr %gep976.us.us.us.i, align 2, !tbaa !328
  %i.pk = zext i16 %i.pj to i32
  %i.pl = shl nuw i32 %i.pk, 16
  %.reass.us995.us.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.on
  %gep976.us.us.us.1.i = getelementptr i8, ptr %invariant.gep975.us.us.us.i, i64 %.reass.us995.us.us.1.i
  %i.pm = load i16, ptr %gep976.us.us.us.1.i, align 2, !tbaa !328
  %i.pn = zext i16 %i.pm to i32
  %i.po = shl nuw i32 %i.pn, 16
  %i.pp = load <4 x i16>, ptr %i.pd, align 2, !tbaa !328
  %i.pq = freeze <4 x i16> %i.pp
  %i.pr = bitcast <4 x i16> %i.pq to <2 x i32>    ; 2 uses
  %i.ps = and <2 x i32> %i.pr, splat (i32 -65536)
  %i.pt = shl <2 x i32> %i.pr, splat (i32 16)
  %i.pu = bitcast <2 x i32> %i.pt to <2 x float>
  %i.pv = insertelement <2 x i32> poison, i32 %i.pl, i64 0
  %i.pw = bitcast <2 x i32> %i.pv to <2 x float>
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = fmul fast <2 x float> %i.px, %i.pu
  %i.pz = fadd fast <2 x float> %i.ou, %i.py
  %i.qa = bitcast <2 x i32> %i.ps to <2 x float>
  %i.qb = insertelement <2 x i32> poison, i32 %i.po, i64 0
  %i.qc = bitcast <2 x i32> %i.qb to <2 x float>
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qe = fmul fast <2 x float> %i.qd, %i.qa
  %i.qf = fadd fast <2 x float> %i.qe, %i.pz
  br label %.loopexit900.us.us.us.i

.loopexit900.us.us.us.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i, %bb.ag, %bb.af
  %i.qg = phi <2 x float> [ %i.ou, %bb.af ], [ %i.ou, %bb.ag ], [ %i.qf, %_ZN4ncnn3MatD2Ev.exit452.us.us.us.i ] ; 2 uses
  %indvars.iv.next1307.i = add nuw nsw i64 %indvars.iv1306.i, 1 ; 2 uses
  %exitcond1310.not.i = icmp eq i64 %indvars.iv.next1307.i, %i.ok
  br i1 %exitcond1310.not.i, label %..loopexit904_crit_edge.us.us.us.i, label %bb.af, !llvm.loop !383

..loopexit904_crit_edge.us.us.us.i:               ; preds = %.loopexit900.us.us.us.i, %bb.ae, %bb.ad
  %i.qh = phi <2 x float> [ %i.oo, %bb.ad ], [ %i.oo, %bb.ae ], [ %i.qg, %.loopexit900.us.us.us.i ] ; 3 uses
  %indvars.iv.next1312.i = add nuw nsw i64 %indvars.iv1311.i, 1 ; 2 uses
  %exitcond1315.not.i = icmp eq i64 %indvars.iv.next1312.i, %wide.trip.count1295.i
  br i1 %exitcond1315.not.i, label %._crit_edge.split.us.us.us1020.i, label %bb.ad, !llvm.loop !384

.preheader903.us.us.us.i:                         ; preds = %bb.ae
  %i.qi = mul nuw nsw i64 %indvars.iv1311.i, %i.ok
  %i.qj = sext i32 %i.ot to i64
  %i.qk = mul nsw i64 %i.qj, %i.gn
  br label %bb.af

._crit_edge.split.us.us.us1020.i:                 ; preds = %..loopexit904_crit_edge.us.us.us.i
  %i.ql = getelementptr inbounds [2 x i8], ptr %.13461001.us.us.i, i64 %i.iw ; 2 uses
  %indvars.iv.next1317.i = add nuw nsw i64 %indvars.iv1316.i, 2 ; 2 uses
  %i.qm = trunc i64 %indvars.iv.next1317.i to i32 ; 2 uses
  %i.qn = or i32 %i.qm, 1
  %i.qo = icmp slt i32 %i.qn, %i.fn
  br i1 %i.qo, label %.preheader908.us.us.i, label %.preheader910.i, !llvm.loop !385

.preheader910.i:                                  ; preds = %._crit_edge.split.us.us.us1020.i, %.preheader908.us.preheader.i, %.preheader908.preheader.i, %._crit_edge958.i
  %.1346.lcssa.i = phi ptr [ %.0345.lcssa.i, %._crit_edge958.i ], [ %scevgep1300.i, %.preheader908.preheader.i ], [ %scevgep1302.i, %.preheader908.us.preheader.i ], [ %i.ql, %._crit_edge.split.us.us.us1020.i ]
  %.1343.lcssa.i = phi i32 [ %.0342.lcssa.i, %._crit_edge958.i ], [ %i.od, %.preheader908.preheader.i ], [ %i.oj, %.preheader908.us.preheader.i ], [ %i.qm, %._crit_edge.split.us.us.us1020.i ] ; 2 uses
  %i.qp = phi <2 x float> [ %i.np, %._crit_edge958.i ], [ %i.np, %.preheader908.preheader.i ], [ %i.np, %.preheader908.us.preheader.i ], [ %i.qh, %._crit_edge.split.us.us.us1020.i ] ; 3 uses
  %i.qq = icmp slt i32 %.1343.lcssa.i, %i.fn
  br i1 %i.qq, label %.preheader907.lr.ph.i, label %._crit_edge1048.i

.preheader907.lr.ph.i:                            ; preds = %.preheader910.i
  %i.qr = load i32, ptr %i.d, align 4
  %i.qs = load i32, ptr %i.j, align 4
  %invariant.op1037.i = sub i32 %.neg887.i, %i.qs
  %i.qt = load i32, ptr %i.f, align 4             ; 2 uses
  %i.qu = load i32, ptr %i.a, align 4
  %.fr1233.i = freeze i32 %i.qu                   ; 2 uses
  %i.qv = load i32, ptr %i.c, align 4
  %i.qw = load i32, ptr %i.i, align 4
  %.neg881.i = add nuw nsw i32 %.03801065.i, 1
  %invariant.op1030.i = sub i32 %.neg881.i, %i.qw
  %i.qx = load i32, ptr %i.e, align 4             ; 2 uses
  %i.qy = icmp sgt i32 %.fr1233.i, 0
  %or.cond1451.i = and i1 %i.ir, %i.qy
  br i1 %or.cond1451.i, label %.preheader907.us.us.preheader.i, label %._crit_edge1048.i

.preheader907.us.us.preheader.i:                  ; preds = %.preheader907.lr.ph.i
  %i.qz = zext nneg i32 %.fr1233.i to i64         ; 2 uses
  %i.ra = zext i32 %.1343.lcssa.i to i64
  br label %.preheader907.us.us.i

.preheader907.us.us.i:                            ; preds = %._crit_edge.split.us.us.us1060.i, %.preheader907.us.us.preheader.i
  %indvars.iv1329.i = phi i64 [ %i.ra, %.preheader907.us.us.preheader.i ], [ %indvars.iv.next1330.i, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %.23471045.us.us.i = phi ptr [ %.1346.lcssa.i, %.preheader907.us.us.preheader.i ], [ %i.sr, %._crit_edge.split.us.us.us1060.i ] ; 2 uses
  %i.rb = phi <2 x float> [ %i.qp, %.preheader907.us.us.preheader.i ], [ %i.sn, %._crit_edge.split.us.us.us1060.i ]
  br label %bb.ah

bb.ah:                                            ; preds = %..loopexit902_crit_edge.us.us.us.i, %.preheader907.us.us.i
  %indvars.iv1324.i = phi i64 [ %indvars.iv.next1325.i, %..loopexit902_crit_edge.us.us.us.i ], [ 0, %.preheader907.us.us.i ] ; 3 uses
  %i.rc = phi <2 x float> [ %i.sn, %..loopexit902_crit_edge.us.us.us.i ], [ %i.rb, %.preheader907.us.us.i ] ; 3 uses
  %i.rd = trunc i64 %indvars.iv1324.i to i32
  %i.re = mul i32 %i.qr, %i.rd
  %.reass1038.us.us.us.i = add i32 %i.re, %invariant.op1037.i ; 3 uses
  %i.rf = icmp slt i32 %.reass1038.us.us.us.i, 0
  br i1 %i.rf, label %..loopexit902_crit_edge.us.us.us.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rg = srem i32 %.reass1038.us.us.us.i, %i.qt
  %i.rh = sdiv i32 %.reass1038.us.us.us.i, %i.qt  ; 2 uses
  %.not434.us.us.us.i = icmp eq i32 %i.rg, 0
  %.not435.us.us.us.i = icmp slt i32 %i.rh, %i.fp
  %or.cond202.a = select i1 %.not434.us.us.us.i, i1 %.not435.us.us.us.i, i1 false
  br i1 %or.cond202.a, label %.preheader901.us.us.us.i, label %..loopexit902_crit_edge.us.us.us.i

bb.aj:                                            ; preds = %.preheader901.us.us.us.i, %bb.al
  %indvars.iv1319.i = phi i64 [ 0, %.preheader901.us.us.us.i ], [ %indvars.iv.next1320.i, %bb.al ] ; 3 uses
  %i.ri = phi <2 x float> [ %i.rc, %.preheader901.us.us.us.i ], [ %i.sm, %bb.al ] ; 3 uses
  %i.rj = trunc i64 %indvars.iv1319.i to i32
  %i.rk = mul i32 %i.qv, %i.rj
  %.reass.us1039.us.us.i = add i32 %invariant.op1030.i, %i.rk ; 3 uses
  %i.rl = icmp slt i32 %.reass.us1039.us.us.i, 0
  br i1 %i.rl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rm = srem i32 %.reass.us1039.us.us.i, %i.qx
  %i.rn = sdiv i32 %.reass.us1039.us.us.i, %i.qx  ; 2 uses
  %.not436.us.us.us.i = icmp eq i32 %i.rm, 0
  %.not437.us.us.us.i = icmp slt i32 %i.rn, %i.fo
  %or.cond203.a = select i1 %.not436.us.us.us.i, i1 %.not437.us.us.us.i, i1 false
  br i1 %or.cond203.a, label %_ZN4ncnn3MatD2Ev.exit451.us.us.us.i, label %bb.al

_ZN4ncnn3MatD2Ev.exit451.us.us.us.i:              ; preds = %bb.ak
  %i.ro = add nuw nsw i64 %indvars.iv1319.i, %i.so
  %.idx.i = shl nuw nsw i64 %i.ro, 2
  %i.rp = getelementptr inbounds nuw i8, ptr %.23471045.us.us.i, i64 %.idx.i
  %i.rq = load ptr, ptr %1, align 8, !tbaa !18, !noalias !386
  %i.rr = load i64, ptr %i.fy, align 8, !tbaa !20, !noalias !386
  %i.rs = mul i64 %i.rr, %indvars.iv1329.i
  %i.rt = load i64, ptr %i.fz, align 8, !tbaa !57, !noalias !386 ; 2 uses
  %i.ru = mul i64 %i.rs, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ru
  %i.rw = mul i64 %i.sq, %i.rt
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rw
  %i.ry = sext i32 %i.rn to i64
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.rx, i64 %i.ry
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !328
  %i.sb = zext i16 %i.sa to i32
end_hunk_6
begin_hunk_7_@_ZNK4ncnn17Deconvolution_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:._crit_edge
  br label %.preheader897.us.us.i

.preheader897.us.us.i:                            ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.us.us.preheader.i
  %indvars.iv1362.i = phi i64 [ 0, %.preheader897.us.us.preheader.i ], [ %indvars.iv.next1363.i, %._crit_edge1104.split.us.us.us.i ] ; 6 uses
  %.03231118.us.us.i = phi ptr [ %i.vx, %.preheader897.us.us.preheader.i ], [ %i.zx, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %.08301117.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader897.us.us.preheader.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 3 uses
  %i.ws = lshr exact i64 %indvars.iv1362.i, 2
  %i.wt = or disjoint i64 %indvars.iv1362.i, 1
  %i.wu = or disjoint i64 %indvars.iv1362.i, 2
  %i.wv = or disjoint i64 %indvars.iv1362.i, 3
  switch i32 %.fr1100.i, label %._crit_edge1104.split.us.us.us.i [
    i32 4, label %.preheader897.us.us.i.split.us
    i32 1, label %.preheader897.us.us.i.split.us79
  ]

.preheader897.us.us.i.split.us:                   ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us
  %indvars.iv1357.i.us = phi i64 [ %indvars.iv.next1358.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.ww = trunc i64 %indvars.iv1357.i.us to i32
  %i.wx = mul i32 %i.wj, %i.ww
  %.reass1107.us.us.us.i.us = add i32 %i.wx, %invariant.op1106.i ; 3 uses
  %i.wy = icmp slt i32 %.reass1107.us.us.us.i.us, 0
  br i1 %i.wy, label %..loopexit894_crit_edge.us.us.us.i.us, label %bb.au

bb.au:                                            ; preds = %.preheader897.us.us.i.split.us
  %i.wz = srem i32 %.reass1107.us.us.us.i.us, %i.wl
  %i.xa = sdiv i32 %.reass1107.us.us.us.i.us, %i.wl ; 2 uses
  %.not429.us.us.us.i.us = icmp eq i32 %i.wz, 0
  %.not430.us.us.us.i.us = icmp slt i32 %i.xa, %i.gy
  %or.cond204.a = select i1 %.not429.us.us.us.i.us, i1 %.not430.us.us.us.i.us, i1 false
  br i1 %or.cond204.a, label %.preheader893.us.us.us.i.us, label %..loopexit894_crit_edge.us.us.us.i.us

.preheader893.us.us.us.i.us:                      ; preds = %bb.au
  %i.xb = mul nuw nsw i64 %indvars.iv1357.i.us, %i.wr
  %i.xc = sext i32 %i.xa to i64
  %i.xd = mul nsw i64 %i.xc, %i.hz
  br label %.lr.ph.split.us.us.us.us1137.i.us

.lr.ph.split.us.us.us.us1137.i.us:                ; preds = %.preheader893.us.us.us.i.us, %bb.aw
  %indvars.iv1352.i.us = phi i64 [ %indvars.iv.next1353.i.us, %bb.aw ], [ 0, %.preheader893.us.us.us.i.us ] ; 3 uses
  %.28321085.us.us.us.us.i.us = phi <4 x float> [ %.3833.us.us.us.us.i.us, %bb.aw ], [ %.18311101.us.us.us.i.us, %.preheader893.us.us.us.i.us ] ; 3 uses
  %i.xe = trunc i64 %indvars.iv1352.i.us to i32
  %i.xf = mul i32 %i.wn, %i.xe
  %.reass1089.us.us.us.us.i.us = add i32 %i.xf, %invariant.op1088.i ; 3 uses
  %i.xg = icmp slt i32 %.reass1089.us.us.us.us.i.us, 0
  br i1 %i.xg, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.us.us.us1137.i.us
  %i.xh = srem i32 %.reass1089.us.us.us.us.i.us, %i.wp
  %i.xi = sdiv i32 %.reass1089.us.us.us.us.i.us, %i.wp ; 2 uses
  %.not431.us.us.us.us.i.us = icmp eq i32 %i.xh, 0
  %.not432.us.us.us.us.i.us = icmp slt i32 %i.xi, %i.gx
  %or.cond205.a = select i1 %.not431.us.us.us.us.i.us, i1 %.not432.us.us.us.us.i.us, i1 false
  br i1 %or.cond205.a, label %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, label %bb.aw

_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us:        ; preds = %bb.av
  %i.xj = add nuw nsw i64 %indvars.iv1352.i.us, %i.xb
  %i.xk = shl i64 %i.xj, 2
  %i.xl = and i64 %i.xk, 4294967292
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.xl
  %i.xn = load ptr, ptr %1, align 8, !tbaa !18, !noalias !395
  %i.xo = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !395
  %i.xp = mul i64 %i.xo, %i.ws
  %i.xq = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !395 ; 2 uses
  %i.xr = mul i64 %i.xp, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xr
  %i.xt = mul i64 %i.xd, %i.xq
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xt
  %i.xv = shl nsw i32 %i.xi, 2
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [2 x i8], ptr %i.xu, i64 %i.xw
  %i.xy = load i64, ptr %i.xx, align 1, !tbaa !245
  %i.xz = insertelement <2 x i64> poison, i64 %i.xy, i64 0
  %i.ya = bitcast <2 x i64> %i.xz to <8 x i16>
  %i.yb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ya, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yc = bitcast <8 x i16> %i.yb to <4 x float>
  %i.yd = load i64, ptr %i.xm, align 1, !tbaa !245
  %i.ye = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %i.yf = bitcast <2 x i64> %i.ye to <8 x i16>
  %i.yg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yh = bitcast <8 x i16> %i.yg to <4 x float>
  %i.yi = fmul fast <4 x float> %i.yh, %i.yc
  %i.yj = fadd fast <4 x float> %i.yi, %.28321085.us.us.us.us.i.us
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us, %bb.av, %.lr.ph.split.us.us.us.us1137.i.us
  %.3833.us.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us1137.i.us ], [ %.28321085.us.us.us.us.i.us, %bb.av ], [ %i.yj, %_ZN4ncnn3MatD2Ev.exit448.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next1353.i.us = add nuw nsw i64 %indvars.iv1352.i.us, 1 ; 2 uses
  %exitcond1356.not.i.us = icmp eq i64 %indvars.iv.next1353.i.us, %i.wr
  br i1 %exitcond1356.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us1137.i.us, !llvm.loop !398

..loopexit894_crit_edge.us.us.us.i.us:            ; preds = %bb.aw, %bb.au, %.preheader897.us.us.i.split.us
  %.4834.us.us.us.i.us = phi nsz <4 x float> [ %.18311101.us.us.us.i.us, %.preheader897.us.us.i.split.us ], [ %.18311101.us.us.us.i.us, %bb.au ], [ %.3833.us.us.us.us.i.us, %bb.aw ] ; 2 uses
  %indvars.iv.next1358.i.us = add nuw nsw i64 %indvars.iv1357.i.us, 1 ; 2 uses
  %exitcond1361.not.i.us = icmp eq i64 %indvars.iv.next1358.i.us, %wide.trip.count1360.i
  br i1 %exitcond1361.not.i.us, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us, !llvm.loop !399

.preheader897.us.us.i.split.us79:                 ; preds = %.preheader897.us.us.i, %..loopexit894_crit_edge.us.us.us.i.us86
  %indvars.iv1357.i.us80 = phi i64 [ %indvars.iv.next1358.i.us88, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ 0, %.preheader897.us.us.i ] ; 3 uses
  %.18311101.us.us.us.i.us81 = phi <4 x float> [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ], [ %.08301117.us.us.i, %.preheader897.us.us.i ] ; 3 uses
  %i.yk = trunc i64 %indvars.iv1357.i.us80 to i32
  %i.yl = mul i32 %i.wj, %i.yk
  %.reass1107.us.us.us.i.us82 = add i32 %i.yl, %invariant.op1106.i ; 3 uses
  %i.ym = icmp slt i32 %.reass1107.us.us.us.i.us82, 0
  br i1 %i.ym, label %..loopexit894_crit_edge.us.us.us.i.us86, label %bb.ax

bb.ax:                                            ; preds = %.preheader897.us.us.i.split.us79
  %i.yn = srem i32 %.reass1107.us.us.us.i.us82, %i.wl
  %i.yo = sdiv i32 %.reass1107.us.us.us.i.us82, %i.wl ; 2 uses
  %.not429.us.us.us.i.us83 = icmp eq i32 %i.yn, 0
  %.not430.us.us.us.i.us84 = icmp slt i32 %i.yo, %i.gy
  %or.cond206.a = select i1 %.not429.us.us.us.i.us83, i1 %.not430.us.us.us.i.us84, i1 false
  br i1 %or.cond206.a, label %.preheader893.us.us.us.i.us85, label %..loopexit894_crit_edge.us.us.us.i.us86

.preheader893.us.us.us.i.us85:                    ; preds = %bb.ax
  %i.yp = mul nuw nsw i64 %indvars.iv1357.i.us80, %i.wr
  %i.yq = sext i32 %i.yo to i64
  %i.yr = mul nsw i64 %i.yq, %i.hz
  br label %.lr.ph.split.us1091.us.us.us.i.us

.lr.ph.split.us1091.us.us.us.i.us:                ; preds = %.preheader893.us.us.us.i.us85, %bb.az
  %indvars.iv1347.i.us = phi i64 [ %indvars.iv.next1348.i.us, %bb.az ], [ 0, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %.28321085.us1093.us.us.us.i.us = phi <4 x float> [ %.3833.us1097.us.us.us.i.us, %bb.az ], [ %.18311101.us.us.us.i.us81, %.preheader893.us.us.us.i.us85 ] ; 3 uses
  %i.ys = trunc i64 %indvars.iv1347.i.us to i32
  %i.yt = mul i32 %i.wn, %i.ys
  %.reass1089.us1094.us.us.us.i.us = add i32 %i.yt, %invariant.op1088.i ; 3 uses
  %i.yu = icmp slt i32 %.reass1089.us1094.us.us.us.i.us, 0
  br i1 %i.yu, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.split.us1091.us.us.us.i.us
  %i.yv = srem i32 %.reass1089.us1094.us.us.us.i.us, %i.wp
  %i.yw = sdiv i32 %.reass1089.us1094.us.us.us.i.us, %i.wp ; 2 uses
  %.not431.us1095.us.us.us.i.us = icmp eq i32 %i.yv, 0
  %.not432.us1096.us.us.us.i.us = icmp slt i32 %i.yw, %i.gx
  %or.cond207.a = select i1 %.not431.us1095.us.us.us.i.us, i1 %.not432.us1096.us.us.us.i.us, i1 false
  br i1 %or.cond207.a, label %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, label %bb.az

_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us:        ; preds = %bb.ay
  %i.yx = load ptr, ptr %1, align 8, !tbaa !18, !noalias !400
  %i.yy = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !400
  %i.yz = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !400 ; 2 uses
  %factor.op.mul1080.us.us.us.us.i.us = mul i64 %i.yz, %i.yy ; 4 uses
  %i.za = mul i64 %i.yr, %i.yz
  %invariant.gep.us.us.us1133.us.i.us = getelementptr i8, ptr %i.yx, i64 %i.za
  %i.zb = sext i32 %i.yw to i64
  %invariant.gep1082.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1133.us.i.us, i64 %i.zb ; 4 uses
  %.reass1081.us.us.us.us.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %indvars.iv1362.i
  %gep1083.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.i.us
  %i.zc = load i16, ptr %gep1083.us.us.us.us.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.1.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wt
  %gep1083.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.1.i.us
  %i.zd = load i16, ptr %gep1083.us.us.us.us.1.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.2.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wu
  %gep1083.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.2.i.us
  %i.ze = load i16, ptr %gep1083.us.us.us.us.2.i.us, align 2, !tbaa !328
  %.reass1081.us.us.us.us.3.i.us = mul i64 %factor.op.mul1080.us.us.us.us.i.us, %i.wv
  %gep1083.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep1082.us.us.us.us.i.us, i64 %.reass1081.us.us.us.us.3.i.us
  %i.zf = load i16, ptr %gep1083.us.us.us.us.3.i.us, align 2, !tbaa !328
  %i.zg = insertelement <4 x i16> poison, i16 %i.zc, i64 0
  %i.zh = insertelement <4 x i16> %i.zg, i16 %i.zd, i64 1
  %i.zi = insertelement <4 x i16> %i.zh, i16 %i.ze, i64 2
  %i.zj = insertelement <4 x i16> %i.zi, i16 %i.zf, i64 3
  %i.zk = zext <4 x i16> %i.zj to <4 x i32>
  %i.zl = shl nuw <4 x i32> %i.zk, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.zl to <4 x float>
  %i.zm = add nuw nsw i64 %indvars.iv1347.i.us, %i.yp
  %i.zn = shl i64 %i.zm, 2
  %i.zo = and i64 %i.zn, 4294967292
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %.03231118.us.us.i, i64 %i.zo
  %i.zq = load i64, ptr %i.zp, align 1, !tbaa !245
  %i.zr = insertelement <2 x i64> poison, i64 %i.zq, i64 0
  %i.zs = bitcast <2 x i64> %i.zr to <8 x i16>
  %i.zt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.zs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zu = bitcast <8 x i16> %i.zt to <4 x float>
  %i.zv = fmul fast <4 x float> %i.zu, %.sroa.0.12.vec.insert.i.us
  %i.zw = fadd fast <4 x float> %i.zv, %.28321085.us1093.us.us.us.i.us
  br label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us, %bb.ay, %.lr.ph.split.us1091.us.us.us.i.us
  %.3833.us1097.us.us.us.i.us = phi nsz <4 x float> [ %.28321085.us1093.us.us.us.i.us, %.lr.ph.split.us1091.us.us.us.i.us ], [ %i.zw, %_ZN4ncnn3MatD2Ev.exit447.us.us.us.us.i.us ], [ %.28321085.us1093.us.us.us.i.us, %bb.ay ] ; 2 uses
  %indvars.iv.next1348.i.us = add nuw nsw i64 %indvars.iv1347.i.us, 1 ; 2 uses
  %exitcond1351.not.i.us = icmp eq i64 %indvars.iv.next1348.i.us, %i.wr
  br i1 %exitcond1351.not.i.us, label %..loopexit894_crit_edge.us.us.us.i.us86, label %.lr.ph.split.us1091.us.us.us.i.us, !llvm.loop !398

..loopexit894_crit_edge.us.us.us.i.us86:          ; preds = %bb.az, %bb.ax, %.preheader897.us.us.i.split.us79
  %.4834.us.us.us.i.us87 = phi nsz <4 x float> [ %.18311101.us.us.us.i.us81, %.preheader897.us.us.i.split.us79 ], [ %.18311101.us.us.us.i.us81, %bb.ax ], [ %.3833.us1097.us.us.us.i.us, %bb.az ] ; 2 uses
  %indvars.iv.next1358.i.us88 = add nuw nsw i64 %indvars.iv1357.i.us80, 1 ; 2 uses
  %exitcond1361.not.i.us89 = icmp eq i64 %indvars.iv.next1358.i.us88, %wide.trip.count1360.i
  br i1 %exitcond1361.not.i.us89, label %._crit_edge1104.split.us.us.us.i, label %.preheader897.us.us.i.split.us79, !llvm.loop !399

._crit_edge1104.split.us.us.us.i:                 ; preds = %..loopexit894_crit_edge.us.us.us.i.us86, %..loopexit894_crit_edge.us.us.us.i.us, %.preheader897.us.us.i
  %.us-phi78 = phi <4 x float> [ %.4834.us.us.us.i.us, %..loopexit894_crit_edge.us.us.us.i.us ], [ %.08301117.us.us.i, %.preheader897.us.us.i ], [ %.4834.us.us.us.i.us87, %..loopexit894_crit_edge.us.us.us.i.us86 ] ; 2 uses
  %i.zx = getelementptr inbounds [2 x i8], ptr %.03231118.us.us.i, i64 %i.wc ; 2 uses
  %indvars.iv.next1363.i = add nuw nsw i64 %indvars.iv1362.i, 4 ; 2 uses
  %i.zy = icmp slt i64 %indvars.iv.next1363.i, %invariant.op1450.i
  br i1 %i.zy, label %.preheader897.us.us.i, label %._crit_edge1122.i, !llvm.loop !403

._crit_edge1122.i:                                ; preds = %._crit_edge1104.split.us.us.us.i, %.preheader897.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit449.i
  %.0830.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit449.i ], [ zeroinitializer, %.preheader897.lr.ph.i ], [ %.us-phi78, %._crit_edge1104.split.us.us.us.i ] ; 2 uses
  %.0323.lcssa.i = phi ptr [ %i.vx, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %scevgep1340.i, %.preheader897.lr.ph.i ], [ %i.zx, %._crit_edge1104.split.us.us.us.i ] ; 4 uses
  %.0322.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit449.i ], [ %i.ht, %.preheader897.lr.ph.i ], [ %i.ia, %._crit_edge1104.split.us.us.us.i ] ; 9 uses
  %i.zz = shufflevector <4 x float> %.0830.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.aaa = fadd fast <4 x float> %i.zz, %.0830.lcssa.i ; 2 uses
  %i.aab = extractelement <4 x float> %i.aaa, i64 1
  %i.aac = extractelement <4 x float> %i.aaa, i64 0
  %i.aad = fadd fast float %i.aab, %.0326.i
  %i.aae = fadd fast float %i.aad, %i.aac         ; 4 uses
  %i.aaf = or disjoint i32 %.0322.lcssa.i, 1
  %i.aag = icmp slt i32 %i.aaf, %i.gw
  br i1 %i.aag, label %.preheader896.lr.ph.i, label %.preheader898.i

.preheader896.lr.ph.i:                            ; preds = %._crit_edge1122.i
  %i.aah = load i32, ptr %i.d, align 4
  %i.aai = load i32, ptr %i.j, align 4
  %invariant.op1157.i = sub i32 %.neg875.i, %i.aai
  %i.aaj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aak = load i32, ptr %i.a, align 4
  %.fr1235.i = freeze i32 %i.aak                  ; 2 uses
  %i.aal = load i32, ptr %i.c, align 4
  %i.aam = load i32, ptr %i.i, align 4
  %.neg873.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1150.i = sub i32 %.neg873.i, %i.aam
  %i.aan = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.vz, label %.preheader896.lr.ph.split.us.i, label %.preheader896.preheader.i

.preheader896.preheader.i:                        ; preds = %.preheader896.lr.ph.i
  %9 = add i32 %.0322.lcssa.i, 3
  %smax1365.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %9)
  %reass.sub93 = sub i32 %smax1365.i, %.0322.lcssa.i
  %i.aao = and i32 %reass.sub93, -2               ; 2 uses
  %10 = add i32 %i.aao, -2
  %i.aap = zext i32 %10 to i64
  %i.aaq = add nuw nsw i64 %i.aap, 2
  %i.aar = mul nsw i64 %i.aaq, %i.we
  %scevgep1366.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aar
  %i.aas = add i32 %.0322.lcssa.i, %i.aao
  br label %.preheader898.i

.preheader896.lr.ph.split.us.i:                   ; preds = %.preheader896.lr.ph.i
  %i.aat = icmp sgt i32 %.fr1235.i, 0
  br i1 %i.aat, label %.preheader896.us.us.preheader.i, label %.preheader896.us.preheader.i

.preheader896.us.preheader.i:                     ; preds = %.preheader896.lr.ph.split.us.i
  %11 = add i32 %.0322.lcssa.i, 3
  %smax1367.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 %11)
  %reass.sub94 = sub i32 %smax1367.i, %.0322.lcssa.i
  %i.aau = and i32 %reass.sub94, -2               ; 2 uses
  %12 = add i32 %i.aau, -2
  %i.aav = zext i32 %12 to i64
  %i.aaw = add nuw nsw i64 %i.aav, 2
  %i.aax = mul nsw i64 %i.aaw, %i.we
  %scevgep1368.i = getelementptr i8, ptr %.0323.lcssa.i, i64 %i.aax
  %i.aay = add i32 %.0322.lcssa.i, %i.aau
  br label %.preheader898.i

.preheader896.us.us.preheader.i:                  ; preds = %.preheader896.lr.ph.split.us.i
  %i.aaz = zext nneg i32 %.fr1235.i to i64        ; 2 uses
  %i.aba = zext i32 %.0322.lcssa.i to i64
  br label %.preheader896.us.us.i

.preheader896.us.us.i:                            ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.us.preheader.i
  %indvars.iv1382.i.a = phi i64 [ %i.aba, %.preheader896.us.us.preheader.i ], [ %indvars.iv.next1383.i.a, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.13241162.us.us.i = phi ptr [ %.0323.lcssa.i, %.preheader896.us.us.preheader.i ], [ %i.acm, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %.13271161.us.us.i = phi float [ %i.aae, %.preheader896.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ]
  %i.abb = add nuw nsw i64 %indvars.iv1382.i.a, 1
  br label %bb.ba

bb.ba:                                            ; preds = %..loopexit892_crit_edge.us.us.us.i, %.preheader896.us.us.i
  %indvars.iv1377.i = phi i64 [ %indvars.iv.next1378.i, %..loopexit892_crit_edge.us.us.us.i ], [ 0, %.preheader896.us.us.i ] ; 3 uses
  %.23281152.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit892_crit_edge.us.us.us.i ], [ %.13271161.us.us.i, %.preheader896.us.us.i ] ; 3 uses
  %i.abc = trunc i64 %indvars.iv1377.i to i32
  %i.abd = mul i32 %i.aah, %i.abc
  %.reass1158.us.us.us.i = add i32 %i.abd, %invariant.op1157.i ; 3 uses
  %i.abe = icmp slt i32 %.reass1158.us.us.us.i, 0
  br i1 %i.abe, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abf = srem i32 %.reass1158.us.us.us.i, %i.aaj
  %i.abg = sdiv i32 %.reass1158.us.us.us.i, %i.aaj ; 2 uses
  %.not425.us.us.us.i = icmp eq i32 %i.abf, 0
  %.not426.us.us.us.i = icmp slt i32 %i.abg, %i.gy
  %or.cond208.a = select i1 %.not425.us.us.us.i, i1 %.not426.us.us.us.i, i1 false
  br i1 %or.cond208.a, label %.preheader891.us.us.us.i, label %..loopexit892_crit_edge.us.us.us.i

bb.bc:                                            ; preds = %.preheader891.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv1372.i = phi i64 [ 0, %.preheader891.us.us.us.i ], [ %indvars.iv.next1373.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.31147.us.us.us.i = phi float [ %.23281152.us.us.us.i, %.preheader891.us.us.us.i ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.abh = trunc i64 %indvars.iv1372.i to i32
  %i.abi = mul i32 %i.aal, %i.abh
  %.reass1151.us.us.us.i = add i32 %invariant.op1150.i, %i.abi ; 3 uses
  %i.abj = icmp slt i32 %.reass1151.us.us.us.i, 0
  br i1 %i.abj, label %.loopexit.us.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abk = srem i32 %.reass1151.us.us.us.i, %i.aan
  %i.abl = sdiv i32 %.reass1151.us.us.us.i, %i.aan ; 2 uses
  %.not427.us.us.us.i = icmp eq i32 %i.abk, 0
  %.not428.us.us.us.i = icmp slt i32 %i.abl, %i.gx
  %or.cond209 = select i1 %.not427.us.us.us.i, i1 %.not428.us.us.us.i, i1 false
  br i1 %or.cond209, label %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit446.us.us.us.i:              ; preds = %bb.bd
  %i.abm = add nuw nsw i64 %indvars.iv1372.i, %i.acj
  %.idx1440.i = shl nuw nsw i64 %i.abm, 2
  %i.abn = getelementptr inbounds nuw i8, ptr %.13241162.us.us.i, i64 %.idx1440.i
  %i.abo = load ptr, ptr %1, align 8, !tbaa !18, !noalias !404
  %i.abp = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !404
  %i.abq = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !404 ; 2 uses
  %factor.op.mul1141.us.us.us.i = mul i64 %i.abq, %i.abp ; 2 uses
  %i.abr = mul i64 %i.acl, %i.abq
  %invariant.gep.us.us.us1179.i = getelementptr i8, ptr %i.abo, i64 %i.abr
  %i.abs = sext i32 %i.abl to i64
  %invariant.gep1143.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us1179.i, i64 %i.abs ; 2 uses
  %.reass1142.us.us.us.i = mul i64 %factor.op.mul1141.us.us.us.i, %indvars.iv1382.i.a
  %gep1144.us.us.us.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.i
  %i.abt = load i16, ptr %gep1144.us.us.us.i, align 2, !tbaa !328
  %.reass1142.us.us.us.1.i = mul i64 %factor.op.mul1141.us.us.us.i, %i.abb
  %gep1144.us.us.us.1.i = getelementptr i8, ptr %invariant.gep1143.us.us.us.i, i64 %.reass1142.us.us.us.1.i
  %i.abu = load i16, ptr %gep1144.us.us.us.1.i, align 2, !tbaa !328
  %i.abv = insertelement <2 x i16> poison, i16 %i.abt, i64 0
  %i.abw = insertelement <2 x i16> %i.abv, i16 %i.abu, i64 1
  %i.abx = zext <2 x i16> %i.abw to <2 x i32>
  %i.aby = shl nuw <2 x i32> %i.abx, splat (i32 16)
  %i.abz = bitcast <2 x i32> %i.aby to <2 x float>
  %i.aca = load <2 x i16>, ptr %i.abn, align 2, !tbaa !328
  %i.acb = zext <2 x i16> %i.aca to <2 x i32>
  %i.acc = shl nuw <2 x i32> %i.acb, splat (i32 16)
  %i.acd = bitcast <2 x i32> %i.acc to <2 x float>
  %i.ace = fmul fast <2 x float> %i.acd, %i.abz   ; 2 uses
  %i.acf = extractelement <2 x float> %i.ace, i64 0
  %i.acg = fadd fast float %.31147.us.us.us.i, %i.acf
  %i.ach = extractelement <2 x float> %i.ace, i64 1
  %i.aci = fadd fast float %i.ach, %i.acg
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i, %bb.bd, %bb.bc
  %.6.us.us.us.i = phi nsz float [ %.31147.us.us.us.i, %bb.bc ], [ %.31147.us.us.us.i, %bb.bd ], [ %i.aci, %_ZN4ncnn3MatD2Ev.exit446.us.us.us.i ] ; 2 uses
  %indvars.iv.next1373.i = add nuw nsw i64 %indvars.iv1372.i, 1 ; 2 uses
  %exitcond1376.not.i = icmp eq i64 %indvars.iv.next1373.i, %i.aaz
  br i1 %exitcond1376.not.i, label %..loopexit892_crit_edge.us.us.us.i, label %bb.bc, !llvm.loop !407

..loopexit892_crit_edge.us.us.us.i:               ; preds = %.loopexit.us.us.us.i, %bb.bb, %bb.ba
  %.8.us.us.us.i = phi nsz float [ %.23281152.us.us.us.i, %bb.ba ], [ %.23281152.us.us.us.i, %bb.bb ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next1378.i = add nuw nsw i64 %indvars.iv1377.i, 1 ; 2 uses
  %exitcond1381.not.i = icmp eq i64 %indvars.iv.next1378.i, %wide.trip.count1360.i
  br i1 %exitcond1381.not.i, label %._crit_edge1155.split.us.us.us.i, label %bb.ba, !llvm.loop !408

.preheader891.us.us.us.i:                         ; preds = %bb.bb
  %i.acj = mul nuw nsw i64 %indvars.iv1377.i, %i.aaz
  %i.ack = sext i32 %i.abg to i64
  %i.acl = mul nsw i64 %i.ack, %i.hz
  br label %bb.bc

._crit_edge1155.split.us.us.us.i:                 ; preds = %..loopexit892_crit_edge.us.us.us.i
  %i.acm = getelementptr inbounds [2 x i8], ptr %.13241162.us.us.i, i64 %i.we ; 2 uses
  %indvars.iv.next1383.i.a = add nuw nsw i64 %indvars.iv1382.i.a, 2 ; 2 uses
  %i.acn = trunc i64 %indvars.iv.next1383.i.a to i32 ; 2 uses
  %i.aco = or i32 %i.acn, 1
  %i.acp = icmp slt i32 %i.aco, %i.gw
  br i1 %i.acp, label %.preheader896.us.us.i, label %.preheader898.i, !llvm.loop !409

.preheader898.i:                                  ; preds = %._crit_edge1155.split.us.us.us.i, %.preheader896.us.preheader.i, %.preheader896.preheader.i, %._crit_edge1122.i
  %.1327.lcssa.i = phi float [ %i.aae, %._crit_edge1122.i ], [ %i.aae, %.preheader896.preheader.i ], [ %i.aae, %.preheader896.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge1155.split.us.us.us.i ] ; 3 uses
  %.1324.lcssa.i = phi ptr [ %.0323.lcssa.i, %._crit_edge1122.i ], [ %scevgep1366.i, %.preheader896.preheader.i ], [ %scevgep1368.i, %.preheader896.us.preheader.i ], [ %i.acm, %._crit_edge1155.split.us.us.us.i ]
  %.1.lcssa.i = phi i32 [ %.0322.lcssa.i, %._crit_edge1122.i ], [ %i.aas, %.preheader896.preheader.i ], [ %i.aay, %.preheader896.us.preheader.i ], [ %i.acn, %._crit_edge1155.split.us.us.us.i ] ; 2 uses
  %i.acq = icmp slt i32 %.1.lcssa.i, %i.gw
  br i1 %i.acq, label %.preheader895.lr.ph.i, label %._crit_edge1201.i

.preheader895.lr.ph.i:                            ; preds = %.preheader898.i
  %i.acr = load i32, ptr %i.d, align 4
  %i.acs = load i32, ptr %i.j, align 4
  %invariant.op1193.i = sub i32 %.neg875.i, %i.acs
  %i.act = load i32, ptr %i.f, align 4            ; 2 uses
  %i.acu = load i32, ptr %i.a, align 4
  %.fr1236.i = freeze i32 %i.acu                  ; 2 uses
  %i.acv = load i32, ptr %i.c, align 4
  %i.acw = load i32, ptr %i.i, align 4
  %.neg869.i = add nuw nsw i32 %.03291213.i, 1
  %invariant.op1186.i = sub i32 %.neg869.i, %i.acw
  %i.acx = load i32, ptr %i.e, align 4            ; 2 uses
  %i.acy = icmp sgt i32 %.fr1236.i, 0
  %or.cond1453.i = and i1 %i.vz, %i.acy
  br i1 %or.cond1453.i, label %.preheader895.us.us.preheader.i, label %._crit_edge1201.i

.preheader895.us.us.preheader.i:                  ; preds = %.preheader895.lr.ph.i
  %i.acz = zext nneg i32 %.fr1236.i to i64        ; 2 uses
  %i.ada = zext i32 %.1.lcssa.i to i64
  br label %.preheader895.us.us.i

.preheader895.us.us.i:                            ; preds = %._crit_edge1191.split.us.us.us.i, %.preheader895.us.us.preheader.i
  %indvars.iv1395.i = phi i64 [ %i.ada, %.preheader895.us.us.preheader.i ], [ %indvars.iv.next1396.i, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.23251198.us.us.i = phi ptr [ %.1324.lcssa.i, %.preheader895.us.us.preheader.i ], [ %i.aek, %._crit_edge1191.split.us.us.us.i ] ; 2 uses
  %.91197.us.us.i = phi float [ %.1327.lcssa.i, %.preheader895.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge1191.split.us.us.us.i ]
  br label %bb.be

bb.be:                                            ; preds = %..loopexit890_crit_edge.us.us.us.i, %.preheader895.us.us.i
  %indvars.iv1390.i = phi i64 [ %indvars.iv.next1391.i, %..loopexit890_crit_edge.us.us.us.i ], [ 0, %.preheader895.us.us.i ] ; 3 uses
  %.101188.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit890_crit_edge.us.us.us.i ], [ %.91197.us.us.i, %.preheader895.us.us.i ] ; 3 uses
  %i.adb = trunc i64 %indvars.iv1390.i to i32
  %i.adc = mul i32 %i.acr, %i.adb
  %.reass1194.us.us.us.i = add i32 %i.adc, %invariant.op1193.i ; 3 uses
  %i.add = icmp slt i32 %.reass1194.us.us.us.i, 0
  br i1 %i.add, label %..loopexit890_crit_edge.us.us.us.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ade = srem i32 %.reass1194.us.us.us.i, %i.act
  %i.adf = sdiv i32 %.reass1194.us.us.us.i, %i.act ; 2 uses
  %.not421.us.us.us.i = icmp eq i32 %i.ade, 0
  %.not422.us.us.us.i = icmp slt i32 %i.adf, %i.gy
  %or.cond210 = select i1 %.not421.us.us.us.i, i1 %.not422.us.us.us.i, i1 false
  br i1 %or.cond210, label %.preheader.us.us.us.i, label %..loopexit890_crit_edge.us.us.us.i

bb.bg:                                            ; preds = %.preheader.us.us.us.i, %bb.bi
  %indvars.iv1385.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next1386.i, %bb.bi ] ; 3 uses
  %.111183.us.us.us.i = phi float [ %.101188.us.us.us.i, %.preheader.us.us.us.i ], [ %.13.us.us.us.i, %bb.bi ] ; 3 uses
  %i.adg = trunc i64 %indvars.iv1385.i to i32
  %i.adh = mul i32 %i.acv, %i.adg
  %.reass1187.us.us.us.i = add i32 %invariant.op1186.i, %i.adh ; 3 uses
  %i.adi = icmp slt i32 %.reass1187.us.us.us.i, 0
  br i1 %i.adi, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adj = srem i32 %.reass1187.us.us.us.i, %i.acx
  %i.adk = sdiv i32 %.reass1187.us.us.us.i, %i.acx ; 2 uses
  %.not423.us.us.us.i = icmp eq i32 %i.adj, 0
  %.not424.us.us.us.i = icmp slt i32 %i.adk, %i.gx
  %or.cond211 = select i1 %.not423.us.us.us.i, i1 %.not424.us.us.us.i, i1 false
  br i1 %or.cond211, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.bi

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.bh
  %i.adl = load ptr, ptr %1, align 8, !tbaa !18, !noalias !410
  %i.adm = load i64, ptr %i.hh, align 8, !tbaa !20, !noalias !410
  %i.adn = mul i64 %i.adm, %indvars.iv1395.i
  %i.ado = load i64, ptr %i.hi, align 8, !tbaa !57, !noalias !410 ; 2 uses
  %i.adp = mul i64 %i.adn, %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.adp
  %i.adr = mul i64 %i.aej, %i.ado
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adr
  %i.adt = sext i32 %i.adk to i64
  %i.adu = getelementptr inbounds [2 x i8], ptr %i.ads, i64 %i.adt
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !328
  %i.adw = zext i16 %i.adv to i32
  %i.adx = shl nuw i32 %i.adw, 16
  %i.ady = bitcast i32 %i.adx to float
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %i.aei, i64 %indvars.iv1385.i
  %i.aea = load i16, ptr %i.adz, align 2, !tbaa !328
  %i.aeb = zext i16 %i.aea to i32
  %i.aec = shl nuw i32 %i.aeb, 16
  %i.aed = bitcast i32 %i.aec to float
  %i.aee = fmul fast float %i.aed, %i.ady
  %i.aef = fadd fast float %i.aee, %.111183.us.us.us.i
  br label %bb.bi

end_hunk_7
begin_hunk_8_@_ZNK4ncnn17Deconvolution_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  call void @llvm.memset.p0.i64(ptr align 4 %i.fc, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.prol = add nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc44.us108.us.prol.loopexit, label %.noexc44.us108.us.prol, !llvm.loop !441

.noexc44.us108.us.prol.loopexit:                  ; preds = %.noexc44.us108.us.prol, %.noexc44.us108.us.preheader
  %indvars.iv127.unr = phi i64 [ %i.ex, %.noexc44.us108.us.preheader ], [ %indvars.iv.next128.prol, %.noexc44.us108.us.prol ]
  %i.fd = icmp ult i32 %i.fb, 7
  br i1 %i.fd, label %._crit_edge, label %.noexc44.us108.us

.noexc44.us108.us:                                ; preds = %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %.noexc44.us108.us ], [ %indvars.iv127.unr, %.noexc44.us108.us.prol.loopexit ] ; 9 uses
  %.reass87.us110.us = mul i64 %factor.op.mul86, %indvars.iv127
  %i.fe = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.fe, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1
  %.reass87.us110.us.1 = mul i64 %factor.op.mul86, %indvars.iv.next128
  %i.ff = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.ff, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.1 = add nsw i64 %indvars.iv127, 2
  %.reass87.us110.us.2 = mul i64 %factor.op.mul86, %indvars.iv.next128.1
  %i.fg = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fg, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.2 = add nsw i64 %indvars.iv127, 3
  %.reass87.us110.us.3 = mul i64 %factor.op.mul86, %indvars.iv.next128.2
  %i.fh = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.fh, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.3 = add nsw i64 %indvars.iv127, 4
  %.reass87.us110.us.4 = mul i64 %factor.op.mul86, %indvars.iv.next128.3
  %i.fi = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fi, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.4 = add nsw i64 %indvars.iv127, 5
  %.reass87.us110.us.5 = mul i64 %factor.op.mul86, %indvars.iv.next128.4
  %i.fj = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.fj, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.5 = add nsw i64 %indvars.iv127, 6
  %.reass87.us110.us.6 = mul i64 %factor.op.mul86, %indvars.iv.next128.5
  %i.fk = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.6 = add nsw i64 %indvars.iv127, 7
  %.reass87.us110.us.7 = mul i64 %factor.op.mul86, %indvars.iv.next128.6
  %i.fl = getelementptr i8, ptr %i.s, i64 %.reass87.us110.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.fl, i8 0, i64 %i.ew, i1 false), !tbaa !39
  %indvars.iv.next128.7 = add nsw i64 %indvars.iv127, 8 ; 2 uses
  %lftr.wideiv130.7 = trunc i64 %indvars.iv.next128.7 to i32
  %exitcond131.not.7 = icmp eq i32 %i.ey, %lftr.wideiv130.7
  br i1 %exitcond131.not.7, label %._crit_edge, label %.noexc44.us108.us

.noexc44.us108:                                   ; preds = %.noexc44.us108.preheader, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117
  %indvars.iv = phi i64 [ %i.eq, %.noexc44.us108.preheader ], [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117 ] ; 3 uses
  %.reass87.us110 = mul i64 %factor.op.mul86, %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass87.us110 ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !39 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc44.us108
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.eu
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.fq ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !39
  store <4 x float> %broadcast.splat, ptr %i.fr, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc44.us108, %middle.block
  %.0.i55.us112.ph = phi i32 [ 0, %.noexc44.us108 ], [ %i.et, %middle.block ]
  %.05.i54.us113.ph = phi ptr [ %i.fm, %.noexc44.us108 ], [ %i.fp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0.i55.us112 = phi i32 [ %i.fu, %scalar.ph ], [ %.0.i55.us112.ph, %scalar.ph.preheader ]
  %.05.i54.us113 = phi ptr [ %i.ft, %scalar.ph ], [ %.05.i54.us113.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i54.us113, i64 4
  store float %i.fo, ptr %.05.i54.us113, align 4, !tbaa !39
  %i.fu = add nuw nsw i32 %.0.i55.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %i.an
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, label %scalar.ph, !llvm.loop !443

._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117: ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond126.not = icmp eq i32 %i.er, %lftr.wideiv
  br i1 %exitcond126.not, label %._crit_edge, label %.noexc44.us108

._crit_edge:                                      ; preds = %._ZN4ncnn3Mat4fillEf.exit.preheader_crit_edge.us117, %.noexc44.us108.us.prol.loopexit, %.noexc44.us108.us, %.noexc44.us98.prol.loopexit, %.noexc44.us98, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split.us, %.noexc44.lr.ph.split.split, %.noexc44.lr.ph.split.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn13Deconvolution11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not790 = icmp sgt i32 %i.k, %i.j
  br i1 %.not790, label %._crit_edge792, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge792

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge789.split
  %.0202791 = phi i32 [ %i.bh, %._crit_edge789.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader670.lr.ph, label %._crit_edge789.split

.preheader670.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0202791, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader670.preheader, label %._crit_edge789.split

.preheader670.preheader:                          ; preds = %.preheader670.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !444
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !444
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !444
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 2 uses
  %i.ba = and i32 %i.az, -4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 4                ; 2 uses
  %i.bd = and i32 %i.az, -4
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %invariant.op = add nsw i64 %i.bf, -3
  %i.bg = trunc nuw nsw i64 %i.bc to i32
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader670.preheader, %._crit_edge
  %.0198788 = phi i32 [ %.neg658, %._crit_edge ], [ 0, %.preheader670.preheader ]
  %.0199787 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader670.preheader ]
  %.neg658 = add nuw nsw i32 %.0198788, 1         ; 5 uses
  br label %bb.c

._crit_edge789.split:                             ; preds = %._crit_edge, %.preheader670.lr.ph, %.noexc299
  %i.bh = add i32 %.0202791, 1
  %exitcond837.not = icmp eq i32 %.0202791, %i.j
  br i1 %exitcond837.not, label %._crit_edge792, label %.noexc299, !llvm.loop !447

._crit_edge:                                      ; preds = %bb.aa
  %exitcond836.not = icmp eq i32 %.neg658, %i.ag
  br i1 %exitcond836.not, label %._crit_edge789.split, label %.preheader670, !llvm.loop !448

bb.c:                                             ; preds = %.preheader670, %bb.aa
  %.0197786 = phi i32 [ 0, %.preheader670 ], [ %i.tj, %bb.aa ] ; 4 uses
  %.1200785 = phi ptr [ %.0199787, %.preheader670 ], [ %.3, %bb.aa ] ; 8 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !249   ; 2 uses
  %.not221 = icmp eq ptr %i.bi, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !245
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0636 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bk, %bb.d ] ; 3 uses
  %i.bl = load ptr, ptr %7, align 8, !tbaa !18, !noalias !449 ; 2 uses
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !449
  %i.bn = mul i64 %i.bm, %i.ap
  %i.bo = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !449
  %i.bp = mul i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp ; 2 uses
  br i1 %i.aq, label %.preheader667.lr.ph, label %.preheader669

.preheader667.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.br = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  %.neg660 = add nuw nsw i32 %.0197786, 1
  %i.bt = load i32, ptr %16, align 4, !tbaa !68
  %i.bu = shl i32 %i.bt, 4
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.bs, label %.preheader667.lr.ph.split.us, label %.preheader667.preheader

.preheader667.preheader:                          ; preds = %.preheader667.lr.ph
  %i.bw = mul nsw i64 %i.bc, %i.bv
  %i.bx = getelementptr i8, ptr %i.bl, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.bw
  br label %.preheader669

.preheader667.lr.ph.split.us:                     ; preds = %.preheader667.lr.ph
  %i.by = load i32, ptr %9, align 4, !tbaa !68
  %i.bz = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op712.us = sub i32 %.neg658, %i.bz
  br label %.preheader667.us

.preheader667.us:                                 ; preds = %._crit_edge.us, %.preheader667.lr.ph.split.us
  %indvars.iv813 = phi i64 [ %indvars.iv.next814, %._crit_edge.us ], [ 0, %.preheader667.lr.ph.split.us ] ; 6 uses
  %.0194718.us = phi ptr [ %i.hh, %._crit_edge.us ], [ %i.bq, %.preheader667.lr.ph.split.us ] ; 3 uses
  %.0620717.us = phi <4 x float> [ %.5.us, %._crit_edge.us ], [ zeroinitializer, %.preheader667.lr.ph.split.us ]
  %.0624716.us = phi <4 x float> [ %.5629.us, %._crit_edge.us ], [ zeroinitializer, %.preheader667.lr.ph.split.us ]
  %.0630715.us = phi <4 x float> [ %.5635.us, %._crit_edge.us ], [ zeroinitializer, %.preheader667.lr.ph.split.us ]
  %.1637714.us = phi <4 x float> [ %.6642.us, %._crit_edge.us ], [ %.0636, %.preheader667.lr.ph.split.us ]
  %i.ca = or disjoint i64 %indvars.iv813, 3
  %i.cb = or disjoint i64 %indvars.iv813, 1
  %i.cc = or disjoint i64 %indvars.iv813, 2
  %i.cd = lshr exact i64 %indvars.iv813, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader667.us, %.loopexit664.us
  %.0192707.us = phi i32 [ 0, %.preheader667.us ], [ %i.cj, %.loopexit664.us ] ; 3 uses
  %.1621706.us = phi <4 x float> [ %.0620717.us, %.preheader667.us ], [ %.5.us, %.loopexit664.us ] ; 6 uses
  %.1625705.us = phi <4 x float> [ %.0624716.us, %.preheader667.us ], [ %.5629.us, %.loopexit664.us ] ; 6 uses
  %.1631704.us = phi <4 x float> [ %.0630715.us, %.preheader667.us ], [ %.5635.us, %.loopexit664.us ] ; 6 uses
  %.2638703.us = phi <4 x float> [ %.1637714.us, %.preheader667.us ], [ %.6642.us, %.loopexit664.us ] ; 6 uses
  %i.ce = mul nsw i32 %i.by, %.0192707.us
  %.reass713.us = add i32 %i.ce, %invariant.op712.us ; 3 uses
  %i.cf = icmp slt i32 %.reass713.us, 0
  br i1 %i.cf, label %.loopexit664.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ch = srem i32 %.reass713.us, %i.cg
  %i.ci = sdiv i32 %.reass713.us, %i.cg           ; 2 uses
  %.not231.us = icmp eq i32 %i.ch, 0
  %.not232.us = icmp slt i32 %i.ci, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader663.us, label %.loopexit664.us

.loopexit664.us:                                  ; preds = %bb.k, %bb.i, %.lr.ph.us, %.preheader663.us, %bb.f, %bb.e
  %.6642.us = phi nsz <4 x float> [ %.2638703.us, %bb.e ], [ %.2638703.us, %bb.f ], [ %.5641.us.us, %bb.i ], [ %.2638703.us, %.preheader663.us ], [ %.2638703.us, %.lr.ph.us ], [ %.5641.us691.us, %bb.k ] ; 3 uses
  %.5635.us = phi nsz <4 x float> [ %.1631704.us, %bb.e ], [ %.1631704.us, %bb.f ], [ %.4634.us.us, %bb.i ], [ %.1631704.us, %.preheader663.us ], [ %.1631704.us, %.lr.ph.us ], [ %.4634.us692.us, %bb.k ] ; 3 uses
  %.5629.us = phi nsz <4 x float> [ %.1625705.us, %bb.e ], [ %.1625705.us, %bb.f ], [ %.4628.us.us, %bb.i ], [ %.1625705.us, %.preheader663.us ], [ %.1625705.us, %.lr.ph.us ], [ %.4628.us693.us, %bb.k ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1621706.us, %bb.e ], [ %.1621706.us, %bb.f ], [ %.4.us.us, %bb.i ], [ %.1621706.us, %.preheader663.us ], [ %.1621706.us, %.lr.ph.us ], [ %.4.us694.us, %bb.k ] ; 3 uses
  %i.cj = add nuw nsw i32 %.0192707.us, 1         ; 2 uses
  %exitcond812.not = icmp eq i32 %i.cj, %i.br
  br i1 %exitcond812.not, label %._crit_edge.us, label %bb.e, !llvm.loop !452

.preheader663.us:                                 ; preds = %bb.f
  %i.ck = load i32, ptr %12, align 4, !tbaa !68   ; 4 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.us, label %.loopexit664.us

.lr.ph.us:                                        ; preds = %.preheader663.us
  %i.cm = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.cn = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us = sub i32 %.neg660, %i.cn      ; 2 uses
  %i.co = mul nuw nsw i32 %i.ck, %.0192707.us     ; 2 uses
  %i.cp = sext i32 %i.ci to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit664.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us682.us.preheader
  ]

.lr.ph.split.us682.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us682.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count810 = zext nneg i32 %i.ck to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.i
  %indvars.iv807 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next808, %bb.i ] ; 3 uses
  %.2622674.us.us = phi <4 x float> [ %.1621706.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.i ] ; 3 uses
  %.2626673.us.us = phi <4 x float> [ %.1625705.us, %.lr.ph.split.us.us.preheader ], [ %.4628.us.us, %bb.i ] ; 3 uses
  %.2632672.us.us = phi <4 x float> [ %.1631704.us, %.lr.ph.split.us.us.preheader ], [ %.4634.us.us, %bb.i ] ; 3 uses
  %.3639671.us.us = phi <4 x float> [ %.2638703.us, %.lr.ph.split.us.us.preheader ], [ %.5641.us.us, %bb.i ] ; 3 uses
  %i.cq = trunc i64 %indvars.iv807 to i32
  %i.cr = mul i32 %i.cm, %i.cq
  %.reass.us.us = add i32 %i.cr, %invariant.op.us ; 3 uses
  %i.cs = icmp slt i32 %.reass.us.us, 0
  br i1 %i.cs, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us
  %i.ct = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.cu = srem i32 %.reass.us.us, %i.ct
  %i.cv = sdiv i32 %.reass.us.us, %i.ct           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.cu, 0
  %.not234.us.us = icmp slt i32 %i.cv, %i.ad
  %or.cond871 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond871, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cw = trunc i64 %indvars.iv807 to i32
  %i.cx = add i32 %i.co, %i.cw
  %i.cy = shl nsw i32 %i.cx, 4
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0194718.us, i64 %i.cz ; 4 uses
  %i.db = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !453
  %i.dc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !453
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !453
  %i.de = mul i64 %i.dd, %i.cd
  %i.df = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !453 ; 2 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.cp
  %i.dk = mul i64 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = shl nsw i32 %i.cv, 2
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dn ; 4 uses
  %i.dp = load float, ptr %i.do, align 1, !tbaa !245
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dt = load float, ptr %i.ds, align 1, !tbaa !245
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dx = load float, ptr %i.dw, align 1, !tbaa !245
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.eb = load float, ptr %i.ea, align 1, !tbaa !245
  %i.ec = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = load <4 x float>, ptr %i.da, align 16, !tbaa !245
  %i.ef = fmul fast <4 x float> %i.ee, %i.dr
  %i.eg = fadd fast <4 x float> %i.ef, %.3639671.us.us
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !245
  %i.ej = fmul fast <4 x float> %i.ei, %i.dv
  %i.ek = fadd fast <4 x float> %i.ej, %.2632672.us.us
  %i.el = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !245
  %i.en = fmul fast <4 x float> %i.em, %i.dz
  %i.eo = fadd fast <4 x float> %i.en, %.2626673.us.us
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !245
  %i.er = fmul fast <4 x float> %i.eq, %i.ed
  %i.es = fadd fast <4 x float> %i.er, %.2622674.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.split.us.us
  %.5641.us.us = phi nsz <4 x float> [ %.3639671.us.us, %.lr.ph.split.us.us ], [ %i.eg, %bb.h ], [ %.3639671.us.us, %bb.g ] ; 2 uses
  %.4634.us.us = phi nsz <4 x float> [ %.2632672.us.us, %.lr.ph.split.us.us ], [ %i.ek, %bb.h ], [ %.2632672.us.us, %bb.g ] ; 2 uses
  %.4628.us.us = phi nsz <4 x float> [ %.2626673.us.us, %.lr.ph.split.us.us ], [ %i.eo, %bb.h ], [ %.2626673.us.us, %bb.g ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2622674.us.us, %.lr.ph.split.us.us ], [ %i.es, %bb.h ], [ %.2622674.us.us, %bb.g ] ; 2 uses
  %indvars.iv.next808 = add nuw nsw i64 %indvars.iv807, 1 ; 2 uses
  %exitcond811.not = icmp eq i64 %indvars.iv.next808, %wide.trip.count810
  br i1 %exitcond811.not, label %.loopexit664.us, label %.lr.ph.split.us.us, !llvm.loop !456

.lr.ph.split.us682.us:                            ; preds = %.lr.ph.split.us682.us.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us682.us.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.2622674.us684.us = phi <4 x float> [ %.1621706.us, %.lr.ph.split.us682.us.preheader ], [ %.4.us694.us, %bb.k ] ; 3 uses
  %.2626673.us685.us = phi <4 x float> [ %.1625705.us, %.lr.ph.split.us682.us.preheader ], [ %.4628.us693.us, %bb.k ] ; 3 uses
  %.2632672.us686.us = phi <4 x float> [ %.1631704.us, %.lr.ph.split.us682.us.preheader ], [ %.4634.us692.us, %bb.k ] ; 3 uses
  %.3639671.us687.us = phi <4 x float> [ %.2638703.us, %.lr.ph.split.us682.us.preheader ], [ %.5641.us691.us, %bb.k ] ; 3 uses
  %i.et = trunc i64 %indvars.iv to i32
  %i.eu = mul i32 %i.cm, %i.et
  %.reass.us688.us = add i32 %i.eu, %invariant.op.us ; 3 uses
  %i.ev = icmp slt i32 %.reass.us688.us, 0
  br i1 %i.ev, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us682.us
  %i.ew = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.ex = srem i32 %.reass.us688.us, %i.ew
  %i.ey = sdiv i32 %.reass.us688.us, %i.ew        ; 2 uses
  %.not233.us689.us = icmp eq i32 %i.ex, 0
  %.not234.us690.us = icmp slt i32 %i.ey, %i.ad
  %or.cond872 = select i1 %.not233.us689.us, i1 %.not234.us690.us, i1 false
  br i1 %or.cond872, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.k

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.j
  %i.ez = trunc i64 %indvars.iv to i32
  %i.fa = add i32 %i.co, %i.ez
  %i.fb = shl nsw i32 %i.fa, 4
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0194718.us, i64 %i.fc ; 4 uses
  %i.fe = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !457
  %i.ff = load ptr, ptr %4, align 8, !tbaa !18, !noalias !457 ; 4 uses
  %i.fg = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !457 ; 4 uses
  %i.fh = mul i64 %i.fg, %indvars.iv813
  %i.fi = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !457 ; 5 uses
  %i.fj = mul i64 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fj
  %i.fl = sext i32 %i.fe to i64
  %i.fm = mul nsw i64 %i.fl, %i.cp
  %i.fn = mul i64 %i.fm, %i.fi                    ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fn
  %i.fp = sext i32 %i.ey to i64                   ; 4 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !39
  %i.fs = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = mul i64 %i.fg, %i.cb
  %i.fv = mul i64 %i.fu, %i.fi
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fp
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !39
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = mul i64 %i.fg, %i.cc
  %i.gd = mul i64 %i.gc, %i.fi
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fn
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.fp
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !39
  %i.gi = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = mul i64 %i.fg, %i.ca
  %i.gl = mul i64 %i.gk, %i.fi
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.fn
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.fp
  %i.gp = load float, ptr %i.go, align 4, !tbaa !39
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gs = load <4 x float>, ptr %i.fd, align 16, !tbaa !245
  %i.gt = fmul fast <4 x float> %i.gs, %i.ft
  %i.gu = fadd fast <4 x float> %i.gt, %.3639671.us687.us
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !tbaa !245
  %i.gx = fmul fast <4 x float> %i.gw, %i.gb
  %i.gy = fadd fast <4 x float> %i.gx, %.2632672.us686.us
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ha = load <4 x float>, ptr %i.gz, align 16, !tbaa !245
  %i.hb = fmul fast <4 x float> %i.ha, %i.gj
  %i.hc = fadd fast <4 x float> %i.hb, %.2626673.us685.us
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.he = load <4 x float>, ptr %i.hd, align 16, !tbaa !245
  %i.hf = fmul fast <4 x float> %i.he, %i.gr
  %i.hg = fadd fast <4 x float> %i.hf, %.2622674.us684.us
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.j, %.lr.ph.split.us682.us
  %.5641.us691.us = phi nsz <4 x float> [ %.3639671.us687.us, %.lr.ph.split.us682.us ], [ %.3639671.us687.us, %bb.j ], [ %i.gu, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4634.us692.us = phi nsz <4 x float> [ %.2632672.us686.us, %.lr.ph.split.us682.us ], [ %.2632672.us686.us, %bb.j ], [ %i.gy, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4628.us693.us = phi nsz <4 x float> [ %.2626673.us685.us, %.lr.ph.split.us682.us ], [ %.2626673.us685.us, %bb.j ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us694.us = phi nsz <4 x float> [ %.2622674.us684.us, %.lr.ph.split.us682.us ], [ %.2622674.us684.us, %bb.j ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit664.us, label %.lr.ph.split.us682.us, !llvm.loop !456

._crit_edge.us:                                   ; preds = %.loopexit664.us
  %i.hh = getelementptr inbounds [4 x i8], ptr %.0194718.us, i64 %i.bv ; 2 uses
  %indvars.iv.next814 = add nuw nsw i64 %indvars.iv813, 4 ; 2 uses
  %i.hi = icmp slt i64 %indvars.iv.next814, %invariant.op
  br i1 %i.hi, label %.preheader667.us, label %.preheader669.loopexit, !llvm.loop !460

.preheader669.loopexit:                           ; preds = %._crit_edge.us
  %i.hj = fadd fast <4 x float> %.5.us, %.5629.us
  br label %.preheader669

.preheader669:                                    ; preds = %.preheader667.preheader, %.preheader669.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1637.lcssa = phi <4 x float> [ %.0636, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6642.us, %.preheader669.loopexit ], [ %.0636, %.preheader667.preheader ] ; 3 uses
  %.0630.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5635.us, %.preheader669.loopexit ], [ zeroinitializer, %.preheader667.preheader ] ; 3 uses
  %.0620.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.hj, %.preheader669.loopexit ], [ zeroinitializer, %.preheader667.preheader ]
  %.0194.lcssa = phi ptr [ %i.bq, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.hh, %.preheader669.loopexit ], [ %scevgep, %.preheader667.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bg, %.preheader669.loopexit ], [ %i.be, %.preheader667.preheader ] ; 6 uses
  %i.hk = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.hl = icmp slt i32 %i.hk, %i.ac
  br i1 %i.hl, label %.preheader666.lr.ph, label %.preheader668

.preheader666.lr.ph:                              ; preds = %.preheader669
  %i.hm = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  %.neg656 = add nuw nsw i32 %.0197786, 1
  %i.ho = load i32, ptr %16, align 4, !tbaa !68
  %i.hp = shl i32 %i.ho, 3
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  br i1 %i.hn, label %.preheader666.lr.ph.split.us, label %.preheader666.preheader

.preheader666.preheader:                          ; preds = %.preheader666.lr.ph
  %20 = add i32 %.0193.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %20)
  %21 = add i32 %smax, -2
  %i.hr = sub i32 %21, %.0193.lcssa               ; 2 uses
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = add nuw nsw i64 %i.hu, 4
  %i.hw = mul i64 %i.hv, %i.hq
  %scevgep816 = getelementptr i8, ptr %.0194.lcssa, i64 %i.hw
  %i.hx = add i32 %.0193.lcssa, 2
  %i.hy = and i32 %i.hr, -2
  %i.hz = add i32 %i.hx, %i.hy
  br label %.preheader668

.preheader666.lr.ph.split.us:                     ; preds = %.preheader666.lr.ph
  %i.ia = load i32, ptr %9, align 4, !tbaa !68
  %i.ib = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op750.us = sub i32 %.neg658, %i.ib
  %i.ic = zext i32 %.0193.lcssa to i64
  %i.id = zext nneg i32 %i.hk to i64
  br label %.preheader666.us

.preheader666.us:                                 ; preds = %._crit_edge.us762, %.preheader666.lr.ph.split.us
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %._crit_edge.us762 ], [ %i.ic, %.preheader666.lr.ph.split.us ] ; 2 uses
  %i.ie = phi i64 [ %i.ki, %._crit_edge.us762 ], [ %i.id, %.preheader666.lr.ph.split.us ]
  %.1195754.us = phi ptr [ %i.kh, %._crit_edge.us762 ], [ %.0194.lcssa, %.preheader666.lr.ph.split.us ] ; 2 uses
  %.6753.us = phi <4 x float> [ %.10.us, %._crit_edge.us762 ], [ %.0630.lcssa, %.preheader666.lr.ph.split.us ]
  %.7643752.us = phi <4 x float> [ %.11.us, %._crit_edge.us762 ], [ %.1637.lcssa, %.preheader666.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader666.us, %.loopexit662.us
  %.0190746.us = phi i32 [ 0, %.preheader666.us ], [ %i.ka, %.loopexit662.us ] ; 3 uses
  %.7745.us = phi <4 x float> [ %.6753.us, %.preheader666.us ], [ %.10.us, %.loopexit662.us ] ; 4 uses
  %.8644744.us = phi <4 x float> [ %.7643752.us, %.preheader666.us ], [ %.11.us, %.loopexit662.us ] ; 4 uses
  %i.if = mul nsw i32 %i.ia, %.0190746.us
  %.reass751.us = add i32 %i.if, %invariant.op750.us ; 3 uses
  %i.ig = icmp slt i32 %.reass751.us, 0
  br i1 %i.ig, label %.loopexit662.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ih = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ii = srem i32 %.reass751.us, %i.ih
  %i.ij = sdiv i32 %.reass751.us, %i.ih           ; 2 uses
  %.not227.us = icmp eq i32 %i.ii, 0
  %.not228.us = icmp slt i32 %i.ij, %i.ae
  %or.cond873 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond873, label %.preheader661.us, label %.loopexit662.us

bb.n:                                             ; preds = %.lr.ph.us760, %bb.p
  %indvars.iv817 = phi i64 [ 0, %.lr.ph.us760 ], [ %indvars.iv.next818, %bb.p ] ; 3 uses
  %.8741.us = phi <4 x float> [ %.7745.us, %.lr.ph.us760 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9645740.us = phi <4 x float> [ %.8644744.us, %.lr.ph.us760 ], [ %.10646.us, %bb.p ] ; 3 uses
  %i.ik = trunc i64 %indvars.iv817 to i32
  %i.il = mul i32 %i.kd, %i.ik
  %.reass.us = add i32 %i.il, %invariant.op.us761 ; 3 uses
  %i.im = icmp slt i32 %.reass.us, 0
  br i1 %i.im, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.io = srem i32 %.reass.us, %i.in
  %i.ip = sdiv i32 %.reass.us, %i.in              ; 2 uses
  %.not229.us = icmp eq i32 %i.io, 0
  %.not230.us = icmp slt i32 %i.ip, %i.ad
  %or.cond874 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond874, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.iq = trunc i64 %indvars.iv817 to i32
  %i.ir = add i32 %i.kf, %i.iq
  %i.is = shl nsw i32 %i.ir, 3
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.1195754.us, i64 %i.it ; 2 uses
  %i.iv = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !461
  %i.iw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !461 ; 2 uses
  %i.ix = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !461 ; 2 uses
  %i.iy = mul i64 %i.ix, %indvars.iv823
  %i.iz = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !461 ; 3 uses
  %i.ja = mul i64 %i.iy, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.ja
  %i.jc = sext i32 %i.iv to i64
  %i.jd = mul nsw i64 %i.jc, %i.kg
  %i.je = mul i64 %i.jd, %i.iz                    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.je
  %i.jg = mul i64 %i.ix, %i.ie
  %i.jh = mul i64 %i.jg, %i.iz
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jh
  %i.jj = sext i32 %i.ip to i64                   ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.je
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.jj
  %i.jn = load float, ptr %i.jk, align 4, !tbaa !39
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jq = load float, ptr %i.jm, align 4, !tbaa !39
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = load <4 x float>, ptr %i.iu, align 16, !tbaa !245
  %i.ju = fmul fast <4 x float> %i.jp, %i.jt
  %i.jv = fadd fast <4 x float> %i.ju, %.9645740.us
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !245
  %i.jy = fmul fast <4 x float> %i.js, %i.jx
  %i.jz = fadd fast <4 x float> %i.jy, %.8741.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10646.us = phi nsz <4 x float> [ %.9645740.us, %bb.n ], [ %i.jv, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9645740.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8741.us, %bb.n ], [ %i.jz, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8741.us, %bb.o ] ; 2 uses
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 1 ; 2 uses
  %exitcond821.not = icmp eq i64 %indvars.iv.next818, %wide.trip.count820
  br i1 %exitcond821.not, label %.loopexit662.us, label %bb.n, !llvm.loop !464

.loopexit662.us:                                  ; preds = %bb.p, %.preheader661.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8644744.us, %bb.l ], [ %.8644744.us, %bb.m ], [ %.8644744.us, %.preheader661.us ], [ %.10646.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7745.us, %bb.l ], [ %.7745.us, %bb.m ], [ %.7745.us, %.preheader661.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.ka = add nuw nsw i32 %.0190746.us, 1         ; 2 uses
  %exitcond822.not = icmp eq i32 %i.ka, %i.hm
  br i1 %exitcond822.not, label %._crit_edge.us762, label %bb.l, !llvm.loop !465

.preheader661.us:                                 ; preds = %bb.m
  %i.kb = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph.us760, label %.loopexit662.us

.lr.ph.us760:                                     ; preds = %.preheader661.us
  %i.kd = load i32, ptr %13, align 4, !tbaa !68
  %i.ke = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us761 = sub i32 %.neg656, %i.ke
  %i.kf = mul nuw nsw i32 %i.kb, %.0190746.us
  %i.kg = sext i32 %i.ij to i64
  %wide.trip.count820 = zext nneg i32 %i.kb to i64
  br label %bb.n

._crit_edge.us762:                                ; preds = %.loopexit662.us
  %i.kh = getelementptr inbounds [4 x i8], ptr %.1195754.us, i64 %i.hq ; 2 uses
  %indvars.iv.next824 = add nuw nsw i64 %indvars.iv823, 2 ; 3 uses
  %i.ki = or disjoint i64 %indvars.iv.next824, 1  ; 2 uses
  %i.kj = trunc nuw i64 %i.ki to i32
  %i.kk = icmp sgt i32 %i.ac, %i.kj
  br i1 %i.kk, label %.preheader666.us, label %.preheader668.loopexit, !llvm.loop !466

.preheader668.loopexit:                           ; preds = %._crit_edge.us762
  %i.kl = trunc nuw i64 %indvars.iv.next824 to i32
  br label %.preheader668

.preheader668:                                    ; preds = %.preheader666.preheader, %.preheader668.loopexit, %.preheader669
  %.7643.lcssa = phi <4 x float> [ %.1637.lcssa, %.preheader669 ], [ %.11.us, %.preheader668.loopexit ], [ %.1637.lcssa, %.preheader666.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0630.lcssa, %.preheader669 ], [ %.10.us, %.preheader668.loopexit ], [ %.0630.lcssa, %.preheader666.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader669 ], [ %i.kh, %.preheader668.loopexit ], [ %scevgep816, %.preheader666.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader669 ], [ %i.kl, %.preheader668.loopexit ], [ %i.hz, %.preheader666.preheader ] ; 2 uses
  %i.km = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.km, label %.preheader665.lr.ph, label %._crit_edge777

.preheader665.lr.ph:                              ; preds = %.preheader668
  %i.kn = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  %.neg652 = add nuw nsw i32 %.0197786, 1
  %i.kp = load i32, ptr %16, align 4, !tbaa !68
  %i.kq = shl nsw i32 %i.kp, 2
  %i.kr = sext i32 %i.kq to i64
  br i1 %i.ko, label %.preheader665.lr.ph.split.us, label %._crit_edge777

.preheader665.lr.ph.split.us:                     ; preds = %.preheader665.lr.ph
  %i.ks = load i32, ptr %9, align 4, !tbaa !68
  %i.kt = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op772.us = sub i32 %.neg658, %i.kt
  %i.ku = zext i32 %.1.lcssa to i64
  br label %.preheader665.us

.preheader665.us:                                 ; preds = %._crit_edge.us783, %.preheader665.lr.ph.split.us
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %._crit_edge.us783 ], [ %i.ku, %.preheader665.lr.ph.split.us ] ; 2 uses
  %.2196775.us = phi ptr [ %i.ml, %._crit_edge.us783 ], [ %.1195.lcssa, %.preheader665.lr.ph.split.us ] ; 2 uses
  %.12774.us = phi <4 x float> [ %.16.us, %._crit_edge.us783 ], [ %.7643.lcssa, %.preheader665.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader665.us, %.loopexit.us
  %.0188769.us = phi i32 [ 0, %.preheader665.us ], [ %i.me, %.loopexit.us ] ; 3 uses
  %.13768.us = phi <4 x float> [ %.12774.us, %.preheader665.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.kv = mul nsw i32 %i.ks, %.0188769.us
  %.reass773.us = add i32 %i.kv, %invariant.op772.us ; 3 uses
  %i.kw = icmp slt i32 %.reass773.us, 0
  br i1 %i.kw, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kx = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ky = srem i32 %.reass773.us, %i.kx
  %i.kz = sdiv i32 %.reass773.us, %i.kx           ; 2 uses
  %.not223.us = icmp eq i32 %i.ky, 0
  %.not224.us = icmp slt i32 %i.kz, %i.ae
  %or.cond875 = select i1 %.not223.us, i1 %.not224.us, i1 false
  br i1 %or.cond875, label %.preheader.us, label %.loopexit.us

bb.s:                                             ; preds = %.lr.ph.us780, %bb.v
  %indvars.iv826 = phi i64 [ 0, %.lr.ph.us780 ], [ %indvars.iv.next827, %bb.v ] ; 3 uses
  %.14766.us = phi <4 x float> [ %.13768.us, %.lr.ph.us780 ], [ %.15.us, %bb.v ] ; 3 uses
  %i.la = trunc i64 %indvars.iv826 to i32
  %i.lb = mul i32 %i.mh, %i.la
  %.reass.us779 = add i32 %i.lb, %invariant.op.us781 ; 3 uses
  %i.lc = icmp slt i32 %.reass.us779, 0
  br i1 %i.lc, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.sa = fmul fast <4 x float> %i.rz, %i.rs
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3E2AAAAA)
  %i.sc = fmul fast <4 x float> %i.sb, %i.rs
  %i.sd = fadd fast <4 x float> %i.sc, splat (float 5.000000e-01)
  %i.se = fmul fast <4 x float> %i.rt, %i.sd
  %i.sf = fadd fast <4 x float> %i.rs, %i.se
  %i.sg = fadd fast <4 x float> %i.sf, splat (float 1.000000e+00)
  %i.sh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rq)
  %i.si = shl <4 x i32> %i.sh, splat (i32 23)
  %i.sj = add <4 x i32> %i.si, splat (i32 1065353216)
  %i.sk = bitcast <4 x i32> %i.sj to <4 x float>
  %i.sl = fmul fast <4 x float> %i.sg, %i.sk
  %i.sm = fadd fast <4 x float> %i.sl, splat (float 1.000000e+00)
  %i.sn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sm
  %i.so = fadd fast <4 x float> %i.sn, splat (float -1.000000e+00)
  %i.sp = fmul fast <4 x float> %i.so, %i.mp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge777
  %i.sq = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sv = load float, ptr %i.su, align 4, !tbaa !39
  %i.sw = insertelement <4 x float> poison, float %i.sv, i64 0
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sy = fmul fast <4 x float> %i.st, %i.mp
  %i.sz = fadd fast <4 x float> %i.sy, %i.sx
  %i.ta = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.sz, <4 x float> zeroinitializer)
  %i.tb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ta, <4 x float> splat (float 1.000000e+00))
  %i.tc = fmul fast <4 x float> %i.tb, %i.mp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge777
  %.0.i = phi nsz <4 x float> [ %i.tc, %bb.y ], [ %i.mr, %bb.w ], [ %i.mz, %.noexc308 ], [ %i.nj, %bb.x ], [ %i.oq, %.noexc309 ], [ %i.sp, %.noexc310 ], [ %i.mp, %._crit_edge777 ] ; 5 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1200785, align 1, !tbaa !245
  %i.td = getelementptr inbounds nuw i8, ptr %.1200785, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1200785, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.te = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %.1200785, i64 %i.te
  store float %.sroa.0.4.vec.extract, ptr %i.tf, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.te, 3
  %i.tg = getelementptr inbounds nuw i8, ptr %.1200785, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.tg, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx222 = mul i64 %i.te, 12
  %i.th = getelementptr inbounds nuw i8, ptr %.1200785, i64 %.idx222
  store float %.sroa.0.12.vec.extract, ptr %i.th, align 4, !tbaa !39
  %i.ti = getelementptr inbounds nuw i8, ptr %.1200785, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.ti, %bb.z ], [ %.1200785, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.td, %.thread ] ; 2 uses
  %i.tj = add nuw nsw i32 %.0197786, 1            ; 2 uses
  %exitcond835.not = icmp eq i32 %i.tj, %i.af
  br i1 %exitcond835.not, label %._crit_edge, label %bb.c, !llvm.loop !473

._crit_edge792:                                   ; preds = %._crit_edge789.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge792, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #14

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %.not802 = icmp sgt i32 %i.k, %i.j
  br i1 %.not802, label %._crit_edge804, label %.noexc299.lr.ph

.noexc299.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !216
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc299, label %._crit_edge804

.noexc299:                                        ; preds = %.noexc299.lr.ph, %._crit_edge801.split
  %.0202803 = phi i32 [ %i.bi, %._crit_edge801.split ], [ %i.k, %.noexc299.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !67
  %.fr = freeze i32 %i.aa                         ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !69
  %i.ac = mul i32 %i.ab, %.fr                     ; 8 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 4 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !216 ; 3 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !216 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !67  ; 2 uses
  %i.ai = icmp sgt i32 %i.ag, 0
  br i1 %i.ai, label %.preheader682.lr.ph, label %._crit_edge801.split

.preheader682.lr.ph:                              ; preds = %.noexc299
  %i.aj = load i32, ptr %3, align 4, !tbaa !68
  %i.ak = shl nsw i32 %.0202803, 2
  %i.al = add nsw i32 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp sgt i32 %i.af, 0
  %i.an = sext i32 %i.al to i64
  %i.ao = sdiv i32 %i.al, 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.am, label %.preheader682.preheader, label %._crit_edge801.split

.preheader682.preheader:                          ; preds = %.preheader682.lr.ph
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18, !noalias !474
  %i.as = load i64, ptr %i.s, align 8, !tbaa !20, !noalias !474
  %i.at = sdiv i32 %i.al, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !57, !noalias !474
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ax
  %i.az = add i32 %i.ac, -4                       ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2147483646
  %narrow = add nuw i32 %i.bb, 2
  %i.bc = zext i32 %narrow to i64
  %i.bd = and i32 %i.az, -4
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.ac to i64
  %i.bg = and i32 %i.az, -4
  %i.bh = add i32 %i.bg, 4
  %invariant.op = add nsw i64 %i.bf, -3
  br label %.preheader682

.preheader682:                                    ; preds = %.preheader682.preheader, %._crit_edge
  %.0198800 = phi i32 [ %.neg670, %._crit_edge ], [ 0, %.preheader682.preheader ]
  %.0199799 = phi ptr [ %.3, %._crit_edge ], [ %i.ay, %.preheader682.preheader ]
  %.neg670 = add nuw nsw i32 %.0198800, 1         ; 5 uses
  br label %bb.c

._crit_edge801.split:                             ; preds = %._crit_edge, %.preheader682.lr.ph, %.noexc299
  %i.bi = add i32 %.0202803, 1
  %exitcond849.not = icmp eq i32 %.0202803, %i.j
  br i1 %exitcond849.not, label %._crit_edge804, label %.noexc299, !llvm.loop !477

._crit_edge:                                      ; preds = %bb.aa
  %exitcond848.not = icmp eq i32 %.neg670, %i.ag
  br i1 %exitcond848.not, label %._crit_edge801.split, label %.preheader682, !llvm.loop !478

bb.c:                                             ; preds = %.preheader682, %bb.aa
  %.0197798 = phi i32 [ 0, %.preheader682 ], [ %i.wn, %bb.aa ] ; 4 uses
  %.1200797 = phi ptr [ %.0199799, %.preheader682 ], [ %.3, %bb.aa ] ; 8 uses
  %i.bj = load ptr, ptr %6, align 8, !tbaa !249   ; 2 uses
  %.not221 = icmp eq ptr %i.bj, null
  br i1 %.not221, label %_ZN4ncnn3MatD2Ev.exit242, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.an
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !245
  br label %_ZN4ncnn3MatD2Ev.exit242

_ZN4ncnn3MatD2Ev.exit242:                         ; preds = %bb.d, %bb.c
  %.0648 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.bl, %bb.d ] ; 3 uses
  %i.bm = load ptr, ptr %7, align 8, !tbaa !18, !noalias !479 ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !479
  %i.bo = mul i64 %i.bn, %i.ap
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !57, !noalias !479
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq ; 2 uses
  br i1 %i.aq, label %.preheader679.lr.ph, label %.preheader681

.preheader679.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit242
  %i.bs = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %.neg672 = add nuw nsw i32 %.0197798, 1
  %i.bu = load i32, ptr %16, align 4, !tbaa !68
  %i.bv = shl i32 %i.bu, 4
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  br i1 %i.bt, label %.preheader679.lr.ph.split.us, label %.preheader679.preheader

.preheader679.preheader:                          ; preds = %.preheader679.lr.ph
  %i.bx = mul nsw i64 %i.bc, %i.bw
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bx
  br label %.preheader681

.preheader679.lr.ph.split.us:                     ; preds = %.preheader679.lr.ph
  %i.bz = load i32, ptr %9, align 4, !tbaa !68
  %i.ca = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op724.us = sub i32 %.neg670, %i.ca
  br label %.preheader679.us

.preheader679.us:                                 ; preds = %._crit_edge.us, %.preheader679.lr.ph.split.us
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %._crit_edge.us ], [ 0, %.preheader679.lr.ph.split.us ] ; 6 uses
  %.0194730.us = phi ptr [ %i.jg, %._crit_edge.us ], [ %i.br, %.preheader679.lr.ph.split.us ] ; 3 uses
  %.0632729.us = phi <4 x float> [ %.5.us, %._crit_edge.us ], [ zeroinitializer, %.preheader679.lr.ph.split.us ]
  %.0636728.us = phi <4 x float> [ %.5641.us, %._crit_edge.us ], [ zeroinitializer, %.preheader679.lr.ph.split.us ]
  %.0642727.us = phi <4 x float> [ %.5647.us, %._crit_edge.us ], [ zeroinitializer, %.preheader679.lr.ph.split.us ]
  %.1649726.us = phi <4 x float> [ %.6654.us, %._crit_edge.us ], [ %.0648, %.preheader679.lr.ph.split.us ]
  %i.cb = or disjoint i64 %indvars.iv825, 3
  %i.cc = or disjoint i64 %indvars.iv825, 1
  %i.cd = or disjoint i64 %indvars.iv825, 2
  %i.ce = lshr exact i64 %indvars.iv825, 2
  br label %bb.e

bb.e:                                             ; preds = %.preheader679.us, %.loopexit676.us
  %.0192719.us = phi i32 [ 0, %.preheader679.us ], [ %i.ck, %.loopexit676.us ] ; 3 uses
  %.1633718.us = phi <4 x float> [ %.0632729.us, %.preheader679.us ], [ %.5.us, %.loopexit676.us ] ; 6 uses
  %.1637717.us = phi <4 x float> [ %.0636728.us, %.preheader679.us ], [ %.5641.us, %.loopexit676.us ] ; 6 uses
  %.1643716.us = phi <4 x float> [ %.0642727.us, %.preheader679.us ], [ %.5647.us, %.loopexit676.us ] ; 6 uses
  %.2650715.us = phi <4 x float> [ %.1649726.us, %.preheader679.us ], [ %.6654.us, %.loopexit676.us ] ; 6 uses
  %i.cf = mul nsw i32 %i.bz, %.0192719.us
  %.reass725.us = add i32 %i.cf, %invariant.op724.us ; 3 uses
  %i.cg = icmp slt i32 %.reass725.us, 0
  br i1 %i.cg, label %.loopexit676.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.ci = srem i32 %.reass725.us, %i.ch
  %i.cj = sdiv i32 %.reass725.us, %i.ch           ; 2 uses
  %.not231.us = icmp eq i32 %i.ci, 0
  %.not232.us = icmp slt i32 %i.cj, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader675.us, label %.loopexit676.us

.loopexit676.us:                                  ; preds = %bb.k, %bb.i, %.lr.ph.us, %.preheader675.us, %bb.f, %bb.e
  %.6654.us = phi nsz <4 x float> [ %.2650715.us, %bb.e ], [ %.2650715.us, %bb.f ], [ %.5653.us.us, %bb.i ], [ %.2650715.us, %.preheader675.us ], [ %.2650715.us, %.lr.ph.us ], [ %.5653.us703.us, %bb.k ] ; 3 uses
  %.5647.us = phi nsz <4 x float> [ %.1643716.us, %bb.e ], [ %.1643716.us, %bb.f ], [ %.4646.us.us, %bb.i ], [ %.1643716.us, %.preheader675.us ], [ %.1643716.us, %.lr.ph.us ], [ %.4646.us704.us, %bb.k ] ; 3 uses
  %.5641.us = phi nsz <4 x float> [ %.1637717.us, %bb.e ], [ %.1637717.us, %bb.f ], [ %.4640.us.us, %bb.i ], [ %.1637717.us, %.preheader675.us ], [ %.1637717.us, %.lr.ph.us ], [ %.4640.us705.us, %bb.k ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1633718.us, %bb.e ], [ %.1633718.us, %bb.f ], [ %.4.us.us, %bb.i ], [ %.1633718.us, %.preheader675.us ], [ %.1633718.us, %.lr.ph.us ], [ %.4.us706.us, %bb.k ] ; 3 uses
  %i.ck = add nuw nsw i32 %.0192719.us, 1         ; 2 uses
  %exitcond824.not = icmp eq i32 %i.ck, %i.bs
  br i1 %exitcond824.not, label %._crit_edge.us, label %bb.e, !llvm.loop !482

.preheader675.us:                                 ; preds = %bb.f
  %i.cl = load i32, ptr %12, align 4, !tbaa !68   ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %.loopexit676.us

.lr.ph.us:                                        ; preds = %.preheader675.us
  %i.cn = load i32, ptr %13, align 4, !tbaa !68   ; 2 uses
  %i.co = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us = sub i32 %.neg672, %i.co      ; 2 uses
  %i.cp = mul nuw nsw i32 %i.cl, %.0192719.us     ; 2 uses
  %i.cq = sext i32 %i.cj to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit676.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us694.us.preheader
  ]

.lr.ph.split.us694.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us694.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count822 = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.i
  %indvars.iv819 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next820, %bb.i ] ; 3 uses
  %.2634686.us.us = phi <4 x float> [ %.1633718.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.i ] ; 3 uses
  %.2638685.us.us = phi <4 x float> [ %.1637717.us, %.lr.ph.split.us.us.preheader ], [ %.4640.us.us, %bb.i ] ; 3 uses
  %.2644684.us.us = phi <4 x float> [ %.1643716.us, %.lr.ph.split.us.us.preheader ], [ %.4646.us.us, %bb.i ] ; 3 uses
  %.3651683.us.us = phi <4 x float> [ %.2650715.us, %.lr.ph.split.us.us.preheader ], [ %.5653.us.us, %bb.i ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv819 to i32
  %i.cs = mul i32 %i.cn, %i.cr
  %.reass.us.us = add i32 %i.cs, %invariant.op.us ; 3 uses
  %i.ct = icmp slt i32 %.reass.us.us, 0
  br i1 %i.ct, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.us
  %i.cu = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.cv = srem i32 %.reass.us.us, %i.cu
  %i.cw = sdiv i32 %.reass.us.us, %i.cu           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.cv, 0
  %.not234.us.us = icmp slt i32 %i.cw, %i.ad
  %or.cond883 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond883, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cx = trunc i64 %indvars.iv819 to i32
  %i.cy = add i32 %i.cp, %i.cx
  %i.cz = shl nsw i32 %i.cy, 4
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0194730.us, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !483
  %i.dd = load ptr, ptr %4, align 8, !tbaa !18, !noalias !483
  %i.de = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !483
  %i.df = mul i64 %i.de, %i.ce
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !483 ; 2 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = mul nsw i64 %i.dj, %i.cq
  %i.dl = mul i64 %i.dk, %i.dg
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = shl nsw i32 %i.cw, 2
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !328
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 16
  %i.dt = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %i.du = bitcast <4 x i32> %i.dt to <4 x float>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !328
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw i32 %i.dy, 16
  %i.ea = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %i.eb = bitcast <4 x i32> %i.ea to <4 x float>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ee = load <2 x i16>, ptr %i.ed, align 2, !tbaa !328
  %i.ef = zext <2 x i16> %i.ee to <2 x i32>
  %i.eg = shl nuw <2 x i32> %i.ef, splat (i32 16) ; 2 uses
  %i.eh = bitcast <2 x i32> %i.eg to <2 x float>
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ej = bitcast <2 x i32> %i.eg to <2 x float>
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.el = load i64, ptr %i.db, align 1, !tbaa !245
  %i.em = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %i.en = bitcast <2 x i64> %i.em to <8 x i16>
  %i.eo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.en, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ep = bitcast <8 x i16> %i.eo to <4 x float>
  %i.eq = fmul fast <4 x float> %i.dv, %i.ep
  %i.er = fadd fast <4 x float> %i.eq, %.3651683.us.us
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.et = load i64, ptr %i.es, align 1, !tbaa !245
  %i.eu = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %i.ev = bitcast <2 x i64> %i.eu to <8 x i16>
  %i.ew = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ex = bitcast <8 x i16> %i.ew to <4 x float>
  %i.ey = fmul fast <4 x float> %i.ec, %i.ex
  %i.ez = fadd fast <4 x float> %i.ey, %.2644684.us.us
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.fb = load i64, ptr %i.fa, align 1, !tbaa !245
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = bitcast <2 x i64> %i.fc to <8 x i16>
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x float>
  %i.fg = fmul fast <4 x float> %i.ei, %i.ff
  %i.fh = fadd fast <4 x float> %i.fg, %.2638685.us.us
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.fj = load i64, ptr %i.fi, align 1, !tbaa !245
  %i.fk = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fl = bitcast <2 x i64> %i.fk to <8 x i16>
  %i.fm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fn = bitcast <8 x i16> %i.fm to <4 x float>
  %i.fo = fmul fast <4 x float> %i.ek, %i.fn
  %i.fp = fadd fast <4 x float> %i.fo, %.2634686.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.split.us.us
  %.5653.us.us = phi nsz <4 x float> [ %.3651683.us.us, %.lr.ph.split.us.us ], [ %i.er, %bb.h ], [ %.3651683.us.us, %bb.g ] ; 2 uses
  %.4646.us.us = phi nsz <4 x float> [ %.2644684.us.us, %.lr.ph.split.us.us ], [ %i.ez, %bb.h ], [ %.2644684.us.us, %bb.g ] ; 2 uses
  %.4640.us.us = phi nsz <4 x float> [ %.2638685.us.us, %.lr.ph.split.us.us ], [ %i.fh, %bb.h ], [ %.2638685.us.us, %bb.g ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2634686.us.us, %.lr.ph.split.us.us ], [ %i.fp, %bb.h ], [ %.2634686.us.us, %bb.g ] ; 2 uses
  %indvars.iv.next820 = add nuw nsw i64 %indvars.iv819, 1 ; 2 uses
  %exitcond823.not = icmp eq i64 %indvars.iv.next820, %wide.trip.count822
  br i1 %exitcond823.not, label %.loopexit676.us, label %.lr.ph.split.us.us, !llvm.loop !486

.lr.ph.split.us694.us:                            ; preds = %.lr.ph.split.us694.us.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us694.us.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.2634686.us696.us = phi <4 x float> [ %.1633718.us, %.lr.ph.split.us694.us.preheader ], [ %.4.us706.us, %bb.k ] ; 3 uses
  %.2638685.us697.us = phi <4 x float> [ %.1637717.us, %.lr.ph.split.us694.us.preheader ], [ %.4640.us705.us, %bb.k ] ; 3 uses
  %.2644684.us698.us = phi <4 x float> [ %.1643716.us, %.lr.ph.split.us694.us.preheader ], [ %.4646.us704.us, %bb.k ] ; 3 uses
  %.3651683.us699.us = phi <4 x float> [ %.2650715.us, %.lr.ph.split.us694.us.preheader ], [ %.5653.us703.us, %bb.k ] ; 3 uses
  %i.fq = trunc i64 %indvars.iv to i32
  %i.fr = mul i32 %i.cn, %i.fq
  %.reass.us700.us = add i32 %i.fr, %invariant.op.us ; 3 uses
  %i.fs = icmp slt i32 %.reass.us700.us, 0
  br i1 %i.fs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us694.us
  %i.ft = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.fu = srem i32 %.reass.us700.us, %i.ft
  %i.fv = sdiv i32 %.reass.us700.us, %i.ft        ; 2 uses
  %.not233.us701.us = icmp eq i32 %i.fu, 0
  %.not234.us702.us = icmp slt i32 %i.fv, %i.ad
  %or.cond884 = select i1 %.not233.us701.us, i1 %.not234.us702.us, i1 false
  br i1 %or.cond884, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.k

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.j
  %i.fw = trunc i64 %indvars.iv to i32
  %i.fx = add i32 %i.cp, %i.fw
  %i.fy = shl nsw i32 %i.fx, 4
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.0194730.us, i64 %i.fz ; 4 uses
  %i.gb = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !487
  %i.gc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !487 ; 4 uses
  %i.gd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !487 ; 4 uses
  %i.ge = mul i64 %i.gd, %indvars.iv825
  %i.gf = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !487 ; 5 uses
  %i.gg = mul i64 %i.ge, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gg
  %i.gi = sext i32 %i.gb to i64
  %i.gj = mul nsw i64 %i.gi, %i.cq
  %i.gk = mul i64 %i.gj, %i.gf                    ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gm = sext i32 %i.fv to i64                   ; 4 uses
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !328
  %i.gp = zext i16 %i.go to i32
  %i.gq = shl nuw i32 %i.gp, 16
  %i.gr = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %i.gs = bitcast <4 x i32> %i.gr to <4 x float>
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = mul i64 %i.gd, %i.cc
  %i.gv = mul i64 %i.gu, %i.gf
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gk
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.gm
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !328
  %i.ha = zext i16 %i.gz to i32
  %i.hb = shl nuw i32 %i.ha, 16
  %i.hc = insertelement <4 x i32> poison, i32 %i.hb, i64 0
  %i.hd = bitcast <4 x i32> %i.hc to <4 x float>
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hf = mul i64 %i.gd, %i.cd
  %i.hg = mul i64 %i.hf, %i.gf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gk
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.hi, i64 %i.gm
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !328
  %i.hl = zext i16 %i.hk to i32
  %i.hm = shl nuw i32 %i.hl, 16
  %i.hn = insertelement <4 x i32> poison, i32 %i.hm, i64 0
  %i.ho = bitcast <4 x i32> %i.hn to <4 x float>
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = mul i64 %i.gd, %i.cb
  %i.hr = mul i64 %i.hq, %i.gf
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.gk
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.gm
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !328
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw i32 %i.hw, 16
  %i.hy = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %i.hz = bitcast <4 x i32> %i.hy to <4 x float>
  %i.ia = shufflevector <4 x float> %i.hz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = load i64, ptr %i.ga, align 1, !tbaa !245
  %i.ic = insertelement <2 x i64> poison, i64 %i.ib, i64 0
  %i.id = bitcast <2 x i64> %i.ic to <8 x i16>
  %i.ie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.if = bitcast <8 x i16> %i.ie to <4 x float>
  %i.ig = fmul fast <4 x float> %i.gt, %i.if
  %i.ih = fadd fast <4 x float> %i.ig, %.3651683.us699.us
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ij = load i64, ptr %i.ii, align 1, !tbaa !245
  %i.ik = insertelement <2 x i64> poison, i64 %i.ij, i64 0
  %i.il = bitcast <2 x i64> %i.ik to <8 x i16>
  %i.im = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.il, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.in = bitcast <8 x i16> %i.im to <4 x float>
  %i.io = fmul fast <4 x float> %i.he, %i.in
  %i.ip = fadd fast <4 x float> %i.io, %.2644684.us698.us
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.ir = load i64, ptr %i.iq, align 1, !tbaa !245
  %i.is = insertelement <2 x i64> poison, i64 %i.ir, i64 0
  %i.it = bitcast <2 x i64> %i.is to <8 x i16>
  %i.iu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iv = bitcast <8 x i16> %i.iu to <4 x float>
  %i.iw = fmul fast <4 x float> %i.hp, %i.iv
  %i.ix = fadd fast <4 x float> %i.iw, %.2638685.us697.us
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.iz = load i64, ptr %i.iy, align 1, !tbaa !245
  %i.ja = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %i.jb = bitcast <2 x i64> %i.ja to <8 x i16>
  %i.jc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jd = bitcast <8 x i16> %i.jc to <4 x float>
  %i.je = fmul fast <4 x float> %i.ia, %i.jd
  %i.jf = fadd fast <4 x float> %i.je, %.2634686.us696.us
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.j, %.lr.ph.split.us694.us
  %.5653.us703.us = phi nsz <4 x float> [ %.3651683.us699.us, %.lr.ph.split.us694.us ], [ %.3651683.us699.us, %bb.j ], [ %i.ih, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4646.us704.us = phi nsz <4 x float> [ %.2644684.us698.us, %.lr.ph.split.us694.us ], [ %.2644684.us698.us, %bb.j ], [ %i.ip, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4640.us705.us = phi nsz <4 x float> [ %.2638685.us697.us, %.lr.ph.split.us694.us ], [ %.2638685.us697.us, %bb.j ], [ %i.ix, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us706.us = phi nsz <4 x float> [ %.2634686.us696.us, %.lr.ph.split.us694.us ], [ %.2634686.us696.us, %bb.j ], [ %i.jf, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit676.us, label %.lr.ph.split.us694.us, !llvm.loop !486

._crit_edge.us:                                   ; preds = %.loopexit676.us
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0194730.us, i64 %i.bw ; 2 uses
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 4 ; 2 uses
  %i.jh = icmp slt i64 %indvars.iv.next826, %invariant.op
  br i1 %i.jh, label %.preheader679.us, label %.preheader681.loopexit, !llvm.loop !490

.preheader681.loopexit:                           ; preds = %._crit_edge.us
  %i.ji = fadd fast <4 x float> %.5.us, %.5641.us
  br label %.preheader681

.preheader681:                                    ; preds = %.preheader679.preheader, %.preheader681.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1649.lcssa = phi <4 x float> [ %.0648, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6654.us, %.preheader681.loopexit ], [ %.0648, %.preheader679.preheader ] ; 3 uses
  %.0642.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5647.us, %.preheader681.loopexit ], [ zeroinitializer, %.preheader679.preheader ] ; 3 uses
  %.0632.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ji, %.preheader681.loopexit ], [ zeroinitializer, %.preheader679.preheader ]
  %.0194.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.jg, %.preheader681.loopexit ], [ %scevgep, %.preheader679.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bh, %.preheader681.loopexit ], [ %i.be, %.preheader679.preheader ] ; 6 uses
  %i.jj = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.jk = icmp slt i32 %i.jj, %i.ac
  br i1 %i.jk, label %.preheader678.lr.ph, label %.preheader680

.preheader678.lr.ph:                              ; preds = %.preheader681
  %i.jl = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  %.neg668 = add nuw nsw i32 %.0197798, 1
  %i.jn = load i32, ptr %16, align 4, !tbaa !68
  %i.jo = shl i32 %i.jn, 3
  %i.jp = sext i32 %i.jo to i64                   ; 2 uses
  br i1 %i.jm, label %.preheader678.lr.ph.split.us, label %.preheader678.preheader

.preheader678.preheader:                          ; preds = %.preheader678.lr.ph
  %20 = add i32 %.0193.lcssa, 3
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %20)
  %21 = add i32 %smax, -2
  %i.jq = sub i32 %21, %.0193.lcssa               ; 2 uses
  %i.jr = and i32 %i.jq, -2
  %i.js = zext i32 %i.jr to i64
  %i.jt = add nuw nsw i64 %i.js, 2
  %i.ju = mul nsw i64 %i.jt, %i.jp
  %scevgep828 = getelementptr i8, ptr %.0194.lcssa, i64 %i.ju
  %i.jv = add i32 %.0193.lcssa, 2
  %i.jw = and i32 %i.jq, -2
  %i.jx = add i32 %i.jv, %i.jw
  br label %.preheader680

.preheader678.lr.ph.split.us:                     ; preds = %.preheader678.lr.ph
  %i.jy = load i32, ptr %9, align 4, !tbaa !68
  %i.jz = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op762.us = sub i32 %.neg670, %i.jz
  %i.ka = zext i32 %.0193.lcssa to i64
  %i.kb = zext nneg i32 %i.jj to i64
  br label %.preheader678.us

.preheader678.us:                                 ; preds = %._crit_edge.us774, %.preheader678.lr.ph.split.us
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %._crit_edge.us774 ], [ %i.ka, %.preheader678.lr.ph.split.us ] ; 2 uses
  %i.kc = phi i64 [ %i.mu, %._crit_edge.us774 ], [ %i.kb, %.preheader678.lr.ph.split.us ]
  %.1195766.us = phi ptr [ %i.mt, %._crit_edge.us774 ], [ %.0194.lcssa, %.preheader678.lr.ph.split.us ] ; 2 uses
  %.6765.us = phi <4 x float> [ %.10.us, %._crit_edge.us774 ], [ %.0642.lcssa, %.preheader678.lr.ph.split.us ]
  %.7655764.us = phi <4 x float> [ %.11.us, %._crit_edge.us774 ], [ %.1649.lcssa, %.preheader678.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader678.us, %.loopexit674.us
  %.0190758.us = phi i32 [ 0, %.preheader678.us ], [ %i.mm, %.loopexit674.us ] ; 3 uses
  %.7757.us = phi <4 x float> [ %.6765.us, %.preheader678.us ], [ %.10.us, %.loopexit674.us ] ; 4 uses
  %.8656756.us = phi <4 x float> [ %.7655764.us, %.preheader678.us ], [ %.11.us, %.loopexit674.us ] ; 4 uses
  %i.kd = mul nsw i32 %i.jy, %.0190758.us
  %.reass763.us = add i32 %i.kd, %invariant.op762.us ; 3 uses
  %i.ke = icmp slt i32 %.reass763.us, 0
  br i1 %i.ke, label %.loopexit674.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kf = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.kg = srem i32 %.reass763.us, %i.kf
  %i.kh = sdiv i32 %.reass763.us, %i.kf           ; 2 uses
  %.not227.us = icmp eq i32 %i.kg, 0
  %.not228.us = icmp slt i32 %i.kh, %i.ae
  %or.cond885 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond885, label %.preheader673.us, label %.loopexit674.us

bb.n:                                             ; preds = %.lr.ph.us772, %bb.p
  %indvars.iv829 = phi i64 [ 0, %.lr.ph.us772 ], [ %indvars.iv.next830, %bb.p ] ; 3 uses
  %.8753.us = phi <4 x float> [ %.7757.us, %.lr.ph.us772 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9657752.us = phi <4 x float> [ %.8656756.us, %.lr.ph.us772 ], [ %.10658.us, %bb.p ] ; 3 uses
  %i.ki = trunc i64 %indvars.iv829 to i32
  %i.kj = mul i32 %i.mp, %i.ki
  %.reass.us = add i32 %i.kj, %invariant.op.us773 ; 3 uses
  %i.kk = icmp slt i32 %.reass.us, 0
  br i1 %i.kk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kl = load i32, ptr %15, align 4, !tbaa !68   ; 2 uses
  %i.km = srem i32 %.reass.us, %i.kl
  %i.kn = sdiv i32 %.reass.us, %i.kl              ; 2 uses
  %.not229.us = icmp eq i32 %i.km, 0
  %.not230.us = icmp slt i32 %i.kn, %i.ad
  %or.cond886 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond886, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.ko = trunc i64 %indvars.iv829 to i32
  %i.kp = add i32 %i.mr, %i.ko
  %i.kq = shl nsw i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.1195766.us, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !491
  %i.ku = load ptr, ptr %4, align 8, !tbaa !18, !noalias !491 ; 2 uses
  %i.kv = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !491 ; 2 uses
  %i.kw = mul i64 %i.kv, %indvars.iv835
  %i.kx = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !491 ; 3 uses
  %i.ky = mul i64 %i.kw, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ky
  %i.la = sext i32 %i.kt to i64
  %i.lb = mul nsw i64 %i.la, %i.ms
  %i.lc = mul i64 %i.lb, %i.kx                    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lc
  %i.le = mul i64 %i.kv, %i.kc
  %i.lf = mul i64 %i.le, %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lf
  %i.lh = sext i32 %i.kn to i64                   ; 2 uses
  %i.li = getelementptr inbounds [2 x i8], ptr %i.ld, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lc
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.lh
  %i.ll = load i16, ptr %i.li, align 2, !tbaa !328
  %i.lm = zext i16 %i.ll to i32
  %i.ln = shl nuw i32 %i.lm, 16
  %i.lo = insertelement <4 x i32> poison, i32 %i.ln, i64 0
  %i.lp = bitcast <4 x i32> %i.lo to <4 x float>
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = load i16, ptr %i.lk, align 2, !tbaa !328
  %i.ls = zext i16 %i.lr to i32
  %i.lt = shl nuw i32 %i.ls, 16
  %i.lu = insertelement <4 x i32> poison, i32 %i.lt, i64 0
  %i.lv = bitcast <4 x i32> %i.lu to <4 x float>
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load i64, ptr %i.ks, align 1, !tbaa !245
  %i.ly = insertelement <2 x i64> poison, i64 %i.lx, i64 0
  %i.lz = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.ma = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mb = bitcast <8 x i16> %i.ma to <4 x float>
  %i.mc = fmul fast <4 x float> %i.lq, %i.mb
  %i.md = fadd fast <4 x float> %i.mc, %.9657752.us
  %i.me = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.mf = load i64, ptr %i.me, align 1, !tbaa !245
  %i.mg = insertelement <2 x i64> poison, i64 %i.mf, i64 0
  %i.mh = bitcast <2 x i64> %i.mg to <8 x i16>
  %i.mi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mj = bitcast <8 x i16> %i.mi to <4 x float>
  %i.mk = fmul fast <4 x float> %i.lw, %i.mj
  %i.ml = fadd fast <4 x float> %i.mk, %.8753.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10658.us = phi nsz <4 x float> [ %.9657752.us, %bb.n ], [ %i.md, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9657752.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8753.us, %bb.n ], [ %i.ml, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8753.us, %bb.o ] ; 2 uses
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %exitcond833.not = icmp eq i64 %indvars.iv.next830, %wide.trip.count832
  br i1 %exitcond833.not, label %.loopexit674.us, label %bb.n, !llvm.loop !494

.loopexit674.us:                                  ; preds = %bb.p, %.preheader673.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8656756.us, %bb.l ], [ %.8656756.us, %bb.m ], [ %.8656756.us, %.preheader673.us ], [ %.10658.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7757.us, %bb.l ], [ %.7757.us, %bb.m ], [ %.7757.us, %.preheader673.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.mm = add nuw nsw i32 %.0190758.us, 1         ; 2 uses
  %exitcond834.not = icmp eq i32 %i.mm, %i.jl
  br i1 %exitcond834.not, label %._crit_edge.us774, label %bb.l, !llvm.loop !495

.preheader673.us:                                 ; preds = %bb.m
  %i.mn = load i32, ptr %12, align 4, !tbaa !68   ; 3 uses
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %.lr.ph.us772, label %.loopexit674.us

.lr.ph.us772:                                     ; preds = %.preheader673.us
  %i.mp = load i32, ptr %13, align 4, !tbaa !68
  %i.mq = load i32, ptr %14, align 4, !tbaa !68
  %invariant.op.us773 = sub i32 %.neg668, %i.mq
  %i.mr = mul nuw nsw i32 %i.mn, %.0190758.us
  %i.ms = sext i32 %i.kh to i64
  %wide.trip.count832 = zext nneg i32 %i.mn to i64
  br label %bb.n

._crit_edge.us774:                                ; preds = %.loopexit674.us
  %i.mt = getelementptr inbounds [2 x i8], ptr %.1195766.us, i64 %i.jp ; 2 uses
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 2 ; 3 uses
  %i.mu = or disjoint i64 %indvars.iv.next836, 1  ; 2 uses
  %i.mv = trunc nuw i64 %i.mu to i32
  %i.mw = icmp sgt i32 %i.ac, %i.mv
  br i1 %i.mw, label %.preheader678.us, label %.preheader680.loopexit, !llvm.loop !496

.preheader680.loopexit:                           ; preds = %._crit_edge.us774
  %i.mx = trunc nuw i64 %indvars.iv.next836 to i32
  br label %.preheader680

.preheader680:                                    ; preds = %.preheader678.preheader, %.preheader680.loopexit, %.preheader681
  %.7655.lcssa = phi <4 x float> [ %.1649.lcssa, %.preheader681 ], [ %.11.us, %.preheader680.loopexit ], [ %.1649.lcssa, %.preheader678.preheader ] ; 3 uses
  %.6.lcssa = phi <4 x float> [ %.0642.lcssa, %.preheader681 ], [ %.10.us, %.preheader680.loopexit ], [ %.0642.lcssa, %.preheader678.preheader ]
  %.1195.lcssa = phi ptr [ %.0194.lcssa, %.preheader681 ], [ %i.mt, %.preheader680.loopexit ], [ %scevgep828, %.preheader678.preheader ]
  %.1.lcssa = phi i32 [ %.0193.lcssa, %.preheader681 ], [ %i.mx, %.preheader680.loopexit ], [ %i.jx, %.preheader678.preheader ] ; 2 uses
  %i.my = icmp slt i32 %.1.lcssa, %i.ac
  br i1 %i.my, label %.preheader677.lr.ph, label %._crit_edge789

.preheader677.lr.ph:                              ; preds = %.preheader680
  %i.mz = load i32, ptr %8, align 4, !tbaa !68    ; 2 uses
  %i.na = icmp sgt i32 %i.mz, 0
  %.neg664 = add nuw nsw i32 %.0197798, 1
  %i.nb = load i32, ptr %16, align 4, !tbaa !68
  %i.nc = shl nsw i32 %i.nb, 2
  %i.nd = sext i32 %i.nc to i64
  br i1 %i.na, label %.preheader677.lr.ph.split.us, label %._crit_edge789

.preheader677.lr.ph.split.us:                     ; preds = %.preheader677.lr.ph
  %i.ne = load i32, ptr %9, align 4, !tbaa !68
  %i.nf = load i32, ptr %10, align 4, !tbaa !68
  %invariant.op784.us = sub i32 %.neg670, %i.nf
  %i.ng = zext i32 %.1.lcssa to i64
  br label %.preheader677.us

.preheader677.us:                                 ; preds = %._crit_edge.us795, %.preheader677.lr.ph.split.us
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %._crit_edge.us795 ], [ %i.ng, %.preheader677.lr.ph.split.us ] ; 2 uses
  %.2196787.us = phi ptr [ %i.pe, %._crit_edge.us795 ], [ %.1195.lcssa, %.preheader677.lr.ph.split.us ] ; 2 uses
  %.12786.us = phi <4 x float> [ %.16.us, %._crit_edge.us795 ], [ %.7655.lcssa, %.preheader677.lr.ph.split.us ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader677.us, %.loopexit.us
  %.0188781.us = phi i32 [ 0, %.preheader677.us ], [ %i.ox, %.loopexit.us ] ; 3 uses
  %.13780.us = phi <4 x float> [ %.12786.us, %.preheader677.us ], [ %.16.us, %.loopexit.us ] ; 4 uses
  %i.nh = mul nsw i32 %i.ne, %.0188781.us
  %.reass785.us = add i32 %i.nh, %invariant.op784.us ; 3 uses
  %i.ni = icmp slt i32 %.reass785.us, 0
  br i1 %i.ni, label %.loopexit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nj = load i32, ptr %11, align 4, !tbaa !68   ; 2 uses
  %i.nk = srem i32 %.reass785.us, %i.nj
  %i.nl = sdiv i32 %.reass785.us, %i.nj           ; 2 uses
  %.not223.us = icmp eq i32 %i.nk, 0
  %.not224.us = icmp slt i32 %i.nl, %i.ae
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.rc = fadd fast <4 x float> %i.rb, splat (float 1.000000e+00)
  %i.rd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qm)
  %i.re = shl <4 x i32> %i.rd, splat (i32 23)
  %i.rf = add <4 x i32> %i.re, splat (i32 1065353216)
  %i.rg = bitcast <4 x i32> %i.rf to <4 x float>
  %i.rh = fmul fast <4 x float> %i.rc, %i.rg
  %i.ri = fadd fast <4 x float> %i.rh, splat (float 1.000000e+00)
  %i.rj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ri
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc310:                                        ; preds = %._crit_edge789
  %i.rk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pi, <4 x float> splat (float f0x42B0C0A5))
  %i.rl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rm = fmul fast <4 x float> %i.rl, splat (float f0x3FB8AA3B)
  %i.rn = fadd fast <4 x float> %i.rm, splat (float 5.000000e-01) ; 2 uses
  %i.ro = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rn)
  %i.rp = sitofp fast <4 x i32> %i.ro to <4 x float> ; 2 uses
  %i.rq = fcmp fast olt <4 x float> %i.rn, %i.rp
  %i.rr = select <4 x i1> %i.rq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rs = fsub fast <4 x float> %i.rp, %i.rr      ; 2 uses
  %i.rt = fmul fast <4 x float> %i.rs, splat (float f0x3F317218)
  %i.ru = fsub fast <4 x float> %i.rl, %i.rt      ; 8 uses
  %i.rv = fmul fast <4 x float> %i.ru, %i.ru
  %i.rw = fmul fast <4 x float> %i.ru, splat (float f0x39506967)
  %i.rx = fadd fast <4 x float> %i.rw, splat (float f0x3AB743CE)
  %i.ry = fmul fast <4 x float> %i.rx, %i.ru
  %i.rz = fadd fast <4 x float> %i.ry, splat (float f0x3C088908)
  %i.sa = fmul fast <4 x float> %i.rz, %i.ru
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3D2AA9C1)
  %i.sc = fmul fast <4 x float> %i.sb, %i.ru
  %i.sd = fadd fast <4 x float> %i.sc, splat (float f0x3E2AAAAA)
  %i.se = fmul fast <4 x float> %i.sd, %i.ru
  %i.sf = fadd fast <4 x float> %i.se, splat (float 5.000000e-01)
  %i.sg = fmul fast <4 x float> %i.rv, %i.sf
  %i.sh = fadd fast <4 x float> %i.ru, %i.sg
  %i.si = fadd fast <4 x float> %i.sh, splat (float 1.000000e+00)
  %i.sj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rs)
  %i.sk = shl <4 x i32> %i.sj, splat (i32 23)
  %i.sl = add <4 x i32> %i.sk, splat (i32 1065353216)
  %i.sm = bitcast <4 x i32> %i.sl to <4 x float>
  %i.sn = fmul fast <4 x float> %i.si, %i.sm
  %i.so = fadd fast <4 x float> %i.sn, splat (float 1.000000e+00) ; 2 uses
  %i.sp = fcmp fast ole <4 x float> %i.so, zeroinitializer
  %i.sq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.so, <4 x float> splat (float f0x00800000))
  %i.sr = bitcast <4 x float> %i.sq to <4 x i32>  ; 2 uses
  %i.ss = lshr <4 x i32> %i.sr, splat (i32 23)
  %i.st = and <4 x i32> %i.sr, splat (i32 -2139095041)
  %i.su = or disjoint <4 x i32> %i.st, splat (i32 1056964608)
  %i.sv = bitcast <4 x i32> %i.su to <4 x float>  ; 3 uses
  %i.sw = add nsw <4 x i32> %i.ss, splat (i32 -127)
  %i.sx = sitofp fast <4 x i32> %i.sw to <4 x float> ; 2 uses
  %i.sy = fadd fast <4 x float> %i.sx, splat (float 1.000000e+00)
  %i.sz = fcmp fast olt <4 x float> %i.sv, splat (float f0x3F3504F3) ; 2 uses
  %i.ta = select <4 x i1> %i.sz, <4 x float> %i.sv, <4 x float> zeroinitializer
  %i.tb = fadd fast <4 x float> %i.sv, splat (float -1.000000e+00)
  %i.tc = select fast <4 x i1> %i.sz, <4 x float> %i.sx, <4 x float> %i.sy
  %i.td = fadd fast <4 x float> %i.tb, %i.ta      ; 12 uses
  %i.te = fmul fast <4 x float> %i.td, %i.td      ; 2 uses
  %i.tf = fmul fast <4 x float> %i.td, splat (float f0x3D9021BB)
  %i.tg = fadd fast <4 x float> %i.tf, splat (float f0xBDEBD1B8)
  %i.th = fmul fast <4 x float> %i.tg, %i.td
  %i.ti = fadd fast <4 x float> %i.th, splat (float f0x3DEF251A)
  %i.tj = fmul fast <4 x float> %i.ti, %i.td
  %i.tk = fadd fast <4 x float> %i.tj, splat (float f0xBDFE5D4F)
  %i.tl = fmul fast <4 x float> %i.tk, %i.td
  %i.tm = fadd fast <4 x float> %i.tl, splat (float f0x3E11E9BF)
  %i.tn = fmul fast <4 x float> %i.tm, %i.td
  %i.to = fadd fast <4 x float> %i.tn, splat (float f0xBE2AAE50)
  %i.tp = fmul fast <4 x float> %i.to, %i.td
  %i.tq = fadd fast <4 x float> %i.tp, splat (float f0x3E4CCEAC)
  %i.tr = fmul fast <4 x float> %i.tq, %i.td
  %i.ts = fadd fast <4 x float> %i.tr, splat (float f0xBE7FFFFC)
  %i.tt = fmul fast <4 x float> %i.ts, %i.td
  %i.tu = fadd fast <4 x float> %i.tt, splat (float f0x3EAAAAAA)
  %i.tv = fmul fast <4 x float> %i.te, %i.td
  %i.tw = fmul fast <4 x float> %i.tv, %i.tu
  %.neg660 = fmul fast <4 x float> %i.te, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.tc, splat (float f0x3F317218)
  %i.tx = fadd fast <4 x float> %i.td, %.neg660
  %i.ty = fadd fast <4 x float> %i.tw, %i.tx
  %i.tz = fadd fast <4 x float> %i.ty, %reass.mul
  %.neg = fmul fast <4 x float> %i.tz, splat (float -2.000000e+00)
  %i.ua = select fast <4 x i1> %i.sp, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ub = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ua, <4 x float> splat (float f0x42B0C0A5))
  %i.uc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ub, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ud = fmul fast <4 x float> %i.uc, splat (float f0x3FB8AA3B)
  %i.ue = fadd fast <4 x float> %i.ud, splat (float 5.000000e-01) ; 2 uses
  %i.uf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ue)
  %i.ug = sitofp fast <4 x i32> %i.uf to <4 x float> ; 2 uses
  %i.uh = fcmp fast olt <4 x float> %i.ue, %i.ug
  %i.ui = select <4 x i1> %i.uh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.uj = fsub fast <4 x float> %i.ug, %i.ui      ; 2 uses
  %i.uk = fmul fast <4 x float> %i.uj, splat (float f0x3F317218)
  %i.ul = fsub fast <4 x float> %i.uc, %i.uk      ; 8 uses
  %i.um = fmul fast <4 x float> %i.ul, %i.ul
  %i.un = fmul fast <4 x float> %i.ul, splat (float f0x39506967)
  %i.uo = fadd fast <4 x float> %i.un, splat (float f0x3AB743CE)
  %i.up = fmul fast <4 x float> %i.uo, %i.ul
  %i.uq = fadd fast <4 x float> %i.up, splat (float f0x3C088908)
  %i.ur = fmul fast <4 x float> %i.uq, %i.ul
  %i.us = fadd fast <4 x float> %i.ur, splat (float f0x3D2AA9C1)
  %i.ut = fmul fast <4 x float> %i.us, %i.ul
  %i.uu = fadd fast <4 x float> %i.ut, splat (float f0x3E2AAAAA)
  %i.uv = fmul fast <4 x float> %i.uu, %i.ul
  %i.uw = fadd fast <4 x float> %i.uv, splat (float 5.000000e-01)
  %i.ux = fmul fast <4 x float> %i.um, %i.uw
  %i.uy = fadd fast <4 x float> %i.ul, %i.ux
  %i.uz = fadd fast <4 x float> %i.uy, splat (float 1.000000e+00)
  %i.va = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uj)
  %i.vb = shl <4 x i32> %i.va, splat (i32 23)
  %i.vc = add <4 x i32> %i.vb, splat (i32 1065353216)
  %i.vd = bitcast <4 x i32> %i.vc to <4 x float>
  %i.ve = fmul fast <4 x float> %i.uz, %i.vd
  %i.vf = fadd fast <4 x float> %i.ve, splat (float 1.000000e+00)
  %i.vg = fdiv fast <4 x float> splat (float 2.000000e+00), %i.vf
  %i.vh = fadd fast <4 x float> %i.vg, splat (float -1.000000e+00)
  %i.vi = fmul fast <4 x float> %i.vh, %i.pi
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %._crit_edge789
  %i.vj = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !39
  %i.vl = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.vm = shufflevector <4 x float> %i.vl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !39
  %i.vp = insertelement <4 x float> poison, float %i.vo, i64 0
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vr = fmul fast <4 x float> %i.vm, %i.pi
  %i.vs = fadd fast <4 x float> %i.vr, %i.vq
  %i.vt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.vs, <4 x float> zeroinitializer)
  %i.vu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.vt, <4 x float> splat (float 1.000000e+00))
  %i.vv = fmul fast <4 x float> %i.vu, %i.pi
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.y, %.noexc310, %.noexc309, %bb.x, %.noexc308, %bb.w, %._crit_edge789
  %.0.i = phi nsz <4 x float> [ %i.vv, %bb.y ], [ %i.pk, %bb.w ], [ %i.ps, %.noexc308 ], [ %i.qc, %bb.x ], [ %i.rj, %.noexc309 ], [ %i.vi, %.noexc310 ], [ %i.pi, %._crit_edge789 ] ; 2 uses
  switch i32 %i.ah, label %bb.aa [
    i32 4, label %.thread
    i32 1, label %bb.z
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.vw = bitcast <4 x float> %.0.i to <8 x i16>
  %i.vx = shufflevector <8 x i16> %i.vw, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vy = bitcast <8 x i16> %i.vx to <4 x float>
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.wa = bitcast <4 x float> %i.vz to <2 x i64>
  %i.wb = extractelement <2 x i64> %i.wa, i64 0
  store i64 %i.wb, ptr %.1200797, align 1, !tbaa !245
  %i.wc = getelementptr inbounds nuw i8, ptr %.1200797, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.wd = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.we = extractelement <8 x i16> %i.wd, i64 1
  store i16 %i.we, ptr %.1200797, align 2, !tbaa !328
  %i.wf = extractelement <8 x i16> %i.wd, i64 3
  %i.wg = load i64, ptr %19, align 8, !tbaa !248  ; 3 uses
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %.1200797, i64 %i.wg
  store i16 %i.wf, ptr %i.wh, align 2, !tbaa !328
  %i.wi = extractelement <8 x i16> %i.wd, i64 5
  %.idx = shl i64 %i.wg, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %.1200797, i64 %.idx
  store i16 %i.wi, ptr %i.wj, align 2, !tbaa !328
  %i.wk = extractelement <8 x i16> %i.wd, i64 7
  %.idx222 = mul i64 %i.wg, 6
  %i.wl = getelementptr inbounds nuw i8, ptr %.1200797, i64 %.idx222
  store i16 %i.wk, ptr %i.wl, align 2, !tbaa !328
  %i.wm = getelementptr inbounds nuw i8, ptr %.1200797, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.z
  %.3 = phi ptr [ %i.wm, %bb.z ], [ %.1200797, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.wc, %.thread ] ; 2 uses
  %i.wn = add nuw nsw i32 %.0197798, 1            ; 2 uses
  %exitcond847.not = icmp eq i32 %i.wn, %i.af
  br i1 %exitcond847.not, label %._crit_edge, label %bb.c, !llvm.loop !503

._crit_edge804:                                   ; preds = %._crit_edge801.split, %.noexc299.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge804, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #14

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn17Deconvolution_x86D2Ev}
!22 = !{!23, !6, i64 352}
!23 = !{!"_ZTSN4ncnn13DeconvolutionE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !12, i64 280, !6, i64 352, !12, i64 360, !12, i64 432}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!23, !6, i64 276}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !7, i64 0}
!41 = distinct !{null}
!42 = !{!43, !44, i64 504}
!43 = !{!"_ZTSN4ncnn17Deconvolution_x86E", !23, i64 0, !44, i64 504, !44, i64 512, !12, i64 520}
!44 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!45 = !{!46, !25, i64 32}
!46 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !6, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !7, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!23, !6, i64 212}
!50 = !{!23, !6, i64 216}
!51 = !{!23, !6, i64 272}
!52 = !{!23, !6, i64 208}
!53 = !{!46, !25, i64 39}
!54 = !{!46, !25, i64 29}
!55 = !{!43, !44, i64 512}
!56 = !{!12, !6, i64 44}
!57 = !{!12, !15, i64 16}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{null}
!66 = !{!13, !13, i64 0}
!67 = !{!12, !6, i64 24}
!68 = !{!6, !6, i64 0}
!69 = !{!12, !6, i64 56}
!70 = !{!71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!74}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !59, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !61}
!79 = distinct !{!79, !59}
!80 = distinct !{!80, !59, !76}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!83 = distinct !{!83, !"_ZN4ncnn3Mat7channelEi"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!86 = distinct !{!86, !"_ZN4ncnn3Mat7channelEi"}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = !{!95}
!95 = distinct !{!95, !91}
!96 = !{!97}
!97 = distinct !{!97, !91}
!98 = !{!99}
!99 = distinct !{!99, !91}
!100 = !{!101}
!101 = distinct !{!101, !91}
!102 = !{!103}
!103 = distinct !{!103, !91}
!104 = !{!105}
!105 = distinct !{!105, !91}
!106 = !{!107}
!107 = distinct !{!107, !91}
!108 = !{!105, !103, !101, !99, !97, !95, !93, !90}
!109 = distinct !{!109, !59, !76, !77}
!110 = distinct !{!110, !59, !76}
!111 = distinct !{!111, !59}
!112 = !{!113}
!113 = distinct !{!113, !114}
!114 = distinct !{!114, !"LVerDomain"}
!115 = !{!116}
!116 = distinct !{!116, !114}
!117 = !{!118}
!118 = distinct !{!118, !114}
!119 = !{!120}
!120 = distinct !{!120, !114}
!121 = !{!122}
!122 = distinct !{!122, !114}
!123 = !{!120, !118, !116, !113}
!124 = distinct !{!124, !59, !76, !77}
!125 = distinct !{!125, !59, !76}
!126 = distinct !{!126, !59}
!127 = distinct !{!127, !59}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!130 = distinct !{!130, !"_ZN4ncnn3Mat7channelEi"}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = !{!137}
!137 = distinct !{!137, !133}
!138 = !{!139}
!139 = distinct !{!139, !133}
!140 = !{!141}
!141 = distinct !{!141, !133}
!142 = !{!143}
!143 = distinct !{!143, !133}
!144 = !{!145}
!145 = distinct !{!145, !133}
!146 = !{!147}
!147 = distinct !{!147, !133}
!148 = !{!149}
!149 = distinct !{!149, !133}
!150 = !{!147, !145, !143, !141, !139, !137, !135, !132}
!151 = distinct !{!151, !59, !76, !77}
!152 = distinct !{!152, !59, !76}
!153 = distinct !{!153, !59}
!154 = !{!155}
end_hunk_10
