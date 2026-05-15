inline.NumInlined: 360
inline.NumDeleted: 159
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_523copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
  %i.fs = sub nsw i32 %5, %9
  %i.ft = sext i32 %i.fs to i64
  %sext1012 = shl i64 %4, 32
  %i.fu = ashr exact i64 %sext1012, 32
  %i.fv = mul nsw i64 %i.fu, %i.ft
  %i.fw = getelementptr inbounds i8, ptr %2, i64 %i.fv
  %sext1013 = shl i64 %3, 32
  %i.fx = ashr exact i64 %sext1013, 32
  %i.fy = sext i32 %6 to i64
  %i.fz = sext i32 %10 to i64
  %i.ga = sext i32 %8 to i64
  %i.gb = add i32 %7, 1
  %scevgep1969 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1970 = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %scevgep2004 = getelementptr inbounds nuw i8, ptr %i.h, i64 1024 ; 2 uses
  %bound02006 = icmp ult ptr %0, %scevgep2004
  %bound12007 = icmp ult ptr %i.h, %scevgep1969
  %found.conflict2008 = and i1 %bound02006, %bound12007
  %bound11975 = icmp ult ptr %i.h, %scevgep1969
  br label %bb.ad

.preheader1028:                                   ; preds = %bb.aa
  %.not7591233 = icmp sgt i32 %6, %7
  br i1 %.not7591233, label %.loopexit1022, label %.lr.ph1235

.lr.ph1235:                                       ; preds = %.preheader1028
  %i.gc = sub nsw i32 %5, %11
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul nsw i64 %14, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %1, i64 %i.ge
  %i.gg = sub nsw i32 %5, %9
  %i.gh = sext i32 %i.gg to i64
  %sext1014 = shl i64 %4, 32
  %i.gi = ashr exact i64 %sext1014, 32
  %i.gj = mul nsw i64 %i.gi, %i.gh
  %i.gk = getelementptr inbounds i8, ptr %2, i64 %i.gj
  %sext1015 = shl i64 %3, 32
  %i.gl = ashr exact i64 %sext1015, 32
  %i.gm = sext i32 %6 to i64
  %i.gn = sext i32 %10 to i64
  %i.go = sext i32 %8 to i64
  %i.gp = add i32 %7, 1
  %scevgep2029 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2030 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %scevgep2064 = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 2 uses
  %bound02066 = icmp ult ptr %0, %scevgep2064
  %bound12067 = icmp ult ptr %i.i, %scevgep2029
  %found.conflict2068 = and i1 %bound02066, %bound12067
  %bound12035 = icmp ult ptr %i.i, %scevgep2029
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1235, %.loopexit1027
  %indvars.iv1392 = phi i64 [ %i.gm, %.lr.ph1235 ], [ %indvars.iv.next1393, %.loopexit1027 ] ; 3 uses
  %i.gq = sub nsw i64 %indvars.iv1392, %i.gn
  %i.gr = mul nsw i64 %13, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.gf, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !49 ; 2 uses
  %i.gu = sub nsw i64 %indvars.iv1392, %i.go
  %i.gv = mul nsw i64 %i.gl, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gk, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3  ; 4 uses
  %.not760 = icmp eq ptr %i.gt, null
  br i1 %.not760, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph1232.preheader, label %.loopexit1027

.lr.ph1232.preheader:                             ; preds = %.preheader
  %.promoted1229 = load ptr, ptr %0, align 8
  br label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.lr.ph1232.preheader, %.lr.ph1232
  %.06801231 = phi ptr [ %i.hi, %.lr.ph1232 ], [ %i.gt, %.lr.ph1232.preheader ] ; 2 uses
  %.06841230 = phi i32 [ %i.hj, %.lr.ph1232 ], [ 0, %.lr.ph1232.preheader ]
  %i.gz = phi ptr [ %i.hg, %.lr.ph1232 ], [ %.promoted1229, %.lr.ph1232.preheader ] ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.ha, ptr %0, align 8, !tbaa !49
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 2 ; 2 uses
  store ptr %i.hc, ptr %0, align 8, !tbaa !49
  %i.hd = load i8, ptr %i.ha, align 1, !tbaa !51
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 3 ; 2 uses
  store ptr %i.he, ptr %0, align 8, !tbaa !49
  %i.hf = load i8, ptr %i.hc, align 1, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  store ptr %i.hg, ptr %0, align 8, !tbaa !49
  %i.hh = load i8, ptr %i.he, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i = zext i8 %i.hh to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.hf to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.hd to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.hb to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %.06801231, align 4, !tbaa !3
  %i.hi = getelementptr inbounds i8, ptr %.06801231, i64 %12
  %i.hj = add nuw nsw i32 %.06841230, 1           ; 2 uses
  %exitcond1391.not = icmp eq i32 %i.hj, %i.gx
  br i1 %exitcond1391.not, label %.loopexit1027, label %.lr.ph1232, !llvm.loop !84

bb.ac:                                            ; preds = %bb.ab
  %i.hk = shl nsw i32 %i.gx, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.hl = icmp sgt i32 %i.gx, 255
  br i1 %i.hl, label %vector.memcheck2063, label %._crit_edge.i

vector.memcheck2063:                              ; preds = %bb.ac, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i
  %.013.i = phi i32 [ %i.ii, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.hk, %bb.ac ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %bb.ac ] ; 8 uses
  %scevgep2065 = getelementptr i8, ptr %.promoted1112.i, i64 1024 ; 2 uses
  %bound02069 = icmp ult ptr %0, %scevgep2065
  %bound12070 = icmp ult ptr %.promoted1112.i, %scevgep2029
  %found.conflict2071 = and i1 %bound02069, %bound12070
  %conflict.rdx2072 = or i1 %found.conflict2068, %found.conflict2071
  %bound02073 = icmp ult ptr %i.i, %scevgep2065
  %bound12074 = icmp ult ptr %.promoted1112.i, %scevgep2064
  %found.conflict2075 = and i1 %bound02073, %bound12074
  %conflict.rdx2076 = or i1 %conflict.rdx2072, %found.conflict2075
  br i1 %conflict.rdx2076, label %.lr.ph.i.i, label %vector.ph2078

vector.ph2078:                                    ; preds = %vector.memcheck2063
  %i.hm = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body2079

vector.body2079:                                  ; preds = %vector.body2079, %vector.ph2078
  %index2080 = phi i64 [ 0, %vector.ph2078 ], [ %index.next2086.1, %vector.body2079 ] ; 4 uses
  %next.gep2081 = getelementptr i8, ptr %.promoted1112.i, i64 %index2080 ; 2 uses
  %next.gep2083 = getelementptr i8, ptr %i.i, i64 %index2080 ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep2081, i64 2
  %wide.load2084 = load <2 x i8>, ptr %next.gep2081, align 1, !tbaa !51, !alias.scope !85
  %wide.load2085 = load <2 x i8>, ptr %i.hn, align 1, !tbaa !51, !alias.scope !85
  %i.ho = getelementptr i8, ptr %next.gep2083, i64 2
  store <2 x i8> %wide.load2084, ptr %next.gep2083, align 8, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2085, ptr %i.ho, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2086 = or disjoint i64 %index2080, 4 ; 3 uses
  %next.gep2081.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2086 ; 2 uses
  %i.hp = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2086
  %next.gep2083.1 = getelementptr i8, ptr %i.i, i64 %index.next2086 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 4
  %i.hr = getelementptr i8, ptr %next.gep2081.1, i64 2
  %wide.load2084.1 = load <2 x i8>, ptr %next.gep2081.1, align 1, !tbaa !51, !alias.scope !85
  %wide.load2085.1 = load <2 x i8>, ptr %i.hr, align 1, !tbaa !51, !alias.scope !85
  %i.hs = getelementptr i8, ptr %next.gep2083.1, i64 2
  store <2 x i8> %wide.load2084.1, ptr %next.gep2083.1, align 4, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2085.1, ptr %i.hs, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2086.1 = add nuw nsw i64 %index2080, 8 ; 2 uses
  %i.ht = icmp eq i64 %index.next2086.1, 1024
  br i1 %i.ht, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit2090, label %vector.body2079, !llvm.loop !90

.lr.ph.i.i:                                       ; preds = %vector.memcheck2063, %.lr.ph.i.i
  %i.hu = phi ptr [ %i.if, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck2063 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.ie, %.lr.ph.i.i ], [ 1024, %vector.memcheck2063 ]
  %.024.i.i = phi ptr [ %i.ih, %.lr.ph.i.i ], [ %i.i, %vector.memcheck2063 ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  store ptr %i.hv, ptr %0, align 8, !tbaa !49
  %i.hw = load i8, ptr %i.hu, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.hw, ptr %.024.i.i, align 1, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 2 ; 2 uses
  store ptr %i.hy, ptr %0, align 8, !tbaa !49
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 3 ; 2 uses
  store ptr %i.ib, ptr %0, align 8, !tbaa !49
  %i.ic = load i8, ptr %i.hy, align 1, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !51
  %i.ie = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 3 uses
  store ptr %i.if, ptr %0, align 8, !tbaa !49
  %i.ig = load i8, ptr %i.ib, align 1, !tbaa !51
  %i.ih = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.ig, ptr %i.id, align 1, !tbaa !51
  %.not.i.i769.3 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i769.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !91

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit2090: ; preds = %vector.body2079
  store ptr %i.hq, ptr %0, align 8, !tbaa !49, !alias.scope !92, !noalias !94
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i: ; preds = %.lr.ph.i.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit2090
  %.lcssa = phi ptr [ %i.hm, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit2090 ], [ %i.if, %.lr.ph.i.i ] ; 2 uses
  %i.ii = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ij = icmp sgt i32 %.013.i, 2047
  br i1 %i.ij, label %vector.memcheck2063, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %bb.ac
  %.promoted.i768 = phi ptr [ %.promoted10.i, %bb.ac ], [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.hk, %bb.ac ], [ %i.ii, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.ik = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.ik, label %.lr.ph.i5.i.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.il = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check2046 = icmp ult i32 %.0.lcssa.i, 12
  br i1 %min.iters.check2046, label %.lr.ph.i5.i.preheader2091, label %vector.memcheck2028

vector.memcheck2028:                              ; preds = %.lr.ph.i5.i.preheader
  %i.im = add nsw i32 %.0.lcssa.i, -1
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %scevgep2031 = getelementptr i8, ptr %scevgep2030, i64 %i.in ; 2 uses
  %scevgep2032 = getelementptr i8, ptr %.promoted.i768, i64 1
  %scevgep2033 = getelementptr i8, ptr %scevgep2032, i64 %i.in ; 2 uses
  %bound02034 = icmp ult ptr %0, %scevgep2031
  %found.conflict2036 = and i1 %bound02034, %bound12035
  %bound02037 = icmp ult ptr %0, %scevgep2033
  %bound12038 = icmp ult ptr %.promoted.i768, %scevgep2029
  %found.conflict2039 = and i1 %bound02037, %bound12038
  %conflict.rdx2040 = or i1 %found.conflict2036, %found.conflict2039
  %bound02041 = icmp ult ptr %i.i, %scevgep2033
  %bound12042 = icmp ult ptr %.promoted.i768, %scevgep2031
  %found.conflict2043 = and i1 %bound02041, %bound12042
  %conflict.rdx2044 = or i1 %conflict.rdx2040, %found.conflict2043
  br i1 %conflict.rdx2044, label %.lr.ph.i5.i.preheader2091, label %vector.ph2047

vector.ph2047:                                    ; preds = %vector.memcheck2028
  %n.vec2049 = and i64 %i.il, 2147483644          ; 5 uses
  %i.io = getelementptr i8, ptr %.promoted.i768, i64 %n.vec2049
  %i.ip = trunc nuw nsw i64 %n.vec2049 to i32
  %i.iq = sub nsw i32 %.0.lcssa.i, %i.ip
  %i.ir = getelementptr i8, ptr %i.i, i64 %n.vec2049
  br label %vector.body2050

vector.body2050:                                  ; preds = %vector.body2050, %vector.ph2047
  %index2051 = phi i64 [ 0, %vector.ph2047 ], [ %index.next2057, %vector.body2050 ] ; 4 uses
  %next.gep2052 = getelementptr i8, ptr %.promoted.i768, i64 %index2051 ; 2 uses
  %i.is = getelementptr i8, ptr %.promoted.i768, i64 %index2051
  %next.gep2054 = getelementptr i8, ptr %i.i, i64 %index2051 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 4
  %i.iu = getelementptr i8, ptr %next.gep2052, i64 2
  %wide.load2055 = load <2 x i8>, ptr %next.gep2052, align 1, !tbaa !51, !alias.scope !96
  %wide.load2056 = load <2 x i8>, ptr %i.iu, align 1, !tbaa !51, !alias.scope !96
  %i.iv = getelementptr i8, ptr %next.gep2054, i64 2
  store <2 x i8> %wide.load2055, ptr %next.gep2054, align 4, !tbaa !51, !alias.scope !99, !noalias !96
  store <2 x i8> %wide.load2056, ptr %i.iv, align 2, !tbaa !51, !alias.scope !99, !noalias !96
  %index.next2057 = add nuw i64 %index2051, 4     ; 2 uses
  %i.iw = icmp eq i64 %index.next2057, %n.vec2049
  br i1 %i.iw, label %middle.block2058, label %vector.body2050, !llvm.loop !101

middle.block2058:                                 ; preds = %vector.body2050
  store ptr %i.it, ptr %0, align 8, !tbaa !49, !alias.scope !102, !noalias !104
  %cmp.n2059 = icmp eq i64 %n.vec2049, %i.il
  br i1 %cmp.n2059, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader2091

.lr.ph.i5.i.preheader2091:                        ; preds = %vector.memcheck2028, %.lr.ph.i5.i.preheader, %middle.block2058
  %.ph = phi ptr [ %.promoted.i768, %vector.memcheck2028 ], [ %.promoted.i768, %.lr.ph.i5.i.preheader ], [ %i.io, %middle.block2058 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck2028 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.iq, %middle.block2058 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.i, %vector.memcheck2028 ], [ %i.i, %.lr.ph.i5.i.preheader ], [ %i.ir, %middle.block2058 ] ; 2 uses
  %i.ix = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter2218 = and i32 %.05.i6.i.ph, 3         ; 2 uses
  %lcmp.mod2219.not = icmp eq i32 %xtraiter2218, 0
  br i1 %lcmp.mod2219.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader2091, %.lr.ph.i5.i.prol
  %i.iy = phi ptr [ %i.ja, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader2091 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.iz, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2091 ]
  %.024.i7.i.prol = phi ptr [ %i.jc, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2091 ] ; 2 uses
  %prol.iter2220 = phi i32 [ %prol.iter2220.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader2091 ]
  %i.iz = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 3 uses
  store ptr %i.ja, ptr %0, align 8, !tbaa !49
  %i.jb = load i8, ptr %i.iy, align 1, !tbaa !51
  %i.jc = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.jb, ptr %.024.i7.i.prol, align 1, !tbaa !51
  %prol.iter2220.next = add i32 %prol.iter2220, 1 ; 2 uses
  %prol.iter2220.cmp.not = icmp eq i32 %prol.iter2220.next, %xtraiter2218
  br i1 %prol.iter2220.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !105

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader2091
  %.unr2221 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader2091 ], [ %i.ja, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2091 ], [ %i.iz, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2091 ], [ %i.jc, %.lr.ph.i5.i.prol ]
  %i.jd = icmp ult i32 %i.ix, 3
  br i1 %i.jd, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.je = phi ptr [ %i.jp, %.lr.ph.i5.i ], [ %.unr2221, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.jo, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.jr, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1 ; 2 uses
  store ptr %i.jf, ptr %0, align 8, !tbaa !49
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !51
  %i.jh = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.jg, ptr %.024.i7.i, align 1, !tbaa !51
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 2 ; 2 uses
  store ptr %i.ji, ptr %0, align 8, !tbaa !49
  %i.jj = load i8, ptr %i.jf, align 1, !tbaa !51
  %i.jk = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.jj, ptr %i.jh, align 1, !tbaa !51
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 3 ; 2 uses
  store ptr %i.jl, ptr %0, align 8, !tbaa !49
  %i.jm = load i8, ptr %i.ji, align 1, !tbaa !51
  %i.jn = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !51
  %i.jo = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  store ptr %i.jp, ptr %0, align 8, !tbaa !49
  %i.jq = load i8, ptr %i.jl, align 1, !tbaa !51
  %i.jr = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.jq, ptr %i.jn, align 1, !tbaa !51
  %.not.i8.i.3 = icmp eq i32 %i.jo, 0
  br i1 %.not.i8.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !106

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block2058, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.loopexit1027

.loopexit1027:                                    ; preds = %.lr.ph1232, %.preheader, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, 1 ; 2 uses
  %lftr.wideiv1395 = trunc i64 %indvars.iv.next1393 to i32
  %exitcond1396.not = icmp eq i32 %i.gp, %lftr.wideiv1395
  br i1 %exitcond1396.not, label %.loopexit1022, label %bb.ab, !llvm.loop !107

bb.ad:                                            ; preds = %.lr.ph1228, %.loopexit1031
  %indvars.iv1386 = phi i64 [ %i.fy, %.lr.ph1228 ], [ %indvars.iv.next1387, %.loopexit1031 ] ; 3 uses
  %i.js = sub nsw i64 %indvars.iv1386, %i.fz
  %i.jt = mul nsw i64 %13, %i.js
  %i.ju = getelementptr inbounds i8, ptr %i.fr, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !49 ; 2 uses
  %i.jw = sub nsw i64 %indvars.iv1386, %i.ga
  %i.jx = mul nsw i64 %i.fx, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %i.fw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3  ; 4 uses
  %.not758 = icmp eq ptr %i.jv, null
  br i1 %.not758, label %bb.ae, label %.preheader1030

.preheader1030:                                   ; preds = %bb.ad
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph1225, label %.loopexit1031

.lr.ph1225:                                       ; preds = %.preheader1030, %.lr.ph1225
  %.06911224 = phi ptr [ %i.kg, %.lr.ph1225 ], [ %i.jv, %.preheader1030 ] ; 2 uses
  %.06931223 = phi i32 [ %i.kh, %.lr.ph1225 ], [ 0, %.preheader1030 ]
  %.promoted.i770 = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 1 ; 2 uses
  store ptr %i.kb, ptr %0, align 8, !tbaa !49
  %i.kc = load i8, ptr %.promoted.i770, align 1, !tbaa !51
  %i.kd = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 2
  store ptr %i.kd, ptr %0, align 8, !tbaa !49
  %i.ke = load i8, ptr %i.kb, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i771 = zext i8 %i.ke to i16
  %.sroa.4.0.insert.shift.i772 = shl nuw i16 %.sroa.4.0.insert.ext.i771, 8
  %.sroa.0.0.insert.ext.i773 = zext i8 %i.kc to i16
  %.sroa.0.0.insert.insert.i774 = or disjoint i16 %.sroa.4.0.insert.shift.i772, %.sroa.0.0.insert.ext.i773
  %i.kf = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_510halfToUintEN9Imath_3_14halfE(i16 %.sroa.0.0.insert.insert.i774)
  store i32 %i.kf, ptr %.06911224, align 4, !tbaa !3
  %i.kg = getelementptr inbounds i8, ptr %.06911224, i64 %12
  %i.kh = add nuw nsw i32 %.06931223, 1           ; 2 uses
  %exitcond1385.not = icmp eq i32 %i.kh, %i.jz
  br i1 %exitcond1385.not, label %.loopexit1031, label %.lr.ph1225, !llvm.loop !108

bb.ae:                                            ; preds = %bb.ad
  %i.ki = shl nsw i32 %i.jz, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.promoted10.i775 = load ptr, ptr %0, align 8   ; 2 uses
  %i.kj = icmp sgt i32 %i.jz, 511
  br i1 %i.kj, label %vector.memcheck2003, label %._crit_edge.i776

vector.memcheck2003:                              ; preds = %bb.ae, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790
  %.013.i784 = phi i32 [ %i.lg, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %i.ki, %bb.ae ] ; 2 uses
  %.promoted1112.i785 = phi ptr [ %.lcssa1550, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %.promoted10.i775, %bb.ae ] ; 8 uses
  %scevgep2005 = getelementptr i8, ptr %.promoted1112.i785, i64 1024 ; 2 uses
  %bound02009 = icmp ult ptr %0, %scevgep2005
  %bound12010 = icmp ult ptr %.promoted1112.i785, %scevgep1969
  %found.conflict2011 = and i1 %bound02009, %bound12010
  %conflict.rdx2012 = or i1 %found.conflict2008, %found.conflict2011
  %bound02013 = icmp ult ptr %i.h, %scevgep2005
  %bound12014 = icmp ult ptr %.promoted1112.i785, %scevgep2004
  %found.conflict2015 = and i1 %bound02013, %bound12014
  %conflict.rdx2016 = or i1 %conflict.rdx2012, %found.conflict2015
  br i1 %conflict.rdx2016, label %.lr.ph.i.i786, label %vector.ph2018

vector.ph2018:                                    ; preds = %vector.memcheck2003
  %i.kk = getelementptr i8, ptr %.promoted1112.i785, i64 1024
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2018
  %index2020 = phi i64 [ 0, %vector.ph2018 ], [ %index.next2026.1, %vector.body2019 ] ; 4 uses
  %next.gep2021 = getelementptr i8, ptr %.promoted1112.i785, i64 %index2020 ; 2 uses
  %next.gep2023 = getelementptr i8, ptr %i.h, i64 %index2020 ; 2 uses
  %i.kl = getelementptr i8, ptr %next.gep2021, i64 2
  %wide.load2024 = load <2 x i8>, ptr %next.gep2021, align 1, !tbaa !51, !alias.scope !109
  %wide.load2025 = load <2 x i8>, ptr %i.kl, align 1, !tbaa !51, !alias.scope !109
  %i.km = getelementptr i8, ptr %next.gep2023, i64 2
  store <2 x i8> %wide.load2024, ptr %next.gep2023, align 8, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2025, ptr %i.km, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2026 = or disjoint i64 %index2020, 4 ; 3 uses
  %next.gep2021.1 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2026 ; 2 uses
  %i.kn = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2026
  %next.gep2023.1 = getelementptr i8, ptr %i.h, i64 %index.next2026 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %i.kp = getelementptr i8, ptr %next.gep2021.1, i64 2
  %wide.load2024.1 = load <2 x i8>, ptr %next.gep2021.1, align 1, !tbaa !51, !alias.scope !109
  %wide.load2025.1 = load <2 x i8>, ptr %i.kp, align 1, !tbaa !51, !alias.scope !109
  %i.kq = getelementptr i8, ptr %next.gep2023.1, i64 2
  store <2 x i8> %wide.load2024.1, ptr %next.gep2023.1, align 4, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2025.1, ptr %i.kq, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2026.1 = add nuw nsw i64 %index2020, 8 ; 2 uses
  %i.kr = icmp eq i64 %index.next2026.1, 1024
  br i1 %i.kr, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790.loopexit2095, label %vector.body2019, !llvm.loop !114

.lr.ph.i.i786:                                    ; preds = %vector.memcheck2003, %.lr.ph.i.i786
  %i.ks = phi ptr [ %i.ld, %.lr.ph.i.i786 ], [ %.promoted1112.i785, %vector.memcheck2003 ] ; 5 uses
  %.05.i.i787 = phi i32 [ %i.lc, %.lr.ph.i.i786 ], [ 1024, %vector.memcheck2003 ]
  %.024.i.i788 = phi ptr [ %i.lf, %.lr.ph.i.i786 ], [ %i.h, %vector.memcheck2003 ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  store ptr %i.kt, ptr %0, align 8, !tbaa !49
  %i.ku = load i8, ptr %i.ks, align 1, !tbaa !51
  %i.kv = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 1
  store i8 %i.ku, ptr %.024.i.i788, align 1, !tbaa !51
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  store ptr %i.kw, ptr %0, align 8, !tbaa !49
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !51
  %i.ky = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 2
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 3 ; 2 uses
  store ptr %i.kz, ptr %0, align 8, !tbaa !49
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !51
  %i.lb = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 3
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !51
  %i.lc = add nsw i32 %.05.i.i787, -4             ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 3 uses
  store ptr %i.ld, ptr %0, align 8, !tbaa !49
  %i.le = load i8, ptr %i.kz, align 1, !tbaa !51
  %i.lf = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 4
  store i8 %i.le, ptr %i.lb, align 1, !tbaa !51
  %.not.i.i789.3 = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i789.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790, label %.lr.ph.i.i786, !llvm.loop !115

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790.loopexit2095: ; preds = %vector.body2019
  store ptr %i.ko, ptr %0, align 8, !tbaa !49, !alias.scope !116, !noalias !118
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790: ; preds = %.lr.ph.i.i786, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790.loopexit2095
  %.lcssa1550 = phi ptr [ %i.kk, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790.loopexit2095 ], [ %i.ld, %.lr.ph.i.i786 ] ; 2 uses
  %i.lg = add nsw i32 %.013.i784, -1024           ; 2 uses
  %i.lh = icmp sgt i32 %.013.i784, 2047
  br i1 %i.lh, label %vector.memcheck2003, label %._crit_edge.i776, !llvm.loop !95

._crit_edge.i776:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790, %bb.ae
  %.promoted.i777 = phi ptr [ %.promoted10.i775, %bb.ae ], [ %.lcssa1550, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 8 uses
  %.0.lcssa.i778 = phi i32 [ %i.ki, %bb.ae ], [ %i.lg, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 7 uses
  %i.li = icmp sgt i32 %.0.lcssa.i778, 0
  br i1 %i.li, label %.lr.ph.i5.i779.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791

.lr.ph.i5.i779.preheader:                         ; preds = %._crit_edge.i776
  %i.lj = zext nneg i32 %.0.lcssa.i778 to i64     ; 2 uses
  %min.iters.check1986 = icmp ult i32 %.0.lcssa.i778, 12
  br i1 %min.iters.check1986, label %.lr.ph.i5.i779.preheader2096, label %vector.memcheck1968

vector.memcheck1968:                              ; preds = %.lr.ph.i5.i779.preheader
  %i.lk = add nsw i32 %.0.lcssa.i778, -1
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %scevgep1971 = getelementptr i8, ptr %scevgep1970, i64 %i.ll ; 2 uses
  %scevgep1972 = getelementptr i8, ptr %.promoted.i777, i64 1
  %scevgep1973 = getelementptr i8, ptr %scevgep1972, i64 %i.ll ; 2 uses
  %bound01974 = icmp ult ptr %0, %scevgep1971
  %found.conflict1976 = and i1 %bound01974, %bound11975
  %bound01977 = icmp ult ptr %0, %scevgep1973
  %bound11978 = icmp ult ptr %.promoted.i777, %scevgep1969
  %found.conflict1979 = and i1 %bound01977, %bound11978
  %conflict.rdx1980 = or i1 %found.conflict1976, %found.conflict1979
  %bound01981 = icmp ult ptr %i.h, %scevgep1973
  %bound11982 = icmp ult ptr %.promoted.i777, %scevgep1971
  %found.conflict1983 = and i1 %bound01981, %bound11982
  %conflict.rdx1984 = or i1 %conflict.rdx1980, %found.conflict1983
  br i1 %conflict.rdx1984, label %.lr.ph.i5.i779.preheader2096, label %vector.ph1987

vector.ph1987:                                    ; preds = %vector.memcheck1968
  %n.vec1989 = and i64 %i.lj, 2147483644          ; 5 uses
  %i.lm = getelementptr i8, ptr %.promoted.i777, i64 %n.vec1989
  %i.ln = trunc nuw nsw i64 %n.vec1989 to i32
  %i.lo = sub nsw i32 %.0.lcssa.i778, %i.ln
  %i.lp = getelementptr i8, ptr %i.h, i64 %n.vec1989
  br label %vector.body1990

vector.body1990:                                  ; preds = %vector.body1990, %vector.ph1987
  %index1991 = phi i64 [ 0, %vector.ph1987 ], [ %index.next1997, %vector.body1990 ] ; 4 uses
  %next.gep1992 = getelementptr i8, ptr %.promoted.i777, i64 %index1991 ; 2 uses
  %i.lq = getelementptr i8, ptr %.promoted.i777, i64 %index1991
  %next.gep1994 = getelementptr i8, ptr %i.h, i64 %index1991 ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 4
  %i.ls = getelementptr i8, ptr %next.gep1992, i64 2
  %wide.load1995 = load <2 x i8>, ptr %next.gep1992, align 1, !tbaa !51, !alias.scope !119
  %wide.load1996 = load <2 x i8>, ptr %i.ls, align 1, !tbaa !51, !alias.scope !119
  %i.lt = getelementptr i8, ptr %next.gep1994, i64 2
  store <2 x i8> %wide.load1995, ptr %next.gep1994, align 4, !tbaa !51, !alias.scope !122, !noalias !119
  store <2 x i8> %wide.load1996, ptr %i.lt, align 2, !tbaa !51, !alias.scope !122, !noalias !119
  %index.next1997 = add nuw i64 %index1991, 4     ; 2 uses
  %i.lu = icmp eq i64 %index.next1997, %n.vec1989
  br i1 %i.lu, label %middle.block1998, label %vector.body1990, !llvm.loop !124

middle.block1998:                                 ; preds = %vector.body1990
  store ptr %i.lr, ptr %0, align 8, !tbaa !49, !alias.scope !125, !noalias !127
  %cmp.n1999 = icmp eq i64 %n.vec1989, %i.lj
  br i1 %cmp.n1999, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779.preheader2096

.lr.ph.i5.i779.preheader2096:                     ; preds = %vector.memcheck1968, %.lr.ph.i5.i779.preheader, %middle.block1998
  %.ph2097 = phi ptr [ %.promoted.i777, %vector.memcheck1968 ], [ %.promoted.i777, %.lr.ph.i5.i779.preheader ], [ %i.lm, %middle.block1998 ] ; 2 uses
  %.05.i6.i780.ph = phi i32 [ %.0.lcssa.i778, %vector.memcheck1968 ], [ %.0.lcssa.i778, %.lr.ph.i5.i779.preheader ], [ %i.lo, %middle.block1998 ] ; 4 uses
  %.024.i7.i781.ph = phi ptr [ %i.h, %vector.memcheck1968 ], [ %i.h, %.lr.ph.i5.i779.preheader ], [ %i.lp, %middle.block1998 ] ; 2 uses
  %i.lv = add nsw i32 %.05.i6.i780.ph, -1
  %xtraiter2214 = and i32 %.05.i6.i780.ph, 3      ; 2 uses
  %lcmp.mod2215.not = icmp eq i32 %xtraiter2214, 0
  br i1 %lcmp.mod2215.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol

.lr.ph.i5.i779.prol:                              ; preds = %.lr.ph.i5.i779.preheader2096, %.lr.ph.i5.i779.prol
  %i.lw = phi ptr [ %i.ly, %.lr.ph.i5.i779.prol ], [ %.ph2097, %.lr.ph.i5.i779.preheader2096 ] ; 2 uses
  %.05.i6.i780.prol = phi i32 [ %i.lx, %.lr.ph.i5.i779.prol ], [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2096 ]
  %.024.i7.i781.prol = phi ptr [ %i.ma, %.lr.ph.i5.i779.prol ], [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2096 ] ; 2 uses
  %prol.iter2216 = phi i32 [ %prol.iter2216.next, %.lr.ph.i5.i779.prol ], [ 0, %.lr.ph.i5.i779.preheader2096 ]
  %i.lx = add nsw i32 %.05.i6.i780.prol, -1       ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 1 ; 3 uses
  store ptr %i.ly, ptr %0, align 8, !tbaa !49
  %i.lz = load i8, ptr %i.lw, align 1, !tbaa !51
  %i.ma = getelementptr inbounds nuw i8, ptr %.024.i7.i781.prol, i64 1 ; 2 uses
  store i8 %i.lz, ptr %.024.i7.i781.prol, align 1, !tbaa !51
  %prol.iter2216.next = add i32 %prol.iter2216, 1 ; 2 uses
  %prol.iter2216.cmp.not = icmp eq i32 %prol.iter2216.next, %xtraiter2214
  br i1 %prol.iter2216.cmp.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol, !llvm.loop !128

.lr.ph.i5.i779.prol.loopexit:                     ; preds = %.lr.ph.i5.i779.prol, %.lr.ph.i5.i779.preheader2096
  %.unr2217 = phi ptr [ %.ph2097, %.lr.ph.i5.i779.preheader2096 ], [ %i.ly, %.lr.ph.i5.i779.prol ]
  %.05.i6.i780.unr = phi i32 [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2096 ], [ %i.lx, %.lr.ph.i5.i779.prol ]
  %.024.i7.i781.unr = phi ptr [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2096 ], [ %i.ma, %.lr.ph.i5.i779.prol ]
  %i.mb = icmp ult i32 %i.lv, 3
  br i1 %i.mb, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779

.lr.ph.i5.i779:                                   ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779
  %i.mc = phi ptr [ %i.mn, %.lr.ph.i5.i779 ], [ %.unr2217, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %.05.i6.i780 = phi i32 [ %i.mm, %.lr.ph.i5.i779 ], [ %.05.i6.i780.unr, %.lr.ph.i5.i779.prol.loopexit ]
  %.024.i7.i781 = phi ptr [ %i.mp, %.lr.ph.i5.i779 ], [ %.024.i7.i781.unr, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 1 ; 2 uses
  store ptr %i.md, ptr %0, align 8, !tbaa !49
  %i.me = load i8, ptr %i.mc, align 1, !tbaa !51
  %i.mf = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 1
  store i8 %i.me, ptr %.024.i7.i781, align 1, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 2 ; 2 uses
  store ptr %i.mg, ptr %0, align 8, !tbaa !49
  %i.mh = load i8, ptr %i.md, align 1, !tbaa !51
  %i.mi = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 2
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !51
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 3 ; 2 uses
  store ptr %i.mj, ptr %0, align 8, !tbaa !49
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 3
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !51
  %i.mm = add nsw i32 %.05.i6.i780, -4            ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 2 uses
  store ptr %i.mn, ptr %0, align 8, !tbaa !49
  %i.mo = load i8, ptr %i.mj, align 1, !tbaa !51
  %i.mp = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 4
  store i8 %i.mo, ptr %i.ml, align 1, !tbaa !51
  %.not.i8.i782.3 = icmp eq i32 %i.mm, 0
  br i1 %.not.i8.i782.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779, !llvm.loop !129

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791: ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779, %middle.block1998, %._crit_edge.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %.loopexit1031

.loopexit1031:                                    ; preds = %.lr.ph1225, %.preheader1030, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791
  %indvars.iv.next1387 = add nsw i64 %indvars.iv1386, 1 ; 2 uses
  %lftr.wideiv1389 = trunc i64 %indvars.iv.next1387 to i32
  %exitcond1390.not = icmp eq i32 %i.gb, %lftr.wideiv1389
  br i1 %exitcond1390.not, label %.loopexit1022, label %bb.ad, !llvm.loop !130

bb.af:                                            ; preds = %.lr.ph1222, %.loopexit1035
  %indvars.iv1380 = phi i64 [ %i.fk, %.lr.ph1222 ], [ %indvars.iv.next1381, %.loopexit1035 ] ; 3 uses
  %i.mq = sub nsw i64 %indvars.iv1380, %i.fl
  %i.mr = mul nsw i64 %13, %i.mq
  %i.ms = getelementptr inbounds i8, ptr %i.fd, i64 %i.mr
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !49 ; 2 uses
  %i.mu = sub nsw i64 %indvars.iv1380, %i.fm
  %i.mv = mul nsw i64 %i.fj, %i.mu
  %i.mw = getelementptr inbounds i8, ptr %i.fi, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !3  ; 4 uses
  %.not756 = icmp eq ptr %i.mt, null
  br i1 %.not756, label %bb.ag, label %.preheader1034

.preheader1034:                                   ; preds = %bb.af
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph1219, label %.loopexit1035

.lr.ph1219:                                       ; preds = %.preheader1034, %.lr.ph1219
  %.07001218 = phi ptr [ %i.nj, %.lr.ph1219 ], [ %i.mt, %.preheader1034 ] ; 2 uses
  %.07021217 = phi i32 [ %i.nk, %.lr.ph1219 ], [ 0, %.preheader1034 ]
  %.promoted.i792 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 1 ; 2 uses
  store ptr %i.mz, ptr %0, align 8, !tbaa !49
  %i.na = load i8, ptr %.promoted.i792, align 1, !tbaa !51
  %i.nb = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 2 ; 2 uses
  store ptr %i.nb, ptr %0, align 8, !tbaa !49
  %i.nc = load i8, ptr %i.mz, align 1, !tbaa !51
  %i.nd = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 3 ; 2 uses
  store ptr %i.nd, ptr %0, align 8, !tbaa !49
  %i.ne = load i8, ptr %i.nb, align 1, !tbaa !51
  %i.nf = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 4
  store ptr %i.nf, ptr %0, align 8, !tbaa !49
  %i.ng = load i8, ptr %i.nd, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i793 = zext i8 %i.ng to i32
  %.sroa.6.0.insert.shift.i794 = shl nuw i32 %.sroa.6.0.insert.ext.i793, 24
  %.sroa.5.0.insert.ext.i795 = zext i8 %i.ne to i32
  %.sroa.5.0.insert.shift.i796 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i795, 16
  %.sroa.4.0.insert.ext.i798 = zext i8 %i.nc to i32
  %.sroa.4.0.insert.shift.i799 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i798, 8
  %.sroa.0.0.insert.ext.i801 = zext i8 %i.na to i32
  %.sroa.5.0.insert.insert.i797 = or disjoint i32 %.sroa.4.0.insert.shift.i799, %.sroa.0.0.insert.ext.i801
  %.sroa.4.0.insert.insert.i800 = or disjoint i32 %.sroa.5.0.insert.insert.i797, %.sroa.5.0.insert.shift.i796
  %.sroa.0.0.insert.insert.i802 = or disjoint i32 %.sroa.4.0.insert.insert.i800, %.sroa.6.0.insert.shift.i794
  %i.nh = bitcast i32 %.sroa.0.0.insert.insert.i802 to float
  %i.ni = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_511floatToUintEf(float noundef %i.nh)
  store i32 %i.ni, ptr %.07001218, align 4, !tbaa !3
  %i.nj = getelementptr inbounds i8, ptr %.07001218, i64 %12
  %i.nk = add nuw nsw i32 %.07021217, 1           ; 2 uses
  %exitcond1379.not = icmp eq i32 %i.nk, %i.mx
  br i1 %exitcond1379.not, label %.loopexit1035, label %.lr.ph1219, !llvm.loop !131

bb.ag:                                            ; preds = %bb.af
  %i.nl = shl nsw i32 %i.mx, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %.promoted10.i803 = load ptr, ptr %0, align 8   ; 2 uses
  %i.nm = icmp sgt i32 %i.mx, 255
  br i1 %i.nm, label %vector.memcheck1943, label %._crit_edge.i804

vector.memcheck1943:                              ; preds = %bb.ag, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818
  %.013.i812 = phi i32 [ %i.oj, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %i.nl, %bb.ag ] ; 2 uses
  %.promoted1112.i813 = phi ptr [ %.lcssa1552, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %.promoted10.i803, %bb.ag ] ; 8 uses
  %scevgep1945 = getelementptr i8, ptr %.promoted1112.i813, i64 1024 ; 2 uses
  %bound01949 = icmp ult ptr %0, %scevgep1945
  %bound11950 = icmp ult ptr %.promoted1112.i813, %scevgep1909
  %found.conflict1951 = and i1 %bound01949, %bound11950
  %conflict.rdx1952 = or i1 %found.conflict1948, %found.conflict1951
  %bound01953 = icmp ult ptr %i.g, %scevgep1945
  %bound11954 = icmp ult ptr %.promoted1112.i813, %scevgep1944
  %found.conflict1955 = and i1 %bound01953, %bound11954
  %conflict.rdx1956 = or i1 %conflict.rdx1952, %found.conflict1955
  br i1 %conflict.rdx1956, label %.lr.ph.i.i814, label %vector.ph1958

vector.ph1958:                                    ; preds = %vector.memcheck1943
  %i.nn = getelementptr i8, ptr %.promoted1112.i813, i64 1024
  br label %vector.body1959

vector.body1959:                                  ; preds = %vector.body1959, %vector.ph1958
  %index1960 = phi i64 [ 0, %vector.ph1958 ], [ %index.next1966.1, %vector.body1959 ] ; 4 uses
  %next.gep1961 = getelementptr i8, ptr %.promoted1112.i813, i64 %index1960 ; 2 uses
  %next.gep1963 = getelementptr i8, ptr %i.g, i64 %index1960 ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep1961, i64 2
  %wide.load1964 = load <2 x i8>, ptr %next.gep1961, align 1, !tbaa !51, !alias.scope !132
  %wide.load1965 = load <2 x i8>, ptr %i.no, align 1, !tbaa !51, !alias.scope !132
  %i.np = getelementptr i8, ptr %next.gep1963, i64 2
  store <2 x i8> %wide.load1964, ptr %next.gep1963, align 8, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1965, ptr %i.np, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1966 = or disjoint i64 %index1960, 4 ; 3 uses
  %next.gep1961.1 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1966 ; 2 uses
  %i.nq = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1966
  %next.gep1963.1 = getelementptr i8, ptr %i.g, i64 %index.next1966 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 4
  %i.ns = getelementptr i8, ptr %next.gep1961.1, i64 2
  %wide.load1964.1 = load <2 x i8>, ptr %next.gep1961.1, align 1, !tbaa !51, !alias.scope !132
  %wide.load1965.1 = load <2 x i8>, ptr %i.ns, align 1, !tbaa !51, !alias.scope !132
  %i.nt = getelementptr i8, ptr %next.gep1963.1, i64 2
  store <2 x i8> %wide.load1964.1, ptr %next.gep1963.1, align 4, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1965.1, ptr %i.nt, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1966.1 = add nuw nsw i64 %index1960, 8 ; 2 uses
  %i.nu = icmp eq i64 %index.next1966.1, 1024
  br i1 %i.nu, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818.loopexit2101, label %vector.body1959, !llvm.loop !137

.lr.ph.i.i814:                                    ; preds = %vector.memcheck1943, %.lr.ph.i.i814
  %i.nv = phi ptr [ %i.og, %.lr.ph.i.i814 ], [ %.promoted1112.i813, %vector.memcheck1943 ] ; 5 uses
  %.05.i.i815 = phi i32 [ %i.of, %.lr.ph.i.i814 ], [ 1024, %vector.memcheck1943 ]
  %.024.i.i816 = phi ptr [ %i.oi, %.lr.ph.i.i814 ], [ %i.g, %vector.memcheck1943 ] ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1 ; 2 uses
  store ptr %i.nw, ptr %0, align 8, !tbaa !49
  %i.nx = load i8, ptr %i.nv, align 1, !tbaa !51
  %i.ny = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 1
  store i8 %i.nx, ptr %.024.i.i816, align 1, !tbaa !51
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 2 ; 2 uses
  store ptr %i.nz, ptr %0, align 8, !tbaa !49
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !51
  %i.ob = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 2
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !51
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 3 ; 2 uses
  store ptr %i.oc, ptr %0, align 8, !tbaa !49
  %i.od = load i8, ptr %i.nz, align 1, !tbaa !51
  %i.oe = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 3
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !51
  %i.of = add nsw i32 %.05.i.i815, -4             ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nv, i64 4 ; 3 uses
  store ptr %i.og, ptr %0, align 8, !tbaa !49
  %i.oh = load i8, ptr %i.oc, align 1, !tbaa !51
  %i.oi = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 4
  store i8 %i.oh, ptr %i.oe, align 1, !tbaa !51
  %.not.i.i817.3 = icmp eq i32 %i.of, 0
  br i1 %.not.i.i817.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818, label %.lr.ph.i.i814, !llvm.loop !138

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818.loopexit2101: ; preds = %vector.body1959
  store ptr %i.nr, ptr %0, align 8, !tbaa !49, !alias.scope !139, !noalias !141
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818: ; preds = %.lr.ph.i.i814, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818.loopexit2101
  %.lcssa1552 = phi ptr [ %i.nn, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818.loopexit2101 ], [ %i.og, %.lr.ph.i.i814 ] ; 2 uses
  %i.oj = add nsw i32 %.013.i812, -1024           ; 2 uses
  %i.ok = icmp sgt i32 %.013.i812, 2047
  br i1 %i.ok, label %vector.memcheck1943, label %._crit_edge.i804, !llvm.loop !95

._crit_edge.i804:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818, %bb.ag
  %.promoted.i805 = phi ptr [ %.promoted10.i803, %bb.ag ], [ %.lcssa1552, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 8 uses
  %.0.lcssa.i806 = phi i32 [ %i.nl, %bb.ag ], [ %i.oj, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 7 uses
  %i.ol = icmp sgt i32 %.0.lcssa.i806, 0
  br i1 %i.ol, label %.lr.ph.i5.i807.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819

.lr.ph.i5.i807.preheader:                         ; preds = %._crit_edge.i804
  %i.om = zext nneg i32 %.0.lcssa.i806 to i64     ; 2 uses
  %min.iters.check1926 = icmp ult i32 %.0.lcssa.i806, 12
  br i1 %min.iters.check1926, label %.lr.ph.i5.i807.preheader2102, label %vector.memcheck1908

vector.memcheck1908:                              ; preds = %.lr.ph.i5.i807.preheader
  %i.on = add nsw i32 %.0.lcssa.i806, -1
  %i.oo = zext i32 %i.on to i64                   ; 2 uses
  %scevgep1911 = getelementptr i8, ptr %scevgep1910, i64 %i.oo ; 2 uses
  %scevgep1912 = getelementptr i8, ptr %.promoted.i805, i64 1
  %scevgep1913 = getelementptr i8, ptr %scevgep1912, i64 %i.oo ; 2 uses
  %bound01914 = icmp ult ptr %0, %scevgep1911
  %found.conflict1916 = and i1 %bound01914, %bound11915
  %bound01917 = icmp ult ptr %0, %scevgep1913
  %bound11918 = icmp ult ptr %.promoted.i805, %scevgep1909
  %found.conflict1919 = and i1 %bound01917, %bound11918
  %conflict.rdx1920 = or i1 %found.conflict1916, %found.conflict1919
  %bound01921 = icmp ult ptr %i.g, %scevgep1913
  %bound11922 = icmp ult ptr %.promoted.i805, %scevgep1911
  %found.conflict1923 = and i1 %bound01921, %bound11922
  %conflict.rdx1924 = or i1 %conflict.rdx1920, %found.conflict1923
  br i1 %conflict.rdx1924, label %.lr.ph.i5.i807.preheader2102, label %vector.ph1927

vector.ph1927:                                    ; preds = %vector.memcheck1908
  %n.vec1929 = and i64 %i.om, 2147483644          ; 5 uses
  %i.op = getelementptr i8, ptr %.promoted.i805, i64 %n.vec1929
  %i.oq = trunc nuw nsw i64 %n.vec1929 to i32
  %i.or = sub nsw i32 %.0.lcssa.i806, %i.oq
  %i.os = getelementptr i8, ptr %i.g, i64 %n.vec1929
  br label %vector.body1930

vector.body1930:                                  ; preds = %vector.body1930, %vector.ph1927
  %index1931 = phi i64 [ 0, %vector.ph1927 ], [ %index.next1937, %vector.body1930 ] ; 4 uses
  %next.gep1932 = getelementptr i8, ptr %.promoted.i805, i64 %index1931 ; 2 uses
  %i.ot = getelementptr i8, ptr %.promoted.i805, i64 %index1931
  %next.gep1934 = getelementptr i8, ptr %i.g, i64 %index1931 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 4
  %i.ov = getelementptr i8, ptr %next.gep1932, i64 2
  %wide.load1935 = load <2 x i8>, ptr %next.gep1932, align 1, !tbaa !51, !alias.scope !142
  %wide.load1936 = load <2 x i8>, ptr %i.ov, align 1, !tbaa !51, !alias.scope !142
  %i.ow = getelementptr i8, ptr %next.gep1934, i64 2
  store <2 x i8> %wide.load1935, ptr %next.gep1934, align 4, !tbaa !51, !alias.scope !145, !noalias !142
  store <2 x i8> %wide.load1936, ptr %i.ow, align 2, !tbaa !51, !alias.scope !145, !noalias !142
  %index.next1937 = add nuw i64 %index1931, 4     ; 2 uses
  %i.ox = icmp eq i64 %index.next1937, %n.vec1929
  br i1 %i.ox, label %middle.block1938, label %vector.body1930, !llvm.loop !147

middle.block1938:                                 ; preds = %vector.body1930
  store ptr %i.ou, ptr %0, align 8, !tbaa !49, !alias.scope !148, !noalias !150
  %cmp.n1939 = icmp eq i64 %n.vec1929, %i.om
  br i1 %cmp.n1939, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807.preheader2102

.lr.ph.i5.i807.preheader2102:                     ; preds = %vector.memcheck1908, %.lr.ph.i5.i807.preheader, %middle.block1938
  %.ph2103 = phi ptr [ %.promoted.i805, %vector.memcheck1908 ], [ %.promoted.i805, %.lr.ph.i5.i807.preheader ], [ %i.op, %middle.block1938 ] ; 2 uses
  %.05.i6.i808.ph = phi i32 [ %.0.lcssa.i806, %vector.memcheck1908 ], [ %.0.lcssa.i806, %.lr.ph.i5.i807.preheader ], [ %i.or, %middle.block1938 ] ; 4 uses
  %.024.i7.i809.ph = phi ptr [ %i.g, %vector.memcheck1908 ], [ %i.g, %.lr.ph.i5.i807.preheader ], [ %i.os, %middle.block1938 ] ; 2 uses
  %i.oy = add nsw i32 %.05.i6.i808.ph, -1
  %xtraiter2210 = and i32 %.05.i6.i808.ph, 3      ; 2 uses
  %lcmp.mod2211.not = icmp eq i32 %xtraiter2210, 0
  br i1 %lcmp.mod2211.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol

.lr.ph.i5.i807.prol:                              ; preds = %.lr.ph.i5.i807.preheader2102, %.lr.ph.i5.i807.prol
  %i.oz = phi ptr [ %i.pb, %.lr.ph.i5.i807.prol ], [ %.ph2103, %.lr.ph.i5.i807.preheader2102 ] ; 2 uses
  %.05.i6.i808.prol = phi i32 [ %i.pa, %.lr.ph.i5.i807.prol ], [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2102 ]
  %.024.i7.i809.prol = phi ptr [ %i.pd, %.lr.ph.i5.i807.prol ], [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2102 ] ; 2 uses
  %prol.iter2212 = phi i32 [ %prol.iter2212.next, %.lr.ph.i5.i807.prol ], [ 0, %.lr.ph.i5.i807.preheader2102 ]
  %i.pa = add nsw i32 %.05.i6.i808.prol, -1       ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 1 ; 3 uses
  store ptr %i.pb, ptr %0, align 8, !tbaa !49
  %i.pc = load i8, ptr %i.oz, align 1, !tbaa !51
  %i.pd = getelementptr inbounds nuw i8, ptr %.024.i7.i809.prol, i64 1 ; 2 uses
  store i8 %i.pc, ptr %.024.i7.i809.prol, align 1, !tbaa !51
  %prol.iter2212.next = add i32 %prol.iter2212, 1 ; 2 uses
  %prol.iter2212.cmp.not = icmp eq i32 %prol.iter2212.next, %xtraiter2210
  br i1 %prol.iter2212.cmp.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol, !llvm.loop !151

.lr.ph.i5.i807.prol.loopexit:                     ; preds = %.lr.ph.i5.i807.prol, %.lr.ph.i5.i807.preheader2102
  %.unr2213 = phi ptr [ %.ph2103, %.lr.ph.i5.i807.preheader2102 ], [ %i.pb, %.lr.ph.i5.i807.prol ]
  %.05.i6.i808.unr = phi i32 [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2102 ], [ %i.pa, %.lr.ph.i5.i807.prol ]
  %.024.i7.i809.unr = phi ptr [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2102 ], [ %i.pd, %.lr.ph.i5.i807.prol ]
  %i.pe = icmp ult i32 %i.oy, 3
  br i1 %i.pe, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807

.lr.ph.i5.i807:                                   ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807
  %i.pf = phi ptr [ %i.pq, %.lr.ph.i5.i807 ], [ %.unr2213, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %.05.i6.i808 = phi i32 [ %i.pp, %.lr.ph.i5.i807 ], [ %.05.i6.i808.unr, %.lr.ph.i5.i807.prol.loopexit ]
  %.024.i7.i809 = phi ptr [ %i.ps, %.lr.ph.i5.i807 ], [ %.024.i7.i809.unr, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 1 ; 2 uses
  store ptr %i.pg, ptr %0, align 8, !tbaa !49
  %i.ph = load i8, ptr %i.pf, align 1, !tbaa !51
  %i.pi = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 1
  store i8 %i.ph, ptr %.024.i7.i809, align 1, !tbaa !51
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 2 ; 2 uses
  store ptr %i.pj, ptr %0, align 8, !tbaa !49
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !51
  %i.pl = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 2
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !51
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 3 ; 2 uses
  store ptr %i.pm, ptr %0, align 8, !tbaa !49
  %i.pn = load i8, ptr %i.pj, align 1, !tbaa !51
  %i.po = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 3
  store i8 %i.pn, ptr %i.pl, align 1, !tbaa !51
  %i.pp = add nsw i32 %.05.i6.i808, -4            ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pf, i64 4 ; 2 uses
  store ptr %i.pq, ptr %0, align 8, !tbaa !49
  %i.pr = load i8, ptr %i.pm, align 1, !tbaa !51
  %i.ps = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 4
  store i8 %i.pr, ptr %i.po, align 1, !tbaa !51
  %.not.i8.i810.3 = icmp eq i32 %i.pp, 0
  br i1 %.not.i8.i810.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807, !llvm.loop !152

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819: ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807, %middle.block1938, %._crit_edge.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.loopexit1035

.loopexit1035:                                    ; preds = %.lr.ph1219, %.preheader1034, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819
  %indvars.iv.next1381 = add nsw i64 %indvars.iv1380, 1 ; 2 uses
  %lftr.wideiv1383 = trunc i64 %indvars.iv.next1381 to i32
  %exitcond1384.not = icmp eq i32 %i.fn, %lftr.wideiv1383
  br i1 %exitcond1384.not, label %.loopexit1022, label %bb.af, !llvm.loop !153

bb.ah:                                            ; preds = %bb.aa
  %i.pt = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.pt, ptr noundef nonnull @.str.9)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @__cxa_throw(ptr nonnull %i.pt, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ak:                                            ; preds = %bb.z
  switch i32 %19, label %bb.ar [
    i32 0, label %.preheader1040
    i32 1, label %.preheader1044
    i32 2, label %.preheader1048
  ]

.preheader1048:                                   ; preds = %bb.ak
  %.not7491201 = icmp sgt i32 %6, %7
  br i1 %.not7491201, label %.loopexit1022, label %.lr.ph1203

.lr.ph1203:                                       ; preds = %.preheader1048
  %i.pv = sub nsw i32 %5, %11
  %i.pw = sext i32 %i.pv to i64
  %i.px = mul nsw i64 %14, %i.pw
  %i.py = getelementptr inbounds i8, ptr %1, i64 %i.px
  %i.pz = sub nsw i32 %5, %9
  %i.qa = sext i32 %i.pz to i64
  %sext1004 = shl i64 %4, 32
  %i.qb = ashr exact i64 %sext1004, 32
  %i.qc = mul nsw i64 %i.qb, %i.qa
  %i.qd = getelementptr inbounds i8, ptr %2, i64 %i.qc
  %sext1005 = shl i64 %3, 32
  %i.qe = ashr exact i64 %sext1005, 32
  %i.qf = sext i32 %6 to i64
  %i.qg = sext i32 %10 to i64
  %i.qh = sext i32 %8 to i64
  %i.qi = add i32 %7, 1
  %scevgep1729 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1730 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %scevgep1764 = getelementptr inbounds nuw i8, ptr %i.d, i64 1024 ; 2 uses
  %bound01766 = icmp ult ptr %0, %scevgep1764
  %bound11767 = icmp ult ptr %i.d, %scevgep1729
  %found.conflict1768 = and i1 %bound01766, %bound11767
  %bound11735 = icmp ult ptr %i.d, %scevgep1729
  br label %bb.ap

.preheader1044:                                   ; preds = %bb.ak
  %.not7511208 = icmp sgt i32 %6, %7
  br i1 %.not7511208, label %.loopexit1022, label %.lr.ph1210

.lr.ph1210:                                       ; preds = %.preheader1044
  %i.qj = sub nsw i32 %5, %11
  %i.qk = sext i32 %i.qj to i64
  %i.ql = mul nsw i64 %14, %i.qk
  %i.qm = getelementptr inbounds i8, ptr %1, i64 %i.ql
  %i.qn = sub nsw i32 %5, %9
  %i.qo = sext i32 %i.qn to i64
  %sext1006 = shl i64 %4, 32
  %i.qp = ashr exact i64 %sext1006, 32
  %i.qq = mul nsw i64 %i.qp, %i.qo
  %i.qr = getelementptr inbounds i8, ptr %2, i64 %i.qq
  %sext1007 = shl i64 %3, 32
  %i.qs = ashr exact i64 %sext1007, 32
  %i.qt = sext i32 %6 to i64
  %i.qu = sext i32 %10 to i64
  %i.qv = sext i32 %8 to i64
  %i.qw = add i32 %7, 1
  %scevgep1789 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1790 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %scevgep1824 = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 2 uses
  %bound01826 = icmp ult ptr %0, %scevgep1824
  %bound11827 = icmp ult ptr %i.e, %scevgep1789
  %found.conflict1828 = and i1 %bound01826, %bound11827
  %bound11795 = icmp ult ptr %i.e, %scevgep1789
  br label %bb.an

.preheader1040:                                   ; preds = %bb.ak
  %.not7531214 = icmp sgt i32 %6, %7
  br i1 %.not7531214, label %.loopexit1022, label %.lr.ph1216

.lr.ph1216:                                       ; preds = %.preheader1040
  %i.qx = sub nsw i32 %5, %11
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul nsw i64 %14, %i.qy
  %i.ra = getelementptr inbounds i8, ptr %1, i64 %i.qz
  %i.rb = sub nsw i32 %5, %9
  %i.rc = sext i32 %i.rb to i64
  %sext1008 = shl i64 %4, 32
  %i.rd = ashr exact i64 %sext1008, 32
  %i.re = mul nsw i64 %i.rd, %i.rc
  %i.rf = getelementptr inbounds i8, ptr %2, i64 %i.re
  %sext1009 = shl i64 %3, 32
  %i.rg = ashr exact i64 %sext1009, 32
  %i.rh = sext i32 %6 to i64
  %i.ri = sext i32 %10 to i64
  %i.rj = sext i32 %8 to i64
  %i.rk = add i32 %7, 1
  %scevgep1849 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1850 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %scevgep1884 = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  %bound01886 = icmp ult ptr %0, %scevgep1884
  %bound11887 = icmp ult ptr %i.f, %scevgep1849
  %found.conflict1888 = and i1 %bound01886, %bound11887
  %bound11855 = icmp ult ptr %i.f, %scevgep1849
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph1216, %.loopexit1039
  %indvars.iv1374 = phi i64 [ %i.rh, %.lr.ph1216 ], [ %indvars.iv.next1375, %.loopexit1039 ] ; 3 uses
  %i.rl = sub nsw i64 %indvars.iv1374, %i.ri
  %i.rm = mul nsw i64 %13, %i.rl
  %i.rn = getelementptr inbounds i8, ptr %i.ra, i64 %i.rm
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !49 ; 2 uses
  %i.rp = sub nsw i64 %indvars.iv1374, %i.rj
  %i.rq = mul nsw i64 %i.rg, %i.rp
  %i.rr = getelementptr inbounds i8, ptr %i.rf, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !3  ; 4 uses
  %.not754 = icmp eq ptr %i.ro, null
  br i1 %.not754, label %bb.am, label %.preheader1038

.preheader1038:                                   ; preds = %bb.al
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.lr.ph1213, label %.loopexit1039

.lr.ph1213:                                       ; preds = %.preheader1038, %.lr.ph1213
  %.07011212 = phi i32 [ %i.se, %.lr.ph1213 ], [ 0, %.preheader1038 ]
  %.07031211 = phi ptr [ %i.sd, %.lr.ph1213 ], [ %i.ro, %.preheader1038 ] ; 2 uses
  %.promoted.i820 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 1 ; 2 uses
  store ptr %i.ru, ptr %0, align 8, !tbaa !49
  %i.rv = load i8, ptr %.promoted.i820, align 1, !tbaa !51
  %i.rw = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 2 ; 2 uses
  store ptr %i.rw, ptr %0, align 8, !tbaa !49
  %i.rx = load i8, ptr %i.ru, align 1, !tbaa !51
  %i.ry = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 3 ; 2 uses
  store ptr %i.ry, ptr %0, align 8, !tbaa !49
  %i.rz = load i8, ptr %i.rw, align 1, !tbaa !51
  %i.sa = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 4
  store ptr %i.sa, ptr %0, align 8, !tbaa !49
  %i.sb = load i8, ptr %i.ry, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i821 = zext i8 %i.sb to i32
  %.sroa.6.0.insert.shift.i822 = shl nuw i32 %.sroa.6.0.insert.ext.i821, 24
  %.sroa.5.0.insert.ext.i823 = zext i8 %i.rz to i32
  %.sroa.5.0.insert.shift.i824 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i823, 16
  %.sroa.4.0.insert.ext.i826 = zext i8 %i.rx to i32
  %.sroa.4.0.insert.shift.i827 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i826, 8
  %.sroa.0.0.insert.ext.i829 = zext i8 %i.rv to i32
  %.sroa.5.0.insert.insert.i825 = or disjoint i32 %.sroa.4.0.insert.shift.i827, %.sroa.0.0.insert.ext.i829
  %.sroa.4.0.insert.insert.i828 = or disjoint i32 %.sroa.5.0.insert.insert.i825, %.sroa.5.0.insert.shift.i824
  %.sroa.0.0.insert.insert.i830 = or disjoint i32 %.sroa.4.0.insert.insert.i828, %.sroa.6.0.insert.shift.i822
  %i.sc = tail call i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_510uintToHalfEj(i32 noundef %.sroa.0.0.insert.insert.i830)
  store i16 %i.sc, ptr %.07031211, align 2, !tbaa !43
  %i.sd = getelementptr inbounds i8, ptr %.07031211, i64 %12
  %i.se = add nuw nsw i32 %.07011212, 1           ; 2 uses
  %exitcond1373.not = icmp eq i32 %i.se, %i.rs
  br i1 %exitcond1373.not, label %.loopexit1039, label %.lr.ph1213, !llvm.loop !154

bb.am:                                            ; preds = %bb.al
  %i.sf = shl nsw i32 %i.rs, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %.promoted10.i831 = load ptr, ptr %0, align 8   ; 2 uses
  %i.sg = icmp sgt i32 %i.rs, 255
  br i1 %i.sg, label %vector.memcheck1883, label %._crit_edge.i832

vector.memcheck1883:                              ; preds = %bb.am, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846
  %.013.i840 = phi i32 [ %i.td, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %i.sf, %bb.am ] ; 2 uses
  %.promoted1112.i841 = phi ptr [ %.lcssa1554, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %.promoted10.i831, %bb.am ] ; 8 uses
  %scevgep1885 = getelementptr i8, ptr %.promoted1112.i841, i64 1024 ; 2 uses
  %bound01889 = icmp ult ptr %0, %scevgep1885
  %bound11890 = icmp ult ptr %.promoted1112.i841, %scevgep1849
  %found.conflict1891 = and i1 %bound01889, %bound11890
  %conflict.rdx1892 = or i1 %found.conflict1888, %found.conflict1891
  %bound01893 = icmp ult ptr %i.f, %scevgep1885
  %bound11894 = icmp ult ptr %.promoted1112.i841, %scevgep1884
  %found.conflict1895 = and i1 %bound01893, %bound11894
  %conflict.rdx1896 = or i1 %conflict.rdx1892, %found.conflict1895
  br i1 %conflict.rdx1896, label %.lr.ph.i.i842, label %vector.ph1898

vector.ph1898:                                    ; preds = %vector.memcheck1883
  %i.sh = getelementptr i8, ptr %.promoted1112.i841, i64 1024
  br label %vector.body1899

vector.body1899:                                  ; preds = %vector.body1899, %vector.ph1898
  %index1900 = phi i64 [ 0, %vector.ph1898 ], [ %index.next1906.1, %vector.body1899 ] ; 4 uses
  %next.gep1901 = getelementptr i8, ptr %.promoted1112.i841, i64 %index1900 ; 2 uses
  %next.gep1903 = getelementptr i8, ptr %i.f, i64 %index1900 ; 2 uses
  %i.si = getelementptr i8, ptr %next.gep1901, i64 2
  %wide.load1904 = load <2 x i8>, ptr %next.gep1901, align 1, !tbaa !51, !alias.scope !155
  %wide.load1905 = load <2 x i8>, ptr %i.si, align 1, !tbaa !51, !alias.scope !155
  %i.sj = getelementptr i8, ptr %next.gep1903, i64 2
  store <2 x i8> %wide.load1904, ptr %next.gep1903, align 8, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1905, ptr %i.sj, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1906 = or disjoint i64 %index1900, 4 ; 3 uses
  %next.gep1901.1 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1906 ; 2 uses
  %i.sk = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1906
  %next.gep1903.1 = getelementptr i8, ptr %i.f, i64 %index.next1906 ; 2 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 4
  %i.sm = getelementptr i8, ptr %next.gep1901.1, i64 2
  %wide.load1904.1 = load <2 x i8>, ptr %next.gep1901.1, align 1, !tbaa !51, !alias.scope !155
  %wide.load1905.1 = load <2 x i8>, ptr %i.sm, align 1, !tbaa !51, !alias.scope !155
  %i.sn = getelementptr i8, ptr %next.gep1903.1, i64 2
  store <2 x i8> %wide.load1904.1, ptr %next.gep1903.1, align 4, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1905.1, ptr %i.sn, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1906.1 = add nuw nsw i64 %index1900, 8 ; 2 uses
  %i.so = icmp eq i64 %index.next1906.1, 1024
  br i1 %i.so, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846.loopexit2107, label %vector.body1899, !llvm.loop !160

.lr.ph.i.i842:                                    ; preds = %vector.memcheck1883, %.lr.ph.i.i842
  %i.sp = phi ptr [ %i.ta, %.lr.ph.i.i842 ], [ %.promoted1112.i841, %vector.memcheck1883 ] ; 5 uses
  %.05.i.i843 = phi i32 [ %i.sz, %.lr.ph.i.i842 ], [ 1024, %vector.memcheck1883 ]
  %.024.i.i844 = phi ptr [ %i.tc, %.lr.ph.i.i842 ], [ %i.f, %vector.memcheck1883 ] ; 5 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 1 ; 2 uses
  store ptr %i.sq, ptr %0, align 8, !tbaa !49
  %i.sr = load i8, ptr %i.sp, align 1, !tbaa !51
  %i.ss = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 1
  store i8 %i.sr, ptr %.024.i.i844, align 1, !tbaa !51
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 2 ; 2 uses
  store ptr %i.st, ptr %0, align 8, !tbaa !49
  %i.su = load i8, ptr %i.sq, align 1, !tbaa !51
  %i.sv = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 2
  store i8 %i.su, ptr %i.ss, align 1, !tbaa !51
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 3 ; 2 uses
  store ptr %i.sw, ptr %0, align 8, !tbaa !49
  %i.sx = load i8, ptr %i.st, align 1, !tbaa !51
  %i.sy = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 3
  store i8 %i.sx, ptr %i.sv, align 1, !tbaa !51
  %i.sz = add nsw i32 %.05.i.i843, -4             ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 3 uses
  store ptr %i.ta, ptr %0, align 8, !tbaa !49
  %i.tb = load i8, ptr %i.sw, align 1, !tbaa !51
  %i.tc = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 4
  store i8 %i.tb, ptr %i.sy, align 1, !tbaa !51
  %.not.i.i845.3 = icmp eq i32 %i.sz, 0
  br i1 %.not.i.i845.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846, label %.lr.ph.i.i842, !llvm.loop !161

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846.loopexit2107: ; preds = %vector.body1899
  store ptr %i.sl, ptr %0, align 8, !tbaa !49, !alias.scope !162, !noalias !164
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846: ; preds = %.lr.ph.i.i842, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846.loopexit2107
  %.lcssa1554 = phi ptr [ %i.sh, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846.loopexit2107 ], [ %i.ta, %.lr.ph.i.i842 ] ; 2 uses
  %i.td = add nsw i32 %.013.i840, -1024           ; 2 uses
  %i.te = icmp sgt i32 %.013.i840, 2047
  br i1 %i.te, label %vector.memcheck1883, label %._crit_edge.i832, !llvm.loop !95

._crit_edge.i832:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846, %bb.am
  %.promoted.i833 = phi ptr [ %.promoted10.i831, %bb.am ], [ %.lcssa1554, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 8 uses
  %.0.lcssa.i834 = phi i32 [ %i.sf, %bb.am ], [ %i.td, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 7 uses
  %i.tf = icmp sgt i32 %.0.lcssa.i834, 0
  br i1 %i.tf, label %.lr.ph.i5.i835.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847

.lr.ph.i5.i835.preheader:                         ; preds = %._crit_edge.i832
  %i.tg = zext nneg i32 %.0.lcssa.i834 to i64     ; 2 uses
  %min.iters.check1866 = icmp ult i32 %.0.lcssa.i834, 12
  br i1 %min.iters.check1866, label %.lr.ph.i5.i835.preheader2108, label %vector.memcheck1848

vector.memcheck1848:                              ; preds = %.lr.ph.i5.i835.preheader
  %i.th = add nsw i32 %.0.lcssa.i834, -1
  %i.ti = zext i32 %i.th to i64                   ; 2 uses
  %scevgep1851 = getelementptr i8, ptr %scevgep1850, i64 %i.ti ; 2 uses
  %scevgep1852 = getelementptr i8, ptr %.promoted.i833, i64 1
  %scevgep1853 = getelementptr i8, ptr %scevgep1852, i64 %i.ti ; 2 uses
  %bound01854 = icmp ult ptr %0, %scevgep1851
  %found.conflict1856 = and i1 %bound01854, %bound11855
  %bound01857 = icmp ult ptr %0, %scevgep1853
  %bound11858 = icmp ult ptr %.promoted.i833, %scevgep1849
  %found.conflict1859 = and i1 %bound01857, %bound11858
  %conflict.rdx1860 = or i1 %found.conflict1856, %found.conflict1859
  %bound01861 = icmp ult ptr %i.f, %scevgep1853
  %bound11862 = icmp ult ptr %.promoted.i833, %scevgep1851
  %found.conflict1863 = and i1 %bound01861, %bound11862
  %conflict.rdx1864 = or i1 %conflict.rdx1860, %found.conflict1863
  br i1 %conflict.rdx1864, label %.lr.ph.i5.i835.preheader2108, label %vector.ph1867

vector.ph1867:                                    ; preds = %vector.memcheck1848
  %n.vec1869 = and i64 %i.tg, 2147483644          ; 5 uses
  %i.tj = getelementptr i8, ptr %.promoted.i833, i64 %n.vec1869
  %i.tk = trunc nuw nsw i64 %n.vec1869 to i32
  %i.tl = sub nsw i32 %.0.lcssa.i834, %i.tk
  %i.tm = getelementptr i8, ptr %i.f, i64 %n.vec1869
  br label %vector.body1870

vector.body1870:                                  ; preds = %vector.body1870, %vector.ph1867
  %index1871 = phi i64 [ 0, %vector.ph1867 ], [ %index.next1877, %vector.body1870 ] ; 4 uses
  %next.gep1872 = getelementptr i8, ptr %.promoted.i833, i64 %index1871 ; 2 uses
  %i.tn = getelementptr i8, ptr %.promoted.i833, i64 %index1871
  %next.gep1874 = getelementptr i8, ptr %i.f, i64 %index1871 ; 2 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 4
  %i.tp = getelementptr i8, ptr %next.gep1872, i64 2
  %wide.load1875 = load <2 x i8>, ptr %next.gep1872, align 1, !tbaa !51, !alias.scope !165
  %wide.load1876 = load <2 x i8>, ptr %i.tp, align 1, !tbaa !51, !alias.scope !165
  %i.tq = getelementptr i8, ptr %next.gep1874, i64 2
  store <2 x i8> %wide.load1875, ptr %next.gep1874, align 4, !tbaa !51, !alias.scope !168, !noalias !165
  store <2 x i8> %wide.load1876, ptr %i.tq, align 2, !tbaa !51, !alias.scope !168, !noalias !165
  %index.next1877 = add nuw i64 %index1871, 4     ; 2 uses
  %i.tr = icmp eq i64 %index.next1877, %n.vec1869
  br i1 %i.tr, label %middle.block1878, label %vector.body1870, !llvm.loop !170

middle.block1878:                                 ; preds = %vector.body1870
  store ptr %i.to, ptr %0, align 8, !tbaa !49, !alias.scope !171, !noalias !173
  %cmp.n1879 = icmp eq i64 %n.vec1869, %i.tg
  br i1 %cmp.n1879, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835.preheader2108

.lr.ph.i5.i835.preheader2108:                     ; preds = %vector.memcheck1848, %.lr.ph.i5.i835.preheader, %middle.block1878
  %.ph2109 = phi ptr [ %.promoted.i833, %vector.memcheck1848 ], [ %.promoted.i833, %.lr.ph.i5.i835.preheader ], [ %i.tj, %middle.block1878 ] ; 2 uses
  %.05.i6.i836.ph = phi i32 [ %.0.lcssa.i834, %vector.memcheck1848 ], [ %.0.lcssa.i834, %.lr.ph.i5.i835.preheader ], [ %i.tl, %middle.block1878 ] ; 4 uses
  %.024.i7.i837.ph = phi ptr [ %i.f, %vector.memcheck1848 ], [ %i.f, %.lr.ph.i5.i835.preheader ], [ %i.tm, %middle.block1878 ] ; 2 uses
  %i.ts = add nsw i32 %.05.i6.i836.ph, -1
  %xtraiter2206 = and i32 %.05.i6.i836.ph, 3      ; 2 uses
  %lcmp.mod2207.not = icmp eq i32 %xtraiter2206, 0
  br i1 %lcmp.mod2207.not, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol

.lr.ph.i5.i835.prol:                              ; preds = %.lr.ph.i5.i835.preheader2108, %.lr.ph.i5.i835.prol
  %i.tt = phi ptr [ %i.tv, %.lr.ph.i5.i835.prol ], [ %.ph2109, %.lr.ph.i5.i835.preheader2108 ] ; 2 uses
  %.05.i6.i836.prol = phi i32 [ %i.tu, %.lr.ph.i5.i835.prol ], [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2108 ]
  %.024.i7.i837.prol = phi ptr [ %i.tx, %.lr.ph.i5.i835.prol ], [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2108 ] ; 2 uses
  %prol.iter2208 = phi i32 [ %prol.iter2208.next, %.lr.ph.i5.i835.prol ], [ 0, %.lr.ph.i5.i835.preheader2108 ]
  %i.tu = add nsw i32 %.05.i6.i836.prol, -1       ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 1 ; 3 uses
  store ptr %i.tv, ptr %0, align 8, !tbaa !49
  %i.tw = load i8, ptr %i.tt, align 1, !tbaa !51
  %i.tx = getelementptr inbounds nuw i8, ptr %.024.i7.i837.prol, i64 1 ; 2 uses
  store i8 %i.tw, ptr %.024.i7.i837.prol, align 1, !tbaa !51
  %prol.iter2208.next = add i32 %prol.iter2208, 1 ; 2 uses
  %prol.iter2208.cmp.not = icmp eq i32 %prol.iter2208.next, %xtraiter2206
  br i1 %prol.iter2208.cmp.not, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol, !llvm.loop !174

.lr.ph.i5.i835.prol.loopexit:                     ; preds = %.lr.ph.i5.i835.prol, %.lr.ph.i5.i835.preheader2108
  %.unr2209 = phi ptr [ %.ph2109, %.lr.ph.i5.i835.preheader2108 ], [ %i.tv, %.lr.ph.i5.i835.prol ]
  %.05.i6.i836.unr = phi i32 [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2108 ], [ %i.tu, %.lr.ph.i5.i835.prol ]
  %.024.i7.i837.unr = phi ptr [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2108 ], [ %i.tx, %.lr.ph.i5.i835.prol ]
  %i.ty = icmp ult i32 %i.ts, 3
  br i1 %i.ty, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835

.lr.ph.i5.i835:                                   ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835
  %i.tz = phi ptr [ %i.uk, %.lr.ph.i5.i835 ], [ %.unr2209, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %.05.i6.i836 = phi i32 [ %i.uj, %.lr.ph.i5.i835 ], [ %.05.i6.i836.unr, %.lr.ph.i5.i835.prol.loopexit ]
  %.024.i7.i837 = phi ptr [ %i.um, %.lr.ph.i5.i835 ], [ %.024.i7.i837.unr, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 1 ; 2 uses
  store ptr %i.ua, ptr %0, align 8, !tbaa !49
  %i.ub = load i8, ptr %i.tz, align 1, !tbaa !51
  %i.uc = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 1
  store i8 %i.ub, ptr %.024.i7.i837, align 1, !tbaa !51
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 2 ; 2 uses
  store ptr %i.ud, ptr %0, align 8, !tbaa !49
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !51
  %i.uf = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 2
  store i8 %i.ue, ptr %i.uc, align 1, !tbaa !51
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 3 ; 2 uses
  store ptr %i.ug, ptr %0, align 8, !tbaa !49
  %i.uh = load i8, ptr %i.ud, align 1, !tbaa !51
  %i.ui = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 3
  store i8 %i.uh, ptr %i.uf, align 1, !tbaa !51
  %i.uj = add nsw i32 %.05.i6.i836, -4            ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 4 ; 2 uses
  store ptr %i.uk, ptr %0, align 8, !tbaa !49
  %i.ul = load i8, ptr %i.ug, align 1, !tbaa !51
  %i.um = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 4
  store i8 %i.ul, ptr %i.ui, align 1, !tbaa !51
  %.not.i8.i838.3 = icmp eq i32 %i.uj, 0
  br i1 %.not.i8.i838.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835, !llvm.loop !175

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847: ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835, %middle.block1878, %._crit_edge.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.loopexit1039

.loopexit1039:                                    ; preds = %.lr.ph1213, %.preheader1038, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847
  %indvars.iv.next1375 = add nsw i64 %indvars.iv1374, 1 ; 2 uses
  %lftr.wideiv1377 = trunc i64 %indvars.iv.next1375 to i32
  %exitcond1378.not = icmp eq i32 %i.rk, %lftr.wideiv1377
  br i1 %exitcond1378.not, label %.loopexit1022, label %bb.al, !llvm.loop !176

bb.an:                                            ; preds = %.lr.ph1210, %.loopexit1043
  %indvars.iv1368 = phi i64 [ %i.qt, %.lr.ph1210 ], [ %indvars.iv.next1369, %.loopexit1043 ] ; 3 uses
  %i.un = sub nsw i64 %indvars.iv1368, %i.qu
  %i.uo = mul nsw i64 %13, %i.un
  %i.up = getelementptr inbounds i8, ptr %i.qm, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !49 ; 3 uses
  %i.ur = sub nsw i64 %indvars.iv1368, %i.qv
  %i.us = mul nsw i64 %i.qs, %i.ur
  %i.ut = getelementptr inbounds i8, ptr %i.qr, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !3  ; 7 uses
  %.not752 = icmp eq ptr %i.uq, null
  br i1 %.not752, label %bb.ao, label %.preheader1042

.preheader1042:                                   ; preds = %bb.an
  %i.uv = icmp sgt i32 %i.uu, 0
  br i1 %i.uv, label %.lr.ph1207.preheader, label %.loopexit1043

.lr.ph1207.preheader:                             ; preds = %.preheader1042
  %.promoted1204 = load ptr, ptr %0, align 8      ; 2 uses
  %xtraiter2194 = and i32 %i.uu, 1
  %i.uw = icmp eq i32 %i.uu, 1
  br i1 %i.uw, label %.lr.ph1207.epil.preheader, label %.lr.ph1207.preheader.new

.lr.ph1207.preheader.new:                         ; preds = %.lr.ph1207.preheader
  %unroll_iter2200 = and i32 %i.uu, 2147483646
  br label %.lr.ph1207

.lr.ph1207:                                       ; preds = %.lr.ph1207, %.lr.ph1207.preheader.new
  %.06981205 = phi ptr [ %i.uq, %.lr.ph1207.preheader.new ], [ %i.vh, %.lr.ph1207 ] ; 2 uses
  %i.ux = phi ptr [ %.promoted1204, %.lr.ph1207.preheader.new ], [ %i.vf, %.lr.ph1207 ] ; 5 uses
  %niter2201 = phi i32 [ 0, %.lr.ph1207.preheader.new ], [ %niter2201.next.1, %.lr.ph1207 ]
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 1 ; 2 uses
  store ptr %i.uy, ptr %0, align 8, !tbaa !49
  %i.uz = load i8, ptr %i.ux, align 1, !tbaa !51
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 2 ; 2 uses
  store ptr %i.va, ptr %0, align 8, !tbaa !49
  %i.vb = load i8, ptr %i.uy, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849 = zext i8 %i.vb to i16
  %.sroa.4.0.insert.shift.i850 = shl nuw i16 %.sroa.4.0.insert.ext.i849, 8
  %.sroa.0.0.insert.ext.i851 = zext i8 %i.uz to i16
  %.sroa.0.0.insert.insert.i852 = or disjoint i16 %.sroa.4.0.insert.shift.i850, %.sroa.0.0.insert.ext.i851
  store i16 %.sroa.0.0.insert.insert.i852, ptr %.06981205, align 2, !tbaa !56
  %i.vc = getelementptr inbounds i8, ptr %.06981205, i64 %12 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 3 ; 2 uses
  store ptr %i.vd, ptr %0, align 8, !tbaa !49
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !51
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ux, i64 4 ; 3 uses
  store ptr %i.vf, ptr %0, align 8, !tbaa !49
  %i.vg = load i8, ptr %i.vd, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849.1 = zext i8 %i.vg to i16
  %.sroa.4.0.insert.shift.i850.1 = shl nuw i16 %.sroa.4.0.insert.ext.i849.1, 8
  %.sroa.0.0.insert.ext.i851.1 = zext i8 %i.ve to i16
  %.sroa.0.0.insert.insert.i852.1 = or disjoint i16 %.sroa.4.0.insert.shift.i850.1, %.sroa.0.0.insert.ext.i851.1
  store i16 %.sroa.0.0.insert.insert.i852.1, ptr %i.vc, align 2, !tbaa !56
  %i.vh = getelementptr inbounds i8, ptr %i.vc, i64 %12 ; 2 uses
  %niter2201.next.1 = add i32 %niter2201, 2       ; 2 uses
  %niter2201.ncmp.1 = icmp eq i32 %niter2201.next.1, %unroll_iter2200
  br i1 %niter2201.ncmp.1, label %.loopexit1043.loopexit.unr-lcssa, label %.lr.ph1207, !llvm.loop !177

bb.ao:                                            ; preds = %bb.an
  %i.vi = shl nsw i32 %i.uu, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.promoted10.i853 = load ptr, ptr %0, align 8   ; 2 uses
  %i.vj = icmp sgt i32 %i.uu, 511
  br i1 %i.vj, label %vector.memcheck1823, label %._crit_edge.i854

vector.memcheck1823:                              ; preds = %bb.ao, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868
  %.013.i862 = phi i32 [ %i.wg, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %i.vi, %bb.ao ] ; 2 uses
  %.promoted1112.i863 = phi ptr [ %.lcssa1556, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %.promoted10.i853, %bb.ao ] ; 8 uses
  %scevgep1825 = getelementptr i8, ptr %.promoted1112.i863, i64 1024 ; 2 uses
  %bound01829 = icmp ult ptr %0, %scevgep1825
  %bound11830 = icmp ult ptr %.promoted1112.i863, %scevgep1789
  %found.conflict1831 = and i1 %bound01829, %bound11830
  %conflict.rdx1832 = or i1 %found.conflict1828, %found.conflict1831
  %bound01833 = icmp ult ptr %i.e, %scevgep1825
  %bound11834 = icmp ult ptr %.promoted1112.i863, %scevgep1824
  %found.conflict1835 = and i1 %bound01833, %bound11834
  %conflict.rdx1836 = or i1 %conflict.rdx1832, %found.conflict1835
  br i1 %conflict.rdx1836, label %.lr.ph.i.i864, label %vector.ph1838

vector.ph1838:                                    ; preds = %vector.memcheck1823
  %i.vk = getelementptr i8, ptr %.promoted1112.i863, i64 1024
  br label %vector.body1839

vector.body1839:                                  ; preds = %vector.body1839, %vector.ph1838
  %index1840 = phi i64 [ 0, %vector.ph1838 ], [ %index.next1846.1, %vector.body1839 ] ; 4 uses
  %next.gep1841 = getelementptr i8, ptr %.promoted1112.i863, i64 %index1840 ; 2 uses
  %next.gep1843 = getelementptr i8, ptr %i.e, i64 %index1840 ; 2 uses
  %i.vl = getelementptr i8, ptr %next.gep1841, i64 2
  %wide.load1844 = load <2 x i8>, ptr %next.gep1841, align 1, !tbaa !51, !alias.scope !178
  %wide.load1845 = load <2 x i8>, ptr %i.vl, align 1, !tbaa !51, !alias.scope !178
  %i.vm = getelementptr i8, ptr %next.gep1843, i64 2
  store <2 x i8> %wide.load1844, ptr %next.gep1843, align 8, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1845, ptr %i.vm, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1846 = or disjoint i64 %index1840, 4 ; 3 uses
  %next.gep1841.1 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1846 ; 2 uses
  %i.vn = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1846
  %next.gep1843.1 = getelementptr i8, ptr %i.e, i64 %index.next1846 ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 4
  %i.vp = getelementptr i8, ptr %next.gep1841.1, i64 2
  %wide.load1844.1 = load <2 x i8>, ptr %next.gep1841.1, align 1, !tbaa !51, !alias.scope !178
  %wide.load1845.1 = load <2 x i8>, ptr %i.vp, align 1, !tbaa !51, !alias.scope !178
  %i.vq = getelementptr i8, ptr %next.gep1843.1, i64 2
  store <2 x i8> %wide.load1844.1, ptr %next.gep1843.1, align 4, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1845.1, ptr %i.vq, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1846.1 = add nuw nsw i64 %index1840, 8 ; 2 uses
  %i.vr = icmp eq i64 %index.next1846.1, 1024
  br i1 %i.vr, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868.loopexit2113, label %vector.body1839, !llvm.loop !183

.lr.ph.i.i864:                                    ; preds = %vector.memcheck1823, %.lr.ph.i.i864
  %i.vs = phi ptr [ %i.wd, %.lr.ph.i.i864 ], [ %.promoted1112.i863, %vector.memcheck1823 ] ; 5 uses
  %.05.i.i865 = phi i32 [ %i.wc, %.lr.ph.i.i864 ], [ 1024, %vector.memcheck1823 ]
  %.024.i.i866 = phi ptr [ %i.wf, %.lr.ph.i.i864 ], [ %i.e, %vector.memcheck1823 ] ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 1 ; 2 uses
  store ptr %i.vt, ptr %0, align 8, !tbaa !49
  %i.vu = load i8, ptr %i.vs, align 1, !tbaa !51
  %i.vv = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 1
  store i8 %i.vu, ptr %.024.i.i866, align 1, !tbaa !51
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vs, i64 2 ; 2 uses
  store ptr %i.vw, ptr %0, align 8, !tbaa !49
  %i.vx = load i8, ptr %i.vt, align 1, !tbaa !51
  %i.vy = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 2
  store i8 %i.vx, ptr %i.vv, align 1, !tbaa !51
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vs, i64 3 ; 2 uses
  store ptr %i.vz, ptr %0, align 8, !tbaa !49
  %i.wa = load i8, ptr %i.vw, align 1, !tbaa !51
  %i.wb = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 3
  store i8 %i.wa, ptr %i.vy, align 1, !tbaa !51
  %i.wc = add nsw i32 %.05.i.i865, -4             ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 4 ; 3 uses
  store ptr %i.wd, ptr %0, align 8, !tbaa !49
  %i.we = load i8, ptr %i.vz, align 1, !tbaa !51
  %i.wf = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 4
  store i8 %i.we, ptr %i.wb, align 1, !tbaa !51
  %.not.i.i867.3 = icmp eq i32 %i.wc, 0
  br i1 %.not.i.i867.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868, label %.lr.ph.i.i864, !llvm.loop !184

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868.loopexit2113: ; preds = %vector.body1839
  store ptr %i.vo, ptr %0, align 8, !tbaa !49, !alias.scope !185, !noalias !187
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868: ; preds = %.lr.ph.i.i864, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868.loopexit2113
  %.lcssa1556 = phi ptr [ %i.vk, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868.loopexit2113 ], [ %i.wd, %.lr.ph.i.i864 ] ; 2 uses
  %i.wg = add nsw i32 %.013.i862, -1024           ; 2 uses
  %i.wh = icmp sgt i32 %.013.i862, 2047
  br i1 %i.wh, label %vector.memcheck1823, label %._crit_edge.i854, !llvm.loop !95

._crit_edge.i854:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868, %bb.ao
  %.promoted.i855 = phi ptr [ %.promoted10.i853, %bb.ao ], [ %.lcssa1556, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 8 uses
  %.0.lcssa.i856 = phi i32 [ %i.vi, %bb.ao ], [ %i.wg, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 7 uses
  %i.wi = icmp sgt i32 %.0.lcssa.i856, 0
  br i1 %i.wi, label %.lr.ph.i5.i857.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869

.lr.ph.i5.i857.preheader:                         ; preds = %._crit_edge.i854
  %i.wj = zext nneg i32 %.0.lcssa.i856 to i64     ; 2 uses
  %min.iters.check1806 = icmp ult i32 %.0.lcssa.i856, 12
  br i1 %min.iters.check1806, label %.lr.ph.i5.i857.preheader2114, label %vector.memcheck1788

vector.memcheck1788:                              ; preds = %.lr.ph.i5.i857.preheader
  %i.wk = add nsw i32 %.0.lcssa.i856, -1
  %i.wl = zext i32 %i.wk to i64                   ; 2 uses
  %scevgep1791 = getelementptr i8, ptr %scevgep1790, i64 %i.wl ; 2 uses
  %scevgep1792 = getelementptr i8, ptr %.promoted.i855, i64 1
  %scevgep1793 = getelementptr i8, ptr %scevgep1792, i64 %i.wl ; 2 uses
  %bound01794 = icmp ult ptr %0, %scevgep1791
  %found.conflict1796 = and i1 %bound01794, %bound11795
  %bound01797 = icmp ult ptr %0, %scevgep1793
  %bound11798 = icmp ult ptr %.promoted.i855, %scevgep1789
  %found.conflict1799 = and i1 %bound01797, %bound11798
  %conflict.rdx1800 = or i1 %found.conflict1796, %found.conflict1799
  %bound01801 = icmp ult ptr %i.e, %scevgep1793
  %bound11802 = icmp ult ptr %.promoted.i855, %scevgep1791
  %found.conflict1803 = and i1 %bound01801, %bound11802
  %conflict.rdx1804 = or i1 %conflict.rdx1800, %found.conflict1803
  br i1 %conflict.rdx1804, label %.lr.ph.i5.i857.preheader2114, label %vector.ph1807

vector.ph1807:                                    ; preds = %vector.memcheck1788
  %n.vec1809 = and i64 %i.wj, 2147483644          ; 5 uses
  %i.wm = getelementptr i8, ptr %.promoted.i855, i64 %n.vec1809
  %i.wn = trunc nuw nsw i64 %n.vec1809 to i32
  %i.wo = sub nsw i32 %.0.lcssa.i856, %i.wn
  %i.wp = getelementptr i8, ptr %i.e, i64 %n.vec1809
  br label %vector.body1810

vector.body1810:                                  ; preds = %vector.body1810, %vector.ph1807
  %index1811 = phi i64 [ 0, %vector.ph1807 ], [ %index.next1817, %vector.body1810 ] ; 4 uses
  %next.gep1812 = getelementptr i8, ptr %.promoted.i855, i64 %index1811 ; 2 uses
  %i.wq = getelementptr i8, ptr %.promoted.i855, i64 %index1811
  %next.gep1814 = getelementptr i8, ptr %i.e, i64 %index1811 ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wq, i64 4
  %i.ws = getelementptr i8, ptr %next.gep1812, i64 2
  %wide.load1815 = load <2 x i8>, ptr %next.gep1812, align 1, !tbaa !51, !alias.scope !188
  %wide.load1816 = load <2 x i8>, ptr %i.ws, align 1, !tbaa !51, !alias.scope !188
  %i.wt = getelementptr i8, ptr %next.gep1814, i64 2
  store <2 x i8> %wide.load1815, ptr %next.gep1814, align 4, !tbaa !51, !alias.scope !191, !noalias !188
  store <2 x i8> %wide.load1816, ptr %i.wt, align 2, !tbaa !51, !alias.scope !191, !noalias !188
  %index.next1817 = add nuw i64 %index1811, 4     ; 2 uses
  %i.wu = icmp eq i64 %index.next1817, %n.vec1809
  br i1 %i.wu, label %middle.block1818, label %vector.body1810, !llvm.loop !193

middle.block1818:                                 ; preds = %vector.body1810
  store ptr %i.wr, ptr %0, align 8, !tbaa !49, !alias.scope !194, !noalias !196
  %cmp.n1819 = icmp eq i64 %n.vec1809, %i.wj
  br i1 %cmp.n1819, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857.preheader2114

.lr.ph.i5.i857.preheader2114:                     ; preds = %vector.memcheck1788, %.lr.ph.i5.i857.preheader, %middle.block1818
  %.ph2115 = phi ptr [ %.promoted.i855, %vector.memcheck1788 ], [ %.promoted.i855, %.lr.ph.i5.i857.preheader ], [ %i.wm, %middle.block1818 ] ; 2 uses
  %.05.i6.i858.ph = phi i32 [ %.0.lcssa.i856, %vector.memcheck1788 ], [ %.0.lcssa.i856, %.lr.ph.i5.i857.preheader ], [ %i.wo, %middle.block1818 ] ; 4 uses
  %.024.i7.i859.ph = phi ptr [ %i.e, %vector.memcheck1788 ], [ %i.e, %.lr.ph.i5.i857.preheader ], [ %i.wp, %middle.block1818 ] ; 2 uses
  %i.wv = add nsw i32 %.05.i6.i858.ph, -1
  %xtraiter2202 = and i32 %.05.i6.i858.ph, 3      ; 2 uses
  %lcmp.mod2203.not = icmp eq i32 %xtraiter2202, 0
  br i1 %lcmp.mod2203.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol

.lr.ph.i5.i857.prol:                              ; preds = %.lr.ph.i5.i857.preheader2114, %.lr.ph.i5.i857.prol
  %i.ww = phi ptr [ %i.wy, %.lr.ph.i5.i857.prol ], [ %.ph2115, %.lr.ph.i5.i857.preheader2114 ] ; 2 uses
  %.05.i6.i858.prol = phi i32 [ %i.wx, %.lr.ph.i5.i857.prol ], [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2114 ]
  %.024.i7.i859.prol = phi ptr [ %i.xa, %.lr.ph.i5.i857.prol ], [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2114 ] ; 2 uses
  %prol.iter2204 = phi i32 [ %prol.iter2204.next, %.lr.ph.i5.i857.prol ], [ 0, %.lr.ph.i5.i857.preheader2114 ]
  %i.wx = add nsw i32 %.05.i6.i858.prol, -1       ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 1 ; 3 uses
  store ptr %i.wy, ptr %0, align 8, !tbaa !49
  %i.wz = load i8, ptr %i.ww, align 1, !tbaa !51
  %i.xa = getelementptr inbounds nuw i8, ptr %.024.i7.i859.prol, i64 1 ; 2 uses
  store i8 %i.wz, ptr %.024.i7.i859.prol, align 1, !tbaa !51
  %prol.iter2204.next = add i32 %prol.iter2204, 1 ; 2 uses
  %prol.iter2204.cmp.not = icmp eq i32 %prol.iter2204.next, %xtraiter2202
  br i1 %prol.iter2204.cmp.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol, !llvm.loop !197

.lr.ph.i5.i857.prol.loopexit:                     ; preds = %.lr.ph.i5.i857.prol, %.lr.ph.i5.i857.preheader2114
  %.unr2205 = phi ptr [ %.ph2115, %.lr.ph.i5.i857.preheader2114 ], [ %i.wy, %.lr.ph.i5.i857.prol ]
  %.05.i6.i858.unr = phi i32 [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2114 ], [ %i.wx, %.lr.ph.i5.i857.prol ]
  %.024.i7.i859.unr = phi ptr [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2114 ], [ %i.xa, %.lr.ph.i5.i857.prol ]
  %i.xb = icmp ult i32 %i.wv, 3
  br i1 %i.xb, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857

.lr.ph.i5.i857:                                   ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857
  %i.xc = phi ptr [ %i.xn, %.lr.ph.i5.i857 ], [ %.unr2205, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %.05.i6.i858 = phi i32 [ %i.xm, %.lr.ph.i5.i857 ], [ %.05.i6.i858.unr, %.lr.ph.i5.i857.prol.loopexit ]
  %.024.i7.i859 = phi ptr [ %i.xp, %.lr.ph.i5.i857 ], [ %.024.i7.i859.unr, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1 ; 2 uses
  store ptr %i.xd, ptr %0, align 8, !tbaa !49
  %i.xe = load i8, ptr %i.xc, align 1, !tbaa !51
  %i.xf = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 1
  store i8 %i.xe, ptr %.024.i7.i859, align 1, !tbaa !51
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xc, i64 2 ; 2 uses
  store ptr %i.xg, ptr %0, align 8, !tbaa !49
  %i.xh = load i8, ptr %i.xd, align 1, !tbaa !51
  %i.xi = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 2
  store i8 %i.xh, ptr %i.xf, align 1, !tbaa !51
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 3 ; 2 uses
  store ptr %i.xj, ptr %0, align 8, !tbaa !49
  %i.xk = load i8, ptr %i.xg, align 1, !tbaa !51
  %i.xl = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 3
  store i8 %i.xk, ptr %i.xi, align 1, !tbaa !51
  %i.xm = add nsw i32 %.05.i6.i858, -4            ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xc, i64 4 ; 2 uses
  store ptr %i.xn, ptr %0, align 8, !tbaa !49
  %i.xo = load i8, ptr %i.xj, align 1, !tbaa !51
  %i.xp = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 4
  store i8 %i.xo, ptr %i.xl, align 1, !tbaa !51
  %.not.i8.i860.3 = icmp eq i32 %i.xm, 0
  br i1 %.not.i8.i860.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857, !llvm.loop !198

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869: ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857, %middle.block1818, %._crit_edge.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.loopexit1043

.loopexit1043.loopexit.unr-lcssa:                 ; preds = %.lr.ph1207
  %lcmp.mod2198.not = icmp eq i32 %xtraiter2194, 0
  br i1 %lcmp.mod2198.not, label %.loopexit1043, label %.lr.ph1207.epil.preheader

.lr.ph1207.epil.preheader:                        ; preds = %.loopexit1043.loopexit.unr-lcssa, %.lr.ph1207.preheader
  %.06981205.epil.init = phi ptr [ %i.uq, %.lr.ph1207.preheader ], [ %i.vh, %.loopexit1043.loopexit.unr-lcssa ]
  %.epil.init2197 = phi ptr [ %.promoted1204, %.lr.ph1207.preheader ], [ %i.vf, %.loopexit1043.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2199 = trunc i32 %i.uu to i1
  call void @llvm.assume(i1 %lcmp.mod2199)
  %i.xq = getelementptr inbounds nuw i8, ptr %.epil.init2197, i64 1 ; 2 uses
  store ptr %i.xq, ptr %0, align 8, !tbaa !49
  %i.xr = load i8, ptr %.epil.init2197, align 1, !tbaa !51
  %i.xs = getelementptr inbounds nuw i8, ptr %.epil.init2197, i64 2
  store ptr %i.xs, ptr %0, align 8, !tbaa !49
  %i.xt = load i8, ptr %i.xq, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849.epil = zext i8 %i.xt to i16
  %.sroa.4.0.insert.shift.i850.epil = shl nuw i16 %.sroa.4.0.insert.ext.i849.epil, 8
  %.sroa.0.0.insert.ext.i851.epil = zext i8 %i.xr to i16
  %.sroa.0.0.insert.insert.i852.epil = or disjoint i16 %.sroa.4.0.insert.shift.i850.epil, %.sroa.0.0.insert.ext.i851.epil
  store i16 %.sroa.0.0.insert.insert.i852.epil, ptr %.06981205.epil.init, align 2, !tbaa !56
  br label %.loopexit1043

.loopexit1043:                                    ; preds = %.lr.ph1207.epil.preheader, %.loopexit1043.loopexit.unr-lcssa, %.preheader1042, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869
  %indvars.iv.next1369 = add nsw i64 %indvars.iv1368, 1 ; 2 uses
  %lftr.wideiv1371 = trunc i64 %indvars.iv.next1369 to i32
  %exitcond1372.not = icmp eq i32 %i.qw, %lftr.wideiv1371
  br i1 %exitcond1372.not, label %.loopexit1022, label %bb.an, !llvm.loop !199

bb.ap:                                            ; preds = %.lr.ph1203, %.loopexit1047
  %indvars.iv1362 = phi i64 [ %i.qf, %.lr.ph1203 ], [ %indvars.iv.next1363, %.loopexit1047 ] ; 3 uses
  %i.xu = sub nsw i64 %indvars.iv1362, %i.qg
  %i.xv = mul nsw i64 %13, %i.xu
  %i.xw = getelementptr inbounds i8, ptr %i.py, i64 %i.xv
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !49 ; 2 uses
  %i.xy = sub nsw i64 %indvars.iv1362, %i.qh
  %i.xz = mul nsw i64 %i.qe, %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.qd, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !3  ; 4 uses
  %.not750 = icmp eq ptr %i.xx, null
  br i1 %.not750, label %bb.aq, label %.preheader1046

.preheader1046:                                   ; preds = %bb.ap
  %i.yc = icmp sgt i32 %i.yb, 0
  br i1 %i.yc, label %.lr.ph1200, label %.loopexit1047

.lr.ph1200:                                       ; preds = %.preheader1046, %.lr.ph1200
  %.06921199 = phi i32 [ %i.yo, %.lr.ph1200 ], [ 0, %.preheader1046 ]
  %.06941198 = phi ptr [ %i.yn, %.lr.ph1200 ], [ %i.xx, %.preheader1046 ] ; 2 uses
  %.promoted.i870 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 1 ; 2 uses
  store ptr %i.yd, ptr %0, align 8, !tbaa !49
  %i.ye = load i8, ptr %.promoted.i870, align 1, !tbaa !51
  %i.yf = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 2 ; 2 uses
  store ptr %i.yf, ptr %0, align 8, !tbaa !49
  %i.yg = load i8, ptr %i.yd, align 1, !tbaa !51
  %i.yh = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 3 ; 2 uses
  store ptr %i.yh, ptr %0, align 8, !tbaa !49
  %i.yi = load i8, ptr %i.yf, align 1, !tbaa !51
  %i.yj = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 4
  store ptr %i.yj, ptr %0, align 8, !tbaa !49
  %i.yk = load i8, ptr %i.yh, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i871 = zext i8 %i.yk to i32
  %.sroa.6.0.insert.shift.i872 = shl nuw i32 %.sroa.6.0.insert.ext.i871, 24
  %.sroa.5.0.insert.ext.i873 = zext i8 %i.yi to i32
  %.sroa.5.0.insert.shift.i874 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i873, 16
  %.sroa.4.0.insert.ext.i876 = zext i8 %i.yg to i32
  %.sroa.4.0.insert.shift.i877 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i876, 8
  %.sroa.0.0.insert.ext.i879 = zext i8 %i.ye to i32
  %.sroa.5.0.insert.insert.i875 = or disjoint i32 %.sroa.4.0.insert.shift.i877, %.sroa.0.0.insert.ext.i879
  %.sroa.4.0.insert.insert.i878 = or disjoint i32 %.sroa.5.0.insert.insert.i875, %.sroa.5.0.insert.shift.i874
  %.sroa.0.0.insert.insert.i880 = or disjoint i32 %.sroa.4.0.insert.insert.i878, %.sroa.6.0.insert.shift.i872
  %i.yl = bitcast i32 %.sroa.0.0.insert.insert.i880 to float
  %i.ym = tail call i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_511floatToHalfEf(float noundef %i.yl)
  store i16 %i.ym, ptr %.06941198, align 2, !tbaa !43
  %i.yn = getelementptr inbounds i8, ptr %.06941198, i64 %12
  %i.yo = add nuw nsw i32 %.06921199, 1           ; 2 uses
  %exitcond1361.not = icmp eq i32 %i.yo, %i.yb
  br i1 %exitcond1361.not, label %.loopexit1047, label %.lr.ph1200, !llvm.loop !200

bb.aq:                                            ; preds = %bb.ap
  %i.yp = shl nsw i32 %i.yb, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %.promoted10.i881 = load ptr, ptr %0, align 8   ; 2 uses
  %i.yq = icmp sgt i32 %i.yb, 255
  br i1 %i.yq, label %vector.memcheck1763, label %._crit_edge.i882

vector.memcheck1763:                              ; preds = %bb.aq, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896
  %.013.i890 = phi i32 [ %i.zn, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %i.yp, %bb.aq ] ; 2 uses
  %.promoted1112.i891 = phi ptr [ %.lcssa1558, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %.promoted10.i881, %bb.aq ] ; 8 uses
  %scevgep1765 = getelementptr i8, ptr %.promoted1112.i891, i64 1024 ; 2 uses
  %bound01769 = icmp ult ptr %0, %scevgep1765
  %bound11770 = icmp ult ptr %.promoted1112.i891, %scevgep1729
  %found.conflict1771 = and i1 %bound01769, %bound11770
  %conflict.rdx1772 = or i1 %found.conflict1768, %found.conflict1771
  %bound01773 = icmp ult ptr %i.d, %scevgep1765
  %bound11774 = icmp ult ptr %.promoted1112.i891, %scevgep1764
  %found.conflict1775 = and i1 %bound01773, %bound11774
  %conflict.rdx1776 = or i1 %conflict.rdx1772, %found.conflict1775
  br i1 %conflict.rdx1776, label %.lr.ph.i.i892, label %vector.ph1778

vector.ph1778:                                    ; preds = %vector.memcheck1763
  %i.yr = getelementptr i8, ptr %.promoted1112.i891, i64 1024
  br label %vector.body1779

vector.body1779:                                  ; preds = %vector.body1779, %vector.ph1778
  %index1780 = phi i64 [ 0, %vector.ph1778 ], [ %index.next1786.1, %vector.body1779 ] ; 4 uses
  %next.gep1781 = getelementptr i8, ptr %.promoted1112.i891, i64 %index1780 ; 2 uses
  %next.gep1783 = getelementptr i8, ptr %i.d, i64 %index1780 ; 2 uses
  %i.ys = getelementptr i8, ptr %next.gep1781, i64 2
  %wide.load1784 = load <2 x i8>, ptr %next.gep1781, align 1, !tbaa !51, !alias.scope !201
  %wide.load1785 = load <2 x i8>, ptr %i.ys, align 1, !tbaa !51, !alias.scope !201
  %i.yt = getelementptr i8, ptr %next.gep1783, i64 2
  store <2 x i8> %wide.load1784, ptr %next.gep1783, align 8, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1785, ptr %i.yt, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1786 = or disjoint i64 %index1780, 4 ; 3 uses
  %next.gep1781.1 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1786 ; 2 uses
  %i.yu = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1786
  %next.gep1783.1 = getelementptr i8, ptr %i.d, i64 %index.next1786 ; 2 uses
  %i.yv = getelementptr i8, ptr %i.yu, i64 4
  %i.yw = getelementptr i8, ptr %next.gep1781.1, i64 2
  %wide.load1784.1 = load <2 x i8>, ptr %next.gep1781.1, align 1, !tbaa !51, !alias.scope !201
  %wide.load1785.1 = load <2 x i8>, ptr %i.yw, align 1, !tbaa !51, !alias.scope !201
  %i.yx = getelementptr i8, ptr %next.gep1783.1, i64 2
  store <2 x i8> %wide.load1784.1, ptr %next.gep1783.1, align 4, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1785.1, ptr %i.yx, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1786.1 = add nuw nsw i64 %index1780, 8 ; 2 uses
  %i.yy = icmp eq i64 %index.next1786.1, 1024
  br i1 %i.yy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896.loopexit2119, label %vector.body1779, !llvm.loop !206

.lr.ph.i.i892:                                    ; preds = %vector.memcheck1763, %.lr.ph.i.i892
  %i.yz = phi ptr [ %i.zk, %.lr.ph.i.i892 ], [ %.promoted1112.i891, %vector.memcheck1763 ] ; 5 uses
  %.05.i.i893 = phi i32 [ %i.zj, %.lr.ph.i.i892 ], [ 1024, %vector.memcheck1763 ]
  %.024.i.i894 = phi ptr [ %i.zm, %.lr.ph.i.i892 ], [ %i.d, %vector.memcheck1763 ] ; 5 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1 ; 2 uses
  store ptr %i.za, ptr %0, align 8, !tbaa !49
  %i.zb = load i8, ptr %i.yz, align 1, !tbaa !51
  %i.zc = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 1
  store i8 %i.zb, ptr %.024.i.i894, align 1, !tbaa !51
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 2 ; 2 uses
  store ptr %i.zd, ptr %0, align 8, !tbaa !49
  %i.ze = load i8, ptr %i.za, align 1, !tbaa !51
  %i.zf = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 2
  store i8 %i.ze, ptr %i.zc, align 1, !tbaa !51
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 3 ; 2 uses
  store ptr %i.zg, ptr %0, align 8, !tbaa !49
  %i.zh = load i8, ptr %i.zd, align 1, !tbaa !51
  %i.zi = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 3
  store i8 %i.zh, ptr %i.zf, align 1, !tbaa !51
  %i.zj = add nsw i32 %.05.i.i893, -4             ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 3 uses
  store ptr %i.zk, ptr %0, align 8, !tbaa !49
  %i.zl = load i8, ptr %i.zg, align 1, !tbaa !51
  %i.zm = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 4
  store i8 %i.zl, ptr %i.zi, align 1, !tbaa !51
  %.not.i.i895.3 = icmp eq i32 %i.zj, 0
  br i1 %.not.i.i895.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896, label %.lr.ph.i.i892, !llvm.loop !207

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896.loopexit2119: ; preds = %vector.body1779
  store ptr %i.yv, ptr %0, align 8, !tbaa !49, !alias.scope !208, !noalias !210
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896: ; preds = %.lr.ph.i.i892, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896.loopexit2119
  %.lcssa1558 = phi ptr [ %i.yr, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896.loopexit2119 ], [ %i.zk, %.lr.ph.i.i892 ] ; 2 uses
  %i.zn = add nsw i32 %.013.i890, -1024           ; 2 uses
  %i.zo = icmp sgt i32 %.013.i890, 2047
  br i1 %i.zo, label %vector.memcheck1763, label %._crit_edge.i882, !llvm.loop !95

._crit_edge.i882:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896, %bb.aq
  %.promoted.i883 = phi ptr [ %.promoted10.i881, %bb.aq ], [ %.lcssa1558, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 8 uses
  %.0.lcssa.i884 = phi i32 [ %i.yp, %bb.aq ], [ %i.zn, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 7 uses
  %i.zp = icmp sgt i32 %.0.lcssa.i884, 0
  br i1 %i.zp, label %.lr.ph.i5.i885.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897

.lr.ph.i5.i885.preheader:                         ; preds = %._crit_edge.i882
  %i.zq = zext nneg i32 %.0.lcssa.i884 to i64     ; 2 uses
  %min.iters.check1746 = icmp ult i32 %.0.lcssa.i884, 12
  br i1 %min.iters.check1746, label %.lr.ph.i5.i885.preheader2120, label %vector.memcheck1728

vector.memcheck1728:                              ; preds = %.lr.ph.i5.i885.preheader
  %i.zr = add nsw i32 %.0.lcssa.i884, -1
  %i.zs = zext i32 %i.zr to i64                   ; 2 uses
  %scevgep1731 = getelementptr i8, ptr %scevgep1730, i64 %i.zs ; 2 uses
  %scevgep1732 = getelementptr i8, ptr %.promoted.i883, i64 1
  %scevgep1733 = getelementptr i8, ptr %scevgep1732, i64 %i.zs ; 2 uses
  %bound01734 = icmp ult ptr %0, %scevgep1731
  %found.conflict1736 = and i1 %bound01734, %bound11735
  %bound01737 = icmp ult ptr %0, %scevgep1733
  %bound11738 = icmp ult ptr %.promoted.i883, %scevgep1729
  %found.conflict1739 = and i1 %bound01737, %bound11738
  %conflict.rdx1740 = or i1 %found.conflict1736, %found.conflict1739
  %bound01741 = icmp ult ptr %i.d, %scevgep1733
  %bound11742 = icmp ult ptr %.promoted.i883, %scevgep1731
  %found.conflict1743 = and i1 %bound01741, %bound11742
  %conflict.rdx1744 = or i1 %conflict.rdx1740, %found.conflict1743
  br i1 %conflict.rdx1744, label %.lr.ph.i5.i885.preheader2120, label %vector.ph1747

vector.ph1747:                                    ; preds = %vector.memcheck1728
  %n.vec1749 = and i64 %i.zq, 2147483644          ; 5 uses
  %i.zt = getelementptr i8, ptr %.promoted.i883, i64 %n.vec1749
  %i.zu = trunc nuw nsw i64 %n.vec1749 to i32
  %i.zv = sub nsw i32 %.0.lcssa.i884, %i.zu
  %i.zw = getelementptr i8, ptr %i.d, i64 %n.vec1749
  br label %vector.body1750

vector.body1750:                                  ; preds = %vector.body1750, %vector.ph1747
  %index1751 = phi i64 [ 0, %vector.ph1747 ], [ %index.next1757, %vector.body1750 ] ; 4 uses
  %next.gep1752 = getelementptr i8, ptr %.promoted.i883, i64 %index1751 ; 2 uses
  %i.zx = getelementptr i8, ptr %.promoted.i883, i64 %index1751
  %next.gep1754 = getelementptr i8, ptr %i.d, i64 %index1751 ; 2 uses
  %i.zy = getelementptr i8, ptr %i.zx, i64 4
  %i.zz = getelementptr i8, ptr %next.gep1752, i64 2
  %wide.load1755 = load <2 x i8>, ptr %next.gep1752, align 1, !tbaa !51, !alias.scope !211
  %wide.load1756 = load <2 x i8>, ptr %i.zz, align 1, !tbaa !51, !alias.scope !211
  %i.aaa = getelementptr i8, ptr %next.gep1754, i64 2
  store <2 x i8> %wide.load1755, ptr %next.gep1754, align 4, !tbaa !51, !alias.scope !214, !noalias !211
  store <2 x i8> %wide.load1756, ptr %i.aaa, align 2, !tbaa !51, !alias.scope !214, !noalias !211
  %index.next1757 = add nuw i64 %index1751, 4     ; 2 uses
  %i.aab = icmp eq i64 %index.next1757, %n.vec1749
  br i1 %i.aab, label %middle.block1758, label %vector.body1750, !llvm.loop !216

middle.block1758:                                 ; preds = %vector.body1750
  store ptr %i.zy, ptr %0, align 8, !tbaa !49, !alias.scope !217, !noalias !219
  %cmp.n1759 = icmp eq i64 %n.vec1749, %i.zq
  br i1 %cmp.n1759, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885.preheader2120

.lr.ph.i5.i885.preheader2120:                     ; preds = %vector.memcheck1728, %.lr.ph.i5.i885.preheader, %middle.block1758
  %.ph2121 = phi ptr [ %.promoted.i883, %vector.memcheck1728 ], [ %.promoted.i883, %.lr.ph.i5.i885.preheader ], [ %i.zt, %middle.block1758 ] ; 2 uses
  %.05.i6.i886.ph = phi i32 [ %.0.lcssa.i884, %vector.memcheck1728 ], [ %.0.lcssa.i884, %.lr.ph.i5.i885.preheader ], [ %i.zv, %middle.block1758 ] ; 4 uses
  %.024.i7.i887.ph = phi ptr [ %i.d, %vector.memcheck1728 ], [ %i.d, %.lr.ph.i5.i885.preheader ], [ %i.zw, %middle.block1758 ] ; 2 uses
  %i.aac = add nsw i32 %.05.i6.i886.ph, -1
  %xtraiter2190 = and i32 %.05.i6.i886.ph, 3      ; 2 uses
  %lcmp.mod2191.not = icmp eq i32 %xtraiter2190, 0
  br i1 %lcmp.mod2191.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol

.lr.ph.i5.i885.prol:                              ; preds = %.lr.ph.i5.i885.preheader2120, %.lr.ph.i5.i885.prol
  %i.aad = phi ptr [ %i.aaf, %.lr.ph.i5.i885.prol ], [ %.ph2121, %.lr.ph.i5.i885.preheader2120 ] ; 2 uses
  %.05.i6.i886.prol = phi i32 [ %i.aae, %.lr.ph.i5.i885.prol ], [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2120 ]
  %.024.i7.i887.prol = phi ptr [ %i.aah, %.lr.ph.i5.i885.prol ], [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2120 ] ; 2 uses
  %prol.iter2192 = phi i32 [ %prol.iter2192.next, %.lr.ph.i5.i885.prol ], [ 0, %.lr.ph.i5.i885.preheader2120 ]
  %i.aae = add nsw i32 %.05.i6.i886.prol, -1      ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 1 ; 3 uses
  store ptr %i.aaf, ptr %0, align 8, !tbaa !49
  %i.aag = load i8, ptr %i.aad, align 1, !tbaa !51
  %i.aah = getelementptr inbounds nuw i8, ptr %.024.i7.i887.prol, i64 1 ; 2 uses
  store i8 %i.aag, ptr %.024.i7.i887.prol, align 1, !tbaa !51
  %prol.iter2192.next = add i32 %prol.iter2192, 1 ; 2 uses
  %prol.iter2192.cmp.not = icmp eq i32 %prol.iter2192.next, %xtraiter2190
  br i1 %prol.iter2192.cmp.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol, !llvm.loop !220

.lr.ph.i5.i885.prol.loopexit:                     ; preds = %.lr.ph.i5.i885.prol, %.lr.ph.i5.i885.preheader2120
  %.unr2193 = phi ptr [ %.ph2121, %.lr.ph.i5.i885.preheader2120 ], [ %i.aaf, %.lr.ph.i5.i885.prol ]
  %.05.i6.i886.unr = phi i32 [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2120 ], [ %i.aae, %.lr.ph.i5.i885.prol ]
  %.024.i7.i887.unr = phi ptr [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2120 ], [ %i.aah, %.lr.ph.i5.i885.prol ]
  %i.aai = icmp ult i32 %i.aac, 3
  br i1 %i.aai, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885

.lr.ph.i5.i885:                                   ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885
  %i.aaj = phi ptr [ %i.aau, %.lr.ph.i5.i885 ], [ %.unr2193, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %.05.i6.i886 = phi i32 [ %i.aat, %.lr.ph.i5.i885 ], [ %.05.i6.i886.unr, %.lr.ph.i5.i885.prol.loopexit ]
  %.024.i7.i887 = phi ptr [ %i.aaw, %.lr.ph.i5.i885 ], [ %.024.i7.i887.unr, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 1 ; 2 uses
  store ptr %i.aak, ptr %0, align 8, !tbaa !49
  %i.aal = load i8, ptr %i.aaj, align 1, !tbaa !51
  %i.aam = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 1
  store i8 %i.aal, ptr %.024.i7.i887, align 1, !tbaa !51
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 2 ; 2 uses
  store ptr %i.aan, ptr %0, align 8, !tbaa !49
  %i.aao = load i8, ptr %i.aak, align 1, !tbaa !51
  %i.aap = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 2
  store i8 %i.aao, ptr %i.aam, align 1, !tbaa !51
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 3 ; 2 uses
  store ptr %i.aaq, ptr %0, align 8, !tbaa !49
  %i.aar = load i8, ptr %i.aan, align 1, !tbaa !51
  %i.aas = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 3
  store i8 %i.aar, ptr %i.aap, align 1, !tbaa !51
  %i.aat = add nsw i32 %.05.i6.i886, -4           ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4 ; 2 uses
  store ptr %i.aau, ptr %0, align 8, !tbaa !49
  %i.aav = load i8, ptr %i.aaq, align 1, !tbaa !51
  %i.aaw = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 4
  store i8 %i.aav, ptr %i.aas, align 1, !tbaa !51
  %.not.i8.i888.3 = icmp eq i32 %i.aat, 0
  br i1 %.not.i8.i888.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885, !llvm.loop !221

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897: ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885, %middle.block1758, %._crit_edge.i882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.loopexit1047

.loopexit1047:                                    ; preds = %.lr.ph1200, %.preheader1046, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897
  %indvars.iv.next1363 = add nsw i64 %indvars.iv1362, 1 ; 2 uses
  %lftr.wideiv1365 = trunc i64 %indvars.iv.next1363 to i32
  %exitcond1366.not = icmp eq i32 %i.qi, %lftr.wideiv1365
  br i1 %exitcond1366.not, label %.loopexit1022, label %bb.ap, !llvm.loop !222

bb.ar:                                            ; preds = %bb.ak
  %i.aax = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.aax, ptr noundef nonnull @.str.9)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @__cxa_throw(ptr nonnull %i.aax, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.au:                                            ; preds = %bb.z
  switch i32 %19, label %bb.bb [
    i32 0, label %.preheader1052
    i32 1, label %.preheader1056
    i32 2, label %.preheader1060
  ]

.preheader1060:                                   ; preds = %bb.au
  %.not7431181 = icmp sgt i32 %6, %7
  br i1 %.not7431181, label %.loopexit1022, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %.preheader1060
  %i.aaz = sub nsw i32 %5, %11
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = mul nsw i64 %14, %i.aba
  %i.abc = getelementptr inbounds i8, ptr %1, i64 %i.abb
  %i.abd = sub nsw i32 %5, %9
  %i.abe = sext i32 %i.abd to i64
  %sext998 = shl i64 %4, 32
  %i.abf = ashr exact i64 %sext998, 32
  %i.abg = mul nsw i64 %i.abf, %i.abe
  %i.abh = getelementptr inbounds i8, ptr %2, i64 %i.abg
  %sext999 = shl i64 %3, 32
  %i.abi = ashr exact i64 %sext999, 32
  %i.abj = sext i32 %6 to i64
  %i.abk = sext i32 %10 to i64
  %i.abl = sext i32 %8 to i64
  %i.abm = add i32 %7, 1
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1567 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %scevgep1584 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %bound01586 = icmp ult ptr %0, %scevgep1584
  %bound11587 = icmp ult ptr %i.a, %scevgep
  %found.conflict1588 = and i1 %bound01586, %bound11587
  %bound1 = icmp ult ptr %i.a, %scevgep
  br label %bb.az

.preheader1056:                                   ; preds = %bb.au
  %.not7451188 = icmp sgt i32 %6, %7
  br i1 %.not7451188, label %.loopexit1022, label %.lr.ph1190

.lr.ph1190:                                       ; preds = %.preheader1056
  %i.abn = sub nsw i32 %5, %11
  %i.abo = sext i32 %i.abn to i64
  %i.abp = mul nsw i64 %14, %i.abo
  %i.abq = getelementptr inbounds i8, ptr %1, i64 %i.abp
  %i.abr = sub nsw i32 %5, %9
  %i.abs = sext i32 %i.abr to i64
  %sext1000 = shl i64 %4, 32
  %i.abt = ashr exact i64 %sext1000, 32
  %i.abu = mul nsw i64 %i.abt, %i.abs
  %i.abv = getelementptr inbounds i8, ptr %2, i64 %i.abu
  %sext1001 = shl i64 %3, 32
  %i.abw = ashr exact i64 %sext1001, 32
  %i.abx = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.aby = sext i32 %6 to i64
  %i.abz = sext i32 %10 to i64
  %i.aca = sext i32 %8 to i64
  %i.acb = add i32 %7, 1
  %scevgep1609 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1610 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %scevgep1644 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %bound01646 = icmp ult ptr %0, %scevgep1644
  %bound11647 = icmp ult ptr %i.b, %scevgep1609
  %found.conflict1648 = and i1 %bound01646, %bound11647
  %bound11615 = icmp ult ptr %i.b, %scevgep1609
  br label %bb.ax

.preheader1052:                                   ; preds = %bb.au
  %.not7471195 = icmp sgt i32 %6, %7
  br i1 %.not7471195, label %.loopexit1022, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %.preheader1052
  %i.acc = sub nsw i32 %5, %11
  %i.acd = sext i32 %i.acc to i64
  %i.ace = mul nsw i64 %14, %i.acd
  %i.acf = getelementptr inbounds i8, ptr %1, i64 %i.ace
  %i.acg = sub nsw i32 %5, %9
  %i.ach = sext i32 %i.acg to i64
  %sext1002 = shl i64 %4, 32
  %i.aci = ashr exact i64 %sext1002, 32
  %i.acj = mul nsw i64 %i.aci, %i.ach
  %i.ack = getelementptr inbounds i8, ptr %2, i64 %i.acj
  %sext1003 = shl i64 %3, 32
  %i.acl = ashr exact i64 %sext1003, 32
  %i.acm = sext i32 %6 to i64
  %i.acn = sext i32 %10 to i64
  %i.aco = sext i32 %8 to i64
  %i.acp = add i32 %7, 1
  %scevgep1669 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1670 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %scevgep1704 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %bound01706 = icmp ult ptr %0, %scevgep1704
  %bound11707 = icmp ult ptr %i.c, %scevgep1669
  %found.conflict1708 = and i1 %bound01706, %bound11707
  %bound11675 = icmp ult ptr %i.c, %scevgep1669
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph1197, %.loopexit1051
  %indvars.iv1356 = phi i64 [ %i.acm, %.lr.ph1197 ], [ %indvars.iv.next1357, %.loopexit1051 ] ; 3 uses
  %i.acq = sub nsw i64 %indvars.iv1356, %i.acn
  %i.acr = mul nsw i64 %13, %i.acq
  %i.acs = getelementptr inbounds i8, ptr %i.acf, i64 %i.acr
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !49 ; 2 uses
  %i.acu = sub nsw i64 %indvars.iv1356, %i.aco
  %i.acv = mul nsw i64 %i.acl, %i.acu
  %i.acw = getelementptr inbounds i8, ptr %i.ack, i64 %i.acv
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !3 ; 4 uses
  %.not748 = icmp eq ptr %i.act, null
  br i1 %.not748, label %bb.aw, label %.preheader1050

.preheader1050:                                   ; preds = %bb.av
  %i.acy = icmp sgt i32 %i.acx, 0
  br i1 %i.acy, label %.lr.ph1194.preheader, label %.loopexit1051

.lr.ph1194.preheader:                             ; preds = %.preheader1050
  %.promoted1191 = load ptr, ptr %0, align 8
  br label %.lr.ph1194

.lr.ph1194:                                       ; preds = %.lr.ph1194.preheader, %.lr.ph1194
  %.06871193 = phi i32 [ %i.adk, %.lr.ph1194 ], [ 0, %.lr.ph1194.preheader ]
  %.06891192 = phi ptr [ %i.adj, %.lr.ph1194 ], [ %i.act, %.lr.ph1194.preheader ] ; 2 uses
  %i.acz = phi ptr [ %i.adg, %.lr.ph1194 ], [ %.promoted1191, %.lr.ph1194.preheader ] ; 5 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 1 ; 2 uses
  store ptr %i.ada, ptr %0, align 8, !tbaa !49
  %i.adb = load i8, ptr %i.acz, align 1, !tbaa !51
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 2 ; 2 uses
  store ptr %i.adc, ptr %0, align 8, !tbaa !49
  %i.add = load i8, ptr %i.ada, align 1, !tbaa !51
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 3 ; 2 uses
  store ptr %i.ade, ptr %0, align 8, !tbaa !49
  %i.adf = load i8, ptr %i.adc, align 1, !tbaa !51
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acz, i64 4 ; 2 uses
  store ptr %i.adg, ptr %0, align 8, !tbaa !49
  %i.adh = load i8, ptr %i.ade, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i899 = zext i8 %i.adh to i32
  %.sroa.6.0.insert.shift.i900 = shl nuw i32 %.sroa.6.0.insert.ext.i899, 24
  %.sroa.5.0.insert.ext.i901 = zext i8 %i.adf to i32
  %.sroa.5.0.insert.shift.i902 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i901, 16
  %.sroa.4.0.insert.ext.i904 = zext i8 %i.add to i32
  %.sroa.4.0.insert.shift.i905 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i904, 8
  %.sroa.0.0.insert.ext.i907 = zext i8 %i.adb to i32
  %.sroa.5.0.insert.insert.i903 = or disjoint i32 %.sroa.4.0.insert.shift.i905, %.sroa.0.0.insert.ext.i907
  %.sroa.4.0.insert.insert.i906 = or disjoint i32 %.sroa.5.0.insert.insert.i903, %.sroa.5.0.insert.shift.i902
  %.sroa.0.0.insert.insert.i908 = or disjoint i32 %.sroa.4.0.insert.insert.i906, %.sroa.6.0.insert.shift.i900
  %i.adi = uitofp i32 %.sroa.0.0.insert.insert.i908 to float
  store float %i.adi, ptr %.06891192, align 4, !tbaa !46
  %i.adj = getelementptr inbounds i8, ptr %.06891192, i64 %12
  %i.adk = add nuw nsw i32 %.06871193, 1          ; 2 uses
  %exitcond1355.not = icmp eq i32 %i.adk, %i.acx
  br i1 %exitcond1355.not, label %.loopexit1051, label %.lr.ph1194, !llvm.loop !223

bb.aw:                                            ; preds = %bb.av
  %i.adl = shl nsw i32 %i.acx, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i909 = load ptr, ptr %0, align 8   ; 2 uses
  %i.adm = icmp sgt i32 %i.acx, 255
  br i1 %i.adm, label %vector.memcheck1703, label %._crit_edge.i910

vector.memcheck1703:                              ; preds = %bb.aw, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924
  %.013.i918 = phi i32 [ %i.aej, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %i.adl, %bb.aw ] ; 2 uses
  %.promoted1112.i919 = phi ptr [ %.lcssa1560, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %.promoted10.i909, %bb.aw ] ; 8 uses
  %scevgep1705 = getelementptr i8, ptr %.promoted1112.i919, i64 1024 ; 2 uses
  %bound01709 = icmp ult ptr %0, %scevgep1705
  %bound11710 = icmp ult ptr %.promoted1112.i919, %scevgep1669
  %found.conflict1711 = and i1 %bound01709, %bound11710
  %conflict.rdx1712 = or i1 %found.conflict1708, %found.conflict1711
  %bound01713 = icmp ult ptr %i.c, %scevgep1705
  %bound11714 = icmp ult ptr %.promoted1112.i919, %scevgep1704
  %found.conflict1715 = and i1 %bound01713, %bound11714
  %conflict.rdx1716 = or i1 %conflict.rdx1712, %found.conflict1715
  br i1 %conflict.rdx1716, label %.lr.ph.i.i920, label %vector.ph1718

vector.ph1718:                                    ; preds = %vector.memcheck1703
  %i.adn = getelementptr i8, ptr %.promoted1112.i919, i64 1024
  br label %vector.body1719

vector.body1719:                                  ; preds = %vector.body1719, %vector.ph1718
  %index1720 = phi i64 [ 0, %vector.ph1718 ], [ %index.next1726.1, %vector.body1719 ] ; 4 uses
  %next.gep1721 = getelementptr i8, ptr %.promoted1112.i919, i64 %index1720 ; 2 uses
  %next.gep1723 = getelementptr i8, ptr %i.c, i64 %index1720 ; 2 uses
  %i.ado = getelementptr i8, ptr %next.gep1721, i64 2
  %wide.load1724 = load <2 x i8>, ptr %next.gep1721, align 1, !tbaa !51, !alias.scope !224
  %wide.load1725 = load <2 x i8>, ptr %i.ado, align 1, !tbaa !51, !alias.scope !224
  %i.adp = getelementptr i8, ptr %next.gep1723, i64 2
  store <2 x i8> %wide.load1724, ptr %next.gep1723, align 8, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1725, ptr %i.adp, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1726 = or disjoint i64 %index1720, 4 ; 3 uses
  %next.gep1721.1 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1726 ; 2 uses
  %i.adq = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1726
  %next.gep1723.1 = getelementptr i8, ptr %i.c, i64 %index.next1726 ; 2 uses
  %i.adr = getelementptr i8, ptr %i.adq, i64 4
  %i.ads = getelementptr i8, ptr %next.gep1721.1, i64 2
  %wide.load1724.1 = load <2 x i8>, ptr %next.gep1721.1, align 1, !tbaa !51, !alias.scope !224
  %wide.load1725.1 = load <2 x i8>, ptr %i.ads, align 1, !tbaa !51, !alias.scope !224
  %i.adt = getelementptr i8, ptr %next.gep1723.1, i64 2
  store <2 x i8> %wide.load1724.1, ptr %next.gep1723.1, align 4, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1725.1, ptr %i.adt, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1726.1 = add nuw nsw i64 %index1720, 8 ; 2 uses
  %i.adu = icmp eq i64 %index.next1726.1, 1024
  br i1 %i.adu, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924.loopexit2125, label %vector.body1719, !llvm.loop !229

.lr.ph.i.i920:                                    ; preds = %vector.memcheck1703, %.lr.ph.i.i920
  %i.adv = phi ptr [ %i.aeg, %.lr.ph.i.i920 ], [ %.promoted1112.i919, %vector.memcheck1703 ] ; 5 uses
  %.05.i.i921 = phi i32 [ %i.aef, %.lr.ph.i.i920 ], [ 1024, %vector.memcheck1703 ]
  %.024.i.i922 = phi ptr [ %i.aei, %.lr.ph.i.i920 ], [ %i.c, %vector.memcheck1703 ] ; 5 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 1 ; 2 uses
  store ptr %i.adw, ptr %0, align 8, !tbaa !49
  %i.adx = load i8, ptr %i.adv, align 1, !tbaa !51
  %i.ady = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 1
  store i8 %i.adx, ptr %.024.i.i922, align 1, !tbaa !51
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 2 ; 2 uses
  store ptr %i.adz, ptr %0, align 8, !tbaa !49
  %i.aea = load i8, ptr %i.adw, align 1, !tbaa !51
  %i.aeb = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 2
  store i8 %i.aea, ptr %i.ady, align 1, !tbaa !51
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adv, i64 3 ; 2 uses
  store ptr %i.aec, ptr %0, align 8, !tbaa !49
  %i.aed = load i8, ptr %i.adz, align 1, !tbaa !51
  %i.aee = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 3
  store i8 %i.aed, ptr %i.aeb, align 1, !tbaa !51
  %i.aef = add nsw i32 %.05.i.i921, -4            ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adv, i64 4 ; 3 uses
  store ptr %i.aeg, ptr %0, align 8, !tbaa !49
  %i.aeh = load i8, ptr %i.aec, align 1, !tbaa !51
  %i.aei = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 4
  store i8 %i.aeh, ptr %i.aee, align 1, !tbaa !51
  %.not.i.i923.3 = icmp eq i32 %i.aef, 0
  br i1 %.not.i.i923.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924, label %.lr.ph.i.i920, !llvm.loop !230

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924.loopexit2125: ; preds = %vector.body1719
  store ptr %i.adr, ptr %0, align 8, !tbaa !49, !alias.scope !231, !noalias !233
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924: ; preds = %.lr.ph.i.i920, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924.loopexit2125
  %.lcssa1560 = phi ptr [ %i.adn, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924.loopexit2125 ], [ %i.aeg, %.lr.ph.i.i920 ] ; 2 uses
  %i.aej = add nsw i32 %.013.i918, -1024          ; 2 uses
  %i.aek = icmp sgt i32 %.013.i918, 2047
  br i1 %i.aek, label %vector.memcheck1703, label %._crit_edge.i910, !llvm.loop !95

._crit_edge.i910:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924, %bb.aw
  %.promoted.i911 = phi ptr [ %.promoted10.i909, %bb.aw ], [ %.lcssa1560, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 8 uses
  %.0.lcssa.i912 = phi i32 [ %i.adl, %bb.aw ], [ %i.aej, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 7 uses
  %i.ael = icmp sgt i32 %.0.lcssa.i912, 0
  br i1 %i.ael, label %.lr.ph.i5.i913.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925

.lr.ph.i5.i913.preheader:                         ; preds = %._crit_edge.i910
  %i.aem = zext nneg i32 %.0.lcssa.i912 to i64    ; 2 uses
  %min.iters.check1686 = icmp ult i32 %.0.lcssa.i912, 12
  br i1 %min.iters.check1686, label %.lr.ph.i5.i913.preheader2126, label %vector.memcheck1668

vector.memcheck1668:                              ; preds = %.lr.ph.i5.i913.preheader
  %i.aen = add nsw i32 %.0.lcssa.i912, -1
  %i.aeo = zext i32 %i.aen to i64                 ; 2 uses
  %scevgep1671 = getelementptr i8, ptr %scevgep1670, i64 %i.aeo ; 2 uses
  %scevgep1672 = getelementptr i8, ptr %.promoted.i911, i64 1
  %scevgep1673 = getelementptr i8, ptr %scevgep1672, i64 %i.aeo ; 2 uses
  %bound01674 = icmp ult ptr %0, %scevgep1671
  %found.conflict1676 = and i1 %bound01674, %bound11675
  %bound01677 = icmp ult ptr %0, %scevgep1673
  %bound11678 = icmp ult ptr %.promoted.i911, %scevgep1669
  %found.conflict1679 = and i1 %bound01677, %bound11678
  %conflict.rdx1680 = or i1 %found.conflict1676, %found.conflict1679
  %bound01681 = icmp ult ptr %i.c, %scevgep1673
  %bound11682 = icmp ult ptr %.promoted.i911, %scevgep1671
  %found.conflict1683 = and i1 %bound01681, %bound11682
  %conflict.rdx1684 = or i1 %conflict.rdx1680, %found.conflict1683
  br i1 %conflict.rdx1684, label %.lr.ph.i5.i913.preheader2126, label %vector.ph1687

vector.ph1687:                                    ; preds = %vector.memcheck1668
  %n.vec1689 = and i64 %i.aem, 2147483644         ; 5 uses
  %i.aep = getelementptr i8, ptr %.promoted.i911, i64 %n.vec1689
  %i.aeq = trunc nuw nsw i64 %n.vec1689 to i32
  %i.aer = sub nsw i32 %.0.lcssa.i912, %i.aeq
  %i.aes = getelementptr i8, ptr %i.c, i64 %n.vec1689
  br label %vector.body1690

vector.body1690:                                  ; preds = %vector.body1690, %vector.ph1687
  %index1691 = phi i64 [ 0, %vector.ph1687 ], [ %index.next1697, %vector.body1690 ] ; 4 uses
  %next.gep1692 = getelementptr i8, ptr %.promoted.i911, i64 %index1691 ; 2 uses
  %i.aet = getelementptr i8, ptr %.promoted.i911, i64 %index1691
  %next.gep1694 = getelementptr i8, ptr %i.c, i64 %index1691 ; 2 uses
  %i.aeu = getelementptr i8, ptr %i.aet, i64 4
  %i.aev = getelementptr i8, ptr %next.gep1692, i64 2
  %wide.load1695 = load <2 x i8>, ptr %next.gep1692, align 1, !tbaa !51, !alias.scope !234
  %wide.load1696 = load <2 x i8>, ptr %i.aev, align 1, !tbaa !51, !alias.scope !234
  %i.aew = getelementptr i8, ptr %next.gep1694, i64 2
  store <2 x i8> %wide.load1695, ptr %next.gep1694, align 4, !tbaa !51, !alias.scope !237, !noalias !234
  store <2 x i8> %wide.load1696, ptr %i.aew, align 2, !tbaa !51, !alias.scope !237, !noalias !234
  %index.next1697 = add nuw i64 %index1691, 4     ; 2 uses
  %i.aex = icmp eq i64 %index.next1697, %n.vec1689
  br i1 %i.aex, label %middle.block1698, label %vector.body1690, !llvm.loop !239

middle.block1698:                                 ; preds = %vector.body1690
  store ptr %i.aeu, ptr %0, align 8, !tbaa !49, !alias.scope !240, !noalias !242
  %cmp.n1699 = icmp eq i64 %n.vec1689, %i.aem
  br i1 %cmp.n1699, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913.preheader2126

.lr.ph.i5.i913.preheader2126:                     ; preds = %vector.memcheck1668, %.lr.ph.i5.i913.preheader, %middle.block1698
  %.ph2127 = phi ptr [ %.promoted.i911, %vector.memcheck1668 ], [ %.promoted.i911, %.lr.ph.i5.i913.preheader ], [ %i.aep, %middle.block1698 ] ; 2 uses
  %.05.i6.i914.ph = phi i32 [ %.0.lcssa.i912, %vector.memcheck1668 ], [ %.0.lcssa.i912, %.lr.ph.i5.i913.preheader ], [ %i.aer, %middle.block1698 ] ; 4 uses
  %.024.i7.i915.ph = phi ptr [ %i.c, %vector.memcheck1668 ], [ %i.c, %.lr.ph.i5.i913.preheader ], [ %i.aes, %middle.block1698 ] ; 2 uses
  %i.aey = add nsw i32 %.05.i6.i914.ph, -1
  %xtraiter2186 = and i32 %.05.i6.i914.ph, 3      ; 2 uses
  %lcmp.mod2187.not = icmp eq i32 %xtraiter2186, 0
  br i1 %lcmp.mod2187.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol

.lr.ph.i5.i913.prol:                              ; preds = %.lr.ph.i5.i913.preheader2126, %.lr.ph.i5.i913.prol
  %i.aez = phi ptr [ %i.afb, %.lr.ph.i5.i913.prol ], [ %.ph2127, %.lr.ph.i5.i913.preheader2126 ] ; 2 uses
  %.05.i6.i914.prol = phi i32 [ %i.afa, %.lr.ph.i5.i913.prol ], [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2126 ]
  %.024.i7.i915.prol = phi ptr [ %i.afd, %.lr.ph.i5.i913.prol ], [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2126 ] ; 2 uses
  %prol.iter2188 = phi i32 [ %prol.iter2188.next, %.lr.ph.i5.i913.prol ], [ 0, %.lr.ph.i5.i913.preheader2126 ]
  %i.afa = add nsw i32 %.05.i6.i914.prol, -1      ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 1 ; 3 uses
  store ptr %i.afb, ptr %0, align 8, !tbaa !49
  %i.afc = load i8, ptr %i.aez, align 1, !tbaa !51
  %i.afd = getelementptr inbounds nuw i8, ptr %.024.i7.i915.prol, i64 1 ; 2 uses
  store i8 %i.afc, ptr %.024.i7.i915.prol, align 1, !tbaa !51
  %prol.iter2188.next = add i32 %prol.iter2188, 1 ; 2 uses
  %prol.iter2188.cmp.not = icmp eq i32 %prol.iter2188.next, %xtraiter2186
  br i1 %prol.iter2188.cmp.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol, !llvm.loop !243

.lr.ph.i5.i913.prol.loopexit:                     ; preds = %.lr.ph.i5.i913.prol, %.lr.ph.i5.i913.preheader2126
  %.unr2189 = phi ptr [ %.ph2127, %.lr.ph.i5.i913.preheader2126 ], [ %i.afb, %.lr.ph.i5.i913.prol ]
  %.05.i6.i914.unr = phi i32 [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2126 ], [ %i.afa, %.lr.ph.i5.i913.prol ]
  %.024.i7.i915.unr = phi ptr [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2126 ], [ %i.afd, %.lr.ph.i5.i913.prol ]
  %i.afe = icmp ult i32 %i.aey, 3
  br i1 %i.afe, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913

.lr.ph.i5.i913:                                   ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913
  %i.aff = phi ptr [ %i.afq, %.lr.ph.i5.i913 ], [ %.unr2189, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %.05.i6.i914 = phi i32 [ %i.afp, %.lr.ph.i5.i913 ], [ %.05.i6.i914.unr, %.lr.ph.i5.i913.prol.loopexit ]
  %.024.i7.i915 = phi ptr [ %i.afs, %.lr.ph.i5.i913 ], [ %.024.i7.i915.unr, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 1 ; 2 uses
  store ptr %i.afg, ptr %0, align 8, !tbaa !49
  %i.afh = load i8, ptr %i.aff, align 1, !tbaa !51
  %i.afi = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 1
  store i8 %i.afh, ptr %.024.i7.i915, align 1, !tbaa !51
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 2 ; 2 uses
  store ptr %i.afj, ptr %0, align 8, !tbaa !49
  %i.afk = load i8, ptr %i.afg, align 1, !tbaa !51
  %i.afl = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 2
  store i8 %i.afk, ptr %i.afi, align 1, !tbaa !51
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aff, i64 3 ; 2 uses
  store ptr %i.afm, ptr %0, align 8, !tbaa !49
  %i.afn = load i8, ptr %i.afj, align 1, !tbaa !51
  %i.afo = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 3
  store i8 %i.afn, ptr %i.afl, align 1, !tbaa !51
  %i.afp = add nsw i32 %.05.i6.i914, -4           ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aff, i64 4 ; 2 uses
  store ptr %i.afq, ptr %0, align 8, !tbaa !49
  %i.afr = load i8, ptr %i.afm, align 1, !tbaa !51
  %i.afs = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 4
  store i8 %i.afr, ptr %i.afo, align 1, !tbaa !51
  %.not.i8.i916.3 = icmp eq i32 %i.afp, 0
  br i1 %.not.i8.i916.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913, !llvm.loop !244

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925: ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913, %middle.block1698, %._crit_edge.i910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit1051

.loopexit1051:                                    ; preds = %.lr.ph1194, %.preheader1050, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925
  %indvars.iv.next1357 = add nsw i64 %indvars.iv1356, 1 ; 2 uses
  %lftr.wideiv1359 = trunc i64 %indvars.iv.next1357 to i32
  %exitcond1360.not = icmp eq i32 %i.acp, %lftr.wideiv1359
  br i1 %exitcond1360.not, label %.loopexit1022, label %bb.av, !llvm.loop !245

bb.ax:                                            ; preds = %.lr.ph1190, %.loopexit1055
  %indvars.iv1350 = phi i64 [ %i.aby, %.lr.ph1190 ], [ %indvars.iv.next1351, %.loopexit1055 ] ; 3 uses
  %i.aft = sub nsw i64 %indvars.iv1350, %i.abz
  %i.afu = mul nsw i64 %13, %i.aft
  %i.afv = getelementptr inbounds i8, ptr %i.abq, i64 %i.afu
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !49 ; 3 uses
  %i.afx = sub nsw i64 %indvars.iv1350, %i.aca
  %i.afy = mul nsw i64 %i.abw, %i.afx
  %i.afz = getelementptr inbounds i8, ptr %i.abv, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !3 ; 7 uses
  %.not746 = icmp eq ptr %i.afw, null
  br i1 %.not746, label %bb.ay, label %.preheader1054

.preheader1054:                                   ; preds = %bb.ax
  %i.agb = icmp sgt i32 %i.aga, 0
  br i1 %i.agb, label %.lr.ph1187.preheader, label %.loopexit1055

.lr.ph1187.preheader:                             ; preds = %.preheader1054
  %.promoted1184 = load ptr, ptr %0, align 8      ; 2 uses
  %xtraiter2174 = and i32 %i.aga, 1
  %i.agc = icmp eq i32 %i.aga, 1
  br i1 %i.agc, label %.lr.ph1187.epil.preheader, label %.lr.ph1187.preheader.new

.lr.ph1187.preheader.new:                         ; preds = %.lr.ph1187.preheader
  %unroll_iter2180 = and i32 %i.aga, 2147483646
  br label %.lr.ph1187

.lr.ph1187:                                       ; preds = %.lr.ph1187, %.lr.ph1187.preheader.new
  %.06851185 = phi ptr [ %i.afw, %.lr.ph1187.preheader.new ], [ %i.agt, %.lr.ph1187 ] ; 2 uses
  %i.agd = phi ptr [ %.promoted1184, %.lr.ph1187.preheader.new ], [ %i.ago, %.lr.ph1187 ] ; 5 uses
  %niter2181 = phi i32 [ 0, %.lr.ph1187.preheader.new ], [ %niter2181.next.1, %.lr.ph1187 ]
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 1 ; 2 uses
  store ptr %i.age, ptr %0, align 8, !tbaa !49
  %i.agf = load i8, ptr %i.agd, align 1, !tbaa !51
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 2 ; 2 uses
  store ptr %i.agg, ptr %0, align 8, !tbaa !49
  %i.agh = load i8, ptr %i.age, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927 = zext i8 %i.agh to i64
  %.sroa.0.0.insert.ext.i929 = zext i8 %i.agf to i64
  %.idx = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927, 10
  %i.agi = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %.sroa.0.0.insert.ext.i929
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !51
  store float %i.agk, ptr %.06851185, align 4, !tbaa !46
  %i.agl = getelementptr inbounds i8, ptr %.06851185, i64 %12 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agd, i64 3 ; 2 uses
  store ptr %i.agm, ptr %0, align 8, !tbaa !49
  %i.agn = load i8, ptr %i.agg, align 1, !tbaa !51
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agd, i64 4 ; 3 uses
  store ptr %i.ago, ptr %0, align 8, !tbaa !49
  %i.agp = load i8, ptr %i.agm, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927.1 = zext i8 %i.agp to i64
  %.sroa.0.0.insert.ext.i929.1 = zext i8 %i.agn to i64
  %.idx.1 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.1, 10
  %i.agq = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx.1
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %.sroa.0.0.insert.ext.i929.1
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !51
  store float %i.ags, ptr %i.agl, align 4, !tbaa !46
  %i.agt = getelementptr inbounds i8, ptr %i.agl, i64 %12 ; 2 uses
  %niter2181.next.1 = add i32 %niter2181, 2       ; 2 uses
  %niter2181.ncmp.1 = icmp eq i32 %niter2181.next.1, %unroll_iter2180
  br i1 %niter2181.ncmp.1, label %.loopexit1055.loopexit.unr-lcssa, label %.lr.ph1187, !llvm.loop !246

bb.ay:                                            ; preds = %bb.ax
  %i.agu = shl nsw i32 %i.aga, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i931 = load ptr, ptr %0, align 8   ; 2 uses
  %i.agv = icmp sgt i32 %i.aga, 511
  br i1 %i.agv, label %vector.memcheck1643, label %._crit_edge.i932

vector.memcheck1643:                              ; preds = %bb.ay, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946
  %.013.i940 = phi i32 [ %i.ahs, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %i.agu, %bb.ay ] ; 2 uses
  %.promoted1112.i941 = phi ptr [ %.lcssa1562, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %.promoted10.i931, %bb.ay ] ; 8 uses
  %scevgep1645 = getelementptr i8, ptr %.promoted1112.i941, i64 1024 ; 2 uses
  %bound01649 = icmp ult ptr %0, %scevgep1645
  %bound11650 = icmp ult ptr %.promoted1112.i941, %scevgep1609
  %found.conflict1651 = and i1 %bound01649, %bound11650
  %conflict.rdx1652 = or i1 %found.conflict1648, %found.conflict1651
  %bound01653 = icmp ult ptr %i.b, %scevgep1645
  %bound11654 = icmp ult ptr %.promoted1112.i941, %scevgep1644
  %found.conflict1655 = and i1 %bound01653, %bound11654
  %conflict.rdx1656 = or i1 %conflict.rdx1652, %found.conflict1655
  br i1 %conflict.rdx1656, label %.lr.ph.i.i942, label %vector.ph1658

vector.ph1658:                                    ; preds = %vector.memcheck1643
  %i.agw = getelementptr i8, ptr %.promoted1112.i941, i64 1024
  br label %vector.body1659

vector.body1659:                                  ; preds = %vector.body1659, %vector.ph1658
  %index1660 = phi i64 [ 0, %vector.ph1658 ], [ %index.next1666.1, %vector.body1659 ] ; 4 uses
  %next.gep1661 = getelementptr i8, ptr %.promoted1112.i941, i64 %index1660 ; 2 uses
  %next.gep1663 = getelementptr i8, ptr %i.b, i64 %index1660 ; 2 uses
  %i.agx = getelementptr i8, ptr %next.gep1661, i64 2
  %wide.load1664 = load <2 x i8>, ptr %next.gep1661, align 1, !tbaa !51, !alias.scope !247
  %wide.load1665 = load <2 x i8>, ptr %i.agx, align 1, !tbaa !51, !alias.scope !247
  %i.agy = getelementptr i8, ptr %next.gep1663, i64 2
  store <2 x i8> %wide.load1664, ptr %next.gep1663, align 8, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1665, ptr %i.agy, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1666 = or disjoint i64 %index1660, 4 ; 3 uses
  %next.gep1661.1 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1666 ; 2 uses
  %i.agz = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1666
  %next.gep1663.1 = getelementptr i8, ptr %i.b, i64 %index.next1666 ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 4
  %i.ahb = getelementptr i8, ptr %next.gep1661.1, i64 2
  %wide.load1664.1 = load <2 x i8>, ptr %next.gep1661.1, align 1, !tbaa !51, !alias.scope !247
  %wide.load1665.1 = load <2 x i8>, ptr %i.ahb, align 1, !tbaa !51, !alias.scope !247
  %i.ahc = getelementptr i8, ptr %next.gep1663.1, i64 2
  store <2 x i8> %wide.load1664.1, ptr %next.gep1663.1, align 4, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1665.1, ptr %i.ahc, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1666.1 = add nuw nsw i64 %index1660, 8 ; 2 uses
  %i.ahd = icmp eq i64 %index.next1666.1, 1024
  br i1 %i.ahd, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946.loopexit2131, label %vector.body1659, !llvm.loop !252

.lr.ph.i.i942:                                    ; preds = %vector.memcheck1643, %.lr.ph.i.i942
  %i.ahe = phi ptr [ %i.ahp, %.lr.ph.i.i942 ], [ %.promoted1112.i941, %vector.memcheck1643 ] ; 5 uses
  %.05.i.i943 = phi i32 [ %i.aho, %.lr.ph.i.i942 ], [ 1024, %vector.memcheck1643 ]
  %.024.i.i944 = phi ptr [ %i.ahr, %.lr.ph.i.i942 ], [ %i.b, %vector.memcheck1643 ] ; 5 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1 ; 2 uses
  store ptr %i.ahf, ptr %0, align 8, !tbaa !49
  %i.ahg = load i8, ptr %i.ahe, align 1, !tbaa !51
  %i.ahh = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 1
  store i8 %i.ahg, ptr %.024.i.i944, align 1, !tbaa !51
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 2 ; 2 uses
  store ptr %i.ahi, ptr %0, align 8, !tbaa !49
  %i.ahj = load i8, ptr %i.ahf, align 1, !tbaa !51
  %i.ahk = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 2
  store i8 %i.ahj, ptr %i.ahh, align 1, !tbaa !51
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 3 ; 2 uses
  store ptr %i.ahl, ptr %0, align 8, !tbaa !49
  %i.ahm = load i8, ptr %i.ahi, align 1, !tbaa !51
  %i.ahn = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 3
  store i8 %i.ahm, ptr %i.ahk, align 1, !tbaa !51
  %i.aho = add nsw i32 %.05.i.i943, -4            ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4 ; 3 uses
  store ptr %i.ahp, ptr %0, align 8, !tbaa !49
  %i.ahq = load i8, ptr %i.ahl, align 1, !tbaa !51
  %i.ahr = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 4
  store i8 %i.ahq, ptr %i.ahn, align 1, !tbaa !51
  %.not.i.i945.3 = icmp eq i32 %i.aho, 0
  br i1 %.not.i.i945.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946, label %.lr.ph.i.i942, !llvm.loop !253

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946.loopexit2131: ; preds = %vector.body1659
  store ptr %i.aha, ptr %0, align 8, !tbaa !49, !alias.scope !254, !noalias !256
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946: ; preds = %.lr.ph.i.i942, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946.loopexit2131
  %.lcssa1562 = phi ptr [ %i.agw, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946.loopexit2131 ], [ %i.ahp, %.lr.ph.i.i942 ] ; 2 uses
  %i.ahs = add nsw i32 %.013.i940, -1024          ; 2 uses
  %i.aht = icmp sgt i32 %.013.i940, 2047
  br i1 %i.aht, label %vector.memcheck1643, label %._crit_edge.i932, !llvm.loop !95

._crit_edge.i932:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946, %bb.ay
  %.promoted.i933 = phi ptr [ %.promoted10.i931, %bb.ay ], [ %.lcssa1562, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 8 uses
  %.0.lcssa.i934 = phi i32 [ %i.agu, %bb.ay ], [ %i.ahs, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 7 uses
  %i.ahu = icmp sgt i32 %.0.lcssa.i934, 0
  br i1 %i.ahu, label %.lr.ph.i5.i935.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947

.lr.ph.i5.i935.preheader:                         ; preds = %._crit_edge.i932
  %i.ahv = zext nneg i32 %.0.lcssa.i934 to i64    ; 2 uses
  %min.iters.check1626 = icmp ult i32 %.0.lcssa.i934, 12
  br i1 %min.iters.check1626, label %.lr.ph.i5.i935.preheader2132, label %vector.memcheck1608

vector.memcheck1608:                              ; preds = %.lr.ph.i5.i935.preheader
  %i.ahw = add nsw i32 %.0.lcssa.i934, -1
  %i.ahx = zext i32 %i.ahw to i64                 ; 2 uses
  %scevgep1611 = getelementptr i8, ptr %scevgep1610, i64 %i.ahx ; 2 uses
  %scevgep1612 = getelementptr i8, ptr %.promoted.i933, i64 1
  %scevgep1613 = getelementptr i8, ptr %scevgep1612, i64 %i.ahx ; 2 uses
  %bound01614 = icmp ult ptr %0, %scevgep1611
  %found.conflict1616 = and i1 %bound01614, %bound11615
  %bound01617 = icmp ult ptr %0, %scevgep1613
  %bound11618 = icmp ult ptr %.promoted.i933, %scevgep1609
  %found.conflict1619 = and i1 %bound01617, %bound11618
  %conflict.rdx1620 = or i1 %found.conflict1616, %found.conflict1619
  %bound01621 = icmp ult ptr %i.b, %scevgep1613
  %bound11622 = icmp ult ptr %.promoted.i933, %scevgep1611
  %found.conflict1623 = and i1 %bound01621, %bound11622
  %conflict.rdx1624 = or i1 %conflict.rdx1620, %found.conflict1623
  br i1 %conflict.rdx1624, label %.lr.ph.i5.i935.preheader2132, label %vector.ph1627

vector.ph1627:                                    ; preds = %vector.memcheck1608
  %n.vec1629 = and i64 %i.ahv, 2147483644         ; 5 uses
  %i.ahy = getelementptr i8, ptr %.promoted.i933, i64 %n.vec1629
  %i.ahz = trunc nuw nsw i64 %n.vec1629 to i32
  %i.aia = sub nsw i32 %.0.lcssa.i934, %i.ahz
  %i.aib = getelementptr i8, ptr %i.b, i64 %n.vec1629
  br label %vector.body1630

vector.body1630:                                  ; preds = %vector.body1630, %vector.ph1627
  %index1631 = phi i64 [ 0, %vector.ph1627 ], [ %index.next1637, %vector.body1630 ] ; 4 uses
  %next.gep1632 = getelementptr i8, ptr %.promoted.i933, i64 %index1631 ; 2 uses
  %i.aic = getelementptr i8, ptr %.promoted.i933, i64 %index1631
  %next.gep1634 = getelementptr i8, ptr %i.b, i64 %index1631 ; 2 uses
  %i.aid = getelementptr i8, ptr %i.aic, i64 4
  %i.aie = getelementptr i8, ptr %next.gep1632, i64 2
  %wide.load1635 = load <2 x i8>, ptr %next.gep1632, align 1, !tbaa !51, !alias.scope !257
  %wide.load1636 = load <2 x i8>, ptr %i.aie, align 1, !tbaa !51, !alias.scope !257
  %i.aif = getelementptr i8, ptr %next.gep1634, i64 2
  store <2 x i8> %wide.load1635, ptr %next.gep1634, align 4, !tbaa !51, !alias.scope !260, !noalias !257
  store <2 x i8> %wide.load1636, ptr %i.aif, align 2, !tbaa !51, !alias.scope !260, !noalias !257
  %index.next1637 = add nuw i64 %index1631, 4     ; 2 uses
  %i.aig = icmp eq i64 %index.next1637, %n.vec1629
  br i1 %i.aig, label %middle.block1638, label %vector.body1630, !llvm.loop !262

middle.block1638:                                 ; preds = %vector.body1630
  store ptr %i.aid, ptr %0, align 8, !tbaa !49, !alias.scope !263, !noalias !265
  %cmp.n1639 = icmp eq i64 %n.vec1629, %i.ahv
  br i1 %cmp.n1639, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935.preheader2132

.lr.ph.i5.i935.preheader2132:                     ; preds = %vector.memcheck1608, %.lr.ph.i5.i935.preheader, %middle.block1638
  %.ph2133 = phi ptr [ %.promoted.i933, %vector.memcheck1608 ], [ %.promoted.i933, %.lr.ph.i5.i935.preheader ], [ %i.ahy, %middle.block1638 ] ; 2 uses
  %.05.i6.i936.ph = phi i32 [ %.0.lcssa.i934, %vector.memcheck1608 ], [ %.0.lcssa.i934, %.lr.ph.i5.i935.preheader ], [ %i.aia, %middle.block1638 ] ; 4 uses
  %.024.i7.i937.ph = phi ptr [ %i.b, %vector.memcheck1608 ], [ %i.b, %.lr.ph.i5.i935.preheader ], [ %i.aib, %middle.block1638 ] ; 2 uses
  %i.aih = add nsw i32 %.05.i6.i936.ph, -1
  %xtraiter2182 = and i32 %.05.i6.i936.ph, 3      ; 2 uses
  %lcmp.mod2183.not = icmp eq i32 %xtraiter2182, 0
  br i1 %lcmp.mod2183.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol

.lr.ph.i5.i935.prol:                              ; preds = %.lr.ph.i5.i935.preheader2132, %.lr.ph.i5.i935.prol
  %i.aii = phi ptr [ %i.aik, %.lr.ph.i5.i935.prol ], [ %.ph2133, %.lr.ph.i5.i935.preheader2132 ] ; 2 uses
  %.05.i6.i936.prol = phi i32 [ %i.aij, %.lr.ph.i5.i935.prol ], [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2132 ]
  %.024.i7.i937.prol = phi ptr [ %i.aim, %.lr.ph.i5.i935.prol ], [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2132 ] ; 2 uses
  %prol.iter2184 = phi i32 [ %prol.iter2184.next, %.lr.ph.i5.i935.prol ], [ 0, %.lr.ph.i5.i935.preheader2132 ]
  %i.aij = add nsw i32 %.05.i6.i936.prol, -1      ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 1 ; 3 uses
  store ptr %i.aik, ptr %0, align 8, !tbaa !49
  %i.ail = load i8, ptr %i.aii, align 1, !tbaa !51
  %i.aim = getelementptr inbounds nuw i8, ptr %.024.i7.i937.prol, i64 1 ; 2 uses
  store i8 %i.ail, ptr %.024.i7.i937.prol, align 1, !tbaa !51
  %prol.iter2184.next = add i32 %prol.iter2184, 1 ; 2 uses
  %prol.iter2184.cmp.not = icmp eq i32 %prol.iter2184.next, %xtraiter2182
  br i1 %prol.iter2184.cmp.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol, !llvm.loop !266

.lr.ph.i5.i935.prol.loopexit:                     ; preds = %.lr.ph.i5.i935.prol, %.lr.ph.i5.i935.preheader2132
  %.unr2185 = phi ptr [ %.ph2133, %.lr.ph.i5.i935.preheader2132 ], [ %i.aik, %.lr.ph.i5.i935.prol ]
  %.05.i6.i936.unr = phi i32 [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2132 ], [ %i.aij, %.lr.ph.i5.i935.prol ]
  %.024.i7.i937.unr = phi ptr [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2132 ], [ %i.aim, %.lr.ph.i5.i935.prol ]
  %i.ain = icmp ult i32 %i.aih, 3
  br i1 %i.ain, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935

.lr.ph.i5.i935:                                   ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935
  %i.aio = phi ptr [ %i.aiz, %.lr.ph.i5.i935 ], [ %.unr2185, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %.05.i6.i936 = phi i32 [ %i.aiy, %.lr.ph.i5.i935 ], [ %.05.i6.i936.unr, %.lr.ph.i5.i935.prol.loopexit ]
  %.024.i7.i937 = phi ptr [ %i.ajb, %.lr.ph.i5.i935 ], [ %.024.i7.i937.unr, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 1 ; 2 uses
  store ptr %i.aip, ptr %0, align 8, !tbaa !49
  %i.aiq = load i8, ptr %i.aio, align 1, !tbaa !51
  %i.air = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 1
  store i8 %i.aiq, ptr %.024.i7.i937, align 1, !tbaa !51
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 2 ; 2 uses
  store ptr %i.ais, ptr %0, align 8, !tbaa !49
  %i.ait = load i8, ptr %i.aip, align 1, !tbaa !51
  %i.aiu = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 2
  store i8 %i.ait, ptr %i.air, align 1, !tbaa !51
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aio, i64 3 ; 2 uses
  store ptr %i.aiv, ptr %0, align 8, !tbaa !49
  %i.aiw = load i8, ptr %i.ais, align 1, !tbaa !51
  %i.aix = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 3
  store i8 %i.aiw, ptr %i.aiu, align 1, !tbaa !51
  %i.aiy = add nsw i32 %.05.i6.i936, -4           ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aio, i64 4 ; 2 uses
  store ptr %i.aiz, ptr %0, align 8, !tbaa !49
  %i.aja = load i8, ptr %i.aiv, align 1, !tbaa !51
  %i.ajb = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 4
  store i8 %i.aja, ptr %i.aix, align 1, !tbaa !51
  %.not.i8.i938.3 = icmp eq i32 %i.aiy, 0
  br i1 %.not.i8.i938.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935, !llvm.loop !267

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947: ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935, %middle.block1638, %._crit_edge.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit1055

.loopexit1055.loopexit.unr-lcssa:                 ; preds = %.lr.ph1187
  %lcmp.mod2178.not = icmp eq i32 %xtraiter2174, 0
  br i1 %lcmp.mod2178.not, label %.loopexit1055, label %.lr.ph1187.epil.preheader

.lr.ph1187.epil.preheader:                        ; preds = %.loopexit1055.loopexit.unr-lcssa, %.lr.ph1187.preheader
  %.06851185.epil.init = phi ptr [ %i.afw, %.lr.ph1187.preheader ], [ %i.agt, %.loopexit1055.loopexit.unr-lcssa ]
  %.epil.init2177 = phi ptr [ %.promoted1184, %.lr.ph1187.preheader ], [ %i.ago, %.loopexit1055.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2179 = trunc i32 %i.aga to i1
  call void @llvm.assume(i1 %lcmp.mod2179)
  %i.ajc = getelementptr inbounds nuw i8, ptr %.epil.init2177, i64 1 ; 2 uses
  store ptr %i.ajc, ptr %0, align 8, !tbaa !49
  %i.ajd = load i8, ptr %.epil.init2177, align 1, !tbaa !51
  %i.aje = getelementptr inbounds nuw i8, ptr %.epil.init2177, i64 2
  store ptr %i.aje, ptr %0, align 8, !tbaa !49
  %i.ajf = load i8, ptr %i.ajc, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927.epil = zext i8 %i.ajf to i64
  %.sroa.0.0.insert.ext.i929.epil = zext i8 %i.ajd to i64
  %.idx.epil = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.epil, 10
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.idx.epil
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %.sroa.0.0.insert.ext.i929.epil
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !51
  store float %i.aji, ptr %.06851185.epil.init, align 4, !tbaa !46
  br label %.loopexit1055

.loopexit1055:                                    ; preds = %.lr.ph1187.epil.preheader, %.loopexit1055.loopexit.unr-lcssa, %.preheader1054, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947
  %indvars.iv.next1351 = add nsw i64 %indvars.iv1350, 1 ; 2 uses
  %lftr.wideiv1353 = trunc i64 %indvars.iv.next1351 to i32
  %exitcond1354.not = icmp eq i32 %i.acb, %lftr.wideiv1353
  br i1 %exitcond1354.not, label %.loopexit1022, label %bb.ax, !llvm.loop !268

bb.az:                                            ; preds = %.lr.ph1183, %.loopexit1059
  %indvars.iv1344 = phi i64 [ %i.abj, %.lr.ph1183 ], [ %indvars.iv.next1345, %.loopexit1059 ] ; 3 uses
  %i.ajj = sub nsw i64 %indvars.iv1344, %i.abk
  %i.ajk = mul nsw i64 %13, %i.ajj
  %i.ajl = getelementptr inbounds i8, ptr %i.abc, i64 %i.ajk
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !49 ; 2 uses
  %i.ajn = sub nsw i64 %indvars.iv1344, %i.abl
  %i.ajo = mul nsw i64 %i.abi, %i.ajn
  %i.ajp = getelementptr inbounds i8, ptr %i.abh, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !3 ; 4 uses
  %.not744 = icmp eq ptr %i.ajm, null
  br i1 %.not744, label %bb.ba, label %.preheader1058

.preheader1058:                                   ; preds = %bb.az
  %i.ajr = icmp sgt i32 %i.ajq, 0
  br i1 %i.ajr, label %.lr.ph1180.preheader, label %.loopexit1059

.lr.ph1180.preheader:                             ; preds = %.preheader1058
  %.promoted1177 = load ptr, ptr %0, align 8
  br label %.lr.ph1180

.lr.ph1180:                                       ; preds = %.lr.ph1180.preheader, %.lr.ph1180
  %.06791179 = phi i32 [ %i.akc, %.lr.ph1180 ], [ 0, %.lr.ph1180.preheader ]
  %.06811178 = phi ptr [ %i.akb, %.lr.ph1180 ], [ %i.ajm, %.lr.ph1180.preheader ] ; 2 uses
  %i.ajs = phi ptr [ %i.ajz, %.lr.ph1180 ], [ %.promoted1177, %.lr.ph1180.preheader ] ; 5 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1 ; 2 uses
  store ptr %i.ajt, ptr %0, align 8, !tbaa !49
  %i.aju = load i8, ptr %i.ajs, align 1, !tbaa !51
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2 ; 2 uses
  store ptr %i.ajv, ptr %0, align 8, !tbaa !49
  %i.ajw = load i8, ptr %i.ajt, align 1, !tbaa !51
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3 ; 2 uses
  store ptr %i.ajx, ptr %0, align 8, !tbaa !49
  %i.ajy = load i8, ptr %i.ajv, align 1, !tbaa !51
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajs, i64 4 ; 2 uses
  store ptr %i.ajz, ptr %0, align 8, !tbaa !49
  %i.aka = load i8, ptr %i.ajx, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i949 = zext i8 %i.aka to i32
  %.sroa.6.0.insert.shift.i950 = shl nuw i32 %.sroa.6.0.insert.ext.i949, 24
  %.sroa.5.0.insert.ext.i951 = zext i8 %i.ajy to i32
  %.sroa.5.0.insert.shift.i952 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i951, 16
  %.sroa.4.0.insert.ext.i954 = zext i8 %i.ajw to i32
  %.sroa.4.0.insert.shift.i955 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i954, 8
  %.sroa.0.0.insert.ext.i957 = zext i8 %i.aju to i32
  %.sroa.5.0.insert.insert.i953 = or disjoint i32 %.sroa.4.0.insert.shift.i955, %.sroa.0.0.insert.ext.i957
  %.sroa.4.0.insert.insert.i956 = or disjoint i32 %.sroa.5.0.insert.insert.i953, %.sroa.5.0.insert.shift.i952
  %.sroa.0.0.insert.insert.i958 = or disjoint i32 %.sroa.4.0.insert.insert.i956, %.sroa.6.0.insert.shift.i950
  store i32 %.sroa.0.0.insert.insert.i958, ptr %.06811178, align 4, !tbaa !46
  %i.akb = getelementptr inbounds i8, ptr %.06811178, i64 %12
  %i.akc = add nuw nsw i32 %.06791179, 1          ; 2 uses
  %exitcond1343.not = icmp eq i32 %i.akc, %i.ajq
  br i1 %exitcond1343.not, label %.loopexit1059, label %.lr.ph1180, !llvm.loop !269

bb.ba:                                            ; preds = %bb.az
  %i.akd = shl nsw i32 %i.ajq, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i959 = load ptr, ptr %0, align 8   ; 2 uses
  %i.ake = icmp sgt i32 %i.ajq, 255
  br i1 %i.ake, label %vector.memcheck1583, label %._crit_edge.i960

vector.memcheck1583:                              ; preds = %bb.ba, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974
  %.013.i968 = phi i32 [ %i.alb, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %i.akd, %bb.ba ] ; 2 uses
  %.promoted1112.i969 = phi ptr [ %.lcssa1564, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %.promoted10.i959, %bb.ba ] ; 8 uses
  %scevgep1585 = getelementptr i8, ptr %.promoted1112.i969, i64 1024 ; 2 uses
  %bound01589 = icmp ult ptr %0, %scevgep1585
  %bound11590 = icmp ult ptr %.promoted1112.i969, %scevgep
  %found.conflict1591 = and i1 %bound01589, %bound11590
  %conflict.rdx1592 = or i1 %found.conflict1588, %found.conflict1591
  %bound01593 = icmp ult ptr %i.a, %scevgep1585
  %bound11594 = icmp ult ptr %.promoted1112.i969, %scevgep1584
  %found.conflict1595 = and i1 %bound01593, %bound11594
  %conflict.rdx1596 = or i1 %conflict.rdx1592, %found.conflict1595
  br i1 %conflict.rdx1596, label %.lr.ph.i.i970, label %vector.ph1598

vector.ph1598:                                    ; preds = %vector.memcheck1583
  %i.akf = getelementptr i8, ptr %.promoted1112.i969, i64 1024
  br label %vector.body1599

vector.body1599:                                  ; preds = %vector.body1599, %vector.ph1598
  %index1600 = phi i64 [ 0, %vector.ph1598 ], [ %index.next1606.1, %vector.body1599 ] ; 4 uses
  %next.gep1601 = getelementptr i8, ptr %.promoted1112.i969, i64 %index1600 ; 2 uses
  %next.gep1603 = getelementptr i8, ptr %i.a, i64 %index1600 ; 2 uses
  %i.akg = getelementptr i8, ptr %next.gep1601, i64 2
  %wide.load1604 = load <2 x i8>, ptr %next.gep1601, align 1, !tbaa !51, !alias.scope !270
  %wide.load1605 = load <2 x i8>, ptr %i.akg, align 1, !tbaa !51, !alias.scope !270
  %i.akh = getelementptr i8, ptr %next.gep1603, i64 2
  store <2 x i8> %wide.load1604, ptr %next.gep1603, align 8, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1605, ptr %i.akh, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1606 = or disjoint i64 %index1600, 4 ; 3 uses
  %next.gep1601.1 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1606 ; 2 uses
  %i.aki = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1606
  %next.gep1603.1 = getelementptr i8, ptr %i.a, i64 %index.next1606 ; 2 uses
  %i.akj = getelementptr i8, ptr %i.aki, i64 4
  %i.akk = getelementptr i8, ptr %next.gep1601.1, i64 2
  %wide.load1604.1 = load <2 x i8>, ptr %next.gep1601.1, align 1, !tbaa !51, !alias.scope !270
  %wide.load1605.1 = load <2 x i8>, ptr %i.akk, align 1, !tbaa !51, !alias.scope !270
  %i.akl = getelementptr i8, ptr %next.gep1603.1, i64 2
  store <2 x i8> %wide.load1604.1, ptr %next.gep1603.1, align 4, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1605.1, ptr %i.akl, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1606.1 = add nuw nsw i64 %index1600, 8 ; 2 uses
  %i.akm = icmp eq i64 %index.next1606.1, 1024
  br i1 %i.akm, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974.loopexit2137, label %vector.body1599, !llvm.loop !275

.lr.ph.i.i970:                                    ; preds = %vector.memcheck1583, %.lr.ph.i.i970
  %i.akn = phi ptr [ %i.aky, %.lr.ph.i.i970 ], [ %.promoted1112.i969, %vector.memcheck1583 ] ; 5 uses
  %.05.i.i971 = phi i32 [ %i.akx, %.lr.ph.i.i970 ], [ 1024, %vector.memcheck1583 ]
  %.024.i.i972 = phi ptr [ %i.ala, %.lr.ph.i.i970 ], [ %i.a, %vector.memcheck1583 ] ; 5 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 1 ; 2 uses
  store ptr %i.ako, ptr %0, align 8, !tbaa !49
  %i.akp = load i8, ptr %i.akn, align 1, !tbaa !51
  %i.akq = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 1
  store i8 %i.akp, ptr %.024.i.i972, align 1, !tbaa !51
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akn, i64 2 ; 2 uses
  store ptr %i.akr, ptr %0, align 8, !tbaa !49
  %i.aks = load i8, ptr %i.ako, align 1, !tbaa !51
  %i.akt = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 2
  store i8 %i.aks, ptr %i.akq, align 1, !tbaa !51
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akn, i64 3 ; 2 uses
  store ptr %i.aku, ptr %0, align 8, !tbaa !49
  %i.akv = load i8, ptr %i.akr, align 1, !tbaa !51
  %i.akw = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 3
  store i8 %i.akv, ptr %i.akt, align 1, !tbaa !51
  %i.akx = add nsw i32 %.05.i.i971, -4            ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akn, i64 4 ; 3 uses
  store ptr %i.aky, ptr %0, align 8, !tbaa !49
  %i.akz = load i8, ptr %i.aku, align 1, !tbaa !51
  %i.ala = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 4
  store i8 %i.akz, ptr %i.akw, align 1, !tbaa !51
  %.not.i.i973.3 = icmp eq i32 %i.akx, 0
  br i1 %.not.i.i973.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974, label %.lr.ph.i.i970, !llvm.loop !276

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974.loopexit2137: ; preds = %vector.body1599
  store ptr %i.akj, ptr %0, align 8, !tbaa !49, !alias.scope !277, !noalias !279
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974: ; preds = %.lr.ph.i.i970, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974.loopexit2137
  %.lcssa1564 = phi ptr [ %i.akf, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974.loopexit2137 ], [ %i.aky, %.lr.ph.i.i970 ] ; 2 uses
  %i.alb = add nsw i32 %.013.i968, -1024          ; 2 uses
  %i.alc = icmp sgt i32 %.013.i968, 2047
  br i1 %i.alc, label %vector.memcheck1583, label %._crit_edge.i960, !llvm.loop !95

._crit_edge.i960:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974, %bb.ba
  %.promoted.i961 = phi ptr [ %.promoted10.i959, %bb.ba ], [ %.lcssa1564, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 8 uses
  %.0.lcssa.i962 = phi i32 [ %i.akd, %bb.ba ], [ %i.alb, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 7 uses
  %i.ald = icmp sgt i32 %.0.lcssa.i962, 0
  br i1 %i.ald, label %.lr.ph.i5.i963.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975

.lr.ph.i5.i963.preheader:                         ; preds = %._crit_edge.i960
  %i.ale = zext nneg i32 %.0.lcssa.i962 to i64    ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i962, 12
  br i1 %min.iters.check, label %.lr.ph.i5.i963.preheader2138, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i5.i963.preheader
  %i.alf = add nsw i32 %.0.lcssa.i962, -1
  %i.alg = zext i32 %i.alf to i64                 ; 2 uses
  %scevgep1568 = getelementptr i8, ptr %scevgep1567, i64 %i.alg ; 2 uses
  %scevgep1569 = getelementptr i8, ptr %.promoted.i961, i64 1
  %scevgep1570 = getelementptr i8, ptr %scevgep1569, i64 %i.alg ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep1568
  %found.conflict = and i1 %bound0, %bound1
  %bound01571 = icmp ult ptr %0, %scevgep1570
  %bound11572 = icmp ult ptr %.promoted.i961, %scevgep
  %found.conflict1573 = and i1 %bound01571, %bound11572
  %conflict.rdx = or i1 %found.conflict, %found.conflict1573
  %bound01574 = icmp ult ptr %i.a, %scevgep1570
  %bound11575 = icmp ult ptr %.promoted.i961, %scevgep1568
  %found.conflict1576 = and i1 %bound01574, %bound11575
  %conflict.rdx1577 = or i1 %conflict.rdx, %found.conflict1576
  br i1 %conflict.rdx1577, label %.lr.ph.i5.i963.preheader2138, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ale, 2147483644             ; 5 uses
  %i.alh = getelementptr i8, ptr %.promoted.i961, i64 %n.vec
  %i.ali = trunc nuw nsw i64 %n.vec to i32
  %i.alj = sub nsw i32 %.0.lcssa.i962, %i.ali
  %i.alk = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.promoted.i961, i64 %index ; 2 uses
  %i.all = getelementptr i8, ptr %.promoted.i961, i64 %index
  %next.gep1579 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.alm = getelementptr i8, ptr %i.all, i64 4
  %i.aln = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !280
  %wide.load1580 = load <2 x i8>, ptr %i.aln, align 1, !tbaa !51, !alias.scope !280
  %i.alo = getelementptr i8, ptr %next.gep1579, i64 2
  store <2 x i8> %wide.load, ptr %next.gep1579, align 4, !tbaa !51, !alias.scope !283, !noalias !280
  store <2 x i8> %wide.load1580, ptr %i.alo, align 2, !tbaa !51, !alias.scope !283, !noalias !280
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.alp = icmp eq i64 %index.next, %n.vec
  br i1 %i.alp, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  store ptr %i.alm, ptr %0, align 8, !tbaa !49, !alias.scope !286, !noalias !288
  %cmp.n = icmp eq i64 %n.vec, %i.ale
  br i1 %cmp.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963.preheader2138

.lr.ph.i5.i963.preheader2138:                     ; preds = %vector.memcheck, %.lr.ph.i5.i963.preheader, %middle.block
  %.ph2139 = phi ptr [ %.promoted.i961, %vector.memcheck ], [ %.promoted.i961, %.lr.ph.i5.i963.preheader ], [ %i.alh, %middle.block ] ; 2 uses
  %.05.i6.i964.ph = phi i32 [ %.0.lcssa.i962, %vector.memcheck ], [ %.0.lcssa.i962, %.lr.ph.i5.i963.preheader ], [ %i.alj, %middle.block ] ; 4 uses
  %.024.i7.i965.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i5.i963.preheader ], [ %i.alk, %middle.block ] ; 2 uses
  %i.alq = add nsw i32 %.05.i6.i964.ph, -1
  %xtraiter2171 = and i32 %.05.i6.i964.ph, 3      ; 2 uses
  %lcmp.mod2172.not = icmp eq i32 %xtraiter2171, 0
  br i1 %lcmp.mod2172.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol

.lr.ph.i5.i963.prol:                              ; preds = %.lr.ph.i5.i963.preheader2138, %.lr.ph.i5.i963.prol
  %i.alr = phi ptr [ %i.alt, %.lr.ph.i5.i963.prol ], [ %.ph2139, %.lr.ph.i5.i963.preheader2138 ] ; 2 uses
  %.05.i6.i964.prol = phi i32 [ %i.als, %.lr.ph.i5.i963.prol ], [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2138 ]
  %.024.i7.i965.prol = phi ptr [ %i.alv, %.lr.ph.i5.i963.prol ], [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2138 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i963.prol ], [ 0, %.lr.ph.i5.i963.preheader2138 ]
  %i.als = add nsw i32 %.05.i6.i964.prol, -1      ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 1 ; 3 uses
  store ptr %i.alt, ptr %0, align 8, !tbaa !49
  %i.alu = load i8, ptr %i.alr, align 1, !tbaa !51
  %i.alv = getelementptr inbounds nuw i8, ptr %.024.i7.i965.prol, i64 1 ; 2 uses
  store i8 %i.alu, ptr %.024.i7.i965.prol, align 1, !tbaa !51
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter2171
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol, !llvm.loop !289

.lr.ph.i5.i963.prol.loopexit:                     ; preds = %.lr.ph.i5.i963.prol, %.lr.ph.i5.i963.preheader2138
  %.unr2173 = phi ptr [ %.ph2139, %.lr.ph.i5.i963.preheader2138 ], [ %i.alt, %.lr.ph.i5.i963.prol ]
  %.05.i6.i964.unr = phi i32 [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2138 ], [ %i.als, %.lr.ph.i5.i963.prol ]
  %.024.i7.i965.unr = phi ptr [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2138 ], [ %i.alv, %.lr.ph.i5.i963.prol ]
  %i.alw = icmp ult i32 %i.alq, 3
  br i1 %i.alw, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963

.lr.ph.i5.i963:                                   ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963
  %i.alx = phi ptr [ %i.ami, %.lr.ph.i5.i963 ], [ %.unr2173, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %.05.i6.i964 = phi i32 [ %i.amh, %.lr.ph.i5.i963 ], [ %.05.i6.i964.unr, %.lr.ph.i5.i963.prol.loopexit ]
  %.024.i7.i965 = phi ptr [ %i.amk, %.lr.ph.i5.i963 ], [ %.024.i7.i965.unr, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 1 ; 2 uses
  store ptr %i.aly, ptr %0, align 8, !tbaa !49
  %i.alz = load i8, ptr %i.alx, align 1, !tbaa !51
  %i.ama = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 1
  store i8 %i.alz, ptr %.024.i7.i965, align 1, !tbaa !51
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 2 ; 2 uses
  store ptr %i.amb, ptr %0, align 8, !tbaa !49
  %i.amc = load i8, ptr %i.aly, align 1, !tbaa !51
  %i.amd = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 2
  store i8 %i.amc, ptr %i.ama, align 1, !tbaa !51
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 3 ; 2 uses
  store ptr %i.ame, ptr %0, align 8, !tbaa !49
  %i.amf = load i8, ptr %i.amb, align 1, !tbaa !51
  %i.amg = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 3
  store i8 %i.amf, ptr %i.amd, align 1, !tbaa !51
  %i.amh = add nsw i32 %.05.i6.i964, -4           ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alx, i64 4 ; 2 uses
  store ptr %i.ami, ptr %0, align 8, !tbaa !49
  %i.amj = load i8, ptr %i.ame, align 1, !tbaa !51
  %i.amk = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 4
  store i8 %i.amj, ptr %i.amg, align 1, !tbaa !51
  %.not.i8.i966.3 = icmp eq i32 %i.amh, 0
  br i1 %.not.i8.i966.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963, !llvm.loop !290

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975: ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963, %middle.block, %._crit_edge.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit1059

.loopexit1059:                                    ; preds = %.lr.ph1180, %.preheader1058, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975
  %indvars.iv.next1345 = add nsw i64 %indvars.iv1344, 1 ; 2 uses
  %lftr.wideiv1347 = trunc i64 %indvars.iv.next1345 to i32
  %exitcond1348.not = icmp eq i32 %i.abm, %lftr.wideiv1347
  br i1 %exitcond1348.not, label %.loopexit1022, label %bb.az, !llvm.loop !291

bb.bb:                                            ; preds = %bb.au
  %i.aml = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.aml, ptr noundef nonnull @.str.9)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @__cxa_throw(ptr nonnull %i.aml, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.be:                                            ; preds = %bb.z
  %i.amn = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.amn, ptr noundef nonnull @.str.9)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @__cxa_throw(ptr nonnull %i.amn, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.amo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bh:                                            ; preds = %bb.y
  switch i32 %18, label %bb.cm [
    i32 0, label %bb.bi
    i32 1, label %bb.bs
    i32 2, label %bb.cc
  ]

bb.bi:                                            ; preds = %bb.bh
  switch i32 %19, label %bb.bp [
    i32 0, label %.preheader1065
    i32 1, label %.preheader1069
    i32 2, label %.preheader1073
  ]

.preheader1073:                                   ; preds = %bb.bi
  %.not7371162 = icmp sgt i32 %6, %7
  br i1 %.not7371162, label %.loopexit1022, label %.lr.ph1164

.lr.ph1164:                                       ; preds = %.preheader1073
  %i.amp = sub nsw i32 %5, %11
  %i.amq = sext i32 %i.amp to i64
  %i.amr = mul nsw i64 %14, %i.amq
  %i.ams = getelementptr inbounds i8, ptr %1, i64 %i.amr
  %i.amt = sub nsw i32 %5, %9
  %i.amu = sext i32 %i.amt to i64
  %sext992 = shl i64 %4, 32
  %i.amv = ashr exact i64 %sext992, 32
  %i.amw = mul nsw i64 %i.amv, %i.amu
  %i.amx = getelementptr inbounds i8, ptr %2, i64 %i.amw
  %sext993 = shl i64 %3, 32
  %i.amy = ashr exact i64 %sext993, 32
  %i.amz = sext i32 %6 to i64
  %i.ana = sext i32 %10 to i64
  %i.anb = sext i32 %8 to i64
  %i.anc = add i32 %7, 1
  br label %bb.bn

.preheader1069:                                   ; preds = %bb.bi
  %.not7391168 = icmp sgt i32 %6, %7
  br i1 %.not7391168, label %.loopexit1022, label %.lr.ph1170

.lr.ph1170:                                       ; preds = %.preheader1069
  %i.and = sub nsw i32 %5, %11
  %i.ane = sext i32 %i.and to i64
  %i.anf = mul nsw i64 %14, %i.ane
  %i.ang = getelementptr inbounds i8, ptr %1, i64 %i.anf
  %i.anh = sub nsw i32 %5, %9
  %i.ani = sext i32 %i.anh to i64
  %sext994 = shl i64 %4, 32
  %i.anj = ashr exact i64 %sext994, 32
  %i.ank = mul nsw i64 %i.anj, %i.ani
  %i.anl = getelementptr inbounds i8, ptr %2, i64 %i.ank
  %sext995 = shl i64 %3, 32
  %i.anm = ashr exact i64 %sext995, 32
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_523copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
  br label %.preheader1095

.preheader1095:                                   ; preds = %.preheader1095.preheader, %.preheader1095
  %i.bas = phi ptr [ %i.bbh, %.preheader1095 ], [ %.pre, %.preheader1095.preheader ]
  %.06351119 = phi i32 [ %i.bbj, %.preheader1095 ], [ 0, %.preheader1095.preheader ]
  %.06371118 = phi ptr [ %i.bbi, %.preheader1095 ], [ %i.bam, %.preheader1095.preheader ] ; 5 uses
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !51
  store i8 %i.bat, ptr %.06371118, align 1, !tbaa !51
  %i.bau = load ptr, ptr %0, align 8, !tbaa !49
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 1
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !51
  %i.bax = getelementptr inbounds nuw i8, ptr %.06371118, i64 1
  store i8 %i.baw, ptr %i.bax, align 1, !tbaa !51
  %i.bay = load ptr, ptr %0, align 8, !tbaa !49
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 2
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !51
  %i.bbb = getelementptr inbounds nuw i8, ptr %.06371118, i64 2
  store i8 %i.bba, ptr %i.bbb, align 1, !tbaa !51
  %i.bbc = load ptr, ptr %0, align 8, !tbaa !49
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 3
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !51
  %i.bbf = getelementptr inbounds nuw i8, ptr %.06371118, i64 3
  store i8 %i.bbe, ptr %i.bbf, align 1, !tbaa !51
  %i.bbg = load ptr, ptr %0, align 8, !tbaa !49
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 4 ; 2 uses
  store ptr %i.bbh, ptr %0, align 8, !tbaa !49
  %i.bbi = getelementptr inbounds i8, ptr %.06371118, i64 %12
  %i.bbj = add nuw nsw i32 %.06351119, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bbj, %i.baq
  br i1 %exitcond.not, label %.loopexit1097, label %.preheader1095, !llvm.loop !311

bb.ci:                                            ; preds = %bb.ch
  %i.bbk = sext i32 %i.baq to i64
  %i.bbl = shl nsw i64 %i.bbk, 2
  %i.bbm = load ptr, ptr %0, align 8, !tbaa !49
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 %i.bbl
  store ptr %i.bbn, ptr %0, align 8, !tbaa !49
  br label %.loopexit1097

.loopexit1097:                                    ; preds = %.preheader1095, %.preheader1096, %bb.ci
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond1293.not = icmp eq i32 %i.awg, %lftr.wideiv
  br i1 %exitcond1293.not, label %.loopexit1022, label %bb.ch, !llvm.loop !312

bb.cj:                                            ; preds = %bb.cc
  %i.bbo = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bbo, ptr noundef nonnull @.str.9)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void @__cxa_throw(ptr nonnull %i.bbo, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cm:                                            ; preds = %bb.bh
  %i.bbq = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bbq, ptr noundef nonnull @.str.9)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  tail call void @__cxa_throw(ptr nonnull %i.bbq, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.bbr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.loopexit1022:                                    ; preds = %.loopexit1097, %.loopexit1092, %.loopexit1088, %.loopexit1084, %.loopexit1080, %.loopexit1076, %.loopexit1072, %.loopexit1068, %.loopexit1064, %.loopexit1059, %.loopexit1055, %.loopexit1051, %.loopexit1047, %.loopexit1043, %.loopexit1039, %.loopexit1035, %.loopexit1031, %.loopexit1027, %.loopexit1025, %.loopexit1023, %.loopexit, %.preheader1098, %.preheader1093, %.preheader1089, %.preheader1085, %.preheader1081, %.preheader1077, %.preheader1073, %.preheader1069, %.preheader1065, %.preheader1060, %.preheader1056, %.preheader1052, %.preheader1048, %.preheader1044, %.preheader1040, %.preheader1036, %.preheader1032, %.preheader1028, %bb.s, %_ZN9Imath_3_14halfC2Ef.exit, %bb.c
  ret void

bb.cp:                                            ; preds = %bb.co, %bb.cl, %bb.cb, %bb.br, %bb.bg, %bb.bd, %bb.at, %bb.aj, %bb.x
  %.sink = phi ptr [ %i.bbq, %bb.co ], [ %i.bbo, %bb.cl ], [ %i.avr, %bb.cb ], [ %i.aqw, %bb.br ], [ %i.amn, %bb.bg ], [ %i.aml, %bb.bd ], [ %i.aax, %bb.at ], [ %i.pt, %bb.aj ], [ %i.ex, %bb.x ]
  %.pn = phi { ptr, i32 } [ %i.bbr, %bb.co ], [ %i.bbp, %bb.cl ], [ %i.avs, %bb.cb ], [ %i.aqx, %bb.br ], [ %i.amo, %bb.bg ], [ %i.amm, %bb.bd ], [ %i.aay, %bb.at ], [ %i.pu, %bb.aj ], [ %i.ey, %bb.x ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_511skipChannelERPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 15 uses
  %i.b = alloca [1024 x i8], align 16             ; 15 uses
  %i.c = alloca [1024 x i8], align 16             ; 15 uses
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32
  %i.e = shl i32 %i.d, 2                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1023
  br i1 %i.f, label %.lr.ph.i.preheader.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader.i.preheader:                   ; preds = %bb.b
  %scevgep166 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep167 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %bound0169 = icmp ult ptr %0, %scevgep167
  %bound1170 = icmp ult ptr %i.c, %scevgep166
  %found.conflict171 = and i1 %bound0169, %bound1170
  br label %vector.memcheck165

vector.memcheck165:                               ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %.lr.ph.i.preheader.i.preheader
  %.013.i = phi i32 [ %i.ac, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.e, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %.lr.ph.i.preheader.i.preheader ] ; 8 uses
  %scevgep168 = getelementptr i8, ptr %.promoted1112.i, i64 1024 ; 2 uses
  %bound0172 = icmp ult ptr %0, %scevgep168
  %bound1173 = icmp ult ptr %.promoted1112.i, %scevgep166
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %found.conflict171, %found.conflict174
  %bound0176 = icmp ult ptr %i.c, %scevgep168
  %bound1177 = icmp ult ptr %.promoted1112.i, %scevgep167
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph.i.i, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck165
  %i.g = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph181
  %index183 = phi i64 [ 0, %vector.ph181 ], [ %index.next189.1, %vector.body182 ] ; 4 uses
  %next.gep184 = getelementptr i8, ptr %.promoted1112.i, i64 %index183 ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.c, i64 %index183 ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep184, i64 2
  %wide.load187 = load <2 x i8>, ptr %next.gep184, align 1, !tbaa !51, !alias.scope !313
  %wide.load188 = load <2 x i8>, ptr %i.h, align 1, !tbaa !51, !alias.scope !313
  %i.i = getelementptr i8, ptr %next.gep186, i64 2
  store <2 x i8> %wide.load187, ptr %next.gep186, align 8, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188, ptr %i.i, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189 = or disjoint i64 %index183, 4   ; 3 uses
  %next.gep184.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189 ; 2 uses
  %i.j = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189
  %next.gep186.1 = getelementptr i8, ptr %i.c, i64 %index.next189 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = getelementptr i8, ptr %next.gep184.1, i64 2
  %wide.load187.1 = load <2 x i8>, ptr %next.gep184.1, align 1, !tbaa !51, !alias.scope !313
  %wide.load188.1 = load <2 x i8>, ptr %i.l, align 1, !tbaa !51, !alias.scope !313
  %i.m = getelementptr i8, ptr %next.gep186.1, i64 2
  store <2 x i8> %wide.load187.1, ptr %next.gep186.1, align 4, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188.1, ptr %i.m, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189.1 = add nuw nsw i64 %index183, 8 ; 2 uses
  %i.n = icmp eq i64 %index.next189.1, 1024
  br i1 %i.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit225, label %vector.body182, !llvm.loop !318

.lr.ph.i.i:                                       ; preds = %vector.memcheck165, %.lr.ph.i.i
  %i.o = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck165 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ 1024, %vector.memcheck165 ]
  %.024.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.c, %vector.memcheck165 ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !49
  %i.q = load i8, ptr %i.o, align 1, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.q, ptr %.024.i.i, align 1, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !49
  %i.t = load i8, ptr %i.p, align 1, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.t, ptr %i.r, align 1, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 3 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !49
  %i.w = load i8, ptr %i.s, align 1, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.w, ptr %i.u, align 1, !tbaa !51
  %i.y = add nsw i32 %.05.i.i, -4                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !49
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !51
  %.not.i.i.3 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !319

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit225: ; preds = %vector.body182
  store ptr %i.k, ptr %0, align 8, !tbaa !49, !alias.scope !320, !noalias !322
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i: ; preds = %.lr.ph.i.i, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit225
  %.lcssa = phi ptr [ %i.g, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i.loopexit225 ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.ac = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ad = icmp sgt i32 %.013.i, 2047
  br i1 %i.ad, label %vector.memcheck165, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %bb.b
  %.promoted.i = phi ptr [ %.promoted10.i, %bb.b ], [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.ac, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.ae = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.ae, label %.lr.ph.i5.i.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.af = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check207 = icmp ult i32 %.0.lcssa.i, 26
  br i1 %min.iters.check207, label %.lr.ph.i5.i.preheader224, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i5.i.preheader
  %scevgep192 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %scevgep193 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  %scevgep194 = getelementptr i8, ptr %.promoted.i, i64 %i.ag ; 2 uses
  %bound0195 = icmp ult ptr %0, %scevgep193
  %bound1196 = icmp ult ptr %i.c, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0198 = icmp ult ptr %0, %scevgep194
  %bound1199 = icmp ult ptr %.promoted.i, %scevgep192
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %found.conflict197, %found.conflict200
  %bound0202 = icmp ult ptr %i.c, %scevgep194
  %bound1203 = icmp ult ptr %.promoted.i, %scevgep193
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  br i1 %conflict.rdx205, label %.lr.ph.i5.i.preheader224, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck191
  %n.vec210 = and i64 %i.af, 2147483644           ; 5 uses
  %i.ah = getelementptr i8, ptr %.promoted.i, i64 %n.vec210
  %i.ai = trunc nuw nsw i64 %n.vec210 to i32
  %i.aj = sub nsw i32 %.0.lcssa.i, %i.ai
  %i.ak = getelementptr i8, ptr %i.c, i64 %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph208
  %index212 = phi i64 [ 0, %vector.ph208 ], [ %index.next218, %vector.body211 ] ; 4 uses
  %next.gep213 = getelementptr i8, ptr %.promoted.i, i64 %index212 ; 2 uses
  %i.al = getelementptr i8, ptr %.promoted.i, i64 %index212
  %next.gep215 = getelementptr i8, ptr %i.c, i64 %index212 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = getelementptr i8, ptr %next.gep213, i64 2
  %wide.load216 = load <2 x i8>, ptr %next.gep213, align 1, !tbaa !51, !alias.scope !323
  %wide.load217 = load <2 x i8>, ptr %i.an, align 1, !tbaa !51, !alias.scope !323
  %i.ao = getelementptr i8, ptr %next.gep215, i64 2
  store <2 x i8> %wide.load216, ptr %next.gep215, align 4, !tbaa !51, !alias.scope !326, !noalias !323
  store <2 x i8> %wide.load217, ptr %i.ao, align 2, !tbaa !51, !alias.scope !326, !noalias !323
  %index.next218 = add nuw i64 %index212, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next218, %n.vec210
  br i1 %i.ap, label %middle.block219, label %vector.body211, !llvm.loop !328

middle.block219:                                  ; preds = %vector.body211
  store ptr %i.am, ptr %0, align 8, !tbaa !49, !alias.scope !329, !noalias !331
  %cmp.n220 = icmp eq i64 %n.vec210, %i.af
  br i1 %cmp.n220, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader224

.lr.ph.i5.i.preheader224:                         ; preds = %vector.memcheck191, %.lr.ph.i5.i.preheader, %middle.block219
  %.ph = phi ptr [ %.promoted.i, %vector.memcheck191 ], [ %.promoted.i, %.lr.ph.i5.i.preheader ], [ %i.ah, %middle.block219 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck191 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.aj, %middle.block219 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.c, %vector.memcheck191 ], [ %i.c, %.lr.ph.i5.i.preheader ], [ %i.ak, %middle.block219 ] ; 2 uses
  %i.aq = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter242 = and i32 %.05.i6.i.ph, 3          ; 2 uses
  %lcmp.mod243.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader224, %.lr.ph.i5.i.prol
  %i.ar = phi ptr [ %i.at, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader224 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.as, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader224 ]
  %.024.i7.i.prol = phi ptr [ %i.av, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader224 ] ; 2 uses
  %prol.iter244 = phi i32 [ %prol.iter244.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader224 ]
  %i.as = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !49
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.au, ptr %.024.i7.i.prol, align 1, !tbaa !51
  %prol.iter244.next = add i32 %prol.iter244, 1   ; 2 uses
  %prol.iter244.cmp.not = icmp eq i32 %prol.iter244.next, %xtraiter242
  br i1 %prol.iter244.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !332

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader224
  %.unr245 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader224 ], [ %i.at, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader224 ], [ %i.as, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader224 ], [ %i.av, %.lr.ph.i5.i.prol ]
  %i.aw = icmp ult i32 %i.aq, 3
  br i1 %i.aw, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.ax = phi ptr [ %i.bi, %.lr.ph.i5.i ], [ %.unr245, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.bh, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.bk, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !49
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.az, ptr %.024.i7.i, align 1, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !49
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 3 ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !49
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !51
  %i.bh = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !49
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !51
  %.not.i8.i.3 = icmp eq i32 %i.bh, 0
  br i1 %.not.i8.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !333

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block219, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.bl = trunc i64 %2 to i32
  %i.bm = shl i32 %i.bl, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i8 = load ptr, ptr %0, align 8     ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 1023
  br i1 %i.bn, label %.lr.ph.i.preheader.i16.preheader, label %._crit_edge.i9

.lr.ph.i.preheader.i16.preheader:                 ; preds = %bb.c
  %scevgep107 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep108 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %bound0110 = icmp ult ptr %0, %scevgep108
  %bound1111 = icmp ult ptr %i.b, %scevgep107
  %found.conflict112 = and i1 %bound0110, %bound1111
  br label %vector.memcheck106

vector.memcheck106:                               ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, %.lr.ph.i.preheader.i16.preheader
  %.013.i17 = phi i32 [ %i.ck, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %i.bm, %.lr.ph.i.preheader.i16.preheader ] ; 2 uses
  %.promoted1112.i18 = phi ptr [ %.lcssa62, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %.promoted10.i8, %.lr.ph.i.preheader.i16.preheader ] ; 8 uses
  %scevgep109 = getelementptr i8, ptr %.promoted1112.i18, i64 1024 ; 2 uses
  %bound0113 = icmp ult ptr %0, %scevgep109
  %bound1114 = icmp ult ptr %.promoted1112.i18, %scevgep107
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %found.conflict112, %found.conflict115
  %bound0117 = icmp ult ptr %i.b, %scevgep109
  %bound1118 = icmp ult ptr %.promoted1112.i18, %scevgep108
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  br i1 %conflict.rdx120, label %.lr.ph.i.i19, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck106
  %i.bo = getelementptr i8, ptr %.promoted1112.i18, i64 1024
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph122
  %index124 = phi i64 [ 0, %vector.ph122 ], [ %index.next130.1, %vector.body123 ] ; 4 uses
  %next.gep125 = getelementptr i8, ptr %.promoted1112.i18, i64 %index124 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.b, i64 %index124 ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep125, i64 2
  %wide.load128 = load <2 x i8>, ptr %next.gep125, align 1, !tbaa !51, !alias.scope !334
  %wide.load129 = load <2 x i8>, ptr %i.bp, align 1, !tbaa !51, !alias.scope !334
  %i.bq = getelementptr i8, ptr %next.gep127, i64 2
  store <2 x i8> %wide.load128, ptr %next.gep127, align 8, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129, ptr %i.bq, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130 = or disjoint i64 %index124, 4   ; 3 uses
  %next.gep125.1 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130 ; 2 uses
  %i.br = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130
  %next.gep127.1 = getelementptr i8, ptr %i.b, i64 %index.next130 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = getelementptr i8, ptr %next.gep125.1, i64 2
  %wide.load128.1 = load <2 x i8>, ptr %next.gep125.1, align 1, !tbaa !51, !alias.scope !334
  %wide.load129.1 = load <2 x i8>, ptr %i.bt, align 1, !tbaa !51, !alias.scope !334
  %i.bu = getelementptr i8, ptr %next.gep127.1, i64 2
  store <2 x i8> %wide.load128.1, ptr %next.gep127.1, align 4, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129.1, ptr %i.bu, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130.1 = add nuw nsw i64 %index124, 8 ; 2 uses
  %i.bv = icmp eq i64 %index.next130.1, 1024
  br i1 %i.bv, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23.loopexit230, label %vector.body123, !llvm.loop !339

.lr.ph.i.i19:                                     ; preds = %vector.memcheck106, %.lr.ph.i.i19
  %i.bw = phi ptr [ %i.ch, %.lr.ph.i.i19 ], [ %.promoted1112.i18, %vector.memcheck106 ] ; 5 uses
  %.05.i.i20 = phi i32 [ %i.cg, %.lr.ph.i.i19 ], [ 1024, %vector.memcheck106 ]
  %.024.i.i21 = phi ptr [ %i.cj, %.lr.ph.i.i19 ], [ %i.b, %vector.memcheck106 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !49
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 1
  store i8 %i.by, ptr %.024.i.i21, align 1, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 2 ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !49
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 2
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 3 ; 2 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !49
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 3
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !51
  %i.cg = add nsw i32 %.05.i.i20, -4              ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !49
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 4
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !51
  %.not.i.i22.3 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i22.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, label %.lr.ph.i.i19, !llvm.loop !340

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23.loopexit230: ; preds = %vector.body123
  store ptr %i.bs, ptr %0, align 8, !tbaa !49, !alias.scope !341, !noalias !343
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23: ; preds = %.lr.ph.i.i19, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23.loopexit230
  %.lcssa62 = phi ptr [ %i.bo, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23.loopexit230 ], [ %i.ch, %.lr.ph.i.i19 ] ; 2 uses
  %i.ck = add nsw i32 %.013.i17, -1024            ; 2 uses
  %i.cl = icmp sgt i32 %.013.i17, 2047
  br i1 %i.cl, label %vector.memcheck106, label %._crit_edge.i9, !llvm.loop !95

._crit_edge.i9:                                   ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, %bb.c
  %.promoted.i10 = phi ptr [ %.promoted10.i8, %bb.c ], [ %.lcssa62, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 8 uses
  %.0.lcssa.i11 = phi i32 [ %i.bm, %bb.c ], [ %i.ck, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 7 uses
  %i.cm = icmp sgt i32 %.0.lcssa.i11, 0
  br i1 %i.cm, label %.lr.ph.i5.i12.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24

.lr.ph.i5.i12.preheader:                          ; preds = %._crit_edge.i9
  %i.cn = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %min.iters.check148 = icmp ult i32 %.0.lcssa.i11, 26
  br i1 %min.iters.check148, label %.lr.ph.i5.i12.preheader228, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.i5.i12.preheader
  %scevgep133 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.b, i64 %i.co ; 2 uses
  %scevgep135 = getelementptr i8, ptr %.promoted.i10, i64 %i.co ; 2 uses
  %bound0136 = icmp ult ptr %0, %scevgep134
  %bound1137 = icmp ult ptr %i.b, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0139 = icmp ult ptr %0, %scevgep135
  %bound1140 = icmp ult ptr %.promoted.i10, %scevgep133
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %found.conflict138, %found.conflict141
  %bound0143 = icmp ult ptr %i.b, %scevgep135
  %bound1144 = icmp ult ptr %.promoted.i10, %scevgep134
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph.i5.i12.preheader228, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck132
  %n.vec151 = and i64 %i.cn, 2147483644           ; 5 uses
  %i.cp = getelementptr i8, ptr %.promoted.i10, i64 %n.vec151
  %i.cq = trunc nuw nsw i64 %n.vec151 to i32
  %i.cr = sub nsw i32 %.0.lcssa.i11, %i.cq
  %i.cs = getelementptr i8, ptr %i.b, i64 %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next159, %vector.body152 ] ; 4 uses
  %next.gep154 = getelementptr i8, ptr %.promoted.i10, i64 %index153 ; 2 uses
  %i.ct = getelementptr i8, ptr %.promoted.i10, i64 %index153
  %next.gep156 = getelementptr i8, ptr %i.b, i64 %index153 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = getelementptr i8, ptr %next.gep154, i64 2
  %wide.load157 = load <2 x i8>, ptr %next.gep154, align 1, !tbaa !51, !alias.scope !344
  %wide.load158 = load <2 x i8>, ptr %i.cv, align 1, !tbaa !51, !alias.scope !344
  %i.cw = getelementptr i8, ptr %next.gep156, i64 2
  store <2 x i8> %wide.load157, ptr %next.gep156, align 4, !tbaa !51, !alias.scope !347, !noalias !344
  store <2 x i8> %wide.load158, ptr %i.cw, align 2, !tbaa !51, !alias.scope !347, !noalias !344
  %index.next159 = add nuw i64 %index153, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.cx, label %middle.block160, label %vector.body152, !llvm.loop !349

middle.block160:                                  ; preds = %vector.body152
  store ptr %i.cu, ptr %0, align 8, !tbaa !49, !alias.scope !350, !noalias !352
  %cmp.n161 = icmp eq i64 %n.vec151, %i.cn
  br i1 %cmp.n161, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12.preheader228

.lr.ph.i5.i12.preheader228:                       ; preds = %vector.memcheck132, %.lr.ph.i5.i12.preheader, %middle.block160
  %.ph229 = phi ptr [ %.promoted.i10, %vector.memcheck132 ], [ %.promoted.i10, %.lr.ph.i5.i12.preheader ], [ %i.cp, %middle.block160 ] ; 2 uses
  %.05.i6.i13.ph = phi i32 [ %.0.lcssa.i11, %vector.memcheck132 ], [ %.0.lcssa.i11, %.lr.ph.i5.i12.preheader ], [ %i.cr, %middle.block160 ] ; 4 uses
  %.024.i7.i14.ph = phi ptr [ %i.b, %vector.memcheck132 ], [ %i.b, %.lr.ph.i5.i12.preheader ], [ %i.cs, %middle.block160 ] ; 2 uses
  %i.cy = add nsw i32 %.05.i6.i13.ph, -1
  %xtraiter238 = and i32 %.05.i6.i13.ph, 3        ; 2 uses
  %lcmp.mod239.not = icmp eq i32 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol

.lr.ph.i5.i12.prol:                               ; preds = %.lr.ph.i5.i12.preheader228, %.lr.ph.i5.i12.prol
  %i.cz = phi ptr [ %i.db, %.lr.ph.i5.i12.prol ], [ %.ph229, %.lr.ph.i5.i12.preheader228 ] ; 2 uses
  %.05.i6.i13.prol = phi i32 [ %i.da, %.lr.ph.i5.i12.prol ], [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader228 ]
  %.024.i7.i14.prol = phi ptr [ %i.dd, %.lr.ph.i5.i12.prol ], [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader228 ] ; 2 uses
  %prol.iter240 = phi i32 [ %prol.iter240.next, %.lr.ph.i5.i12.prol ], [ 0, %.lr.ph.i5.i12.preheader228 ]
  %i.da = add nsw i32 %.05.i6.i13.prol, -1        ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 3 uses
  store ptr %i.db, ptr %0, align 8, !tbaa !49
  %i.dc = load i8, ptr %i.cz, align 1, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.024.i7.i14.prol, i64 1 ; 2 uses
  store i8 %i.dc, ptr %.024.i7.i14.prol, align 1, !tbaa !51
  %prol.iter240.next = add i32 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i32 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol, !llvm.loop !353

.lr.ph.i5.i12.prol.loopexit:                      ; preds = %.lr.ph.i5.i12.prol, %.lr.ph.i5.i12.preheader228
  %.unr241 = phi ptr [ %.ph229, %.lr.ph.i5.i12.preheader228 ], [ %i.db, %.lr.ph.i5.i12.prol ]
  %.05.i6.i13.unr = phi i32 [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader228 ], [ %i.da, %.lr.ph.i5.i12.prol ]
  %.024.i7.i14.unr = phi ptr [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader228 ], [ %i.dd, %.lr.ph.i5.i12.prol ]
  %i.de = icmp ult i32 %i.cy, 3
  br i1 %i.de, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12

.lr.ph.i5.i12:                                    ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12
  %i.df = phi ptr [ %i.dq, %.lr.ph.i5.i12 ], [ %.unr241, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %.05.i6.i13 = phi i32 [ %i.dp, %.lr.ph.i5.i12 ], [ %.05.i6.i13.unr, %.lr.ph.i5.i12.prol.loopexit ]
  %.024.i7.i14 = phi ptr [ %i.ds, %.lr.ph.i5.i12 ], [ %.024.i7.i14.unr, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !49
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 1
  store i8 %i.dh, ptr %.024.i7.i14, align 1, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 2 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !49
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 2
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 3 ; 2 uses
  store ptr %i.dm, ptr %0, align 8, !tbaa !49
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 3
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !51
  %i.dp = add nsw i32 %.05.i6.i13, -4             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.dq, ptr %0, align 8, !tbaa !49
  %i.dr = load i8, ptr %i.dm, align 1, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 4
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !51
  %.not.i8.i15.3 = icmp eq i32 %i.dp, 0
  br i1 %.not.i8.i15.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12, !llvm.loop !354

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24: ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12, %middle.block160, %._crit_edge.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.dt = trunc i64 %2 to i32
  %i.du = shl i32 %i.dt, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i25 = load ptr, ptr %0, align 8    ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 1023
  br i1 %i.dv, label %.lr.ph.i.preheader.i33.preheader, label %._crit_edge.i26

.lr.ph.i.preheader.i33.preheader:                 ; preds = %bb.d
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep66
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, %.lr.ph.i.preheader.i33.preheader
  %.013.i34 = phi i32 [ %i.es, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %i.du, %.lr.ph.i.preheader.i33.preheader ] ; 2 uses
  %.promoted1112.i35 = phi ptr [ %.lcssa64, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %.promoted10.i25, %.lr.ph.i.preheader.i33.preheader ] ; 8 uses
  %scevgep67 = getelementptr i8, ptr %.promoted1112.i35, i64 1024 ; 2 uses
  %bound068 = icmp ult ptr %0, %scevgep67
  %bound169 = icmp ult ptr %.promoted1112.i35, %scevgep
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  %bound071 = icmp ult ptr %i.a, %scevgep67
  %bound172 = icmp ult ptr %.promoted1112.i35, %scevgep66
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  br i1 %conflict.rdx74, label %.lr.ph.i.i36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dw = getelementptr i8, ptr %.promoted1112.i35, i64 1024
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.promoted1112.i35, i64 %index ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !355
  %wide.load77 = load <2 x i8>, ptr %i.dx, align 1, !tbaa !51, !alias.scope !355
  %i.dy = getelementptr i8, ptr %next.gep76, i64 2
  store <2 x i8> %wide.load, ptr %next.gep76, align 8, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77, ptr %i.dy, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next = or disjoint i64 %index, 4         ; 3 uses
  %next.gep.1 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next ; 2 uses
  %i.dz = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next
  %next.gep76.1 = getelementptr i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %i.eb = getelementptr i8, ptr %next.gep.1, i64 2
  %wide.load.1 = load <2 x i8>, ptr %next.gep.1, align 1, !tbaa !51, !alias.scope !355
  %wide.load77.1 = load <2 x i8>, ptr %i.eb, align 1, !tbaa !51, !alias.scope !355
  %i.ec = getelementptr i8, ptr %next.gep76.1, i64 2
  store <2 x i8> %wide.load.1, ptr %next.gep76.1, align 4, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77.1, ptr %i.ec, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next.1, 1024
  br i1 %i.ed, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40.loopexit235, label %vector.body, !llvm.loop !360

.lr.ph.i.i36:                                     ; preds = %vector.memcheck, %.lr.ph.i.i36
  %i.ee = phi ptr [ %i.ep, %.lr.ph.i.i36 ], [ %.promoted1112.i35, %vector.memcheck ] ; 5 uses
  %.05.i.i37 = phi i32 [ %i.eo, %.lr.ph.i.i36 ], [ 1024, %vector.memcheck ]
  %.024.i.i38 = phi ptr [ %i.er, %.lr.ph.i.i36 ], [ %i.a, %vector.memcheck ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  store ptr %i.ef, ptr %0, align 8, !tbaa !49
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 1
  store i8 %i.eg, ptr %.024.i.i38, align 1, !tbaa !51
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 2 ; 2 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !49
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 2
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !51
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 3 ; 2 uses
  store ptr %i.el, ptr %0, align 8, !tbaa !49
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 3
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !51
  %i.eo = add nsw i32 %.05.i.i37, -4              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 3 uses
  store ptr %i.ep, ptr %0, align 8, !tbaa !49
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 4
  store i8 %i.eq, ptr %i.en, align 1, !tbaa !51
  %.not.i.i39.3 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i39.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, label %.lr.ph.i.i36, !llvm.loop !361

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40.loopexit235: ; preds = %vector.body
  store ptr %i.ea, ptr %0, align 8, !tbaa !49, !alias.scope !362, !noalias !364
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40: ; preds = %.lr.ph.i.i36, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40.loopexit235
  %.lcssa64 = phi ptr [ %i.dw, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40.loopexit235 ], [ %i.ep, %.lr.ph.i.i36 ] ; 2 uses
  %i.es = add nsw i32 %.013.i34, -1024            ; 2 uses
  %i.et = icmp sgt i32 %.013.i34, 2047
  br i1 %i.et, label %vector.memcheck, label %._crit_edge.i26, !llvm.loop !95

._crit_edge.i26:                                  ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, %bb.d
  %.promoted.i27 = phi ptr [ %.promoted10.i25, %bb.d ], [ %.lcssa64, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 8 uses
  %.0.lcssa.i28 = phi i32 [ %i.du, %bb.d ], [ %i.es, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 7 uses
  %i.eu = icmp sgt i32 %.0.lcssa.i28, 0
  br i1 %i.eu, label %.lr.ph.i5.i29.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41

.lr.ph.i5.i29.preheader:                          ; preds = %._crit_edge.i26
  %i.ev = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i28, 26
  br i1 %min.iters.check, label %.lr.ph.i5.i29.preheader233, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.i5.i29.preheader
  %scevgep79 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ew = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.a, i64 %i.ew ; 2 uses
  %scevgep81 = getelementptr i8, ptr %.promoted.i27, i64 %i.ew ; 2 uses
  %bound082 = icmp ult ptr %0, %scevgep80
  %bound183 = icmp ult ptr %i.a, %scevgep79
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %0, %scevgep81
  %bound186 = icmp ult ptr %.promoted.i27, %scevgep79
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %i.a, %scevgep81
  %bound190 = icmp ult ptr %.promoted.i27, %scevgep80
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.lr.ph.i5.i29.preheader233, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck78
  %n.vec = and i64 %i.ev, 2147483644              ; 5 uses
  %i.ex = getelementptr i8, ptr %.promoted.i27, i64 %n.vec
  %i.ey = trunc nuw nsw i64 %n.vec to i32
  %i.ez = sub nsw i32 %.0.lcssa.i28, %i.ey
  %i.fa = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph94
  %index96 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body95 ] ; 4 uses
  %next.gep97 = getelementptr i8, ptr %.promoted.i27, i64 %index96 ; 2 uses
  %i.fb = getelementptr i8, ptr %.promoted.i27, i64 %index96
  %next.gep99 = getelementptr i8, ptr %i.a, i64 %index96 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = getelementptr i8, ptr %next.gep97, i64 2
  %wide.load100 = load <2 x i8>, ptr %next.gep97, align 1, !tbaa !51, !alias.scope !365
  %wide.load101 = load <2 x i8>, ptr %i.fd, align 1, !tbaa !51, !alias.scope !365
  %i.fe = getelementptr i8, ptr %next.gep99, i64 2
  store <2 x i8> %wide.load100, ptr %next.gep99, align 4, !tbaa !51, !alias.scope !368, !noalias !365
  store <2 x i8> %wide.load101, ptr %i.fe, align 2, !tbaa !51, !alias.scope !368, !noalias !365
  %index.next102 = add nuw i64 %index96, 4        ; 2 uses
  %i.ff = icmp eq i64 %index.next102, %n.vec
  br i1 %i.ff, label %middle.block103, label %vector.body95, !llvm.loop !370

middle.block103:                                  ; preds = %vector.body95
  store ptr %i.fc, ptr %0, align 8, !tbaa !49, !alias.scope !371, !noalias !373
  %cmp.n = icmp eq i64 %n.vec, %i.ev
  br i1 %cmp.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29.preheader233

.lr.ph.i5.i29.preheader233:                       ; preds = %vector.memcheck78, %.lr.ph.i5.i29.preheader, %middle.block103
  %.ph234 = phi ptr [ %.promoted.i27, %vector.memcheck78 ], [ %.promoted.i27, %.lr.ph.i5.i29.preheader ], [ %i.ex, %middle.block103 ] ; 2 uses
  %.05.i6.i30.ph = phi i32 [ %.0.lcssa.i28, %vector.memcheck78 ], [ %.0.lcssa.i28, %.lr.ph.i5.i29.preheader ], [ %i.ez, %middle.block103 ] ; 4 uses
  %.024.i7.i31.ph = phi ptr [ %i.a, %vector.memcheck78 ], [ %i.a, %.lr.ph.i5.i29.preheader ], [ %i.fa, %middle.block103 ] ; 2 uses
  %i.fg = add nsw i32 %.05.i6.i30.ph, -1
  %xtraiter = and i32 %.05.i6.i30.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol

.lr.ph.i5.i29.prol:                               ; preds = %.lr.ph.i5.i29.preheader233, %.lr.ph.i5.i29.prol
  %i.fh = phi ptr [ %i.fj, %.lr.ph.i5.i29.prol ], [ %.ph234, %.lr.ph.i5.i29.preheader233 ] ; 2 uses
  %.05.i6.i30.prol = phi i32 [ %i.fi, %.lr.ph.i5.i29.prol ], [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader233 ]
  %.024.i7.i31.prol = phi ptr [ %i.fl, %.lr.ph.i5.i29.prol ], [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader233 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i29.prol ], [ 0, %.lr.ph.i5.i29.preheader233 ]
  %i.fi = add nsw i32 %.05.i6.i30.prol, -1        ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 3 uses
  store ptr %i.fj, ptr %0, align 8, !tbaa !49
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %.024.i7.i31.prol, i64 1 ; 2 uses
  store i8 %i.fk, ptr %.024.i7.i31.prol, align 1, !tbaa !51
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol, !llvm.loop !374

.lr.ph.i5.i29.prol.loopexit:                      ; preds = %.lr.ph.i5.i29.prol, %.lr.ph.i5.i29.preheader233
  %.unr = phi ptr [ %.ph234, %.lr.ph.i5.i29.preheader233 ], [ %i.fj, %.lr.ph.i5.i29.prol ]
  %.05.i6.i30.unr = phi i32 [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader233 ], [ %i.fi, %.lr.ph.i5.i29.prol ]
  %.024.i7.i31.unr = phi ptr [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader233 ], [ %i.fl, %.lr.ph.i5.i29.prol ]
  %i.fm = icmp ult i32 %i.fg, 3
  br i1 %i.fm, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29

.lr.ph.i5.i29:                                    ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29
  %i.fn = phi ptr [ %i.fy, %.lr.ph.i5.i29 ], [ %.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %.05.i6.i30 = phi i32 [ %i.fx, %.lr.ph.i5.i29 ], [ %.05.i6.i30.unr, %.lr.ph.i5.i29.prol.loopexit ]
  %.024.i7.i31 = phi ptr [ %i.ga, %.lr.ph.i5.i29 ], [ %.024.i7.i31.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store ptr %i.fo, ptr %0, align 8, !tbaa !49
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !51
  %i.fq = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 1
  store i8 %i.fp, ptr %.024.i7.i31, align 1, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 2 ; 2 uses
  store ptr %i.fr, ptr %0, align 8, !tbaa !49
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !51
  %i.ft = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 2
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 3 ; 2 uses
  store ptr %i.fu, ptr %0, align 8, !tbaa !49
  %i.fv = load i8, ptr %i.fr, align 1, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 3
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !51
  %i.fx = add nsw i32 %.05.i6.i30, -4             ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  store ptr %i.fy, ptr %0, align 8, !tbaa !49
  %i.fz = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.ga = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 4
  store i8 %i.fz, ptr %i.fw, align 1, !tbaa !51
  %.not.i8.i32.3 = icmp eq i32 %i.fx, 0
  br i1 %.not.i8.i32.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29, !llvm.loop !375

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41: ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29, %middle.block103, %._crit_edge.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.gb = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull @.str.9)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.gb, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.gc = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gb) #19
  resume { ptr, i32 } %i.gc

bb.h:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_514convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 0, label %.preheader
    i32 1, label %.preheader29
    i32 2, label %.preheader31
  ]

.preheader31:                                     ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader31
  %.pre = load ptr, ptr %1, align 8, !tbaa !49
  br label %.lr.ph

.preheader29:                                     ; preds = %bb.a
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.preheader29
  %.pre44 = load ptr, ptr %1, align 8, !tbaa !49  ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.a = icmp eq i64 %3, 1
  br i1 %i.a, label %.lr.ph35.epil.preheader, label %.lr.ph35.preheader.new

.lr.ph35.preheader.new:                           ; preds = %.lr.ph35.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph35

.preheader:                                       ; preds = %bb.a
  %.not39 = icmp eq i64 %3, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.preheader
  %.pre45 = load ptr, ptr %1, align 8, !tbaa !49
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %i.b = phi ptr [ %i.l, %.lr.ph37 ], [ %.pre45, %.lr.ph37.preheader ]
  %.036 = phi i64 [ %i.m, %.lr.ph37 ], [ 0, %.lr.ph37.preheader ]
  %.sroa.06.0.copyload = load i32, ptr %i.b, align 1, !tbaa !51 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.06.0.copyload to i8
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 16
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.6.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 24
  %.sroa.6.0.extract.trunc.i = trunc nuw i32 %.sroa.6.0.extract.shift.i to i8
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %0, align 8, !tbaa !49
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.c, align 1, !tbaa !51
  %i.e = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.e, align 1, !tbaa !51
  %i.g = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !49
  store i8 %.sroa.5.0.extract.trunc.i, ptr %i.g, align 1, !tbaa !51
  %i.i = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %0, align 8, !tbaa !49
  store i8 %.sroa.6.0.extract.trunc.i, ptr %i.i, align 1, !tbaa !51
  %i.k = load ptr, ptr %1, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !49
end_hunk_1
