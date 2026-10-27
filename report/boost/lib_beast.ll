Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeE:.preheader255
bb.ai:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread
  %i.ew = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231 ]
  %i.ex = or disjoint i64 %i.ew, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 15, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ex, ptr %.sroa.5.0..sroa_idx.i236, align 8, !tbaa !55
  br label %bb.bl

.preheader254:                                    ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.ey, align 2, !tbaa !197
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ba, ptr %i.ez, align 4, !tbaa !197
  %i.fa = add i16 %i.bg, %i.ba                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !197
  %i.fc = add i16 %i.bm, %i.fa                    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fc, ptr %i.fd, align 8, !tbaa !197
  %i.fe = add i16 %i.bs, %i.fc                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !197
  %i.fg = add i16 %i.by, %i.fe                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.fg, ptr %i.fh, align 4, !tbaa !197
  %i.fi = add i16 %i.ce, %i.fg                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !197
  %i.fk = add i16 %i.ck, %i.fi                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fk, ptr %i.fl, align 16, !tbaa !197
  %i.fm = add i16 %i.cq, %i.fk                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !197
  %i.fo = add i16 %i.cw, %i.fm                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.fo, ptr %i.fp, align 4, !tbaa !197
  %i.fq = add i16 %i.dc, %i.fo                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !197
  %i.fs = add i16 %i.di, %i.fq                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.fs, ptr %i.ft, align 8, !tbaa !197
  %i.fu = add i16 %i.do, %i.fs                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !197
  %i.fw = add i16 %i.du, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.fw, ptr %i.fx, align 4, !tbaa !197
  %i.fy = add i16 %i.ea, %i.fw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !197
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader254, %bb.ak
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.ak ], [ 0, %.preheader254 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv311
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !197 ; 2 uses
  %.not223 = icmp eq i16 %i.gb, 0
  br i1 %.not223, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph275
  %i.gc = trunc i64 %indvars.iv311 to i16
  %i.gd = zext i16 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gd ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !197 ; 2 uses
  %i.gg = add i16 %i.gf, 1
  store i16 %i.gg, ptr %i.ge, align 2, !tbaa !197
  %i.gh = zext i16 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gh
  store i16 %i.gc, ptr %i.gi, align 2, !tbaa !197
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph275, %bb.aj
  %indvars.iv.next312 = add i64 %indvars.iv311, 1 ; 2 uses
  %i.gj = and i64 %indvars.iv.next312, 4294967295
  %i.gk = icmp ugt i64 %2, %i.gj
  br i1 %i.gk, label %.lr.ph275, label %._crit_edge276, !llvm.loop !1239

._crit_edge276:                                   ; preds = %bb.ak, %.preheader254
  switch i32 %0, label %bb.am [
    i32 0, label %.preheader
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %._crit_edge276
  %i.gl = icmp ugt i32 %spec.select343, 9
  br i1 %i.gl, label %bb.an, label %.preheader

bb.am:                                            ; preds = %._crit_edge276
  %i.gm = icmp ugt i32 %spec.select343, 9
  %i.gn = icmp eq i32 %0, 2                       ; 2 uses
  %or.cond5 = select i1 %i.gn, i1 %i.gm, i1 false
  br i1 %or.cond5, label %bb.an, label %.preheader

.preheader:                                       ; preds = %bb.al, %._crit_edge276, %bb.am
  %i.go = phi i1 [ false, %._crit_edge276 ], [ %i.gn, %bb.am ], [ false, %bb.al ]
  %.0179250352 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5dbase, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5lbase, %bb.al ]
  %.0178251351 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4dext, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4lext, %bb.al ]
  %.0252350 = phi i32 [ 20, %._crit_edge276 ], [ 0, %bb.am ], [ 257, %bb.al ] ; 3 uses
  %i.gp = phi i1 [ false, %._crit_edge276 ], [ false, %bb.am ], [ true, %bb.al ]
  %i.gq = shl nuw i32 1, %spec.select343          ; 2 uses
  %i.gr = add i32 %i.gq, -1
  %i.gs = load ptr, ptr %3, align 8, !tbaa !405
  %i.gt = trunc i32 %spec.select343 to i8
  br label %.outer

.outer:                                           ; preds = %bb.bh, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.bh ], [ %.0199.lcssa, %.preheader ]
  %.2202.ph = phi i32 [ %i.ia, %bb.bh ], [ 0, %.preheader ]
  %.0193.ph = phi i32 [ %.1194.lcssa, %bb.bh ], [ %spec.select343, %.preheader ]
  %.0191.ph = phi i32 [ %spec.select225, %bb.bh ], [ 0, %.preheader ] ; 4 uses
  %.0187.ph = phi i32 [ %i.ji, %bb.bh ], [ %i.gq, %.preheader ] ; 2 uses
  %.0185.ph = phi i32 [ %.1186, %bb.bh ], [ 0, %.preheader ]
  %.0181.ph = phi i32 [ %i.ip, %bb.bh ], [ -1, %.preheader ]
  %.0180.ph = phi ptr [ %i.is, %bb.bh ], [ %i.gs, %.preheader ] ; 3 uses
  %i.gu = shl nuw i32 1, %.0193.ph                ; 2 uses
  br label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.423)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  store ptr @.str.192, ptr %10, align 8, !tbaa !74
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.218, ptr %i.gv, align 8, !tbaa !75
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 756, ptr %i.gw, align 8, !tbaa !76
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 62, ptr %i.gx, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #49
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.gy, %bb.ap ], [ %i.jo, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.an
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  br label %common.resume

bb.aq:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2202 = phi i32 [ %.2202.ph, %.outer ], [ %i.ia, %.backedge ] ; 2 uses
  %.0185 = phi i32 [ %.0185.ph, %.outer ], [ %.1186, %.backedge ] ; 3 uses
  %i.gz = sub i32 %.3, %.0191.ph                  ; 2 uses
  %i.ha = trunc i32 %i.gz to i8                   ; 2 uses
  %i.hb = zext i32 %.2202 to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !197 ; 2 uses
  %i.he = zext i16 %i.hd to i32                   ; 3 uses
  %i.hf = add nuw nsw i32 %i.he, 1
  %i.hg = icmp samesign ult i32 %i.hf, %.0252350
  br i1 %i.hg, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not217 = icmp samesign ugt i32 %.0252350, %i.he
  br i1 %.not217, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hh = sub nuw nsw i32 %i.he, %.0252350
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.0178251351, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !197
  %i.hl = trunc i16 %i.hk to i8
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0179250352, i64 %i.hi
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !197
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as
  %.sroa.14.0 = phi i16 [ %i.hd, %bb.aq ], [ %i.hn, %bb.as ], [ 0, %bb.ar ]
  %.sroa.0.0 = phi i8 [ 0, %bb.aq ], [ %i.hl, %bb.as ], [ 96, %bb.ar ]
  %.neg = shl nsw i32 -1, %i.gz
  %i.ho = lshr i32 %.0185, %.0191.ph
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0183 = phi i32 [ %i.gu, %bb.at ], [ %i.hp, %bb.au ]
  %i.hp = add i32 %.0183, %.neg                   ; 3 uses
  %i.hq = add i32 %i.hp, %i.ho
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.hr ; 3 uses
  store i8 %.sroa.0.0, ptr %i.hs, align 2, !tbaa !58
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  store i8 %i.ha, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !58
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !197
  %.not218 = icmp eq i32 %i.hp, 0
  br i1 %.not218, label %bb.av, label %bb.au, !llvm.loop !1240

bb.av:                                            ; preds = %bb.au
  %i.ht = add i32 %.3, -1
  %i.hu = shl nuw i32 1, %i.ht
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.0184 = phi i32 [ %i.hu, %bb.av ], [ %i.hw, %bb.aw ] ; 5 uses
  %i.hv = and i32 %.0184, %.0185
  %.not219 = icmp eq i32 %i.hv, 0
  %i.hw = lshr i32 %.0184, 1
  br i1 %.not219, label %bb.ax, label %bb.aw, !llvm.loop !1241

bb.ax:                                            ; preds = %bb.aw
  %.not220 = icmp eq i32 %.0184, 0
  %i.hx = add i32 %.0184, -1
  %i.hy = and i32 %i.hx, %.0185
  %i.hz = add i32 %i.hy, %.0184
  %.1186 = select i1 %.not220, i32 0, i32 %i.hz   ; 5 uses
  %i.ia = add i32 %.2202, 1                       ; 3 uses
  %i.ib = zext i32 %.3 to i64
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ib ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !197
  %i.ie = add i16 %i.id, -1                       ; 2 uses
  store i16 %i.ie, ptr %i.ic, align 2, !tbaa !197
  %i.if = icmp eq i16 %i.ie, 0
  br i1 %i.if, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ig = icmp eq i32 %.3, %.0198264.lcssa341
  br i1 %i.ig, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ih = zext i32 %i.ia to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !197
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2, !tbaa !197
  %i.in = zext i16 %i.im to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.4 = phi i32 [ %i.in, %bb.az ], [ %.3, %bb.ax ] ; 6 uses
  %i.io = icmp ugt i32 %.4, %spec.select343
  br i1 %i.io, label %bb.bb, label %.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.ip = and i32 %.1186, %i.gr                   ; 3 uses
  %.not221 = icmp eq i32 %i.ip, %.0181.ph
  br i1 %.not221, label %.backedge, label %bb.bc

.backedge:                                        ; preds = %bb.bb, %bb.ba
  br label %bb.aq, !llvm.loop !1242

bb.bc:                                            ; preds = %bb.bb
  %i.iq = icmp eq i32 %.0191.ph, 0
  %spec.select225 = select i1 %i.iq, i32 %spec.select343, i32 %.0191.ph ; 4 uses
  %i.ir = zext i32 %i.gu to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.ir ; 2 uses
  %i.it = sub i32 %.4, %spec.select225            ; 3 uses
  %i.iu = shl nuw i32 1, %i.it                    ; 2 uses
  %i.iv = icmp ult i32 %.4, %.0198264.lcssa341
  br i1 %i.iv, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %bb.bc
  %i.iw = sub i32 %.0198264.lcssa341, %spec.select225
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.bd
  %i.ix = phi i32 [ %i.jg, %bb.bd ], [ %.4, %.lr.ph280.preheader ]
  %.1190278 = phi i32 [ %i.jf, %bb.bd ], [ %i.iu, %.lr.ph280.preheader ]
  %.1194277 = phi i32 [ %i.je, %bb.bd ], [ %i.it, %.lr.ph280.preheader ] ; 2 uses
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !197
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %.1190278, %i.jb            ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 1
  br i1 %i.jd, label %._crit_edge281.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph280
  %i.je = add i32 %.1194277, 1                    ; 2 uses
  %i.jf = shl nuw i32 %i.jc, 1
  %i.jg = add i32 %i.je, %spec.select225          ; 2 uses
  %i.jh = icmp ult i32 %i.jg, %.0198264.lcssa341
  br i1 %i.jh, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !1243

._crit_edge281.loopexit:                          ; preds = %.lr.ph280, %bb.bd
  %.1194.lcssa.ph = phi i32 [ %i.iw, %bb.bd ], [ %.1194277, %.lr.ph280 ] ; 2 uses
  %.pre315 = shl nuw i32 1, %.1194.lcssa.ph
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %bb.bc
  %.pre-phi = phi i32 [ %.pre315, %._crit_edge281.loopexit ], [ %i.iu, %bb.bc ]
  %.1194.lcssa = phi i32 [ %.1194.lcssa.ph, %._crit_edge281.loopexit ], [ %i.it, %bb.bc ] ; 2 uses
  %i.ji = add i32 %.pre-phi, %.0187.ph            ; 3 uses
  %i.jj = icmp ugt i32 %i.ji, 852
  %or.cond7 = select i1 %i.gp, i1 %i.jj, i1 false
  %i.jk = icmp ugt i32 %i.ji, 592
  %or.cond9 = select i1 %i.go, i1 %i.jk, i1 false
  %or.cond226 = select i1 %or.cond7, i1 true, i1 %or.cond9
  br i1 %or.cond226, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %._crit_edge281
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #48
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.423)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #48
  store ptr @.str.192, ptr %8, align 8, !tbaa !74
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.218, ptr %i.jl, align 8, !tbaa !75
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 756, ptr %i.jm, align 8, !tbaa !76
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 62, ptr %i.jn, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #49
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #48
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #48
  br label %common.resume

bb.bh:                                            ; preds = %._crit_edge281
  %i.jp = trunc i32 %.1194.lcssa to i8
  %i.jq = load ptr, ptr %3, align 8, !tbaa !405   ; 2 uses
  %i.jr = zext nneg i32 %i.ip to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jr ; 3 uses
  store i8 %i.jp, ptr %i.js, align 2, !tbaa !414
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  store i8 %i.gt, ptr %i.jt, align 1, !tbaa !412
  %i.ju = ptrtoint ptr %i.is to i64
  %i.jv = ptrtoint ptr %i.jq to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = lshr exact i64 %i.jw, 2
  %i.jy = trunc i64 %i.jx to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !411
  br label %.outer, !llvm.loop !1242

bb.bi:                                            ; preds = %bb.ay
  %.not222 = icmp eq i32 %.1186, 0
  br i1 %.not222, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ka = zext i32 %.1186 to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.ka ; 3 uses
  store i8 64, ptr %i.kb, align 2, !tbaa !58
  %.sroa.11.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  store i8 %i.ha, ptr %.sroa.11.0..sroa_idx25, align 1, !tbaa !58
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx31, align 2, !tbaa !197
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.kc = load ptr, ptr %3, align 8, !tbaa !405
  %i.kd = zext i32 %.0187.ph to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.kd
  store ptr %i.ke, ptr %3, align 8, !tbaa !405
  store i32 %spec.select343, ptr %4, align 4, !tbaa !159
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.ai, %bb.ag, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5beast4zlib6detail14inflate_stream12inflate_fastERNS2_6rangesERNS_6system10error_codeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7104) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7096
  %i.b = load i32, ptr %i.a, align 8, !tbaa !409
  %notmask = shl nsw i32 -1, %i.b
  %i.c = xor i32 %notmask, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !413
  %notmask86 = shl nsw i32 -1, %i.e
  %i.f = xor i32 %notmask86, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !406
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !395  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !407
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr i8, ptr %i.r, i64 %i.w
end_hunk_0
