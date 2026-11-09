Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset?download=true
inline.NumInlined: 7658
inline.NumDeleted: 3375
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2OT4cvar20calculate_cvt_deltasEj10hb_array_tIiEjPKNS_18TupleVariationDataINS_7NumTypeILb1EtLj2EEEEEPKvjR11hb_vector_tIfLb0EE:bb.a
  %or.cond137.i = or i1 %i.ea, %i.eb
  br i1 %or.cond137.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = icmp slt i32 %i.dm, %i.dk
  br i1 %i.ec, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not133.i = icmp eq i16 %i.dj, %i.dp
  br i1 %.not133.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = sub nsw i32 %i.dm, %i.dr
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = sub nsw i32 %i.dk, %i.dr
  %i.eg = sitofp i32 %i.ef to double
  %i.eh = fdiv double %i.ee, %i.eg
  %i.ei = fmul double %.092.i297, %i.eh
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  %.not132.i = icmp eq i16 %i.dj, %i.dt
  br i1 %.not132.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = sub nsw i32 %i.dv, %i.dm
  %i.ek = sitofp i32 %i.ej to double
  %i.el = sub nsw i32 %i.dv, %i.dk
  %i.em = sitofp i32 %i.el to double
  %i.en = fdiv double %i.ek, %i.em
  %i.eo = fmul double %.092.i297, %i.en
  br label %bb.ah

bb.af:                                            ; preds = %bb.w
  %.sroa.speculated156 = call i32 @llvm.smin.i32(i32 %i.dk, i32 0)
  %i.ep = icmp slt i32 %i.dm, %.sroa.speculated156
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %i.eq = icmp sgt i32 %i.dm, %.sroa.speculated
  %or.cond267 = or i1 %i.ep, %i.eq
  br i1 %or.cond267, label %.critedge7.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = sitofp i32 %i.dm to double
  %i.es = sitofp i16 %i.di to double
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fmul double %.092.i297, %i.et
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge7.i.thread, %bb.ag, %bb.v, %bb.ab, %bb.x, %bb.y, %bb.ac, %bb.ad, %bb.ae
  %.3.i434 = phi i32 [ %.3.i433, %bb.y ], [ %.3.i433, %bb.x ], [ %.3.i433, %bb.ac ], [ %.3.i433, %bb.ad ], [ %.3.i433, %bb.ae ], [ %.3.i433, %bb.ab ], [ %.3.i433, %bb.v ], [ %.3.i433, %bb.ag ], [ %.0.i298, %.critedge7.i.thread ]
  %.6111.i.ph = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.ab ], [ %.3108.i296, %bb.v ], [ %.3108.i296, %bb.ag ], [ %.3108.i296, %.critedge7.i.thread ] ; 2 uses
  %.5.i.ph = phi double [ %.092.i297, %bb.y ], [ %.092.i297, %bb.x ], [ %i.ei, %bb.ac ], [ %.092.i297, %bb.ad ], [ %i.eo, %bb.ae ], [ %.092.i297, %bb.ab ], [ %.092.i297, %bb.v ], [ %i.eu, %bb.ag ], [ %.092.i297, %.critedge7.i.thread ] ; 2 uses
  %i.ev = add nuw i32 %.3.i434, 1                 ; 2 uses
  %i.ew = icmp ult i32 %i.ev, %0
  br i1 %i.ew, label %.lr.ph299, label %.critedge7.i, !llvm.loop !2264

.critedge7.i:                                     ; preds = %bb.ah, %bb.af, %bb.u, %.critedge.i, %bb.t, %bb.r
  %.3108.i279 = phi ptr [ %.2107.i204, %bb.r ], [ %.3108.i296, %bb.t ], [ %.3108.i296, %.critedge.i ], [ %.6111.i.ph, %bb.ah ], [ %.3108.i296, %bb.af ], [ %.3108.i296, %bb.u ] ; 3 uses
  %.6.i = phi double [ 1.000000e+00, %bb.r ], [ %.092.i297, %bb.t ], [ %.092.i297, %.critedge.i ], [ %.5.i.ph, %bb.ah ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.u ] ; 4 uses
  %.not134.i = icmp eq ptr %.3108.i279, null
  br i1 %.not134.i, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.i
  %i.ex = load i32, ptr %.3108.i279, align 4, !tbaa !2281
  %.not.i54 = icmp ult i32 %i.bh, %i.ex
  br i1 %.not.i54, label %bb.aj, label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, !prof !131

bb.aj:                                            ; preds = %bb.ai
  %i.ey = fptrunc double %.6.i to float
  %i.ez = getelementptr inbounds nuw i8, ptr %.3108.i279, i64 4
  %i.fa = zext nneg i32 %i.bh to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = fmul float %i.ey, f0x4E800000
  %i.fd = fadd float %i.fc, 5.000000e-01
  %i.fe = call noundef float @llvm.floor.f32(float %i.fd)
  %i.ff = fptosi float %i.fe to i32
  store atomic i32 %i.ff, ptr %i.fb monotonic, align 4
  br label %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit

_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.z, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit53.thread, %bb.j, %bb.k, %bb.i, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit53, %.thread194, %bb.aj, %bb.ai, %.critedge7.i
  %.4116.i = phi double [ 0.000000e+00, %bb.j ], [ %.6.i, %bb.aj ], [ %i.ce, %.thread194 ], [ %.6.i, %.critedge7.i ], [ %.6.i, %bb.ai ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit53 ], [ 0.000000e+00, %bb.i ], [ %i.bp, %bb.k ], [ 0.000000e+00, %_ZNK2OT17hb_scalar_cache_t3getEjPf.exit53.thread ], [ 0.000000e+00, %bb.z ]
  %i.fg = fptrunc double %.4116.i to float        ; 3 uses
  %i.fh = fcmp oeq float %i.fg, 0.000000e+00
  %.pre399 = load i16, ptr %.sroa.34.0, align 1, !tbaa !130 ; 2 uses
  br i1 %i.fh, label %.thread239, label %bb.ak

bb.ak:                                            ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.fi = load i16, ptr %i.av, align 1, !tbaa !130 ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 0
  %i.fk = call i16 @llvm.bswap.i16(i16 %i.fi)
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 %i.fl
  %.0.i.i.i68 = select i1 %i.fj, ptr @_hb_NullPool, ptr %i.fm, !prof !149
  %i.fn = zext i32 %.sroa.13138.0 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i68, i64 %i.fn ; 5 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !548
  %i.fp = call noundef i16 @llvm.bswap.i16(i16 %.pre399) ; 2 uses
  %.not.i69 = icmp ugt ptr %4, %i.fo
  br i1 %.not.i69, label %.thread250, label %bb.al, !prof !252

bb.al:                                            ; preds = %bb.ak
  %i.fq = zext i16 %i.fp to i32
  %.not6.i = icmp ule ptr %i.fo, %i.aw
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.ax, %i.fr
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = icmp ule i32 %i.fq, %i.ft
  %or.cond = and i1 %.not6.i, %i.fu
  br i1 %or.cond, label %bb.am, label %.thread250, !prof !2285

bb.am:                                            ; preds = %bb.al
  %i.fv = zext i16 %i.fp to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fv ; 5 uses
  %i.fx = load i16, ptr %i.be, align 1, !tbaa !130
  %i.fy = and i16 %i.fx, 32
  %.not265 = icmp eq i16 %i.fy, 0
  br i1 %.not265, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fz = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.fw)
  br i1 %i.fz, label %bb.ao, label %.thread250

bb.ao:                                            ; preds = %bb.an, %bb.am
  %..sroa.phi = phi ptr [ %..sroa.gep, %bb.an ], [ %..sroa.gep122, %bb.am ] ; 2 uses
  %..sroa.phi126 = phi ptr [ %..sroa.gep127, %bb.an ], [ %..sroa.gep128, %bb.am ]
  %i.ga = load i32, ptr %..sroa.phi, align 4, !tbaa !182 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0                    ; 2 uses
  %.48 = select i1 %i.gb, i32 %3, i32 %i.ga       ; 8 uses
  %i.gc = icmp slt i32 %.48, 0
  %i.gd = icmp slt i32 %.sroa.0.0, 0
  %or.cond261 = select i1 %i.gc, i1 true, i1 %i.gd, !prof !212
  br i1 %or.cond261, label %.thread250, label %bb.ap, !prof !212

bb.ap:                                            ; preds = %bb.ao
  %.not.i91 = icmp samesign ugt i32 %.48, %.sroa.0.0
  br i1 %.not.i91, label %.preheader.i, label %bb.av, !prof !149

.preheader.i:                                     ; preds = %bb.ap, %.preheader.i
  %.043.i = phi i32 [ %i.gg, %.preheader.i ], [ %.sroa.0.0, %bb.ap ] ; 2 uses
  %i.ge = lshr i32 %.043.i, 1
  %i.gf = add nuw i32 %.043.i, 8
  %i.gg = add nuw i32 %i.gf, %i.ge                ; 8 uses
  %i.gh = icmp ugt i32 %.48, %i.gg
  br i1 %i.gh, label %.preheader.i, label %.thread.i, !llvm.loop !2265

.thread.i:                                        ; preds = %.preheader.i
  %i.gi = icmp ugt i32 %i.gg, 1073741823
  br i1 %i.gi, label %.critedge.i94, label %bb.aq, !prof !149

.critedge.i94:                                    ; preds = %.thread.i
  %i.gj = xor i32 %.sroa.0.0, -1
  br label %.thread250

bb.aq:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not49.i, label %bb.ar, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i.i = icmp eq ptr %.sroa.13.0, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = shl nuw i32 %i.gg, 2
  %i.gl = zext i32 %i.gk to i64
  %i.gm = call ptr @hb_malloc(i64 noundef %i.gl) #16 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i, label %bb.at, !prof !149

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i.i = icmp eq i32 %.sroa.7.0, 0
  br i1 %.not.i.i.i.i, label %.lr.ph333.preheader, label %bb.au, !prof !149

bb.au:                                            ; preds = %bb.at
  %i.gn = zext nneg i32 %.sroa.7.0 to i64
  %i.go = shl nuw nsw i64 %i.gn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gm, ptr nonnull readonly align 1 %.sroa.13.0, i64 %i.go, i1 false), !alias.scope !2286
  br label %.lr.ph333.preheader

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %bb.ar, %bb.aq
  %i.gp = phi ptr [ null, %bb.ar ], [ %.sroa.13.0, %bb.aq ]
  %i.gq = shl nuw i32 %i.gg, 2
  %i.gr = zext i32 %i.gq to i64
  %i.gs = call ptr @hb_realloc(ptr noundef %i.gp, i64 noundef %i.gr) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.gs, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i, label %.lr.ph333.preheader, !prof !215

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i: ; preds = %bb.as, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %i.gt = xor i32 %.sroa.0.0, -1
  br label %.thread250

bb.av:                                            ; preds = %bb.ap
  %.not340 = icmp eq i32 %.48, 0
  br i1 %.not340, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit._crit_edge, label %.lr.ph333.preheader

.lr.ph333.preheader:                              ; preds = %bb.at, %bb.au, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %bb.av
  %.sroa.13.3.ph441 = phi ptr [ %.sroa.13.0, %bb.av ], [ %i.gm, %bb.au ], [ %i.gs, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.gm, %bb.at ] ; 23 uses
  %.sroa.0.3.ph439 = phi i32 [ %.sroa.0.0, %bb.av ], [ %i.gg, %bb.au ], [ %i.gg, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.gg, %bb.at ] ; 6 uses
  %.sroa.13.3.ph441517 = ptrtoaddr ptr %.sroa.13.3.ph441 to i64
  %.pre394 = load ptr, ptr %i.b, align 8, !tbaa !548
  %invariant.op = add i64 -2, %.sroa.13.3.ph441517
  br label %.lr.ph333

.lr.ph335:                                        ; preds = %.loopexit
  %i.gu = fcmp une float %i.fg, 1.000000e+00
  %wide.trip.count388 = zext nneg i32 %.48 to i64
  br label %bb.bf

.lr.ph333:                                        ; preds = %.lr.ph333.preheader, %.loopexit
  %i.gv = phi ptr [ %i.mw, %.loopexit ], [ %.pre394, %.lr.ph333.preheader ] ; 3 uses
  %.0101.i332 = phi i32 [ %.9.i, %.loopexit ], [ 0, %.lr.ph333.preheader ] ; 11 uses
  %i.gw = ptrtoaddr ptr %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 13 uses
  %i.gy = icmp ugt ptr %i.gx, %i.fw
  br i1 %i.gy, label %.thread250, label %bb.aw, !prof !149

bb.aw:                                            ; preds = %.lr.ph333
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !548
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !550 ; 3 uses
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = and i32 %i.ha, 63                       ; 3 uses
  %i.hc = add nuw nsw i32 %i.hb, 1                ; 5 uses
  %i.hd = add nuw i32 %i.hc, %.0101.i332          ; 11 uses
  %i.he = icmp ugt i32 %i.hd, %.48
  br i1 %i.he, label %.thread250, label %bb.ax, !prof !149

bb.ax:                                            ; preds = %bb.aw
  %i.hf = lshr i32 %i.ha, 6
  switch i32 %i.hf, label %default.unreachable [
    i32 2, label %_ZL9hb_memsetPvij.exit
    i32 1, label %bb.ay
    i32 3, label %bb.bb
    i32 0, label %bb.bc
  ]

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.ax
  %i.hg = zext nneg i32 %.0101.i332 to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.hg
  %i.hi = shl nuw nsw i32 %i.hc, 2
  %i.hj = zext nneg i32 %i.hi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hh, i8 0, i64 %i.hj, i1 false)
  %.pre393 = load ptr, ptr %i.b, align 8, !tbaa !548
  br label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.hk = shl nuw nsw i32 %i.hc, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hl
  %i.hn = icmp ugt ptr %i.hm, %i.fw
  br i1 %i.hn, label %.thread250, label %bb.az, !prof !149

bb.az:                                            ; preds = %bb.ay
  %i.ho = icmp samesign ugt i32 %i.hb, 2
  br i1 %i.ho, label %.lr.ph323, label %.lr.ph328

.lr.ph323:                                        ; preds = %bb.az
  %i.hp = add nuw i32 %.0101.i332, 3
  br label %bb.ba

.preheader:                                       ; preds = %bb.ba
  store ptr %i.jk, ptr %i.b, align 8, !tbaa !548
  %i.hq = icmp ult i32 %i.jl, %i.hd
  br i1 %i.hq, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %bb.az, %.preheader
  %.1102.i.lcssa453 = phi i32 [ %i.jl, %.preheader ], [ %.0101.i332, %bb.az ]
  %.promoted330452 = phi ptr [ %i.jk, %.preheader ], [ %i.gx, %bb.az ] ; 3 uses
  %i.hr = zext i32 %.1102.i.lcssa453 to i64       ; 4 uses
  %wide.trip.count383 = zext nneg i32 %i.hd to i64
  %i.hs = zext nneg i32 %.0101.i332 to i64
  %i.ht = and i8 %i.gz, 63
  %i.hu = zext nneg i8 %i.ht to i64
  %i.hv = add nuw nsw i64 %i.hs, %i.hu
  %i.hw = add nuw nsw i64 %i.hv, 1
  %i.hx = sub nsw i64 %i.hw, %i.hr                ; 3 uses
  %min.iters.check = icmp ult i64 %i.hx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph328
  %n.vec = and i64 %i.hx, -8                      ; 4 uses
  %i.hy = add nsw i64 %n.vec, %i.hr
  %i.hz = shl nsw i64 %n.vec, 1
  %i.ia = getelementptr i8, ptr %.promoted330452, i64 %i.hz ; 2 uses
  %invariant.gep606 = getelementptr [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.hr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted330452, i64 %i.ib ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !130
  %wide.load514 = load <4 x i16>, ptr %i.ic, align 1, !tbaa !130
  %i.id = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ie = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load514)
  %i.if = sext <4 x i16> %i.id to <4 x i32>
  %i.ig = sext <4 x i16> %i.ie to <4 x i32>
  %gep607 = getelementptr [4 x i8], ptr %invariant.gep606, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %gep607, i64 16
  store <4 x i32> %i.if, ptr %gep607, align 4, !tbaa !128
  store <4 x i32> %i.ig, ptr %i.ih, align 4, !tbaa !128
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !2269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hx, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph328, %middle.block
  %indvars.iv380.ph = phi i64 [ %i.hr, %.lr.ph328 ], [ %i.hy, %middle.block ]
  %.ph = phi ptr [ %.promoted330452, %.lr.ph328 ], [ %i.ia, %middle.block ]
  br label %scalar.ph

bb.ba:                                            ; preds = %.lr.ph323, %bb.ba
  %i.ij = phi ptr [ %i.gx, %.lr.ph323 ], [ %i.jk, %bb.ba ] ; 5 uses
  %i.ik = phi i32 [ %i.hp, %.lr.ph323 ], [ %i.jm, %bb.ba ]
  %.1102.i322 = phi i32 [ %.0101.i332, %.lr.ph323 ], [ %i.jl, %bb.ba ] ; 5 uses
  %i.il = load i16, ptr %i.ij, align 1, !tbaa !130
  %i.im = call noundef i16 @llvm.bswap.i16(i16 %i.il)
  %i.in = sext i16 %i.im to i32
  %i.io = zext i32 %.1102.i322 to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.io
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !128
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.ir = load i16, ptr %i.iq, align 1, !tbaa !130
  %i.is = call noundef i16 @llvm.bswap.i16(i16 %i.ir)
  %i.it = sext i16 %i.is to i32
  %i.iu = add i32 %.1102.i322, 1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.iv
  store i32 %i.it, ptr %i.iw, align 4, !tbaa !128
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iy = load i16, ptr %i.ix, align 1, !tbaa !130
  %i.iz = call noundef i16 @llvm.bswap.i16(i16 %i.iy)
  %i.ja = sext i16 %i.iz to i32
  %i.jb = add i32 %.1102.i322, 2
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.jc
  store i32 %i.ja, ptr %i.jd, align 4, !tbaa !128
  %i.je = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.jf = load i16, ptr %i.je, align 1, !tbaa !130
  %i.jg = call noundef i16 @llvm.bswap.i16(i16 %i.jf)
  %i.jh = sext i16 %i.jg to i32
  %i.ji = zext i32 %i.ik to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.ji
  store i32 %i.jh, ptr %i.jj, align 4, !tbaa !128
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 4 uses
  %i.jl = add i32 %.1102.i322, 4                  ; 4 uses
  %i.jm = add i32 %.1102.i322, 7                  ; 2 uses
  %i.jn = icmp ult i32 %i.jm, %i.hd
  br i1 %i.jn, label %bb.ba, label %.preheader, !llvm.loop !2270

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %scalar.ph ], [ %indvars.iv380.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jo = phi ptr [ %i.jt, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 1, !tbaa !130
  %i.jq = call noundef i16 @llvm.bswap.i16(i16 %i.jp)
  %i.jr = sext i16 %i.jq to i32
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %indvars.iv380
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !128
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 2 ; 2 uses
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count383
  br i1 %exitcond384.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !2271

bb.bb:                                            ; preds = %bb.ax
  %i.ju = shl nuw nsw i32 %i.hc, 2
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.jv
  %i.jx = icmp ugt ptr %i.jw, %i.fw
  br i1 %i.jx, label %.thread250, label %.lr.ph318, !prof !149

.lr.ph318:                                        ; preds = %bb.bb
  %i.jy = zext nneg i32 %.0101.i332 to i64        ; 7 uses
  %i.jz = zext nneg i32 %i.hd to i64              ; 2 uses
  %i.ka = add nuw nsw i64 %i.jy, 1
  %i.kb = call i64 @llvm.umax.i64(i64 %i.jz, i64 %i.ka)
  %i.kc = sub nsw i64 %i.kb, %i.jy                ; 3 uses
  %min.iters.check519 = icmp ult i64 %i.kc, 8
  br i1 %min.iters.check519, label %scalar.ph518.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph318
  %i.kd = shl nuw nsw i64 %i.jy, 2
  %i.ke = sub i64 %i.kd, %i.gw
  %i.kf = add i64 %i.ke, %invariant.op
  %diff.check = icmp ult i64 %i.kf, 31
  br i1 %diff.check, label %scalar.ph518.preheader, label %vector.ph520

vector.ph520:                                     ; preds = %vector.memcheck
  %n.vec521 = and i64 %i.kc, -8                   ; 4 uses
  %i.kg = add nsw i64 %n.vec521, %i.jy            ; 2 uses
  %i.kh = shl nsw i64 %n.vec521, 2
  %i.ki = getelementptr i8, ptr %i.gx, i64 %i.kh  ; 2 uses
  %invariant.gep604 = getelementptr [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.jy
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next527, %vector.body522 ] ; 3 uses
  %i.kj = shl i64 %index523, 2
  %next.gep524 = getelementptr i8, ptr %i.gx, i64 %i.kj ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep524, i64 16
  %wide.load525 = load <4 x i32>, ptr %next.gep524, align 1, !tbaa !277
  %wide.load526 = load <4 x i32>, ptr %i.kk, align 1, !tbaa !277
  %i.kl = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load525)
  %i.km = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load526)
  %gep605 = getelementptr [4 x i8], ptr %invariant.gep604, i64 %index523 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %gep605, i64 16
  store <4 x i32> %i.kl, ptr %gep605, align 4, !tbaa !128
  store <4 x i32> %i.km, ptr %i.kn, align 4, !tbaa !128
  %index.next527 = add nuw i64 %index523, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next527, %n.vec521
  br i1 %i.ko, label %middle.block528, label %vector.body522, !llvm.loop !2272

middle.block528:                                  ; preds = %vector.body522
  %cmp.n529 = icmp eq i64 %i.kc, %n.vec521
  br i1 %cmp.n529, label %..loopexit268_crit_edge, label %scalar.ph518.preheader

scalar.ph518.preheader:                           ; preds = %vector.memcheck, %.lr.ph318, %middle.block528
  %indvars.iv377.ph = phi i64 [ %i.jy, %vector.memcheck ], [ %i.jy, %.lr.ph318 ], [ %i.kg, %middle.block528 ]
  %.ph546 = phi ptr [ %i.gx, %vector.memcheck ], [ %i.gx, %.lr.ph318 ], [ %i.ki, %middle.block528 ]
  br label %scalar.ph518

scalar.ph518:                                     ; preds = %scalar.ph518.preheader, %scalar.ph518
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %scalar.ph518 ], [ %indvars.iv377.ph, %scalar.ph518.preheader ] ; 2 uses
  %i.kp = phi ptr [ %i.kt, %scalar.ph518 ], [ %.ph546, %scalar.ph518.preheader ] ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 1, !tbaa !277
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %i.kq)
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %indvars.iv377
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !128
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 3 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next378, %i.jz
  br i1 %i.ku, label %scalar.ph518, label %..loopexit268_crit_edge, !llvm.loop !2273

bb.bc:                                            ; preds = %bb.ax
  %i.kv = zext nneg i32 %i.hc to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.kv
  %i.kx = icmp ugt ptr %i.kw, %i.fw
  br i1 %i.kx, label %.thread250, label %bb.bd, !prof !149

bb.bd:                                            ; preds = %bb.bc
  %i.ky = icmp samesign ugt i32 %i.hb, 2
  br i1 %i.ky, label %.lr.ph309, label %.lr.ph313

.lr.ph309:                                        ; preds = %bb.bd
  %i.kz = add nuw i32 %.0101.i332, 3
  br label %bb.be

.preheader269:                                    ; preds = %bb.be
  store ptr %i.mi, ptr %i.b, align 8, !tbaa !548
  %i.la = icmp ult i32 %i.mn, %i.hd
  br i1 %i.la, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %bb.bd, %.preheader269
  %.4.i.lcssa457 = phi i32 [ %i.mn, %.preheader269 ], [ %.0101.i332, %bb.bd ]
  %.promoted315456 = phi ptr [ %i.mi, %.preheader269 ], [ %i.gx, %bb.bd ] ; 3 uses
  %i.lb = zext i32 %.4.i.lcssa457 to i64          ; 4 uses
  %wide.trip.count = zext nneg i32 %i.hd to i64
  %i.lc = zext nneg i32 %.0101.i332 to i64
  %i.ld = and i8 %i.gz, 63
  %i.le = zext nneg i8 %i.ld to i64
  %i.lf = add nuw nsw i64 %i.lc, %i.le
  %i.lg = add nuw nsw i64 %i.lf, 1
  %i.lh = sub nsw i64 %i.lg, %i.lb                ; 3 uses
  %min.iters.check533 = icmp ult i64 %i.lh, 8
  br i1 %min.iters.check533, label %scalar.ph532.preheader, label %vector.ph534

vector.ph534:                                     ; preds = %.lr.ph313
  %n.vec535 = and i64 %i.lh, -8                   ; 4 uses
  %i.li = add nsw i64 %n.vec535, %i.lb
  %i.lj = getelementptr i8, ptr %.promoted315456, i64 %n.vec535 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.lb
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next541, %vector.body536 ] ; 3 uses
  %next.gep538 = getelementptr i8, ptr %.promoted315456, i64 %index537 ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep538, i64 4
  %wide.load539 = load <4 x i8>, ptr %next.gep538, align 1, !tbaa !2288
  %wide.load540 = load <4 x i8>, ptr %i.lk, align 1, !tbaa !2288
  %i.ll = sext <4 x i8> %wide.load539 to <4 x i32>
  %i.lm = sext <4 x i8> %wide.load540 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index537 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.ll, ptr %gep, align 4, !tbaa !128
  store <4 x i32> %i.lm, ptr %i.ln, align 4, !tbaa !128
  %index.next541 = add nuw i64 %index537, 8       ; 2 uses
  %i.lo = icmp eq i64 %index.next541, %n.vec535
  br i1 %i.lo, label %middle.block542, label %vector.body536, !llvm.loop !2274

middle.block542:                                  ; preds = %vector.body536
  %cmp.n543 = icmp eq i64 %i.lh, %n.vec535
  br i1 %cmp.n543, label %..loopexit270_crit_edge, label %scalar.ph532.preheader

scalar.ph532.preheader:                           ; preds = %.lr.ph313, %middle.block542
  %indvars.iv373.ph = phi i64 [ %i.lb, %.lr.ph313 ], [ %i.li, %middle.block542 ]
  %.ph547 = phi ptr [ %.promoted315456, %.lr.ph313 ], [ %i.lj, %middle.block542 ]
  br label %scalar.ph532

bb.be:                                            ; preds = %.lr.ph309, %bb.be
  %i.lp = phi ptr [ %i.gx, %.lr.ph309 ], [ %i.mi, %bb.be ] ; 5 uses
  %i.lq = phi i32 [ %i.kz, %.lr.ph309 ], [ %i.mo, %bb.be ]
  %.4.i308 = phi i32 [ %.0101.i332, %.lr.ph309 ], [ %i.mn, %bb.be ] ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.ls = load i8, ptr %i.lp, align 1, !tbaa !2288
  %i.lt = sext i8 %i.ls to i32
  %i.lu = zext i32 %.4.i308 to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.lu
  store i32 %i.lt, ptr %i.lv, align 4, !tbaa !128
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.lx = load i8, ptr %i.lr, align 1, !tbaa !2288
  %i.ly = sext i8 %i.lx to i32
  %i.lz = add i32 %.4.i308, 1
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.ma
  store i32 %i.ly, ptr %i.mb, align 4, !tbaa !128
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  %i.md = load i8, ptr %i.lw, align 1, !tbaa !2288
  %i.me = sext i8 %i.md to i32
  %i.mf = add i32 %.4.i308, 2
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.mg
  store i32 %i.me, ptr %i.mh, align 4, !tbaa !128
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 4 uses
  %i.mj = load i8, ptr %i.mc, align 1, !tbaa !2288
  %i.mk = sext i8 %i.mj to i32
  %i.ml = zext i32 %i.lq to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %i.ml
  store i32 %i.mk, ptr %i.mm, align 4, !tbaa !128
  %i.mn = add i32 %.4.i308, 4                     ; 4 uses
  %i.mo = add i32 %.4.i308, 7                     ; 2 uses
  %i.mp = icmp ult i32 %i.mo, %i.hd
  br i1 %i.mp, label %bb.be, label %.preheader269, !llvm.loop !2275

scalar.ph532:                                     ; preds = %scalar.ph532.preheader, %scalar.ph532
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %scalar.ph532 ], [ %indvars.iv373.ph, %scalar.ph532.preheader ] ; 2 uses
  %i.mq = phi ptr [ %i.mr, %scalar.ph532 ], [ %.ph547, %scalar.ph532.preheader ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  %i.ms = load i8, ptr %i.mq, align 1, !tbaa !2288
  %i.mt = sext i8 %i.ms to i32
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.3.ph441, i64 %indvars.iv373
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !128
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count
  br i1 %exitcond376.not, label %..loopexit270_crit_edge, label %scalar.ph532, !llvm.loop !2276

default.unreachable:                              ; preds = %bb.ax
  unreachable

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa501 = phi ptr [ %i.ia, %middle.block ], [ %i.jt, %scalar.ph ] ; 2 uses
  store ptr %.lcssa501, ptr %i.b, align 8, !tbaa !548
  br label %.loopexit

..loopexit268_crit_edge:                          ; preds = %scalar.ph518, %middle.block528
  %.lcssa498 = phi ptr [ %i.ki, %middle.block528 ], [ %i.kt, %scalar.ph518 ] ; 2 uses
  %indvars.iv.next378.lcssa = phi i64 [ %i.kg, %middle.block528 ], [ %indvars.iv.next378, %scalar.ph518 ]
  %i.mv = trunc nuw i64 %indvars.iv.next378.lcssa to i32
  store ptr %.lcssa498, ptr %i.b, align 8, !tbaa !548
  br label %.loopexit

..loopexit270_crit_edge:                          ; preds = %scalar.ph532, %middle.block542
  %.lcssa497 = phi ptr [ %i.lj, %middle.block542 ], [ %i.mr, %scalar.ph532 ] ; 2 uses
  store ptr %.lcssa497, ptr %i.b, align 8, !tbaa !548
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader269, %..loopexit270_crit_edge, %..loopexit268_crit_edge, %.preheader, %..loopexit_crit_edge, %_ZL9hb_memsetPvij.exit
  %i.mw = phi ptr [ %.pre393, %_ZL9hb_memsetPvij.exit ], [ %i.jk, %.preheader ], [ %i.mi, %.preheader269 ], [ %.lcssa501, %..loopexit_crit_edge ], [ %.lcssa498, %..loopexit268_crit_edge ], [ %.lcssa497, %..loopexit270_crit_edge ]
  %.9.i = phi i32 [ %i.hd, %_ZL9hb_memsetPvij.exit ], [ %i.jl, %.preheader ], [ %i.mn, %.preheader269 ], [ %i.hd, %..loopexit_crit_edge ], [ %i.mv, %..loopexit268_crit_edge ], [ %i.hd, %..loopexit270_crit_edge ] ; 2 uses
  %i.mx = icmp ult i32 %.9.i, %.48
  br i1 %i.mx, label %.lr.ph333, label %.lr.ph335, !llvm.loop !2277

bb.bf:                                            ; preds = %.lr.ph335, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit
  %indvars.iv385 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next386, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit ] ; 5 uses
  %i.my = trunc nuw nsw i64 %indvars.iv385 to i32
  br i1 %i.gb, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mz = load i32, ptr %..sroa.phi, align 4, !tbaa !182
  %i.na = zext i32 %i.mz to i64
  %.not.i71 = icmp samesign ult i64 %indvars.iv385, %i.na
  %i.nb = load ptr, ptr %..sroa.phi126, align 8
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv385
  %.0.i72 = select i1 %.not.i71, ptr %i.nc, ptr @_hb_NullPool, !prof !131
  %i.nd = load i32, ptr %.0.i72, align 4, !tbaa !128
end_hunk_0
