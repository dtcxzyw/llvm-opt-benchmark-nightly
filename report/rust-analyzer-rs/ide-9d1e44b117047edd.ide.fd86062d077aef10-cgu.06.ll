Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RNvXs5_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.fm = load ptr, ptr %i.l, align 16, !alias.scope !2172, !nonnull !6
  %i.fn = load i64, ptr %i.bf, align 8, !alias.scope !2172
  %.sink11.i223 = select i1 %i.fl, ptr %i.fm, ptr %i.l
  %.sink10.i224 = select i1 %i.fl, i64 %i.fn, i64 %i.fk ; 2 uses
  %i.fo = load i64, ptr %i.da, align 16, !alias.scope !2173, !noundef !6 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 2                   ; 2 uses
  %i.fq = load ptr, ptr %i.j, align 16, !alias.scope !2173, !nonnull !6
  %i.fr = load i64, ptr %i.dc, align 8, !alias.scope !2173
  %.sink11.i226 = select i1 %i.fp, ptr %i.fq, ptr %i.j
  %.sink10.i227 = select i1 %i.fp, i64 %i.fr, i64 %i.fo ; 2 uses
  %i.fs = add i64 %.sink10.i227, %.sink10.i224
  %i.ft = shl i64 %i.fs, 7
  %i.fu = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i220, i64 noundef %i.fj, ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i223, i64 noundef %.sink10.i224, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i226, i64 noundef %.sink10.i227, i64 noundef %i.ft)
          to label %bb.ao unwind label %bb.ac     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fv = load i64, ptr %i.cz, align 16, !alias.scope !2174, !noundef !6 ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, 2                   ; 2 uses
  %i.fx = load i64, ptr %i.de, align 8, !alias.scope !2174 ; 2 uses
  %.sink10.i236475 = select i1 %i.fw, i64 %i.fx, i64 %i.fv ; 2 uses
  %.not161476 = icmp eq i64 %.sink10.i236475, 0
  br i1 %.not161476, label %.critedge170, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.ao
  %i.fy = load ptr, ptr %i.k, align 16, !alias.scope !2174, !nonnull !6
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph478, %bb.at
  %i.fz = phi i64 [ %i.fx, %.lr.ph478 ], [ %i.gk, %bb.at ]
  %i.ga = phi i64 [ %i.fv, %.lr.ph478 ], [ %i.gl, %bb.at ]
  %.sink10.i236477 = phi i64 [ %.sink10.i236475, %.lr.ph478 ], [ %.sink10.i236, %bb.at ]
  %i.gb = phi i1 [ %i.fw, %.lr.ph478 ], [ %i.gm, %bb.at ] ; 2 uses
  %.sink11.i235 = select i1 %i.gb, ptr %i.fy, ptr %i.k
  %i.gc = getelementptr [16 x i8], ptr %.sink11.i235, i64 %.sink10.i236477
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = load i128, ptr %i.gd, align 16, !noundef !6
  %i.gf = icmp eq i128 %i.ge, 0
  br i1 %i.gf, label %bb.ar, label %.critedge170

.critedge170:                                     ; preds = %bb.ap, %bb.at, %bb.ao
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit238 unwind label %bb.aq

bb.aq:                                            ; preds = %.critedge170
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %.sink9.i240 = select i1 %i.gb, ptr %i.de, ptr %i.cz ; 2 uses
  %i.gh = load i64, ptr %.sink9.i240, align 8, !noundef !6 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = add i64 %i.gh, -1
  store i64 %i.gj, ptr %.sink9.i240, align 8
  %.pre561 = load i64, ptr %i.cz, align 16, !alias.scope !2174
  %.pre562 = load i64, ptr %i.de, align 8, !alias.scope !2174
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.gk = phi i64 [ %i.fz, %bb.ar ], [ %.pre562, %bb.as ] ; 2 uses
  %i.gl = phi i64 [ %i.ga, %bb.ar ], [ %.pre561, %bb.as ] ; 3 uses
  %i.gm = icmp ugt i64 %i.gl, 2                   ; 2 uses
  %.sink10.i236 = select i1 %i.gm, i64 %i.gk, i64 %i.gl ; 2 uses
  %.not161 = icmp eq i64 %.sink10.i236, 0
  br i1 %.not161, label %.critedge170, label %bb.ap

bb.au:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit183, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit191, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit187
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

.split.i:                                         ; preds = %bb.y
  %i.go = load i64, ptr %i.bb, align 16, !alias.scope !2175, !noundef !6 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 2                   ; 2 uses
  %i.gq = load ptr, ptr %i.l, align 16, !alias.scope !2175, !nonnull !6
  %.sink10.i242 = select i1 %i.gp, ptr %i.gq, ptr %i.l ; 8 uses
  %.val419 = load i64, ptr %i.bf, align 8
  %i.gr = select i1 %i.gp, i64 %.val419, i64 %i.go ; 6 uses
  %i.gs = lshr i64 %i.df, 7                       ; 9 uses
  %.not1725.i = icmp eq i64 %i.gr, 0
  br i1 %.not1725.i, label %.loopexit459, label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %.split.i
  %i.gt = and i64 %i.df, 127                      ; 3 uses
  %.not18.i = icmp eq i64 %i.gt, 0
  %i.gu = zext nneg i64 %i.gt to i128
  %i.gv = sub nuw nsw i64 128, %i.gt
  %i.gw = zext nneg i64 %i.gv to i128
  br i1 %.not18.i, label %.lr.ph.split.us.i249.preheader, label %.lr.ph.split.i247

.lr.ph.split.us.i249.preheader:                   ; preds = %.lr.ph.i246
  %xtraiter777 = and i64 %i.gr, 1
  %lcmp.mod778.not = icmp eq i64 %xtraiter777, 0
  br i1 %lcmp.mod778.not, label %.lr.ph.split.us.i249.prol.loopexit, label %.lr.ph.split.us.i249.prol

.lr.ph.split.us.i249.prol:                        ; preds = %.lr.ph.split.us.i249.preheader
  %i.gx = add nsw i64 %i.gr, -1                   ; 4 uses
  %i.gy = icmp ult i64 %i.gx, %i.gs
  br i1 %i.gy, label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.i249.prol
  %i.gz = sub nuw nsw i64 %i.gx, %i.gs
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gz
  %i.hb = load i128, ptr %i.ha, align 16, !alias.scope !2176, !noundef !6
  br label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa

.lr.ph.split.us.i249.prol.loopexit.unr-lcssa:     ; preds = %bb.av, %.lr.ph.split.us.i249.prol
  %.sroa.02.0.us.i250.prol = phi i128 [ %i.hb, %bb.av ], [ 0, %.lr.ph.split.us.i249.prol ]
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gx
  store i128 %.sroa.02.0.us.i250.prol, ptr %i.hc, align 16, !alias.scope !2176
  br label %.lr.ph.split.us.i249.prol.loopexit

.lr.ph.split.us.i249.prol.loopexit:               ; preds = %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa, %.lr.ph.split.us.i249.preheader
  %.sroa.05.026.us.i.unr = phi i64 [ %i.gr, %.lr.ph.split.us.i249.preheader ], [ %i.gx, %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa ]
  %i.hd = icmp eq i64 %i.gr, 1
  br i1 %i.hd, label %.loopexit459, label %.lr.ph.split.us.i249

.lr.ph.split.us.i249:                             ; preds = %.lr.ph.split.us.i249.prol.loopexit, %bb.ay
  %.sroa.05.026.us.i = phi i64 [ %i.hk, %bb.ay ], [ %.sroa.05.026.us.i.unr, %.lr.ph.split.us.i249.prol.loopexit ] ; 2 uses
  %i.he = add nsw i64 %.sroa.05.026.us.i, -1      ; 3 uses
  %i.hf = icmp ult i64 %i.he, %i.gs
  br i1 %i.hf, label %.lr.ph.split.us.i249.1, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split.us.i249
  %i.hg = sub nuw nsw i64 %i.he, %i.gs
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hg
  %i.hi = load i128, ptr %i.hh, align 16, !alias.scope !2176, !noundef !6
  br label %.lr.ph.split.us.i249.1

.lr.ph.split.us.i249.1:                           ; preds = %bb.aw, %.lr.ph.split.us.i249
  %.sroa.02.0.us.i250 = phi i128 [ %i.hi, %bb.aw ], [ 0, %.lr.ph.split.us.i249 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.he
  store i128 %.sroa.02.0.us.i250, ptr %i.hj, align 16, !alias.scope !2176
  %i.hk = add nsw i64 %.sroa.05.026.us.i, -2      ; 5 uses
  %i.hl = icmp ult i64 %i.hk, %i.gs
  br i1 %i.hl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.us.i249.1
  %i.hm = sub nuw nsw i64 %i.hk, %i.gs
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hm
  %i.ho = load i128, ptr %i.hn, align 16, !alias.scope !2176, !noundef !6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.split.us.i249.1
  %.sroa.02.0.us.i250.1 = phi i128 [ %i.ho, %bb.ax ], [ 0, %.lr.ph.split.us.i249.1 ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hk
  store i128 %.sroa.02.0.us.i250.1, ptr %i.hp, align 16, !alias.scope !2176
  %.not17.us.i.1 = icmp eq i64 %i.hk, 0
  br i1 %.not17.us.i.1, label %.loopexit459, label %.lr.ph.split.us.i249

.lr.ph.split.i247:                                ; preds = %.lr.ph.i246, %bb.bb
  %.sroa.05.026.i = phi i64 [ %i.hq, %bb.bb ], [ %i.gr, %.lr.ph.i246 ]
  %i.hq = add nsw i64 %.sroa.05.026.i, -1         ; 6 uses
  %i.hr = icmp ult i64 %i.hq, %i.gs
  br i1 %i.hr, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i247
  %i.hs = sub nuw nsw i64 %i.hq, %i.gs
  %i.ht = getelementptr [16 x i8], ptr %.sink10.i242, i64 %i.hs ; 2 uses
  %i.hu = load i128, ptr %i.ht, align 16, !alias.scope !2176, !noundef !6
  %i.hv = shl i128 %i.hu, %i.gu                   ; 2 uses
  %.not19.not.i = icmp ugt i64 %i.hq, %i.gs
  br i1 %.not19.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr i8, ptr %i.ht, i64 -16
  %i.hx = load i128, ptr %i.hw, align 16, !alias.scope !2176, !noundef !6
  %i.hy = lshr i128 %i.hx, %i.gw
  %i.hz = or i128 %i.hy, %i.hv
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph.split.i247
  %.sroa.02.0.i248 = phi i128 [ 0, %.lr.ph.split.i247 ], [ %i.hz, %bb.ba ], [ %i.hv, %bb.az ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hq
  store i128 %.sroa.02.0.i248, ptr %i.ia, align 16, !alias.scope !2176
  %.not17.i = icmp eq i64 %i.hq, 0
  br i1 %.not17.i, label %.loopexit459, label %.lr.ph.split.i247

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph505, %.lr.ph698, %bb.cw, %bb.da, %.lr.ph724, %bb.dn, %.lr.ph714, %bb.cq, %bb.cl, %bb.bj, %bb.by, %bb.dv, %bb.du, %.thread410, %bb.dj, %bb.di, %bb.df, %bb.dd, %bb.ct, %._crit_edge705, %bb.ci, %bb.ch, %bb.cf, %.loopexit452, %bb.bs, %bb.bq, %bb.bo
  %lpad.loopexit.split-lp761 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit187 unwind label %bb.au

.loopexit459:                                     ; preds = %bb.bb, %.lr.ph.split.us.i249.prol.loopexit, %bb.ay, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit189, %.split.i
  %.promoted492 = phi i32 [ 0, %.lr.ph.split.us.i249.prol.loopexit ], [ 0, %.split.i ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %i.cu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit189 ], [ 0, %bb.ay ], [ 0, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 10 uses
  store i64 0, ptr %i.ib, align 8
  %i.ic = mul nuw nsw i64 %.sroa.013.0, 196
  %i.id = add nuw nsw i64 %i.ic, 58
  %i.ie = udiv i64 %i.id, 59
  %i.if = load i64, ptr %i.bb, align 16, !alias.scope !2177, !noundef !6 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 2                   ; 3 uses
  %i.ih = load ptr, ptr %i.l, align 16, !alias.scope !2177 ; 2 uses
  %i.ii = load i64, ptr %i.bf, align 8, !alias.scope !2177 ; 2 uses
  %.sink11.i = select i1 %i.ig, ptr %i.ih, ptr %i.l
  %.sink10.i175 = select i1 %i.ig, i64 %i.ii, i64 %i.if ; 3 uses
  %.not.i255693 = icmp eq i64 %.sink10.i175, 0
  br i1 %.not.i255693, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %.lr.ph695

bb.bc:                                            ; preds = %.lr.ph695
  %.not.i255 = icmp eq i64 %i.ij, 0
  br i1 %.not.i255, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %.lr.ph695

.lr.ph695:                                        ; preds = %.loopexit459, %bb.bc
  %.sroa.02.0.i254694 = phi i64 [ %i.ij, %bb.bc ], [ %.sink10.i175, %.loopexit459 ] ; 2 uses
  %i.ij = add nsw i64 %.sroa.02.0.i254694, -1     ; 3 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i, i64 %i.ij
  %i.il = load i128, ptr %i.ik, align 16, !alias.scope !2178, !noundef !6 ; 2 uses
  %i.im = icmp eq i128 %i.il, 0
  br i1 %i.im, label %bb.bc, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph695
  %i.in = shl i64 %.sroa.02.0.i254694, 7
  %i.io = call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.il, i1 true)
  %i.ip = trunc nuw nsw i128 %i.io to i64
  %i.iq = sub i64 %i.in, %i.ip
  %i.ir = call i64 @llvm.usub.sat.i64(i64 %i.iq, i64 %i.ie)
  %i.is = mul i64 %i.ir, 59
  %i.it = udiv i64 %i.is, 196
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %bb.bc, %.loopexit459, %bb.bd
  %.sroa.0.0.i256 = phi i64 [ %i.it, %bb.bd ], [ 0, %.loopexit459 ], [ 0, %bb.bc ]
  %i.iu = icmp eq i64 %.sink10.i175, 0
  br i1 %i.iu, label %.outer._crit_edge, label %.lr.ph490.lr.ph

.lr.ph490.lr.ph:                                  ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br label %.lr.ph490

.lr.ph490:                                        ; preds = %.lr.ph490.lr.ph, %.outer
  %.pre565 = phi ptr [ %i.ih, %.lr.ph490.lr.ph ], [ %.pre565580, %.outer ] ; 3 uses
  %i.iw = phi i64 [ %i.ii, %.lr.ph490.lr.ph ], [ %i.mf, %.outer ] ; 2 uses
  %i.ix = phi i64 [ %i.if, %.lr.ph490.lr.ph ], [ %i.mg, %.outer ] ; 2 uses
  %i.iy = phi i1 [ %i.ig, %.lr.ph490.lr.ph ], [ %i.mh, %.outer ]
  %.promoted496 = phi i32 [ %.promoted492, %.lr.ph490.lr.ph ], [ %.promoted, %.outer ] ; 2 uses
  %.sroa.026.0.ph495 = phi i64 [ %.sroa.0.0.i256, %.lr.ph490.lr.ph ], [ 0, %.outer ] ; 2 uses
  %.sroa.028.0.ph494 = phi i1 [ true, %.lr.ph490.lr.ph ], [ %or.cond, %.outer ]
  %i.iz = trunc i64 %.sroa.026.0.ph495 to i32
  %i.ja = add i32 %.promoted496, %i.iz            ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph490, %bb.bh
  %.pre565582 = phi ptr [ %.pre565, %.lr.ph490 ], [ %.pre565581, %bb.bh ]
  %i.jb = phi i64 [ %i.iw, %.lr.ph490 ], [ %i.lk, %bb.bh ]
  %i.jc = phi i64 [ %i.ix, %.lr.ph490 ], [ %i.ll, %bb.bh ]
  %i.jd = phi i64 [ %i.iw, %.lr.ph490 ], [ %i.lm, %bb.bh ] ; 2 uses
  %i.je = phi i64 [ %i.ix, %.lr.ph490 ], [ %i.ln, %bb.bh ] ; 2 uses
  %2 = phi ptr [ %.pre565, %.lr.ph490 ], [ %4, %bb.bh ]
  %3 = phi ptr [ %.pre565, %.lr.ph490 ], [ %6, %bb.bh ] ; 2 uses
  %i.jf = phi i1 [ %i.iy, %.lr.ph490 ], [ %i.lr, %bb.bh ] ; 2 uses
  %.sroa.026.0489 = phi i64 [ %.sroa.026.0.ph495, %.lr.ph490 ], [ %i.lp, %bb.bh ] ; 2 uses
  %i.jg = phi i32 [ %.promoted496, %.lr.ph490 ], [ %i.lq, %bb.bh ]
  %.sink10.i260 = select i1 %i.jf, ptr %3, ptr %i.l ; 2 uses
  %i.jh = select i1 %i.jf, i64 %i.jd, i64 %i.je   ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %.idx.i = shl nuw nsw i64 %i.jh, 4
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink10.i260, i64 %.idx.i
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i
  %.sroa.4.018.i = phi ptr [ %i.jk, %.lr.ph.i266 ], [ %i.jj, %.lr.ph.preheader.i ]
  %.lcssa1617.i = phi i64 [ %i.ko, %.lr.ph.i266 ], [ 0, %.lr.ph.preheader.i ]
  %i.jk = getelementptr inbounds i8, ptr %.sroa.4.018.i, i64 -16 ; 4 uses
  %i.jl = load i128, ptr %i.jk, align 16, !alias.scope !2179, !noundef !6 ; 3 uses
  %i.jm = lshr i128 %i.jl, 96
  %i.jn = trunc nuw nsw i128 %i.jm to i64
  %i.jo = shl nuw nsw i64 %.lcssa1617.i, 32
  %i.jp = or disjoint i64 %i.jo, %i.jn            ; 2 uses
  %i.jq = urem i64 %i.jp, 10
  %i.jr = udiv i64 %i.jp, 10
  %i.js = zext nneg i64 %i.jr to i128
  %i.jt = shl nuw i128 %i.js, 96
  %i.ju = lshr i128 %i.jl, 64
  %i.jv = trunc nuw i128 %i.ju to i64
  %i.jw = and i64 %i.jv, 4294967295
  %i.jx = shl nuw nsw i64 %i.jq, 32
  %i.jy = or disjoint i64 %i.jx, %i.jw            ; 2 uses
  %i.jz = urem i64 %i.jy, 10
  %i.ka = udiv i64 %i.jy, 10
  %i.kb = zext nneg i64 %i.ka to i128
  %i.kc = shl nuw nsw i128 %i.kb, 64
  %i.kd = or i128 %i.kc, %i.jt
  %i.ke = trunc i128 %i.jl to i64                 ; 2 uses
  %i.kf = call i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.ke, i64 32) ; 2 uses
  %i.kg = urem i64 %i.kf, 10
  %i.kh = udiv i64 %i.kf, 10
  %i.ki = zext nneg i64 %i.kh to i128
  %i.kj = shl nuw nsw i128 %i.ki, 32
  %i.kk = or i128 %i.kd, %i.kj
  %i.kl = and i64 %i.ke, 4294967295
  %i.km = shl nuw nsw i64 %i.kg, 32
  %i.kn = or disjoint i64 %i.km, %i.kl            ; 2 uses
  %i.ko = urem i64 %i.kn, 10                      ; 2 uses
  %i.kp = udiv i64 %i.kn, 10
  %i.kq = zext nneg i64 %i.kp to i128
  %i.kr = or i128 %i.kk, %i.kq
  store i128 %i.kr, ptr %i.jk, align 16, !alias.scope !2179
  %i.ks = icmp eq ptr %.sink10.i260, %i.jk
  br i1 %i.ks, label %._crit_edge.i, label %.lr.ph.i266

._crit_edge.i:                                    ; preds = %.lr.ph.i266
  %i.kt = trunc nuw nsw i64 %i.ko to i8
  %.pre564 = load ptr, ptr %i.l, align 16, !alias.scope !2180 ; 3 uses
  %.pre568 = load i64, ptr %i.bb, align 16, !alias.scope !2181 ; 2 uses
  %.pre569 = load i64, ptr %i.bf, align 8, !alias.scope !2181 ; 2 uses
  br label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit

_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.be, %._crit_edge.i
  %.pre565581 = phi ptr [ %.pre565582, %bb.be ], [ %.pre564, %._crit_edge.i ] ; 2 uses
  %i.ku = phi i64 [ %i.jb, %bb.be ], [ %.pre569, %._crit_edge.i ] ; 2 uses
  %i.kv = phi i64 [ %i.jc, %bb.be ], [ %.pre568, %._crit_edge.i ] ; 2 uses
  %i.kw = phi i64 [ %i.jd, %bb.be ], [ %.pre569, %._crit_edge.i ] ; 4 uses
  %i.kx = phi i64 [ %i.je, %bb.be ], [ %.pre568, %._crit_edge.i ] ; 5 uses
  %4 = phi ptr [ %2, %bb.be ], [ %.pre564, %._crit_edge.i ] ; 4 uses
  %5 = phi ptr [ %3, %bb.be ], [ %.pre564, %._crit_edge.i ]
  %.sroa.0314.0 = phi i8 [ 0, %bb.be ], [ %i.kt, %._crit_edge.i ] ; 2 uses
  %i.ky = icmp ugt i64 %i.kx, 2                   ; 2 uses
  %.sink10.i268481 = select i1 %i.ky, i64 %i.kw, i64 %i.kx ; 2 uses
  %.not165482 = icmp eq i64 %.sink10.i268481, 0
  br i1 %.not165482, label %.critedge172, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit, %bb.bn
  %i.kz = phi i64 [ %i.mm, %bb.bn ], [ %i.ku, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.la = phi i64 [ %i.mn, %bb.bn ], [ %i.kv, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.lb = phi i64 [ %i.mo, %bb.bn ], [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.lc = phi i64 [ %i.mp, %bb.bn ], [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.ld = phi i64 [ %i.mq, %bb.bn ], [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %i.le = phi i64 [ %i.mr, %bb.bn ], [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %.sink10.i268483 = phi i64 [ %.sink10.i268, %bb.bn ], [ %.sink10.i268481, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %i.lf = phi i1 [ %i.ms, %bb.bn ], [ %i.ky, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %.sink11.i267 = select i1 %i.lf, ptr %4, ptr %i.l
  %i.lg = getelementptr [16 x i8], ptr %.sink11.i267, i64 %.sink10.i268483
  %i.lh = getelementptr i8, ptr %i.lg, i64 -16
  %i.li = load i128, ptr %i.lh, align 16, !noundef !6
  %i.lj = icmp eq i128 %i.li, 0
  br i1 %i.lj, label %bb.bl, label %.critedge172

.critedge172:                                     ; preds = %bb.bf, %bb.bn, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit
  %i.lk = phi i64 [ %i.ku, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.kz, %bb.bf ], [ %i.mm, %bb.bn ] ; 2 uses
  %i.ll = phi i64 [ %i.kv, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.la, %bb.bf ], [ %i.mn, %bb.bn ] ; 2 uses
  %i.lm = phi i64 [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.lb, %bb.bf ], [ %i.mo, %bb.bn ] ; 2 uses
  %i.ln = phi i64 [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.lc, %bb.bf ], [ %i.mp, %bb.bn ] ; 3 uses
  %6 = phi ptr [ %5, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %4, %bb.bn ], [ %4, %bb.bf ]
  %.not166 = icmp eq i64 %.sroa.026.0489, 0
  br i1 %.not166, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.critedge172
  store i32 %i.ja, ptr %i.m, align 4
  %i.lo = icmp eq i8 %.sroa.0314.0, 0
  %or.cond = and i1 %.sroa.028.0.ph494, %i.lo     ; 2 uses
  br i1 %or.cond, label %bb.bk, label %bb.bi

bb.bh:                                            ; preds = %.critedge172
  %i.lp = add nsw i64 %.sroa.026.0489, -1
  %i.lq = add i32 %i.jg, 1                        ; 2 uses
  %i.lr = icmp ugt i64 %i.ln, 2                   ; 2 uses
  %.sink10.i258 = select i1 %i.lr, i64 %i.lm, i64 %i.ln
  %i.ls = icmp eq i64 %.sink10.i258, 0
  br i1 %i.ls, label %.outer._crit_edge, label %bb.be

bb.bi:                                            ; preds = %bb.bg
  %i.lt = add nuw nsw i8 %.sroa.0314.0, 48
  %i.lu = load i64, ptr %i.ib, align 8, !alias.scope !2182, !noundef !6 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 64                  ; 2 uses
  %i.lw = load ptr, ptr %i.f, align 8, !alias.scope !2182, !nonnull !6
  %.sink10.i.i273 = select i1 %i.lv, ptr %i.lw, ptr %i.f
  %.sink9.i.i274 = select i1 %i.lv, ptr %i.iv, ptr %i.ib ; 2 uses
  %.sink.i.i275 = call i64 @llvm.umax.i64(i64 %i.lu, i64 64)
  %i.lx = load i64, ptr %.sink9.i.i274, align 8, !alias.scope !2183, !noundef !6 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, %.sink.i.i275
  br i1 %i.ly, label %bb.bj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, !prof !11

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.bj
  %i.lz = load ptr, ptr %i.f, align 8, !alias.scope !2183, !nonnull !6, !noundef !6
  %.pre.i278 = load i64, ptr %i.iv, align 8, !alias.scope !2183
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit: ; preds = %bb.bi, %.noexc279
  %i.ma = phi i64 [ %.pre.i278, %.noexc279 ], [ %i.lx, %bb.bi ]
  %.sroa.01.0.i276 = phi ptr [ %i.iv, %.noexc279 ], [ %.sink9.i.i274, %bb.bi ] ; 2 uses
  %.sroa.0.0.i277 = phi ptr [ %i.lz, %.noexc279 ], [ %.sink10.i.i273, %bb.bi ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i277, i64 %i.ma
  store i8 %i.lt, ptr %i.mb, align 1
  %i.mc = load i64, ptr %.sroa.01.0.i276, align 8, !alias.scope !2183, !noundef !6
  %i.md = add i64 %i.mc, 1
  store i64 %i.md, ptr %.sroa.01.0.i276, align 8, !alias.scope !2183
  %.pre573.a = load i64, ptr %i.bb, align 16, !alias.scope !2180
  %.pre574 = load i64, ptr %i.bf, align 8, !alias.scope !2180
  %.pre565.pre = load ptr, ptr %i.l, align 16, !alias.scope !2180
  br label %.outer

bb.bk:                                            ; preds = %bb.bg
  %i.me = add i32 %i.ja, 1                        ; 2 uses
  store i32 %i.me, ptr %i.m, align 4
  br label %.outer

.outer:                                           ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, %bb.bk
  %.pre565580 = phi ptr [ %.pre565.pre, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %.pre565581, %bb.bk ]
  %i.mf = phi i64 [ %.pre574, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.lk, %bb.bk ] ; 2 uses
  %i.mg = phi i64 [ %.pre573.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.ll, %bb.bk ] ; 3 uses
  %.promoted = phi i32 [ %i.ja, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.me, %bb.bk ] ; 2 uses
  %i.mh = icmp ugt i64 %i.mg, 2                   ; 2 uses
  %.sink10.i258488 = select i1 %i.mh, i64 %i.mf, i64 %i.mg
  %i.mi = icmp eq i64 %.sink10.i258488, 0
  br i1 %i.mi, label %.outer._crit_edge, label %.lr.ph490

bb.bl:                                            ; preds = %bb.bf
  %.sink9.i271 = select i1 %i.lf, ptr %i.bf, ptr %i.bb ; 2 uses
  %i.mj = load i64, ptr %.sink9.i271, align 8, !noundef !6 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = add i64 %i.mj, -1
  store i64 %i.ml, ptr %.sink9.i271, align 8
  %.pre570 = load i64, ptr %i.bb, align 16, !alias.scope !2181 ; 3 uses
  %.pre571 = load i64, ptr %i.bf, align 8, !alias.scope !2181 ; 3 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.mm = phi i64 [ %i.kz, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mn = phi i64 [ %i.la, %bb.bl ], [ %.pre570, %bb.bm ] ; 2 uses
  %i.mo = phi i64 [ %i.lb, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mp = phi i64 [ %i.lc, %bb.bl ], [ %.pre570, %bb.bm ] ; 2 uses
  %i.mq = phi i64 [ %i.ld, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mr = phi i64 [ %i.le, %bb.bl ], [ %.pre570, %bb.bm ] ; 3 uses
  %i.ms = icmp ugt i64 %i.mr, 2                   ; 2 uses
  %.sink10.i268 = select i1 %i.ms, i64 %i.mq, i64 %i.mr ; 2 uses
  %.not165 = icmp eq i64 %.sink10.i268, 0
  br i1 %.not165, label %.critedge172, label %bb.bf

.outer._crit_edge:                                ; preds = %.outer, %bb.bh, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %i.mt = phi i32 [ %i.lq, %bb.bh ], [ %.promoted492, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ], [ %.promoted, %.outer ] ; 3 uses
  store i32 %i.mt, ptr %i.m, align 4
  %i.mu = load i64, ptr %i.ib, align 8, !alias.scope !2184, !noundef !6 ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !2184 ; 2 uses
  %.sink10.i264 = select i1 %i.mv, i64 %i.mx, i64 %i.mu ; 4 uses
  %i.my = icmp eq i64 %.sink10.i264, 0
  br i1 %i.my, label %bb.bo, label %bb.bp, !prof !11

bb.bo:                                            ; preds = %.outer._crit_edge
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @154, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #38
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %.outer._crit_edge
  %i.mz = icmp ugt i64 %.sink10.i264, %.sroa.013.0
  br i1 %i.mz, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.na = sub nuw i64 %.sink10.i264, %.sroa.013.0 ; 7 uses
  %i.nb = add i64 %i.na, -1
  %i.nc = invoke noundef nonnull ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i64 noundef %i.nb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !6
  %i.ne = icmp ult i8 %i.nd, 53
  br i1 %i.ne, label %.preheader451, label %bb.bs

.preheader451:                                    ; preds = %bb.br
  %i.nf = load i64, ptr %i.ib, align 8, !alias.scope !2185, !noundef !6 ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 64
  %i.nh = load i64, ptr %i.mw, align 8, !alias.scope !2185
  %.sink10.i290503 = select i1 %i.ng, i64 %i.nh, i64 %i.nf
  %i.ni = icmp ult i64 %i.na, %.sink10.i290503
  br i1 %i.ni, label %.lr.ph505, label %.loopexit452

bb.bs:                                            ; preds = %bb.br
  %i.nj = invoke { ptr, i64 } @_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutINtNtBT_5range9RangeFromjEE9index_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.na, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.nk = extractvalue { ptr, i64 } %i.nj, 0      ; 3 uses
  %i.nl = extractvalue { ptr, i64 } %i.nj, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nk) ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  %i.nn = icmp samesign eq i64 %i.nl, 0
  br i1 %i.nn, label %.loopexit452, label %.lr.ph501.preheader

.lr.ph501.preheader:                              ; preds = %bb.bt
  %i.no = add i64 %i.nl, %.sink10.i264
  %i.np = sub i64 %i.no, %.sroa.013.0
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader, %bb.bu
  %.sroa.031.0499 = phi i64 [ %i.nt, %bb.bu ], [ %i.na, %.lr.ph501.preheader ] ; 2 uses
  %.sroa.039.0498 = phi ptr [ %i.ns, %bb.bu ], [ %i.nk, %.lr.ph501.preheader ] ; 3 uses
  %i.nq = load i8, ptr %.sroa.039.0498, align 1, !noundef !6 ; 2 uses
  %i.nr = icmp eq i8 %i.nq, 57
  br i1 %i.nr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph501
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.039.0498, i64 1 ; 2 uses
  %i.nt = add i64 %.sroa.031.0499, 1
  %i.nu = icmp eq ptr %i.ns, %i.nm
  br i1 %i.nu, label %.loopexit452, label %.lr.ph501

bb.bv:                                            ; preds = %.lr.ph501
  %i.nv = add i8 %i.nq, 1
  store i8 %i.nv, ptr %.sroa.039.0498, align 1
  br label %.loopexit452

.loopexit452:                                     ; preds = %bb.bu, %bb.bx, %bb.bw, %bb.bt, %.preheader451, %bb.bv
  %.sroa.031.1 = phi i64 [ %i.na, %bb.bt ], [ %.sroa.031.0499, %bb.bv ], [ %i.na, %.preheader451 ], [ %.sroa.031.2504, %bb.bw ], [ %i.ob, %bb.bx ], [ %i.np, %bb.bu ] ; 2 uses
  %i.nw = trunc i64 %.sroa.031.1 to i32
  %i.nx = add i32 %i.mt, %i.nw                    ; 3 uses
  store i32 %i.nx, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMsd_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAhj40_E5drainINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %.sroa.031.1)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph505:                                        ; preds = %.preheader451, %bb.bx
  %.sroa.031.2504 = phi i64 [ %i.ob, %bb.bx ], [ %i.na, %.preheader451 ] ; 3 uses
  %i.ny = invoke noundef nonnull ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i64 noundef %.sroa.031.2504, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.lr.ph505
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !6
  %i.oa = icmp eq i8 %i.nz, 48
  br i1 %i.oa, label %bb.bx, label %.loopexit452

bb.bx:                                            ; preds = %bb.bw
  %i.ob = add nuw i64 %.sroa.031.2504, 1          ; 3 uses
  %i.oc = load i64, ptr %i.ib, align 8, !alias.scope !2185, !noundef !6 ; 2 uses
  %i.od = icmp ugt i64 %i.oc, 64
  %i.oe = load i64, ptr %i.mw, align 8, !alias.scope !2185
  %.sink10.i290 = select i1 %i.od, i64 %i.oe, i64 %i.oc
  %i.of = icmp ult i64 %i.ob, %.sink10.i290
  br i1 %i.of, label %.lr.ph505, label %.loopexit452

bb.by:                                            ; preds = %.loopexit452
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.og = load i64, ptr %i.ib, align 8, !alias.scope !2186, !noundef !6 ; 3 uses
  %i.oh = icmp ugt i64 %i.og, 64                  ; 3 uses
  %i.oi = load i64, ptr %i.mw, align 8, !alias.scope !2186 ; 2 uses
  %.sink10.i294 = select i1 %i.oh, i64 %i.oi, i64 %i.og
  %i.oj = icmp eq i64 %.sink10.i294, 0
  br i1 %i.oj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303, label %bb.ca

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303: ; preds = %bb.bz
  %.sink9.i.i297 = select i1 %i.oh, ptr %i.mw, ptr %i.ib ; 2 uses
  %i.ok = load ptr, ptr %i.f, align 8, !alias.scope !2186, !nonnull !6
  %.sink10.i.i296 = select i1 %i.oh, ptr %i.ok, ptr %i.f
  store i8 49, ptr %.sink10.i.i296, align 1
  %i.ol = load i64, ptr %.sink9.i.i297, align 8, !alias.scope !2187, !noundef !6
  %i.om = add i64 %i.ol, 1
  store i64 %i.om, ptr %.sink9.i.i297, align 8, !alias.scope !2187
  %.pre575 = load i64, ptr %i.ib, align 8, !alias.scope !2188
  %.pre576 = load i64, ptr %i.mw, align 8, !alias.scope !2188
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bz, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303
  %i.on = phi i32 [ %i.mt, %bb.bp ], [ %i.nx, %bb.bz ], [ %i.nx, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 7 uses
  %i.oo = phi i64 [ %i.mx, %bb.bp ], [ %i.oi, %bb.bz ], [ %.pre576, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ]
  %i.op = phi i64 [ %i.mu, %bb.bp ], [ %i.og, %bb.bz ], [ %.pre575, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 2 uses
  %i.oq = icmp ugt i64 %i.op, 64                  ; 2 uses
  %i.or = load ptr, ptr %i.f, align 8, !alias.scope !2188, !nonnull !6
  %.sink10.i287 = select i1 %i.oq, i64 %i.oo, i64 %i.op ; 12 uses
  %i.os = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.os, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ot = icmp sgt i32 %i.on, -1
  br i1 %i.ot, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ou = trunc i64 %.sink10.i287 to i32
  %i.ov = add i32 %i.ou, -1
  %i.ow = add i32 %i.ov, %i.on                    ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, -1
  br i1 %i.ox, label %bb.cg, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.oy = zext nneg i32 %i.on to i64              ; 2 uses
  %i.oz = icmp samesign ult i64 %.sroa.05.0, %i.oy
  %i.pa = add i64 %.sink10.i287, %i.oy
  %i.pb = icmp ugt i64 %i.pa, %.sroa.013.0
  %or.cond413 = select i1 %i.oz, i1 true, i1 %i.pb
  br i1 %or.cond413, label %bb.cf, label %bb.cy

bb.ce:                                            ; preds = %bb.cc
  %i.pc = sub i32 0, %i.ow
  %i.pd = sext i32 %i.pc to i64
  %i.pe = icmp ult i64 %.sroa.05.0, %i.pd
  br i1 %i.pe, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.cd, %bb.ca, %bb.ce
  %i.pf = trunc i64 %.sink10.i287 to i32
  %i.pg = add i32 %i.pf, -1
  %i.ph = add i32 %i.pg, %i.on
  store i32 %i.ph, ptr %i.m, align 4
  %i.pi = add i64 %.sink10.i287, -1               ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.fm = load ptr, ptr %i.l, align 16, !alias.scope !2265, !nonnull !6
  %i.fn = load i64, ptr %i.bf, align 8, !alias.scope !2265
  %.sink11.i223 = select i1 %i.fl, ptr %i.fm, ptr %i.l
  %.sink10.i224 = select i1 %i.fl, i64 %i.fn, i64 %i.fk ; 2 uses
  %i.fo = load i64, ptr %i.da, align 16, !alias.scope !2266, !noundef !6 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 2                   ; 2 uses
  %i.fq = load ptr, ptr %i.j, align 16, !alias.scope !2266, !nonnull !6
  %i.fr = load i64, ptr %i.dc, align 8, !alias.scope !2266
  %.sink11.i226 = select i1 %i.fp, ptr %i.fq, ptr %i.j
  %.sink10.i227 = select i1 %i.fp, i64 %i.fr, i64 %i.fo ; 2 uses
  %i.fs = add i64 %.sink10.i227, %.sink10.i224
  %i.ft = shl i64 %i.fs, 7
  %i.fu = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i220, i64 noundef %i.fj, ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i223, i64 noundef %.sink10.i224, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i226, i64 noundef %.sink10.i227, i64 noundef %i.ft)
          to label %bb.ao unwind label %bb.ac     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fv = load i64, ptr %i.cz, align 16, !alias.scope !2267, !noundef !6 ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, 2                   ; 2 uses
  %i.fx = load i64, ptr %i.de, align 8, !alias.scope !2267 ; 2 uses
  %.sink10.i236475 = select i1 %i.fw, i64 %i.fx, i64 %i.fv ; 2 uses
  %.not161476 = icmp eq i64 %.sink10.i236475, 0
  br i1 %.not161476, label %.critedge170, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.ao
  %i.fy = load ptr, ptr %i.k, align 16, !alias.scope !2267, !nonnull !6
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph478, %bb.at
  %i.fz = phi i64 [ %i.fx, %.lr.ph478 ], [ %i.gk, %bb.at ]
  %i.ga = phi i64 [ %i.fv, %.lr.ph478 ], [ %i.gl, %bb.at ]
  %.sink10.i236477 = phi i64 [ %.sink10.i236475, %.lr.ph478 ], [ %.sink10.i236, %bb.at ]
  %i.gb = phi i1 [ %i.fw, %.lr.ph478 ], [ %i.gm, %bb.at ] ; 2 uses
  %.sink11.i235 = select i1 %i.gb, ptr %i.fy, ptr %i.k
  %i.gc = getelementptr [16 x i8], ptr %.sink11.i235, i64 %.sink10.i236477
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = load i128, ptr %i.gd, align 16, !noundef !6
  %i.gf = icmp eq i128 %i.ge, 0
  br i1 %i.gf, label %bb.ar, label %.critedge170

.critedge170:                                     ; preds = %bb.ap, %bb.at, %bb.ao
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit238 unwind label %bb.aq

bb.aq:                                            ; preds = %.critedge170
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %.sink9.i240 = select i1 %i.gb, ptr %i.de, ptr %i.cz ; 2 uses
  %i.gh = load i64, ptr %.sink9.i240, align 8, !noundef !6 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = add i64 %i.gh, -1
  store i64 %i.gj, ptr %.sink9.i240, align 8
  %.pre561 = load i64, ptr %i.cz, align 16, !alias.scope !2267
  %.pre562 = load i64, ptr %i.de, align 8, !alias.scope !2267
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.gk = phi i64 [ %i.fz, %bb.ar ], [ %.pre562, %bb.as ] ; 2 uses
  %i.gl = phi i64 [ %i.ga, %bb.ar ], [ %.pre561, %bb.as ] ; 3 uses
  %i.gm = icmp ugt i64 %i.gl, 2                   ; 2 uses
  %.sink10.i236 = select i1 %i.gm, i64 %i.gk, i64 %i.gl ; 2 uses
  %.not161 = icmp eq i64 %.sink10.i236, 0
  br i1 %.not161, label %.critedge170, label %bb.ap

bb.au:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit183, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit191, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit187
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

.split.i:                                         ; preds = %bb.y
  %i.go = load i64, ptr %i.bb, align 16, !alias.scope !2268, !noundef !6 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 2                   ; 2 uses
  %i.gq = load ptr, ptr %i.l, align 16, !alias.scope !2268, !nonnull !6
  %.sink10.i242 = select i1 %i.gp, ptr %i.gq, ptr %i.l ; 8 uses
  %.val419 = load i64, ptr %i.bf, align 8
  %i.gr = select i1 %i.gp, i64 %.val419, i64 %i.go ; 6 uses
  %i.gs = lshr i64 %i.df, 7                       ; 9 uses
  %.not1725.i = icmp eq i64 %i.gr, 0
  br i1 %.not1725.i, label %.loopexit459, label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %.split.i
  %i.gt = and i64 %i.df, 127                      ; 3 uses
  %.not18.i = icmp eq i64 %i.gt, 0
  %i.gu = zext nneg i64 %i.gt to i128
  %i.gv = sub nuw nsw i64 128, %i.gt
  %i.gw = zext nneg i64 %i.gv to i128
  br i1 %.not18.i, label %.lr.ph.split.us.i249.preheader, label %.lr.ph.split.i247

.lr.ph.split.us.i249.preheader:                   ; preds = %.lr.ph.i246
  %xtraiter777 = and i64 %i.gr, 1
  %lcmp.mod778.not = icmp eq i64 %xtraiter777, 0
  br i1 %lcmp.mod778.not, label %.lr.ph.split.us.i249.prol.loopexit, label %.lr.ph.split.us.i249.prol

.lr.ph.split.us.i249.prol:                        ; preds = %.lr.ph.split.us.i249.preheader
  %i.gx = add nsw i64 %i.gr, -1                   ; 4 uses
  %i.gy = icmp ult i64 %i.gx, %i.gs
  br i1 %i.gy, label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.i249.prol
  %i.gz = sub nuw nsw i64 %i.gx, %i.gs
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gz
  %i.hb = load i128, ptr %i.ha, align 16, !alias.scope !2269, !noundef !6
  br label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa

.lr.ph.split.us.i249.prol.loopexit.unr-lcssa:     ; preds = %bb.av, %.lr.ph.split.us.i249.prol
  %.sroa.02.0.us.i250.prol = phi i128 [ %i.hb, %bb.av ], [ 0, %.lr.ph.split.us.i249.prol ]
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gx
  store i128 %.sroa.02.0.us.i250.prol, ptr %i.hc, align 16, !alias.scope !2269
  br label %.lr.ph.split.us.i249.prol.loopexit

.lr.ph.split.us.i249.prol.loopexit:               ; preds = %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa, %.lr.ph.split.us.i249.preheader
  %.sroa.05.026.us.i.unr = phi i64 [ %i.gr, %.lr.ph.split.us.i249.preheader ], [ %i.gx, %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa ]
  %i.hd = icmp eq i64 %i.gr, 1
  br i1 %i.hd, label %.loopexit459, label %.lr.ph.split.us.i249

.lr.ph.split.us.i249:                             ; preds = %.lr.ph.split.us.i249.prol.loopexit, %bb.ay
  %.sroa.05.026.us.i = phi i64 [ %i.hk, %bb.ay ], [ %.sroa.05.026.us.i.unr, %.lr.ph.split.us.i249.prol.loopexit ] ; 2 uses
  %i.he = add nsw i64 %.sroa.05.026.us.i, -1      ; 3 uses
  %i.hf = icmp ult i64 %i.he, %i.gs
  br i1 %i.hf, label %.lr.ph.split.us.i249.1, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.split.us.i249
  %i.hg = sub nuw nsw i64 %i.he, %i.gs
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hg
  %i.hi = load i128, ptr %i.hh, align 16, !alias.scope !2269, !noundef !6
  br label %.lr.ph.split.us.i249.1

.lr.ph.split.us.i249.1:                           ; preds = %bb.aw, %.lr.ph.split.us.i249
  %.sroa.02.0.us.i250 = phi i128 [ %i.hi, %bb.aw ], [ 0, %.lr.ph.split.us.i249 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.he
  store i128 %.sroa.02.0.us.i250, ptr %i.hj, align 16, !alias.scope !2269
  %i.hk = add nsw i64 %.sroa.05.026.us.i, -2      ; 5 uses
  %i.hl = icmp ult i64 %i.hk, %i.gs
  br i1 %i.hl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.us.i249.1
  %i.hm = sub nuw nsw i64 %i.hk, %i.gs
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hm
  %i.ho = load i128, ptr %i.hn, align 16, !alias.scope !2269, !noundef !6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.split.us.i249.1
  %.sroa.02.0.us.i250.1 = phi i128 [ %i.ho, %bb.ax ], [ 0, %.lr.ph.split.us.i249.1 ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hk
  store i128 %.sroa.02.0.us.i250.1, ptr %i.hp, align 16, !alias.scope !2269
  %.not17.us.i.1 = icmp eq i64 %i.hk, 0
  br i1 %.not17.us.i.1, label %.loopexit459, label %.lr.ph.split.us.i249

.lr.ph.split.i247:                                ; preds = %.lr.ph.i246, %bb.bb
  %.sroa.05.026.i = phi i64 [ %i.hq, %bb.bb ], [ %i.gr, %.lr.ph.i246 ]
  %i.hq = add nsw i64 %.sroa.05.026.i, -1         ; 6 uses
  %i.hr = icmp ult i64 %i.hq, %i.gs
  br i1 %i.hr, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i247
  %i.hs = sub nuw nsw i64 %i.hq, %i.gs
  %i.ht = getelementptr [16 x i8], ptr %.sink10.i242, i64 %i.hs ; 2 uses
  %i.hu = load i128, ptr %i.ht, align 16, !alias.scope !2269, !noundef !6
  %i.hv = shl i128 %i.hu, %i.gu                   ; 2 uses
  %.not19.not.i = icmp ugt i64 %i.hq, %i.gs
  br i1 %.not19.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr i8, ptr %i.ht, i64 -16
  %i.hx = load i128, ptr %i.hw, align 16, !alias.scope !2269, !noundef !6
  %i.hy = lshr i128 %i.hx, %i.gw
  %i.hz = or i128 %i.hy, %i.hv
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph.split.i247
  %.sroa.02.0.i248 = phi i128 [ 0, %.lr.ph.split.i247 ], [ %i.hz, %bb.ba ], [ %i.hv, %bb.az ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hq
  store i128 %.sroa.02.0.i248, ptr %i.ia, align 16, !alias.scope !2269
  %.not17.i = icmp eq i64 %i.hq, 0
  br i1 %.not17.i, label %.loopexit459, label %.lr.ph.split.i247

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph505, %.lr.ph698, %bb.cw, %bb.da, %.lr.ph724, %bb.dn, %.lr.ph714, %bb.cq, %bb.cl, %bb.bj, %bb.by, %bb.dv, %bb.du, %.thread410, %bb.dj, %bb.di, %bb.df, %bb.dd, %bb.ct, %._crit_edge705, %bb.ci, %bb.ch, %bb.cf, %.loopexit452, %bb.bs, %bb.bq, %bb.bo
  %lpad.loopexit.split-lp761 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit187 unwind label %bb.au

.loopexit459:                                     ; preds = %bb.bb, %.lr.ph.split.us.i249.prol.loopexit, %bb.ay, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit189, %.split.i
  %.promoted492 = phi i32 [ 0, %.lr.ph.split.us.i249.prol.loopexit ], [ 0, %.split.i ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %i.cu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8SmallVecAoj2_EECslLuZgPVt6hg_3ide.exit189 ], [ 0, %bb.ay ], [ 0, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 10 uses
  store i64 0, ptr %i.ib, align 8
  %i.ic = mul nuw nsw i64 %.sroa.013.0, 196
  %i.id = add nuw nsw i64 %i.ic, 58
  %i.ie = udiv i64 %i.id, 59
  %i.if = load i64, ptr %i.bb, align 16, !alias.scope !2270, !noundef !6 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 2                   ; 3 uses
  %i.ih = load ptr, ptr %i.l, align 16, !alias.scope !2270 ; 2 uses
  %i.ii = load i64, ptr %i.bf, align 8, !alias.scope !2270 ; 2 uses
  %.sink11.i = select i1 %i.ig, ptr %i.ih, ptr %i.l
  %.sink10.i175 = select i1 %i.ig, i64 %i.ii, i64 %i.if ; 3 uses
  %.not.i255693 = icmp eq i64 %.sink10.i175, 0
  br i1 %.not.i255693, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %.lr.ph695

bb.bc:                                            ; preds = %.lr.ph695
  %.not.i255 = icmp eq i64 %i.ij, 0
  br i1 %.not.i255, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %.lr.ph695

.lr.ph695:                                        ; preds = %.loopexit459, %bb.bc
  %.sroa.02.0.i254694 = phi i64 [ %i.ij, %bb.bc ], [ %.sink10.i175, %.loopexit459 ] ; 2 uses
  %i.ij = add nsw i64 %.sroa.02.0.i254694, -1     ; 3 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i, i64 %i.ij
  %i.il = load i128, ptr %i.ik, align 16, !alias.scope !2271, !noundef !6 ; 2 uses
  %i.im = icmp eq i128 %i.il, 0
  br i1 %i.im, label %bb.bc, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph695
  %i.in = shl i64 %.sroa.02.0.i254694, 7
  %i.io = call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.il, i1 true)
  %i.ip = trunc nuw nsw i128 %i.io to i64
  %i.iq = sub i64 %i.in, %i.ip
  %i.ir = call i64 @llvm.usub.sat.i64(i64 %i.iq, i64 %i.ie)
  %i.is = mul i64 %i.ir, 59
  %i.it = udiv i64 %i.is, 196
  br label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %bb.bc, %.loopexit459, %bb.bd
  %.sroa.0.0.i256 = phi i64 [ %i.it, %bb.bd ], [ 0, %.loopexit459 ], [ 0, %bb.bc ]
  %i.iu = icmp eq i64 %.sink10.i175, 0
  br i1 %i.iu, label %.outer._crit_edge, label %.lr.ph490.lr.ph

.lr.ph490.lr.ph:                                  ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br label %.lr.ph490

.lr.ph490:                                        ; preds = %.lr.ph490.lr.ph, %.outer
  %.pre565 = phi ptr [ %i.ih, %.lr.ph490.lr.ph ], [ %.pre565580, %.outer ] ; 3 uses
  %i.iw = phi i64 [ %i.ii, %.lr.ph490.lr.ph ], [ %i.mf, %.outer ] ; 2 uses
  %i.ix = phi i64 [ %i.if, %.lr.ph490.lr.ph ], [ %i.mg, %.outer ] ; 2 uses
  %i.iy = phi i1 [ %i.ig, %.lr.ph490.lr.ph ], [ %i.mh, %.outer ]
  %.promoted496 = phi i32 [ %.promoted492, %.lr.ph490.lr.ph ], [ %.promoted, %.outer ] ; 2 uses
  %.sroa.026.0.ph495 = phi i64 [ %.sroa.0.0.i256, %.lr.ph490.lr.ph ], [ 0, %.outer ] ; 2 uses
  %.sroa.028.0.ph494 = phi i1 [ true, %.lr.ph490.lr.ph ], [ %or.cond, %.outer ]
  %i.iz = trunc i64 %.sroa.026.0.ph495 to i32
  %i.ja = add i32 %.promoted496, %i.iz            ; 3 uses
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph490, %bb.bh
  %.pre565582 = phi ptr [ %.pre565, %.lr.ph490 ], [ %.pre565581, %bb.bh ]
  %i.jb = phi i64 [ %i.iw, %.lr.ph490 ], [ %i.lk, %bb.bh ]
  %i.jc = phi i64 [ %i.ix, %.lr.ph490 ], [ %i.ll, %bb.bh ]
  %i.jd = phi i64 [ %i.iw, %.lr.ph490 ], [ %i.lm, %bb.bh ] ; 2 uses
  %i.je = phi i64 [ %i.ix, %.lr.ph490 ], [ %i.ln, %bb.bh ] ; 2 uses
  %2 = phi ptr [ %.pre565, %.lr.ph490 ], [ %4, %bb.bh ]
  %3 = phi ptr [ %.pre565, %.lr.ph490 ], [ %6, %bb.bh ] ; 2 uses
  %i.jf = phi i1 [ %i.iy, %.lr.ph490 ], [ %i.lr, %bb.bh ] ; 2 uses
  %.sroa.026.0489 = phi i64 [ %.sroa.026.0.ph495, %.lr.ph490 ], [ %i.lp, %bb.bh ] ; 2 uses
  %i.jg = phi i32 [ %.promoted496, %.lr.ph490 ], [ %i.lq, %bb.bh ]
  %.sink10.i260 = select i1 %i.jf, ptr %3, ptr %i.l ; 2 uses
  %i.jh = select i1 %i.jf, i64 %i.jd, i64 %i.je   ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %.idx.i = shl nuw nsw i64 %i.jh, 4
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink10.i260, i64 %.idx.i
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i
  %.sroa.4.018.i = phi ptr [ %i.jk, %.lr.ph.i266 ], [ %i.jj, %.lr.ph.preheader.i ]
  %.lcssa1617.i = phi i64 [ %i.ko, %.lr.ph.i266 ], [ 0, %.lr.ph.preheader.i ]
  %i.jk = getelementptr inbounds i8, ptr %.sroa.4.018.i, i64 -16 ; 4 uses
  %i.jl = load i128, ptr %i.jk, align 16, !alias.scope !2272, !noundef !6 ; 3 uses
  %i.jm = lshr i128 %i.jl, 96
  %i.jn = trunc nuw nsw i128 %i.jm to i64
  %i.jo = shl nuw nsw i64 %.lcssa1617.i, 32
  %i.jp = or disjoint i64 %i.jo, %i.jn            ; 2 uses
  %i.jq = urem i64 %i.jp, 10
  %i.jr = udiv i64 %i.jp, 10
  %i.js = zext nneg i64 %i.jr to i128
  %i.jt = shl nuw i128 %i.js, 96
  %i.ju = lshr i128 %i.jl, 64
  %i.jv = trunc nuw i128 %i.ju to i64
  %i.jw = and i64 %i.jv, 4294967295
  %i.jx = shl nuw nsw i64 %i.jq, 32
  %i.jy = or disjoint i64 %i.jx, %i.jw            ; 2 uses
  %i.jz = urem i64 %i.jy, 10
  %i.ka = udiv i64 %i.jy, 10
  %i.kb = zext nneg i64 %i.ka to i128
  %i.kc = shl nuw nsw i128 %i.kb, 64
  %i.kd = or i128 %i.kc, %i.jt
  %i.ke = trunc i128 %i.jl to i64                 ; 2 uses
  %i.kf = call i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.ke, i64 32) ; 2 uses
  %i.kg = urem i64 %i.kf, 10
  %i.kh = udiv i64 %i.kf, 10
  %i.ki = zext nneg i64 %i.kh to i128
  %i.kj = shl nuw nsw i128 %i.ki, 32
  %i.kk = or i128 %i.kd, %i.kj
  %i.kl = and i64 %i.ke, 4294967295
  %i.km = shl nuw nsw i64 %i.kg, 32
  %i.kn = or disjoint i64 %i.km, %i.kl            ; 2 uses
  %i.ko = urem i64 %i.kn, 10                      ; 2 uses
  %i.kp = udiv i64 %i.kn, 10
  %i.kq = zext nneg i64 %i.kp to i128
  %i.kr = or i128 %i.kk, %i.kq
  store i128 %i.kr, ptr %i.jk, align 16, !alias.scope !2272
  %i.ks = icmp eq ptr %.sink10.i260, %i.jk
  br i1 %i.ks, label %._crit_edge.i, label %.lr.ph.i266

._crit_edge.i:                                    ; preds = %.lr.ph.i266
  %i.kt = trunc nuw nsw i64 %i.ko to i8
  %.pre564 = load ptr, ptr %i.l, align 16, !alias.scope !2273 ; 3 uses
  %.pre568 = load i64, ptr %i.bb, align 16, !alias.scope !2274 ; 2 uses
  %.pre569 = load i64, ptr %i.bf, align 8, !alias.scope !2274 ; 2 uses
  br label %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit

_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit: ; preds = %bb.be, %._crit_edge.i
  %.pre565581 = phi ptr [ %.pre565582, %bb.be ], [ %.pre564, %._crit_edge.i ] ; 2 uses
  %i.ku = phi i64 [ %i.jb, %bb.be ], [ %.pre569, %._crit_edge.i ] ; 2 uses
  %i.kv = phi i64 [ %i.jc, %bb.be ], [ %.pre568, %._crit_edge.i ] ; 2 uses
  %i.kw = phi i64 [ %i.jd, %bb.be ], [ %.pre569, %._crit_edge.i ] ; 4 uses
  %i.kx = phi i64 [ %i.je, %bb.be ], [ %.pre568, %._crit_edge.i ] ; 5 uses
  %4 = phi ptr [ %2, %bb.be ], [ %.pre564, %._crit_edge.i ] ; 4 uses
  %5 = phi ptr [ %3, %bb.be ], [ %.pre564, %._crit_edge.i ]
  %.sroa.0314.0 = phi i8 [ 0, %bb.be ], [ %i.kt, %._crit_edge.i ] ; 2 uses
  %i.ky = icmp ugt i64 %i.kx, 2                   ; 2 uses
  %.sink10.i268481 = select i1 %i.ky, i64 %i.kw, i64 %i.kx ; 2 uses
  %.not165482 = icmp eq i64 %.sink10.i268481, 0
  br i1 %.not165482, label %.critedge172, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit, %bb.bn
  %i.kz = phi i64 [ %i.mm, %bb.bn ], [ %i.ku, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.la = phi i64 [ %i.mn, %bb.bn ], [ %i.kv, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.lb = phi i64 [ %i.mo, %bb.bn ], [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.lc = phi i64 [ %i.mp, %bb.bn ], [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %i.ld = phi i64 [ %i.mq, %bb.bn ], [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %i.le = phi i64 [ %i.mr, %bb.bn ], [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %.sink10.i268483 = phi i64 [ %.sink10.i268, %bb.bn ], [ %.sink10.i268481, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ]
  %i.lf = phi i1 [ %i.ms, %bb.bn ], [ %i.ky, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ] ; 2 uses
  %.sink11.i267 = select i1 %i.lf, ptr %4, ptr %i.l
  %i.lg = getelementptr [16 x i8], ptr %.sink11.i267, i64 %.sink10.i268483
  %i.lh = getelementptr i8, ptr %i.lg, i64 -16
  %i.li = load i128, ptr %i.lh, align 16, !noundef !6
  %i.lj = icmp eq i128 %i.li, 0
  br i1 %i.lj, label %bb.bl, label %.critedge172

.critedge172:                                     ; preds = %bb.bf, %bb.bn, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit
  %i.lk = phi i64 [ %i.ku, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.kz, %bb.bf ], [ %i.mm, %bb.bn ] ; 2 uses
  %i.ll = phi i64 [ %i.kv, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.la, %bb.bf ], [ %i.mn, %bb.bn ] ; 2 uses
  %i.lm = phi i64 [ %i.kw, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.lb, %bb.bf ], [ %i.mo, %bb.bn ] ; 2 uses
  %i.ln = phi i64 [ %i.kx, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %i.lc, %bb.bf ], [ %i.mp, %bb.bn ] ; 3 uses
  %6 = phi ptr [ %5, %_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide.exit ], [ %4, %bb.bn ], [ %4, %bb.bf ]
  %.not166 = icmp eq i64 %.sroa.026.0489, 0
  br i1 %.not166, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.critedge172
  store i32 %i.ja, ptr %i.m, align 4
  %i.lo = icmp eq i8 %.sroa.0314.0, 0
  %or.cond = and i1 %.sroa.028.0.ph494, %i.lo     ; 2 uses
  br i1 %or.cond, label %bb.bk, label %bb.bi

bb.bh:                                            ; preds = %.critedge172
  %i.lp = add nsw i64 %.sroa.026.0489, -1
  %i.lq = add i32 %i.jg, 1                        ; 2 uses
  %i.lr = icmp ugt i64 %i.ln, 2                   ; 2 uses
  %.sink10.i258 = select i1 %i.lr, i64 %i.lm, i64 %i.ln
  %i.ls = icmp eq i64 %.sink10.i258, 0
  br i1 %i.ls, label %.outer._crit_edge, label %bb.be

bb.bi:                                            ; preds = %bb.bg
  %i.lt = add nuw nsw i8 %.sroa.0314.0, 48
  %i.lu = load i64, ptr %i.ib, align 8, !alias.scope !2275, !noundef !6 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 64                  ; 2 uses
  %i.lw = load ptr, ptr %i.f, align 8, !alias.scope !2275, !nonnull !6
  %.sink10.i.i273 = select i1 %i.lv, ptr %i.lw, ptr %i.f
  %.sink9.i.i274 = select i1 %i.lv, ptr %i.iv, ptr %i.ib ; 2 uses
  %.sink.i.i275 = call i64 @llvm.umax.i64(i64 %i.lu, i64 64)
  %i.lx = load i64, ptr %.sink9.i.i274, align 8, !alias.scope !2276, !noundef !6 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, %.sink.i.i275
  br i1 %i.ly, label %bb.bj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, !prof !11

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.bj
  %i.lz = load ptr, ptr %i.f, align 8, !alias.scope !2276, !nonnull !6, !noundef !6
  %.pre.i278 = load i64, ptr %i.iv, align 8, !alias.scope !2276
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit: ; preds = %bb.bi, %.noexc279
  %i.ma = phi i64 [ %.pre.i278, %.noexc279 ], [ %i.lx, %bb.bi ]
  %.sroa.01.0.i276 = phi ptr [ %i.iv, %.noexc279 ], [ %.sink9.i.i274, %bb.bi ] ; 2 uses
  %.sroa.0.0.i277 = phi ptr [ %i.lz, %.noexc279 ], [ %.sink10.i.i273, %bb.bi ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i277, i64 %i.ma
  store i8 %i.lt, ptr %i.mb, align 1
  %i.mc = load i64, ptr %.sroa.01.0.i276, align 8, !alias.scope !2276, !noundef !6
  %i.md = add i64 %i.mc, 1
  store i64 %i.md, ptr %.sroa.01.0.i276, align 8, !alias.scope !2276
  %.pre573.a = load i64, ptr %i.bb, align 16, !alias.scope !2273
  %.pre574 = load i64, ptr %i.bf, align 8, !alias.scope !2273
  %.pre565.pre = load ptr, ptr %i.l, align 16, !alias.scope !2273
  br label %.outer

bb.bk:                                            ; preds = %bb.bg
  %i.me = add i32 %i.ja, 1                        ; 2 uses
  store i32 %i.me, ptr %i.m, align 4
  br label %.outer

.outer:                                           ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, %bb.bk
  %.pre565580 = phi ptr [ %.pre565.pre, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %.pre565581, %bb.bk ]
  %i.mf = phi i64 [ %.pre574, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.lk, %bb.bk ] ; 2 uses
  %i.mg = phi i64 [ %.pre573.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.ll, %bb.bk ] ; 3 uses
  %.promoted = phi i32 [ %i.ja, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit ], [ %i.me, %bb.bk ] ; 2 uses
  %i.mh = icmp ugt i64 %i.mg, 2                   ; 2 uses
  %.sink10.i258488 = select i1 %i.mh, i64 %i.mf, i64 %i.mg
  %i.mi = icmp eq i64 %.sink10.i258488, 0
  br i1 %i.mi, label %.outer._crit_edge, label %.lr.ph490

bb.bl:                                            ; preds = %bb.bf
  %.sink9.i271 = select i1 %i.lf, ptr %i.bf, ptr %i.bb ; 2 uses
  %i.mj = load i64, ptr %.sink9.i271, align 8, !noundef !6 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = add i64 %i.mj, -1
  store i64 %i.ml, ptr %.sink9.i271, align 8
  %.pre570 = load i64, ptr %i.bb, align 16, !alias.scope !2274 ; 3 uses
  %.pre571 = load i64, ptr %i.bf, align 8, !alias.scope !2274 ; 3 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.mm = phi i64 [ %i.kz, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mn = phi i64 [ %i.la, %bb.bl ], [ %.pre570, %bb.bm ] ; 2 uses
  %i.mo = phi i64 [ %i.lb, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mp = phi i64 [ %i.lc, %bb.bl ], [ %.pre570, %bb.bm ] ; 2 uses
  %i.mq = phi i64 [ %i.ld, %bb.bl ], [ %.pre571, %bb.bm ] ; 2 uses
  %i.mr = phi i64 [ %i.le, %bb.bl ], [ %.pre570, %bb.bm ] ; 3 uses
  %i.ms = icmp ugt i64 %i.mr, 2                   ; 2 uses
  %.sink10.i268 = select i1 %i.ms, i64 %i.mq, i64 %i.mr ; 2 uses
  %.not165 = icmp eq i64 %.sink10.i268, 0
  br i1 %.not165, label %.critedge172, label %bb.bf

.outer._crit_edge:                                ; preds = %.outer, %bb.bh, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %i.mt = phi i32 [ %i.lq, %bb.bh ], [ %.promoted492, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ], [ %.promoted, %.outer ] ; 3 uses
  store i32 %i.mt, ptr %i.m, align 4
  %i.mu = load i64, ptr %i.ib, align 8, !alias.scope !2277, !noundef !6 ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !2277 ; 2 uses
  %.sink10.i264 = select i1 %i.mv, i64 %i.mx, i64 %i.mu ; 4 uses
  %i.my = icmp eq i64 %.sink10.i264, 0
  br i1 %i.my, label %bb.bo, label %bb.bp, !prof !11

bb.bo:                                            ; preds = %.outer._crit_edge
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @154, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #38
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %.outer._crit_edge
  %i.mz = icmp ugt i64 %.sink10.i264, %.sroa.013.0
  br i1 %i.mz, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.na = sub nuw i64 %.sink10.i264, %.sroa.013.0 ; 7 uses
  %i.nb = add i64 %i.na, -1
  %i.nc = invoke noundef nonnull ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i64 noundef %i.nb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !6
  %i.ne = icmp ult i8 %i.nd, 53
  br i1 %i.ne, label %.preheader451, label %bb.bs

.preheader451:                                    ; preds = %bb.br
  %i.nf = load i64, ptr %i.ib, align 8, !alias.scope !2278, !noundef !6 ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 64
  %i.nh = load i64, ptr %i.mw, align 8, !alias.scope !2278
  %.sink10.i290503 = select i1 %i.ng, i64 %i.nh, i64 %i.nf
  %i.ni = icmp ult i64 %i.na, %.sink10.i290503
  br i1 %i.ni, label %.lr.ph505, label %.loopexit452

bb.bs:                                            ; preds = %bb.br
  %i.nj = invoke { ptr, i64 } @_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutINtNtBT_5range9RangeFromjEE9index_mutCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.na, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.nk = extractvalue { ptr, i64 } %i.nj, 0      ; 3 uses
  %i.nl = extractvalue { ptr, i64 } %i.nj, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nk) ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  %i.nn = icmp samesign eq i64 %i.nl, 0
  br i1 %i.nn, label %.loopexit452, label %.lr.ph501.preheader

.lr.ph501.preheader:                              ; preds = %bb.bt
  %i.no = add i64 %i.nl, %.sink10.i264
  %i.np = sub i64 %i.no, %.sroa.013.0
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader, %bb.bu
  %.sroa.031.0499 = phi i64 [ %i.nt, %bb.bu ], [ %i.na, %.lr.ph501.preheader ] ; 2 uses
  %.sroa.039.0498 = phi ptr [ %i.ns, %bb.bu ], [ %i.nk, %.lr.ph501.preheader ] ; 3 uses
  %i.nq = load i8, ptr %.sroa.039.0498, align 1, !noundef !6 ; 2 uses
  %i.nr = icmp eq i8 %i.nq, 57
  br i1 %i.nr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph501
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.039.0498, i64 1 ; 2 uses
  %i.nt = add i64 %.sroa.031.0499, 1
  %i.nu = icmp eq ptr %i.ns, %i.nm
  br i1 %i.nu, label %.loopexit452, label %.lr.ph501

bb.bv:                                            ; preds = %.lr.ph501
  %i.nv = add i8 %i.nq, 1
  store i8 %i.nv, ptr %.sroa.039.0498, align 1
  br label %.loopexit452

.loopexit452:                                     ; preds = %bb.bu, %bb.bx, %bb.bw, %bb.bt, %.preheader451, %bb.bv
  %.sroa.031.1 = phi i64 [ %i.na, %bb.bt ], [ %.sroa.031.0499, %bb.bv ], [ %i.na, %.preheader451 ], [ %.sroa.031.2504, %bb.bw ], [ %i.ob, %bb.bx ], [ %i.np, %bb.bu ] ; 2 uses
  %i.nw = trunc i64 %.sroa.031.1 to i32
  %i.nx = add i32 %i.mt, %i.nw                    ; 3 uses
  store i32 %i.nx, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMsd_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAhj40_E5drainINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %.sroa.031.1)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph505:                                        ; preds = %.preheader451, %bb.bx
  %.sroa.031.2504 = phi i64 [ %i.ob, %bb.bx ], [ %i.na, %.preheader451 ] ; 3 uses
  %i.ny = invoke noundef nonnull ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f, i64 noundef %.sroa.031.2504, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.lr.ph505
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !6
  %i.oa = icmp eq i8 %i.nz, 48
  br i1 %i.oa, label %bb.bx, label %.loopexit452

bb.bx:                                            ; preds = %bb.bw
  %i.ob = add nuw i64 %.sroa.031.2504, 1          ; 3 uses
  %i.oc = load i64, ptr %i.ib, align 8, !alias.scope !2278, !noundef !6 ; 2 uses
  %i.od = icmp ugt i64 %i.oc, 64
  %i.oe = load i64, ptr %i.mw, align 8, !alias.scope !2278
  %.sink10.i290 = select i1 %i.od, i64 %i.oe, i64 %i.oc
  %i.of = icmp ult i64 %i.ob, %.sink10.i290
  br i1 %i.of, label %.lr.ph505, label %.loopexit452

bb.by:                                            ; preds = %.loopexit452
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.og = load i64, ptr %i.ib, align 8, !alias.scope !2279, !noundef !6 ; 3 uses
  %i.oh = icmp ugt i64 %i.og, 64                  ; 3 uses
  %i.oi = load i64, ptr %i.mw, align 8, !alias.scope !2279 ; 2 uses
  %.sink10.i294 = select i1 %i.oh, i64 %i.oi, i64 %i.og
  %i.oj = icmp eq i64 %.sink10.i294, 0
  br i1 %i.oj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303, label %bb.ca

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303: ; preds = %bb.bz
  %.sink9.i.i297 = select i1 %i.oh, ptr %i.mw, ptr %i.ib ; 2 uses
  %i.ok = load ptr, ptr %i.f, align 8, !alias.scope !2279, !nonnull !6
  %.sink10.i.i296 = select i1 %i.oh, ptr %i.ok, ptr %i.f
  store i8 49, ptr %.sink10.i.i296, align 1
  %i.ol = load i64, ptr %.sink9.i.i297, align 8, !alias.scope !2280, !noundef !6
  %i.om = add i64 %i.ol, 1
  store i64 %i.om, ptr %.sink9.i.i297, align 8, !alias.scope !2280
  %.pre575 = load i64, ptr %i.ib, align 8, !alias.scope !2281
  %.pre576 = load i64, ptr %i.mw, align 8, !alias.scope !2281
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bz, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303
  %i.on = phi i32 [ %i.mt, %bb.bp ], [ %i.nx, %bb.bz ], [ %i.nx, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 7 uses
  %i.oo = phi i64 [ %i.mx, %bb.bp ], [ %i.oi, %bb.bz ], [ %.pre576, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ]
  %i.op = phi i64 [ %i.mu, %bb.bp ], [ %i.og, %bb.bz ], [ %.pre575, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 2 uses
  %i.oq = icmp ugt i64 %i.op, 64                  ; 2 uses
  %i.or = load ptr, ptr %i.f, align 8, !alias.scope !2281, !nonnull !6
  %.sink10.i287 = select i1 %i.oq, i64 %i.oo, i64 %i.op ; 12 uses
  %i.os = icmp eq i64 %.sroa.05.0, 0
  br i1 %i.os, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ot = icmp sgt i32 %i.on, -1
  br i1 %i.ot, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ou = trunc i64 %.sink10.i287 to i32
  %i.ov = add i32 %i.ou, -1
  %i.ow = add i32 %i.ov, %i.on                    ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, -1
  br i1 %i.ox, label %bb.cg, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.oy = zext nneg i32 %i.on to i64              ; 2 uses
  %i.oz = icmp samesign ult i64 %.sroa.05.0, %i.oy
  %i.pa = add i64 %.sink10.i287, %i.oy
  %i.pb = icmp ugt i64 %i.pa, %.sroa.013.0
  %or.cond413 = select i1 %i.oz, i1 true, i1 %i.pb
  br i1 %or.cond413, label %bb.cf, label %bb.cy

bb.ce:                                            ; preds = %bb.cc
  %i.pc = sub i32 0, %i.ow
  %i.pd = sext i32 %i.pc to i64
  %i.pe = icmp ult i64 %.sroa.05.0, %i.pd
  br i1 %i.pe, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.cd, %bb.ca, %bb.ce
  %i.pf = trunc i64 %.sink10.i287 to i32
  %i.pg = add i32 %i.pf, -1
  %i.ph = add i32 %i.pg, %i.on
  store i32 %i.ph, ptr %i.m, align 4
  %i.pi = add i64 %.sink10.i287, -1               ; 3 uses
end_hunk_1
begin_hunk_2_@llvm.abs.i128
!1935 = distinct !{!1935, i1 true, !"_RNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0B7_"}
!1936 = distinct !{!1936, !1935, !"_RNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0B7_: argument 0"}
!1937 = distinct !{!1937, i1 true, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide"}
!1938 = distinct !{!1938, !1937, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide: argument 1"}
!1939 = distinct !{!1939, !1937, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide: argument 0"}
!1940 = distinct !{!1940, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!1941 = distinct !{!1941, !1940, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!1942 = distinct !{!1942, !1940, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!1943 = distinct !{!1943, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide"}
!1944 = distinct !{!1944, !1943, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 1"}
!1945 = distinct !{!1945, !1943, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 2"}
!1946 = distinct !{!1946, !1943, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 3"}
!1947 = distinct !{!1947, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide"}
!1948 = distinct !{!1948, !1947, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 1"}
!1949 = distinct !{!1949, !1947, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 2"}
!1950 = distinct !{!1950, !1947, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 3"}
!1951 = distinct !{!1951, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1952 = distinct !{!1952, !1951, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1953 = distinct !{!1953, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1954 = distinct !{!1954, !1953, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1955 = distinct !{!1955, i1 true, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!1956 = distinct !{!1956, !1955, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!1957 = !{i64 -298273530600280572}
!1958 = !{i32 -1, i32 5}
!1959 = !{!1894}
!1960 = !{!1896, !1894}
!1961 = !{i64 0, i64 -9223372036854775808}
!1962 = !{!1900, !1898}
!1963 = !{!1902}
!1964 = !{!1907, !1906, !1904}
!1965 = !{!1909}
!1966 = !{!1910, !1909}
!1967 = !{!1910}
!1968 = !{!1912}
!1969 = !{!1914}
!1970 = !{!1916}
!1971 = !{!1927, !1926, !1924, !1922, !1920, !1919, !1918}
!1972 = !{!1932, !1930, !1929}
!1973 = !{!1939, !1938, !1936, !1934, !1932, !1930, !1929}
!1974 = !{!1941}
!1975 = !{!1942, !1941, !1939, !1938, !1936, !1934, !1932, !1930, !1929}
!1976 = !{!1944}
!1977 = !{!1945}
!1978 = !{!1946}
!1979 = !{!1944, !1941}
!1980 = !{!1942, !1941, !1932, !1930, !1929}
!1981 = !{!1948}
!1982 = !{!1949}
!1983 = !{!1950}
!1984 = !{!1948, !1941}
!1985 = !{!1952}
!1986 = !{!1954}
!1987 = !{!1956}
!1988 = !{i64 -3550530916954591210}
!1989 = !{i8 0, i8 24}
!1990 = distinct !{!1990, i1 true, !"_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20siblings_with_tokens"}
!1991 = distinct !{!1991, !1990, !"_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20siblings_with_tokens: argument 0"}
!1992 = distinct !{!1992, i1 true, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB5_4SkipINtNtB7_3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1Z_6cursor10SyntaxNodeNtB2N_11SyntaxTokenENCNvMs4_B2N_B2L_20siblings_with_tokens0ENvYIB1V_INtNtB1Z_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4l_11SyntaxTokenB4H_EEINtNtBb_7convert4FromB1U_E4fromEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB6v_4find5checkB4d_NCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter0E0INtNtNtBb_3ops12control_flow11ControlFlowB4d_EEB7L_"}
!1993 = distinct !{!1993, !1992, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB5_4SkipINtNtB7_3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1Z_6cursor10SyntaxNodeNtB2N_11SyntaxTokenENCNvMs4_B2N_B2L_20siblings_with_tokens0ENvYIB1V_INtNtB1Z_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4l_11SyntaxTokenB4H_EEINtNtBb_7convert4FromB1U_E4fromEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB6v_4find5checkB4d_NCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter0E0INtNtNtBb_3ops12control_flow11ControlFlowB4d_EEB7L_: argument 0"}
!1994 = distinct !{!1994, i1 true, !"_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1B_6cursor10SyntaxNodeNtB2p_11SyntaxTokenENCNvMs4_B2p_B2n_20siblings_with_tokens0ENvYIB1x_INtNtB1B_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3X_11SyntaxTokenB4j_EEINtNtBb_7convert4FromB1w_E4fromENtNtNtB9_6traits8iterator8Iterator3nthCslLuZgPVt6hg_3ide"}
!1995 = distinct !{!1995, !1994, !"_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1B_6cursor10SyntaxNodeNtB2p_11SyntaxTokenENCNvMs4_B2p_B2n_20siblings_with_tokens0ENvYIB1x_INtNtB1B_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3X_11SyntaxTokenB4j_EEINtNtBb_7convert4FromB1w_E4fromENtNtNtB9_6traits8iterator8Iterator3nthCslLuZgPVt6hg_3ide: argument 0"}
!1996 = distinct !{!1996, i1 true, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1H_6cursor10SyntaxNodeNtB2v_11SyntaxTokenENCNvMs4_B2v_B2t_20siblings_with_tokens0ENvYIB1D_INtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB43_11SyntaxTokenB4p_EEINtNtBb_7convert4FromB1C_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1997 = distinct !{!1997, !1996, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1H_6cursor10SyntaxNodeNtB2v_11SyntaxTokenENCNvMs4_B2v_B2t_20siblings_with_tokens0ENvYIB1D_INtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB43_11SyntaxTokenB4p_EEINtNtBb_7convert4FromB1C_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!1998 = distinct !{!1998, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1d_6cursor10SyntaxNodeNtB21_11SyntaxTokenENCNvMs4_B21_B1Z_20siblings_with_tokens0ENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1999 = distinct !{!1999, !1998, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1d_6cursor10SyntaxNodeNtB21_11SyntaxTokenENCNvMs4_B21_B1Z_20siblings_with_tokens0ENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!2000 = !{i64 -5631286056690494636}
!2001 = !{!1991}
!2002 = !{!1993}
!2003 = !{!1995}
!2004 = !{!1997}
!2005 = !{!1999}
!2006 = !{!1999, !1997, !1995, !1993}
!2007 = !{!1999, !1997}
!2008 = distinct !{!2008, i1 true, !"_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!2009 = distinct !{!2009, !2008, !"_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!2010 = distinct !{!2010, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!2011 = distinct !{!2011, !2010, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!2012 = !{i64 1656500724378482635}
!2013 = !{!2011, !2009}
!2014 = !{i64 8878244979853022227}
!2015 = !{i64 -103300542354444894}
!2016 = !{i64 8465997966622406537}
!2017 = !{i64 -125922657473750163}
!2018 = !{i64 -274204716965299335}
!2019 = distinct !{!2019, i1 true, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide"}
!2020 = distinct !{!2020, !2019, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide: argument 0"}
!2021 = distinct !{!2021, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide"}
!2022 = distinct !{!2022, !2021, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!2023 = distinct !{!2023, !2021, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!2024 = distinct !{!2024, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_4fuse4FuseINtNtB9_6cloned6ClonedINtNtNtBd_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEE4peek0CslLuZgPVt6hg_3ide"}
!2025 = distinct !{!2025, !2024, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_4fuse4FuseINtNtB9_6cloned6ClonedINtNtNtBd_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!2026 = distinct !{!2026, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!2027 = distinct !{!2027, !2026, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!2028 = distinct !{!2028, i1 true, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide"}
!2029 = distinct !{!2029, !2028, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide: argument 0"}
!2030 = !{i64 -6980243290060111209}
!2031 = !{!2020}
!2032 = !{!2022}
!2033 = !{!2023}
!2034 = !{!2029, !2027, !2025, !2023}
!2035 = !{i64 1673813007591315338}
!2036 = distinct !{!2036, i1 true, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_"}
!2037 = distinct !{!2037, !2036, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_: argument 1"}
!2038 = distinct !{!2038, !2036, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_: argument 0"}
!2039 = !{i64 4895774450781295091}
!2040 = !{!2037}
!2041 = !{!2038, !2037}
!2042 = !{!2038}
!2043 = !{i64 2113590776343264495}
!2044 = distinct !{!2044, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2045 = distinct !{!2045, !2044, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2046 = distinct !{!2046, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2047 = distinct !{!2047, !2046, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2048 = distinct !{!2048, !2046, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2049 = !{i64 -5811840096238645774}
!2050 = !{!2045}
!2051 = !{!2048, !2047, !2045}
!2052 = distinct !{!2052, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2053 = distinct !{!2053, !2052, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 1"}
!2054 = distinct !{!2054, !2052, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2055 = distinct !{!2055, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2056 = distinct !{!2056, !2055, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2057 = distinct !{!2057, !2055, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2058 = !{i64 -1283235528701972105}
!2059 = !{!2053}
!2060 = !{!2054, !2053}
!2061 = !{!2057, !2056, !2054, !2053}
!2062 = distinct !{!2062, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2063 = distinct !{!2063, !2062, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2064 = distinct !{!2064, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2065 = distinct !{!2065, !2064, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2066 = distinct !{!2066, !2064, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2067 = !{i64 -1149073699739915702}
!2068 = !{!2063}
!2069 = !{!2066, !2065, !2063}
!2070 = distinct !{!2070, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2071 = distinct !{!2071, !2070, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2072 = distinct !{!2072, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2073 = distinct !{!2073, !2072, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2074 = distinct !{!2074, !2072, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2075 = !{i64 651043476465636233}
!2076 = !{!2071}
!2077 = !{!2074, !2073, !2071}
!2078 = distinct !{!2078, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2079 = distinct !{!2079, !2078, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2080 = distinct !{!2080, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2081 = distinct !{!2081, !2080, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2082 = distinct !{!2082, !2080, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2083 = !{i64 -1876198986737225710}
!2084 = !{!2079}
!2085 = !{!2082, !2081, !2079}
!2086 = distinct !{!2086, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!2087 = distinct !{!2087, !2086, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!2088 = distinct !{!2088, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!2089 = distinct !{!2089, !2088, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!2090 = distinct !{!2090, !2088, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!2091 = !{i64 7617509647682702456}
!2092 = !{!2087}
!2093 = !{!2090, !2089, !2087}
!2094 = !{i64 3158850635599137537}
!2095 = !{i64 1758231429891825562}
!2096 = !{i64 -8706634891907931774}
!2097 = distinct !{!2097, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2098 = distinct !{!2098, !2097, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2099 = distinct !{!2099, !2097, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2100 = distinct !{!2100, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2101 = distinct !{!2101, !2100, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2102 = distinct !{!2102, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right"}
!2103 = distinct !{!2103, !2102, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 0"}
!2104 = distinct !{!2104, !2102, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 1"}
!2105 = distinct !{!2105, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2106 = distinct !{!2106, !2105, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2107 = distinct !{!2107, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!2108 = distinct !{!2108, !2107, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2109 = distinct !{!2109, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2110 = distinct !{!2110, !2109, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2111 = distinct !{!2111, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2112 = distinct !{!2112, !2111, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2113 = distinct !{!2113, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2114 = distinct !{!2114, !2113, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2115 = distinct !{!2115, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2116 = distinct !{!2116, !2115, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2117 = distinct !{!2117, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2118 = distinct !{!2118, !2117, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2119 = distinct !{!2119, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2120 = distinct !{!2120, !2119, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2121 = distinct !{!2121, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2122 = distinct !{!2122, !2121, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2123 = distinct !{!2123, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2124 = distinct !{!2124, !2123, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2125 = distinct !{!2125, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2126 = distinct !{!2126, !2125, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2127 = distinct !{!2127, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2128 = distinct !{!2128, !2127, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2129 = distinct !{!2129, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left"}
!2130 = distinct !{!2130, !2129, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left: argument 0"}
!2131 = distinct !{!2131, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2132 = distinct !{!2132, !2131, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2133 = distinct !{!2133, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb"}
!2134 = distinct !{!2134, !2133, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb: argument 0"}
!2135 = distinct !{!2135, i1 true, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide"}
!2136 = distinct !{!2136, !2135, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide: argument 0"}
!2137 = distinct !{!2137, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2138 = distinct !{!2138, !2137, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2139 = distinct !{!2139, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2140 = distinct !{!2140, !2139, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2141 = distinct !{!2141, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2142 = distinct !{!2142, !2141, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2143 = distinct !{!2143, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide"}
!2144 = distinct !{!2144, !2143, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2145 = distinct !{!2145, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2146 = distinct !{!2146, !2145, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2147 = distinct !{!2147, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2148 = distinct !{!2148, !2147, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2149 = distinct !{!2149, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2150 = distinct !{!2150, !2149, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2151 = distinct !{!2151, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2152 = distinct !{!2152, !2151, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2153 = distinct !{!2153, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2154 = distinct !{!2154, !2153, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2155 = distinct !{!2155, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2156 = distinct !{!2156, !2155, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2157 = !{i64 7270607114637094656}
!2158 = !{!2099, !2098}
!2159 = !{!2099}
!2160 = !{!2098}
!2161 = !{!2101}
!2162 = !{!2103}
!2163 = !{!2104}
!2164 = !{!2106}
!2165 = !{!2108}
!2166 = !{!2110}
!2167 = !{!2112}
!2168 = !{!2114}
!2169 = !{!2116}
!2170 = !{!2118}
!2171 = !{!2120}
!2172 = !{!2122}
!2173 = !{!2124}
!2174 = !{!2126}
!2175 = !{!2128}
!2176 = !{!2130}
!2177 = !{!2132}
!2178 = !{!2134}
!2179 = !{!2136}
!2180 = !{!2138}
!2181 = !{!2140}
!2182 = !{!2144, !2142}
!2183 = !{!2142}
!2184 = !{!2146}
!2185 = !{!2148}
!2186 = !{!2150}
!2187 = !{!2152}
!2188 = !{!2154}
!2189 = !{!2156}
!2190 = distinct !{!2190, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2191 = distinct !{!2191, !2190, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2192 = distinct !{!2192, !2190, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2193 = distinct !{!2193, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2194 = distinct !{!2194, !2193, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2195 = distinct !{!2195, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right"}
!2196 = distinct !{!2196, !2195, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 0"}
!2197 = distinct !{!2197, !2195, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 1"}
!2198 = distinct !{!2198, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2199 = distinct !{!2199, !2198, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2200 = distinct !{!2200, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!2201 = distinct !{!2201, !2200, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2202 = distinct !{!2202, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2203 = distinct !{!2203, !2202, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2204 = distinct !{!2204, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2205 = distinct !{!2205, !2204, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2206 = distinct !{!2206, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2207 = distinct !{!2207, !2206, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2208 = distinct !{!2208, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2209 = distinct !{!2209, !2208, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2210 = distinct !{!2210, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2211 = distinct !{!2211, !2210, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2212 = distinct !{!2212, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2213 = distinct !{!2213, !2212, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2214 = distinct !{!2214, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2215 = distinct !{!2215, !2214, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2216 = distinct !{!2216, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2217 = distinct !{!2217, !2216, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2218 = distinct !{!2218, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2219 = distinct !{!2219, !2218, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2220 = distinct !{!2220, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2221 = distinct !{!2221, !2220, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2222 = distinct !{!2222, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left"}
!2223 = distinct !{!2223, !2222, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left: argument 0"}
!2224 = distinct !{!2224, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2225 = distinct !{!2225, !2224, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2226 = distinct !{!2226, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb"}
!2227 = distinct !{!2227, !2226, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb: argument 0"}
!2228 = distinct !{!2228, i1 true, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide"}
!2229 = distinct !{!2229, !2228, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide: argument 0"}
!2230 = distinct !{!2230, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2231 = distinct !{!2231, !2230, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2232 = distinct !{!2232, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2233 = distinct !{!2233, !2232, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2234 = distinct !{!2234, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2235 = distinct !{!2235, !2234, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2236 = distinct !{!2236, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide"}
!2237 = distinct !{!2237, !2236, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2238 = distinct !{!2238, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2239 = distinct !{!2239, !2238, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2240 = distinct !{!2240, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2241 = distinct !{!2241, !2240, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2242 = distinct !{!2242, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2243 = distinct !{!2243, !2242, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2244 = distinct !{!2244, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2245 = distinct !{!2245, !2244, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2246 = distinct !{!2246, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2247 = distinct !{!2247, !2246, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2248 = distinct !{!2248, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2249 = distinct !{!2249, !2248, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2250 = !{i64 8728601684631988726}
!2251 = !{!2192, !2191}
!2252 = !{!2192}
!2253 = !{!2191}
!2254 = !{!2194}
!2255 = !{!2196}
!2256 = !{!2197}
!2257 = !{!2199}
!2258 = !{!2201}
!2259 = !{!2203}
!2260 = !{!2205}
!2261 = !{!2207}
!2262 = !{!2209}
!2263 = !{!2211}
!2264 = !{!2213}
!2265 = !{!2215}
!2266 = !{!2217}
!2267 = !{!2219}
!2268 = !{!2221}
!2269 = !{!2223}
!2270 = !{!2225}
!2271 = !{!2227}
!2272 = !{!2229}
!2273 = !{!2231}
!2274 = !{!2233}
!2275 = !{!2237, !2235}
!2276 = !{!2235}
!2277 = !{!2239}
!2278 = !{!2241}
!2279 = !{!2243}
!2280 = !{!2245}
!2281 = !{!2247}
!2282 = !{!2249}
!2283 = !{i64 -185753121739318663}
!2284 = !{i64 -7774208046962552546}
!2285 = !{i64 -4728173841891432952}
!2286 = !{i64 -4132241080756187315}
!2287 = distinct !{!2287, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2288 = distinct !{!2288, !2287, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2289 = distinct !{!2289, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2290 = distinct !{!2290, !2289, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2291 = distinct !{!2291, !2289, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2292 = distinct !{!2292, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2293 = distinct !{!2293, !2292, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2294 = distinct !{!2294, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2295 = distinct !{!2295, !2294, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2296 = distinct !{!2296, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE7or_elseNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB11_9IeeeFloatNtB11_5HalfSENtB13_5Float10from_str_rs3_0ECslLuZgPVt6hg_3ide"}
!2297 = distinct !{!2297, !2296, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE7or_elseNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB11_9IeeeFloatNtB11_5HalfSENtB13_5Float10from_str_rs3_0ECslLuZgPVt6hg_3ide: argument 0"}
!2298 = distinct !{!2298, i1 true, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide"}
!2299 = distinct !{!2299, !2298, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide: argument 1"}
!2300 = distinct !{!2300, !2298, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide: argument 0"}
!2301 = distinct !{!2301, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2302 = distinct !{!2302, !2301, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2303 = distinct !{!2303, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2304 = distinct !{!2304, !2303, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2305 = distinct !{!2305, !2303, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2306 = distinct !{!2306, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2307 = distinct !{!2307, !2306, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2308 = distinct !{!2308, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2309 = distinct !{!2309, !2308, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2310 = distinct !{!2310, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2311 = distinct !{!2311, !2310, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2312 = distinct !{!2312, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2313 = distinct !{!2313, !2312, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2314 = distinct !{!2314, !2312, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2315 = distinct !{!2315, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2316 = distinct !{!2316, !2315, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2317 = distinct !{!2317, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2318 = distinct !{!2318, !2317, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2319 = distinct !{!2319, i1 true, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide"}
!2320 = distinct !{!2320, !2319, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide: argument 1"}
!2321 = distinct !{!2321, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2322 = distinct !{!2322, !2321, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2323 = distinct !{!2323, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2324 = distinct !{!2324, !2323, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2325 = distinct !{!2325, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2326 = distinct !{!2326, !2325, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2327 = distinct !{!2327, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide"}
!2328 = distinct !{!2328, !2327, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!2329 = distinct !{!2329, !2327, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!2330 = distinct !{!2330, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide"}
!2331 = distinct !{!2331, !2330, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!2332 = distinct !{!2332, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!2333 = distinct !{!2333, !2332, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!2334 = distinct !{!2334, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2335 = distinct !{!2335, !2334, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2336 = distinct !{!2336, !2319, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide: argument 0"}
!2337 = distinct !{!2337, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2338 = distinct !{!2338, !2337, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2339 = distinct !{!2339, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide"}
!2340 = distinct !{!2340, !2339, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide: argument 0"}
!2341 = distinct !{!2341, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!2342 = distinct !{!2342, !2341, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!2343 = distinct !{!2343, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2344 = distinct !{!2344, !2343, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2345 = distinct !{!2345, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2346 = distinct !{!2346, !2345, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2347 = distinct !{!2347, !2345, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2348 = distinct !{!2348, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2349 = distinct !{!2349, !2348, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2350 = distinct !{!2350, !2348, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2351 = distinct !{!2351, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2352 = distinct !{!2352, !2351, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2353 = distinct !{!2353, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2354 = distinct !{!2354, !2353, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2355 = distinct !{!2355, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2356 = distinct !{!2356, !2355, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2357 = distinct !{!2357, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2358 = distinct !{!2358, !2357, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2359 = distinct !{!2359, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2360 = distinct !{!2360, !2359, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2361 = distinct !{!2361, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2362 = distinct !{!2362, !2361, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2363 = distinct !{!2363, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2364 = distinct !{!2364, !2363, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2365 = distinct !{!2365, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2366 = distinct !{!2366, !2365, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2367 = distinct !{!2367, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2368 = distinct !{!2368, !2367, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2369 = distinct !{!2369, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2370 = distinct !{!2370, !2369, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2371 = distinct !{!2371, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2372 = distinct !{!2372, !2371, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2373 = distinct !{!2373, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2374 = distinct !{!2374, !2373, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2375 = distinct !{!2375, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide"}
!2376 = distinct !{!2376, !2375, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide: argument 0"}
!2377 = distinct !{!2377, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide"}
!2378 = distinct !{!2378, !2377, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide: argument 0"}
!2379 = distinct !{!2379, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2380 = distinct !{!2380, !2379, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2381 = distinct !{!2381, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2382 = distinct !{!2382, !2381, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2383 = distinct !{!2383, i1 true, !"_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation"}
!2384 = distinct !{!2384, !2383, !"_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation: argument 0"}
!2385 = distinct !{!2385, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide"}
!2386 = distinct !{!2386, !2385, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide: argument 0"}
!2387 = distinct !{!2387, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2388 = distinct !{!2388, !2387, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2389 = distinct !{!2389, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2390 = distinct !{!2390, !2389, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2391 = distinct !{!2391, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2392 = distinct !{!2392, !2391, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2393 = distinct !{!2393, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2394 = distinct !{!2394, !2393, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2395 = distinct !{!2395, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2396 = distinct !{!2396, !2395, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2397 = distinct !{!2397, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2398 = distinct !{!2398, !2397, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2399 = distinct !{!2399, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2400 = distinct !{!2400, !2399, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2401 = distinct !{!2401, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2402 = distinct !{!2402, !2401, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2403 = distinct !{!2403, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2404 = distinct !{!2404, !2403, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2405 = distinct !{!2405, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2406 = distinct !{!2406, !2405, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2407 = distinct !{!2407, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!2408 = distinct !{!2408, !2407, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2409 = distinct !{!2409, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2410 = distinct !{!2410, !2409, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2411 = distinct !{!2411, !34}
!2412 = distinct !{!2412, i1 true, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide"}
!2413 = distinct !{!2413, !2412, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide: argument 0"}
!2414 = distinct !{!2414, !2412, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide: argument 1"}
!2415 = distinct !{!2415, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2416 = distinct !{!2416, !2415, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2417 = distinct !{!2417, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2418 = distinct !{!2418, !2417, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2419 = distinct !{!2419, !34}
!2420 = distinct !{!2420, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2421 = distinct !{!2421, !2420, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2422 = distinct !{!2422, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide"}
!2423 = distinct !{!2423, !2422, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!2424 = distinct !{!2424, !2422, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!2425 = distinct !{!2425, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide"}
!2426 = distinct !{!2426, !2425, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!2427 = distinct !{!2427, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!2428 = distinct !{!2428, !2427, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!2429 = distinct !{!2429, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2430 = distinct !{!2430, !2429, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2431 = distinct !{!2431, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
end_hunk_2
