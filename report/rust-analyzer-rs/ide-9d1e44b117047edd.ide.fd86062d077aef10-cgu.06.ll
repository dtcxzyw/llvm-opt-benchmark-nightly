Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1704
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RNvXs5_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.fm = load ptr, ptr %i.l, align 16, !alias.scope !1950, !nonnull !5
  %i.fn = load i64, ptr %i.bf, align 8, !alias.scope !1950
  %.sink11.i223 = select i1 %i.fl, ptr %i.fm, ptr %i.l
  %.sink10.i224 = select i1 %i.fl, i64 %i.fn, i64 %i.fk ; 2 uses
  %i.fo = load i64, ptr %i.da, align 16, !alias.scope !1951, !noundef !5 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 2                   ; 2 uses
  %i.fq = load ptr, ptr %i.j, align 16, !alias.scope !1951, !nonnull !5
  %i.fr = load i64, ptr %i.dc, align 8, !alias.scope !1951
  %.sink11.i226 = select i1 %i.fp, ptr %i.fq, ptr %i.j
  %.sink10.i227 = select i1 %i.fp, i64 %i.fr, i64 %i.fo ; 2 uses
  %i.fs = add i64 %.sink10.i227, %.sink10.i224
  %i.ft = shl i64 %i.fs, 7
  %i.fu = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i220, i64 noundef %i.fj, ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i223, i64 noundef %.sink10.i224, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i226, i64 noundef %.sink10.i227, i64 noundef %i.ft)
          to label %bb.ao unwind label %bb.ac     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fv = load i64, ptr %i.cz, align 16, !alias.scope !1952, !noundef !5 ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, 2                   ; 2 uses
  %i.fx = load i64, ptr %i.de, align 8, !alias.scope !1952 ; 2 uses
  %.sink10.i236475 = select i1 %i.fw, i64 %i.fx, i64 %i.fv ; 2 uses
  %.not161476 = icmp eq i64 %.sink10.i236475, 0
  br i1 %.not161476, label %.critedge170, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.ao
  %i.fy = load ptr, ptr %i.k, align 16, !alias.scope !1952, !nonnull !5
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph478, %bb.at
  %i.fz = phi i64 [ %i.fx, %.lr.ph478 ], [ %i.gk, %bb.at ]
  %i.ga = phi i64 [ %i.fv, %.lr.ph478 ], [ %i.gl, %bb.at ]
  %.sink10.i236477 = phi i64 [ %.sink10.i236475, %.lr.ph478 ], [ %.sink10.i236, %bb.at ]
  %i.gb = phi i1 [ %i.fw, %.lr.ph478 ], [ %i.gm, %bb.at ] ; 2 uses
  %.sink11.i235 = select i1 %i.gb, ptr %i.fy, ptr %i.k
  %i.gc = getelementptr [16 x i8], ptr %.sink11.i235, i64 %.sink10.i236477
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = load i128, ptr %i.gd, align 16, !noundef !5
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
  %i.gh = load i64, ptr %.sink9.i240, align 8, !noundef !5 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = add i64 %i.gh, -1
  store i64 %i.gj, ptr %.sink9.i240, align 8
  %.pre561 = load i64, ptr %i.cz, align 16, !alias.scope !1952
  %.pre562 = load i64, ptr %i.de, align 8, !alias.scope !1952
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
  %i.go = load i64, ptr %i.bb, align 16, !alias.scope !1953, !noundef !5 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 2                   ; 2 uses
  %i.gq = load ptr, ptr %i.l, align 16, !alias.scope !1953, !nonnull !5
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
  %i.hb = load i128, ptr %i.ha, align 16, !alias.scope !1954, !noundef !5
  br label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa

.lr.ph.split.us.i249.prol.loopexit.unr-lcssa:     ; preds = %bb.av, %.lr.ph.split.us.i249.prol
  %.sroa.02.0.us.i250.prol = phi i128 [ %i.hb, %bb.av ], [ 0, %.lr.ph.split.us.i249.prol ]
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gx
  store i128 %.sroa.02.0.us.i250.prol, ptr %i.hc, align 16, !alias.scope !1954
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
  %i.hi = load i128, ptr %i.hh, align 16, !alias.scope !1954, !noundef !5
  br label %.lr.ph.split.us.i249.1

.lr.ph.split.us.i249.1:                           ; preds = %bb.aw, %.lr.ph.split.us.i249
  %.sroa.02.0.us.i250 = phi i128 [ %i.hi, %bb.aw ], [ 0, %.lr.ph.split.us.i249 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.he
  store i128 %.sroa.02.0.us.i250, ptr %i.hj, align 16, !alias.scope !1954
  %i.hk = add nsw i64 %.sroa.05.026.us.i, -2      ; 5 uses
  %i.hl = icmp ult i64 %i.hk, %i.gs
  br i1 %i.hl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.us.i249.1
  %i.hm = sub nuw nsw i64 %i.hk, %i.gs
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hm
  %i.ho = load i128, ptr %i.hn, align 16, !alias.scope !1954, !noundef !5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.split.us.i249.1
  %.sroa.02.0.us.i250.1 = phi i128 [ %i.ho, %bb.ax ], [ 0, %.lr.ph.split.us.i249.1 ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hk
  store i128 %.sroa.02.0.us.i250.1, ptr %i.hp, align 16, !alias.scope !1954
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
  %i.hu = load i128, ptr %i.ht, align 16, !alias.scope !1954, !noundef !5
  %i.hv = shl i128 %i.hu, %i.gu                   ; 2 uses
  %.not19.not.i = icmp ugt i64 %i.hq, %i.gs
  br i1 %.not19.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr i8, ptr %i.ht, i64 -16
  %i.hx = load i128, ptr %i.hw, align 16, !alias.scope !1954, !noundef !5
  %i.hy = lshr i128 %i.hx, %i.gw
  %i.hz = or i128 %i.hy, %i.hv
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph.split.i247
  %.sroa.02.0.i248 = phi i128 [ 0, %.lr.ph.split.i247 ], [ %i.hz, %bb.ba ], [ %i.hv, %bb.az ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hq
  store i128 %.sroa.02.0.i248, ptr %i.ia, align 16, !alias.scope !1954
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
  %i.if = load i64, ptr %i.bb, align 16, !alias.scope !1955, !noundef !5 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 2                   ; 3 uses
  %i.ih = load ptr, ptr %i.l, align 16, !alias.scope !1955 ; 2 uses
  %i.ii = load i64, ptr %i.bf, align 8, !alias.scope !1955 ; 2 uses
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
  %i.il = load i128, ptr %i.ik, align 16, !alias.scope !1956, !noundef !5 ; 2 uses
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
  %i.jl = load i128, ptr %i.jk, align 16, !alias.scope !1957, !noundef !5 ; 3 uses
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
  store i128 %i.kr, ptr %i.jk, align 16, !alias.scope !1957
  %i.ks = icmp eq ptr %.sink10.i260, %i.jk
  br i1 %i.ks, label %._crit_edge.i, label %.lr.ph.i266

._crit_edge.i:                                    ; preds = %.lr.ph.i266
  %i.kt = trunc nuw nsw i64 %i.ko to i8
  %.pre564 = load ptr, ptr %i.l, align 16, !alias.scope !1958 ; 3 uses
  %.pre568 = load i64, ptr %i.bb, align 16, !alias.scope !1959 ; 2 uses
  %.pre569 = load i64, ptr %i.bf, align 8, !alias.scope !1959 ; 2 uses
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
  %i.li = load i128, ptr %i.lh, align 16, !noundef !5
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
  %i.lu = load i64, ptr %i.ib, align 8, !alias.scope !1960, !noundef !5 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 64                  ; 2 uses
  %i.lw = load ptr, ptr %i.f, align 8, !alias.scope !1960, !nonnull !5
  %.sink10.i.i273 = select i1 %i.lv, ptr %i.lw, ptr %i.f
  %.sink9.i.i274 = select i1 %i.lv, ptr %i.iv, ptr %i.ib ; 2 uses
  %.sink.i.i275 = call i64 @llvm.umax.i64(i64 %i.lu, i64 64)
  %i.lx = load i64, ptr %.sink9.i.i274, align 8, !alias.scope !1961, !noundef !5 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, %.sink.i.i275
  br i1 %i.ly, label %bb.bj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, !prof !10

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.bj
  %i.lz = load ptr, ptr %i.f, align 8, !alias.scope !1961, !nonnull !5, !noundef !5
  %.pre.i278 = load i64, ptr %i.iv, align 8, !alias.scope !1961
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit: ; preds = %bb.bi, %.noexc279
  %i.ma = phi i64 [ %.pre.i278, %.noexc279 ], [ %i.lx, %bb.bi ]
  %.sroa.01.0.i276 = phi ptr [ %i.iv, %.noexc279 ], [ %.sink9.i.i274, %bb.bi ] ; 2 uses
  %.sroa.0.0.i277 = phi ptr [ %i.lz, %.noexc279 ], [ %.sink10.i.i273, %bb.bi ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i277, i64 %i.ma
  store i8 %i.lt, ptr %i.mb, align 1
  %i.mc = load i64, ptr %.sroa.01.0.i276, align 8, !alias.scope !1961, !noundef !5
  %i.md = add i64 %i.mc, 1
  store i64 %i.md, ptr %.sroa.01.0.i276, align 8, !alias.scope !1961
  %.pre573.a = load i64, ptr %i.bb, align 16, !alias.scope !1958
  %.pre574 = load i64, ptr %i.bf, align 8, !alias.scope !1958
  %.pre565.pre = load ptr, ptr %i.l, align 16, !alias.scope !1958
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
  %i.mj = load i64, ptr %.sink9.i271, align 8, !noundef !5 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = add i64 %i.mj, -1
  store i64 %i.ml, ptr %.sink9.i271, align 8
  %.pre570 = load i64, ptr %i.bb, align 16, !alias.scope !1959 ; 3 uses
  %.pre571 = load i64, ptr %i.bf, align 8, !alias.scope !1959 ; 3 uses
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
  %i.mu = load i64, ptr %i.ib, align 8, !alias.scope !1962, !noundef !5 ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !1962 ; 2 uses
  %.sink10.i264 = select i1 %i.mv, i64 %i.mx, i64 %i.mu ; 4 uses
  %i.my = icmp eq i64 %.sink10.i264, 0
  br i1 %i.my, label %bb.bo, label %bb.bp, !prof !10

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
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !5
  %i.ne = icmp ult i8 %i.nd, 53
  br i1 %i.ne, label %.preheader451, label %bb.bs

.preheader451:                                    ; preds = %bb.br
  %i.nf = load i64, ptr %i.ib, align 8, !alias.scope !1963, !noundef !5 ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 64
  %i.nh = load i64, ptr %i.mw, align 8, !alias.scope !1963
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
  %i.nq = load i8, ptr %.sroa.039.0498, align 1, !noundef !5 ; 2 uses
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
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !5
  %i.oa = icmp eq i8 %i.nz, 48
  br i1 %i.oa, label %bb.bx, label %.loopexit452

bb.bx:                                            ; preds = %bb.bw
  %i.ob = add nuw i64 %.sroa.031.2504, 1          ; 3 uses
  %i.oc = load i64, ptr %i.ib, align 8, !alias.scope !1963, !noundef !5 ; 2 uses
  %i.od = icmp ugt i64 %i.oc, 64
  %i.oe = load i64, ptr %i.mw, align 8, !alias.scope !1963
  %.sink10.i290 = select i1 %i.od, i64 %i.oe, i64 %i.oc
  %i.of = icmp ult i64 %i.ob, %.sink10.i290
  br i1 %i.of, label %.lr.ph505, label %.loopexit452

bb.by:                                            ; preds = %.loopexit452
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.og = load i64, ptr %i.ib, align 8, !alias.scope !1964, !noundef !5 ; 3 uses
  %i.oh = icmp ugt i64 %i.og, 64                  ; 3 uses
  %i.oi = load i64, ptr %i.mw, align 8, !alias.scope !1964 ; 2 uses
  %.sink10.i294 = select i1 %i.oh, i64 %i.oi, i64 %i.og
  %i.oj = icmp eq i64 %.sink10.i294, 0
  br i1 %i.oj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303, label %bb.ca

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303: ; preds = %bb.bz
  %.sink9.i.i297 = select i1 %i.oh, ptr %i.mw, ptr %i.ib ; 2 uses
  %i.ok = load ptr, ptr %i.f, align 8, !alias.scope !1964, !nonnull !5
  %.sink10.i.i296 = select i1 %i.oh, ptr %i.ok, ptr %i.f
  store i8 49, ptr %.sink10.i.i296, align 1
  %i.ol = load i64, ptr %.sink9.i.i297, align 8, !alias.scope !1965, !noundef !5
  %i.om = add i64 %i.ol, 1
  store i64 %i.om, ptr %.sink9.i.i297, align 8, !alias.scope !1965
  %.pre575 = load i64, ptr %i.ib, align 8, !alias.scope !1966
  %.pre576 = load i64, ptr %i.mw, align 8, !alias.scope !1966
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bz, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303
  %i.on = phi i32 [ %i.mt, %bb.bp ], [ %i.nx, %bb.bz ], [ %i.nx, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 7 uses
  %i.oo = phi i64 [ %i.mx, %bb.bp ], [ %i.oi, %bb.bz ], [ %.pre576, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ]
  %i.op = phi i64 [ %i.mu, %bb.bp ], [ %i.og, %bb.bz ], [ %.pre575, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 2 uses
  %i.oq = icmp ugt i64 %i.op, 64                  ; 2 uses
  %i.or = load ptr, ptr %i.f, align 8, !alias.scope !1966, !nonnull !5
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
  %i.fm = load ptr, ptr %i.l, align 16, !alias.scope !2042, !nonnull !5
  %i.fn = load i64, ptr %i.bf, align 8, !alias.scope !2042
  %.sink11.i223 = select i1 %i.fl, ptr %i.fm, ptr %i.l
  %.sink10.i224 = select i1 %i.fl, i64 %i.fn, i64 %i.fk ; 2 uses
  %i.fo = load i64, ptr %i.da, align 16, !alias.scope !2043, !noundef !5 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 2                   ; 2 uses
  %i.fq = load ptr, ptr %i.j, align 16, !alias.scope !2043, !nonnull !5
  %i.fr = load i64, ptr %i.dc, align 8, !alias.scope !2043
  %.sink11.i226 = select i1 %i.fp, ptr %i.fq, ptr %i.j
  %.sink10.i227 = select i1 %i.fp, i64 %i.fr, i64 %i.fo ; 2 uses
  %i.fs = add i64 %.sink10.i227, %.sink10.i224
  %i.ft = shl i64 %i.fs, 7
  %i.fu = invoke fastcc noundef i8 @_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig3mul(ptr noalias nofree noundef nonnull align 16 %.sink10.i220, i64 noundef %i.fj, ptr noalias nofree noundef align 4 dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i223, i64 noundef %.sink10.i224, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %.sink11.i226, i64 noundef %.sink10.i227, i64 noundef %i.ft)
          to label %bb.ao unwind label %bb.ac     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fv = load i64, ptr %i.cz, align 16, !alias.scope !2044, !noundef !5 ; 3 uses
  %i.fw = icmp ugt i64 %i.fv, 2                   ; 2 uses
  %i.fx = load i64, ptr %i.de, align 8, !alias.scope !2044 ; 2 uses
  %.sink10.i236475 = select i1 %i.fw, i64 %i.fx, i64 %i.fv ; 2 uses
  %.not161476 = icmp eq i64 %.sink10.i236475, 0
  br i1 %.not161476, label %.critedge170, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.ao
  %i.fy = load ptr, ptr %i.k, align 16, !alias.scope !2044, !nonnull !5
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph478, %bb.at
  %i.fz = phi i64 [ %i.fx, %.lr.ph478 ], [ %i.gk, %bb.at ]
  %i.ga = phi i64 [ %i.fv, %.lr.ph478 ], [ %i.gl, %bb.at ]
  %.sink10.i236477 = phi i64 [ %.sink10.i236475, %.lr.ph478 ], [ %.sink10.i236, %bb.at ]
  %i.gb = phi i1 [ %i.fw, %.lr.ph478 ], [ %i.gm, %bb.at ] ; 2 uses
  %.sink11.i235 = select i1 %i.gb, ptr %i.fy, ptr %i.k
  %i.gc = getelementptr [16 x i8], ptr %.sink11.i235, i64 %.sink10.i236477
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = load i128, ptr %i.gd, align 16, !noundef !5
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
  %i.gh = load i64, ptr %.sink9.i240, align 8, !noundef !5 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = add i64 %i.gh, -1
  store i64 %i.gj, ptr %.sink9.i240, align 8
  %.pre561 = load i64, ptr %i.cz, align 16, !alias.scope !2044
  %.pre562 = load i64, ptr %i.de, align 8, !alias.scope !2044
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
  %i.go = load i64, ptr %i.bb, align 16, !alias.scope !2045, !noundef !5 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, 2                   ; 2 uses
  %i.gq = load ptr, ptr %i.l, align 16, !alias.scope !2045, !nonnull !5
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
  %i.hb = load i128, ptr %i.ha, align 16, !alias.scope !2046, !noundef !5
  br label %.lr.ph.split.us.i249.prol.loopexit.unr-lcssa

.lr.ph.split.us.i249.prol.loopexit.unr-lcssa:     ; preds = %bb.av, %.lr.ph.split.us.i249.prol
  %.sroa.02.0.us.i250.prol = phi i128 [ %i.hb, %bb.av ], [ 0, %.lr.ph.split.us.i249.prol ]
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.gx
  store i128 %.sroa.02.0.us.i250.prol, ptr %i.hc, align 16, !alias.scope !2046
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
  %i.hi = load i128, ptr %i.hh, align 16, !alias.scope !2046, !noundef !5
  br label %.lr.ph.split.us.i249.1

.lr.ph.split.us.i249.1:                           ; preds = %bb.aw, %.lr.ph.split.us.i249
  %.sroa.02.0.us.i250 = phi i128 [ %i.hi, %bb.aw ], [ 0, %.lr.ph.split.us.i249 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.he
  store i128 %.sroa.02.0.us.i250, ptr %i.hj, align 16, !alias.scope !2046
  %i.hk = add nsw i64 %.sroa.05.026.us.i, -2      ; 5 uses
  %i.hl = icmp ult i64 %i.hk, %i.gs
  br i1 %i.hl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.split.us.i249.1
  %i.hm = sub nuw nsw i64 %i.hk, %i.gs
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hm
  %i.ho = load i128, ptr %i.hn, align 16, !alias.scope !2046, !noundef !5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.split.us.i249.1
  %.sroa.02.0.us.i250.1 = phi i128 [ %i.ho, %bb.ax ], [ 0, %.lr.ph.split.us.i249.1 ]
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hk
  store i128 %.sroa.02.0.us.i250.1, ptr %i.hp, align 16, !alias.scope !2046
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
  %i.hu = load i128, ptr %i.ht, align 16, !alias.scope !2046, !noundef !5
  %i.hv = shl i128 %i.hu, %i.gu                   ; 2 uses
  %.not19.not.i = icmp ugt i64 %i.hq, %i.gs
  br i1 %.not19.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr i8, ptr %i.ht, i64 -16
  %i.hx = load i128, ptr %i.hw, align 16, !alias.scope !2046, !noundef !5
  %i.hy = lshr i128 %i.hx, %i.gw
  %i.hz = or i128 %i.hy, %i.hv
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph.split.i247
  %.sroa.02.0.i248 = phi i128 [ 0, %.lr.ph.split.i247 ], [ %i.hz, %bb.ba ], [ %i.hv, %bb.az ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i242, i64 %i.hq
  store i128 %.sroa.02.0.i248, ptr %i.ia, align 16, !alias.scope !2046
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
  %i.if = load i64, ptr %i.bb, align 16, !alias.scope !2047, !noundef !5 ; 3 uses
  %i.ig = icmp ugt i64 %i.if, 2                   ; 3 uses
  %i.ih = load ptr, ptr %i.l, align 16, !alias.scope !2047 ; 2 uses
  %i.ii = load i64, ptr %i.bf, align 8, !alias.scope !2047 ; 2 uses
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
  %i.il = load i128, ptr %i.ik, align 16, !alias.scope !2048, !noundef !5 ; 2 uses
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
  %i.jl = load i128, ptr %i.jk, align 16, !alias.scope !2049, !noundef !5 ; 3 uses
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
  store i128 %i.kr, ptr %i.jk, align 16, !alias.scope !2049
  %i.ks = icmp eq ptr %.sink10.i260, %i.jk
  br i1 %i.ks, label %._crit_edge.i, label %.lr.ph.i266

._crit_edge.i:                                    ; preds = %.lr.ph.i266
  %i.kt = trunc nuw nsw i64 %i.ko to i8
  %.pre564 = load ptr, ptr %i.l, align 16, !alias.scope !2050 ; 3 uses
  %.pre568 = load i64, ptr %i.bb, align 16, !alias.scope !2051 ; 2 uses
  %.pre569 = load i64, ptr %i.bf, align 8, !alias.scope !2051 ; 2 uses
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
  %i.li = load i128, ptr %i.lh, align 16, !noundef !5
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
  %i.lu = load i64, ptr %i.ib, align 8, !alias.scope !2052, !noundef !5 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 64                  ; 2 uses
  %i.lw = load ptr, ptr %i.f, align 8, !alias.scope !2052, !nonnull !5
  %.sink10.i.i273 = select i1 %i.lv, ptr %i.lw, ptr %i.f
  %.sink9.i.i274 = select i1 %i.lv, ptr %i.iv, ptr %i.ib ; 2 uses
  %.sink.i.i275 = call i64 @llvm.umax.i64(i64 %i.lu, i64 64)
  %i.lx = load i64, ptr %.sink9.i.i274, align 8, !alias.scope !2053, !noundef !5 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, %.sink.i.i275
  br i1 %i.ly, label %bb.bj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit, !prof !10

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E21reserve_one_uncheckedCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc279 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.bj
  %i.lz = load ptr, ptr %i.f, align 8, !alias.scope !2053, !nonnull !5, !noundef !5
  %.pre.i278 = load i64, ptr %i.iv, align 8, !alias.scope !2053
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit: ; preds = %bb.bi, %.noexc279
  %i.ma = phi i64 [ %.pre.i278, %.noexc279 ], [ %i.lx, %bb.bi ]
  %.sroa.01.0.i276 = phi ptr [ %i.iv, %.noexc279 ], [ %.sink9.i.i274, %bb.bi ] ; 2 uses
  %.sroa.0.0.i277 = phi ptr [ %i.lz, %.noexc279 ], [ %.sink10.i.i273, %bb.bi ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i277, i64 %i.ma
  store i8 %i.lt, ptr %i.mb, align 1
  %i.mc = load i64, ptr %.sroa.01.0.i276, align 8, !alias.scope !2053, !noundef !5
  %i.md = add i64 %i.mc, 1
  store i64 %i.md, ptr %.sroa.01.0.i276, align 8, !alias.scope !2053
  %.pre573.a = load i64, ptr %i.bb, align 16, !alias.scope !2050
  %.pre574 = load i64, ptr %i.bf, align 8, !alias.scope !2050
  %.pre565.pre = load ptr, ptr %i.l, align 16, !alias.scope !2050
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
  %i.mj = load i64, ptr %.sink9.i271, align 8, !noundef !5 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = add i64 %i.mj, -1
  store i64 %i.ml, ptr %.sink9.i271, align 8
  %.pre570 = load i64, ptr %i.bb, align 16, !alias.scope !2051 ; 3 uses
  %.pre571 = load i64, ptr %i.bf, align 8, !alias.scope !2051 ; 3 uses
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
  %i.mu = load i64, ptr %i.ib, align 8, !alias.scope !2054, !noundef !5 ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.mx = load i64, ptr %i.mw, align 8, !alias.scope !2054 ; 2 uses
  %.sink10.i264 = select i1 %i.mv, i64 %i.mx, i64 %i.mu ; 4 uses
  %i.my = icmp eq i64 %.sink10.i264, 0
  br i1 %i.my, label %bb.bo, label %bb.bp, !prof !10

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
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !5
  %i.ne = icmp ult i8 %i.nd, 53
  br i1 %i.ne, label %.preheader451, label %bb.bs

.preheader451:                                    ; preds = %bb.br
  %i.nf = load i64, ptr %i.ib, align 8, !alias.scope !2055, !noundef !5 ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 64
  %i.nh = load i64, ptr %i.mw, align 8, !alias.scope !2055
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
  %i.nq = load i8, ptr %.sroa.039.0498, align 1, !noundef !5 ; 2 uses
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
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !5
  %i.oa = icmp eq i8 %i.nz, 48
  br i1 %i.oa, label %bb.bx, label %.loopexit452

bb.bx:                                            ; preds = %bb.bw
  %i.ob = add nuw i64 %.sroa.031.2504, 1          ; 3 uses
  %i.oc = load i64, ptr %i.ib, align 8, !alias.scope !2055, !noundef !5 ; 2 uses
  %i.od = icmp ugt i64 %i.oc, 64
  %i.oe = load i64, ptr %i.mw, align 8, !alias.scope !2055
  %.sink10.i290 = select i1 %i.od, i64 %i.oe, i64 %i.oc
  %i.of = icmp ult i64 %i.ob, %.sink10.i290
  br i1 %i.of, label %.lr.ph505, label %.loopexit452

bb.by:                                            ; preds = %.loopexit452
  invoke void @_RNvXs8_Csjpcu9PwIgok_8smallvecINtB5_5DrainAhj40_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.og = load i64, ptr %i.ib, align 8, !alias.scope !2056, !noundef !5 ; 3 uses
  %i.oh = icmp ugt i64 %i.og, 64                  ; 3 uses
  %i.oi = load i64, ptr %i.mw, align 8, !alias.scope !2056 ; 2 uses
  %.sink10.i294 = select i1 %i.oh, i64 %i.oi, i64 %i.og
  %i.oj = icmp eq i64 %.sink10.i294, 0
  br i1 %i.oj, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303, label %bb.ca

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303: ; preds = %bb.bz
  %.sink9.i.i297 = select i1 %i.oh, ptr %i.mw, ptr %i.ib ; 2 uses
  %i.ok = load ptr, ptr %i.f, align 8, !alias.scope !2056, !nonnull !5
  %.sink10.i.i296 = select i1 %i.oh, ptr %i.ok, ptr %i.f
  store i8 49, ptr %.sink10.i.i296, align 1
  %i.ol = load i64, ptr %.sink9.i.i297, align 8, !alias.scope !2057, !noundef !5
  %i.om = add i64 %i.ol, 1
  store i64 %i.om, ptr %.sink9.i.i297, align 8, !alias.scope !2057
  %.pre575 = load i64, ptr %i.ib, align 8, !alias.scope !2058
  %.pre576 = load i64, ptr %i.mw, align 8, !alias.scope !2058
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.bz, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303
  %i.on = phi i32 [ %i.mt, %bb.bp ], [ %i.nx, %bb.bz ], [ %i.nx, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 7 uses
  %i.oo = phi i64 [ %i.mx, %bb.bp ], [ %i.oi, %bb.bz ], [ %.pre576, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ]
  %i.op = phi i64 [ %i.mu, %bb.bp ], [ %i.og, %bb.bz ], [ %.pre575, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide.exit303 ] ; 2 uses
  %i.oq = icmp ugt i64 %i.op, 64                  ; 2 uses
  %i.or = load ptr, ptr %i.f, align 8, !alias.scope !2058, !nonnull !5
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
!1714 = distinct !{!1714, !1712, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide: argument 1"}
!1715 = distinct !{!1715, !1712, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB2N_11RangeMapper12map_range_ups_0E0INtNtB8_12control_flow11ControlFlowB20_EECslLuZgPVt6hg_3ide: argument 0"}
!1716 = distinct !{!1716, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB24_11RangeMapper12map_range_ups_0E0CslLuZgPVt6hg_3ide"}
!1717 = distinct !{!1717, !1716, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCsuAhG64lL82_9text_size5range9TextRangeQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB24_11RangeMapper12map_range_ups_0E0CslLuZgPVt6hg_3ide: argument 0"}
!1718 = distinct !{!1718, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtBT_11RangeMapper12map_range_ups_0INtB7_5FnMutTjEE8call_mutCslLuZgPVt6hg_3ide"}
!1719 = distinct !{!1719, !1718, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtBT_11RangeMapper12map_range_ups_0INtB7_5FnMutTjEE8call_mutCslLuZgPVt6hg_3ide: argument 0"}
!1720 = distinct !{!1720, i1 true, !"_RNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB4_11RangeMapper12map_range_ups_0CslLuZgPVt6hg_3ide"}
!1721 = distinct !{!1721, !1720, !"_RNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB4_11RangeMapper12map_range_ups_0CslLuZgPVt6hg_3ide: argument 1"}
!1722 = distinct !{!1722, !1720, !"_RNCNvMNtCs6oosyzwIepl_6ide_db12range_mapperNtB4_11RangeMapper12map_range_ups_0CslLuZgPVt6hg_3ide: argument 0"}
!1723 = distinct !{!1723, i1 true, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNvB10_8find_map5checkB3y_jNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0INtNtB7_12control_flow11ControlFlowjEE0B5s_EB4p_"}
!1724 = distinct !{!1724, !1723, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNvB10_8find_map5checkB3y_jNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0INtNtB7_12control_flow11ControlFlowjEE0B5s_EB4p_: argument 1"}
!1725 = distinct !{!1725, !1723, !"_RINvXs_NtNtCshzWfHUSfYae_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNvB10_8find_map5checkB3y_jNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0INtNtB7_12control_flow11ControlFlowjEE0B5s_EB4p_: argument 0"}
!1726 = distinct !{!1726, i1 true, !"_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_jNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0INtNtNtBe_3ops12control_flow11ControlFlowjEE0B3p_"}
!1727 = distinct !{!1727, !1726, !"_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitReEE8try_folduNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8find_map5checkB1X_jNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0INtNtNtBe_3ops12control_flow11ControlFlowjEE0B3p_: argument 0"}
!1728 = distinct !{!1728, i1 true, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkRejNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0B1r_"}
!1729 = distinct !{!1729, !1728, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkRejNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0E0B1r_: argument 0"}
!1730 = distinct !{!1730, i1 true, !"_RNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0B7_"}
!1731 = distinct !{!1731, !1730, !"_RNCNvNtNtCslLuZgPVt6hg_3ide19syntax_highlighting6inject11doc_comments0_0B7_: argument 0"}
!1732 = distinct !{!1732, i1 true, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide"}
!1733 = distinct !{!1733, !1732, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide: argument 1"}
!1734 = distinct !{!1734, !1732, !"_RINvMNtCshzWfHUSfYae_4core3stre4findReECslLuZgPVt6hg_3ide: argument 0"}
!1735 = distinct !{!1735, i1 true, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!1736 = distinct !{!1736, !1735, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!1737 = distinct !{!1737, !1735, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!1738 = distinct !{!1738, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide"}
!1739 = distinct !{!1739, !1738, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 1"}
!1740 = distinct !{!1740, !1738, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 2"}
!1741 = distinct !{!1741, !1738, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 3"}
!1742 = distinct !{!1742, i1 true, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide"}
!1743 = distinct !{!1743, !1742, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 1"}
!1744 = distinct !{!1744, !1742, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 2"}
!1745 = distinct !{!1745, !1742, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECslLuZgPVt6hg_3ide: argument 3"}
!1746 = distinct !{!1746, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1747 = distinct !{!1747, !1746, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1748 = distinct !{!1748, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1749 = distinct !{!1749, !1748, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1750 = distinct !{!1750, i1 true, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!1751 = distinct !{!1751, !1750, !"_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!1752 = !{i32 -1, i32 5}
!1753 = !{!1689}
!1754 = !{!1691, !1689}
!1755 = !{i64 0, i64 -9223372036854775808}
!1756 = !{!1695, !1693}
!1757 = !{!1697}
!1758 = !{!1702, !1701, !1699}
!1759 = !{!1704}
!1760 = !{!1705, !1704}
!1761 = !{!1705}
!1762 = !{!1707}
!1763 = !{!1709}
!1764 = !{!1711}
!1765 = !{!1722, !1721, !1719, !1717, !1715, !1714, !1713}
!1766 = !{!1727, !1725, !1724}
!1767 = !{!1734, !1733, !1731, !1729, !1727, !1725, !1724}
!1768 = !{!1736}
!1769 = !{!1737, !1736, !1734, !1733, !1731, !1729, !1727, !1725, !1724}
!1770 = !{!1739}
!1771 = !{!1740}
!1772 = !{!1741}
!1773 = !{!1739, !1736}
!1774 = !{!1737, !1736, !1727, !1725, !1724}
!1775 = !{!1743}
!1776 = !{!1744}
!1777 = !{!1745}
!1778 = !{!1743, !1736}
!1779 = !{!1747}
!1780 = !{!1749}
!1781 = !{!1751}
!1782 = !{i8 0, i8 24}
!1783 = distinct !{!1783, i1 true, !"_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20siblings_with_tokens"}
!1784 = distinct !{!1784, !1783, !"_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20siblings_with_tokens: argument 0"}
!1785 = distinct !{!1785, i1 true, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB5_4SkipINtNtB7_3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1Z_6cursor10SyntaxNodeNtB2N_11SyntaxTokenENCNvMs4_B2N_B2L_20siblings_with_tokens0ENvYIB1V_INtNtB1Z_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4l_11SyntaxTokenB4H_EEINtNtBb_7convert4FromB1U_E4fromEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB6v_4find5checkB4d_NCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter0E0INtNtNtBb_3ops12control_flow11ControlFlowB4d_EEB7L_"}
!1786 = distinct !{!1786, !1785, !"_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB5_4SkipINtNtB7_3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1Z_6cursor10SyntaxNodeNtB2N_11SyntaxTokenENCNvMs4_B2N_B2L_20siblings_with_tokens0ENvYIB1V_INtNtB1Z_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4l_11SyntaxTokenB4H_EEINtNtBb_7convert4FromB1U_E4fromEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB6v_4find5checkB4d_NCNvNvNtCslLuZgPVt6hg_3ide16extend_selection16extend_list_item16nearby_delimiter0E0INtNtNtBb_3ops12control_flow11ControlFlowB4d_EEB7L_: argument 0"}
!1787 = distinct !{!1787, i1 true, !"_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1B_6cursor10SyntaxNodeNtB2p_11SyntaxTokenENCNvMs4_B2p_B2n_20siblings_with_tokens0ENvYIB1x_INtNtB1B_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3X_11SyntaxTokenB4j_EEINtNtBb_7convert4FromB1w_E4fromENtNtNtB9_6traits8iterator8Iterator3nthCslLuZgPVt6hg_3ide"}
!1788 = distinct !{!1788, !1787, !"_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1B_6cursor10SyntaxNodeNtB2p_11SyntaxTokenENCNvMs4_B2p_B2n_20siblings_with_tokens0ENvYIB1x_INtNtB1B_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3X_11SyntaxTokenB4j_EEINtNtBb_7convert4FromB1w_E4fromENtNtNtB9_6traits8iterator8Iterator3nthCslLuZgPVt6hg_3ide: argument 0"}
!1789 = distinct !{!1789, i1 true, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1H_6cursor10SyntaxNodeNtB2v_11SyntaxTokenENCNvMs4_B2v_B2t_20siblings_with_tokens0ENvYIB1D_INtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB43_11SyntaxTokenB4p_EEINtNtBb_7convert4FromB1C_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1790 = distinct !{!1790, !1789, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1H_6cursor10SyntaxNodeNtB2v_11SyntaxTokenENCNvMs4_B2v_B2t_20siblings_with_tokens0ENvYIB1D_INtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB43_11SyntaxTokenB4p_EEINtNtBb_7convert4FromB1C_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!1791 = distinct !{!1791, i1 true, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1d_6cursor10SyntaxNodeNtB21_11SyntaxTokenENCNvMs4_B21_B1Z_20siblings_with_tokens0ENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1792 = distinct !{!1792, !1791, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1d_6cursor10SyntaxNodeNtB21_11SyntaxTokenENCNvMs4_B21_B1Z_20siblings_with_tokens0ENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!1793 = !{!1784}
!1794 = !{!1786}
!1795 = !{!1788}
!1796 = !{!1790}
!1797 = !{!1792}
!1798 = !{!1792, !1790, !1788, !1786}
!1799 = !{!1792, !1790}
!1800 = distinct !{!1800, i1 true, !"_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in"}
!1801 = distinct !{!1801, !1800, !"_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in: argument 0"}
!1802 = distinct !{!1802, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr"}
!1803 = distinct !{!1803, !1802, !"_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr: argument 0"}
!1804 = !{!1803, !1801}
!1805 = distinct !{!1805, i1 true, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide"}
!1806 = distinct !{!1806, !1805, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide: argument 0"}
!1807 = distinct !{!1807, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide"}
!1808 = distinct !{!1808, !1807, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!1809 = distinct !{!1809, !1807, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_NtNtCs39E2wp1vf7X_6intern6symbol6SymbolEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1T_8PeekableINtNtB1V_4fuse4FuseINtNtB1V_6cloned6ClonedINtNtNtB5_5slice4iter4IterBM_EEEE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!1810 = distinct !{!1810, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_4fuse4FuseINtNtB9_6cloned6ClonedINtNtNtBd_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEE4peek0CslLuZgPVt6hg_3ide"}
!1811 = distinct !{!1811, !1810, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_4fuse4FuseINtNtB9_6cloned6ClonedINtNtNtBd_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!1812 = distinct !{!1812, i1 true, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide"}
!1813 = distinct !{!1813, !1812, !"_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEENtNtNtB9_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide: argument 0"}
!1814 = distinct !{!1814, i1 true, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide"}
!1815 = distinct !{!1815, !1814, !"_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide: argument 0"}
!1816 = !{!1806}
!1817 = !{!1808}
!1818 = !{!1809}
!1819 = !{!1815, !1813, !1811, !1809}
!1820 = distinct !{!1820, i1 true, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_"}
!1821 = distinct !{!1821, !1820, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_: argument 1"}
!1822 = distinct !{!1822, !1820, !"_RNCNCNCNvMs1_CslLuZgPVt6hg_3ideNtBb_8Analysis13symbol_search000Bb_: argument 0"}
!1823 = !{!1821}
!1824 = !{!1822, !1821}
!1825 = !{!1822}
!1826 = distinct !{!1826, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!1827 = distinct !{!1827, !1826, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!1828 = distinct !{!1828, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!1829 = distinct !{!1829, !1828, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!1830 = distinct !{!1830, !1828, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!1831 = distinct !{!1831, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1832 = distinct !{!1832, !1831, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1833 = !{!1827}
!1834 = !{!1830, !1829, !1827}
!1835 = !{!1832}
!1836 = distinct !{!1836, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!1837 = distinct !{!1837, !1836, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!1838 = distinct !{!1838, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!1839 = distinct !{!1839, !1838, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!1840 = distinct !{!1840, !1838, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!1841 = distinct !{!1841, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1842 = distinct !{!1842, !1841, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1843 = !{!1837}
!1844 = !{!1840, !1839, !1837}
!1845 = !{!1842}
!1846 = distinct !{!1846, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!1847 = distinct !{!1847, !1846, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!1848 = distinct !{!1848, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!1849 = distinct !{!1849, !1848, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!1850 = distinct !{!1850, !1848, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!1851 = distinct !{!1851, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1852 = distinct !{!1852, !1851, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1853 = !{!1847}
!1854 = !{!1850, !1849, !1847}
!1855 = !{!1852}
!1856 = distinct !{!1856, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!1857 = distinct !{!1857, !1856, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!1858 = distinct !{!1858, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!1859 = distinct !{!1859, !1858, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!1860 = distinct !{!1860, !1858, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!1861 = distinct !{!1861, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1862 = distinct !{!1862, !1861, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1863 = !{!1857}
!1864 = !{!1860, !1859, !1857}
!1865 = !{!1862}
!1866 = distinct !{!1866, i1 true, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide"}
!1867 = distinct !{!1867, !1866, !"_RNvXsa_Csbq3eHDLgq0Z_8la_arenaINtB5_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide: argument 0"}
!1868 = distinct !{!1868, i1 true, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back"}
!1869 = distinct !{!1869, !1868, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 1"}
!1870 = distinct !{!1870, !1868, !"_RNvXs0_NtNtCshzWfHUSfYae_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_back: argument 0"}
!1871 = distinct !{!1871, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1872 = distinct !{!1872, !1871, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1873 = !{!1867}
!1874 = !{!1870, !1869, !1867}
!1875 = !{!1872}
!1876 = distinct !{!1876, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!1877 = distinct !{!1877, !1876, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!1878 = distinct !{!1878, !1876, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!1879 = distinct !{!1879, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1880 = distinct !{!1880, !1879, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1881 = distinct !{!1881, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right"}
!1882 = distinct !{!1882, !1881, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 0"}
!1883 = distinct !{!1883, !1881, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 1"}
!1884 = distinct !{!1884, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1885 = distinct !{!1885, !1884, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1886 = distinct !{!1886, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!1887 = distinct !{!1887, !1886, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!1888 = distinct !{!1888, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1889 = distinct !{!1889, !1888, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1890 = distinct !{!1890, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1891 = distinct !{!1891, !1890, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1892 = distinct !{!1892, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1893 = distinct !{!1893, !1892, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1894 = distinct !{!1894, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1895 = distinct !{!1895, !1894, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1896 = distinct !{!1896, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1897 = distinct !{!1897, !1896, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1898 = distinct !{!1898, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1899 = distinct !{!1899, !1898, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1900 = distinct !{!1900, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1901 = distinct !{!1901, !1900, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1902 = distinct !{!1902, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1903 = distinct !{!1903, !1902, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1904 = distinct !{!1904, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1905 = distinct !{!1905, !1904, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1906 = distinct !{!1906, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1907 = distinct !{!1907, !1906, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1908 = distinct !{!1908, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left"}
!1909 = distinct !{!1909, !1908, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left: argument 0"}
!1910 = distinct !{!1910, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1911 = distinct !{!1911, !1910, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1912 = distinct !{!1912, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb"}
!1913 = distinct !{!1913, !1912, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb: argument 0"}
!1914 = distinct !{!1914, i1 true, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide"}
!1915 = distinct !{!1915, !1914, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5HalfSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide: argument 0"}
!1916 = distinct !{!1916, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1917 = distinct !{!1917, !1916, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1918 = distinct !{!1918, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1919 = distinct !{!1919, !1918, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1920 = distinct !{!1920, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!1921 = distinct !{!1921, !1920, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!1922 = distinct !{!1922, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide"}
!1923 = distinct !{!1923, !1922, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1924 = distinct !{!1924, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!1925 = distinct !{!1925, !1924, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1926 = distinct !{!1926, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!1927 = distinct !{!1927, !1926, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1928 = distinct !{!1928, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!1929 = distinct !{!1929, !1928, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1930 = distinct !{!1930, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!1931 = distinct !{!1931, !1930, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!1932 = distinct !{!1932, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!1933 = distinct !{!1933, !1932, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1934 = distinct !{!1934, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!1935 = distinct !{!1935, !1934, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1936 = !{!1878, !1877}
!1937 = !{!1878}
!1938 = !{!1877}
!1939 = !{!1880}
!1940 = !{!1882}
!1941 = !{!1883}
!1942 = !{!1885}
!1943 = !{!1887}
!1944 = !{!1889}
!1945 = !{!1891}
!1946 = !{!1893}
!1947 = !{!1895}
!1948 = !{!1897}
!1949 = !{!1899}
!1950 = !{!1901}
!1951 = !{!1903}
!1952 = !{!1905}
!1953 = !{!1907}
!1954 = !{!1909}
!1955 = !{!1911}
!1956 = !{!1913}
!1957 = !{!1915}
!1958 = !{!1917}
!1959 = !{!1919}
!1960 = !{!1923, !1921}
!1961 = !{!1921}
!1962 = !{!1925}
!1963 = !{!1927}
!1964 = !{!1929}
!1965 = !{!1931}
!1966 = !{!1933}
!1967 = !{!1935}
!1968 = distinct !{!1968, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!1969 = distinct !{!1969, !1968, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!1970 = distinct !{!1970, !1968, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!1971 = distinct !{!1971, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1972 = distinct !{!1972, !1971, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1973 = distinct !{!1973, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right"}
!1974 = distinct !{!1974, !1973, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 0"}
!1975 = distinct !{!1975, !1973, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right: argument 1"}
!1976 = distinct !{!1976, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1977 = distinct !{!1977, !1976, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1978 = distinct !{!1978, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!1979 = distinct !{!1979, !1978, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!1980 = distinct !{!1980, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1981 = distinct !{!1981, !1980, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1982 = distinct !{!1982, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1983 = distinct !{!1983, !1982, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1984 = distinct !{!1984, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1985 = distinct !{!1985, !1984, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1986 = distinct !{!1986, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1987 = distinct !{!1987, !1986, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1988 = distinct !{!1988, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1989 = distinct !{!1989, !1988, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1990 = distinct !{!1990, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1991 = distinct !{!1991, !1990, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!1992 = distinct !{!1992, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1993 = distinct !{!1993, !1992, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1994 = distinct !{!1994, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1995 = distinct !{!1995, !1994, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1996 = distinct !{!1996, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!1997 = distinct !{!1997, !1996, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!1998 = distinct !{!1998, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!1999 = distinct !{!1999, !1998, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2000 = distinct !{!2000, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left"}
!2001 = distinct !{!2001, !2000, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10shift_left: argument 0"}
!2002 = distinct !{!2002, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2003 = distinct !{!2003, !2002, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2004 = distinct !{!2004, i1 true, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb"}
!2005 = distinct !{!2005, !2004, !"_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb: argument 0"}
!2006 = distinct !{!2006, i1 true, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide"}
!2007 = distinct !{!2007, !2006, !"_RINvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig10each_chunkNCNvXs5_B4_INtB4_9IeeeFloatNtB4_5QuadSENtNtCshzWfHUSfYae_4core3fmt7Display3fmt0ECslLuZgPVt6hg_3ide: argument 0"}
!2008 = distinct !{!2008, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2009 = distinct !{!2009, !2008, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2010 = distinct !{!2010, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2011 = distinct !{!2011, !2010, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2012 = distinct !{!2012, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2013 = distinct !{!2013, !2012, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2014 = distinct !{!2014, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide"}
!2015 = distinct !{!2015, !2014, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2016 = distinct !{!2016, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2017 = distinct !{!2017, !2016, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2018 = distinct !{!2018, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2019 = distinct !{!2019, !2018, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2020 = distinct !{!2020, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2021 = distinct !{!2021, !2020, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2022 = distinct !{!2022, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide"}
!2023 = distinct !{!2023, !2022, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2024 = distinct !{!2024, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2025 = distinct !{!2025, !2024, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2026 = distinct !{!2026, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide"}
!2027 = distinct !{!2027, !2026, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAhj40_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2028 = !{!1970, !1969}
!2029 = !{!1970}
!2030 = !{!1969}
!2031 = !{!1972}
!2032 = !{!1974}
!2033 = !{!1975}
!2034 = !{!1977}
!2035 = !{!1979}
!2036 = !{!1981}
!2037 = !{!1983}
!2038 = !{!1985}
!2039 = !{!1987}
!2040 = !{!1989}
!2041 = !{!1991}
!2042 = !{!1993}
!2043 = !{!1995}
!2044 = !{!1997}
!2045 = !{!1999}
!2046 = !{!2001}
!2047 = !{!2003}
!2048 = !{!2005}
!2049 = !{!2007}
!2050 = !{!2009}
!2051 = !{!2011}
!2052 = !{!2015, !2013}
!2053 = !{!2013}
!2054 = !{!2017}
!2055 = !{!2019}
!2056 = !{!2021}
!2057 = !{!2023}
!2058 = !{!2025}
!2059 = !{!2027}
!2060 = distinct !{!2060, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2061 = distinct !{!2061, !2060, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2062 = distinct !{!2062, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2063 = distinct !{!2063, !2062, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2064 = distinct !{!2064, !2062, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2065 = distinct !{!2065, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2066 = distinct !{!2066, !2065, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2067 = distinct !{!2067, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2068 = distinct !{!2068, !2067, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2069 = distinct !{!2069, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE7or_elseNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB11_9IeeeFloatNtB11_5HalfSENtB13_5Float10from_str_rs3_0ECslLuZgPVt6hg_3ide"}
!2070 = distinct !{!2070, !2069, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE7or_elseNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB11_9IeeeFloatNtB11_5HalfSENtB13_5Float10from_str_rs3_0ECslLuZgPVt6hg_3ide: argument 0"}
!2071 = distinct !{!2071, i1 true, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide"}
!2072 = distinct !{!2072, !2071, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide: argument 1"}
!2073 = distinct !{!2073, !2071, !"_RNCNvXs9_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB7_9IeeeFloatNtB7_5HalfSENtB9_5Float10from_str_rs4_0CslLuZgPVt6hg_3ide: argument 0"}
!2074 = distinct !{!2074, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2075 = distinct !{!2075, !2074, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2076 = distinct !{!2076, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2077 = distinct !{!2077, !2076, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2078 = distinct !{!2078, !2076, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2079 = distinct !{!2079, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2080 = distinct !{!2080, !2079, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2081 = distinct !{!2081, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2082 = distinct !{!2082, !2081, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2083 = distinct !{!2083, i1 true, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide"}
!2084 = distinct !{!2084, !2083, !"_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern15strip_prefix_ofCslLuZgPVt6hg_3ide: argument 0"}
!2085 = distinct !{!2085, i1 true, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide"}
!2086 = distinct !{!2086, !2085, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 1"}
!2087 = distinct !{!2087, !2085, !"_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCslLuZgPVt6hg_3ide: argument 0"}
!2088 = distinct !{!2088, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2089 = distinct !{!2089, !2088, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2090 = distinct !{!2090, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2091 = distinct !{!2091, !2090, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2092 = distinct !{!2092, i1 true, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide"}
!2093 = distinct !{!2093, !2092, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide: argument 1"}
!2094 = distinct !{!2094, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2095 = distinct !{!2095, !2094, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2096 = distinct !{!2096, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2097 = distinct !{!2097, !2096, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2098 = distinct !{!2098, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2099 = distinct !{!2099, !2098, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2100 = distinct !{!2100, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide"}
!2101 = distinct !{!2101, !2100, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!2102 = distinct !{!2102, !2100, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!2103 = distinct !{!2103, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide"}
!2104 = distinct !{!2104, !2103, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!2105 = distinct !{!2105, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!2106 = distinct !{!2106, !2105, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!2107 = distinct !{!2107, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2108 = distinct !{!2108, !2107, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2109 = distinct !{!2109, !2092, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE19from_decimal_stringCslLuZgPVt6hg_3ide: argument 0"}
!2110 = distinct !{!2110, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2111 = distinct !{!2111, !2110, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2112 = distinct !{!2112, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide"}
!2113 = distinct !{!2113, !2112, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E13with_capacityCslLuZgPVt6hg_3ide: argument 0"}
!2114 = distinct !{!2114, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range"}
!2115 = distinct !{!2115, !2114, !"_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range: argument 0"}
!2116 = distinct !{!2116, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2117 = distinct !{!2117, !2116, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2118 = distinct !{!2118, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2119 = distinct !{!2119, !2118, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2120 = distinct !{!2120, !2118, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2121 = distinct !{!2121, i1 true, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide"}
!2122 = distinct !{!2122, !2121, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 1"}
!2123 = distinct !{!2123, !2121, !"_RINvXss_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecAoj2_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratoroE9from_iterINtNtNtBX_5array4iter8IntoIteroKj1_EECslLuZgPVt6hg_3ide: argument 0"}
!2124 = distinct !{!2124, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2125 = distinct !{!2125, !2124, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2126 = distinct !{!2126, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2127 = distinct !{!2127, !2126, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2128 = distinct !{!2128, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2129 = distinct !{!2129, !2128, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2130 = distinct !{!2130, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2131 = distinct !{!2131, !2130, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2132 = distinct !{!2132, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2133 = distinct !{!2133, !2132, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2134 = distinct !{!2134, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2135 = distinct !{!2135, !2134, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2136 = distinct !{!2136, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2137 = distinct !{!2137, !2136, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2138 = distinct !{!2138, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2139 = distinct !{!2139, !2138, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2140 = distinct !{!2140, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2141 = distinct !{!2141, !2140, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2142 = distinct !{!2142, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2143 = distinct !{!2143, !2142, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2144 = distinct !{!2144, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2145 = distinct !{!2145, !2144, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2146 = distinct !{!2146, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2147 = distinct !{!2147, !2146, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2148 = distinct !{!2148, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide"}
!2149 = distinct !{!2149, !2148, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB1J_9IeeeFloatNtB1J_5HalfSE19from_decimal_strings_0ECslLuZgPVt6hg_3ide: argument 0"}
!2150 = distinct !{!2150, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide"}
!2151 = distinct !{!2151, !2150, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide: argument 0"}
!2152 = distinct !{!2152, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2153 = distinct !{!2153, !2152, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2154 = distinct !{!2154, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2155 = distinct !{!2155, !2154, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2156 = distinct !{!2156, i1 true, !"_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation"}
!2157 = distinct !{!2157, !2156, !"_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation: argument 0"}
!2158 = distinct !{!2158, i1 true, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide"}
!2159 = distinct !{!2159, !2158, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide: argument 0"}
!2160 = distinct !{!2160, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2161 = distinct !{!2161, !2160, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2162 = distinct !{!2162, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2163 = distinct !{!2163, !2162, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2164 = distinct !{!2164, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2165 = distinct !{!2165, !2164, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2166 = distinct !{!2166, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2167 = distinct !{!2167, !2166, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2168 = distinct !{!2168, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2169 = distinct !{!2169, !2168, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2170 = distinct !{!2170, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2171 = distinct !{!2171, !2170, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2172 = distinct !{!2172, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2173 = distinct !{!2173, !2172, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2174 = distinct !{!2174, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2175 = distinct !{!2175, !2174, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2176 = distinct !{!2176, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2177 = distinct !{!2177, !2176, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2178 = distinct !{!2178, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide"}
!2179 = distinct !{!2179, !2178, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E6tripleCslLuZgPVt6hg_3ide: argument 1"}
!2180 = distinct !{!2180, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide"}
!2181 = distinct !{!2181, !2180, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E4pushCslLuZgPVt6hg_3ide: argument 0"}
!2182 = distinct !{!2182, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide"}
!2183 = distinct !{!2183, !2182, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAoj2_E10triple_mutCslLuZgPVt6hg_3ide: argument 1"}
!2184 = distinct !{!2184, !33}
!2185 = distinct !{!2185, i1 true, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide"}
!2186 = distinct !{!2186, !2185, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide: argument 0"}
!2187 = distinct !{!2187, !2185, !"_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE23from_hexadecimal_stringCslLuZgPVt6hg_3ide: argument 1"}
!2188 = distinct !{!2188, i1 true, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!2189 = distinct !{!2189, !2188, !"_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!2190 = distinct !{!2190, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2191 = distinct !{!2191, !2190, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2192 = distinct !{!2192, !33}
!2193 = distinct !{!2193, i1 true, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2194 = distinct !{!2194, !2193, !"_RNvXs9_NtNtCshzWfHUSfYae_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2195 = distinct !{!2195, i1 true, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide"}
!2196 = distinct !{!2196, !2195, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 1"}
!2197 = distinct !{!2197, !2195, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECslLuZgPVt6hg_3ide: argument 0"}
!2198 = distinct !{!2198, i1 true, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide"}
!2199 = distinct !{!2199, !2198, !"_RNCNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB7_8PeekableNtNtNtBd_3str4iter5CharsE4peek0CslLuZgPVt6hg_3ide: argument 0"}
!2200 = distinct !{!2200, i1 true, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!2201 = distinct !{!2201, !2200, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!2202 = distinct !{!2202, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2203 = distinct !{!2203, !2202, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2204 = distinct !{!2204, i1 true, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide"}
!2205 = distinct !{!2205, !2204, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECslLuZgPVt6hg_3ide: argument 0"}
!2206 = distinct !{!2206, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide"}
!2207 = distinct !{!2207, !2206, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide: argument 0"}
!2208 = distinct !{!2208, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide"}
!2209 = distinct !{!2209, !2208, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultlNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCslLuZgPVt6hg_3ide: argument 0"}
end_hunk_2
