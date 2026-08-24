Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/B3DImporter?download=true
inline.NumInlined: 1740
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
  store ptr %i.fb, ptr %i.ad, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183

_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183:    ; preds = %._crit_edge455, %_ZSt8_DestroyIPP6aiNodeS1_EvT_S3_RSaIT0_E.exit.i.i182
  %i.fd = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fe = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not119 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not119, label %bb.cn, label %bb.cv

bb.ak:                                            ; preds = %.lr.ph454, %._crit_edge452
  %i.ff = phi ptr [ %i.ed, %.lr.ph454 ], [ %i.fm, %._crit_edge452 ] ; 2 uses
  %i.fg = phi ptr [ %i.ec, %.lr.ph454 ], [ %i.fn, %._crit_edge452 ]
  %.090453 = phi i64 [ 0, %.lr.ph454 ], [ %i.fo, %._crit_edge452 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.090453
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1120 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8
  %.not458 = icmp eq i32 %i.fk, 0
  br i1 %.not458, label %._crit_edge452, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1128
  br label %bb.al

._crit_edge452.loopexit:                          ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit
  %.pre532 = load ptr, ptr %i.ad, align 8
  %.pre533 = load ptr, ptr %i.ab, align 8
  br label %._crit_edge452

._crit_edge452:                                   ; preds = %._crit_edge452.loopexit, %bb.ak
  %i.fm = phi ptr [ %.pre533, %._crit_edge452.loopexit ], [ %i.ff, %bb.ak ] ; 3 uses
  %i.fn = phi ptr [ %.pre532, %._crit_edge452.loopexit ], [ %i.fg, %bb.ak ] ; 2 uses
  %i.fo = add nuw i64 %.090453, 1                 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = icmp ult i64 %i.fo, %i.fs
  br i1 %i.ft, label %bb.ak, label %._crit_edge455, !llvm.loop !15

bb.al:                                            ; preds = %.lr.ph451, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit
  %.089449 = phi i64 [ 0, %.lr.ph451 ], [ %i.vi, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit ] ; 2 uses
  %i.fu = load ptr, ptr %i.fl, align 8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.089449
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = zext i32 %i.fw to i64
  %i.fy = load ptr, ptr %i.v, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8            ; 10 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8
  %.fr = freeze i32 %i.gc                         ; 3 uses
  %i.gd = mul i32 %.fr, 3                         ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.gd, ptr %i.ge, align 4
  %i.gf = sext i32 %i.gd to i64                   ; 4 uses
  %i.gg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gf, i64 12) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 1
  %i.gi = extractvalue { i64, i1 } %i.gg, 0
  %i.gj = select i1 %i.gh, i64 -1, i64 %i.gi      ; 3 uses
  %i.gk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gj) #27
          to label %bb.am unwind label %bb.ap     ; 3 uses

bb.am:                                            ; preds = %bb.al
  %i.gl = icmp eq i32 %.fr, 0                     ; 3 uses
  br i1 %i.gl, label %.loopexit319, label %.loopexit319.loopexit

.loopexit319.loopexit:                            ; preds = %bb.am
  %i.gm = mul nsw i64 %i.gf, 12
  %i.gn = add nsw i64 %i.gm, -12                  ; 2 uses
  %i.go = urem i64 %i.gn, 12
  %i.gp = sub nuw nsw i64 %i.gn, %i.go
  %i.gq = add nsw i64 %i.gp, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gk, i8 0, i64 %i.gq, i1 false)
  br label %.loopexit319

.loopexit319:                                     ; preds = %.loopexit319.loopexit, %bb.am
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.gk, ptr %i.gr, align 8
  %i.gs = load i32, ptr %i.en, align 8
  %i.gt = and i32 %i.gs, 1
  %.not125 = icmp eq i32 %i.gt, 0
  br i1 %.not125, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.loopexit319
  %i.gu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gj) #27
          to label %bb.ao unwind label %bb.aq     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  br i1 %i.gl, label %.loopexit318, label %.loopexit318.loopexit

.loopexit318.loopexit:                            ; preds = %bb.ao
  %i.gv = mul nsw i64 %i.gf, 12
  %i.gw = add nsw i64 %i.gv, -12                  ; 2 uses
  %i.gx = urem i64 %i.gw, 12
  %i.gy = sub nuw nsw i64 %i.gw, %i.gx
  %i.gz = add nsw i64 %i.gy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gu, i8 0, i64 %i.gz, i1 false)
  br label %.loopexit318

.loopexit318:                                     ; preds = %.loopexit318.loopexit, %bb.ao
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.gu, ptr %i.ha, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %bb.al
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.as, %bb.an
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %.loopexit318, %.loopexit319
  %.083 = phi ptr [ %i.gu, %.loopexit318 ], [ null, %.loopexit319 ]
  %i.hd = load i32, ptr %i.eo, align 4
  %.not126 = icmp eq i32 %i.hd, 0
  br i1 %.not126, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.he = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gj) #27
          to label %bb.at unwind label %bb.aq     ; 3 uses

bb.at:                                            ; preds = %bb.as
  br i1 %i.gl, label %.loopexit317, label %.loopexit317.loopexit

.loopexit317.loopexit:                            ; preds = %bb.at
  %i.hf = mul nsw i64 %i.gf, 12
  %i.hg = add nsw i64 %i.hf, -12                  ; 2 uses
  %i.hh = urem i64 %i.hg, 12
  %i.hi = sub nuw nsw i64 %i.hg, %i.hh
  %i.hj = add nsw i64 %i.hi, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.he, i8 0, i64 %i.hj, i1 false)
  br label %.loopexit317

.loopexit317:                                     ; preds = %.loopexit317.loopexit, %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ga, i64 112
  store ptr %i.he, ptr %i.hk, align 8
  br label %bb.au

bb.au:                                            ; preds = %.loopexit317, %bb.ar
  %.082 = phi ptr [ %i.he, %.loopexit317 ], [ null, %bb.ar ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ga, i64 208
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ho = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 3 uses
  %i.ht = icmp ugt i64 %i.hs, 384307168202282325
  br i1 %i.ht, label %bb.av, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #26
          to label %.noexc185 unwind label %.loopexit.split-lp321

.noexc185:                                        ; preds = %bb.av
  unreachable

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.au
  %.not.i.i.i.i184 = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.hu = mul nuw nsw i64 %i.hs, 24               ; 3 uses
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #27
          to label %.noexc186 unwind label %.loopexit320 ; 4 uses

.noexc186:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.hv, i64 %i.hs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hv, i8 0, i64 %i.hu, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.hv, i64 %i.hu
  %i.hx = ptrtoint ptr %i.hw to i64
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit: ; preds = %.noexc186, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.0294.0 = phi ptr [ %i.hv, %.noexc186 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 15 uses
  %.sink.i = phi i64 [ %i.hx, %.noexc186 ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc186 ], [ null, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 5 uses
  %i.hy = icmp sgt i32 %.fr, 0
  br i1 %i.hy, label %.preheader, label %.preheader311

.preheader311:                                    ; preds = %bb.aw, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit
  %i.hz = ptrtoint ptr %.sroa.0294.0 to i64       ; 2 uses
  %.not459 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %.sroa.0294.0
  br i1 %.not459, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.thread, label %.lr.ph444.preheader

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.thread:    ; preds = %.preheader311
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ga, i64 216
  store i32 0, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ga, i64 224
  store ptr null, ptr %i.ib, align 8
  br label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i

.lr.ph444.preheader:                              ; preds = %.preheader311
  %i.ic = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.id = sub i64 %i.ic, %i.hz
  %i.ie = sdiv exact i64 %i.id, 24
  br label %.lr.ph444

.preheader:                                       ; preds = %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit, %bb.aw
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %bb.aw ], [ 0, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.081405 = phi ptr [ %i.ig, %bb.aw ], [ %i.hm, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.1404 = phi ptr [ %.3, %bb.aw ], [ %.082, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %.184403 = phi ptr [ %.386, %bb.aw ], [ %.083, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %.087402 = phi ptr [ %i.ip, %bb.aw ], [ %i.gk, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EEC2EmRKS3_.exit ]
  %i.if = getelementptr inbounds nuw i8, ptr %.081405, i64 8 ; 2 uses
  br label %bb.ax

.loopexit320:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp321:                            ; preds = %bb.av
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3
  %i.ig = getelementptr inbounds nuw i8, ptr %.081405, i64 16
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 3 ; 2 uses
  %i.ih = trunc nuw i64 %indvars.iv.next526 to i32
  %i.ii = icmp sgt i32 %i.gd, %i.ih
  br i1 %i.ii, label %.preheader, label %.preheader311, !llvm.loop !16

bb.ax:                                            ; preds = %.preheader, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 4 uses
  %.2400 = phi ptr [ %.1404, %.preheader ], [ %.3, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 3 uses
  %.285399 = phi ptr [ %.184403, %.preheader ], [ %.386, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 3 uses
  %.188398 = phi ptr [ %.087402, %.preheader ], [ %i.ip, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3 ] ; 2 uses
  %i.ij = load ptr, ptr %i.if, align 8
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = zext i32 %i.il to i64
  %i.in = load ptr, ptr %i.r, align 8
  %i.io = getelementptr inbounds nuw [56 x i8], ptr %i.in, i64 %i.im ; 11 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.188398, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.188398, ptr noundef nonnull align 4 dereferenceable(12) %i.io, i64 12, i1 false)
  %.not134 = icmp eq ptr %.285399, null
  br i1 %.not134, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.ir = getelementptr inbounds nuw i8, ptr %.285399, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.285399, ptr noundef nonnull align 4 dereferenceable(12) %i.iq, i64 12, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.386 = phi ptr [ %i.ir, %bb.ay ], [ null, %bb.ax ] ; 2 uses
  %.not135 = icmp eq ptr %.2400, null
  br i1 %.not135, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %.2400, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2400, ptr noundef nonnull align 4 dereferenceable(12) %i.is, i64 12, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.3 = phi ptr [ %i.it, %bb.ba ], [ null, %bb.az ] ; 2 uses
  %i.iu = add nuw nsw i64 %indvars.iv, %indvars.iv525
  %i.iv = load ptr, ptr %i.if, align 8
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = trunc nuw i64 %i.iu to i32              ; 9 uses
  store i32 %i.ix, ptr %i.iw, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iz = load float, ptr %i.iy, align 4          ; 3 uses
  %i.ja = fcmp une float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.bc, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit.3

bb.bc:                                            ; preds = %bb.bb
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 36
  %i.jc = load i8, ptr %i.jb, align 4
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0294.0, i64 %i.jd ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load ptr, ptr %i.jf, align 8            ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8
  %.not.i187 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i187, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ix, ptr %i.jg, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store float %i.iz, ptr %i.jj, align 4
  %i.jk = load ptr, ptr %i.jf, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store ptr %i.jl, ptr %i.jf, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJiRfEEERS0_DpOT_.exit

bb.be:                                            ; preds = %bb.bc
  %i.jm = load ptr, ptr %i.je, align 8            ; 7 uses
  %i.jn = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64               ; 3 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 4 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775800
  br i1 %i.jq, label %bb.bf, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.br, %bb.bn, %bb.bj, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc189 unwind label %.loopexit.split-lp

.noexc189:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.be
  %i.jr = ashr exact i64 %i.jp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jr, i64 1)
  %i.js = add nsw i64 %.sroa.speculated.i.i.i, %i.jr ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jr
  %i.ju = call i64 @llvm.umin.i64(i64 %i.js, i64 1152921504606846975)
  %i.jv = select i1 %i.jt, i64 1152921504606846975, i64 %i.ju ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.jw = shl nuw nsw i64 %i.jv, 3
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #27
          to label %.noexc190 unwind label %.loopexit ; 8 uses

.noexc190:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jp ; 2 uses
  store i32 %i.ix, ptr %i.jy, align 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store float %i.iz, ptr %i.jz, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.jm, %i.jg
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc190
  %i.ka = ptrtoaddr ptr %i.jx to i64
  %i.kb = add i64 %i.jn, -8
  %i.kc = sub i64 %i.kb, %i.jo                    ; 2 uses
  %i.kd = lshr i64 %i.kc, 3
  %i.ke = add nuw nsw i64 %i.kd, 1                ; 2 uses
  %min.iters.check815 = icmp ult i64 %i.kc, 24
  %i.kf = sub i64 %i.jo, %i.ka
  %diff.check813 = icmp ugt i64 %i.kf, -32
  %or.cond = or i1 %min.iters.check815, %diff.check813
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader835, label %vector.ph816

vector.ph816:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec817 = and i64 %i.ke, 4611686018427387900  ; 3 uses
  %i.kg = shl i64 %n.vec817, 3                    ; 2 uses
  %i.kh = getelementptr i8, ptr %i.jx, i64 %i.kg  ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jm, i64 %i.kg
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next824, %vector.body818 ] ; 2 uses
  %i.kj = shl i64 %index819, 3                    ; 2 uses
  %next.gep820 = getelementptr i8, ptr %i.jx, i64 %i.kj ; 2 uses
  %next.gep821 = getelementptr i8, ptr %i.jm, i64 %i.kj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.kk = getelementptr i8, ptr %next.gep821, i64 16
  %wide.load822 = load <2 x i64>, ptr %next.gep821, align 4, !alias.scope !20, !noalias !17
  %wide.load823 = load <2 x i64>, ptr %i.kk, align 4, !alias.scope !20, !noalias !17
  %i.kl = getelementptr i8, ptr %next.gep820, i64 16
  store <2 x i64> %wide.load822, ptr %next.gep820, align 4, !alias.scope !17, !noalias !20
  store <2 x i64> %wide.load823, ptr %i.kl, align 4, !alias.scope !17, !noalias !20
  %index.next824 = add nuw i64 %index819, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next824, %n.vec817
  br i1 %i.km, label %middle.block825, label %vector.body818, !llvm.loop !22

middle.block825:                                  ; preds = %vector.body818
  %cmp.n826 = icmp eq i64 %i.ke, %n.vec817
  br i1 %cmp.n826, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader835

.lr.ph.i.i.i.i.i.preheader835:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block825
  %.012.i.i.i.i.i.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kh, %middle.block825 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ki, %middle.block825 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader835, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader835 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader835 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.kn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !20, !noalias !17
  store i64 %i.kn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !17, !noalias !20
  %i.ko = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ko, %i.jg
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block825, %.noexc190
  %.0.lcssa.i.i.i.i.i188 = phi ptr [ %i.jx, %.noexc190 ], [ %i.kh, %middle.block825 ], [ %i.kp, %.lr.ph.i.i.i.i.i ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i188, i64 8
  %.not.i34.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jp) #25
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJiRfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.jx, ptr %i.je, align 8
  store ptr %i.kq, ptr %i.jf, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11B3DImporter8ReadBB3DEP7aiScene:bb.a
_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIP6aiBoneSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %i.rd
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bv
  %.sroa.0280.4 = phi ptr [ %i.rf, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0280.0440, %bb.bv ] ; 3 uses
  %.pn309 = phi ptr [ %i.rg, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0441, %bb.bv ]
  %.sroa.16.4 = phi ptr [ %i.ri, %_ZNSt6vectorIP6aiBoneSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.0442, %bb.bv ] ; 3 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn309, i64 8
  %i.rj = load ptr, ptr %i.ab, align 8
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %.077443
  %i.rl = load ptr, ptr %i.rk, align 8            ; 5 uses
  %i.rm = icmp eq ptr %i.qn, %i.rl
  br i1 %i.rm, label %_ZN8aiStringaSERKS_.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit
  %i.rn = load i32, ptr %i.rl, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.rn, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.qn, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rq = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ro, ptr nonnull align 4 %i.rp, i64 %i.rq, i1 false)
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq
  store i8 0, ptr %i.rr, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EE9push_backERKS1_.exit, %bb.ca
  %i.rs = load ptr, ptr %i.qk, align 8            ; 2 uses
  %i.rt = load ptr, ptr %i.qj, align 8            ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64               ; 2 uses
  %i.rv = ptrtoint ptr %i.rt to i64               ; 2 uses
  %i.rw = sub i64 %i.ru, %i.rv                    ; 3 uses
  %i.rx = lshr exact i64 %i.rw, 3
  %i.ry = trunc i64 %i.rx to i32
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qn, i64 1028
  store i32 %i.ry, ptr %i.rz, align 4
  %i.sa = icmp eq ptr %i.rt, %i.rs
  br i1 %i.sa, label %_ZN6Assimp11B3DImporter8to_arrayI14aiVertexWeightEEPT_RKSt6vectorIS3_SaIS3_EE.exit, label %.lr.ph.preheader.i197

.lr.ph.preheader.i197:                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.sb = call i64 @llvm.smax.i64(i64 %i.rw, i64 -1)
  %i.sc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sb) #27
          to label %.noexc199 unwind label %bb.cc ; 3 uses

.noexc199:                                        ; preds = %.lr.ph.preheader.i197
  %i.sd = add i64 %i.ru, -8
  %i.se = sub i64 %i.sd, %i.rv
  %i.sf = and i64 %i.se, -8
  %i.sg = add i64 %i.sf, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sc, i8 0, i64 %i.sg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sc, ptr align 4 %i.rt, i64 %i.rw, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI14aiVertexWeightEEPT_RKSt6vectorIS3_SaIS3_EE.exit

_ZN6Assimp11B3DImporter8to_arrayI14aiVertexWeightEEPT_RKSt6vectorIS3_SaIS3_EE.exit: ; preds = %.noexc199, %_ZN8aiStringaSERKS_.exit
  %.010.i198 = phi ptr [ null, %_ZN8aiStringaSERKS_.exit ], [ %i.sc, %.noexc199 ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qn, i64 1048
  store ptr %.010.i198, ptr %i.sh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.si = getelementptr inbounds nuw i8, ptr %i.rl, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(64) %i.si, i64 64, i1 false)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rl, i64 1096
  %i.sk = load ptr, ptr %i.sj, align 8            ; 2 uses
  %.not128407 = icmp eq ptr %i.sk, null
  br i1 %.not128407, label %bb.cd, label %.lr.ph408

.lr.ph408:                                        ; preds = %_ZN6Assimp11B3DImporter8to_arrayI14aiVertexWeightEEPT_RKSt6vectorIS3_SaIS3_EE.exit
  %i.sl = load <4 x float>, ptr %10, align 16
  %i.sm = load <4 x float>, ptr %i.ep, align 16
  %i.sn = load <4 x float>, ptr %i.eq, align 16
  %i.so = load <4 x float>, ptr %i.er, align 16
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph408, %bb.cb
  %i.sp = phi ptr [ %i.sk, %.lr.ph408 ], [ %i.us, %bb.cb ] ; 17 uses
  %i.sq = phi <4 x float> [ %i.so, %.lr.ph408 ], [ %i.uq, %bb.cb ] ; 4 uses
  %i.sr = phi <4 x float> [ %i.sn, %.lr.ph408 ], [ %i.ue, %bb.cb ] ; 4 uses
  %i.ss = phi <4 x float> [ %i.sl, %.lr.ph408 ], [ %i.ts, %bb.cb ] ; 4 uses
  %i.st = phi <4 x float> [ %i.sm, %.lr.ph408 ], [ %i.tg, %bb.cb ] ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 1028
  %.sroa.0.0.copyload244 = load float, ptr %i.su, align 4
  %.sroa.7.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1032
  %.sroa.7.0.copyload246 = load float, ptr %.sroa.7.0..sroa_idx245, align 4
  %.sroa.9.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1036
  %.sroa.9.0.copyload248 = load float, ptr %.sroa.9.0..sroa_idx247, align 4
  %.sroa.11.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1040
  %.sroa.11.0.copyload250 = load float, ptr %.sroa.11.0..sroa_idx249, align 4
  %.sroa.13.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1044
  %.sroa.13.0.copyload252 = load float, ptr %.sroa.13.0..sroa_idx251, align 4
  %.sroa.15.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1048
  %.sroa.15.0.copyload254 = load float, ptr %.sroa.15.0..sroa_idx253, align 4
  %.sroa.17.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1052
  %.sroa.17.0.copyload256 = load float, ptr %.sroa.17.0..sroa_idx255, align 4
  %.sroa.19.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1056
  %.sroa.19.0.copyload258 = load float, ptr %.sroa.19.0..sroa_idx257, align 4
  %.sroa.21.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1060
  %.sroa.21.0.copyload260 = load float, ptr %.sroa.21.0..sroa_idx259, align 4
  %.sroa.23.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1064
  %.sroa.23.0.copyload262 = load float, ptr %.sroa.23.0..sroa_idx261, align 4
  %.sroa.25.0..sroa_idx263 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1068
  %.sroa.25.0.copyload264 = load float, ptr %.sroa.25.0..sroa_idx263, align 4
  %.sroa.27.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1072
  %.sroa.27.0.copyload266 = load float, ptr %.sroa.27.0..sroa_idx265, align 4
  %.sroa.29.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1076
  %.sroa.29.0.copyload268 = load float, ptr %.sroa.29.0..sroa_idx267, align 4
  %.sroa.31.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1080
  %.sroa.31.0.copyload270 = load float, ptr %.sroa.31.0..sroa_idx269, align 4
  %.sroa.33.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1084
  %.sroa.33.0.copyload272 = load float, ptr %.sroa.33.0..sroa_idx271, align 4
  %.sroa.35.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.sp, i64 1088
  %.sroa.35.0.copyload274 = load float, ptr %.sroa.35.0..sroa_idx273, align 4
  %i.sv = insertelement <4 x float> poison, float %.sroa.15.0.copyload254, i64 0
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sx = fmul <4 x float> %i.sw, %i.st
  %i.sy = insertelement <4 x float> poison, float %.sroa.13.0.copyload252, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ss, <4 x float> %i.sz, <4 x float> %i.sx)
  %i.tb = insertelement <4 x float> poison, float %.sroa.17.0.copyload256, i64 0
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sr, <4 x float> %i.tc, <4 x float> %i.ta)
  %i.te = insertelement <4 x float> poison, float %.sroa.19.0.copyload258, i64 0
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.tf, <4 x float> %i.td) ; 2 uses
  %i.th = insertelement <4 x float> poison, float %.sroa.7.0.copyload246, i64 0
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tj = fmul <4 x float> %i.ti, %i.st
  %i.tk = insertelement <4 x float> poison, float %.sroa.0.0.copyload244, i64 0
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ss, <4 x float> %i.tl, <4 x float> %i.tj)
  %i.tn = insertelement <4 x float> poison, float %.sroa.9.0.copyload248, i64 0
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sr, <4 x float> %i.to, <4 x float> %i.tm)
  %i.tq = insertelement <4 x float> poison, float %.sroa.11.0.copyload250, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ts = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.tr, <4 x float> %i.tp) ; 2 uses
  %i.tt = insertelement <4 x float> poison, float %.sroa.23.0.copyload262, i64 0
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tv = fmul <4 x float> %i.tu, %i.st
  %i.tw = insertelement <4 x float> poison, float %.sroa.21.0.copyload260, i64 0
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ty = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ss, <4 x float> %i.tx, <4 x float> %i.tv)
  %i.tz = insertelement <4 x float> poison, float %.sroa.25.0.copyload264, i64 0
  %i.ua = shufflevector <4 x float> %i.tz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ub = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sr, <4 x float> %i.ua, <4 x float> %i.ty)
  %i.uc = insertelement <4 x float> poison, float %.sroa.27.0.copyload266, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.ud, <4 x float> %i.ub) ; 2 uses
  %i.uf = insertelement <4 x float> poison, float %.sroa.31.0.copyload270, i64 0
  %i.ug = shufflevector <4 x float> %i.uf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uh = fmul <4 x float> %i.ug, %i.st
  %i.ui = insertelement <4 x float> poison, float %.sroa.29.0.copyload268, i64 0
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ss, <4 x float> %i.uj, <4 x float> %i.uh)
  %i.ul = insertelement <4 x float> poison, float %.sroa.33.0.copyload272, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer
  %i.un = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sr, <4 x float> %i.um, <4 x float> %i.uk)
  %i.uo = insertelement <4 x float> poison, float %.sroa.35.0.copyload274, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.up, <4 x float> %i.un) ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sp, i64 1096
  %i.us = load ptr, ptr %i.ur, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.us, null
  br i1 %.not128, label %._crit_edge, label %bb.cb, !llvm.loop !45

.loopexit312:                                     ; preds = %bb.bt, %_ZNKSt6vectorIP6aiBoneSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp313:                            ; preds = %bb.bx
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cc:                                            ; preds = %.lr.ph.preheader.i197
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

._crit_edge:                                      ; preds = %bb.cb
  store <4 x float> %i.tg, ptr %i.ep, align 16
  store <4 x float> %i.ue, ptr %i.eq, align 16
  store <4 x float> %i.uq, ptr %i.er, align 16
  store <4 x float> %i.ts, ptr %10, align 16
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge, %_ZN6Assimp11B3DImporter8to_arrayI14aiVertexWeightEEPT_RKSt6vectorIS3_SaIS3_EE.exit
  %i.uu = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %10)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qo, ptr noundef nonnull align 4 dereferenceable(64) %i.uu, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph444, %bb.ce
  %.sroa.0280.1 = phi ptr [ %.sroa.0280.0440, %.lr.ph444 ], [ %.sroa.0280.4, %bb.ce ] ; 7 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0441, %.lr.ph444 ], [ %.sroa.10.2, %bb.ce ] ; 3 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.0442, %.lr.ph444 ], [ %.sroa.16.4, %bb.ce ] ; 3 uses
  %i.uv = add nuw i64 %.077443, 1                 ; 2 uses
  %exitcond528.not = icmp eq i64 %i.uv, %i.ie
  br i1 %exitcond528.not, label %._crit_edge445, label %.lr.ph444, !llvm.loop !46

bb.cg:                                            ; preds = %bb.cd
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ck

_ZN6Assimp11B3DImporter8to_arrayIP6aiBoneEEPT_RKSt6vectorIS4_SaIS4_EE.exit: ; preds = %.noexc191, %._crit_edge445
  %.010.i = phi ptr [ null, %._crit_edge445 ], [ %i.qi, %.noexc191 ]
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ga, i64 224
  store ptr %.010.i, ptr %i.ux, align 8
  %.not.i.i.i201 = icmp eq ptr %.sroa.0280.1, null
  br i1 %.not.i.i.i201, label %.lr.ph.i.i.i.preheader, label %bb.ch

bb.ch:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiBoneEEPT_RKSt6vectorIS4_SaIS4_EE.exit
  %i.uy = ptrtoint ptr %.sroa.16.1 to i64
  %i.uz = sub i64 %i.uy, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.1, i64 noundef %i.uz) #25
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN6Assimp11B3DImporter8to_arrayIP6aiBoneEEPT_RKSt6vectorIS4_SaIS4_EE.exit, %bb.ch
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vg, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i ], [ %.sroa.0294.0, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.va = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i.i.i
  %i.vb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #25
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.ci, %.lr.ph.i.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.vg, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i202, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.thread
  %.not.i.i1.i = icmp eq ptr %.sroa.0294.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.vh = sub i64 %.sink.i, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0294.0, i64 noundef %i.vh) #25
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i.thread
  %i.vi = add nuw nsw i64 %.089449, 1             ; 2 uses
  %i.vj = load i32, ptr %i.fj, align 8
  %i.vk = zext i32 %i.vj to i64
  %i.vl = icmp samesign ult i64 %i.vi, %i.vk
  br i1 %i.vl, label %bb.al, label %._crit_edge452.loopexit, !llvm.loop !48

bb.cj:                                            ; preds = %.lr.ph.preheader.i
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit312, %.loopexit.split-lp313, %bb.cg, %bb.cc, %bb.cj
  %.sroa.0280.3 = phi ptr [ %.sroa.0280.1, %bb.cj ], [ %.sroa.0280.4, %bb.cc ], [ %.sroa.0280.4, %bb.cg ], [ %.sroa.0280.0440, %.loopexit312 ], [ %.sroa.0280.0440, %.loopexit.split-lp313 ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1, %bb.cj ], [ %.sroa.16.4, %bb.cc ], [ %.sroa.16.4, %bb.cg ], [ %.sroa.16.0442, %.loopexit312 ], [ %.sroa.16.0442, %.loopexit.split-lp313 ]
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.vm, %bb.cj ], [ %i.ut, %bb.cc ], [ %i.uw, %bb.cg ], [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ] ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.sroa.0280.3, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.vn = ptrtoint ptr %.sroa.16.3 to i64
  %i.vo = ptrtoint ptr %.sroa.0280.3 to i64
  %i.vp = sub i64 %i.vn, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0280.3, i64 noundef %i.vp) #25
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204:        ; preds = %.loopexit, %.loopexit.split-lp, %bb.cl, %bb.ck
  %.pn136 = phi { ptr, i32 } [ %.pn129.pn.pn.pn, %bb.cl ], [ %.pn129.pn.pn.pn, %bb.ck ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not4.i.i.i205 = icmp eq ptr %.sroa.0294.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i205, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213.thread, label %.lr.ph.i.i.i206

.lr.ph.i.i.i206:                                  ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209
  %.05.i.i.i207 = phi ptr [ %i.vw, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209 ], [ %.sroa.0294.0, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204 ] ; 3 uses
  %i.vq = load ptr, ptr %.05.i.i.i207, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i208 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i.i.i.i.i208, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i206
  %i.vr = getelementptr inbounds nuw i8, ptr %.05.i.i.i207, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vq to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.vv) #25
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209: ; preds = %bb.cm, %.lr.ph.i.i.i206
  %i.vw = getelementptr inbounds nuw i8, ptr %.05.i.i.i207, i64 24 ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.vw, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i210, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213, label %.lr.ph.i.i.i206, !llvm.loop !47

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i209
  %.not.i.i1.i214 = icmp eq ptr %.sroa.0294.0, null
  br i1 %.not.i.i1.i214, label %.body, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213.thread

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213.thread: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit204, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i213
  %i.vx = ptrtoint ptr %.sroa.0294.0 to i64
  %i.vy = sub i64 %.sink.i, %i.vx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0294.0, i64 noundef %i.vy) #25
  br label %.body

bb.cn:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.vz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.co unwind label %bb.cr     ; 4 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.vz)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  store ptr %i.vz, ptr %11, align 8
  %i.wa = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.wc = load ptr, ptr %i.wb, align 8
  %.not.i216 = icmp eq ptr %i.wa, %i.wc
  br i1 %.not.i216, label %bb.cq, label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread: ; preds = %bb.cp
  %i.wd = ptrtoint ptr %i.vz to i64
  store i64 %i.wd, ptr %i.wa, align 8
  %i.we = load ptr, ptr %i.n, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store ptr %i.wf, ptr %i.n, align 8
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.wa, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit unwind label %bb.ct

_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.cq
  %.pr = load ptr, ptr %11, align 8               ; 3 uses
  %.not.i218 = icmp eq ptr %.pr, null
  br i1 %.not.i218, label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit.i

_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  call void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pr) #24
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 16) #25
  br label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrI10aiMaterialSt14default_deleteIS1_EESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.pre534 = load ptr, ptr %i.n, align 8
  %.pre535 = load ptr, ptr %i.l, align 8
  br label %bb.cv

bb.cr:                                            ; preds = %bb.cn
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cs:                                            ; preds = %bb.co
  %i.wh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.vz, i64 noundef 16) #25
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %.pn120 = phi { ptr, i32 } [ %i.wi, %bb.ct ], [ %i.wh, %bb.cs ], [ %i.wg, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.body

bb.cv:                                            ; preds = %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit, %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183
  %i.wj = phi ptr [ %.pre535, %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit ], [ %i.fe, %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183 ]
  %i.wk = phi ptr [ %.pre534, %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit ], [ %i.fd, %_ZNSt6vectorIP6aiNodeSaIS1_EE5clearEv.exit183 ]
  %i.wl = ptrtoint ptr %i.wk to i64
  %i.wm = ptrtoint ptr %i.wj to i64
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = lshr exact i64 %i.wn, 3
  %i.wp = trunc i64 %i.wo to i32
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.wp, ptr %i.wq, align 8
  %i.wr = load ptr, ptr %i.l, align 8             ; 3 uses
  %i.ws = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %_ZN6Assimp15unique_to_arrayI10aiMaterialEEPPT_RSt6vectorISt10unique_ptrIS2_St14default_deleteIS2_EESaIS9_EE.exit, label %.lr.ph.preheader.i219

.lr.ph.preheader.i219:                            ; preds = %bb.cv
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv
end_hunk_1
begin_hunk_2_@_ZN6Assimp11B3DImporter8ReadKEYSEP10aiNodeAnim:bb.a
bb.u:                                             ; preds = %bb.s
  %i.bs = ptrtoint ptr %.sroa.16120.0287 to i64
  %i.bt = ptrtoint ptr %.sroa.0111.0285 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.v, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc51 unwind label %.loopexit.split-lp163

.noexc51:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39: ; preds = %bb.u
  %i.bw = sdiv exact i64 %i.bu, 24                ; 3 uses
  %.sroa.speculated.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i40, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.umin.i64(i64 %i.bx, i64 384307168202282325)
  %i.ca = select i1 %i.by, i64 384307168202282325, i64 %i.bz ; 3 uses
  %.not.i.i.i41 = icmp ne i64 %i.ca, 0
  tail call void @llvm.assume(i1 %.not.i.i.i41)
  %i.cb = mul nuw nsw i64 %i.ca, 24
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #27
          to label %.noexc52 unwind label %.loopexit162 ; 5 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu ; 4 uses
  %i.ce = sitofp i32 %.0.copyload.i28 to double
  store double %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store <2 x float> %.fca.0.extract, ptr %i.cf, align 8
  %.sroa.688.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store float %.fca.1.extract, ptr %.sroa.688.0..sroa_idx89, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 1, ptr %i.cg, align 4
  %.not10.i.i.i.i.i42 = icmp eq ptr %.sroa.0111.0285, %.sroa.16120.0287
  br i1 %.not10.i.i.i.i.i42, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.noexc52, %.lr.ph.i.i.i.i.i43
  %.012.i.i.i.i.i44 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i43 ], [ %i.cc, %.noexc52 ] ; 2 uses
  %.0911.i.i.i.i.i45 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i43 ], [ %.sroa.0111.0285, %.noexc52 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i44, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i45, i64 24, i1 false), !alias.scope !101
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i45, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i44, i64 24 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.ch, %.sroa.16120.0287
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47, label %.lr.ph.i.i.i.i.i43, !llvm.loop !100

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47: ; preds = %.lr.ph.i.i.i.i.i43, %.noexc52
  %.0.lcssa.i.i.i.i.i48 = phi ptr [ %i.cc, %.noexc52 ], [ %i.ci, %.lr.ph.i.i.i.i.i43 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i48, i64 24
  %.not.i34.i.i49 = icmp eq ptr %.sroa.0111.0285, null
  br i1 %.not.i34.i.i49, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0285, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50: ; preds = %bb.w, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i47
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ca
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53

.loopexit162:                                     ; preds = %bb.r, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i39
  %lpad.loopexit164 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp163:                            ; preds = %bb.v
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53: ; preds = %bb.t, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit
  %.sroa.0111.2 = phi ptr [ %.sroa.0111.0285, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.cc, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %.sroa.0111.0285, %bb.t ] ; 7 uses
  %.sroa.10116.1 = phi ptr [ %.sroa.10116.0286, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.cj, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %i.br, %bb.t ] ; 4 uses
  %.sroa.16120.2 = phi ptr [ %.sroa.16120.0287, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit ], [ %i.ck, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRi10aiVector3tIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i50 ], [ %.sroa.16120.0287, %bb.t ] ; 7 uses
  br i1 %.not25, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53
  %i.cl = invoke { <2 x float>, <2 x float> } @_ZN6Assimp11B3DImporter8ReadQuatEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.y unwind label %.loopexit167 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cm = extractvalue { <2 x float>, <2 x float> } %i.cl, 0 ; 2 uses
  %i.cn = extractvalue { <2 x float>, <2 x float> } %i.cl, 1 ; 2 uses
  %.not.i54 = icmp eq ptr %.sroa.10.0289, %.sroa.16.0290
  br i1 %.not.i54, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = sitofp i32 %.0.copyload.i28 to double
  store double %i.co, ptr %.sroa.10.0289, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.10.0289, i64 8
  store <2 x float> %i.cm, ptr %i.cp, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0289, i64 16
  store <2 x float> %i.cn, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.10.0289, i64 24
  store i32 1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.10.0289, i64 32
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cs = ptrtoint ptr %.sroa.16.0290 to i64
  %i.ct = ptrtoint ptr %.sroa.0101.0288 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775776
  br i1 %i.cv, label %bb.ab, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
          to label %.noexc64 unwind label %.loopexit.split-lp168

.noexc64:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.cw = ashr exact i64 %i.cu, 5                 ; 3 uses
  %.sroa.speculated.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i55, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 288230376151711743)
  %i.da = select i1 %i.cy, i64 288230376151711743, i64 %i.cz ; 3 uses
  %.not.i.i.i56 = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i56)
  %i.db = shl nuw nsw i64 %i.da, 5
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #27
          to label %.noexc65 unwind label %.loopexit167 ; 5 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu ; 4 uses
  %i.de = sitofp i32 %.0.copyload.i28 to double
  store double %i.de, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store <2 x float> %i.cm, ptr %i.df, align 8
  %.sroa.6.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x float> %i.cn, ptr %.sroa.6.0..sroa_idx84, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i32 1, ptr %i.dg, align 8
  %.not10.i.i.i.i.i57 = icmp eq ptr %.sroa.0101.0288, %.sroa.16.0290
  br i1 %.not10.i.i.i.i.i57, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.noexc65, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i58 ], [ %i.dc, %.noexc65 ] ; 2 uses
  %.0911.i.i.i.i.i60 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i58 ], [ %.sroa.0101.0288, %.noexc65 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i60, i64 32, i1 false), !alias.scope !105
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i60, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 32 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.dh, %.sroa.16.0290
  br i1 %.not.i.i.i.i.i61, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i58, !llvm.loop !109

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i58, %.noexc65
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dc, %.noexc65 ], [ %i.di, %.lr.ph.i.i.i.i.i58 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i62, i64 32
  %.not.i34.i.i63 = icmp eq ptr %.sroa.0101.0288, null
  br i1 %.not.i34.i.i63, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.0288, i64 noundef %i.cu) #25
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.da
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit

.loopexit167:                                     ; preds = %bb.x, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp168:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit: ; preds = %bb.z, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53
  %.sroa.0101.2 = phi ptr [ %.sroa.0101.0288, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.dc, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0101.0288, %bb.z ] ; 5 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0289, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.dj, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.cr, %bb.z ] ; 4 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.0290, %_ZNSt6vectorI11aiVectorKeySaIS0_EE12emplace_backIJRi10aiVector3tIfEEEERS0_DpOT_.exit53 ], [ %i.dk, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRi13aiQuaterniontIfEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.16.0290, %bb.z ] ; 5 uses
  %i.dl = load ptr, ptr %i.s, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = load i64, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq i64 %i.dn, %i.do
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !110

._crit_edge:                                      ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJRi13aiQuaterniontIfEEEERS0_DpOT_.exit
  %.not20 = icmp eq i32 %.pre, 0
  br i1 %.not20, label %bb.ag, label %bb.ad

._crit_edge.thread:                               ; preds = %_ZN6Assimp11B3DImporter7ReadIntEv.exit
  br i1 %.not20380, label %.thread425, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store i32 0, ptr %i.dp, align 4
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

bb.ad:                                            ; preds = %._crit_edge
  %i.dq = ptrtoint ptr %.sroa.10128.1 to i64
  %i.dr = ptrtoint ptr %.sroa.0123.2 to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = sdiv exact i64 %i.ds, 24                ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 1028
  store i32 %i.du, ptr %i.dv, align 4
  %i.dw = icmp eq ptr %.sroa.0123.2, %.sroa.10128.1
  br i1 %i.dw, label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dt, i64 24) ; 2 uses
  %i.dy = extractvalue { i64, i1 } %i.dx, 1
  %i.dz = extractvalue { i64, i1 } %i.dx, 0
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #27
          to label %.noexc66 unwind label %bb.p   ; 4 uses

.noexc66:                                         ; preds = %bb.ae
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.ds
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.noexc66
  %i.ed = phi ptr [ %i.eb, %.noexc66 ], [ %i.ef, %bb.af ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ec
  br i1 %i.eg, label %.lr.ph.preheader.i, label %bb.af

.lr.ph.preheader.i:                               ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %.sroa.0123.2, i64 %i.ds, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit: ; preds = %.thread, %.lr.ph.preheader.i, %bb.ad
  %.sroa.0123.0.lcssa381424 = phi ptr [ %.sroa.0123.2, %bb.ad ], [ %.sroa.0123.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.16132.0.lcssa386423 = phi ptr [ %.sroa.16132.2, %bb.ad ], [ %.sroa.16132.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.0111.0.lcssa390422 = phi ptr [ %.sroa.0111.2, %bb.ad ], [ %.sroa.0111.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.10116.0.lcssa393421 = phi ptr [ %.sroa.10116.1, %bb.ad ], [ %.sroa.10116.1, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.16120.0.lcssa395420 = phi ptr [ %.sroa.16120.2, %bb.ad ], [ %.sroa.16120.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.0101.0.lcssa399419 = phi ptr [ %.sroa.0101.2, %bb.ad ], [ %.sroa.0101.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.10.0.lcssa402418 = phi ptr [ %.sroa.10.1, %bb.ad ], [ %.sroa.10.1, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.sroa.16.0.lcssa404417 = phi ptr [ %.sroa.16.2, %bb.ad ], [ %.sroa.16.2, %.lr.ph.preheader.i ], [ null, %.thread ]
  %.010.i = phi ptr [ null, %bb.ad ], [ %i.eb, %.lr.ph.preheader.i ], [ null, %.thread ]
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store ptr %.010.i, ptr %i.eh, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, %._crit_edge
  %.sroa.16.0.lcssa405 = phi ptr [ %.sroa.16.2, %._crit_edge ], [ %.sroa.16.0.lcssa404417, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.10.0.lcssa403 = phi ptr [ %.sroa.10.1, %._crit_edge ], [ %.sroa.10.0.lcssa402418, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 3 uses
  %.sroa.0101.0.lcssa400 = phi ptr [ %.sroa.0101.2, %._crit_edge ], [ %.sroa.0101.0.lcssa399419, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.16120.0.lcssa396 = phi ptr [ %.sroa.16120.2, %._crit_edge ], [ %.sroa.16120.0.lcssa395420, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.10116.0.lcssa394 = phi ptr [ %.sroa.10116.1, %._crit_edge ], [ %.sroa.10116.0.lcssa393421, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 2 uses
  %.sroa.0111.0.lcssa391 = phi ptr [ %.sroa.0111.2, %._crit_edge ], [ %.sroa.0111.0.lcssa390422, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 7 uses
  %.sroa.16132.0.lcssa387 = phi ptr [ %.sroa.16132.2, %._crit_edge ], [ %.sroa.16132.0.lcssa386423, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %.sroa.0123.0.lcssa382 = phi ptr [ %.sroa.0123.2, %._crit_edge ], [ %.sroa.0123.0.lcssa381424, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ] ; 4 uses
  %i.ei = and i32 %.0.copyload.i, 2
  %.not21 = icmp eq i32 %i.ei, 0
  br i1 %.not21, label %bb.ak, label %bb.ah

.thread425:                                       ; preds = %._crit_edge.thread
  %i.ej = and i32 %.0.copyload.i, 2
  %.not21434 = icmp eq i32 %i.ej, 0
  br i1 %.not21434, label %.thread461, label %.thread445

.thread445:                                       ; preds = %.thread425
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i32 0, ptr %i.ek, align 8
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70

bb.ah:                                            ; preds = %bb.ag
  %i.el = ptrtoint ptr %.sroa.10116.0.lcssa394 to i64
  %i.em = ptrtoint ptr %.sroa.0111.0.lcssa391 to i64
  %i.en = sub i64 %i.el, %i.em                    ; 3 uses
  %i.eo = sdiv exact i64 %i.en, 24                ; 2 uses
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store i32 %i.ep, ptr %i.eq, align 8
  %i.er = icmp eq ptr %.sroa.0111.0.lcssa391, %.sroa.10116.0.lcssa394
  br i1 %i.er, label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.eo, i64 24) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  %i.ev = select i1 %i.et, i64 -1, i64 %i.eu
  %i.ew = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ev) #27
          to label %.noexc69 unwind label %bb.p   ; 4 uses

.noexc69:                                         ; preds = %bb.ai
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.en
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.noexc69
  %i.ey = phi ptr [ %i.ew, %.noexc69 ], [ %i.fa, %bb.aj ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ex
  br i1 %i.fb, label %.lr.ph.preheader.i67, label %bb.aj

.lr.ph.preheader.i67:                             ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ew, ptr align 8 %.sroa.0111.0.lcssa391, i64 %i.en, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70

_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70: ; preds = %.thread445, %.lr.ph.preheader.i67, %bb.ah
  %.sroa.16.0.lcssa405435460 = phi ptr [ %.sroa.16.0.lcssa405, %bb.ah ], [ %.sroa.16.0.lcssa405, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.10.0.lcssa403436459 = phi ptr [ %.sroa.10.0.lcssa403, %bb.ah ], [ %.sroa.10.0.lcssa403, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.0101.0.lcssa400438458 = phi ptr [ %.sroa.0101.0.lcssa400, %bb.ah ], [ %.sroa.0101.0.lcssa400, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.16120.0.lcssa396439457 = phi ptr [ %.sroa.16120.0.lcssa396, %bb.ah ], [ %.sroa.16120.0.lcssa396, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.0111.0.lcssa391441456 = phi ptr [ %.sroa.0111.0.lcssa391, %bb.ah ], [ %.sroa.0111.0.lcssa391, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.16132.0.lcssa387443455 = phi ptr [ %.sroa.16132.0.lcssa387, %bb.ah ], [ %.sroa.16132.0.lcssa387, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.sroa.0123.0.lcssa382444454 = phi ptr [ %.sroa.0123.0.lcssa382, %bb.ah ], [ %.sroa.0123.0.lcssa382, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %.010.i68 = phi ptr [ null, %bb.ah ], [ %i.ew, %.lr.ph.preheader.i67 ], [ null, %.thread445 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store ptr %.010.i68, ptr %i.fc, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70, %bb.ag
  %.sroa.0111.0.lcssa391442 = phi ptr [ %.sroa.0111.0.lcssa391441456, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.0111.0.lcssa391, %bb.ag ] ; 5 uses
  %.sroa.10.0.lcssa403437 = phi ptr [ %.sroa.10.0.lcssa403436459, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.10.0.lcssa403, %bb.ag ] ; 2 uses
  %.sroa.16.0.lcssa406 = phi ptr [ %.sroa.16.0.lcssa405435460, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.16.0.lcssa405, %bb.ag ] ; 5 uses
  %.sroa.0101.0.lcssa401 = phi ptr [ %.sroa.0101.0.lcssa400438458, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.0101.0.lcssa400, %bb.ag ] ; 10 uses
  %.sroa.16120.0.lcssa397 = phi ptr [ %.sroa.16120.0.lcssa396439457, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.16120.0.lcssa396, %bb.ag ] ; 5 uses
  %.sroa.16132.0.lcssa388 = phi ptr [ %.sroa.16132.0.lcssa387443455, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.16132.0.lcssa387, %bb.ag ] ; 5 uses
  %.sroa.0123.0.lcssa383 = phi ptr [ %.sroa.0123.0.lcssa382444454, %_ZN6Assimp11B3DImporter8to_arrayI11aiVectorKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit70 ], [ %.sroa.0123.0.lcssa382, %bb.ag ] ; 5 uses
  %i.fd = and i32 %.0.copyload.i, 4
  %.not22 = icmp eq i32 %i.fd, 0
  br i1 %.not22, label %bb.ao, label %bb.al

.thread461:                                       ; preds = %.thread425
  %i.fe = and i32 %.0.copyload.i, 4
  %.not22469 = icmp eq i32 %i.fe, 0
  br i1 %.not22469, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit76, label %.thread478

.thread478:                                       ; preds = %.thread461
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i32 0, ptr %i.ff, align 8
  br label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

bb.al:                                            ; preds = %bb.ak
  %i.fg = ptrtoint ptr %.sroa.10.0.lcssa403437 to i64
  %i.fh = ptrtoint ptr %.sroa.0101.0.lcssa401 to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 5 uses
  %i.fj = ashr exact i64 %i.fi, 5                 ; 4 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store i32 %i.fk, ptr %i.fl, align 8
  %i.fm = icmp eq ptr %.sroa.0101.0.lcssa401, %.sroa.10.0.lcssa403437
  br i1 %i.fm, label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = icmp ugt i64 %i.fj, 576460752303423487
  %i.fo = select i1 %i.fn, i64 -1, i64 %i.fi
  %i.fp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fo) #27
          to label %.noexc72 unwind label %bb.p   ; 7 uses

.noexc72:                                         ; preds = %bb.am
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fi
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.noexc72
  %i.fr = phi ptr [ %i.fp, %.noexc72 ], [ %i.fu, %bb.an ] ; 4 uses
  store double 0.000000e+00, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i32 1, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fq
  br i1 %i.fv, label %.lr.ph.i.preheader, label %bb.an

.lr.ph.i.preheader:                               ; preds = %bb.an
  %i.fw = icmp eq i64 %i.fi, 32
  br i1 %i.fw, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.fj, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.gc, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0101.0.lcssa401, i64 %.012.i
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %.012.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fy, ptr noundef nonnull align 8 dereferenceable(28) %i.fx, i64 28, i1 false)
  %i.fz = or disjoint i64 %.012.i, 1              ; 2 uses
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0101.0.lcssa401, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gb, ptr noundef nonnull align 8 dereferenceable(28) %i.ga, i64 28, i1 false)
  %i.gc = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !111

_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.gd = and i64 %i.fi, 32
  %lcmp.mod.not = icmp eq i64 %i.gd, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.gc, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod700 = trunc i64 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod700)
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0101.0.lcssa401, i64 %.012.i.epil.init
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %.012.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gf, ptr noundef nonnull align 8 dereferenceable(28) %i.ge, i64 28, i1 false)
  br label %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit

_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa, %.thread478, %bb.al
  %.sroa.0111.0.lcssa391442470491 = phi ptr [ %.sroa.0111.0.lcssa391442, %bb.al ], [ null, %.thread478 ], [ %.sroa.0111.0.lcssa391442, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.0111.0.lcssa391442, %.lr.ph.i.epil.preheader ]
  %.sroa.16.0.lcssa406472490 = phi ptr [ %.sroa.16.0.lcssa406, %bb.al ], [ null, %.thread478 ], [ %.sroa.16.0.lcssa406, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.16.0.lcssa406, %.lr.ph.i.epil.preheader ]
  %.sroa.0101.0.lcssa401473489 = phi ptr [ %.sroa.0101.0.lcssa401, %bb.al ], [ null, %.thread478 ], [ %.sroa.0101.0.lcssa401, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.0101.0.lcssa401, %.lr.ph.i.epil.preheader ]
  %.sroa.16120.0.lcssa397475488 = phi ptr [ %.sroa.16120.0.lcssa397, %bb.al ], [ null, %.thread478 ], [ %.sroa.16120.0.lcssa397, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.16120.0.lcssa397, %.lr.ph.i.epil.preheader ]
  %.sroa.16132.0.lcssa388476487 = phi ptr [ %.sroa.16132.0.lcssa388, %bb.al ], [ null, %.thread478 ], [ %.sroa.16132.0.lcssa388, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.16132.0.lcssa388, %.lr.ph.i.epil.preheader ]
  %.sroa.0123.0.lcssa383477486 = phi ptr [ %.sroa.0123.0.lcssa383, %bb.al ], [ null, %.thread478 ], [ %.sroa.0123.0.lcssa383, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %.sroa.0123.0.lcssa383, %.lr.ph.i.epil.preheader ]
  %.010.i71 = phi ptr [ null, %bb.al ], [ null, %.thread478 ], [ %i.fp, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit.loopexit.unr-lcssa ], [ %i.fp, %.lr.ph.i.epil.preheader ]
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %.010.i71, ptr %i.gg, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit, %bb.ak
  %.sroa.0101.0.lcssa401474 = phi ptr [ %.sroa.0101.0.lcssa401473489, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.0101.0.lcssa401, %bb.ak ] ; 3 uses
  %.sroa.16.0.lcssa407 = phi ptr [ %.sroa.16.0.lcssa406472490, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.16.0.lcssa406, %bb.ak ]
  %.sroa.16120.0.lcssa398 = phi ptr [ %.sroa.16120.0.lcssa397475488, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.16120.0.lcssa397, %bb.ak ]
  %.sroa.0111.0.lcssa392 = phi ptr [ %.sroa.0111.0.lcssa391442470491, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.0111.0.lcssa391442, %bb.ak ] ; 3 uses
  %.sroa.16132.0.lcssa389 = phi ptr [ %.sroa.16132.0.lcssa388476487, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.16132.0.lcssa388, %bb.ak ]
  %.sroa.0123.0.lcssa384 = phi ptr [ %.sroa.0123.0.lcssa383477486, %_ZN6Assimp11B3DImporter8to_arrayI9aiQuatKeyEEPT_RKSt6vectorIS3_SaIS3_EE.exit ], [ %.sroa.0123.0.lcssa383, %bb.ak ] ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %.sroa.0101.0.lcssa401474, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gh = ptrtoint ptr %.sroa.16.0.lcssa407 to i64
  %i.gi = ptrtoint ptr %.sroa.0101.0.lcssa401474 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.0.lcssa401474, i64 noundef %i.gj) #25
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit:         ; preds = %bb.ao, %bb.ap
  %.not.i.i.i74 = icmp eq ptr %.sroa.0111.0.lcssa392, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit
  %i.gk = ptrtoint ptr %.sroa.16120.0.lcssa398 to i64
  %i.gl = ptrtoint ptr %.sroa.0111.0.lcssa392 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0.lcssa392, i64 noundef %i.gm) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit, %bb.aq
  %.not.i.i.i75 = icmp eq ptr %.sroa.0123.0.lcssa384, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit76, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit
  %i.gn = ptrtoint ptr %.sroa.16132.0.lcssa389 to i64
  %i.go = ptrtoint ptr %.sroa.0123.0.lcssa384 to i64
  %i.gp = sub i64 %i.gn, %i.go
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0.lcssa384, i64 noundef %i.gp) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit76

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit76:    ; preds = %.thread461, %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, %bb.ar
  ret void

.body:                                            ; preds = %.loopexit167, %.loopexit.split-lp168, %.loopexit162, %.loopexit.split-lp163, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, %bb.q, %bb.p
  %.sroa.0123.4 = phi ptr [ %.sroa.0123.1, %bb.p ], [ %.sroa.0123.0282, %bb.q ], [ %.sroa.0123.0282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.0123.2, %.loopexit.split-lp163 ], [ %.sroa.0123.0282, %.loopexit.split-lp ], [ %.sroa.0123.0282, %.loopexit ], [ %.sroa.0123.2, %.loopexit162 ], [ %.sroa.0123.2, %.loopexit167 ], [ %.sroa.0123.2, %.loopexit.split-lp168 ] ; 3 uses
  %.sroa.16132.4 = phi ptr [ %.sroa.16132.1, %bb.p ], [ %.sroa.16132.0284, %bb.q ], [ %.sroa.16132.0284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.16132.2, %.loopexit.split-lp163 ], [ %.sroa.16132.0284, %.loopexit.split-lp ], [ %.sroa.16132.0284, %.loopexit ], [ %.sroa.16132.2, %.loopexit162 ], [ %.sroa.16132.2, %.loopexit167 ], [ %.sroa.16132.2, %.loopexit.split-lp168 ]
  %.sroa.0111.4 = phi ptr [ %.sroa.0111.1, %bb.p ], [ %.sroa.0111.0285, %bb.q ], [ %.sroa.0111.0285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.0111.0285, %.loopexit.split-lp163 ], [ %.sroa.0111.0285, %.loopexit.split-lp ], [ %.sroa.0111.0285, %.loopexit ], [ %.sroa.0111.0285, %.loopexit162 ], [ %.sroa.0111.2, %.loopexit167 ], [ %.sroa.0111.2, %.loopexit.split-lp168 ] ; 3 uses
  %.sroa.16120.4 = phi ptr [ %.sroa.16120.1, %bb.p ], [ %.sroa.16120.0287, %bb.q ], [ %.sroa.16120.0287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.16120.0287, %.loopexit.split-lp163 ], [ %.sroa.16120.0287, %.loopexit.split-lp ], [ %.sroa.16120.0287, %.loopexit ], [ %.sroa.16120.0287, %.loopexit162 ], [ %.sroa.16120.2, %.loopexit167 ], [ %.sroa.16120.2, %.loopexit.split-lp168 ]
  %.sroa.0101.3 = phi ptr [ %.sroa.0101.1, %bb.p ], [ %.sroa.0101.0288, %bb.q ], [ %.sroa.0101.0288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.0101.0288, %.loopexit.split-lp163 ], [ %.sroa.0101.0288, %.loopexit.split-lp ], [ %.sroa.0101.0288, %.loopexit ], [ %.sroa.0101.0288, %.loopexit162 ], [ %.sroa.0101.0288, %.loopexit167 ], [ %.sroa.0101.0288, %.loopexit.split-lp168 ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1, %bb.p ], [ %.sroa.16.0290, %bb.q ], [ %.sroa.16.0290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.sroa.16.0290, %.loopexit.split-lp163 ], [ %.sroa.16.0290, %.loopexit.split-lp ], [ %.sroa.16.0290, %.loopexit ], [ %.sroa.16.0290, %.loopexit162 ], [ %.sroa.16.0290, %.loopexit167 ], [ %.sroa.16.0290, %.loopexit.split-lp168 ]
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.bm, %bb.q ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp163 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit164, %.loopexit162 ], [ %lpad.loopexit169, %.loopexit167 ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp168 ] ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.0101.3, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit78, label %bb.as

bb.as:                                            ; preds = %.body
  %i.gq = ptrtoint ptr %.sroa.16.3 to i64
  %i.gr = ptrtoint ptr %.sroa.0101.3 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.3, i64 noundef %i.gs) #25
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit78

_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit78:       ; preds = %.body, %bb.as
  %.not.i.i.i79 = icmp eq ptr %.sroa.0111.4, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit80, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit78
  %i.gt = ptrtoint ptr %.sroa.16120.4 to i64
  %i.gu = ptrtoint ptr %.sroa.0111.4 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.4, i64 noundef %i.gv) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit80

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit80:    ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit78, %bb.at
  %.not.i.i.i81 = icmp eq ptr %.sroa.0123.4, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit82, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit80
  %i.gw = ptrtoint ptr %.sroa.16132.4 to i64
  %i.gx = ptrtoint ptr %.sroa.0123.4 to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.4, i64 noundef %i.gy) #25
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit82

end_hunk_2
