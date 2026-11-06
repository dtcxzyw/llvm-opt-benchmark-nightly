Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36259
inline.NumDeleted: 7692
loop-unroll.NumCompletelyUnrolled: 284
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 379
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE7EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !1682, !noalias !13551
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !1681, !noalias !13551
  %i.ge = icmp eq i8 %i.gd, 125
  br i1 %i.ge, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gf = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #38, !noalias !13551
  br i1 %i.gf, label %._crit_edge351.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

._crit_edge351.i.i.i:                             ; preds = %bb.ai
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !3918, !noalias !13551
  %.pre352.i.i.i = load ptr, ptr %3, align 8, !tbaa !3917, !noalias !13551
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge351.i.i.i, %bb.ah, %bb.af
  %i.gg = phi ptr [ %.pre352.i.i.i, %._crit_edge351.i.i.i ], [ %.sink, %bb.ah ], [ %.sink, %bb.af ] ; 6 uses
  %.pre353.pre.i.i.i = phi ptr [ %.pre.i.i.i, %._crit_edge351.i.i.i ], [ %i.fi, %bb.ah ], [ %i.fi, %bb.af ] ; 6 uses
  %i.gh = icmp eq ptr %.pre353.pre.i.i.i, %i.y
  call void @llvm.assume(i1 %i.gh), !noalias !13550
  %i.gi = load i32, ptr %.pre353.pre.i.i.i, align 4, !tbaa !1682, !noalias !13551
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !1681, !noalias !13551 ; 2 uses
  %i.gm = icmp eq i8 %i.gl, 125
  br i1 %i.gm, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i: ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre353.pre.i.i.i, i64 4 ; 2 uses
  store ptr %i.gn, ptr %i.ab, align 8, !tbaa !3916, !noalias !13551
  store i32 0, ptr %i.k, align 4, !tbaa !3914, !noalias !13551
  %i.go = load i32, ptr %i.q, align 4, !tbaa !1682, !noalias !13552
  br label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i: ; preds = %bb.aj
  %i.gp = load i32, ptr %i.q, align 4, !tbaa !1682, !noalias !13552 ; 3 uses
  %.not.not.i.i = icmp eq i8 %i.gl, 34            ; 3 uses
  br i1 %.not.not.i.i, label %bb.ak, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i

bb.ak:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre353.pre.i.i.i, i64 4 ; 3 uses
  store ptr %i.gq, ptr %i.ab, align 8, !tbaa !3916, !noalias !13552
  %i.gr = load i8, ptr %i.gk, align 1, !tbaa !1681, !noalias !13552
  %.not.i33.i.i.i = icmp eq i8 %i.gr, 34
  br i1 %.not.i33.i.i.i, label %bb.al, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.gs = icmp ugt ptr %i.gq, %i.q
  call void @llvm.assume(i1 %i.gs), !noalias !13553
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre353.pre.i.i.i, i64 8 ; 3 uses
  store ptr %i.gt, ptr %i.ab, align 8, !tbaa !3916, !noalias !13552
  %i.gu = load i32, ptr %i.gq, align 4, !tbaa !1682, !noalias !13552
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !1681, !noalias !13552
  %.not.i34.i.i.i = icmp eq i8 %i.gx, 58
  br i1 %.not.i34.i.i.i, label %bb.am, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.am:                                            ; preds = %bb.al
  store i32 2, ptr %i.k, align 4, !tbaa !3914, !noalias !13552
  %.pre.i = load i32, ptr %i.gt, align 4, !tbaa !1682, !noalias !13552
  %.pre12.i = zext i32 %.pre.i to i64
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i: ; preds = %bb.am, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %bb.am ], [ %i.gj, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ]
  %i.gy = phi i32 [ 2, %bb.am ], [ 1, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ] ; 7 uses
  %.pre353380.i.i.i = phi ptr [ %i.gt, %bb.am ], [ %.pre353.pre.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.i.i.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre353380.i.i.i, i64 4 ; 10 uses
  store ptr %i.gz, ptr %i.ab, align 8, !tbaa !3916, !noalias !13552
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.pre-phi.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !1681, !noalias !13552
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
  store i32 %i.hc, ptr %i.k, align 4, !tbaa !3914, !noalias !13552
  br i1 %.not.not.i.i, label %bb.ar, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.ao:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !1682, !noalias !13552
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !1681, !noalias !13552
  %i.hh = icmp eq i8 %i.hg, 58
  br i1 %i.hh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre353380.i.i.i, i64 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hj = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.k, align 4, !tbaa !3914, !noalias !13552
  br i1 %.not.not.i.i, label %bb.ar, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i
  %i.hk = phi i32 [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gy, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.hj, %bb.aq ], [ %i.gy, %bb.ap ], [ %i.hc, %bb.an ]
  %i.hl = phi ptr [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i.i ], [ %i.gz, %bb.aq ], [ %i.hi, %bb.ap ], [ %i.gz, %bb.an ] ; 2 uses
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !3764, !noalias !13552
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !3768, !noalias !13552 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !3776, !noalias !13552
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hs = zext i32 %i.hq to i64
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !2163, !noalias !13552
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hs ; 2 uses
  %i.hv = icmp ult ptr %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.au
  %i.hw = phi i32 [ %i.if, %bb.au ], [ %i.hk, %bb.ar ] ; 4 uses
  %i.hx = phi ptr [ %i.hy, %bb.au ], [ %i.hl, %bb.ar ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 4 uses
  store ptr %i.hy, ptr %i.ab, align 8, !tbaa !3916, !noalias !13552
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !1682, !noalias !13552
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !1681, !noalias !13552
  switch i8 %i.ic, label %bb.au [
    i8 91, label %bb.as
    i8 123, label %bb.as
    i8 93, label %bb.at
    i8 125, label %bb.at
  ]

bb.as:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.id = add nsw i32 %i.hw, 1                    ; 2 uses
  store i32 %i.id, ptr %i.k, align 4, !tbaa !3914, !noalias !13552
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ie = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.ie, ptr %i.k, align 4, !tbaa !3914, !noalias !13552
  %.not8.i.i30.i.i.i = icmp sgt i32 %i.hw, 1
  br i1 %.not8.i.i30.i.i.i, label %bb.au, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i

bb.au:                                            ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i
  %i.if = phi i32 [ %i.hw, %.lr.ph.i.i.i ], [ %i.ie, %bb.at ], [ %i.id, %bb.as ]
  %i.ig = icmp ult ptr %i.hy, %i.hu
  br i1 %i.ig, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, !llvm.loop !256

_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i: ; preds = %bb.at, %bb.aq, %bb.an, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i
  %.in.i.i = phi i32 [ %i.go, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.an ], [ %i.gp, %bb.at ]
  %i.ih = phi ptr [ %i.gn, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.i.thread.i.i ], [ %i.gz, %bb.aq ], [ %i.gz, %bb.an ], [ %i.hy, %bb.at ]
  %i.ii = zext i32 %.in.i.i to i64                ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ii
  %i.ik = load i32, ptr %i.ih, align 4, !tbaa !1682, !noalias !13552
  %i.il = zext i32 %i.ik to i64
  %gepdiff.i.i.i = sub nsw i64 %i.il, %i.ii
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i

bb.av:                                            ; preds = %bb.i
  %i.im = load i32, ptr %i.u, align 4, !tbaa !1682, !noalias !13554
  %i.in = sub i32 %i.im, %i.bq
  %i.io = load i32, ptr %i.y, align 4, !tbaa !1682, !noalias !13554
  %i.ip = sub i32 %i.io, %i.bq
  %..i.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.in, i32 %i.ip)
  %i.iq = zext i32 %..i.i.i.i.i to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE7rawJsonES7_NS5_9json_typeE.exit.i.i: ; preds = %bb.av, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.iq, %bb.av ], [ %gepdiff347.i.i.i, %.loopexit.i.i.i ], [ %gepdiff.i.i.i, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i ] ; 8 uses
  %.sroa.10.0.i.i = phi ptr [ %i.bs, %bb.av ], [ %i.ey, %.loopexit.i.i.i ], [ %i.ij, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i.i ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2777, !nonnull !1750, !align !1790
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !2476 ; 9 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !3845, !nonnull !1750, !align !2173
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !1682
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !1671
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(112) %i.it, i32 noundef %i.iw), !inline_history !13536
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
  %i.jd = load <4 x i64>, ptr %i.jc, align 1, !tbaa !1681 ; 3 uses
  %i.je = bitcast <4 x i64> %i.jd to <32 x i8>
  %4 = shufflevector <4 x i64> %i.jd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %5 = bitcast <2 x i64> %4 to <16 x i8>
  %i.jf = icmp ugt <16 x i8> %5, splat (i8 -128)
  %i.jg = sext <16 x i1> %i.jf to <16 x i8>
  %i.jh = icmp ugt <32 x i8> %i.je, splat (i8 -128)
  %i.ji = sext <32 x i1> %i.jh to <32 x i8>
  %i.jj = bitcast <32 x i8> %i.ji to <8 x i32>
  %i.jk = bitcast <16 x i8> %i.jg to <4 x i32>
  %i.jl = shufflevector <4 x i32> %i.jk, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jn = bitcast <8 x i32> %i.jm to <4 x i64>
  %i.jo = bitcast <4 x i64> %i.jd to <32 x i8>    ; 2 uses
  %i.jp = icmp eq <32 x i8> %i.jo, splat (i8 -128)
  %i.jq = icmp eq <32 x i8> %i.jo, splat (i8 92)
  %i.jr = or <32 x i1> %i.jq, %i.jp
  %i.js = sext <32 x i1> %i.jr to <32 x i8>
  %i.jt = bitcast <32 x i8> %i.js to <4 x i64>
  %i.ju = or <4 x i64> %i.jn, %i.jt               ; 2 uses
  %i.jv = call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.ju, <4 x i64> %i.ju)
  %.not.i.i.i38.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i.i38.i.i, label %.loopexit.i.i, label %bb.aw, !llvm.loop !257

bb.ay:                                            ; preds = %.lr.ph.i40.i.i
  %i.jw = add nuw i64 %.126.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jw, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i, label %.lr.ph.i40.i.i, !llvm.loop !258

.lr.ph.i40.i.i:                                   ; preds = %.preheader.i.i.i, %bb.ay
  %.126.i.i.i = phi i64 [ %i.jw, %bb.ay ], [ %.013.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 %.126.i.i.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !1681 ; 2 uses
  %.not17.i.i.i = icmp slt i8 %i.jy, 0
  %i.jz = icmp eq i8 %i.jy, 92
  %or.cond.i.i.i = or i1 %.not17.i.i.i, %i.jz
  br i1 %or.cond.i.i.i, label %.loopexit.i.i, label %bb.ay

.loopexit.i.i:                                    ; preds = %bb.ax, %.lr.ph.i40.i.i
  %i.ka = call noundef i64 @_ZN8facebook5velox23unescapeSizeForJsonCastEPKcm(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.0.0.i.i) ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !2018
  %i.kd = icmp ugt i64 %i.ka, %i.kc
  br i1 %i.kd, label %bb.az, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.az:                                            ; preds = %.loopexit.i.i
  %i.ke = load ptr, ptr %i.iz, align 8, !tbaa !1671
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, i64 noundef %i.ka), !inline_history !13537
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.az, %.loopexit.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  store i64 %i.ka, ptr %i.kh, align 8, !tbaa !2017
  %i.ki = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !2019
  call void @_ZN8facebook5velox19unescapeForJsonCastEPKcmPc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.0.0.i.i, ptr noundef %i.kj)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i: ; preds = %bb.ay, %.preheader.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !2017 ; 2 uses
  %i.km = add i64 %i.kl, %.sroa.0.0.i.i           ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !2018
  %i.kp = icmp ugt i64 %i.km, %i.ko
  br i1 %i.kp, label %bb.ba, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i

bb.ba:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i
  %i.kq = load ptr, ptr %i.iz, align 8, !tbaa !1671
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(96) %i.iz, i64 noundef %i.km), !inline_history !13538
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i: ; preds = %bb.ba, %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i.i
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !2017
  %.not.i41.i.i = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i41.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !2019
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr align 1 %.sroa.10.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

bb.bc:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  switch i8 %.sroa.0107.0.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit [
    i8 4, label %bb.bd
    i8 3, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i
    i8 5, label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.kw = icmp eq ptr %i.ac, %i.q                 ; 2 uses
  br i1 %i.kw, label %bb.be, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.kx = icmp eq i32 %i.m, 1
  call void @llvm.assume(i1 %i.kx), !noalias !13555
  %i.ky = load i32, ptr %i.ac, align 4, !tbaa !1682, !noalias !13555
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.kz
  %.pre.i.i = load i8, ptr %i.la, align 1, !tbaa !1681, !noalias !13555
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.be, %bb.bd
  %i.lb = phi i8 [ %.pre.i.i, %bb.be ], [ %i.bt, %bb.bd ]
  %i.lc = phi i64 [ %i.kz, %bb.be ], [ %i.br, %bb.bd ]
  %.not.i.i.i = icmp eq i8 %i.lb, 34
  br i1 %.not.i.i.i, label %bb.bf, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bf:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !3768, !noalias !13555 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !3776, !noalias !13555
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.bg, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.kw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.li = icmp eq i32 %i.m, 1
  call void @llvm.assume(i1 %i.li), !noalias !13555
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.lj, ptr %i.ab, align 8, !tbaa !3916, !noalias !13555
  store i32 0, ptr %i.k, align 4, !tbaa !3914, !noalias !13555
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lk = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.lc
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.lm = load ptr, ptr %i.le, align 8, !tbaa !1671, !noalias !13556
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !noalias !13556
  %i.lp = call noundef ptr %i.lo(ptr noundef nonnull align 8 dereferenceable(48) %i.le, ptr noundef nonnull %i.ll, ptr noundef %i.h, i1 noundef zeroext true) #38, !noalias !13556, !inline_history !13543 ; 3 uses
  %.not.i33.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i33.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvE10commitNullEv.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lq = load ptr, ptr %i.f, align 8, !tbaa !1819, !noalias !13556 ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = sub i64 %i.lr, %i.ls
  store ptr %i.lp, ptr %i.f, align 8, !tbaa !1819, !noalias !13556
  br label %bb.bk

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i: ; preds = %bb.bc, %bb.bc
  %i.lu = load i32, ptr %i.u, align 4, !tbaa !1682, !noalias !13557
  %i.lv = sub i32 %i.lu, %i.bq
  %i.lw = load i32, ptr %i.y, align 4, !tbaa !1682, !noalias !13557
  %i.lx = sub i32 %i.lw, %i.bq
  %..i.i.i.i = call i32 @llvm.umin.i32(i32 %i.lv, i32 %i.lx)
  %i.ly = zext i32 %..i.i.i.i to i64
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i, %bb.bj
  %.sroa.049.1.i.i = phi i64 [ %i.lt, %bb.bj ], [ %i.ly, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i ] ; 3 uses
  %.sroa.751.1.i.i = phi ptr [ %i.lq, %bb.bj ], [ %i.bs, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE10take_valueEv.exit.i.i ]
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !2777, !nonnull !1750, !align !1790
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !2476 ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !3845, !nonnull !1750, !align !2173
  %i.me = load i32, ptr %i.md, align 4, !tbaa !1682
  %i.mf = load ptr, ptr %i.mb, align 8, !tbaa !1671
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(112) %i.mb, i32 noundef %i.me), !inline_history !13536
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !2017 ; 2 uses
  %i.mj = add i64 %i.mi, %.sroa.049.1.i.i         ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !2018
  %i.mm = icmp ugt i64 %i.mj, %i.ml
  br i1 %i.mm, label %bb.bl, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !1671
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(96) %i.mn, i64 noundef %i.mj), !inline_history !13538
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i: ; preds = %bb.bl, %bb.bk
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !2017
  %.not.i43.i.i = icmp eq i64 %.sroa.049.1.i.i, 0
  br i1 %.not.i43.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !2019
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr align 1 %.sroa.751.1.i.i, i64 %.sroa.049.1.i.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIRN8simdjson8fallback8ondemand8documentEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES7_RNS0_4exec13GenericWriterE.exit: ; preds = %bb.bm, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i42.i.i, %bb.bb, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.mu = load ptr, ptr %1, align 8, !tbaa !1671
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE7EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  store ptr %i.cy, ptr %i.cd, align 8, !tbaa !3916, !noalias !13881
  %i.cz = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i.i.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i), !noalias !13882
  store i32 %i.cz, ptr %i.cs, align 4, !tbaa !3914, !noalias !13881
  %i.da = load i32, ptr %.sroa.0.sroa.4.0.copyload, align 4, !tbaa !1682, !noalias !13883
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  br label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.s:                                             ; preds = %._crit_edge266.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  store ptr %i.dd, ptr %i.cd, align 8, !tbaa !3916, !noalias !13883
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !1681, !noalias !13883
  %.not.i12.i.i = icmp eq i8 %i.de, 34
  br i1 %.not.i12.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.df, align 8, !tbaa !3967, !noalias !13883
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  store ptr null, ptr %i.dg, align 8, !tbaa !3764, !noalias !13883
  br label %.thread.i.i

bb.u:                                             ; preds = %bb.s
  %i.dh = icmp ugt ptr %i.dd, %.sroa.0.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.dh), !noalias !13884
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  store ptr %i.di, ptr %i.cd, align 8, !tbaa !3916, !noalias !13883
  %i.dj = load i32, ptr %i.dd, align 4, !tbaa !1682, !noalias !13883
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !1681, !noalias !13883
  %.not.i13.i.i = icmp eq i8 %i.dm, 58
  br i1 %.not.i13.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.dn, align 8, !tbaa !3967, !noalias !13883
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  store ptr null, ptr %i.do, align 8, !tbaa !3764, !noalias !13883
  br label %.thread.i.i

bb.w:                                             ; preds = %bb.u
  %i.dp = add nuw nsw i32 %.sroa.0.sroa.2.0.copyload, 1 ; 2 uses
  %or.cond.i.i.i34.i = icmp samesign ult i32 %.sroa.0.sroa.2.0.copyload, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i.i34.i), !noalias !13884
  store i32 %i.dp, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  %.pre = load i32, ptr %i.di, align 4, !tbaa !1682, !noalias !13883
  %.pre13 = zext i32 %.pre to i64
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i: ; preds = %._crit_edge266.i.i, %bb.w
  %.pre-phi = phi i64 [ %i.cv, %._crit_edge266.i.i ], [ %.pre13, %bb.w ]
  %i.dq = phi i32 [ %.sroa.0.sroa.2.0.copyload, %._crit_edge266.i.i ], [ %i.dp, %bb.w ] ; 9 uses
  %i.dr = phi ptr [ %i.cp, %._crit_edge266.i.i ], [ %i.di, %bb.w ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 10 uses
  store ptr %i.ds, ptr %i.cd, align 8, !tbaa !3916, !noalias !13883
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !1681, !noalias !13883
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
  store i32 %i.dv, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  %.not6.i.i.i.i = icmp samesign ugt i32 %i.dq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not6.i.i.i.i, label %bb.ab, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.y:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !1682, !noalias !13883
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1681, !noalias !13883
  %i.ea = icmp eq i8 %i.dz, 58
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.cd, align 8, !tbaa !3916, !noalias !13883
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.ec = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  %.not7.i.i.i.i = icmp samesign ugt i32 %i.dq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not7.i.i.i.i, label %bb.ab, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i
  %i.ed = phi i32 [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.dq, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ec, %bb.aa ], [ %i.dq, %bb.z ], [ %i.dv, %bb.x ]
  %i.ee = phi ptr [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread.i.i ], [ %i.ds, %bb.aa ], [ %i.eb, %bb.z ], [ %i.ds, %bb.x ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !3764, !noalias !13883
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !3768, !noalias !13883 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !3776, !noalias !13883
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.em = zext i32 %i.ek to i64                   ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !2163, !noalias !13883
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  %i.ep = icmp ult ptr %i.ee, %i.eo
  br i1 %i.ep, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ae
  %i.eq = phi i32 [ %i.ez, %bb.ae ], [ %i.ed, %bb.ab ] ; 4 uses
  %i.er = phi ptr [ %i.es, %bb.ae ], [ %i.ee, %bb.ab ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 4 uses
  store ptr %i.es, ptr %i.cd, align 8, !tbaa !3916, !noalias !13883
  %i.et = load i32, ptr %i.er, align 4, !tbaa !1682, !noalias !13883
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !1681, !noalias !13883
  switch i8 %i.ew, label %bb.ae [
    i8 91, label %bb.ac
    i8 123, label %bb.ac
    i8 93, label %bb.ad
    i8 125, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ex = add nsw i32 %i.eq, 1                    ; 2 uses
  store i32 %i.ex, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ey = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  %.not8.i.i.i.i = icmp sgt i32 %i.eq, %.sroa.0.sroa.2.0.copyload
  br i1 %.not8.i.i.i.i, label %bb.ae, label %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i.i
  %i.ez = phi i32 [ %i.eq, %.lr.ph.i.i ], [ %i.ey, %bb.ad ], [ %i.ex, %bb.ac ]
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !2163, !noalias !13883
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.em
  %i.fc = icmp ult ptr %i.es, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !256

._crit_edge.i.i:                                  ; preds = %bb.ae, %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 32
  store i32 3, ptr %i.fd, align 8, !tbaa !3967, !noalias !13883
  store ptr null, ptr %i.ef, align 8, !tbaa !3764, !noalias !13883
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.v, %bb.t
  store i32 0, ptr %i.cs, align 4, !tbaa !3914, !noalias !13883
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i: ; preds = %bb.ad, %bb.aa, %bb.x, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i
  %i.fe = phi ptr [ %i.dc, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.d, %bb.aa ], [ %i.d, %bb.x ], [ %i.d, %bb.ad ]
  %i.ff = phi i64 [ %i.db, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.c, %bb.aa ], [ %i.c, %bb.x ], [ %i.c, %bb.ad ]
  %i.fg = phi ptr [ %i.cy, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge.i.i ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.x ], [ %i.es, %bb.ad ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !1682, !noalias !13883
  %i.fi = zext i32 %i.fh to i64
  %gepdiff.i.i = sub nsw i64 %i.fi, %i.ff
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i

bb.af:                                            ; preds = %bb.b
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !1682, !noalias !13885
  %i.fl = sub i32 %i.fk, %i.b
  %i.fm = zext i32 %i.fl to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE7rawJsonES6_NS5_9json_typeE.exit.i: ; preds = %bb.af, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i, %.loopexit.i.i
  %.sroa.053.0.i = phi i64 [ %i.fm, %bb.af ], [ %gepdiff262.i.i, %.loopexit.i.i ], [ %gepdiff.i.i, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i ] ; 8 uses
  %.sroa.10.0.i = phi ptr [ %i.d, %bb.af ], [ %i.ca, %.loopexit.i.i ], [ %i.fe, %_ZN8simdjson8fallback8ondemand6object7consumeEv.exit.i.i ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !2777, !nonnull !1750, !align !1790
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !2476 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !3845, !nonnull !1750, !align !2173
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1682
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !1671
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(112) %i.fp, i32 noundef %i.fs), !inline_history !13867
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
  %i.fz = load <4 x i64>, ptr %i.fy, align 1, !tbaa !1681 ; 3 uses
  %i.ga = bitcast <4 x i64> %i.fz to <32 x i8>
  %2 = shufflevector <4 x i64> %i.fz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %i.gb = icmp ugt <16 x i8> %3, splat (i8 -128)
  %i.gc = sext <16 x i1> %i.gb to <16 x i8>
  %i.gd = icmp ugt <32 x i8> %i.ga, splat (i8 -128)
  %i.ge = sext <32 x i1> %i.gd to <32 x i8>
  %i.gf = bitcast <32 x i8> %i.ge to <8 x i32>
  %i.gg = bitcast <16 x i8> %i.gc to <4 x i32>
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gj = bitcast <8 x i32> %i.gi to <4 x i64>
  %i.gk = bitcast <4 x i64> %i.fz to <32 x i8>    ; 2 uses
  %i.gl = icmp eq <32 x i8> %i.gk, splat (i8 -128)
  %i.gm = icmp eq <32 x i8> %i.gk, splat (i8 92)
  %i.gn = or <32 x i1> %i.gm, %i.gl
  %i.go = sext <32 x i1> %i.gn to <32 x i8>
  %i.gp = bitcast <32 x i8> %i.go to <4 x i64>
  %i.gq = or <4 x i64> %i.gj, %i.gp               ; 2 uses
  %i.gr = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.gq, <4 x i64> %i.gq)
  %.not.i.i.i36.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i36.i, label %.loopexit.i, label %bb.ag, !llvm.loop !257

bb.ai:                                            ; preds = %.lr.ph.i38.i
  %i.gs = add nuw i64 %.126.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gs, %.sroa.053.0.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i, label %.lr.ph.i38.i, !llvm.loop !258

.lr.ph.i38.i:                                     ; preds = %.preheader.i.i, %bb.ai
  %.126.i.i = phi i64 [ %i.gs, %bb.ai ], [ %.013.i.i, %.preheader.i.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.126.i.i
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !1681 ; 2 uses
  %.not17.i.i = icmp slt i8 %i.gu, 0
  %i.gv = icmp eq i8 %i.gu, 92
  %or.cond.i.i = or i1 %.not17.i.i, %i.gv
  br i1 %or.cond.i.i, label %.loopexit.i, label %bb.ai

.loopexit.i:                                      ; preds = %bb.ah, %.lr.ph.i38.i
  %i.gw = tail call noundef i64 @_ZN8facebook5velox23unescapeSizeForJsonCastEPKcm(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.053.0.i) ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !2018
  %i.gz = icmp ugt i64 %i.gw, %i.gy
  br i1 %i.gz, label %bb.aj, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i

bb.aj:                                            ; preds = %.loopexit.i
  %i.ha = load ptr, ptr %i.fv, align 8, !tbaa !1671
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.gw), !inline_history !13868
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i: ; preds = %bb.aj, %.loopexit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i64 %i.gw, ptr %i.hd, align 8, !tbaa !2017
  %i.he = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !2019
  tail call void @_ZN8facebook5velox19unescapeForJsonCastEPKcmPc(ptr noundef nonnull %.sroa.10.0.i, i64 noundef %.sroa.053.0.i, ptr noundef %i.hf)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i: ; preds = %bb.ai, %.preheader.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fp, i64 32 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !2017 ; 2 uses
  %i.hi = add i64 %i.hh, %.sroa.053.0.i           ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !2018
  %i.hl = icmp ugt i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.ak, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.ak:                                            ; preds = %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i
  %i.hm = load ptr, ptr %i.fv, align 8, !tbaa !1671
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  tail call void %i.ho(ptr noundef nonnull align 8 dereferenceable(96) %i.fv, i64 noundef %i.hi), !inline_history !13869
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.ak, %_ZN8facebook5velox25needNormalizeForJsonParseEPKcm.exit.i
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !2017
  %.not.i39.i = icmp eq i64 %.sroa.053.0.i, 0
  br i1 %.not.i39.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !2019
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr align 1 %.sroa.10.0.i, i64 %.sroa.053.0.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  switch i8 %.sroa.076.0.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit [
    i8 4, label %bb.an
    i8 3, label %bb.aq
    i8 5, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !3916, !noalias !13886 ; 3 uses
  %i.hu = icmp eq ptr %i.ht, %.sroa.0.sroa.4.0.copyload
  br i1 %i.hu, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, label %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i: ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 36 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3914, !noalias !13886
  %i.hx = icmp eq i32 %i.hw, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.hx), !noalias !13886
  %i.hy = icmp sgt i32 %.sroa.0.sroa.2.0.copyload, 0
  tail call void @llvm.assume(i1 %i.hy), !noalias !13886
  %i.hz = load i32, ptr %i.ht, align 4, !tbaa !1682, !noalias !13886
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !1681, !noalias !13886
  %.not.i.i = icmp eq i8 %i.ic, 34
  br i1 %.not.i.i, label %bb.ao, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i: ; preds = %bb.an
  %.not.i122.i = icmp eq i8 %i.e, 34
  br i1 %.not.i122.i, label %.thread.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

bb.ao:                                            ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store ptr %i.id, ptr %i.hs, align 8, !tbaa !3916, !noalias !13886
  %i.ie = add nsw i32 %.sroa.0.sroa.2.0.copyload, -1
  %or.cond.i.i.i.i = icmp ne i32 %.sroa.0.sroa.2.0.copyload, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i), !noalias !13886
  store i32 %i.ie, ptr %i.hv, align 4, !tbaa !3914, !noalias !13886
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i
  %i.if = phi i64 [ %i.c, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i ], [ %i.ia, %bb.ao ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !3764, !noalias !13887
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 24 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !3768, !noalias !13888 ; 2 uses
  %i.in = load ptr, ptr %i.ik, align 8, !tbaa !1819, !noalias !13888
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !1671, !noalias !13888
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !13888
  %i.ir = tail call noundef ptr %i.iq(ptr noundef nonnull align 8 dereferenceable(48) %i.im, ptr noundef nonnull %i.ih, ptr noundef %i.in, i1 noundef zeroext true) #38, !noalias !13888, !inline_history !13876 ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i1.i.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread.i
  %i.is = load ptr, ptr %i.ik, align 8, !tbaa !1819, !noalias !13888 ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  store ptr %i.ir, ptr %i.ik, align 8, !tbaa !1819, !noalias !13888
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.am
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.4.0.copyload, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !1682
  %i.iy = sub i32 %i.ix, %i.b
  %i.iz = zext i32 %i.iy to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.045.1.i = phi i64 [ %i.iv, %bb.ap ], [ %i.iz, %bb.aq ] ; 3 uses
  %.sroa.7.1.i = phi ptr [ %i.is, %bb.ap ], [ %i.d, %bb.aq ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !2777, !nonnull !1750, !align !1790
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !2476 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !3845, !nonnull !1750, !align !2173
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !1682
  %i.jg = load ptr, ptr %i.jc, align 8, !tbaa !1671
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(112) %i.jc, i32 noundef %i.jf), !inline_history !13867
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 32 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !2017 ; 2 uses
  %i.jk = add i64 %i.jj, %.sroa.045.1.i           ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !2018
  %i.jn = icmp ugt i64 %i.jk, %i.jm
  br i1 %i.jn, label %bb.as, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i

bb.as:                                            ; preds = %bb.ar
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1671
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  tail call void %i.jr(ptr noundef nonnull align 8 dereferenceable(96) %i.jo, i64 noundef %i.jk), !inline_history !13869
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i: ; preds = %bb.as, %bb.ar
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !2017
  %.not.i41.i = icmp eq i64 %.sroa.045.1.i, 0
  br i1 %.not.i41.i, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !2019
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %.sroa.7.1.i, i64 %.sroa.045.1.i, i1 false)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE7EvE5applyES6_RNS0_4exec13GenericWriterE.exit: ; preds = %bb.d, %bb.e, %._crit_edge265.i.i, %bb.p, %bb.q, %.thread.i.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %bb.al, %bb.am, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i, %.thread.i, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i, %bb.at
  %.5.i = phi i32 [ 0, %bb.al ], [ 17, %bb.am ], [ 3, %._crit_edge265.i.i ], [ 5, %.thread.i ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i ], [ 17, %bb.d ], [ 3, %.thread.i.i ], [ 17, %bb.e ], [ 17, %bb.q ], [ 17, %bb.p ], [ 0, %bb.at ], [ 0, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i40.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.i ], [ 17, %_ZN8simdjson8fallback8ondemand14value_iterator11peek_scalarEPKc.exit.i.thread.i ]
  ret i32 %.5.i
}
end_hunk_1
