inline.NumInlined: 36270
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 376
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE7EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.fy = zext i32 %i.fn to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3, !noalias !9633
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !37, !noalias !9633
  %i.ge = icmp eq i8 %i.gd, 125
  br i1 %i.ge, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gf = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #38, !noalias !9633
  br i1 %i.gf, label %._crit_edge348.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

._crit_edge348.i.i.i:                             ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !9625, !noalias !9633
  %.pre349.i.i.i = load ptr, ptr %3, align 8, !tbaa !9618, !noalias !9633
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge348.i.i.i, %bb.ah, %bb.af
  %i.gg = phi ptr [ %.pre349.i.i.i, %._crit_edge348.i.i.i ], [ %.sink, %bb.ah ], [ %.sink, %bb.af ] ; 6 uses
  %.pre350.pre.i.i.i = phi ptr [ %.pre.i.i.i, %._crit_edge348.i.i.i ], [ %i.fi, %bb.ah ], [ %i.fi, %bb.af ] ; 6 uses
  %i.gh = icmp eq ptr %.pre350.pre.i.i.i, %i.y
  call void @llvm.assume(i1 %i.gh), !noalias !9630
  %i.gi = load i32, ptr %.pre350.pre.i.i.i, align 4, !tbaa !3, !noalias !9633
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !37, !noalias !9633 ; 2 uses
  %i.gm = icmp eq i8 %i.gl, 125
  br i1 %i.gm, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i: ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre350.pre.i.i.i, i64 4 ; 2 uses
  store ptr %i.gn, ptr %i.ab, align 8, !tbaa !9617, !noalias !9633
  store i32 0, ptr %i.k, align 4, !tbaa !9615, !noalias !9633
  %i.go = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !9634
  br label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i: ; preds = %bb.aj
  %i.gp = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !9634 ; 3 uses
  %.not.not.i.i = icmp eq i8 %i.gl, 34            ; 3 uses
  br i1 %.not.not.i.i, label %bb.ak, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i

bb.ak:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre350.pre.i.i.i, i64 4 ; 3 uses
  store ptr %i.gq, ptr %i.ab, align 8, !tbaa !9617, !noalias !9634
  %i.gr = load i8, ptr %i.gk, align 1, !tbaa !37, !noalias !9634
  %.not.i33.i.i.i = icmp eq i8 %i.gr, 34
  br i1 %.not.i33.i.i.i, label %bb.al, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.gs = icmp ugt ptr %i.gq, %i.q
  call void @llvm.assume(i1 %i.gs), !noalias !9637
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre350.pre.i.i.i, i64 8 ; 3 uses
  store ptr %i.gt, ptr %i.ab, align 8, !tbaa !9617, !noalias !9634
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !9634
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !37, !noalias !9634
  %.not.i34.i.i.i = icmp eq i8 %i.gx, 58
  br i1 %.not.i34.i.i.i, label %bb.am, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.am:                                            ; preds = %bb.al
  store i32 2, ptr %i.k, align 4, !tbaa !9615, !noalias !9634
  %.pre.i = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !9634
  %.pre12.i = zext i32 %.pre.i to i64
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i: ; preds = %bb.am, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %bb.am ], [ %i.gj, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ]
  %i.gy = phi i32 [ 2, %bb.am ], [ 1, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ] ; 7 uses
  %.pre350377.i.i.i = phi ptr [ %i.gt, %bb.am ], [ %.pre350.pre.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre350377.i.i.i, i64 4 ; 10 uses
  store ptr %i.gz, ptr %i.ab, align 8, !tbaa !9617, !noalias !9634
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.pre-phi.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !37, !noalias !9634
  switch i8 %i.hb, label %bb.aq [
    i8 91, label %bb.ar
    i8 123, label %bb.ar
    i8 58, label %bb.ar
    i8 44, label %bb.ar
    i8 93, label %bb.an
    i8 125, label %bb.an
    i8 34, label %bb.ao
  ]

bb.an:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hc = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.hc, ptr %i.k, align 4, !tbaa !9615, !noalias !9634
  br i1 %.not.not.i.i, label %bb.ar, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.ao:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !3, !noalias !9634
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !37, !noalias !9634
  %i.hh = icmp eq i8 %i.hg, 58
  br i1 %i.hh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre350377.i.i.i, i64 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hj = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.k, align 4, !tbaa !9615, !noalias !9634
  br i1 %.not.not.i.i, label %bb.ar, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hk = phi i32 [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.hj, %bb.aq ], [ %i.gy, %bb.ap ], [ %i.hc, %bb.an ]
  %i.hl = phi ptr [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %bb.aq ], [ %i.hi, %bb.ap ], [ %i.gz, %bb.an ] ; 2 uses
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !9145, !noalias !9634
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !9148, !noalias !9634 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !9150, !noalias !9634
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hs = zext i32 %i.hq to i64
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !1292, !noalias !9634
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hs ; 2 uses
  %i.hv = icmp ult ptr %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.au
  %i.hw = phi i32 [ %i.if, %bb.au ], [ %i.hk, %bb.ar ] ; 4 uses
  %i.hx = phi ptr [ %i.hy, %bb.au ], [ %i.hl, %bb.ar ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 4 uses
  store ptr %i.hy, ptr %i.ab, align 8, !tbaa !9617, !noalias !9634
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !3, !noalias !9634
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !37, !noalias !9634
  switch i8 %i.ic, label %bb.au [
    i8 91, label %bb.as
    i8 123, label %bb.as
    i8 93, label %bb.at
    i8 125, label %bb.at
  ]

bb.as:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.id = add nsw i32 %i.hw, 1                    ; 2 uses
  store i32 %i.id, ptr %i.k, align 4, !tbaa !9615, !noalias !9634
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ie = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.ie, ptr %i.k, align 4, !tbaa !9615, !noalias !9634
  %.not8.i.i30.i.i.i = icmp sgt i32 %i.hw, 1
  br i1 %.not8.i.i30.i.i.i, label %bb.au, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.au:                                            ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i
  %i.if = phi i32 [ %i.hw, %.lr.ph.i.i.i ], [ %i.ie, %bb.at ], [ %i.id, %bb.as ]
  %i.ig = icmp ult ptr %i.hy, %i.hu
  br i1 %i.ig, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, !llvm.loop !9629

_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i: ; preds = %bb.at, %bb.aq, %bb.an, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i
  %.in.i.i = phi i32 [ %i.go, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.an ], [ %i.gp, %bb.at ]
  %i.ih = phi ptr [ %i.gn, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i ], [ %i.gz, %bb.aq ], [ %i.gz, %bb.an ], [ %i.hy, %bb.at ]
  %i.ii = zext i32 %.in.i.i to i64                ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ii
  %i.ik = load i32, ptr %i.ih, align 4, !tbaa !3, !noalias !9634
  %i.il = zext i32 %i.ik to i64
  %gepdiff.i.i.i = sub nsw i64 %i.il, %i.ii
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i

bb.av:                                            ; preds = %bb.i
  %i.im = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !9638
  %i.in = sub i32 %i.im, %i.bq
  %i.io = load i32, ptr %i.y, align 4, !tbaa !3, !noalias !9638
  %i.ip = sub i32 %i.io, %i.bq
  %..i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.in, i32 %i.ip)
  %i.iq = zext i32 %..i.i.i.i.i to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i: ; preds = %bb.av, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.iq, %bb.av ], [ %gepdiff344.i.i.i, %.loopexit.i.i.i ], [ %gepdiff.i.i.i, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i ] ; 8 uses
  %.sroa.10.0.i.i = phi ptr [ %i.bs, %bb.av ], [ %i.ey, %.loopexit.i.i.i ], [ %i.ij, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !2609 ; 9 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !19
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(112) %i.it, i32 noundef %i.iw), !inline_history !9641
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i
  %.013.i.i.i = phi i64 [ 0, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i ], [ %i.ja, %bb.ax ] ; 4 uses
  %i.ja = add i64 %.013.i.i.i, 32                 ; 2 uses
  %.not.i37.i.i = icmp ugt i64 %i.ja, %.sroa.0.0.i.i
  br i1 %.not.i37.i.i, label %.preheader.i.i.i, label %bb.ax

.preheader.i.i.i:                                 ; preds = %bb.aw
  %i.jb = icmp ult i64 %.013.i.i.i, %.sroa.0.0.i.i
  br i1 %i.jb, label %.lr.ph.i40.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %.013.i.i.i
  %i.jd = load <4 x i64>, ptr %i.jc, align 1, !tbaa !37, !noalias !9642 ; 2 uses
  %i.je = bitcast <4 x i64> %i.jd to <32 x i8>
  %i.jf = icmp ugt <32 x i8> %i.je, splat (i8 -128)
  %i.jg = bitcast <4 x i64> %i.jd to <32 x i8>    ; 2 uses
  %i.jh = icmp eq <32 x i8> %i.jg, splat (i8 -128)
  %i.ji = icmp eq <32 x i8> %i.jg, splat (i8 92)
  %i.jj = or <32 x i1> %i.ji, %i.jh
  %4 = or <32 x i1> %i.jf, %i.jj
  %5 = sext <32 x i1> %4 to <32 x i8>
  %6 = bitcast <32 x i8> %5 to <4 x i64>          ; 2 uses
  %i.jk = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %6, <4 x i64> %6)
  %.not.i.i.i38.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i.i.i38.i.i, label %.loopexit.i.i, label %bb.aw, !llvm.loop !9649

bb.ay:                                            ; preds = %.lr.ph.i40.i.i
  %i.jl = add i64 %.127.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jl, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i, label %.lr.ph.i40.i.i, !llvm.loop !9650

.lr.ph.i40.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ay
  %.127.i.i.i = phi i64 [ %i.jl, %bb.ay ], [ %.013.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %.127.i.i.i
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !37  ; 2 uses
  %.not17.i.i.i = icmp slt i8 %i.jn, 0
  %i.jo = icmp eq i8 %i.jn, 92
  %or.cond.i.i.i = or i1 %.not17.i.i.i, %i.jo
  br i1 %or.cond.i.i.i, label %.loopexit.i.i, label %bb.ay

.loopexit.i.i:                                    ; preds = %bb.ax, %.lr.ph.i40.i.i
  %i.jp = call noundef i64 @_ZN8facebook5velox23unescapeSizeForJsonCastEPKcm(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.0.0.i.i) ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !692
  %i.js = icmp ugt i64 %i.jp, %i.jr
  br i1 %i.js, label %bb.az, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.az:                                            ; preds = %.loopexit.i.i
  %i.jt = load ptr, ptr %i.iz, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, i64 noundef %i.jp), !inline_history !9651
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.az, %.loopexit.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store i64 %i.jp, ptr %i.jw, align 8, !tbaa !691
  %i.jx = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !694
  call void @_ZN8facebook5velox19unescapeForJsonCastEPKcmPc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.0.0.i.i, ptr noundef %i.jy)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i: ; preds = %bb.ay, %.preheader.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !691 ; 2 uses
  %i.kb = add i64 %i.ka, %.sroa.0.0.i.i           ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !692
  %i.ke = icmp ugt i64 %i.kb, %i.kd
  br i1 %i.ke, label %bb.ba, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i

bb.ba:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i
  %i.kf = load ptr, ptr %i.iz, align 8, !tbaa !19
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, i64 noundef %i.kb), !inline_history !9652
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i: ; preds = %bb.ba, %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !691
  %.not.i41.i.i = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i41.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !694
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ka
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %.sroa.10.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  switch i8 %.sroa.0107.0.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit [
    i8 4, label %bb.bd
    i8 3, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i
    i8 5, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.kl = icmp eq ptr %i.ac, %i.q                 ; 2 uses
  br i1 %i.kl, label %bb.be, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.km = icmp eq i32 %i.m, 1
  call void @llvm.assume(i1 %i.km), !noalias !9653
  %i.kn = load i32, ptr %i.ac, align 4, !tbaa !3, !noalias !9653
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ko
  %.pre.i.i = load i8, ptr %i.kp, align 1, !tbaa !37, !noalias !9653
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.be, %bb.bd
  %i.kq = phi i8 [ %.pre.i.i, %bb.be ], [ %i.bt, %bb.bd ]
  %i.kr = phi i64 [ %i.ko, %bb.be ], [ %i.br, %bb.bd ]
  %.not.i.i.i = icmp eq i8 %i.kq, 34
  br i1 %.not.i.i.i, label %bb.bf, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bf:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !9148, !noalias !9653 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !9150, !noalias !9653
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %bb.bg, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.kl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kx = icmp eq i32 %i.m, 1
  call void @llvm.assume(i1 %i.kx), !noalias !9653
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ky, ptr %i.ab, align 8, !tbaa !9617, !noalias !9653
  store i32 0, ptr %i.k, align 4, !tbaa !9615, !noalias !9653
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kz = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.kr
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.lb = load ptr, ptr %i.kt, align 8, !tbaa !19, !noalias !9656
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !9656
  %i.le = call noundef ptr %i.ld(ptr noundef nonnull align 8 dereferenceable(48) %i.kt, ptr noundef nonnull %i.la, ptr noundef %i.h, i1 noundef zeroext true) #38, !noalias !9656, !inline_history !9659 ; 3 uses
  %.not.i33.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i33.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lf = load ptr, ptr %i.f, align 8, !tbaa !241, !noalias !9656 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  store ptr %i.le, ptr %i.f, align 8, !tbaa !241, !noalias !9656
  br label %bb.bk

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i: ; preds = %bb.bc, %bb.bc
  %i.lj = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !9660
  %i.lk = sub i32 %i.lj, %i.bq
  %i.ll = load i32, ptr %i.y, align 4, !tbaa !3, !noalias !9660
  %i.lm = sub i32 %i.ll, %i.bq
  %..i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lk, i32 %i.lm)
  %i.ln = zext i32 %..i.i.i.i to i64
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i, %bb.bj
  %.sroa.049.1.i.i = phi i64 [ %i.li, %bb.bj ], [ %i.ln, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i ] ; 3 uses
  %.sroa.751.1.i.i = phi ptr [ %i.lf, %bb.bj ], [ %i.bs, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !2609 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = load ptr, ptr %i.lq, align 8, !tbaa !19
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(112) %i.lq, i32 noundef %i.lt), !inline_history !9641
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !691 ; 2 uses
  %i.ly = add i64 %i.lx, %.sroa.049.1.i.i         ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !692
  %i.mb = icmp ugt i64 %i.ly, %i.ma
  br i1 %i.mb, label %bb.bl, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !19
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(96) %i.mc, i64 noundef %i.ly), !inline_history !9652
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i: ; preds = %bb.bl, %bb.bk
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !691
  %.not.i43.i.i = icmp eq i64 %.sroa.049.1.i.i, 0
  br i1 %.not.i43.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !694
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr align 1 %.sroa.751.1.i.i, i64 %.sroa.049.1.i.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %bb.bm, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i, %bb.bb, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.mj = load ptr, ptr %1, align 8, !tbaa !19
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext true)
  br label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit: ; preds = %bb.au, %bb.aa, %bb.ak, %bb.al, %bb.ar, %bb.ag, %bb.ai, %bb.x, %bb.o, %bb.q, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, %bb.bf, %bb.ac, %bb.ad, %bb.k, %bb.l, %bb.bi, %bb.bc, %bb.h, %bb.g, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit
  %.1 = phi i32 [ 0, %bb.h ], [ 0, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit ], [ 0, %bb.g ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i ], [ 31, %bb.bf ], [ 3, %bb.x ], [ 17, %bb.ac ], [ 17, %bb.ad ], [ 17, %bb.k ], [ 17, %bb.l ], [ 28, %bb.ag ], [ 17, %bb.bc ], [ 5, %bb.bi ], [ 28, %bb.o ], [ 28, %bb.q ], [ 3, %bb.ak ], [ 28, %bb.ai ], [ 3, %bb.ar ], [ 3, %bb.aa ], [ 3, %bb.al ], [ 3, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.bn

bb.bn:                                            ; preds = %bb.a, %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit
  %.2 = phi i32 [ %.1, %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret i32 %.2
}

declare noundef i64 @_ZN8facebook5velox23unescapeSizeForJsonCastEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN8facebook5velox19unescapeForJsonCastEPKcmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i: ; preds = %._crit_edge263.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  store ptr %i.cy, ptr %i.cd, align 8, !tbaa !9617, !noalias !10002
  %i.cz = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i.i.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !noalias !10005
  store i32 %i.cz, ptr %i.cs, align 4, !tbaa !9615, !noalias !10002
  %i.da = load i32, ptr %.sroa.0.sroa.4.0.copyload, align 4, !tbaa !3, !noalias !10006
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  br label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.s:                                             ; preds = %._crit_edge263.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  store ptr %i.dd, ptr %i.cd, align 8, !tbaa !9617, !noalias !10006
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !37, !noalias !10006
  %.not.i12.i.i = icmp eq i8 %i.de, 34
  br i1 %.not.i12.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.df, align 8, !tbaa !9796, !noalias !10006
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !9145, !noalias !10006
  br label %.thread.i.i

bb.u:                                             ; preds = %bb.s
  %i.dh = icmp ugt ptr %i.dd, %.sroa.0.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.dh), !noalias !10009
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  store ptr %i.di, ptr %i.cd, align 8, !tbaa !9617, !noalias !10006
  %i.dj = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !10006
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37, !noalias !10006
  %.not.i13.i.i = icmp eq i8 %i.dm, 58
  br i1 %.not.i13.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.dn, align 8, !tbaa !9796, !noalias !10006
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  store ptr null, ptr %i.do, align 8, !tbaa !9145, !noalias !10006
  br label %.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.dp = add nuw nsw i32 %.sroa.0.sroa.2.0.copyload, 1 ; 2 uses
  %or.cond.i.i.i34.i = icmp samesign ult i32 %.sroa.0.sroa.2.0.copyload, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i.i34.i), !noalias !10009
  store i32 %i.dp, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  %.pre = load i32, ptr %i.di, align 4, !tbaa !3, !noalias !10006
  %.pre13 = zext i32 %.pre to i64
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i: ; preds = %._crit_edge263.i.i, %bb.w
  %.pre-phi = phi i64 [ %i.cv, %._crit_edge263.i.i ], [ %.pre13, %bb.w ]
  %i.dq = phi i32 [ %.sroa.0.sroa.2.0.copyload, %._crit_edge263.i.i ], [ %i.dp, %bb.w ] ; 9 uses
  %i.dr = phi ptr [ %i.cp, %._crit_edge263.i.i ], [ %i.di, %bb.w ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 10 uses
  store ptr %i.ds, ptr %i.cd, align 8, !tbaa !9617, !noalias !10006
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !37, !noalias !10006
  switch i8 %i.du, label %bb.aa [
    i8 91, label %bb.ab
    i8 123, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 93, label %bb.x
    i8 125, label %bb.x
    i8 34, label %bb.y
  ]

bb.x:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.dv = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  %.not6.i.i.i.i = icmp samesign ugt i32 %i.dq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not6.i.i.i.i, label %bb.ab, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.y:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !3, !noalias !10006
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !37, !noalias !10006
  %i.ea = icmp eq i8 %i.dz, 58
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.cd, align 8, !tbaa !9617, !noalias !10006
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.ec = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  %.not7.i.i.i.i = icmp samesign ugt i32 %i.dq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not7.i.i.i.i, label %bb.ab, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.ed = phi i32 [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ec, %bb.aa ], [ %i.dq, %bb.z ], [ %i.dv, %bb.x ]
  %i.ee = phi ptr [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %bb.aa ], [ %i.eb, %bb.z ], [ %i.ds, %bb.x ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !9145, !noalias !10006
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9148, !noalias !10006 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !9150, !noalias !10006
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = zext i32 %i.ek to i64                   ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !1292, !noalias !10006
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  %i.ep = icmp ult ptr %i.ee, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ae
  %i.eq = phi i32 [ %i.ez, %bb.ae ], [ %i.ed, %bb.ab ] ; 4 uses
  %i.er = phi ptr [ %i.es, %bb.ae ], [ %i.ee, %bb.ab ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 4 uses
  store ptr %i.es, ptr %i.cd, align 8, !tbaa !9617, !noalias !10006
  %i.et = load i32, ptr %i.er, align 4, !tbaa !3, !noalias !10006
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !37, !noalias !10006
  switch i8 %i.ew, label %bb.ae [
    i8 91, label %bb.ac
    i8 123, label %bb.ac
    i8 93, label %bb.ad
    i8 125, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ex = add nsw i32 %i.eq, 1                    ; 2 uses
  store i32 %i.ex, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ey = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  %.not8.i.i.i.i = icmp sgt i32 %i.eq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not8.i.i.i.i, label %bb.ae, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i.i
  %i.ez = phi i32 [ %i.eq, %.lr.ph.i.i ], [ %i.ey, %bb.ad ], [ %i.ex, %bb.ac ]
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !1292, !noalias !10006
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.em
  %i.fc = icmp ult ptr %i.es, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !9629

._crit_edge.i.i:                                  ; preds = %bb.ae, %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.fd, align 8, !tbaa !9796, !noalias !10006
  store ptr null, ptr %i.ef, align 8, !tbaa !9145, !noalias !10006
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.v, %bb.t
  store i32 0, ptr %i.cs, align 4, !tbaa !9615, !noalias !10006
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i: ; preds = %bb.ad, %bb.aa, %bb.x, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i
  %i.fe = phi ptr [ %i.dc, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.d, %bb.aa ], [ %i.d, %bb.x ], [ %i.d, %bb.ad ]
  %i.ff = phi i64 [ %i.db, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.c, %bb.aa ], [ %i.c, %bb.x ], [ %i.c, %bb.ad ]
  %i.fg = phi ptr [ %i.cy, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.x ], [ %i.es, %bb.ad ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !10006
  %i.fi = zext i32 %i.fh to i64
  %gepdiff.i.i = sub nsw i64 %i.fi, %i.ff
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i

bb.af:                                            ; preds = %bb.b
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !10010
  %i.fl = sub i32 %i.fk, %i.b
  %i.fm = zext i32 %i.fl to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i: ; preds = %bb.af, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i, %.loopexit.i.i
  %.sroa.053.0.i = phi i64 [ %i.fm, %bb.af ], [ %gepdiff259.i.i, %.loopexit.i.i ], [ %gepdiff.i.i, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i ] ; 8 uses
  %.sroa.10.0.i = phi ptr [ %i.d, %bb.af ], [ %i.ca, %.loopexit.i.i ], [ %i.fe, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !2609 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !19
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(112) %i.fp, i32 noundef %i.fs), !inline_history !10011
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i
  %.013.i.i = phi i64 [ 0, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i ], [ %i.fw, %bb.ah ] ; 4 uses
  %i.fw = add i64 %.013.i.i, 32                   ; 2 uses
  %.not.i35.i = icmp ugt i64 %i.fw, %.sroa.053.0.i
  br i1 %.not.i35.i, label %.preheader.i.i, label %bb.ah

.preheader.i.i:                                   ; preds = %bb.ag
  %i.fx = icmp ult i64 %.013.i.i, %.sroa.053.0.i
  br i1 %i.fx, label %.lr.ph.i38.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.013.i.i
  %i.fz = load <4 x i64>, ptr %i.fy, align 1, !tbaa !37, !noalias !10012 ; 2 uses
  %i.ga = bitcast <4 x i64> %i.fz to <32 x i8>
  %i.gb = icmp ugt <32 x i8> %i.ga, splat (i8 -128)
  %i.gc = bitcast <4 x i64> %i.fz to <32 x i8>    ; 2 uses
  %i.gd = icmp eq <32 x i8> %i.gc, splat (i8 -128)
  %i.ge = icmp eq <32 x i8> %i.gc, splat (i8 92)
  %i.gf = or <32 x i1> %i.ge, %i.gd
  %2 = or <32 x i1> %i.gb, %i.gf
  %3 = sext <32 x i1> %2 to <32 x i8>
  %4 = bitcast <32 x i8> %3 to <4 x i64>          ; 2 uses
  %i.gg = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %4, <4 x i64> %4)
  %.not.i.i.i36.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i36.i, label %.loopexit.i, label %bb.ag, !llvm.loop !9649

bb.ai:                                            ; preds = %.lr.ph.i38.i
  %i.gh = add i64 %.127.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gh, %.sroa.053.0.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i, label %.lr.ph.i38.i, !llvm.loop !9650

.lr.ph.i38.i:                                     ; preds = %.preheader.i.i, %bb.ai
  %.127.i.i = phi i64 [ %i.gh, %bb.ai ], [ %.013.i.i, %.preheader.i.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.127.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !37  ; 2 uses
  %.not17.i.i = icmp slt i8 %i.gj, 0
  %i.gk = icmp eq i8 %i.gj, 92
  %or.cond.i.i = or i1 %.not17.i.i, %i.gk
  br i1 %or.cond.i.i, label %.loopexit.i, label %bb.ai

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph.i38.i
  %i.gl = tail call noundef i64 @_ZN8facebook5velox23unescapeSizeForJsonCastEPKcm(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.053.0.i) ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !692
  %i.go = icmp ugt i64 %i.gl, %i.gn
  br i1 %i.go, label %bb.aj, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i

bb.aj:                                            ; preds = %.loopexit.i
  %i.gp = load ptr, ptr %i.fv, align 8, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  tail call void %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.gl), !inline_history !10019
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i: ; preds = %bb.aj, %.loopexit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i64 %i.gl, ptr %i.gs, align 8, !tbaa !691
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !694
  tail call void @_ZN8facebook5velox19unescapeForJsonCastEPKcmPc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.053.0.i, ptr noundef %i.gu)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i: ; preds = %bb.ai, %.preheader.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !691 ; 2 uses
  %i.gx = add i64 %i.gw, %.sroa.053.0.i           ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !692
  %i.ha = icmp ugt i64 %i.gx, %i.gz
  br i1 %i.ha, label %bb.ak, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.ak:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i
  %i.hb = load ptr, ptr %i.fv, align 8, !tbaa !19
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(96) %i.fv, i64 noundef %i.gx), !inline_history !10020
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.ak, %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !691
  %.not.i39.i = icmp eq i64 %.sroa.053.0.i, 0
  br i1 %.not.i39.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !694
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %.sroa.10.0.i, i64 %.sroa.053.0.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  switch i8 %.sroa.076.0.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit [
    i8 4, label %bb.an
    i8 3, label %bb.aq
    i8 5, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !9617, !noalias !10021 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, %.sroa.0.sroa.4.0.copyload
  br i1 %i.hj, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.an
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9615, !noalias !10021
  %i.hm = icmp eq i32 %i.hl, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.hm), !noalias !10021
  %i.hn = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 0
  tail call void @llvm.assume(i1 %i.hn), !noalias !10021
  %i.ho = load i32, ptr %i.hi, align 4, !tbaa !3, !noalias !10021
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !37, !noalias !10021
  %.not.i.i = icmp eq i8 %i.hr, 34
  br i1 %.not.i.i, label %bb.ao, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i: ; preds = %bb.an
  %.not.i122.i = icmp eq i8 %i.e, 34
  br i1 %.not.i122.i, label %.thread.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.ao:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store ptr %i.hs, ptr %i.hh, align 8, !tbaa !9617, !noalias !10021
  %i.ht = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i), !noalias !10021
  store i32 %i.ht, ptr %i.hk, align 4, !tbaa !9615, !noalias !10021
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i
  %i.hu = phi i64 [ %i.c, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i ], [ %i.hp, %bb.ao ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !9145, !noalias !10024
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 24 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !9148, !noalias !10027 ; 2 uses
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !241, !noalias !10027
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !19, !noalias !10027
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !10027
  %i.ig = tail call noundef ptr %i.if(ptr noundef nonnull align 8 dereferenceable(48) %i.ib, ptr noundef nonnull %i.hw, ptr noundef %i.ic, i1 noundef zeroext true) #38, !noalias !10027, !inline_history !10030 ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i1.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread.i
  %i.ih = load ptr, ptr %i.hz, align 8, !tbaa !241, !noalias !10027 ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  store ptr %i.ig, ptr %i.hz, align 8, !tbaa !241, !noalias !10027
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.am
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = sub i32 %i.im, %i.b
  %i.io = zext i32 %i.in to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.045.1.i = phi i64 [ %i.ik, %bb.ap ], [ %i.io, %bb.aq ] ; 3 uses
  %.sroa.7.1.i = phi ptr [ %i.ih, %bb.ap ], [ %i.d, %bb.aq ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2609 ; 6 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !19
  %i.iw = load ptr, ptr %i.iv, align 8
  tail call void %i.iw(ptr noundef nonnull align 8 dereferenceable(112) %i.ir, i32 noundef %i.iu), !inline_history !10011
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !691 ; 2 uses
  %i.iz = add i64 %i.iy, %.sroa.045.1.i           ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !692
  %i.jc = icmp ugt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i

bb.as:                                            ; preds = %bb.ar
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  tail call void %i.jg(ptr noundef nonnull align 8 dereferenceable(96) %i.jd, i64 noundef %i.iz), !inline_history !10020
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i: ; preds = %bb.as, %bb.ar
  store i64 %i.iz, ptr %i.ix, align 8, !tbaa !691
  %.not.i41.i = icmp eq i64 %.sroa.045.1.i, 0
  br i1 %.not.i41.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !694
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr align 1 %.sroa.7.1.i, i64 %.sroa.045.1.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit: ; preds = %bb.d, %bb.e, %._crit_edge262.i.i, %bb.p, %bb.q, %.thread.i.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %bb.al, %bb.am, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i, %.thread.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i, %bb.at
  %.5.i = phi i32 [ 0, %bb.al ], [ 17, %bb.am ], [ 3, %._crit_edge262.i.i ], [ 5, %.thread.i ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i ], [ 17, %bb.d ], [ 3, %.thread.i.i ], [ 17, %bb.e ], [ 17, %bb.q ], [ 17, %bb.p ], [ 0, %bb.at ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i ]
  ret i32 %.5.i
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE8EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE() unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #38, !noalias !10031
  store i64 ptrtoint (ptr @.str.248 to i64), ptr %0, align 16, !noalias !10031
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr nonnull @.str.264, i64 41, i64 12, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #38, !noalias !10031
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE8EvE5applyES6_RNS0_4exec13GenericWriterEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.264) #46
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

end_hunk_1
