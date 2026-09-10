Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/redistribute?download=true
inline.NumInlined: 906
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnb:bb.a
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !163
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !168
  %i.ht = sext i32 %.pre-phi752 to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !168
  %i.hv = load i32, ptr %i.gy, align 4, !tbaa !168
  %i.hw = shl nsw i32 %i.hv, 1
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr [4 x i8], ptr %i.ho, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 4
  store i32 %i.gs, ptr %i.hz, align 4, !tbaa !168
  %i.ia = load i32, ptr %i.gy, align 4, !tbaa !168
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.gy, align 4, !tbaa !168
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 1040 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !321
  %i.ie = add nsw i32 %i.id, -1
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !321
  %.pre723 = load i64, ptr %8, align 8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.ae
  %i.if = phi ptr [ %i.gm, %.lr.ph ], [ %i.hm, %bb.ae ] ; 3 uses
  %i.ig = phi i64 [ %i.gn, %.lr.ph ], [ %.pre723, %bb.ae ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 888
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !316 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next, %i.ij
  br i1 %i.ik, label %.lr.ph, label %._crit_edge, !llvm.loop !290

bb.ag:                                            ; preds = %.lr.ph601, %bb.aj
  %i.il = phi ptr [ %i.fs, %.lr.ph601 ], [ %i.jc, %bb.aj ]
  %indvars.iv692 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next693, %bb.aj ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv692
  %i.in = load i32, ptr %i.im, align 4, !tbaa !168
  %i.io = mul nsw i32 %i.in, %i.gi
  %i.ip = sext i32 %i.io to i64                   ; 2 uses
  %i.iq = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1336
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.ir, i64 %indvars.iv692 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !258
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !259
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = sdiv exact i64 %i.iy, 12
  %i.ja = icmp ult i64 %i.iz, %i.ip
  br i1 %i.ja, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 noundef %i.ip)
          to label %._crit_edge730 unwind label %bb.ai

._crit_edge730:                                   ; preds = %bb.ah
  %.pre731 = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.aj:                                            ; preds = %._crit_edge730, %bb.ag
  %i.jc = phi ptr [ %.pre731, %._crit_edge730 ], [ %i.il, %bb.ag ] ; 3 uses
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 176
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !255
  %i.jf = shl nsw i32 %i.je, 1
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next693, %i.jg
  br i1 %i.jh, label %bb.ag, label %._crit_edge602.loopexit, !llvm.loop !291

._crit_edge602.loopexit:                          ; preds = %bb.aj
  %.pre732 = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %._crit_edge602

._crit_edge602:                                   ; preds = %._crit_edge602.loopexit, %._crit_edge
  %i.ji = phi ptr [ %i.ft, %._crit_edge ], [ %.pre732, %._crit_edge602.loopexit ] ; 7 uses
  %.lcssa593 = phi ptr [ %i.fs, %._crit_edge ], [ %i.jc, %._crit_edge602.loopexit ] ; 2 uses
  %i.jj = load ptr, ptr %8, align 8, !tbaa !165   ; 12 uses
  %i.jk = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = load ptr, ptr %i.i, align 8, !tbaa !20  ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 416
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !260 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.jp = ptrtoint ptr %i.jk to i64
  %i.jq = sub i64 %i.jp, %i.jl                    ; 5 uses
  %i.jr = ashr exact i64 %i.jq, 2                 ; 10 uses
  %i.js = icmp sgt i64 %i.jr, 0                   ; 2 uses
  br i1 %i.js, label %.lr.ph.i, label %.loopexit505.thread

.lr.ph.i:                                         ; preds = %._crit_edge602
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 504
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 376
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 1336 ; 4 uses
  %i.jw = add nuw nsw i32 %.1287, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ap, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.lc, %bb.ap ] ; 4 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.015.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !168 ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, -1
  br i1 %i.jz, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ka = load i8, ptr %i.jt, align 8, !tbaa !248, !range !130, !noundef !131
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kc = load ptr, ptr %i.ju, align 8, !tbaa !249 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %sext.i = shl i64 %.015.i, 32
  %i.ke = load ptr, ptr %i.kc, align 8, !tbaa !163
  %i.kf = ashr exact i64 %sext.i, 30
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !168
  %i.ki = sext i32 %i.kh to i64
  %i.kj = load ptr, ptr %i.kd, align 8, !tbaa !251
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %i.ki
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %.015.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.km = phi ptr [ %i.kk, %bb.am ], [ %i.kl, %bb.an ] ; 3 uses
  %i.kn = zext nneg i32 %i.jy to i64              ; 2 uses
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.kn ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !168 ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !259
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.ks, i64 %i.kr ; 3 uses
  %i.ku = load float, ptr %i.km, align 4, !tbaa !167
  store float %i.ku, ptr %i.kt, align 4, !tbaa !167
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !167
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store float %i.kw, ptr %i.kx, align 4, !tbaa !167
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !167
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store float %i.kz, ptr %i.la, align 4, !tbaa !167
  %i.lb = add nsw i32 %i.jw, %i.kq
  store i32 %i.lb, ptr %i.kp, align 4, !tbaa !168
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %i.lc = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lc, %i.jr
  br i1 %exitcond.not.i, label %.lr.ph.i331, label %bb.ak, !llvm.loop !292

.lr.ph.i331:                                      ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.ld = add nsw i64 %i.jr, -1                   ; 2 uses
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %.epil.preheader, label %.lr.ph.i331.new

.lr.ph.i331.new:                                  ; preds = %.lr.ph.i331
  %unroll_iter = and i64 %i.jr, 9223372036854775806
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph.i331.new
  %.014.i = phi i64 [ 0, %.lr.ph.i331.new ], [ %i.ms, %bb.au ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i331.new ], [ %niter.next.1, %bb.au ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !168 ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, -1
  br i1 %i.lh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.li = zext nneg i32 %i.lg to i64              ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.li ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !168
  %i.ll = add nsw i32 %i.lk, 1                    ; 2 uses
  %i.lm = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %.014.i ; 3 uses
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.li
  %i.lo = sext i32 %i.ll to i64
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !259
  %i.lq = getelementptr inbounds nuw [12 x i8], ptr %i.lp, i64 %i.lo ; 3 uses
  %i.lr = load float, ptr %i.lm, align 4, !tbaa !167
  store float %i.lr, ptr %i.lq, align 4, !tbaa !167
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !167
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store float %i.lt, ptr %i.lu, align 4, !tbaa !167
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !167
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store float %i.lw, ptr %i.lx, align 4, !tbaa !167
  %.reass.i = add i32 %i.ll, %.1287
  store i32 %.reass.i, ptr %i.lj, align 4, !tbaa !168
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ly = or disjoint i64 %.014.i, 1              ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !168 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, -1
  br i1 %i.mb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mc = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !168
  %i.mf = add nsw i32 %i.me, 1                    ; 2 uses
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %i.ly ; 3 uses
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.mc
  %i.mi = sext i32 %i.mf to i64
  %i.mj = load ptr, ptr %i.mh, align 8, !tbaa !259
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.mj, i64 %i.mi ; 3 uses
  %i.ml = load float, ptr %i.mg, align 4, !tbaa !167
  store float %i.ml, ptr %i.mk, align 4, !tbaa !167
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !167
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store float %i.mn, ptr %i.mo, align 4, !tbaa !167
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !167
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store float %i.mq, ptr %i.mr, align 4, !tbaa !167
  %.reass.i.1 = add i32 %i.mf, %.1287
  store i32 %.reass.i.1, ptr %i.md, align 4, !tbaa !168
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ms = add nuw nsw i64 %.014.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit505.unr-lcssa, label %bb.aq, !llvm.loop !293

.loopexit505.unr-lcssa:                           ; preds = %bb.au
  %i.mt = and i64 %i.jq, 4
  %lcmp.mod.not = icmp eq i64 %i.mt, 0
  br i1 %lcmp.mod.not, label %.loopexit505, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit505.unr-lcssa, %.lr.ph.i331
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i331 ], [ %i.ms, %.loopexit505.unr-lcssa ] ; 2 uses
  %lcmp.mod1182 = trunc i64 %i.jr to i1
  call void @llvm.assume(i1 %lcmp.mod1182)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i.epil.init
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !168 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, -1
  br i1 %i.mw, label %bb.av, label %.loopexit505

bb.av:                                            ; preds = %.epil.preheader
  %i.mx = zext nneg i32 %i.mv to i64              ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mx ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !168
  %i.na = add nsw i32 %i.mz, 1                    ; 2 uses
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.jo, i64 %.014.i.epil.init ; 3 uses
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.jv, i64 %i.mx
  %i.nd = sext i32 %i.na to i64
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !259
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.ne, i64 %i.nd ; 3 uses
  %i.ng = load float, ptr %i.nb, align 4, !tbaa !167
  store float %i.ng, ptr %i.nf, align 4, !tbaa !167
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !167
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.ni, ptr %i.nj, align 4, !tbaa !167
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !167
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store float %i.nl, ptr %i.nm, align 4, !tbaa !167
  %.reass.i.epil = add i32 %i.na, %.1287
  store i32 %.reass.i.epil, ptr %i.my, align 4, !tbaa !168
  br label %.loopexit505

.loopexit505:                                     ; preds = %.epil.preheader, %bb.av, %.loopexit505.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br i1 %.not479, label %bb.bc, label %.lr.ph.i333

.loopexit505.thread:                              ; preds = %._crit_edge602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br i1 %.not479, label %.thread864, label %.thread863

.thread863:                                       ; preds = %.loopexit505.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  br label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337

.lr.ph.i333:                                      ; preds = %.loopexit505
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jm, i64 456
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !260 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %i.ji, i64 1336 ; 3 uses
  %invariant.op.i = add nsw i32 %.1287, -1        ; 3 uses
  %i.nq = icmp eq i64 %i.ld, 0
  br i1 %i.nq, label %.epil.preheader1183, label %.lr.ph.i333.new

.lr.ph.i333.new:                                  ; preds = %.lr.ph.i333
  %unroll_iter1187 = and i64 %i.jr, 9223372036854775806
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph.i333.new
  %.014.i334 = phi i64 [ 0, %.lr.ph.i333.new ], [ %i.pe, %bb.ba ] ; 4 uses
  %niter1188 = phi i64 [ 0, %.lr.ph.i333.new ], [ %niter1188.next.1, %bb.ba ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i334
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !168 ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, -1
  br i1 %i.nt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.nu = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nu ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !168
  %i.nx = add nsw i32 %i.nw, 2                    ; 2 uses
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %.014.i334 ; 3 uses
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %i.nu
  %i.oa = sext i32 %i.nx to i64
  %i.ob = load ptr, ptr %i.nz, align 8, !tbaa !259
  %i.oc = getelementptr inbounds nuw [12 x i8], ptr %i.ob, i64 %i.oa ; 3 uses
  %i.od = load float, ptr %i.ny, align 4, !tbaa !167
  store float %i.od, ptr %i.oc, align 4, !tbaa !167
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.of = load float, ptr %i.oe, align 4, !tbaa !167
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store float %i.of, ptr %i.og, align 4, !tbaa !167
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !167
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store float %i.oi, ptr %i.oj, align 4, !tbaa !167
  %.reass.i336 = add i32 %invariant.op.i, %i.nx
  store i32 %.reass.i336, ptr %i.nv, align 4, !tbaa !168
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ok = or disjoint i64 %.014.i334, 1           ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !168 ; 2 uses
  %i.on = icmp sgt i32 %i.om, -1
  br i1 %i.on, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.oo = zext nneg i32 %i.om to i64              ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.oo ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !168
  %i.or = add nsw i32 %i.oq, 2                    ; 2 uses
  %i.os = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %i.ok ; 3 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %i.oo
  %i.ou = sext i32 %i.or to i64
  %i.ov = load ptr, ptr %i.ot, align 8, !tbaa !259
  %i.ow = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.ou ; 3 uses
  %i.ox = load float, ptr %i.os, align 4, !tbaa !167
  store float %i.ox, ptr %i.ow, align 4, !tbaa !167
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !167
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  store float %i.oz, ptr %i.pa, align 4, !tbaa !167
  %i.pb = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !167
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store float %i.pc, ptr %i.pd, align 4, !tbaa !167
  %.reass.i336.1 = add i32 %invariant.op.i, %i.or
  store i32 %.reass.i336.1, ptr %i.op, align 4, !tbaa !168
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.pe = add nuw nsw i64 %.014.i334, 2           ; 2 uses
  %niter1188.next.1 = add i64 %niter1188, 2       ; 2 uses
  %niter1188.ncmp.1 = icmp eq i64 %niter1188.next.1, %unroll_iter1187
  br i1 %niter1188.ncmp.1, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !293

_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337.loopexit.unr-lcssa: ; preds = %bb.ba
  %i.pf = and i64 %i.jq, 4
  %lcmp.mod1185.not = icmp eq i64 %i.pf, 0
  br i1 %lcmp.mod1185.not, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337, label %.epil.preheader1183

.epil.preheader1183:                              ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337.loopexit.unr-lcssa, %.lr.ph.i333
  %.014.i334.epil.init = phi i64 [ 0, %.lr.ph.i333 ], [ %i.pe, %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1186 = trunc i64 %i.jr to i1
  call void @llvm.assume(i1 %lcmp.mod1186)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i334.epil.init
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !168 ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, -1
  br i1 %i.pi, label %bb.bb, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337

bb.bb:                                            ; preds = %.epil.preheader1183
  %i.pj = zext nneg i32 %i.ph to i64              ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.pj ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !168
  %i.pm = add nsw i32 %i.pl, 2                    ; 2 uses
  %i.pn = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %.014.i334.epil.init ; 3 uses
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %i.pj
  %i.pp = sext i32 %i.pm to i64
  %i.pq = load ptr, ptr %i.po, align 8, !tbaa !259
  %i.pr = getelementptr inbounds nuw [12 x i8], ptr %i.pq, i64 %i.pp ; 3 uses
  %i.ps = load float, ptr %i.pn, align 4, !tbaa !167
  store float %i.ps, ptr %i.pr, align 4, !tbaa !167
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !167
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store float %i.pu, ptr %i.pv, align 4, !tbaa !167
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.px = load float, ptr %i.pw, align 4, !tbaa !167
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store float %i.px, ptr %i.py, align 4, !tbaa !167
  %.reass.i336.epil = add i32 %invariant.op.i, %i.pm
  store i32 %.reass.i336.epil, ptr %i.pk, align 4, !tbaa !168
  br label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337

_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337: ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337.loopexit.unr-lcssa, %bb.bb, %.epil.preheader1183, %.thread863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bc

bb.bc:                                            ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337, %.loopexit505
  %.0284 = phi i32 [ 2, %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit337 ], [ 1, %.loopexit505 ] ; 2 uses
  br i1 %.not480, label %bb.bk, label %bb.bd

.thread864:                                       ; preds = %.loopexit505.thread
  br i1 %.not480, label %bb.bk, label %.thread867

.thread867:                                       ; preds = %.thread864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

bb.bd:                                            ; preds = %bb.bc
  %i.pz = getelementptr inbounds nuw i8, ptr %i.jm, i64 496
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !260 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br i1 %i.js, label %.lr.ph.i338, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

.lr.ph.i338:                                      ; preds = %bb.bd
  %i.qb = add nuw nsw i32 %.0284, 1               ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ji, i64 1336 ; 3 uses
  %invariant.op.i339 = sub nuw nsw i32 %i.ge, %.0284 ; 3 uses
  %i.qd = icmp eq i64 %i.jq, 4
  br i1 %i.qd, label %.epil.preheader1189, label %.lr.ph.i338.new

.lr.ph.i338.new:                                  ; preds = %.lr.ph.i338
  %unroll_iter1193 = and i64 %i.jr, 9223372036854775806
  br label %bb.be

bb.be:                                            ; preds = %bb.bi, %.lr.ph.i338.new
  %.014.i340 = phi i64 [ 0, %.lr.ph.i338.new ], [ %i.rr, %bb.bi ] ; 4 uses
  %niter1194 = phi i64 [ 0, %.lr.ph.i338.new ], [ %niter1194.next.1, %bb.bi ]
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i340
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !168 ; 2 uses
  %i.qg = icmp sgt i32 %i.qf, -1
  br i1 %i.qg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qh = zext nneg i32 %i.qf to i64              ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qh ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !168
  %i.qk = add nsw i32 %i.qb, %i.qj                ; 2 uses
  %i.ql = getelementptr inbounds nuw [12 x i8], ptr %i.qa, i64 %.014.i340 ; 3 uses
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.qh
  %i.qn = sext i32 %i.qk to i64
  %i.qo = load ptr, ptr %i.qm, align 8, !tbaa !259
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr %i.qo, i64 %i.qn ; 3 uses
  %i.qq = load float, ptr %i.ql, align 4, !tbaa !167
  store float %i.qq, ptr %i.qp, align 4, !tbaa !167
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !167
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  store float %i.qs, ptr %i.qt, align 4, !tbaa !167
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !167
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store float %i.qv, ptr %i.qw, align 4, !tbaa !167
  %.reass.i342 = add i32 %invariant.op.i339, %i.qk
  store i32 %.reass.i342, ptr %i.qi, align 4, !tbaa !168
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.qx = or disjoint i64 %.014.i340, 1           ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !168 ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, -1
  br i1 %i.ra, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.rb = zext nneg i32 %i.qz to i64              ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rb ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !168
  %i.re = add nsw i32 %i.qb, %i.rd                ; 2 uses
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.qa, i64 %i.qx ; 3 uses
  %i.rg = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.rb
  %i.rh = sext i32 %i.re to i64
  %i.ri = load ptr, ptr %i.rg, align 8, !tbaa !259
  %i.rj = getelementptr inbounds nuw [12 x i8], ptr %i.ri, i64 %i.rh ; 3 uses
  %i.rk = load float, ptr %i.rf, align 4, !tbaa !167
  store float %i.rk, ptr %i.rj, align 4, !tbaa !167
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !167
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store float %i.rm, ptr %i.rn, align 4, !tbaa !167
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !167
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store float %i.rp, ptr %i.rq, align 4, !tbaa !167
  %.reass.i342.1 = add i32 %invariant.op.i339, %i.re
  store i32 %.reass.i342.1, ptr %i.rc, align 4, !tbaa !168
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.rr = add nuw nsw i64 %.014.i340, 2           ; 2 uses
  %niter1194.next.1 = add nuw nsw i64 %niter1194, 2 ; 2 uses
  %niter1194.ncmp.1 = icmp eq i64 %niter1194.next.1, %unroll_iter1193
  br i1 %niter1194.ncmp.1, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa, label %bb.be, !llvm.loop !293

_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa: ; preds = %bb.bi
  %i.rs = and i64 %i.jq, 4
  %lcmp.mod1191.not = icmp eq i64 %i.rs, 0
  br i1 %lcmp.mod1191.not, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343, label %.epil.preheader1189

.epil.preheader1189:                              ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa, %.lr.ph.i338
  %.014.i340.epil.init = phi i64 [ 0, %.lr.ph.i338 ], [ %i.rr, %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1192 = trunc i64 %i.jr to i1
  call void @llvm.assume(i1 %lcmp.mod1192)
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i340.epil.init
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !168 ; 2 uses
  %i.rv = icmp sgt i32 %i.ru, -1
  br i1 %i.rv, label %bb.bj, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

bb.bj:                                            ; preds = %.epil.preheader1189
  %i.rw = zext nneg i32 %i.ru to i64              ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rw ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !168
  %i.rz = add nsw i32 %i.qb, %i.ry                ; 2 uses
  %i.sa = getelementptr inbounds nuw [12 x i8], ptr %i.qa, i64 %.014.i340.epil.init ; 3 uses
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.rw
  %i.sc = sext i32 %i.rz to i64
  %i.sd = load ptr, ptr %i.sb, align 8, !tbaa !259
  %i.se = getelementptr inbounds nuw [12 x i8], ptr %i.sd, i64 %i.sc ; 3 uses
  %i.sf = load float, ptr %i.sa, align 4, !tbaa !167
  store float %i.sf, ptr %i.se, align 4, !tbaa !167
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !167
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  store float %i.sh, ptr %i.si, align 4, !tbaa !167
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !167
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store float %i.sk, ptr %i.sl, align 4, !tbaa !167
  %.reass.i342.epil = add i32 %invariant.op.i339, %i.rz
  store i32 %.reass.i342.epil, ptr %i.rx, align 4, !tbaa !168
  br label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343: ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa, %bb.bj, %.epil.preheader1189, %.thread867, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bk

bb.bk:                                            ; preds = %.thread864, %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343, %bb.bc
  %i.sm = getelementptr inbounds nuw i8, ptr %.lcssa593, i64 888
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !316 ; 2 uses
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ji, i64 1048 ; 3 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !261 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ji, i64 1056 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !262
  %.not.i.i.i = icmp eq ptr %i.ss, %i.sq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.bk
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !262
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.bk
  %.not481 = icmp eq i32 %i.sn, 0
  br i1 %.not481, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i64 noundef %i.so)
          to label %.noexc344 unwind label %bb.cc

.noexc344:                                        ; preds = %bb.bl
  %.pre.i = load ptr, ptr %i.sp, align 8, !tbaa !261
  %.pre733 = load ptr, ptr %8, align 8, !tbaa !165 ; 2 uses
  %.pre734 = load ptr, ptr %i.au, align 8, !tbaa !165
  %.pre735 = load ptr, ptr %i.g, align 8, !tbaa !16
  %.pre753 = ptrtoint ptr %.pre733 to i64
  %.pre755 = ptrtoint ptr %.pre734 to i64
  %.pre757 = sub i64 %.pre755, %.pre753
  %.pre759 = ashr exact i64 %.pre757, 2
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %.noexc344
  %.pre-phi760 = phi i64 [ %i.jr, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre759, %.noexc344 ] ; 2 uses
  %i.st = phi ptr [ %.lcssa593, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre735, %.noexc344 ] ; 3 uses
  %i.su = phi ptr [ %i.jj, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre733, %.noexc344 ]
  %i.sv = phi ptr [ %i.sq, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre.i, %.noexc344 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 896 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !163
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 920
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !322 ; 5 uses
  %i.ta = icmp sgt i64 %.pre-phi760, 0
  br i1 %i.ta, label %.lr.ph.i345, label %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit

.lr.ph.i345:                                      ; preds = %bb.bm
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bv, %.lr.ph.i345
  %.014.i346 = phi i64 [ 0, %.lr.ph.i345 ], [ %i.uu, %bb.bv ] ; 4 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %.014.i346
  %i.te = load i32, ptr %i.td, align 4, !tbaa !168 ; 2 uses
  %i.tf = icmp sgt i32 %i.te, -1
  br i1 %i.tf, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.014.i346
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !168 ; 4 uses
  %i.ti = load i8, ptr %i.tb, align 8, !tbaa !324 ; 2 uses
  %i.tj = icmp eq i8 %i.ti, 0
  br i1 %i.tj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.tk = sext i32 %i.th to i64
  %i.tl = load ptr, ptr %i.sz, align 8, !tbaa !327
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tk
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 -1, ptr %i.tn, align 4, !tbaa !329
  br label %.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.to = icmp eq i8 %i.ti, 1
  %spec.select.i.i4.i.i = select i1 %i.to, ptr %i.sz, ptr null ; 2 uses
  %i.tp = load i32, ptr %i.tc, align 8, !tbaa !336
  %i.tq = and i32 %i.tp, %i.th                    ; 2 uses
  %i.tr = load ptr, ptr %i.sz, align 8, !tbaa !337 ; 4 uses
  %i.ts = sext i32 %i.tq to i64                   ; 2 uses
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !339
  %i.tv = icmp eq i32 %i.tu, %i.th
  br i1 %i.tv, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.tw = zext nneg i32 %i.uq to i64              ; 2 uses
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tw ; 5 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !339
  %i.tz = icmp eq i32 %i.ty, %i.th
  br i1 %i.tz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !294

._crit_edge.i.i.i:                                ; preds = %bb.br
  %i.ua = icmp sgt i32 %.020.i.i.i, -1
  br i1 %i.ua, label %bb.bs, label %._crit_edge.thread.i.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 12
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !340
  %i.ud = zext nneg i32 %.020.i.i.i to i64
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 12
  store i32 %i.uc, ptr %i.uf, align 4, !tbaa !340
  %i.ug = getelementptr inbounds nuw i8, ptr %spec.select.i.i4.i.i, i64 28 ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !341
  %i.ui = icmp slt i32 %i.uq, %i.uh
  br i1 %i.ui, label %bb.bt, label %._crit_edge.thread.i.i.i

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.uq, ptr %i.ug, align 4, !tbaa !341
  br label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i, %bb.bq
  %.lcssa32.i.i.i = phi ptr [ %i.tx, %._crit_edge.i.i.i ], [ %i.tx, %bb.bs ], [ %i.tx, %bb.bt ], [ %i.tt, %bb.bq ] ; 2 uses
  store i32 -1, ptr %.lcssa32.i.i.i, align 4, !tbaa !339
  %i.uj = getelementptr inbounds nuw i8, ptr %.lcssa32.i.i.i, i64 12
  store i32 -1, ptr %i.uj, align 4, !tbaa !340
  %i.uk = getelementptr inbounds nuw i8, ptr %spec.select.i.i4.i.i, i64 32 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !342
  %i.um = add nsw i32 %i.ul, -1
  store i32 %i.um, ptr %i.uk, align 8, !tbaa !342
  br label %.sink.split.i

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %bb.br
  %i.un = phi i64 [ %i.tw, %bb.br ], [ %i.ts, %bb.bq ]
  %.020.i.i.i = phi i32 [ %i.uq, %bb.br ], [ %i.tq, %bb.bq ] ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !340 ; 5 uses
  %i.ur = icmp sgt i32 %i.uq, -1
  br i1 %i.ur, label %bb.br, label %.sink.split.i, !llvm.loop !294

bb.bu:                                            ; preds = %bb.bn
  %i.us = icmp eq i32 %i.te, -2
  br i1 %i.us, label %.sink.split.i, label %bb.bv

.sink.split.i:                                    ; preds = %.lr.ph.i.i.i, %bb.bu, %._crit_edge.thread.i.i.i, %bb.bp
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %.014.i346
  store i32 -1, ptr %i.ut, align 4, !tbaa !168
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i, %bb.bu
  %i.uu = add nuw nsw i64 %.014.i346, 1           ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %i.uu, %.pre-phi760
  br i1 %exitcond.not.i347, label %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit, label %bb.bn, !llvm.loop !295

_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit: ; preds = %bb.bv, %bb.bm
  %i.uv = getelementptr inbounds nuw i8, ptr %i.st, i64 888
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !316
  %i.ux = sext i32 %i.uw to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sw, i64 noundef %i.ux)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit
  %i.uy = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !345
  %i.va = load ptr, ptr %i.g, align 8, !tbaa !16  ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 888
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !316 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 176
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !255
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %bb.bw
  %i.vg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i357 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.vi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.vk = add nuw nsw i32 %.1287, 1               ; 6 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.vm = zext nneg i32 %i.vk to i64
  %narrow = mul nuw nsw i32 %i.vk, 12
  %i.vn = zext nneg i32 %narrow to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %5, i64 200
  br label %bb.cd

._crit_edge627.loopexit:                          ; preds = %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.adm, i64 888
  %.pre745 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !316
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %._crit_edge627.loopexit, %bb.bw
  %i.vp = phi i32 [ %i.vc, %bb.bw ], [ %.pre745, %._crit_edge627.loopexit ] ; 5 uses
  %.0281.lcssa = phi i32 [ %i.vc, %bb.bw ], [ %.1282.lcssa, %._crit_edge627.loopexit ] ; 5 uses
  %.lcssa547 = phi ptr [ %i.va, %bb.bw ], [ %i.adm, %._crit_edge627.loopexit ] ; 3 uses
  %i.vq = load ptr, ptr %i.j, align 8, !tbaa !22  ; 3 uses
  %i.vr = sext i32 %.0281.lcssa to i64            ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 1048 ; 4 uses
  %i.vt = icmp eq i32 %i.vp, 0
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 1056 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !262 ; 3 uses
end_hunk_0
