inline.NumInlined: 360
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_523copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
  %lcmp.mod2239.not.a = icmp eq i32 %xtraiter2237, 0
  br i1 %lcmp.mod2239.not.a, label %.loopexit1025, label %.lr.ph1252.epil.preheader

.lr.ph1252.epil.preheader:                        ; preds = %.loopexit1025.loopexit.unr-lcssa, %.lr.ph1252.preheader
  %.06651251.epil.init = phi ptr [ %i.eh, %.lr.ph1252.preheader ], [ %i.ev, %.loopexit1025.loopexit.unr-lcssa ]
  %lcmp.mod2240 = icmp ne i32 %xtraiter2237, 0
  tail call void @llvm.assume(i1 %lcmp.mod2240)
  br label %.lr.ph1252.epil

.lr.ph1252.epil:                                  ; preds = %.lr.ph1252.epil, %.lr.ph1252.epil.preheader
  %.06651251.epil = phi ptr [ %i.ew, %.lr.ph1252.epil ], [ %.06651251.epil.init, %.lr.ph1252.epil.preheader ] ; 2 uses
  %epil.iter2238 = phi i32 [ %epil.iter2238.next, %.lr.ph1252.epil ], [ 0, %.lr.ph1252.epil.preheader ]
  store float %i.dp, ptr %.06651251.epil, align 4, !tbaa !46
  %i.ew = getelementptr inbounds i8, ptr %.06651251.epil, i64 %12
  %epil.iter2238.next = add i32 %epil.iter2238, 1 ; 2 uses
  %epil.iter2238.cmp.not = icmp eq i32 %epil.iter2238.next, %xtraiter2237
  br i1 %epil.iter2238.cmp.not, label %.loopexit1025, label %.lr.ph1252.epil, !llvm.loop !82

.loopexit1025:                                    ; preds = %.loopexit1025.loopexit.unr-lcssa, %.lr.ph1252.epil, %bb.u, %bb.t
  %indvars.iv.next1416 = add nsw i64 %indvars.iv1415, 1 ; 2 uses
  %lftr.wideiv1418 = trunc i64 %indvars.iv.next1416 to i32
  %exitcond1419.not = icmp eq i32 %i.ed, %lftr.wideiv1418
  br i1 %exitcond1419.not, label %.loopexit1022, label %bb.t, !llvm.loop !83

bb.v:                                             ; preds = %bb.b
  %i.ex = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ex, ptr noundef nonnull @.str.9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.y:                                             ; preds = %bb.a
  %i.ez = icmp eq i32 %17, 1
  br i1 %i.ez, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %bb.y
  switch i32 %18, label %bb.bj [
    i32 0, label %bb.aa
    i32 1, label %bb.al
    i32 2, label %bb.aw
  ]

bb.aa:                                            ; preds = %bb.z
  switch i32 %19, label %bb.ai [
    i32 0, label %.preheader1028
    i32 1, label %.preheader1032
    i32 2, label %.preheader1036
  ]

.preheader1036:                                   ; preds = %bb.aa
  %.not7551234 = icmp sgt i32 %6, %7
  br i1 %.not7551234, label %.loopexit1022, label %.lr.ph1236

.lr.ph1236:                                       ; preds = %.preheader1036
  %i.fa = sub nsw i32 %5, %11
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %14, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %1, i64 %i.fc
  %i.fe = sub nsw i32 %5, %9
  %i.ff = sext i32 %i.fe to i64
  %sext1010 = shl i64 %4, 32
  %i.fg = ashr exact i64 %sext1010, 32
  %i.fh = mul nsw i64 %i.fg, %i.ff
  %i.fi = getelementptr inbounds i8, ptr %2, i64 %i.fh
  %sext1011 = shl i64 %3, 32
  %i.fj = ashr exact i64 %sext1011, 32
  %i.fk = sext i32 %6 to i64
  %i.fl = sext i32 %10 to i64
  %i.fm = sext i32 %8 to i64
  %i.fn = add i32 %7, 1
  %scevgep1928 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1929 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %scevgep1963 = getelementptr inbounds nuw i8, ptr %i.g, i64 1024 ; 2 uses
  %bound01965 = icmp ult ptr %0, %scevgep1963
  %bound11966 = icmp ult ptr %i.g, %scevgep1928
  %found.conflict1967 = and i1 %bound01965, %bound11966
  %bound11934 = icmp ult ptr %i.g, %scevgep1928
  br label %bb.ag

.preheader1032:                                   ; preds = %bb.aa
  %.not7571240 = icmp sgt i32 %6, %7
  br i1 %.not7571240, label %.loopexit1022, label %.lr.ph1242

.lr.ph1242:                                       ; preds = %.preheader1032
  %i.fo = sub nsw i32 %5, %11
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul nsw i64 %14, %i.fp
  %i.fr = getelementptr inbounds i8, ptr %1, i64 %i.fq
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
  %scevgep1988 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1989 = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %scevgep2023 = getelementptr inbounds nuw i8, ptr %i.h, i64 1024 ; 2 uses
  %bound02025 = icmp ult ptr %0, %scevgep2023
  %bound12026 = icmp ult ptr %i.h, %scevgep1988
  %found.conflict2027 = and i1 %bound02025, %bound12026
  %bound11994 = icmp ult ptr %i.h, %scevgep1988
  br label %bb.ae

.preheader1028:                                   ; preds = %bb.aa
  %.not7591247 = icmp sgt i32 %6, %7
  br i1 %.not7591247, label %.loopexit1022, label %.lr.ph1249

.lr.ph1249:                                       ; preds = %.preheader1028
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
  %scevgep2048 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2049 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %scevgep2083 = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 2 uses
  %bound02085 = icmp ult ptr %0, %scevgep2083
  %bound12086 = icmp ult ptr %i.i, %scevgep2048
  %found.conflict2087 = and i1 %bound02085, %bound12086
  %bound12054 = icmp ult ptr %i.i, %scevgep2048
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1249, %.loopexit1027
  %indvars.iv1409 = phi i64 [ %i.gm, %.lr.ph1249 ], [ %indvars.iv.next1410, %.loopexit1027 ] ; 3 uses
  %i.gq = sub nsw i64 %indvars.iv1409, %i.gn
  %i.gr = mul nsw i64 %13, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.gf, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !49 ; 2 uses
  %i.gu = sub nsw i64 %indvars.iv1409, %i.go
  %i.gv = mul nsw i64 %i.gl, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gk, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3  ; 4 uses
  %.not760 = icmp eq ptr %i.gt, null
  br i1 %.not760, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph1245, label %.loopexit1027

.lr.ph1245:                                       ; preds = %.preheader
  %.promoted1246 = load ptr, ptr %0, align 8, !tbaa !49
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1245, %bb.ac
  %i.gz = phi ptr [ %.promoted1246, %.lr.ph1245 ], [ %i.hg, %bb.ac ] ; 5 uses
  %.06801244 = phi ptr [ %i.gt, %.lr.ph1245 ], [ %i.hi, %bb.ac ] ; 2 uses
  %.06841243 = phi i32 [ 0, %.lr.ph1245 ], [ %i.hj, %bb.ac ]
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
  store i32 %.sroa.0.0.insert.insert.i, ptr %.06801244, align 4, !tbaa !3
  %i.hi = getelementptr inbounds i8, ptr %.06801244, i64 %12
  %i.hj = add nuw nsw i32 %.06841243, 1           ; 2 uses
  %exitcond1408.not = icmp eq i32 %i.hj, %i.gx
  br i1 %exitcond1408.not, label %.loopexit1027, label %bb.ac, !llvm.loop !84

bb.ad:                                            ; preds = %bb.ab
  %i.hk = shl i32 %i.gx, 2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 5 uses
  %i.hl = icmp sgt i32 %i.gx, 255
  br i1 %i.hl, label %vector.memcheck2082, label %._crit_edge.i

vector.memcheck2082:                              ; preds = %bb.ad
  %scevgep2099 = getelementptr i8, ptr %.promoted10.i, i64 1024
  %20 = add i32 %i.hk, 1023
  %smin2100 = call i32 @llvm.smin.i32(i32 %i.hk, i32 2047)
  %21 = sub i32 %20, %smin2100
  %22 = and i32 %21, -1024
  %23 = zext i32 %22 to i64
  %scevgep2084 = getelementptr i8, ptr %scevgep2099, i64 %23 ; 2 uses
  %bound02088 = icmp ult ptr %0, %scevgep2084
  %bound12089 = icmp ult ptr %.promoted10.i, %scevgep2048
  %found.conflict2090 = and i1 %bound02088, %bound12089
  %conflict.rdx2091 = or i1 %found.conflict2087, %found.conflict2090
  %bound02092 = icmp ult ptr %i.i, %scevgep2084
  %bound12093 = icmp ult ptr %.promoted10.i, %scevgep2083
  %found.conflict2094 = and i1 %bound02092, %bound12093
  %conflict.rdx2095 = or i1 %conflict.rdx2091, %found.conflict2094
  br label %vector.memcheck2097

vector.memcheck2097:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %vector.memcheck2082
  %.013.i = phi i32 [ %i.im, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.hk, %vector.memcheck2082 ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %vector.memcheck2082 ] ; 7 uses
  br i1 %conflict.rdx2095, label %.lr.ph.i.i, label %vector.ph2097

vector.ph2097:                                    ; preds = %vector.memcheck2097
  %i.hm = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body2098

vector.body2098:                                  ; preds = %vector.body2098, %vector.ph2097
  %index2099 = phi i64 [ 0, %vector.ph2097 ], [ %index.next2105.3, %vector.body2098 ] ; 6 uses
  %next.gep2100 = getelementptr i8, ptr %.promoted1112.i, i64 %index2099 ; 2 uses
  %next.gep2102 = getelementptr i8, ptr %i.i, i64 %index2099 ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep2100, i64 2
  %wide.load2103 = load <2 x i8>, ptr %next.gep2100, align 1, !tbaa !51, !alias.scope !85
  %wide.load2104 = load <2 x i8>, ptr %i.hn, align 1, !tbaa !51, !alias.scope !85
  %i.ho = getelementptr i8, ptr %next.gep2102, i64 2
  store <2 x i8> %wide.load2103, ptr %next.gep2102, align 16, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2104, ptr %i.ho, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2105 = or disjoint i64 %index2099, 4 ; 2 uses
  %next.gep2100.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2105 ; 2 uses
  %next.gep2102.1 = getelementptr i8, ptr %i.i, i64 %index.next2105 ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep2100.1, i64 2
  %wide.load2103.1 = load <2 x i8>, ptr %next.gep2100.1, align 1, !tbaa !51, !alias.scope !85
  %wide.load2104.1 = load <2 x i8>, ptr %i.hp, align 1, !tbaa !51, !alias.scope !85
  %i.hq = getelementptr i8, ptr %next.gep2102.1, i64 2
  store <2 x i8> %wide.load2103.1, ptr %next.gep2102.1, align 4, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2104.1, ptr %i.hq, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2105.1 = or disjoint i64 %index2099, 8 ; 2 uses
  %next.gep2100.2 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2105.1 ; 2 uses
  %next.gep2102.2 = getelementptr i8, ptr %i.i, i64 %index.next2105.1 ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep2100.2, i64 2
  %wide.load2103.2 = load <2 x i8>, ptr %next.gep2100.2, align 1, !tbaa !51, !alias.scope !85
  %wide.load2104.2 = load <2 x i8>, ptr %i.hr, align 1, !tbaa !51, !alias.scope !85
  %i.hs = getelementptr i8, ptr %next.gep2102.2, i64 2
  store <2 x i8> %wide.load2103.2, ptr %next.gep2102.2, align 8, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2104.2, ptr %i.hs, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2105.2 = or disjoint i64 %index2099, 12 ; 3 uses
  %next.gep2100.3 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2105.2 ; 2 uses
  %next.gep2102.3 = getelementptr i8, ptr %i.i, i64 %index.next2105.2 ; 2 uses
  %i.ht = getelementptr i8, ptr %next.gep2100.3, i64 2
  %wide.load2103.3 = load <2 x i8>, ptr %next.gep2100.3, align 1, !tbaa !51, !alias.scope !85
  %wide.load2104.3 = load <2 x i8>, ptr %i.ht, align 1, !tbaa !51, !alias.scope !85
  %i.hu = getelementptr i8, ptr %next.gep2102.3, i64 2
  store <2 x i8> %wide.load2103.3, ptr %next.gep2102.3, align 4, !tbaa !51, !alias.scope !88, !noalias !85
  store <2 x i8> %wide.load2104.3, ptr %i.hu, align 2, !tbaa !51, !alias.scope !88, !noalias !85
  %index.next2105.3 = add nuw nsw i64 %index2099, 16 ; 2 uses
  %i.hv = icmp eq i64 %index.next2105.3, 1024
  br i1 %i.hv, label %middle.block2106, label %vector.body2098, !llvm.loop !90

middle.block2106:                                 ; preds = %vector.body2098
  %i.hw = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2105.2
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  store ptr %i.hx, ptr %0, align 8, !tbaa !49, !alias.scope !91, !noalias !93
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i

.lr.ph.i.i:                                       ; preds = %vector.memcheck2097, %.lr.ph.i.i
  %i.hy = phi ptr [ %i.ij, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck2097 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.ii, %.lr.ph.i.i ], [ 1024, %vector.memcheck2097 ]
  %.024.i.i = phi ptr [ %i.il, %.lr.ph.i.i ], [ %i.i, %vector.memcheck2097 ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1 ; 2 uses
  store ptr %i.hz, ptr %0, align 8, !tbaa !49
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.ia, ptr %.024.i.i, align 1, !tbaa !51
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 2 ; 2 uses
  store ptr %i.ic, ptr %0, align 8, !tbaa !49
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !51
  %i.ie = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 3 ; 2 uses
  store ptr %i.if, ptr %0, align 8, !tbaa !49
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !51
  %i.ih = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !51
  %i.ii = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 4 ; 3 uses
  store ptr %i.ij, ptr %0, align 8, !tbaa !49
  %i.ik = load i8, ptr %i.if, align 1, !tbaa !51
  %i.il = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.ik, ptr %i.ih, align 1, !tbaa !51
  %.not.i.i769.3 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i769.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !94

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i: ; preds = %.lr.ph.i.i, %middle.block2106
  %.lcssa = phi ptr [ %i.hm, %middle.block2106 ], [ %i.ij, %.lr.ph.i.i ] ; 2 uses
  %i.im = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.in = icmp sgt i32 %.013.i, 2047
  br i1 %i.in, label %vector.memcheck2097, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %bb.ad
  %.promoted.i768 = phi ptr [ %.promoted10.i, %bb.ad ], [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.hk, %bb.ad ], [ %i.im, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.io = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.io, label %.lr.ph.i5.i.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.ip = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check2065 = icmp ult i32 %.0.lcssa.i, 12
  br i1 %min.iters.check2065, label %.lr.ph.i5.i.preheader2109, label %vector.memcheck2047

vector.memcheck2047:                              ; preds = %.lr.ph.i5.i.preheader
  %i.iq = add nsw i32 %.0.lcssa.i, -1
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %scevgep2050 = getelementptr i8, ptr %scevgep2049, i64 %i.ir ; 2 uses
  %scevgep2051 = getelementptr i8, ptr %.promoted.i768, i64 1
  %scevgep2052 = getelementptr i8, ptr %scevgep2051, i64 %i.ir ; 2 uses
  %bound02053 = icmp ult ptr %0, %scevgep2050
  %found.conflict2055 = and i1 %bound02053, %bound12054
  %bound02056 = icmp ult ptr %0, %scevgep2052
  %bound12057 = icmp ult ptr %.promoted.i768, %scevgep2048
  %found.conflict2058 = and i1 %bound02056, %bound12057
  %conflict.rdx2059 = or i1 %found.conflict2055, %found.conflict2058
  %bound02060 = icmp ult ptr %i.i, %scevgep2052
  %bound12061 = icmp ult ptr %.promoted.i768, %scevgep2050
  %found.conflict2062 = and i1 %bound02060, %bound12061
  %conflict.rdx2063 = or i1 %conflict.rdx2059, %found.conflict2062
  br i1 %conflict.rdx2063, label %.lr.ph.i5.i.preheader2109, label %vector.ph2066

vector.ph2066:                                    ; preds = %vector.memcheck2047
  %n.vec2068 = and i64 %i.ip, 2147483644          ; 5 uses
  %i.is = getelementptr i8, ptr %.promoted.i768, i64 %n.vec2068
  %i.it = trunc nuw nsw i64 %n.vec2068 to i32
  %i.iu = sub nsw i32 %.0.lcssa.i, %i.it
  %i.iv = getelementptr i8, ptr %i.i, i64 %n.vec2068
  br label %vector.body2069

vector.body2069:                                  ; preds = %vector.body2069, %vector.ph2066
  %index2070 = phi i64 [ 0, %vector.ph2066 ], [ %index.next2076, %vector.body2069 ] ; 4 uses
  %next.gep2071 = getelementptr i8, ptr %.promoted.i768, i64 %index2070 ; 2 uses
  %next.gep2073 = getelementptr i8, ptr %i.i, i64 %index2070 ; 2 uses
  %i.iw = getelementptr i8, ptr %next.gep2071, i64 2
  %wide.load2074 = load <2 x i8>, ptr %next.gep2071, align 1, !tbaa !51, !alias.scope !96
  %wide.load2075 = load <2 x i8>, ptr %i.iw, align 1, !tbaa !51, !alias.scope !96
  %i.ix = getelementptr i8, ptr %next.gep2073, i64 2
  store <2 x i8> %wide.load2074, ptr %next.gep2073, align 4, !tbaa !51, !alias.scope !99, !noalias !96
  store <2 x i8> %wide.load2075, ptr %i.ix, align 2, !tbaa !51, !alias.scope !99, !noalias !96
  %index.next2076 = add nuw i64 %index2070, 4     ; 2 uses
  %i.iy = icmp eq i64 %index.next2076, %n.vec2068
  br i1 %i.iy, label %middle.block2077, label %vector.body2069, !llvm.loop !101

middle.block2077:                                 ; preds = %vector.body2069
  %i.iz = getelementptr i8, ptr %.promoted.i768, i64 %index2070
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  store ptr %i.ja, ptr %0, align 8, !tbaa !49, !alias.scope !102, !noalias !104
  %cmp.n2078 = icmp eq i64 %n.vec2068, %i.ip
  br i1 %cmp.n2078, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader2109

.lr.ph.i5.i.preheader2109:                        ; preds = %vector.memcheck2047, %.lr.ph.i5.i.preheader, %middle.block2077
  %.ph = phi ptr [ %.promoted.i768, %vector.memcheck2047 ], [ %.promoted.i768, %.lr.ph.i5.i.preheader ], [ %i.is, %middle.block2077 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck2047 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.iu, %middle.block2077 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.i, %vector.memcheck2047 ], [ %i.i, %.lr.ph.i5.i.preheader ], [ %i.iv, %middle.block2077 ] ; 2 uses
  %i.jb = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter2233 = and i32 %.05.i6.i.ph, 3         ; 2 uses
  %lcmp.mod2234.not = icmp eq i32 %xtraiter2233, 0
  br i1 %lcmp.mod2234.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader2109, %.lr.ph.i5.i.prol
  %i.jc = phi ptr [ %i.je, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader2109 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.jd, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2109 ]
  %.024.i7.i.prol = phi ptr [ %i.jg, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2109 ] ; 2 uses
  %prol.iter2235 = phi i32 [ %prol.iter2235.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader2109 ]
  %i.jd = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 3 uses
  store ptr %i.je, ptr %0, align 8, !tbaa !49
  %i.jf = load i8, ptr %i.jc, align 1, !tbaa !51
  %i.jg = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.jf, ptr %.024.i7.i.prol, align 1, !tbaa !51
  %prol.iter2235.next = add i32 %prol.iter2235, 1 ; 2 uses
  %prol.iter2235.cmp.not = icmp eq i32 %prol.iter2235.next, %xtraiter2233
  br i1 %prol.iter2235.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !105

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader2109
  %.unr2236 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader2109 ], [ %i.je, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2109 ], [ %i.jd, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2109 ], [ %i.jg, %.lr.ph.i5.i.prol ]
  %i.jh = icmp ult i32 %i.jb, 3
  br i1 %i.jh, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.ji = phi ptr [ %i.jt, %.lr.ph.i5.i ], [ %.unr2236, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.js, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.jv, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1 ; 2 uses
  store ptr %i.jj, ptr %0, align 8, !tbaa !49
  %i.jk = load i8, ptr %i.ji, align 1, !tbaa !51
  %i.jl = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.jk, ptr %.024.i7.i, align 1, !tbaa !51
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 2 ; 2 uses
  store ptr %i.jm, ptr %0, align 8, !tbaa !49
  %i.jn = load i8, ptr %i.jj, align 1, !tbaa !51
  %i.jo = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !51
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ji, i64 3 ; 2 uses
  store ptr %i.jp, ptr %0, align 8, !tbaa !49
  %i.jq = load i8, ptr %i.jm, align 1, !tbaa !51
  %i.jr = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !51
  %i.js = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  store ptr %i.jt, ptr %0, align 8, !tbaa !49
  %i.ju = load i8, ptr %i.jp, align 1, !tbaa !51
  %i.jv = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.ju, ptr %i.jr, align 1, !tbaa !51
  %.not.i8.i.3 = icmp eq i32 %i.js, 0
  br i1 %.not.i8.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !106

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block2077, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.loopexit1027

.loopexit1027:                                    ; preds = %bb.ac, %.preheader, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  %indvars.iv.next1410 = add nsw i64 %indvars.iv1409, 1 ; 2 uses
  %lftr.wideiv1412 = trunc i64 %indvars.iv.next1410 to i32
  %exitcond1413.not = icmp eq i32 %i.gp, %lftr.wideiv1412
  br i1 %exitcond1413.not, label %.loopexit1022, label %bb.ab, !llvm.loop !107

bb.ae:                                            ; preds = %.lr.ph1242, %.loopexit1031
  %indvars.iv1403 = phi i64 [ %i.fy, %.lr.ph1242 ], [ %indvars.iv.next1404, %.loopexit1031 ] ; 3 uses
  %i.jw = sub nsw i64 %indvars.iv1403, %i.fz
  %i.jx = mul nsw i64 %13, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %i.fr, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !49 ; 2 uses
  %i.ka = sub nsw i64 %indvars.iv1403, %i.ga
  %i.kb = mul nsw i64 %i.fx, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.fw, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3  ; 4 uses
  %.not758 = icmp eq ptr %i.jz, null
  br i1 %.not758, label %bb.af, label %.preheader1030

.preheader1030:                                   ; preds = %bb.ae
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph1239, label %.loopexit1031

.lr.ph1239:                                       ; preds = %.preheader1030, %.lr.ph1239
  %.06911238 = phi ptr [ %i.kk, %.lr.ph1239 ], [ %i.jz, %.preheader1030 ] ; 2 uses
  %.06931237 = phi i32 [ %i.kl, %.lr.ph1239 ], [ 0, %.preheader1030 ]
  %.promoted.i770 = load ptr, ptr %0, align 8, !tbaa !49 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 1 ; 2 uses
  store ptr %i.kf, ptr %0, align 8, !tbaa !49
  %i.kg = load i8, ptr %.promoted.i770, align 1, !tbaa !51
  %i.kh = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 2
  store ptr %i.kh, ptr %0, align 8, !tbaa !49
  %i.ki = load i8, ptr %i.kf, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i771 = zext i8 %i.ki to i16
  %.sroa.4.0.insert.shift.i772 = shl nuw i16 %.sroa.4.0.insert.ext.i771, 8
  %.sroa.0.0.insert.ext.i773 = zext i8 %i.kg to i16
  %.sroa.0.0.insert.insert.i774 = or disjoint i16 %.sroa.4.0.insert.shift.i772, %.sroa.0.0.insert.ext.i773
  %i.kj = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_510halfToUintEN9Imath_3_14halfE(i16 %.sroa.0.0.insert.insert.i774)
  store i32 %i.kj, ptr %.06911238, align 4, !tbaa !3
  %i.kk = getelementptr inbounds i8, ptr %.06911238, i64 %12
  %i.kl = add nuw nsw i32 %.06931237, 1           ; 2 uses
  %exitcond1402.not = icmp eq i32 %i.kl, %i.kd
  br i1 %exitcond1402.not, label %.loopexit1031, label %.lr.ph1239, !llvm.loop !108

bb.af:                                            ; preds = %bb.ae
  %i.km = shl i32 %i.kd, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.promoted10.i775 = load ptr, ptr %0, align 8   ; 5 uses
  %i.kn = icmp sgt i32 %i.kd, 511
  br i1 %i.kn, label %vector.memcheck2022, label %._crit_edge.i776

vector.memcheck2022:                              ; preds = %bb.af
  %scevgep2037 = getelementptr i8, ptr %.promoted10.i775, i64 1024
  %24 = add i32 %i.km, 1023
  %smin2038 = call i32 @llvm.smin.i32(i32 %i.km, i32 2047)
  %25 = sub i32 %24, %smin2038
  %26 = and i32 %25, -1024
  %27 = zext i32 %26 to i64
  %scevgep2024 = getelementptr i8, ptr %scevgep2037, i64 %27 ; 2 uses
  %bound02028 = icmp ult ptr %0, %scevgep2024
  %bound12029 = icmp ult ptr %.promoted10.i775, %scevgep1988
  %found.conflict2030 = and i1 %bound02028, %bound12029
  %conflict.rdx2031 = or i1 %found.conflict2027, %found.conflict2030
  %bound02032 = icmp ult ptr %i.h, %scevgep2024
  %bound12033 = icmp ult ptr %.promoted10.i775, %scevgep2023
  %found.conflict2034 = and i1 %bound02032, %bound12033
  %conflict.rdx2035 = or i1 %conflict.rdx2031, %found.conflict2034
  br label %vector.memcheck2035

vector.memcheck2035:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790, %vector.memcheck2022
  %.013.i784 = phi i32 [ %i.lo, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %i.km, %vector.memcheck2022 ] ; 2 uses
  %.promoted1112.i785 = phi ptr [ %.lcssa1567, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %.promoted10.i775, %vector.memcheck2022 ] ; 7 uses
  br i1 %conflict.rdx2035, label %.lr.ph.i.i786, label %vector.ph2037

vector.ph2037:                                    ; preds = %vector.memcheck2035
  %i.ko = getelementptr i8, ptr %.promoted1112.i785, i64 1024
  br label %vector.body2038

vector.body2038:                                  ; preds = %vector.body2038, %vector.ph2037
  %index2039 = phi i64 [ 0, %vector.ph2037 ], [ %index.next2045.3, %vector.body2038 ] ; 6 uses
  %next.gep2040 = getelementptr i8, ptr %.promoted1112.i785, i64 %index2039 ; 2 uses
  %next.gep2042 = getelementptr i8, ptr %i.h, i64 %index2039 ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep2040, i64 2
  %wide.load2043 = load <2 x i8>, ptr %next.gep2040, align 1, !tbaa !51, !alias.scope !109
  %wide.load2044 = load <2 x i8>, ptr %i.kp, align 1, !tbaa !51, !alias.scope !109
  %i.kq = getelementptr i8, ptr %next.gep2042, i64 2
  store <2 x i8> %wide.load2043, ptr %next.gep2042, align 16, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2044, ptr %i.kq, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2045 = or disjoint i64 %index2039, 4 ; 2 uses
  %next.gep2040.1 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2045 ; 2 uses
  %next.gep2042.1 = getelementptr i8, ptr %i.h, i64 %index.next2045 ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep2040.1, i64 2
  %wide.load2043.1 = load <2 x i8>, ptr %next.gep2040.1, align 1, !tbaa !51, !alias.scope !109
  %wide.load2044.1 = load <2 x i8>, ptr %i.kr, align 1, !tbaa !51, !alias.scope !109
  %i.ks = getelementptr i8, ptr %next.gep2042.1, i64 2
  store <2 x i8> %wide.load2043.1, ptr %next.gep2042.1, align 4, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2044.1, ptr %i.ks, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2045.1 = or disjoint i64 %index2039, 8 ; 2 uses
  %next.gep2040.2 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2045.1 ; 2 uses
  %next.gep2042.2 = getelementptr i8, ptr %i.h, i64 %index.next2045.1 ; 2 uses
  %i.kt = getelementptr i8, ptr %next.gep2040.2, i64 2
  %wide.load2043.2 = load <2 x i8>, ptr %next.gep2040.2, align 1, !tbaa !51, !alias.scope !109
  %wide.load2044.2 = load <2 x i8>, ptr %i.kt, align 1, !tbaa !51, !alias.scope !109
  %i.ku = getelementptr i8, ptr %next.gep2042.2, i64 2
  store <2 x i8> %wide.load2043.2, ptr %next.gep2042.2, align 8, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2044.2, ptr %i.ku, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2045.2 = or disjoint i64 %index2039, 12 ; 3 uses
  %next.gep2040.3 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2045.2 ; 2 uses
  %next.gep2042.3 = getelementptr i8, ptr %i.h, i64 %index.next2045.2 ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep2040.3, i64 2
  %wide.load2043.3 = load <2 x i8>, ptr %next.gep2040.3, align 1, !tbaa !51, !alias.scope !109
  %wide.load2044.3 = load <2 x i8>, ptr %i.kv, align 1, !tbaa !51, !alias.scope !109
  %i.kw = getelementptr i8, ptr %next.gep2042.3, i64 2
  store <2 x i8> %wide.load2043.3, ptr %next.gep2042.3, align 4, !tbaa !51, !alias.scope !112, !noalias !109
  store <2 x i8> %wide.load2044.3, ptr %i.kw, align 2, !tbaa !51, !alias.scope !112, !noalias !109
  %index.next2045.3 = add nuw nsw i64 %index2039, 16 ; 2 uses
  %i.kx = icmp eq i64 %index.next2045.3, 1024
  br i1 %i.kx, label %middle.block2046, label %vector.body2038, !llvm.loop !114

middle.block2046:                                 ; preds = %vector.body2038
  %i.ky = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2045.2
  %i.kz = getelementptr i8, ptr %i.ky, i64 4
  store ptr %i.kz, ptr %0, align 8, !tbaa !49, !alias.scope !115, !noalias !117
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790

.lr.ph.i.i786:                                    ; preds = %vector.memcheck2035, %.lr.ph.i.i786
  %i.la = phi ptr [ %i.ll, %.lr.ph.i.i786 ], [ %.promoted1112.i785, %vector.memcheck2035 ] ; 5 uses
  %.05.i.i787 = phi i32 [ %i.lk, %.lr.ph.i.i786 ], [ 1024, %vector.memcheck2035 ]
  %.024.i.i788 = phi ptr [ %i.ln, %.lr.ph.i.i786 ], [ %i.h, %vector.memcheck2035 ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1 ; 2 uses
  store ptr %i.lb, ptr %0, align 8, !tbaa !49
  %i.lc = load i8, ptr %i.la, align 1, !tbaa !51
  %i.ld = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 1
  store i8 %i.lc, ptr %.024.i.i788, align 1, !tbaa !51
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 2 ; 2 uses
  store ptr %i.le, ptr %0, align 8, !tbaa !49
  %i.lf = load i8, ptr %i.lb, align 1, !tbaa !51
  %i.lg = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 2
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 3 ; 2 uses
  store ptr %i.lh, ptr %0, align 8, !tbaa !49
  %i.li = load i8, ptr %i.le, align 1, !tbaa !51
  %i.lj = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 3
  store i8 %i.li, ptr %i.lg, align 1, !tbaa !51
  %i.lk = add nsw i32 %.05.i.i787, -4             ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 3 uses
  store ptr %i.ll, ptr %0, align 8, !tbaa !49
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 4
  store i8 %i.lm, ptr %i.lj, align 1, !tbaa !51
  %.not.i.i789.3 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i789.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790, label %.lr.ph.i.i786, !llvm.loop !118

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790: ; preds = %.lr.ph.i.i786, %middle.block2046
  %.lcssa1567 = phi ptr [ %i.ko, %middle.block2046 ], [ %i.ll, %.lr.ph.i.i786 ] ; 2 uses
  %i.lo = add nsw i32 %.013.i784, -1024           ; 2 uses
  %i.lp = icmp sgt i32 %.013.i784, 2047
  br i1 %i.lp, label %vector.memcheck2035, label %._crit_edge.i776, !llvm.loop !95

._crit_edge.i776:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790, %bb.af
  %.promoted.i777 = phi ptr [ %.promoted10.i775, %bb.af ], [ %.lcssa1567, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 8 uses
  %.0.lcssa.i778 = phi i32 [ %i.km, %bb.af ], [ %i.lo, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 7 uses
  %i.lq = icmp sgt i32 %.0.lcssa.i778, 0
  br i1 %i.lq, label %.lr.ph.i5.i779.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791

.lr.ph.i5.i779.preheader:                         ; preds = %._crit_edge.i776
  %i.lr = zext nneg i32 %.0.lcssa.i778 to i64     ; 2 uses
  %min.iters.check2005 = icmp ult i32 %.0.lcssa.i778, 12
  br i1 %min.iters.check2005, label %.lr.ph.i5.i779.preheader2113, label %vector.memcheck1987

vector.memcheck1987:                              ; preds = %.lr.ph.i5.i779.preheader
  %i.ls = add nsw i32 %.0.lcssa.i778, -1
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %scevgep1990 = getelementptr i8, ptr %scevgep1989, i64 %i.lt ; 2 uses
  %scevgep1991 = getelementptr i8, ptr %.promoted.i777, i64 1
  %scevgep1992 = getelementptr i8, ptr %scevgep1991, i64 %i.lt ; 2 uses
  %bound01993 = icmp ult ptr %0, %scevgep1990
  %found.conflict1995 = and i1 %bound01993, %bound11994
  %bound01996 = icmp ult ptr %0, %scevgep1992
  %bound11997 = icmp ult ptr %.promoted.i777, %scevgep1988
  %found.conflict1998 = and i1 %bound01996, %bound11997
  %conflict.rdx1999 = or i1 %found.conflict1995, %found.conflict1998
  %bound02000 = icmp ult ptr %i.h, %scevgep1992
  %bound12001 = icmp ult ptr %.promoted.i777, %scevgep1990
  %found.conflict2002 = and i1 %bound02000, %bound12001
  %conflict.rdx2003 = or i1 %conflict.rdx1999, %found.conflict2002
  br i1 %conflict.rdx2003, label %.lr.ph.i5.i779.preheader2113, label %vector.ph2006

vector.ph2006:                                    ; preds = %vector.memcheck1987
  %n.vec2008 = and i64 %i.lr, 2147483644          ; 5 uses
  %i.lu = getelementptr i8, ptr %.promoted.i777, i64 %n.vec2008
  %i.lv = trunc nuw nsw i64 %n.vec2008 to i32
  %i.lw = sub nsw i32 %.0.lcssa.i778, %i.lv
  %i.lx = getelementptr i8, ptr %i.h, i64 %n.vec2008
  br label %vector.body2009

vector.body2009:                                  ; preds = %vector.body2009, %vector.ph2006
  %index2010 = phi i64 [ 0, %vector.ph2006 ], [ %index.next2016, %vector.body2009 ] ; 4 uses
  %next.gep2011 = getelementptr i8, ptr %.promoted.i777, i64 %index2010 ; 2 uses
  %next.gep2013 = getelementptr i8, ptr %i.h, i64 %index2010 ; 2 uses
  %i.ly = getelementptr i8, ptr %next.gep2011, i64 2
  %wide.load2014 = load <2 x i8>, ptr %next.gep2011, align 1, !tbaa !51, !alias.scope !119
  %wide.load2015 = load <2 x i8>, ptr %i.ly, align 1, !tbaa !51, !alias.scope !119
  %i.lz = getelementptr i8, ptr %next.gep2013, i64 2
  store <2 x i8> %wide.load2014, ptr %next.gep2013, align 4, !tbaa !51, !alias.scope !122, !noalias !119
  store <2 x i8> %wide.load2015, ptr %i.lz, align 2, !tbaa !51, !alias.scope !122, !noalias !119
  %index.next2016 = add nuw i64 %index2010, 4     ; 2 uses
  %i.ma = icmp eq i64 %index.next2016, %n.vec2008
  br i1 %i.ma, label %middle.block2017, label %vector.body2009, !llvm.loop !124

middle.block2017:                                 ; preds = %vector.body2009
  %i.mb = getelementptr i8, ptr %.promoted.i777, i64 %index2010
  %i.mc = getelementptr i8, ptr %i.mb, i64 4
  store ptr %i.mc, ptr %0, align 8, !tbaa !49, !alias.scope !125, !noalias !127
  %cmp.n2018 = icmp eq i64 %n.vec2008, %i.lr
  br i1 %cmp.n2018, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779.preheader2113

.lr.ph.i5.i779.preheader2113:                     ; preds = %vector.memcheck1987, %.lr.ph.i5.i779.preheader, %middle.block2017
  %.ph2114 = phi ptr [ %.promoted.i777, %vector.memcheck1987 ], [ %.promoted.i777, %.lr.ph.i5.i779.preheader ], [ %i.lu, %middle.block2017 ] ; 2 uses
  %.05.i6.i780.ph = phi i32 [ %.0.lcssa.i778, %vector.memcheck1987 ], [ %.0.lcssa.i778, %.lr.ph.i5.i779.preheader ], [ %i.lw, %middle.block2017 ] ; 4 uses
  %.024.i7.i781.ph = phi ptr [ %i.h, %vector.memcheck1987 ], [ %i.h, %.lr.ph.i5.i779.preheader ], [ %i.lx, %middle.block2017 ] ; 2 uses
  %i.md = add nsw i32 %.05.i6.i780.ph, -1
  %xtraiter2229 = and i32 %.05.i6.i780.ph, 3      ; 2 uses
  %lcmp.mod2230.not.a = icmp eq i32 %xtraiter2229, 0
  br i1 %lcmp.mod2230.not.a, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol

.lr.ph.i5.i779.prol:                              ; preds = %.lr.ph.i5.i779.preheader2113, %.lr.ph.i5.i779.prol
  %i.me = phi ptr [ %i.mg, %.lr.ph.i5.i779.prol ], [ %.ph2114, %.lr.ph.i5.i779.preheader2113 ] ; 2 uses
  %.05.i6.i780.prol = phi i32 [ %i.mf, %.lr.ph.i5.i779.prol ], [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2113 ]
  %.024.i7.i781.prol = phi ptr [ %i.mi, %.lr.ph.i5.i779.prol ], [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2113 ] ; 2 uses
  %prol.iter2231 = phi i32 [ %prol.iter2231.next, %.lr.ph.i5.i779.prol ], [ 0, %.lr.ph.i5.i779.preheader2113 ]
  %i.mf = add nsw i32 %.05.i6.i780.prol, -1       ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 1 ; 3 uses
  store ptr %i.mg, ptr %0, align 8, !tbaa !49
  %i.mh = load i8, ptr %i.me, align 1, !tbaa !51
  %i.mi = getelementptr inbounds nuw i8, ptr %.024.i7.i781.prol, i64 1 ; 2 uses
  store i8 %i.mh, ptr %.024.i7.i781.prol, align 1, !tbaa !51
  %prol.iter2231.next = add i32 %prol.iter2231, 1 ; 2 uses
  %prol.iter2231.cmp.not = icmp eq i32 %prol.iter2231.next, %xtraiter2229
  br i1 %prol.iter2231.cmp.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol, !llvm.loop !128

.lr.ph.i5.i779.prol.loopexit:                     ; preds = %.lr.ph.i5.i779.prol, %.lr.ph.i5.i779.preheader2113
  %.unr2232 = phi ptr [ %.ph2114, %.lr.ph.i5.i779.preheader2113 ], [ %i.mg, %.lr.ph.i5.i779.prol ]
  %.05.i6.i780.unr = phi i32 [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2113 ], [ %i.mf, %.lr.ph.i5.i779.prol ]
  %.024.i7.i781.unr = phi ptr [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2113 ], [ %i.mi, %.lr.ph.i5.i779.prol ]
  %i.mj = icmp ult i32 %i.md, 3
  br i1 %i.mj, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779

.lr.ph.i5.i779:                                   ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779
  %i.mk = phi ptr [ %i.mv, %.lr.ph.i5.i779 ], [ %.unr2232, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %.05.i6.i780 = phi i32 [ %i.mu, %.lr.ph.i5.i779 ], [ %.05.i6.i780.unr, %.lr.ph.i5.i779.prol.loopexit ]
  %.024.i7.i781 = phi ptr [ %i.mx, %.lr.ph.i5.i779 ], [ %.024.i7.i781.unr, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1 ; 2 uses
  store ptr %i.ml, ptr %0, align 8, !tbaa !49
  %i.mm = load i8, ptr %i.mk, align 1, !tbaa !51
  %i.mn = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 1
  store i8 %i.mm, ptr %.024.i7.i781, align 1, !tbaa !51
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 2 ; 2 uses
  store ptr %i.mo, ptr %0, align 8, !tbaa !49
  %i.mp = load i8, ptr %i.ml, align 1, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 2
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !51
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 3 ; 2 uses
  store ptr %i.mr, ptr %0, align 8, !tbaa !49
  %i.ms = load i8, ptr %i.mo, align 1, !tbaa !51
  %i.mt = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 3
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !51
  %i.mu = add nsw i32 %.05.i6.i780, -4            ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mk, i64 4 ; 2 uses
  store ptr %i.mv, ptr %0, align 8, !tbaa !49
  %i.mw = load i8, ptr %i.mr, align 1, !tbaa !51
  %i.mx = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 4
  store i8 %i.mw, ptr %i.mt, align 1, !tbaa !51
  %.not.i8.i782.3 = icmp eq i32 %i.mu, 0
  br i1 %.not.i8.i782.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779, !llvm.loop !129

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791: ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779, %middle.block2017, %._crit_edge.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %.loopexit1031

.loopexit1031:                                    ; preds = %.lr.ph1239, %.preheader1030, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791
  %indvars.iv.next1404 = add nsw i64 %indvars.iv1403, 1 ; 2 uses
  %lftr.wideiv1406 = trunc i64 %indvars.iv.next1404 to i32
  %exitcond1407.not = icmp eq i32 %i.gb, %lftr.wideiv1406
  br i1 %exitcond1407.not, label %.loopexit1022, label %bb.ae, !llvm.loop !130

bb.ag:                                            ; preds = %.lr.ph1236, %.loopexit1035
  %indvars.iv1397 = phi i64 [ %i.fk, %.lr.ph1236 ], [ %indvars.iv.next1398, %.loopexit1035 ] ; 3 uses
  %i.my = sub nsw i64 %indvars.iv1397, %i.fl
  %i.mz = mul nsw i64 %13, %i.my
  %i.na = getelementptr inbounds i8, ptr %i.fd, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !49 ; 2 uses
  %i.nc = sub nsw i64 %indvars.iv1397, %i.fm
  %i.nd = mul nsw i64 %i.fj, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.fi, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3  ; 4 uses
  %.not756 = icmp eq ptr %i.nb, null
  br i1 %.not756, label %bb.ah, label %.preheader1034

.preheader1034:                                   ; preds = %bb.ag
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph1233, label %.loopexit1035

.lr.ph1233:                                       ; preds = %.preheader1034, %.lr.ph1233
  %.07001232 = phi ptr [ %i.nr, %.lr.ph1233 ], [ %i.nb, %.preheader1034 ] ; 2 uses
  %.07021231 = phi i32 [ %i.ns, %.lr.ph1233 ], [ 0, %.preheader1034 ]
  %.promoted.i792 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 1 ; 2 uses
  store ptr %i.nh, ptr %0, align 8, !tbaa !49
  %i.ni = load i8, ptr %.promoted.i792, align 1, !tbaa !51
  %i.nj = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 2 ; 2 uses
  store ptr %i.nj, ptr %0, align 8, !tbaa !49
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !51
  %i.nl = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 3 ; 2 uses
  store ptr %i.nl, ptr %0, align 8, !tbaa !49
  %i.nm = load i8, ptr %i.nj, align 1, !tbaa !51
  %i.nn = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 4
  store ptr %i.nn, ptr %0, align 8, !tbaa !49
  %i.no = load i8, ptr %i.nl, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i793 = zext i8 %i.no to i32
  %.sroa.6.0.insert.shift.i794 = shl nuw i32 %.sroa.6.0.insert.ext.i793, 24
  %.sroa.5.0.insert.ext.i795 = zext i8 %i.nm to i32
  %.sroa.5.0.insert.shift.i796 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i795, 16
  %.sroa.4.0.insert.ext.i798 = zext i8 %i.nk to i32
  %.sroa.4.0.insert.shift.i799 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i798, 8
  %.sroa.0.0.insert.ext.i801 = zext i8 %i.ni to i32
  %.sroa.5.0.insert.insert.i797 = or disjoint i32 %.sroa.4.0.insert.shift.i799, %.sroa.0.0.insert.ext.i801
  %.sroa.4.0.insert.insert.i800 = or disjoint i32 %.sroa.5.0.insert.insert.i797, %.sroa.5.0.insert.shift.i796
  %.sroa.0.0.insert.insert.i802 = or disjoint i32 %.sroa.4.0.insert.insert.i800, %.sroa.6.0.insert.shift.i794
  %i.np = bitcast i32 %.sroa.0.0.insert.insert.i802 to float
  %i.nq = tail call noundef i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_511floatToUintEf(float noundef %i.np)
  store i32 %i.nq, ptr %.07001232, align 4, !tbaa !3
  %i.nr = getelementptr inbounds i8, ptr %.07001232, i64 %12
  %i.ns = add nuw nsw i32 %.07021231, 1           ; 2 uses
  %exitcond1396.not = icmp eq i32 %i.ns, %i.nf
  br i1 %exitcond1396.not, label %.loopexit1035, label %.lr.ph1233, !llvm.loop !131

bb.ah:                                            ; preds = %bb.ag
  %i.nt = shl i32 %i.nf, 2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %.promoted10.i803 = load ptr, ptr %0, align 8   ; 5 uses
  %i.nu = icmp sgt i32 %i.nf, 255
  br i1 %i.nu, label %vector.memcheck1962, label %._crit_edge.i804

vector.memcheck1962:                              ; preds = %bb.ah
  %scevgep1975 = getelementptr i8, ptr %.promoted10.i803, i64 1024
  %28 = add i32 %i.nt, 1023
  %smin1976 = call i32 @llvm.smin.i32(i32 %i.nt, i32 2047)
  %29 = sub i32 %28, %smin1976
  %30 = and i32 %29, -1024
  %31 = zext i32 %30 to i64
  %scevgep1964 = getelementptr i8, ptr %scevgep1975, i64 %31 ; 2 uses
  %bound01968 = icmp ult ptr %0, %scevgep1964
  %bound11969 = icmp ult ptr %.promoted10.i803, %scevgep1928
  %found.conflict1970 = and i1 %bound01968, %bound11969
  %conflict.rdx1971 = or i1 %found.conflict1967, %found.conflict1970
  %bound01972 = icmp ult ptr %i.g, %scevgep1964
  %bound11973 = icmp ult ptr %.promoted10.i803, %scevgep1963
  %found.conflict1974 = and i1 %bound01972, %bound11973
  %conflict.rdx1975 = or i1 %conflict.rdx1971, %found.conflict1974
  br label %vector.memcheck1973

vector.memcheck1973:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818, %vector.memcheck1962
  %.013.i812 = phi i32 [ %i.ov, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %i.nt, %vector.memcheck1962 ] ; 2 uses
  %.promoted1112.i813 = phi ptr [ %.lcssa1569, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %.promoted10.i803, %vector.memcheck1962 ] ; 7 uses
  br i1 %conflict.rdx1975, label %.lr.ph.i.i814, label %vector.ph1977

vector.ph1977:                                    ; preds = %vector.memcheck1973
  %i.nv = getelementptr i8, ptr %.promoted1112.i813, i64 1024
  br label %vector.body1978

vector.body1978:                                  ; preds = %vector.body1978, %vector.ph1977
  %index1979 = phi i64 [ 0, %vector.ph1977 ], [ %index.next1985.3, %vector.body1978 ] ; 6 uses
  %next.gep1980 = getelementptr i8, ptr %.promoted1112.i813, i64 %index1979 ; 2 uses
  %next.gep1982 = getelementptr i8, ptr %i.g, i64 %index1979 ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep1980, i64 2
  %wide.load1983 = load <2 x i8>, ptr %next.gep1980, align 1, !tbaa !51, !alias.scope !132
  %wide.load1984 = load <2 x i8>, ptr %i.nw, align 1, !tbaa !51, !alias.scope !132
  %i.nx = getelementptr i8, ptr %next.gep1982, i64 2
  store <2 x i8> %wide.load1983, ptr %next.gep1982, align 16, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1984, ptr %i.nx, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1985 = or disjoint i64 %index1979, 4 ; 2 uses
  %next.gep1980.1 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1985 ; 2 uses
  %next.gep1982.1 = getelementptr i8, ptr %i.g, i64 %index.next1985 ; 2 uses
  %i.ny = getelementptr i8, ptr %next.gep1980.1, i64 2
  %wide.load1983.1 = load <2 x i8>, ptr %next.gep1980.1, align 1, !tbaa !51, !alias.scope !132
  %wide.load1984.1 = load <2 x i8>, ptr %i.ny, align 1, !tbaa !51, !alias.scope !132
  %i.nz = getelementptr i8, ptr %next.gep1982.1, i64 2
  store <2 x i8> %wide.load1983.1, ptr %next.gep1982.1, align 4, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1984.1, ptr %i.nz, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1985.1 = or disjoint i64 %index1979, 8 ; 2 uses
  %next.gep1980.2 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1985.1 ; 2 uses
  %next.gep1982.2 = getelementptr i8, ptr %i.g, i64 %index.next1985.1 ; 2 uses
  %i.oa = getelementptr i8, ptr %next.gep1980.2, i64 2
  %wide.load1983.2 = load <2 x i8>, ptr %next.gep1980.2, align 1, !tbaa !51, !alias.scope !132
  %wide.load1984.2 = load <2 x i8>, ptr %i.oa, align 1, !tbaa !51, !alias.scope !132
  %i.ob = getelementptr i8, ptr %next.gep1982.2, i64 2
  store <2 x i8> %wide.load1983.2, ptr %next.gep1982.2, align 8, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1984.2, ptr %i.ob, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1985.2 = or disjoint i64 %index1979, 12 ; 3 uses
  %next.gep1980.3 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1985.2 ; 2 uses
  %next.gep1982.3 = getelementptr i8, ptr %i.g, i64 %index.next1985.2 ; 2 uses
  %i.oc = getelementptr i8, ptr %next.gep1980.3, i64 2
  %wide.load1983.3 = load <2 x i8>, ptr %next.gep1980.3, align 1, !tbaa !51, !alias.scope !132
  %wide.load1984.3 = load <2 x i8>, ptr %i.oc, align 1, !tbaa !51, !alias.scope !132
  %i.od = getelementptr i8, ptr %next.gep1982.3, i64 2
  store <2 x i8> %wide.load1983.3, ptr %next.gep1982.3, align 4, !tbaa !51, !alias.scope !135, !noalias !132
  store <2 x i8> %wide.load1984.3, ptr %i.od, align 2, !tbaa !51, !alias.scope !135, !noalias !132
  %index.next1985.3 = add nuw nsw i64 %index1979, 16 ; 2 uses
  %i.oe = icmp eq i64 %index.next1985.3, 1024
  br i1 %i.oe, label %middle.block1986, label %vector.body1978, !llvm.loop !137

middle.block1986:                                 ; preds = %vector.body1978
  %i.of = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next1985.2
  %i.og = getelementptr i8, ptr %i.of, i64 4
  store ptr %i.og, ptr %0, align 8, !tbaa !49, !alias.scope !138, !noalias !140
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818

.lr.ph.i.i814:                                    ; preds = %vector.memcheck1973, %.lr.ph.i.i814
  %i.oh = phi ptr [ %i.os, %.lr.ph.i.i814 ], [ %.promoted1112.i813, %vector.memcheck1973 ] ; 5 uses
  %.05.i.i815 = phi i32 [ %i.or, %.lr.ph.i.i814 ], [ 1024, %vector.memcheck1973 ]
  %.024.i.i816 = phi ptr [ %i.ou, %.lr.ph.i.i814 ], [ %i.g, %vector.memcheck1973 ] ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1 ; 2 uses
  store ptr %i.oi, ptr %0, align 8, !tbaa !49
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !51
  %i.ok = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 1
  store i8 %i.oj, ptr %.024.i.i816, align 1, !tbaa !51
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 2 ; 2 uses
  store ptr %i.ol, ptr %0, align 8, !tbaa !49
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !51
  %i.on = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 2
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !51
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 3 ; 2 uses
  store ptr %i.oo, ptr %0, align 8, !tbaa !49
  %i.op = load i8, ptr %i.ol, align 1, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 3
  store i8 %i.op, ptr %i.on, align 1, !tbaa !51
  %i.or = add nsw i32 %.05.i.i815, -4             ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 3 uses
  store ptr %i.os, ptr %0, align 8, !tbaa !49
  %i.ot = load i8, ptr %i.oo, align 1, !tbaa !51
  %i.ou = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 4
  store i8 %i.ot, ptr %i.oq, align 1, !tbaa !51
  %.not.i.i817.3 = icmp eq i32 %i.or, 0
  br i1 %.not.i.i817.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818, label %.lr.ph.i.i814, !llvm.loop !141

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818: ; preds = %.lr.ph.i.i814, %middle.block1986
  %.lcssa1569 = phi ptr [ %i.nv, %middle.block1986 ], [ %i.os, %.lr.ph.i.i814 ] ; 2 uses
  %i.ov = add nsw i32 %.013.i812, -1024           ; 2 uses
  %i.ow = icmp sgt i32 %.013.i812, 2047
  br i1 %i.ow, label %vector.memcheck1973, label %._crit_edge.i804, !llvm.loop !95

._crit_edge.i804:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818, %bb.ah
  %.promoted.i805 = phi ptr [ %.promoted10.i803, %bb.ah ], [ %.lcssa1569, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 8 uses
  %.0.lcssa.i806 = phi i32 [ %i.nt, %bb.ah ], [ %i.ov, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 7 uses
  %i.ox = icmp sgt i32 %.0.lcssa.i806, 0
  br i1 %i.ox, label %.lr.ph.i5.i807.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819

.lr.ph.i5.i807.preheader:                         ; preds = %._crit_edge.i804
  %i.oy = zext nneg i32 %.0.lcssa.i806 to i64     ; 2 uses
  %min.iters.check1945 = icmp ult i32 %.0.lcssa.i806, 12
  br i1 %min.iters.check1945, label %.lr.ph.i5.i807.preheader2118, label %vector.memcheck1927

vector.memcheck1927:                              ; preds = %.lr.ph.i5.i807.preheader
  %i.oz = add nsw i32 %.0.lcssa.i806, -1
  %i.pa = zext i32 %i.oz to i64                   ; 2 uses
  %scevgep1930 = getelementptr i8, ptr %scevgep1929, i64 %i.pa ; 2 uses
  %scevgep1931 = getelementptr i8, ptr %.promoted.i805, i64 1
  %scevgep1932 = getelementptr i8, ptr %scevgep1931, i64 %i.pa ; 2 uses
  %bound01933 = icmp ult ptr %0, %scevgep1930
  %found.conflict1935 = and i1 %bound01933, %bound11934
  %bound01936 = icmp ult ptr %0, %scevgep1932
  %bound11937 = icmp ult ptr %.promoted.i805, %scevgep1928
  %found.conflict1938 = and i1 %bound01936, %bound11937
  %conflict.rdx1939 = or i1 %found.conflict1935, %found.conflict1938
  %bound01940 = icmp ult ptr %i.g, %scevgep1932
  %bound11941 = icmp ult ptr %.promoted.i805, %scevgep1930
  %found.conflict1942 = and i1 %bound01940, %bound11941
  %conflict.rdx1943 = or i1 %conflict.rdx1939, %found.conflict1942
  br i1 %conflict.rdx1943, label %.lr.ph.i5.i807.preheader2118, label %vector.ph1946

vector.ph1946:                                    ; preds = %vector.memcheck1927
  %n.vec1948 = and i64 %i.oy, 2147483644          ; 5 uses
  %i.pb = getelementptr i8, ptr %.promoted.i805, i64 %n.vec1948
  %i.pc = trunc nuw nsw i64 %n.vec1948 to i32
  %i.pd = sub nsw i32 %.0.lcssa.i806, %i.pc
  %i.pe = getelementptr i8, ptr %i.g, i64 %n.vec1948
  br label %vector.body1949

vector.body1949:                                  ; preds = %vector.body1949, %vector.ph1946
  %index1950 = phi i64 [ 0, %vector.ph1946 ], [ %index.next1956, %vector.body1949 ] ; 4 uses
  %next.gep1951 = getelementptr i8, ptr %.promoted.i805, i64 %index1950 ; 2 uses
  %next.gep1953 = getelementptr i8, ptr %i.g, i64 %index1950 ; 2 uses
  %i.pf = getelementptr i8, ptr %next.gep1951, i64 2
  %wide.load1954 = load <2 x i8>, ptr %next.gep1951, align 1, !tbaa !51, !alias.scope !142
  %wide.load1955 = load <2 x i8>, ptr %i.pf, align 1, !tbaa !51, !alias.scope !142
  %i.pg = getelementptr i8, ptr %next.gep1953, i64 2
  store <2 x i8> %wide.load1954, ptr %next.gep1953, align 4, !tbaa !51, !alias.scope !145, !noalias !142
  store <2 x i8> %wide.load1955, ptr %i.pg, align 2, !tbaa !51, !alias.scope !145, !noalias !142
  %index.next1956 = add nuw i64 %index1950, 4     ; 2 uses
  %i.ph = icmp eq i64 %index.next1956, %n.vec1948
  br i1 %i.ph, label %middle.block1957, label %vector.body1949, !llvm.loop !147

middle.block1957:                                 ; preds = %vector.body1949
  %i.pi = getelementptr i8, ptr %.promoted.i805, i64 %index1950
  %i.pj = getelementptr i8, ptr %i.pi, i64 4
  store ptr %i.pj, ptr %0, align 8, !tbaa !49, !alias.scope !148, !noalias !150
  %cmp.n1958 = icmp eq i64 %n.vec1948, %i.oy
  br i1 %cmp.n1958, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807.preheader2118

.lr.ph.i5.i807.preheader2118:                     ; preds = %vector.memcheck1927, %.lr.ph.i5.i807.preheader, %middle.block1957
  %.ph2119 = phi ptr [ %.promoted.i805, %vector.memcheck1927 ], [ %.promoted.i805, %.lr.ph.i5.i807.preheader ], [ %i.pb, %middle.block1957 ] ; 2 uses
  %.05.i6.i808.ph = phi i32 [ %.0.lcssa.i806, %vector.memcheck1927 ], [ %.0.lcssa.i806, %.lr.ph.i5.i807.preheader ], [ %i.pd, %middle.block1957 ] ; 4 uses
  %.024.i7.i809.ph = phi ptr [ %i.g, %vector.memcheck1927 ], [ %i.g, %.lr.ph.i5.i807.preheader ], [ %i.pe, %middle.block1957 ] ; 2 uses
  %i.pk = add nsw i32 %.05.i6.i808.ph, -1
  %xtraiter2225 = and i32 %.05.i6.i808.ph, 3      ; 2 uses
  %lcmp.mod2226.not = icmp eq i32 %xtraiter2225, 0
  br i1 %lcmp.mod2226.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol

.lr.ph.i5.i807.prol:                              ; preds = %.lr.ph.i5.i807.preheader2118, %.lr.ph.i5.i807.prol
  %i.pl = phi ptr [ %i.pn, %.lr.ph.i5.i807.prol ], [ %.ph2119, %.lr.ph.i5.i807.preheader2118 ] ; 2 uses
  %.05.i6.i808.prol = phi i32 [ %i.pm, %.lr.ph.i5.i807.prol ], [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2118 ]
  %.024.i7.i809.prol = phi ptr [ %i.pp, %.lr.ph.i5.i807.prol ], [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2118 ] ; 2 uses
  %prol.iter2227 = phi i32 [ %prol.iter2227.next, %.lr.ph.i5.i807.prol ], [ 0, %.lr.ph.i5.i807.preheader2118 ]
  %i.pm = add nsw i32 %.05.i6.i808.prol, -1       ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 1 ; 3 uses
  store ptr %i.pn, ptr %0, align 8, !tbaa !49
  %i.po = load i8, ptr %i.pl, align 1, !tbaa !51
  %i.pp = getelementptr inbounds nuw i8, ptr %.024.i7.i809.prol, i64 1 ; 2 uses
  store i8 %i.po, ptr %.024.i7.i809.prol, align 1, !tbaa !51
  %prol.iter2227.next = add i32 %prol.iter2227, 1 ; 2 uses
  %prol.iter2227.cmp.not = icmp eq i32 %prol.iter2227.next, %xtraiter2225
  br i1 %prol.iter2227.cmp.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol, !llvm.loop !151

.lr.ph.i5.i807.prol.loopexit:                     ; preds = %.lr.ph.i5.i807.prol, %.lr.ph.i5.i807.preheader2118
  %.unr2228 = phi ptr [ %.ph2119, %.lr.ph.i5.i807.preheader2118 ], [ %i.pn, %.lr.ph.i5.i807.prol ]
  %.05.i6.i808.unr = phi i32 [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2118 ], [ %i.pm, %.lr.ph.i5.i807.prol ]
  %.024.i7.i809.unr = phi ptr [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2118 ], [ %i.pp, %.lr.ph.i5.i807.prol ]
  %i.pq = icmp ult i32 %i.pk, 3
  br i1 %i.pq, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807

.lr.ph.i5.i807:                                   ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807
  %i.pr = phi ptr [ %i.qc, %.lr.ph.i5.i807 ], [ %.unr2228, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %.05.i6.i808 = phi i32 [ %i.qb, %.lr.ph.i5.i807 ], [ %.05.i6.i808.unr, %.lr.ph.i5.i807.prol.loopexit ]
  %.024.i7.i809 = phi ptr [ %i.qe, %.lr.ph.i5.i807 ], [ %.024.i7.i809.unr, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 2 uses
  store ptr %i.ps, ptr %0, align 8, !tbaa !49
  %i.pt = load i8, ptr %i.pr, align 1, !tbaa !51
  %i.pu = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 1
  store i8 %i.pt, ptr %.024.i7.i809, align 1, !tbaa !51
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 2 ; 2 uses
  store ptr %i.pv, ptr %0, align 8, !tbaa !49
  %i.pw = load i8, ptr %i.ps, align 1, !tbaa !51
  %i.px = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 2
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !51
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 3 ; 2 uses
  store ptr %i.py, ptr %0, align 8, !tbaa !49
  %i.pz = load i8, ptr %i.pv, align 1, !tbaa !51
  %i.qa = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 3
  store i8 %i.pz, ptr %i.px, align 1, !tbaa !51
  %i.qb = add nsw i32 %.05.i6.i808, -4            ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pr, i64 4 ; 2 uses
  store ptr %i.qc, ptr %0, align 8, !tbaa !49
  %i.qd = load i8, ptr %i.py, align 1, !tbaa !51
  %i.qe = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 4
  store i8 %i.qd, ptr %i.qa, align 1, !tbaa !51
  %.not.i8.i810.3 = icmp eq i32 %i.qb, 0
  br i1 %.not.i8.i810.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807, !llvm.loop !152

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819: ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807, %middle.block1957, %._crit_edge.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.loopexit1035

.loopexit1035:                                    ; preds = %.lr.ph1233, %.preheader1034, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819
  %indvars.iv.next1398 = add nsw i64 %indvars.iv1397, 1 ; 2 uses
  %lftr.wideiv1400 = trunc i64 %indvars.iv.next1398 to i32
  %exitcond1401.not = icmp eq i32 %i.fn, %lftr.wideiv1400
  br i1 %exitcond1401.not, label %.loopexit1022, label %bb.ag, !llvm.loop !153

bb.ai:                                            ; preds = %bb.aa
  %i.qf = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.qf, ptr noundef nonnull @.str.9)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.qf, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.al:                                            ; preds = %bb.z
  switch i32 %19, label %bb.at [
    i32 0, label %.preheader1040
    i32 1, label %.preheader1044
    i32 2, label %.preheader1048
  ]

.preheader1048:                                   ; preds = %bb.al
  %.not7491215 = icmp sgt i32 %6, %7
  br i1 %.not7491215, label %.loopexit1022, label %.lr.ph1217

.lr.ph1217:                                       ; preds = %.preheader1048
  %i.qh = sub nsw i32 %5, %11
  %i.qi = sext i32 %i.qh to i64
  %i.qj = mul nsw i64 %14, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %1, i64 %i.qj
  %i.ql = sub nsw i32 %5, %9
  %i.qm = sext i32 %i.ql to i64
  %sext1004 = shl i64 %4, 32
  %i.qn = ashr exact i64 %sext1004, 32
  %i.qo = mul nsw i64 %i.qn, %i.qm
  %i.qp = getelementptr inbounds i8, ptr %2, i64 %i.qo
  %sext1005 = shl i64 %3, 32
  %i.qq = ashr exact i64 %sext1005, 32
  %i.qr = sext i32 %6 to i64
  %i.qs = sext i32 %10 to i64
  %i.qt = sext i32 %8 to i64
  %i.qu = add i32 %7, 1
  %scevgep1748 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1749 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %scevgep1783 = getelementptr inbounds nuw i8, ptr %i.d, i64 1024 ; 2 uses
  %bound01785 = icmp ult ptr %0, %scevgep1783
  %bound11786 = icmp ult ptr %i.d, %scevgep1748
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %bound11754 = icmp ult ptr %i.d, %scevgep1748
  br label %bb.ar

.preheader1044:                                   ; preds = %bb.al
  %.not7511222 = icmp sgt i32 %6, %7
  br i1 %.not7511222, label %.loopexit1022, label %.lr.ph1224

.lr.ph1224:                                       ; preds = %.preheader1044
  %i.qv = sub nsw i32 %5, %11
  %i.qw = sext i32 %i.qv to i64
  %i.qx = mul nsw i64 %14, %i.qw
  %i.qy = getelementptr inbounds i8, ptr %1, i64 %i.qx
  %i.qz = sub nsw i32 %5, %9
  %i.ra = sext i32 %i.qz to i64
  %sext1006 = shl i64 %4, 32
  %i.rb = ashr exact i64 %sext1006, 32
  %i.rc = mul nsw i64 %i.rb, %i.ra
  %i.rd = getelementptr inbounds i8, ptr %2, i64 %i.rc
  %sext1007 = shl i64 %3, 32
  %i.re = ashr exact i64 %sext1007, 32
  %i.rf = sext i32 %6 to i64
  %i.rg = sext i32 %10 to i64
  %i.rh = sext i32 %8 to i64
  %i.ri = add i32 %7, 1
  %scevgep1808 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1809 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %scevgep1843 = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 2 uses
  %bound01845 = icmp ult ptr %0, %scevgep1843
  %bound11846 = icmp ult ptr %i.e, %scevgep1808
  %found.conflict1847 = and i1 %bound01845, %bound11846
  %bound11814 = icmp ult ptr %i.e, %scevgep1808
  br label %bb.ao

.preheader1040:                                   ; preds = %bb.al
  %.not7531228 = icmp sgt i32 %6, %7
  br i1 %.not7531228, label %.loopexit1022, label %.lr.ph1230

.lr.ph1230:                                       ; preds = %.preheader1040
  %i.rj = sub nsw i32 %5, %11
  %i.rk = sext i32 %i.rj to i64
  %i.rl = mul nsw i64 %14, %i.rk
  %i.rm = getelementptr inbounds i8, ptr %1, i64 %i.rl
  %i.rn = sub nsw i32 %5, %9
  %i.ro = sext i32 %i.rn to i64
  %sext1008 = shl i64 %4, 32
  %i.rp = ashr exact i64 %sext1008, 32
  %i.rq = mul nsw i64 %i.rp, %i.ro
  %i.rr = getelementptr inbounds i8, ptr %2, i64 %i.rq
  %sext1009 = shl i64 %3, 32
  %i.rs = ashr exact i64 %sext1009, 32
  %i.rt = sext i32 %6 to i64
  %i.ru = sext i32 %10 to i64
  %i.rv = sext i32 %8 to i64
  %i.rw = add i32 %7, 1
  %scevgep1868 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1869 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %scevgep1903 = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  %bound01905 = icmp ult ptr %0, %scevgep1903
  %bound11906 = icmp ult ptr %i.f, %scevgep1868
  %found.conflict1907 = and i1 %bound01905, %bound11906
  %bound11874 = icmp ult ptr %i.f, %scevgep1868
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1230, %.loopexit1039
  %indvars.iv1391 = phi i64 [ %i.rt, %.lr.ph1230 ], [ %indvars.iv.next1392, %.loopexit1039 ] ; 3 uses
  %i.rx = sub nsw i64 %indvars.iv1391, %i.ru
  %i.ry = mul nsw i64 %13, %i.rx
  %i.rz = getelementptr inbounds i8, ptr %i.rm, i64 %i.ry
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !49 ; 2 uses
  %i.sb = sub nsw i64 %indvars.iv1391, %i.rv
  %i.sc = mul nsw i64 %i.rs, %i.sb
  %i.sd = getelementptr inbounds i8, ptr %i.rr, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3  ; 4 uses
  %.not754 = icmp eq ptr %i.sa, null
  br i1 %.not754, label %bb.an, label %.preheader1038

.preheader1038:                                   ; preds = %bb.am
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %.lr.ph1227, label %.loopexit1039

.lr.ph1227:                                       ; preds = %.preheader1038, %.lr.ph1227
  %.07011226 = phi i32 [ %i.sq, %.lr.ph1227 ], [ 0, %.preheader1038 ]
  %.07031225 = phi ptr [ %i.sp, %.lr.ph1227 ], [ %i.sa, %.preheader1038 ] ; 2 uses
  %.promoted.i820 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 1 ; 2 uses
  store ptr %i.sg, ptr %0, align 8, !tbaa !49
  %i.sh = load i8, ptr %.promoted.i820, align 1, !tbaa !51
  %i.si = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 2 ; 2 uses
  store ptr %i.si, ptr %0, align 8, !tbaa !49
  %i.sj = load i8, ptr %i.sg, align 1, !tbaa !51
  %i.sk = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 3 ; 2 uses
  store ptr %i.sk, ptr %0, align 8, !tbaa !49
  %i.sl = load i8, ptr %i.si, align 1, !tbaa !51
  %i.sm = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 4
  store ptr %i.sm, ptr %0, align 8, !tbaa !49
  %i.sn = load i8, ptr %i.sk, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i821 = zext i8 %i.sn to i32
  %.sroa.6.0.insert.shift.i822 = shl nuw i32 %.sroa.6.0.insert.ext.i821, 24
  %.sroa.5.0.insert.ext.i823 = zext i8 %i.sl to i32
  %.sroa.5.0.insert.shift.i824 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i823, 16
  %.sroa.4.0.insert.ext.i826 = zext i8 %i.sj to i32
  %.sroa.4.0.insert.shift.i827 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i826, 8
  %.sroa.0.0.insert.ext.i829 = zext i8 %i.sh to i32
  %.sroa.5.0.insert.insert.i825 = or disjoint i32 %.sroa.4.0.insert.shift.i827, %.sroa.0.0.insert.ext.i829
  %.sroa.4.0.insert.insert.i828 = or disjoint i32 %.sroa.5.0.insert.insert.i825, %.sroa.5.0.insert.shift.i824
  %.sroa.0.0.insert.insert.i830 = or disjoint i32 %.sroa.4.0.insert.insert.i828, %.sroa.6.0.insert.shift.i822
  %i.so = tail call i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_510uintToHalfEj(i32 noundef %.sroa.0.0.insert.insert.i830)
  store i16 %i.so, ptr %.07031225, align 2, !tbaa !43
  %i.sp = getelementptr inbounds i8, ptr %.07031225, i64 %12
  %i.sq = add nuw nsw i32 %.07011226, 1           ; 2 uses
  %exitcond1390.not = icmp eq i32 %i.sq, %i.se
  br i1 %exitcond1390.not, label %.loopexit1039, label %.lr.ph1227, !llvm.loop !154

bb.an:                                            ; preds = %bb.am
  %i.sr = shl i32 %i.se, 2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %.promoted10.i831 = load ptr, ptr %0, align 8   ; 5 uses
  %i.ss = icmp sgt i32 %i.se, 255
  br i1 %i.ss, label %vector.memcheck1902, label %._crit_edge.i832

vector.memcheck1902:                              ; preds = %bb.an
  %scevgep1913 = getelementptr i8, ptr %.promoted10.i831, i64 1024
  %32 = add i32 %i.sr, 1023
  %smin1914 = call i32 @llvm.smin.i32(i32 %i.sr, i32 2047)
  %33 = sub i32 %32, %smin1914
  %34 = and i32 %33, -1024
  %35 = zext i32 %34 to i64
  %scevgep1904 = getelementptr i8, ptr %scevgep1913, i64 %35 ; 2 uses
  %bound01908 = icmp ult ptr %0, %scevgep1904
  %bound11909 = icmp ult ptr %.promoted10.i831, %scevgep1868
  %found.conflict1910 = and i1 %bound01908, %bound11909
  %conflict.rdx1911 = or i1 %found.conflict1907, %found.conflict1910
  %bound01912 = icmp ult ptr %i.f, %scevgep1904
  %bound11913 = icmp ult ptr %.promoted10.i831, %scevgep1903
  %found.conflict1914 = and i1 %bound01912, %bound11913
  %conflict.rdx1915 = or i1 %conflict.rdx1911, %found.conflict1914
  br label %vector.memcheck1911

vector.memcheck1911:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846, %vector.memcheck1902
  %.013.i840 = phi i32 [ %i.tt, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %i.sr, %vector.memcheck1902 ] ; 2 uses
  %.promoted1112.i841 = phi ptr [ %.lcssa1571, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %.promoted10.i831, %vector.memcheck1902 ] ; 7 uses
  br i1 %conflict.rdx1915, label %.lr.ph.i.i842, label %vector.ph1917

vector.ph1917:                                    ; preds = %vector.memcheck1911
  %i.st = getelementptr i8, ptr %.promoted1112.i841, i64 1024
  br label %vector.body1918

vector.body1918:                                  ; preds = %vector.body1918, %vector.ph1917
  %index1919 = phi i64 [ 0, %vector.ph1917 ], [ %index.next1925.3, %vector.body1918 ] ; 6 uses
  %next.gep1920 = getelementptr i8, ptr %.promoted1112.i841, i64 %index1919 ; 2 uses
  %next.gep1922 = getelementptr i8, ptr %i.f, i64 %index1919 ; 2 uses
  %i.su = getelementptr i8, ptr %next.gep1920, i64 2
  %wide.load1923 = load <2 x i8>, ptr %next.gep1920, align 1, !tbaa !51, !alias.scope !155
  %wide.load1924 = load <2 x i8>, ptr %i.su, align 1, !tbaa !51, !alias.scope !155
  %i.sv = getelementptr i8, ptr %next.gep1922, i64 2
  store <2 x i8> %wide.load1923, ptr %next.gep1922, align 16, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1924, ptr %i.sv, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1925 = or disjoint i64 %index1919, 4 ; 2 uses
  %next.gep1920.1 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1925 ; 2 uses
  %next.gep1922.1 = getelementptr i8, ptr %i.f, i64 %index.next1925 ; 2 uses
  %i.sw = getelementptr i8, ptr %next.gep1920.1, i64 2
  %wide.load1923.1 = load <2 x i8>, ptr %next.gep1920.1, align 1, !tbaa !51, !alias.scope !155
  %wide.load1924.1 = load <2 x i8>, ptr %i.sw, align 1, !tbaa !51, !alias.scope !155
  %i.sx = getelementptr i8, ptr %next.gep1922.1, i64 2
  store <2 x i8> %wide.load1923.1, ptr %next.gep1922.1, align 4, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1924.1, ptr %i.sx, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1925.1 = or disjoint i64 %index1919, 8 ; 2 uses
  %next.gep1920.2 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1925.1 ; 2 uses
  %next.gep1922.2 = getelementptr i8, ptr %i.f, i64 %index.next1925.1 ; 2 uses
  %i.sy = getelementptr i8, ptr %next.gep1920.2, i64 2
  %wide.load1923.2 = load <2 x i8>, ptr %next.gep1920.2, align 1, !tbaa !51, !alias.scope !155
  %wide.load1924.2 = load <2 x i8>, ptr %i.sy, align 1, !tbaa !51, !alias.scope !155
  %i.sz = getelementptr i8, ptr %next.gep1922.2, i64 2
  store <2 x i8> %wide.load1923.2, ptr %next.gep1922.2, align 8, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1924.2, ptr %i.sz, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1925.2 = or disjoint i64 %index1919, 12 ; 3 uses
  %next.gep1920.3 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1925.2 ; 2 uses
  %next.gep1922.3 = getelementptr i8, ptr %i.f, i64 %index.next1925.2 ; 2 uses
  %i.ta = getelementptr i8, ptr %next.gep1920.3, i64 2
  %wide.load1923.3 = load <2 x i8>, ptr %next.gep1920.3, align 1, !tbaa !51, !alias.scope !155
  %wide.load1924.3 = load <2 x i8>, ptr %i.ta, align 1, !tbaa !51, !alias.scope !155
  %i.tb = getelementptr i8, ptr %next.gep1922.3, i64 2
  store <2 x i8> %wide.load1923.3, ptr %next.gep1922.3, align 4, !tbaa !51, !alias.scope !158, !noalias !155
  store <2 x i8> %wide.load1924.3, ptr %i.tb, align 2, !tbaa !51, !alias.scope !158, !noalias !155
  %index.next1925.3 = add nuw nsw i64 %index1919, 16 ; 2 uses
  %i.tc = icmp eq i64 %index.next1925.3, 1024
  br i1 %i.tc, label %middle.block1926, label %vector.body1918, !llvm.loop !160

middle.block1926:                                 ; preds = %vector.body1918
  %i.td = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next1925.2
  %i.te = getelementptr i8, ptr %i.td, i64 4
  store ptr %i.te, ptr %0, align 8, !tbaa !49, !alias.scope !161, !noalias !163
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846

.lr.ph.i.i842:                                    ; preds = %vector.memcheck1911, %.lr.ph.i.i842
  %i.tf = phi ptr [ %i.tq, %.lr.ph.i.i842 ], [ %.promoted1112.i841, %vector.memcheck1911 ] ; 5 uses
  %.05.i.i843 = phi i32 [ %i.tp, %.lr.ph.i.i842 ], [ 1024, %vector.memcheck1911 ]
  %.024.i.i844 = phi ptr [ %i.ts, %.lr.ph.i.i842 ], [ %i.f, %vector.memcheck1911 ] ; 5 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 1 ; 2 uses
  store ptr %i.tg, ptr %0, align 8, !tbaa !49
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !51
  %i.ti = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 1
  store i8 %i.th, ptr %.024.i.i844, align 1, !tbaa !51
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tf, i64 2 ; 2 uses
  store ptr %i.tj, ptr %0, align 8, !tbaa !49
  %i.tk = load i8, ptr %i.tg, align 1, !tbaa !51
  %i.tl = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 2
  store i8 %i.tk, ptr %i.ti, align 1, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tf, i64 3 ; 2 uses
  store ptr %i.tm, ptr %0, align 8, !tbaa !49
  %i.tn = load i8, ptr %i.tj, align 1, !tbaa !51
  %i.to = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 3
  store i8 %i.tn, ptr %i.tl, align 1, !tbaa !51
  %i.tp = add nsw i32 %.05.i.i843, -4             ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tf, i64 4 ; 3 uses
  store ptr %i.tq, ptr %0, align 8, !tbaa !49
  %i.tr = load i8, ptr %i.tm, align 1, !tbaa !51
  %i.ts = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 4
  store i8 %i.tr, ptr %i.to, align 1, !tbaa !51
  %.not.i.i845.3 = icmp eq i32 %i.tp, 0
  br i1 %.not.i.i845.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846, label %.lr.ph.i.i842, !llvm.loop !164

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846: ; preds = %.lr.ph.i.i842, %middle.block1926
  %.lcssa1571 = phi ptr [ %i.st, %middle.block1926 ], [ %i.tq, %.lr.ph.i.i842 ] ; 2 uses
  %i.tt = add nsw i32 %.013.i840, -1024           ; 2 uses
  %i.tu = icmp sgt i32 %.013.i840, 2047
  br i1 %i.tu, label %vector.memcheck1911, label %._crit_edge.i832, !llvm.loop !95

._crit_edge.i832:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846, %bb.an
  %.promoted.i833 = phi ptr [ %.promoted10.i831, %bb.an ], [ %.lcssa1571, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 8 uses
  %.0.lcssa.i834 = phi i32 [ %i.sr, %bb.an ], [ %i.tt, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 7 uses
  %i.tv = icmp sgt i32 %.0.lcssa.i834, 0
  br i1 %i.tv, label %.lr.ph.i5.i835.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847

.lr.ph.i5.i835.preheader:                         ; preds = %._crit_edge.i832
  %i.tw = zext nneg i32 %.0.lcssa.i834 to i64     ; 2 uses
  %min.iters.check1885 = icmp ult i32 %.0.lcssa.i834, 12
  br i1 %min.iters.check1885, label %.lr.ph.i5.i835.preheader2123, label %vector.memcheck1867

vector.memcheck1867:                              ; preds = %.lr.ph.i5.i835.preheader
  %i.tx = add nsw i32 %.0.lcssa.i834, -1
  %i.ty = zext i32 %i.tx to i64                   ; 2 uses
  %scevgep1870 = getelementptr i8, ptr %scevgep1869, i64 %i.ty ; 2 uses
  %scevgep1871 = getelementptr i8, ptr %.promoted.i833, i64 1
  %scevgep1872 = getelementptr i8, ptr %scevgep1871, i64 %i.ty ; 2 uses
  %bound01873 = icmp ult ptr %0, %scevgep1870
  %found.conflict1875 = and i1 %bound01873, %bound11874
  %bound01876 = icmp ult ptr %0, %scevgep1872
  %bound11877 = icmp ult ptr %.promoted.i833, %scevgep1868
  %found.conflict1878 = and i1 %bound01876, %bound11877
  %conflict.rdx1879 = or i1 %found.conflict1875, %found.conflict1878
  %bound01880 = icmp ult ptr %i.f, %scevgep1872
  %bound11881 = icmp ult ptr %.promoted.i833, %scevgep1870
  %found.conflict1882 = and i1 %bound01880, %bound11881
  %conflict.rdx1883 = or i1 %conflict.rdx1879, %found.conflict1882
  br i1 %conflict.rdx1883, label %.lr.ph.i5.i835.preheader2123, label %vector.ph1886

vector.ph1886:                                    ; preds = %vector.memcheck1867
  %n.vec1888 = and i64 %i.tw, 2147483644          ; 5 uses
  %i.tz = getelementptr i8, ptr %.promoted.i833, i64 %n.vec1888
  %i.ua = trunc nuw nsw i64 %n.vec1888 to i32
  %i.ub = sub nsw i32 %.0.lcssa.i834, %i.ua
  %i.uc = getelementptr i8, ptr %i.f, i64 %n.vec1888
  br label %vector.body1889

vector.body1889:                                  ; preds = %vector.body1889, %vector.ph1886
  %index1890 = phi i64 [ 0, %vector.ph1886 ], [ %index.next1896, %vector.body1889 ] ; 4 uses
  %next.gep1891 = getelementptr i8, ptr %.promoted.i833, i64 %index1890 ; 2 uses
  %next.gep1893 = getelementptr i8, ptr %i.f, i64 %index1890 ; 2 uses
  %i.ud = getelementptr i8, ptr %next.gep1891, i64 2
  %wide.load1894 = load <2 x i8>, ptr %next.gep1891, align 1, !tbaa !51, !alias.scope !165
  %wide.load1895 = load <2 x i8>, ptr %i.ud, align 1, !tbaa !51, !alias.scope !165
  %i.ue = getelementptr i8, ptr %next.gep1893, i64 2
  store <2 x i8> %wide.load1894, ptr %next.gep1893, align 4, !tbaa !51, !alias.scope !168, !noalias !165
  store <2 x i8> %wide.load1895, ptr %i.ue, align 2, !tbaa !51, !alias.scope !168, !noalias !165
  %index.next1896 = add nuw i64 %index1890, 4     ; 2 uses
  %i.uf = icmp eq i64 %index.next1896, %n.vec1888
  br i1 %i.uf, label %middle.block1897, label %vector.body1889, !llvm.loop !170

middle.block1897:                                 ; preds = %vector.body1889
  %i.ug = getelementptr i8, ptr %.promoted.i833, i64 %index1890
  %i.uh = getelementptr i8, ptr %i.ug, i64 4
  store ptr %i.uh, ptr %0, align 8, !tbaa !49, !alias.scope !171, !noalias !173
  %cmp.n1898 = icmp eq i64 %n.vec1888, %i.tw
  br i1 %cmp.n1898, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835.preheader2123

.lr.ph.i5.i835.preheader2123:                     ; preds = %vector.memcheck1867, %.lr.ph.i5.i835.preheader, %middle.block1897
  %.ph2124 = phi ptr [ %.promoted.i833, %vector.memcheck1867 ], [ %.promoted.i833, %.lr.ph.i5.i835.preheader ], [ %i.tz, %middle.block1897 ] ; 2 uses
  %.05.i6.i836.ph = phi i32 [ %.0.lcssa.i834, %vector.memcheck1867 ], [ %.0.lcssa.i834, %.lr.ph.i5.i835.preheader ], [ %i.ub, %middle.block1897 ] ; 4 uses
  %.024.i7.i837.ph = phi ptr [ %i.f, %vector.memcheck1867 ], [ %i.f, %.lr.ph.i5.i835.preheader ], [ %i.uc, %middle.block1897 ] ; 2 uses
  %i.ui = add nsw i32 %.05.i6.i836.ph, -1
  %xtraiter2221.a = and i32 %.05.i6.i836.ph, 3    ; 2 uses
  %lcmp.mod2222.not.a = icmp eq i32 %xtraiter2221.a, 0
  br i1 %lcmp.mod2222.not.a, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol

.lr.ph.i5.i835.prol:                              ; preds = %.lr.ph.i5.i835.preheader2123, %.lr.ph.i5.i835.prol
  %i.uj = phi ptr [ %i.ul, %.lr.ph.i5.i835.prol ], [ %.ph2124, %.lr.ph.i5.i835.preheader2123 ] ; 2 uses
  %.05.i6.i836.prol = phi i32 [ %i.uk, %.lr.ph.i5.i835.prol ], [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2123 ]
  %.024.i7.i837.prol = phi ptr [ %i.un, %.lr.ph.i5.i835.prol ], [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2123 ] ; 2 uses
  %prol.iter2223.a = phi i32 [ %prol.iter2223.next.a, %.lr.ph.i5.i835.prol ], [ 0, %.lr.ph.i5.i835.preheader2123 ]
  %i.uk = add nsw i32 %.05.i6.i836.prol, -1       ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 1 ; 3 uses
  store ptr %i.ul, ptr %0, align 8, !tbaa !49
  %i.um = load i8, ptr %i.uj, align 1, !tbaa !51
  %i.un = getelementptr inbounds nuw i8, ptr %.024.i7.i837.prol, i64 1 ; 2 uses
  store i8 %i.um, ptr %.024.i7.i837.prol, align 1, !tbaa !51
  %prol.iter2223.next.a = add i32 %prol.iter2223.a, 1 ; 2 uses
  %prol.iter2223.cmp.not.a = icmp eq i32 %prol.iter2223.next.a, %xtraiter2221.a
  br i1 %prol.iter2223.cmp.not.a, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol, !llvm.loop !174

.lr.ph.i5.i835.prol.loopexit:                     ; preds = %.lr.ph.i5.i835.prol, %.lr.ph.i5.i835.preheader2123
  %.unr2224.a = phi ptr [ %.ph2124, %.lr.ph.i5.i835.preheader2123 ], [ %i.ul, %.lr.ph.i5.i835.prol ]
  %.05.i6.i836.unr = phi i32 [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2123 ], [ %i.uk, %.lr.ph.i5.i835.prol ]
  %.024.i7.i837.unr = phi ptr [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2123 ], [ %i.un, %.lr.ph.i5.i835.prol ]
  %i.uo = icmp ult i32 %i.ui, 3
  br i1 %i.uo, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835

.lr.ph.i5.i835:                                   ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835
  %i.up = phi ptr [ %i.va, %.lr.ph.i5.i835 ], [ %.unr2224.a, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %.05.i6.i836 = phi i32 [ %i.uz, %.lr.ph.i5.i835 ], [ %.05.i6.i836.unr, %.lr.ph.i5.i835.prol.loopexit ]
  %.024.i7.i837 = phi ptr [ %i.vc, %.lr.ph.i5.i835 ], [ %.024.i7.i837.unr, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 1 ; 2 uses
  store ptr %i.uq, ptr %0, align 8, !tbaa !49
  %i.ur = load i8, ptr %i.up, align 1, !tbaa !51
  %i.us = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 1
  store i8 %i.ur, ptr %.024.i7.i837, align 1, !tbaa !51
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 2 ; 2 uses
  store ptr %i.ut, ptr %0, align 8, !tbaa !49
  %i.uu = load i8, ptr %i.uq, align 1, !tbaa !51
  %i.uv = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 2
  store i8 %i.uu, ptr %i.us, align 1, !tbaa !51
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 3 ; 2 uses
  store ptr %i.uw, ptr %0, align 8, !tbaa !49
  %i.ux = load i8, ptr %i.ut, align 1, !tbaa !51
  %i.uy = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 3
  store i8 %i.ux, ptr %i.uv, align 1, !tbaa !51
  %i.uz = add nsw i32 %.05.i6.i836, -4            ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.up, i64 4 ; 2 uses
  store ptr %i.va, ptr %0, align 8, !tbaa !49
  %i.vb = load i8, ptr %i.uw, align 1, !tbaa !51
  %i.vc = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 4
  store i8 %i.vb, ptr %i.uy, align 1, !tbaa !51
  %.not.i8.i838.3 = icmp eq i32 %i.uz, 0
  br i1 %.not.i8.i838.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835, !llvm.loop !175

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847: ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835, %middle.block1897, %._crit_edge.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.loopexit1039

.loopexit1039:                                    ; preds = %.lr.ph1227, %.preheader1038, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847
  %indvars.iv.next1392 = add nsw i64 %indvars.iv1391, 1 ; 2 uses
  %lftr.wideiv1394 = trunc i64 %indvars.iv.next1392 to i32
  %exitcond1395.not = icmp eq i32 %i.rw, %lftr.wideiv1394
  br i1 %exitcond1395.not, label %.loopexit1022, label %bb.am, !llvm.loop !176

bb.ao:                                            ; preds = %.lr.ph1224, %.loopexit1043
  %indvars.iv1385 = phi i64 [ %i.rf, %.lr.ph1224 ], [ %indvars.iv.next1386, %.loopexit1043 ] ; 3 uses
  %i.vd = sub nsw i64 %indvars.iv1385, %i.rg
  %i.ve = mul nsw i64 %13, %i.vd
  %i.vf = getelementptr inbounds i8, ptr %i.qy, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !49 ; 3 uses
  %i.vh = sub nsw i64 %indvars.iv1385, %i.rh
  %i.vi = mul nsw i64 %i.re, %i.vh
  %i.vj = getelementptr inbounds i8, ptr %i.rd, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !3  ; 7 uses
  %.not752 = icmp eq ptr %i.vg, null
  br i1 %.not752, label %bb.aq, label %.preheader1042

.preheader1042:                                   ; preds = %bb.ao
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %.lr.ph1220, label %.loopexit1043

.lr.ph1220:                                       ; preds = %.preheader1042
  %.promoted1221 = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %xtraiter2209 = and i32 %i.vk, 1
  %i.vm = icmp eq i32 %i.vk, 1
  br i1 %i.vm, label %.epil.preheader2208, label %.lr.ph1220.new

.lr.ph1220.new:                                   ; preds = %.lr.ph1220
  %unroll_iter2215 = and i32 %i.vk, 2147483646
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph1220.new
  %i.vn = phi ptr [ %.promoted1221, %.lr.ph1220.new ], [ %i.vv, %bb.ap ] ; 5 uses
  %.06981218 = phi ptr [ %i.vg, %.lr.ph1220.new ], [ %i.vx, %bb.ap ] ; 2 uses
  %niter2216 = phi i32 [ 0, %.lr.ph1220.new ], [ %niter2216.next.1, %bb.ap ]
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 1 ; 2 uses
  store ptr %i.vo, ptr %0, align 8, !tbaa !49
  %i.vp = load i8, ptr %i.vn, align 1, !tbaa !51
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 2 ; 2 uses
  store ptr %i.vq, ptr %0, align 8, !tbaa !49
  %i.vr = load i8, ptr %i.vo, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849 = zext i8 %i.vr to i16
  %.sroa.4.0.insert.shift.i850 = shl nuw i16 %.sroa.4.0.insert.ext.i849, 8
  %.sroa.0.0.insert.ext.i851 = zext i8 %i.vp to i16
  %.sroa.0.0.insert.insert.i852 = or disjoint i16 %.sroa.4.0.insert.shift.i850, %.sroa.0.0.insert.ext.i851
  store i16 %.sroa.0.0.insert.insert.i852, ptr %.06981218, align 2, !tbaa !56
  %i.vs = getelementptr inbounds i8, ptr %.06981218, i64 %12 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vn, i64 3 ; 2 uses
  store ptr %i.vt, ptr %0, align 8, !tbaa !49
  %i.vu = load i8, ptr %i.vq, align 1, !tbaa !51
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 4 ; 3 uses
  store ptr %i.vv, ptr %0, align 8, !tbaa !49
  %i.vw = load i8, ptr %i.vt, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849.1 = zext i8 %i.vw to i16
  %.sroa.4.0.insert.shift.i850.1 = shl nuw i16 %.sroa.4.0.insert.ext.i849.1, 8
  %.sroa.0.0.insert.ext.i851.1 = zext i8 %i.vu to i16
  %.sroa.0.0.insert.insert.i852.1 = or disjoint i16 %.sroa.4.0.insert.shift.i850.1, %.sroa.0.0.insert.ext.i851.1
  store i16 %.sroa.0.0.insert.insert.i852.1, ptr %i.vs, align 2, !tbaa !56
  %i.vx = getelementptr inbounds i8, ptr %i.vs, i64 %12 ; 2 uses
  %niter2216.next.1 = add nuw nsw i32 %niter2216, 2 ; 2 uses
  %niter2216.ncmp.1 = icmp eq i32 %niter2216.next.1, %unroll_iter2215
  br i1 %niter2216.ncmp.1, label %.loopexit1043.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !177

bb.aq:                                            ; preds = %bb.ao
  %i.vy = shl i32 %i.vk, 1                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.promoted10.i853 = load ptr, ptr %0, align 8   ; 5 uses
  %i.vz = icmp sgt i32 %i.vk, 511
  br i1 %i.vz, label %vector.memcheck1842, label %._crit_edge.i854

vector.memcheck1842:                              ; preds = %bb.aq
  %scevgep1851 = getelementptr i8, ptr %.promoted10.i853, i64 1024
  %36 = add i32 %i.vy, 1023
  %smin1852 = call i32 @llvm.smin.i32(i32 %i.vy, i32 2047)
  %37 = sub i32 %36, %smin1852
  %38 = and i32 %37, -1024
  %39 = zext i32 %38 to i64
  %scevgep1844 = getelementptr i8, ptr %scevgep1851, i64 %39 ; 2 uses
  %bound01848 = icmp ult ptr %0, %scevgep1844
  %bound11849 = icmp ult ptr %.promoted10.i853, %scevgep1808
  %found.conflict1850 = and i1 %bound01848, %bound11849
  %conflict.rdx1851 = or i1 %found.conflict1847, %found.conflict1850
  %bound01852 = icmp ult ptr %i.e, %scevgep1844
  %bound11853 = icmp ult ptr %.promoted10.i853, %scevgep1843
  %found.conflict1854 = and i1 %bound01852, %bound11853
  %conflict.rdx1855 = or i1 %conflict.rdx1851, %found.conflict1854
  br label %vector.memcheck1849

vector.memcheck1849:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868, %vector.memcheck1842
  %.013.i862 = phi i32 [ %i.xa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %i.vy, %vector.memcheck1842 ] ; 2 uses
  %.promoted1112.i863 = phi ptr [ %.lcssa1573, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %.promoted10.i853, %vector.memcheck1842 ] ; 7 uses
  br i1 %conflict.rdx1855, label %.lr.ph.i.i864, label %vector.ph1857

vector.ph1857:                                    ; preds = %vector.memcheck1849
  %i.wa = getelementptr i8, ptr %.promoted1112.i863, i64 1024
  br label %vector.body1858

vector.body1858:                                  ; preds = %vector.body1858, %vector.ph1857
  %index1859 = phi i64 [ 0, %vector.ph1857 ], [ %index.next1865.3, %vector.body1858 ] ; 6 uses
  %next.gep1860 = getelementptr i8, ptr %.promoted1112.i863, i64 %index1859 ; 2 uses
  %next.gep1862 = getelementptr i8, ptr %i.e, i64 %index1859 ; 2 uses
  %i.wb = getelementptr i8, ptr %next.gep1860, i64 2
  %wide.load1863 = load <2 x i8>, ptr %next.gep1860, align 1, !tbaa !51, !alias.scope !178
  %wide.load1864 = load <2 x i8>, ptr %i.wb, align 1, !tbaa !51, !alias.scope !178
  %i.wc = getelementptr i8, ptr %next.gep1862, i64 2
  store <2 x i8> %wide.load1863, ptr %next.gep1862, align 16, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1864, ptr %i.wc, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1865 = or disjoint i64 %index1859, 4 ; 2 uses
  %next.gep1860.1 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1865 ; 2 uses
  %next.gep1862.1 = getelementptr i8, ptr %i.e, i64 %index.next1865 ; 2 uses
  %i.wd = getelementptr i8, ptr %next.gep1860.1, i64 2
  %wide.load1863.1 = load <2 x i8>, ptr %next.gep1860.1, align 1, !tbaa !51, !alias.scope !178
  %wide.load1864.1 = load <2 x i8>, ptr %i.wd, align 1, !tbaa !51, !alias.scope !178
  %i.we = getelementptr i8, ptr %next.gep1862.1, i64 2
  store <2 x i8> %wide.load1863.1, ptr %next.gep1862.1, align 4, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1864.1, ptr %i.we, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1865.1 = or disjoint i64 %index1859, 8 ; 2 uses
  %next.gep1860.2 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1865.1 ; 2 uses
  %next.gep1862.2 = getelementptr i8, ptr %i.e, i64 %index.next1865.1 ; 2 uses
  %i.wf = getelementptr i8, ptr %next.gep1860.2, i64 2
  %wide.load1863.2 = load <2 x i8>, ptr %next.gep1860.2, align 1, !tbaa !51, !alias.scope !178
  %wide.load1864.2 = load <2 x i8>, ptr %i.wf, align 1, !tbaa !51, !alias.scope !178
  %i.wg = getelementptr i8, ptr %next.gep1862.2, i64 2
  store <2 x i8> %wide.load1863.2, ptr %next.gep1862.2, align 8, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1864.2, ptr %i.wg, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1865.2 = or disjoint i64 %index1859, 12 ; 3 uses
  %next.gep1860.3 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1865.2 ; 2 uses
  %next.gep1862.3 = getelementptr i8, ptr %i.e, i64 %index.next1865.2 ; 2 uses
  %i.wh = getelementptr i8, ptr %next.gep1860.3, i64 2
  %wide.load1863.3 = load <2 x i8>, ptr %next.gep1860.3, align 1, !tbaa !51, !alias.scope !178
  %wide.load1864.3 = load <2 x i8>, ptr %i.wh, align 1, !tbaa !51, !alias.scope !178
  %i.wi = getelementptr i8, ptr %next.gep1862.3, i64 2
  store <2 x i8> %wide.load1863.3, ptr %next.gep1862.3, align 4, !tbaa !51, !alias.scope !181, !noalias !178
  store <2 x i8> %wide.load1864.3, ptr %i.wi, align 2, !tbaa !51, !alias.scope !181, !noalias !178
  %index.next1865.3 = add nuw nsw i64 %index1859, 16 ; 2 uses
  %i.wj = icmp eq i64 %index.next1865.3, 1024
  br i1 %i.wj, label %middle.block1866, label %vector.body1858, !llvm.loop !183

middle.block1866:                                 ; preds = %vector.body1858
  %i.wk = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1865.2
  %i.wl = getelementptr i8, ptr %i.wk, i64 4
  store ptr %i.wl, ptr %0, align 8, !tbaa !49, !alias.scope !184, !noalias !186
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868

.lr.ph.i.i864:                                    ; preds = %vector.memcheck1849, %.lr.ph.i.i864
  %i.wm = phi ptr [ %i.wx, %.lr.ph.i.i864 ], [ %.promoted1112.i863, %vector.memcheck1849 ] ; 5 uses
  %.05.i.i865 = phi i32 [ %i.ww, %.lr.ph.i.i864 ], [ 1024, %vector.memcheck1849 ]
  %.024.i.i866 = phi ptr [ %i.wz, %.lr.ph.i.i864 ], [ %i.e, %vector.memcheck1849 ] ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1 ; 2 uses
  store ptr %i.wn, ptr %0, align 8, !tbaa !49
  %i.wo = load i8, ptr %i.wm, align 1, !tbaa !51
  %i.wp = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 1
  store i8 %i.wo, ptr %.024.i.i866, align 1, !tbaa !51
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 2 ; 2 uses
  store ptr %i.wq, ptr %0, align 8, !tbaa !49
  %i.wr = load i8, ptr %i.wn, align 1, !tbaa !51
  %i.ws = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 2
  store i8 %i.wr, ptr %i.wp, align 1, !tbaa !51
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 3 ; 2 uses
  store ptr %i.wt, ptr %0, align 8, !tbaa !49
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !51
  %i.wv = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 3
  store i8 %i.wu, ptr %i.ws, align 1, !tbaa !51
  %i.ww = add nsw i32 %.05.i.i865, -4             ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wm, i64 4 ; 3 uses
  store ptr %i.wx, ptr %0, align 8, !tbaa !49
  %i.wy = load i8, ptr %i.wt, align 1, !tbaa !51
  %i.wz = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 4
  store i8 %i.wy, ptr %i.wv, align 1, !tbaa !51
  %.not.i.i867.3 = icmp eq i32 %i.ww, 0
  br i1 %.not.i.i867.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868, label %.lr.ph.i.i864, !llvm.loop !187

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868: ; preds = %.lr.ph.i.i864, %middle.block1866
  %.lcssa1573 = phi ptr [ %i.wa, %middle.block1866 ], [ %i.wx, %.lr.ph.i.i864 ] ; 2 uses
  %i.xa = add nsw i32 %.013.i862, -1024           ; 2 uses
  %i.xb = icmp sgt i32 %.013.i862, 2047
  br i1 %i.xb, label %vector.memcheck1849, label %._crit_edge.i854, !llvm.loop !95

._crit_edge.i854:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868, %bb.aq
  %.promoted.i855 = phi ptr [ %.promoted10.i853, %bb.aq ], [ %.lcssa1573, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 8 uses
  %.0.lcssa.i856 = phi i32 [ %i.vy, %bb.aq ], [ %i.xa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 7 uses
  %i.xc = icmp sgt i32 %.0.lcssa.i856, 0
  br i1 %i.xc, label %.lr.ph.i5.i857.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869

.lr.ph.i5.i857.preheader:                         ; preds = %._crit_edge.i854
  %i.xd = zext nneg i32 %.0.lcssa.i856 to i64     ; 2 uses
  %min.iters.check1825 = icmp ult i32 %.0.lcssa.i856, 12
  br i1 %min.iters.check1825, label %.lr.ph.i5.i857.preheader2128, label %vector.memcheck1807

vector.memcheck1807:                              ; preds = %.lr.ph.i5.i857.preheader
  %i.xe = add nsw i32 %.0.lcssa.i856, -1
  %i.xf = zext i32 %i.xe to i64                   ; 2 uses
  %scevgep1810 = getelementptr i8, ptr %scevgep1809, i64 %i.xf ; 2 uses
  %scevgep1811 = getelementptr i8, ptr %.promoted.i855, i64 1
  %scevgep1812 = getelementptr i8, ptr %scevgep1811, i64 %i.xf ; 2 uses
  %bound01813 = icmp ult ptr %0, %scevgep1810
  %found.conflict1815 = and i1 %bound01813, %bound11814
  %bound01816 = icmp ult ptr %0, %scevgep1812
  %bound11817 = icmp ult ptr %.promoted.i855, %scevgep1808
  %found.conflict1818 = and i1 %bound01816, %bound11817
  %conflict.rdx1819 = or i1 %found.conflict1815, %found.conflict1818
  %bound01820 = icmp ult ptr %i.e, %scevgep1812
  %bound11821 = icmp ult ptr %.promoted.i855, %scevgep1810
  %found.conflict1822 = and i1 %bound01820, %bound11821
  %conflict.rdx1823 = or i1 %conflict.rdx1819, %found.conflict1822
  br i1 %conflict.rdx1823, label %.lr.ph.i5.i857.preheader2128, label %vector.ph1826

vector.ph1826:                                    ; preds = %vector.memcheck1807
  %n.vec1828 = and i64 %i.xd, 2147483644          ; 5 uses
  %i.xg = getelementptr i8, ptr %.promoted.i855, i64 %n.vec1828
  %i.xh = trunc nuw nsw i64 %n.vec1828 to i32
  %i.xi = sub nsw i32 %.0.lcssa.i856, %i.xh
  %i.xj = getelementptr i8, ptr %i.e, i64 %n.vec1828
  br label %vector.body1829

vector.body1829:                                  ; preds = %vector.body1829, %vector.ph1826
  %index1830 = phi i64 [ 0, %vector.ph1826 ], [ %index.next1836, %vector.body1829 ] ; 4 uses
  %next.gep1831 = getelementptr i8, ptr %.promoted.i855, i64 %index1830 ; 2 uses
  %next.gep1833 = getelementptr i8, ptr %i.e, i64 %index1830 ; 2 uses
  %i.xk = getelementptr i8, ptr %next.gep1831, i64 2
  %wide.load1834 = load <2 x i8>, ptr %next.gep1831, align 1, !tbaa !51, !alias.scope !188
  %wide.load1835 = load <2 x i8>, ptr %i.xk, align 1, !tbaa !51, !alias.scope !188
  %i.xl = getelementptr i8, ptr %next.gep1833, i64 2
  store <2 x i8> %wide.load1834, ptr %next.gep1833, align 4, !tbaa !51, !alias.scope !191, !noalias !188
  store <2 x i8> %wide.load1835, ptr %i.xl, align 2, !tbaa !51, !alias.scope !191, !noalias !188
  %index.next1836 = add nuw i64 %index1830, 4     ; 2 uses
  %i.xm = icmp eq i64 %index.next1836, %n.vec1828
  br i1 %i.xm, label %middle.block1837, label %vector.body1829, !llvm.loop !193

middle.block1837:                                 ; preds = %vector.body1829
  %i.xn = getelementptr i8, ptr %.promoted.i855, i64 %index1830
  %i.xo = getelementptr i8, ptr %i.xn, i64 4
  store ptr %i.xo, ptr %0, align 8, !tbaa !49, !alias.scope !194, !noalias !196
  %cmp.n1838 = icmp eq i64 %n.vec1828, %i.xd
  br i1 %cmp.n1838, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857.preheader2128

.lr.ph.i5.i857.preheader2128:                     ; preds = %vector.memcheck1807, %.lr.ph.i5.i857.preheader, %middle.block1837
  %.ph2129 = phi ptr [ %.promoted.i855, %vector.memcheck1807 ], [ %.promoted.i855, %.lr.ph.i5.i857.preheader ], [ %i.xg, %middle.block1837 ] ; 2 uses
  %.05.i6.i858.ph = phi i32 [ %.0.lcssa.i856, %vector.memcheck1807 ], [ %.0.lcssa.i856, %.lr.ph.i5.i857.preheader ], [ %i.xi, %middle.block1837 ] ; 4 uses
  %.024.i7.i859.ph = phi ptr [ %i.e, %vector.memcheck1807 ], [ %i.e, %.lr.ph.i5.i857.preheader ], [ %i.xj, %middle.block1837 ] ; 2 uses
  %i.xp = add nsw i32 %.05.i6.i858.ph, -1
  %xtraiter2217.a = and i32 %.05.i6.i858.ph, 3    ; 2 uses
  %lcmp.mod2218.not.a = icmp eq i32 %xtraiter2217.a, 0
  br i1 %lcmp.mod2218.not.a, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol

.lr.ph.i5.i857.prol:                              ; preds = %.lr.ph.i5.i857.preheader2128, %.lr.ph.i5.i857.prol
  %i.xq = phi ptr [ %i.xs, %.lr.ph.i5.i857.prol ], [ %.ph2129, %.lr.ph.i5.i857.preheader2128 ] ; 2 uses
  %.05.i6.i858.prol = phi i32 [ %i.xr, %.lr.ph.i5.i857.prol ], [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2128 ]
  %.024.i7.i859.prol = phi ptr [ %i.xu, %.lr.ph.i5.i857.prol ], [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2128 ] ; 2 uses
  %prol.iter2219.a = phi i32 [ %prol.iter2219.next.a, %.lr.ph.i5.i857.prol ], [ 0, %.lr.ph.i5.i857.preheader2128 ]
  %i.xr = add nsw i32 %.05.i6.i858.prol, -1       ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 1 ; 3 uses
  store ptr %i.xs, ptr %0, align 8, !tbaa !49
  %i.xt = load i8, ptr %i.xq, align 1, !tbaa !51
  %i.xu = getelementptr inbounds nuw i8, ptr %.024.i7.i859.prol, i64 1 ; 2 uses
  store i8 %i.xt, ptr %.024.i7.i859.prol, align 1, !tbaa !51
  %prol.iter2219.next.a = add i32 %prol.iter2219.a, 1 ; 2 uses
  %prol.iter2219.cmp.not.a = icmp eq i32 %prol.iter2219.next.a, %xtraiter2217.a
  br i1 %prol.iter2219.cmp.not.a, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol, !llvm.loop !197

.lr.ph.i5.i857.prol.loopexit:                     ; preds = %.lr.ph.i5.i857.prol, %.lr.ph.i5.i857.preheader2128
  %.unr2220.a = phi ptr [ %.ph2129, %.lr.ph.i5.i857.preheader2128 ], [ %i.xs, %.lr.ph.i5.i857.prol ]
  %.05.i6.i858.unr = phi i32 [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2128 ], [ %i.xr, %.lr.ph.i5.i857.prol ]
  %.024.i7.i859.unr = phi ptr [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2128 ], [ %i.xu, %.lr.ph.i5.i857.prol ]
  %i.xv = icmp ult i32 %i.xp, 3
  br i1 %i.xv, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857

.lr.ph.i5.i857:                                   ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857
  %i.xw = phi ptr [ %i.yh, %.lr.ph.i5.i857 ], [ %.unr2220.a, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %.05.i6.i858 = phi i32 [ %i.yg, %.lr.ph.i5.i857 ], [ %.05.i6.i858.unr, %.lr.ph.i5.i857.prol.loopexit ]
  %.024.i7.i859 = phi ptr [ %i.yj, %.lr.ph.i5.i857 ], [ %.024.i7.i859.unr, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1 ; 2 uses
  store ptr %i.xx, ptr %0, align 8, !tbaa !49
  %i.xy = load i8, ptr %i.xw, align 1, !tbaa !51
  %i.xz = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 1
  store i8 %i.xy, ptr %.024.i7.i859, align 1, !tbaa !51
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 2 ; 2 uses
  store ptr %i.ya, ptr %0, align 8, !tbaa !49
  %i.yb = load i8, ptr %i.xx, align 1, !tbaa !51
  %i.yc = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 2
  store i8 %i.yb, ptr %i.xz, align 1, !tbaa !51
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 3 ; 2 uses
  store ptr %i.yd, ptr %0, align 8, !tbaa !49
  %i.ye = load i8, ptr %i.ya, align 1, !tbaa !51
  %i.yf = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 3
  store i8 %i.ye, ptr %i.yc, align 1, !tbaa !51
  %i.yg = add nsw i32 %.05.i6.i858, -4            ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xw, i64 4 ; 2 uses
  store ptr %i.yh, ptr %0, align 8, !tbaa !49
  %i.yi = load i8, ptr %i.yd, align 1, !tbaa !51
  %i.yj = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 4
  store i8 %i.yi, ptr %i.yf, align 1, !tbaa !51
  %.not.i8.i860.3 = icmp eq i32 %i.yg, 0
  br i1 %.not.i8.i860.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857, !llvm.loop !198

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869: ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857, %middle.block1837, %._crit_edge.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.loopexit1043

.loopexit1043.loopexit.unr-lcssa:                 ; preds = %bb.ap
  %lcmp.mod2213.not = icmp eq i32 %xtraiter2209, 0
  br i1 %lcmp.mod2213.not, label %.loopexit1043, label %.epil.preheader2208

.epil.preheader2208:                              ; preds = %.loopexit1043.loopexit.unr-lcssa, %.lr.ph1220
  %.epil.init2212 = phi ptr [ %.promoted1221, %.lr.ph1220 ], [ %i.vv, %.loopexit1043.loopexit.unr-lcssa ] ; 3 uses
  %.06981218.epil.init = phi ptr [ %i.vg, %.lr.ph1220 ], [ %i.vx, %.loopexit1043.loopexit.unr-lcssa ]
  %lcmp.mod2214 = trunc i32 %i.vk to i1
  call void @llvm.assume(i1 %lcmp.mod2214)
  %i.yk = getelementptr inbounds nuw i8, ptr %.epil.init2212, i64 1 ; 2 uses
  store ptr %i.yk, ptr %0, align 8, !tbaa !49
  %i.yl = load i8, ptr %.epil.init2212, align 1, !tbaa !51
  %i.ym = getelementptr inbounds nuw i8, ptr %.epil.init2212, i64 2
  store ptr %i.ym, ptr %0, align 8, !tbaa !49
  %i.yn = load i8, ptr %i.yk, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i849.epil = zext i8 %i.yn to i16
  %.sroa.4.0.insert.shift.i850.epil = shl nuw i16 %.sroa.4.0.insert.ext.i849.epil, 8
  %.sroa.0.0.insert.ext.i851.epil = zext i8 %i.yl to i16
  %.sroa.0.0.insert.insert.i852.epil = or disjoint i16 %.sroa.4.0.insert.shift.i850.epil, %.sroa.0.0.insert.ext.i851.epil
  store i16 %.sroa.0.0.insert.insert.i852.epil, ptr %.06981218.epil.init, align 2, !tbaa !56
  br label %.loopexit1043

.loopexit1043:                                    ; preds = %.epil.preheader2208, %.loopexit1043.loopexit.unr-lcssa, %.preheader1042, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869
  %indvars.iv.next1386 = add nsw i64 %indvars.iv1385, 1 ; 2 uses
  %lftr.wideiv1388 = trunc i64 %indvars.iv.next1386 to i32
  %exitcond1389.not = icmp eq i32 %i.ri, %lftr.wideiv1388
  br i1 %exitcond1389.not, label %.loopexit1022, label %bb.ao, !llvm.loop !199

bb.ar:                                            ; preds = %.lr.ph1217, %.loopexit1047
  %indvars.iv1379 = phi i64 [ %i.qr, %.lr.ph1217 ], [ %indvars.iv.next1380, %.loopexit1047 ] ; 3 uses
  %i.yo = sub nsw i64 %indvars.iv1379, %i.qs
  %i.yp = mul nsw i64 %13, %i.yo
  %i.yq = getelementptr inbounds i8, ptr %i.qk, i64 %i.yp
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !49 ; 2 uses
  %i.ys = sub nsw i64 %indvars.iv1379, %i.qt
  %i.yt = mul nsw i64 %i.qq, %i.ys
  %i.yu = getelementptr inbounds i8, ptr %i.qp, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !3  ; 4 uses
  %.not750 = icmp eq ptr %i.yr, null
  br i1 %.not750, label %bb.as, label %.preheader1046

.preheader1046:                                   ; preds = %bb.ar
  %i.yw = icmp sgt i32 %i.yv, 0
  br i1 %i.yw, label %.lr.ph1214, label %.loopexit1047

.lr.ph1214:                                       ; preds = %.preheader1046, %.lr.ph1214
  %.06921213 = phi i32 [ %i.zi, %.lr.ph1214 ], [ 0, %.preheader1046 ]
  %.06941212 = phi ptr [ %i.zh, %.lr.ph1214 ], [ %i.yr, %.preheader1046 ] ; 2 uses
  %.promoted.i870 = load ptr, ptr %0, align 8, !tbaa !49 ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 1 ; 2 uses
  store ptr %i.yx, ptr %0, align 8, !tbaa !49
  %i.yy = load i8, ptr %.promoted.i870, align 1, !tbaa !51
  %i.yz = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 2 ; 2 uses
  store ptr %i.yz, ptr %0, align 8, !tbaa !49
  %i.za = load i8, ptr %i.yx, align 1, !tbaa !51
  %i.zb = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 3 ; 2 uses
  store ptr %i.zb, ptr %0, align 8, !tbaa !49
  %i.zc = load i8, ptr %i.yz, align 1, !tbaa !51
  %i.zd = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 4
  store ptr %i.zd, ptr %0, align 8, !tbaa !49
  %i.ze = load i8, ptr %i.zb, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i871 = zext i8 %i.ze to i32
  %.sroa.6.0.insert.shift.i872 = shl nuw i32 %.sroa.6.0.insert.ext.i871, 24
  %.sroa.5.0.insert.ext.i873 = zext i8 %i.zc to i32
  %.sroa.5.0.insert.shift.i874 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i873, 16
  %.sroa.4.0.insert.ext.i876 = zext i8 %i.za to i32
  %.sroa.4.0.insert.shift.i877 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i876, 8
  %.sroa.0.0.insert.ext.i879 = zext i8 %i.yy to i32
  %.sroa.5.0.insert.insert.i875 = or disjoint i32 %.sroa.4.0.insert.shift.i877, %.sroa.0.0.insert.ext.i879
  %.sroa.4.0.insert.insert.i878 = or disjoint i32 %.sroa.5.0.insert.insert.i875, %.sroa.5.0.insert.shift.i874
  %.sroa.0.0.insert.insert.i880 = or disjoint i32 %.sroa.4.0.insert.insert.i878, %.sroa.6.0.insert.shift.i872
  %i.zf = bitcast i32 %.sroa.0.0.insert.insert.i880 to float
  %i.zg = tail call i16 @_ZN27OpenImageIO_v3_1_Imf__3_3_511floatToHalfEf(float noundef %i.zf)
  store i16 %i.zg, ptr %.06941212, align 2, !tbaa !43
  %i.zh = getelementptr inbounds i8, ptr %.06941212, i64 %12
  %i.zi = add nuw nsw i32 %.06921213, 1           ; 2 uses
  %exitcond1378.not = icmp eq i32 %i.zi, %i.yv
  br i1 %exitcond1378.not, label %.loopexit1047, label %.lr.ph1214, !llvm.loop !200

bb.as:                                            ; preds = %bb.ar
  %i.zj = shl i32 %i.yv, 2                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %.promoted10.i881 = load ptr, ptr %0, align 8   ; 5 uses
  %i.zk = icmp sgt i32 %i.yv, 255
  br i1 %i.zk, label %vector.memcheck1782, label %._crit_edge.i882

vector.memcheck1782:                              ; preds = %bb.as
  %scevgep1789 = getelementptr i8, ptr %.promoted10.i881, i64 1024
  %40 = add i32 %i.zj, 1023
  %smin1790 = call i32 @llvm.smin.i32(i32 %i.zj, i32 2047)
  %41 = sub i32 %40, %smin1790
  %42 = and i32 %41, -1024
  %43 = zext i32 %42 to i64
  %scevgep1784 = getelementptr i8, ptr %scevgep1789, i64 %43 ; 2 uses
  %bound01788 = icmp ult ptr %0, %scevgep1784
  %bound11789 = icmp ult ptr %.promoted10.i881, %scevgep1748
  %found.conflict1790 = and i1 %bound01788, %bound11789
  %conflict.rdx1791 = or i1 %found.conflict1787, %found.conflict1790
  %bound01792 = icmp ult ptr %i.d, %scevgep1784
  %bound11793 = icmp ult ptr %.promoted10.i881, %scevgep1783
  %found.conflict1794 = and i1 %bound01792, %bound11793
  %conflict.rdx1795 = or i1 %conflict.rdx1791, %found.conflict1794
  br label %vector.memcheck1787

vector.memcheck1787:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896, %vector.memcheck1782
  %.013.i890 = phi i32 [ %i.aal, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %i.zj, %vector.memcheck1782 ] ; 2 uses
  %.promoted1112.i891 = phi ptr [ %.lcssa1575, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %.promoted10.i881, %vector.memcheck1782 ] ; 7 uses
  br i1 %conflict.rdx1795, label %.lr.ph.i.i892, label %vector.ph1797

vector.ph1797:                                    ; preds = %vector.memcheck1787
  %i.zl = getelementptr i8, ptr %.promoted1112.i891, i64 1024
  br label %vector.body1798

vector.body1798:                                  ; preds = %vector.body1798, %vector.ph1797
  %index1799 = phi i64 [ 0, %vector.ph1797 ], [ %index.next1805.3, %vector.body1798 ] ; 6 uses
  %next.gep1800 = getelementptr i8, ptr %.promoted1112.i891, i64 %index1799 ; 2 uses
  %next.gep1802 = getelementptr i8, ptr %i.d, i64 %index1799 ; 2 uses
  %i.zm = getelementptr i8, ptr %next.gep1800, i64 2
  %wide.load1803 = load <2 x i8>, ptr %next.gep1800, align 1, !tbaa !51, !alias.scope !201
  %wide.load1804 = load <2 x i8>, ptr %i.zm, align 1, !tbaa !51, !alias.scope !201
  %i.zn = getelementptr i8, ptr %next.gep1802, i64 2
  store <2 x i8> %wide.load1803, ptr %next.gep1802, align 16, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1804, ptr %i.zn, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1805 = or disjoint i64 %index1799, 4 ; 2 uses
  %next.gep1800.1 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1805 ; 2 uses
  %next.gep1802.1 = getelementptr i8, ptr %i.d, i64 %index.next1805 ; 2 uses
  %i.zo = getelementptr i8, ptr %next.gep1800.1, i64 2
  %wide.load1803.1 = load <2 x i8>, ptr %next.gep1800.1, align 1, !tbaa !51, !alias.scope !201
  %wide.load1804.1 = load <2 x i8>, ptr %i.zo, align 1, !tbaa !51, !alias.scope !201
  %i.zp = getelementptr i8, ptr %next.gep1802.1, i64 2
  store <2 x i8> %wide.load1803.1, ptr %next.gep1802.1, align 4, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1804.1, ptr %i.zp, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1805.1 = or disjoint i64 %index1799, 8 ; 2 uses
  %next.gep1800.2 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1805.1 ; 2 uses
  %next.gep1802.2 = getelementptr i8, ptr %i.d, i64 %index.next1805.1 ; 2 uses
  %i.zq = getelementptr i8, ptr %next.gep1800.2, i64 2
  %wide.load1803.2 = load <2 x i8>, ptr %next.gep1800.2, align 1, !tbaa !51, !alias.scope !201
  %wide.load1804.2 = load <2 x i8>, ptr %i.zq, align 1, !tbaa !51, !alias.scope !201
  %i.zr = getelementptr i8, ptr %next.gep1802.2, i64 2
  store <2 x i8> %wide.load1803.2, ptr %next.gep1802.2, align 8, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1804.2, ptr %i.zr, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1805.2 = or disjoint i64 %index1799, 12 ; 3 uses
  %next.gep1800.3 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1805.2 ; 2 uses
  %next.gep1802.3 = getelementptr i8, ptr %i.d, i64 %index.next1805.2 ; 2 uses
  %i.zs = getelementptr i8, ptr %next.gep1800.3, i64 2
  %wide.load1803.3 = load <2 x i8>, ptr %next.gep1800.3, align 1, !tbaa !51, !alias.scope !201
  %wide.load1804.3 = load <2 x i8>, ptr %i.zs, align 1, !tbaa !51, !alias.scope !201
  %i.zt = getelementptr i8, ptr %next.gep1802.3, i64 2
  store <2 x i8> %wide.load1803.3, ptr %next.gep1802.3, align 4, !tbaa !51, !alias.scope !204, !noalias !201
  store <2 x i8> %wide.load1804.3, ptr %i.zt, align 2, !tbaa !51, !alias.scope !204, !noalias !201
  %index.next1805.3 = add nuw nsw i64 %index1799, 16 ; 2 uses
  %i.zu = icmp eq i64 %index.next1805.3, 1024
  br i1 %i.zu, label %middle.block1806, label %vector.body1798, !llvm.loop !206

middle.block1806:                                 ; preds = %vector.body1798
  %i.zv = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1805.2
  %i.zw = getelementptr i8, ptr %i.zv, i64 4
  store ptr %i.zw, ptr %0, align 8, !tbaa !49, !alias.scope !207, !noalias !209
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896

.lr.ph.i.i892:                                    ; preds = %vector.memcheck1787, %.lr.ph.i.i892
  %i.zx = phi ptr [ %i.aai, %.lr.ph.i.i892 ], [ %.promoted1112.i891, %vector.memcheck1787 ] ; 5 uses
  %.05.i.i893 = phi i32 [ %i.aah, %.lr.ph.i.i892 ], [ 1024, %vector.memcheck1787 ]
  %.024.i.i894 = phi ptr [ %i.aak, %.lr.ph.i.i892 ], [ %i.d, %vector.memcheck1787 ] ; 5 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 1 ; 2 uses
  store ptr %i.zy, ptr %0, align 8, !tbaa !49
  %i.zz = load i8, ptr %i.zx, align 1, !tbaa !51
  %i.aaa = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 1
  store i8 %i.zz, ptr %.024.i.i894, align 1, !tbaa !51
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 2 ; 2 uses
  store ptr %i.aab, ptr %0, align 8, !tbaa !49
  %i.aac = load i8, ptr %i.zy, align 1, !tbaa !51
  %i.aad = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 2
  store i8 %i.aac, ptr %i.aaa, align 1, !tbaa !51
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zx, i64 3 ; 2 uses
  store ptr %i.aae, ptr %0, align 8, !tbaa !49
  %i.aaf = load i8, ptr %i.aab, align 1, !tbaa !51
  %i.aag = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 3
  store i8 %i.aaf, ptr %i.aad, align 1, !tbaa !51
  %i.aah = add nsw i32 %.05.i.i893, -4            ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zx, i64 4 ; 3 uses
  store ptr %i.aai, ptr %0, align 8, !tbaa !49
  %i.aaj = load i8, ptr %i.aae, align 1, !tbaa !51
  %i.aak = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 4
  store i8 %i.aaj, ptr %i.aag, align 1, !tbaa !51
  %.not.i.i895.3 = icmp eq i32 %i.aah, 0
  br i1 %.not.i.i895.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896, label %.lr.ph.i.i892, !llvm.loop !210

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896: ; preds = %.lr.ph.i.i892, %middle.block1806
  %.lcssa1575 = phi ptr [ %i.zl, %middle.block1806 ], [ %i.aai, %.lr.ph.i.i892 ] ; 2 uses
  %i.aal = add nsw i32 %.013.i890, -1024          ; 2 uses
  %i.aam = icmp sgt i32 %.013.i890, 2047
  br i1 %i.aam, label %vector.memcheck1787, label %._crit_edge.i882, !llvm.loop !95

._crit_edge.i882:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896, %bb.as
  %.promoted.i883 = phi ptr [ %.promoted10.i881, %bb.as ], [ %.lcssa1575, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 8 uses
  %.0.lcssa.i884 = phi i32 [ %i.zj, %bb.as ], [ %i.aal, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 7 uses
  %i.aan = icmp sgt i32 %.0.lcssa.i884, 0
  br i1 %i.aan, label %.lr.ph.i5.i885.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897

.lr.ph.i5.i885.preheader:                         ; preds = %._crit_edge.i882
  %i.aao = zext nneg i32 %.0.lcssa.i884 to i64    ; 2 uses
  %min.iters.check1765 = icmp ult i32 %.0.lcssa.i884, 12
  br i1 %min.iters.check1765, label %.lr.ph.i5.i885.preheader2133, label %vector.memcheck1747

vector.memcheck1747:                              ; preds = %.lr.ph.i5.i885.preheader
  %i.aap = add nsw i32 %.0.lcssa.i884, -1
  %i.aaq = zext i32 %i.aap to i64                 ; 2 uses
  %scevgep1750 = getelementptr i8, ptr %scevgep1749, i64 %i.aaq ; 2 uses
  %scevgep1751 = getelementptr i8, ptr %.promoted.i883, i64 1
  %scevgep1752 = getelementptr i8, ptr %scevgep1751, i64 %i.aaq ; 2 uses
  %bound01753 = icmp ult ptr %0, %scevgep1750
  %found.conflict1755 = and i1 %bound01753, %bound11754
  %bound01756 = icmp ult ptr %0, %scevgep1752
  %bound11757 = icmp ult ptr %.promoted.i883, %scevgep1748
  %found.conflict1758 = and i1 %bound01756, %bound11757
  %conflict.rdx1759 = or i1 %found.conflict1755, %found.conflict1758
  %bound01760 = icmp ult ptr %i.d, %scevgep1752
  %bound11761 = icmp ult ptr %.promoted.i883, %scevgep1750
  %found.conflict1762 = and i1 %bound01760, %bound11761
  %conflict.rdx1763 = or i1 %conflict.rdx1759, %found.conflict1762
  br i1 %conflict.rdx1763, label %.lr.ph.i5.i885.preheader2133, label %vector.ph1766

vector.ph1766:                                    ; preds = %vector.memcheck1747
  %n.vec1768 = and i64 %i.aao, 2147483644         ; 5 uses
  %i.aar = getelementptr i8, ptr %.promoted.i883, i64 %n.vec1768
  %i.aas = trunc nuw nsw i64 %n.vec1768 to i32
  %i.aat = sub nsw i32 %.0.lcssa.i884, %i.aas
  %i.aau = getelementptr i8, ptr %i.d, i64 %n.vec1768
  br label %vector.body1769

vector.body1769:                                  ; preds = %vector.body1769, %vector.ph1766
  %index1770 = phi i64 [ 0, %vector.ph1766 ], [ %index.next1776, %vector.body1769 ] ; 4 uses
  %next.gep1771 = getelementptr i8, ptr %.promoted.i883, i64 %index1770 ; 2 uses
  %next.gep1773 = getelementptr i8, ptr %i.d, i64 %index1770 ; 2 uses
  %i.aav = getelementptr i8, ptr %next.gep1771, i64 2
  %wide.load1774 = load <2 x i8>, ptr %next.gep1771, align 1, !tbaa !51, !alias.scope !211
  %wide.load1775 = load <2 x i8>, ptr %i.aav, align 1, !tbaa !51, !alias.scope !211
  %i.aaw = getelementptr i8, ptr %next.gep1773, i64 2
  store <2 x i8> %wide.load1774, ptr %next.gep1773, align 4, !tbaa !51, !alias.scope !214, !noalias !211
  store <2 x i8> %wide.load1775, ptr %i.aaw, align 2, !tbaa !51, !alias.scope !214, !noalias !211
  %index.next1776 = add nuw i64 %index1770, 4     ; 2 uses
  %i.aax = icmp eq i64 %index.next1776, %n.vec1768
  br i1 %i.aax, label %middle.block1777, label %vector.body1769, !llvm.loop !216

middle.block1777:                                 ; preds = %vector.body1769
  %i.aay = getelementptr i8, ptr %.promoted.i883, i64 %index1770
  %i.aaz = getelementptr i8, ptr %i.aay, i64 4
  store ptr %i.aaz, ptr %0, align 8, !tbaa !49, !alias.scope !217, !noalias !219
  %cmp.n1778 = icmp eq i64 %n.vec1768, %i.aao
  br i1 %cmp.n1778, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885.preheader2133

.lr.ph.i5.i885.preheader2133:                     ; preds = %vector.memcheck1747, %.lr.ph.i5.i885.preheader, %middle.block1777
  %.ph2134 = phi ptr [ %.promoted.i883, %vector.memcheck1747 ], [ %.promoted.i883, %.lr.ph.i5.i885.preheader ], [ %i.aar, %middle.block1777 ] ; 2 uses
  %.05.i6.i886.ph = phi i32 [ %.0.lcssa.i884, %vector.memcheck1747 ], [ %.0.lcssa.i884, %.lr.ph.i5.i885.preheader ], [ %i.aat, %middle.block1777 ] ; 4 uses
  %.024.i7.i887.ph = phi ptr [ %i.d, %vector.memcheck1747 ], [ %i.d, %.lr.ph.i5.i885.preheader ], [ %i.aau, %middle.block1777 ] ; 2 uses
  %i.aba = add nsw i32 %.05.i6.i886.ph, -1
  %xtraiter2204 = and i32 %.05.i6.i886.ph, 3      ; 2 uses
  %lcmp.mod2205.not = icmp eq i32 %xtraiter2204, 0
  br i1 %lcmp.mod2205.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol

.lr.ph.i5.i885.prol:                              ; preds = %.lr.ph.i5.i885.preheader2133, %.lr.ph.i5.i885.prol
  %i.abb = phi ptr [ %i.abd, %.lr.ph.i5.i885.prol ], [ %.ph2134, %.lr.ph.i5.i885.preheader2133 ] ; 2 uses
  %.05.i6.i886.prol = phi i32 [ %i.abc, %.lr.ph.i5.i885.prol ], [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2133 ]
  %.024.i7.i887.prol = phi ptr [ %i.abf, %.lr.ph.i5.i885.prol ], [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2133 ] ; 2 uses
  %prol.iter2206 = phi i32 [ %prol.iter2206.next, %.lr.ph.i5.i885.prol ], [ 0, %.lr.ph.i5.i885.preheader2133 ]
  %i.abc = add nsw i32 %.05.i6.i886.prol, -1      ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 1 ; 3 uses
  store ptr %i.abd, ptr %0, align 8, !tbaa !49
  %i.abe = load i8, ptr %i.abb, align 1, !tbaa !51
  %i.abf = getelementptr inbounds nuw i8, ptr %.024.i7.i887.prol, i64 1 ; 2 uses
  store i8 %i.abe, ptr %.024.i7.i887.prol, align 1, !tbaa !51
  %prol.iter2206.next = add i32 %prol.iter2206, 1 ; 2 uses
  %prol.iter2206.cmp.not = icmp eq i32 %prol.iter2206.next, %xtraiter2204
  br i1 %prol.iter2206.cmp.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol, !llvm.loop !220

.lr.ph.i5.i885.prol.loopexit:                     ; preds = %.lr.ph.i5.i885.prol, %.lr.ph.i5.i885.preheader2133
  %.unr2207 = phi ptr [ %.ph2134, %.lr.ph.i5.i885.preheader2133 ], [ %i.abd, %.lr.ph.i5.i885.prol ]
  %.05.i6.i886.unr = phi i32 [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2133 ], [ %i.abc, %.lr.ph.i5.i885.prol ]
  %.024.i7.i887.unr = phi ptr [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2133 ], [ %i.abf, %.lr.ph.i5.i885.prol ]
  %i.abg = icmp ult i32 %i.aba, 3
  br i1 %i.abg, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885

.lr.ph.i5.i885:                                   ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885
  %i.abh = phi ptr [ %i.abs, %.lr.ph.i5.i885 ], [ %.unr2207, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %.05.i6.i886 = phi i32 [ %i.abr, %.lr.ph.i5.i885 ], [ %.05.i6.i886.unr, %.lr.ph.i5.i885.prol.loopexit ]
  %.024.i7.i887 = phi ptr [ %i.abu, %.lr.ph.i5.i885 ], [ %.024.i7.i887.unr, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 1 ; 2 uses
  store ptr %i.abi, ptr %0, align 8, !tbaa !49
  %i.abj = load i8, ptr %i.abh, align 1, !tbaa !51
  %i.abk = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 1
  store i8 %i.abj, ptr %.024.i7.i887, align 1, !tbaa !51
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 2 ; 2 uses
  store ptr %i.abl, ptr %0, align 8, !tbaa !49
  %i.abm = load i8, ptr %i.abi, align 1, !tbaa !51
  %i.abn = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 2
  store i8 %i.abm, ptr %i.abk, align 1, !tbaa !51
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abh, i64 3 ; 2 uses
  store ptr %i.abo, ptr %0, align 8, !tbaa !49
  %i.abp = load i8, ptr %i.abl, align 1, !tbaa !51
  %i.abq = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 3
  store i8 %i.abp, ptr %i.abn, align 1, !tbaa !51
  %i.abr = add nsw i32 %.05.i6.i886, -4           ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abh, i64 4 ; 2 uses
  store ptr %i.abs, ptr %0, align 8, !tbaa !49
  %i.abt = load i8, ptr %i.abo, align 1, !tbaa !51
  %i.abu = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 4
  store i8 %i.abt, ptr %i.abq, align 1, !tbaa !51
  %.not.i8.i888.3 = icmp eq i32 %i.abr, 0
  br i1 %.not.i8.i888.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885, !llvm.loop !221

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897: ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885, %middle.block1777, %._crit_edge.i882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.loopexit1047

.loopexit1047:                                    ; preds = %.lr.ph1214, %.preheader1046, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897
  %indvars.iv.next1380 = add nsw i64 %indvars.iv1379, 1 ; 2 uses
  %lftr.wideiv1382 = trunc i64 %indvars.iv.next1380 to i32
  %exitcond1383.not = icmp eq i32 %i.qu, %lftr.wideiv1382
  br i1 %exitcond1383.not, label %.loopexit1022, label %bb.ar, !llvm.loop !222

bb.at:                                            ; preds = %bb.al
  %i.abv = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.abv, ptr noundef nonnull @.str.9)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.abv, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aw:                                            ; preds = %bb.z
  switch i32 %19, label %bb.bg [
    i32 0, label %.preheader1052
    i32 1, label %.preheader1056
    i32 2, label %.preheader1060
  ]

.preheader1060:                                   ; preds = %bb.aw
  %.not7431195 = icmp sgt i32 %6, %7
  br i1 %.not7431195, label %.loopexit1022, label %.lr.ph1197

.lr.ph1197:                                       ; preds = %.preheader1060
  %i.abx = sub nsw i32 %5, %11
  %i.aby = sext i32 %i.abx to i64
  %i.abz = mul nsw i64 %14, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %1, i64 %i.abz
  %i.acb = sub nsw i32 %5, %9
  %i.acc = sext i32 %i.acb to i64
  %sext998 = shl i64 %4, 32
  %i.acd = ashr exact i64 %sext998, 32
  %i.ace = mul nsw i64 %i.acd, %i.acc
  %i.acf = getelementptr inbounds i8, ptr %2, i64 %i.ace
  %sext999 = shl i64 %3, 32
  %i.acg = ashr exact i64 %sext999, 32
  %i.ach = sext i32 %6 to i64
  %i.aci = sext i32 %10 to i64
  %i.acj = sext i32 %8 to i64
  %i.ack = add i32 %7, 1
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1586 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %scevgep1603 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %bound01605 = icmp ult ptr %0, %scevgep1603
  %bound11606 = icmp ult ptr %i.a, %scevgep
  %found.conflict1607 = and i1 %bound01605, %bound11606
  %bound1 = icmp ult ptr %i.a, %scevgep
  br label %bb.bd

.preheader1056:                                   ; preds = %bb.aw
  %.not7451202 = icmp sgt i32 %6, %7
  br i1 %.not7451202, label %.loopexit1022, label %.lr.ph1204

.lr.ph1204:                                       ; preds = %.preheader1056
  %i.acl = sub nsw i32 %5, %11
  %i.acm = sext i32 %i.acl to i64
  %i.acn = mul nsw i64 %14, %i.acm
  %i.aco = getelementptr inbounds i8, ptr %1, i64 %i.acn
  %i.acp = sub nsw i32 %5, %9
  %i.acq = sext i32 %i.acp to i64
  %sext1000 = shl i64 %4, 32
  %i.acr = ashr exact i64 %sext1000, 32
  %i.acs = mul nsw i64 %i.acr, %i.acq
  %i.act = getelementptr inbounds i8, ptr %2, i64 %i.acs
  %sext1001 = shl i64 %3, 32
  %i.acu = ashr exact i64 %sext1001, 32
  %i.acv = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.acw = sext i32 %6 to i64
  %i.acx = sext i32 %10 to i64
  %i.acy = sext i32 %8 to i64
  %i.acz = add i32 %7, 1
  %scevgep1628 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1629 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %scevgep1663 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %bound01665 = icmp ult ptr %0, %scevgep1663
  %bound11666 = icmp ult ptr %i.b, %scevgep1628
  %found.conflict1667 = and i1 %bound01665, %bound11666
  %bound11634 = icmp ult ptr %i.b, %scevgep1628
  br label %bb.ba

.preheader1052:                                   ; preds = %bb.aw
  %.not7471209 = icmp sgt i32 %6, %7
  br i1 %.not7471209, label %.loopexit1022, label %.lr.ph1211

.lr.ph1211:                                       ; preds = %.preheader1052
  %i.ada = sub nsw i32 %5, %11
  %i.adb = sext i32 %i.ada to i64
  %i.adc = mul nsw i64 %14, %i.adb
  %i.add = getelementptr inbounds i8, ptr %1, i64 %i.adc
  %i.ade = sub nsw i32 %5, %9
  %i.adf = sext i32 %i.ade to i64
  %sext1002 = shl i64 %4, 32
  %i.adg = ashr exact i64 %sext1002, 32
  %i.adh = mul nsw i64 %i.adg, %i.adf
  %i.adi = getelementptr inbounds i8, ptr %2, i64 %i.adh
  %sext1003 = shl i64 %3, 32
  %i.adj = ashr exact i64 %sext1003, 32
  %i.adk = sext i32 %6 to i64
  %i.adl = sext i32 %10 to i64
  %i.adm = sext i32 %8 to i64
  %i.adn = add i32 %7, 1
  %scevgep1688 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1689 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %scevgep1723 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %bound01725 = icmp ult ptr %0, %scevgep1723
  %bound11726 = icmp ult ptr %i.c, %scevgep1688
  %found.conflict1727 = and i1 %bound01725, %bound11726
  %bound11694 = icmp ult ptr %i.c, %scevgep1688
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1211, %.loopexit1051
  %indvars.iv1373 = phi i64 [ %i.adk, %.lr.ph1211 ], [ %indvars.iv.next1374, %.loopexit1051 ] ; 3 uses
  %i.ado = sub nsw i64 %indvars.iv1373, %i.adl
  %i.adp = mul nsw i64 %13, %i.ado
  %i.adq = getelementptr inbounds i8, ptr %i.add, i64 %i.adp
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !49 ; 2 uses
  %i.ads = sub nsw i64 %indvars.iv1373, %i.adm
  %i.adt = mul nsw i64 %i.adj, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %i.adi, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !3 ; 4 uses
  %.not748 = icmp eq ptr %i.adr, null
  br i1 %.not748, label %bb.az, label %.preheader1050

.preheader1050:                                   ; preds = %bb.ax
  %i.adw = icmp sgt i32 %i.adv, 0
  br i1 %i.adw, label %.lr.ph1207, label %.loopexit1051

.lr.ph1207:                                       ; preds = %.preheader1050
  %.promoted1208 = load ptr, ptr %0, align 8, !tbaa !49
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1207, %bb.ay
  %i.adx = phi ptr [ %.promoted1208, %.lr.ph1207 ], [ %i.aee, %bb.ay ] ; 5 uses
  %.06871206 = phi i32 [ 0, %.lr.ph1207 ], [ %i.aei, %bb.ay ]
  %.06891205 = phi ptr [ %i.adr, %.lr.ph1207 ], [ %i.aeh, %bb.ay ] ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1 ; 2 uses
  store ptr %i.ady, ptr %0, align 8, !tbaa !49
  %i.adz = load i8, ptr %i.adx, align 1, !tbaa !51
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 2 ; 2 uses
  store ptr %i.aea, ptr %0, align 8, !tbaa !49
  %i.aeb = load i8, ptr %i.ady, align 1, !tbaa !51
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 3 ; 2 uses
  store ptr %i.aec, ptr %0, align 8, !tbaa !49
  %i.aed = load i8, ptr %i.aea, align 1, !tbaa !51
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 4 ; 2 uses
  store ptr %i.aee, ptr %0, align 8, !tbaa !49
  %i.aef = load i8, ptr %i.aec, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i899 = zext i8 %i.aef to i32
  %.sroa.6.0.insert.shift.i900 = shl nuw i32 %.sroa.6.0.insert.ext.i899, 24
  %.sroa.5.0.insert.ext.i901 = zext i8 %i.aed to i32
  %.sroa.5.0.insert.shift.i902 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i901, 16
  %.sroa.4.0.insert.ext.i904 = zext i8 %i.aeb to i32
  %.sroa.4.0.insert.shift.i905 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i904, 8
  %.sroa.0.0.insert.ext.i907 = zext i8 %i.adz to i32
  %.sroa.5.0.insert.insert.i903 = or disjoint i32 %.sroa.4.0.insert.shift.i905, %.sroa.0.0.insert.ext.i907
  %.sroa.4.0.insert.insert.i906 = or disjoint i32 %.sroa.5.0.insert.insert.i903, %.sroa.5.0.insert.shift.i902
  %.sroa.0.0.insert.insert.i908 = or disjoint i32 %.sroa.4.0.insert.insert.i906, %.sroa.6.0.insert.shift.i900
  %i.aeg = uitofp i32 %.sroa.0.0.insert.insert.i908 to float
  store float %i.aeg, ptr %.06891205, align 4, !tbaa !46
  %i.aeh = getelementptr inbounds i8, ptr %.06891205, i64 %12
  %i.aei = add nuw nsw i32 %.06871206, 1          ; 2 uses
  %exitcond1372.not = icmp eq i32 %i.aei, %i.adv
  br i1 %exitcond1372.not, label %.loopexit1051, label %bb.ay, !llvm.loop !223

bb.az:                                            ; preds = %bb.ax
  %i.aej = shl i32 %i.adv, 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i909 = load ptr, ptr %0, align 8   ; 5 uses
  %i.aek = icmp sgt i32 %i.adv, 255
  br i1 %i.aek, label %vector.memcheck1722, label %._crit_edge.i910

vector.memcheck1722:                              ; preds = %bb.az
  %scevgep1727 = getelementptr i8, ptr %.promoted10.i909, i64 1024
  %44 = add i32 %i.aej, 1023
  %smin1728 = call i32 @llvm.smin.i32(i32 %i.aej, i32 2047)
  %45 = sub i32 %44, %smin1728
  %46 = and i32 %45, -1024
  %47 = zext i32 %46 to i64
  %scevgep1724 = getelementptr i8, ptr %scevgep1727, i64 %47 ; 2 uses
  %bound01728 = icmp ult ptr %0, %scevgep1724
  %bound11729 = icmp ult ptr %.promoted10.i909, %scevgep1688
  %found.conflict1730 = and i1 %bound01728, %bound11729
  %conflict.rdx1731 = or i1 %found.conflict1727, %found.conflict1730
  %bound01732 = icmp ult ptr %i.c, %scevgep1724
  %bound11733 = icmp ult ptr %.promoted10.i909, %scevgep1723
  %found.conflict1734 = and i1 %bound01732, %bound11733
  %conflict.rdx1735 = or i1 %conflict.rdx1731, %found.conflict1734
  br label %vector.memcheck1725

vector.memcheck1725:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924, %vector.memcheck1722
  %.013.i918 = phi i32 [ %i.afl, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %i.aej, %vector.memcheck1722 ] ; 2 uses
  %.promoted1112.i919 = phi ptr [ %.lcssa1577, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %.promoted10.i909, %vector.memcheck1722 ] ; 7 uses
  br i1 %conflict.rdx1735, label %.lr.ph.i.i920, label %vector.ph1737

vector.ph1737:                                    ; preds = %vector.memcheck1725
  %i.ael = getelementptr i8, ptr %.promoted1112.i919, i64 1024
  br label %vector.body1738

vector.body1738:                                  ; preds = %vector.body1738, %vector.ph1737
  %index1739 = phi i64 [ 0, %vector.ph1737 ], [ %index.next1745.3, %vector.body1738 ] ; 6 uses
  %next.gep1740 = getelementptr i8, ptr %.promoted1112.i919, i64 %index1739 ; 2 uses
  %next.gep1742 = getelementptr i8, ptr %i.c, i64 %index1739 ; 2 uses
  %i.aem = getelementptr i8, ptr %next.gep1740, i64 2
  %wide.load1743 = load <2 x i8>, ptr %next.gep1740, align 1, !tbaa !51, !alias.scope !224
  %wide.load1744 = load <2 x i8>, ptr %i.aem, align 1, !tbaa !51, !alias.scope !224
  %i.aen = getelementptr i8, ptr %next.gep1742, i64 2
  store <2 x i8> %wide.load1743, ptr %next.gep1742, align 16, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1744, ptr %i.aen, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1745 = or disjoint i64 %index1739, 4 ; 2 uses
  %next.gep1740.1 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1745 ; 2 uses
  %next.gep1742.1 = getelementptr i8, ptr %i.c, i64 %index.next1745 ; 2 uses
  %i.aeo = getelementptr i8, ptr %next.gep1740.1, i64 2
  %wide.load1743.1 = load <2 x i8>, ptr %next.gep1740.1, align 1, !tbaa !51, !alias.scope !224
  %wide.load1744.1 = load <2 x i8>, ptr %i.aeo, align 1, !tbaa !51, !alias.scope !224
  %i.aep = getelementptr i8, ptr %next.gep1742.1, i64 2
  store <2 x i8> %wide.load1743.1, ptr %next.gep1742.1, align 4, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1744.1, ptr %i.aep, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1745.1 = or disjoint i64 %index1739, 8 ; 2 uses
  %next.gep1740.2 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1745.1 ; 2 uses
  %next.gep1742.2 = getelementptr i8, ptr %i.c, i64 %index.next1745.1 ; 2 uses
  %i.aeq = getelementptr i8, ptr %next.gep1740.2, i64 2
  %wide.load1743.2 = load <2 x i8>, ptr %next.gep1740.2, align 1, !tbaa !51, !alias.scope !224
  %wide.load1744.2 = load <2 x i8>, ptr %i.aeq, align 1, !tbaa !51, !alias.scope !224
  %i.aer = getelementptr i8, ptr %next.gep1742.2, i64 2
  store <2 x i8> %wide.load1743.2, ptr %next.gep1742.2, align 8, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1744.2, ptr %i.aer, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1745.2 = or disjoint i64 %index1739, 12 ; 3 uses
  %next.gep1740.3 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1745.2 ; 2 uses
  %next.gep1742.3 = getelementptr i8, ptr %i.c, i64 %index.next1745.2 ; 2 uses
  %i.aes = getelementptr i8, ptr %next.gep1740.3, i64 2
  %wide.load1743.3 = load <2 x i8>, ptr %next.gep1740.3, align 1, !tbaa !51, !alias.scope !224
  %wide.load1744.3 = load <2 x i8>, ptr %i.aes, align 1, !tbaa !51, !alias.scope !224
  %i.aet = getelementptr i8, ptr %next.gep1742.3, i64 2
  store <2 x i8> %wide.load1743.3, ptr %next.gep1742.3, align 4, !tbaa !51, !alias.scope !227, !noalias !224
  store <2 x i8> %wide.load1744.3, ptr %i.aet, align 2, !tbaa !51, !alias.scope !227, !noalias !224
  %index.next1745.3 = add nuw nsw i64 %index1739, 16 ; 2 uses
  %i.aeu = icmp eq i64 %index.next1745.3, 1024
  br i1 %i.aeu, label %middle.block1746, label %vector.body1738, !llvm.loop !229

middle.block1746:                                 ; preds = %vector.body1738
  %i.aev = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1745.2
  %i.aew = getelementptr i8, ptr %i.aev, i64 4
  store ptr %i.aew, ptr %0, align 8, !tbaa !49, !alias.scope !230, !noalias !232
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924

.lr.ph.i.i920:                                    ; preds = %vector.memcheck1725, %.lr.ph.i.i920
  %i.aex = phi ptr [ %i.afi, %.lr.ph.i.i920 ], [ %.promoted1112.i919, %vector.memcheck1725 ] ; 5 uses
  %.05.i.i921 = phi i32 [ %i.afh, %.lr.ph.i.i920 ], [ 1024, %vector.memcheck1725 ]
  %.024.i.i922 = phi ptr [ %i.afk, %.lr.ph.i.i920 ], [ %i.c, %vector.memcheck1725 ] ; 5 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 1 ; 2 uses
  store ptr %i.aey, ptr %0, align 8, !tbaa !49
  %i.aez = load i8, ptr %i.aex, align 1, !tbaa !51
  %i.afa = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 1
  store i8 %i.aez, ptr %.024.i.i922, align 1, !tbaa !51
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 2 ; 2 uses
  store ptr %i.afb, ptr %0, align 8, !tbaa !49
  %i.afc = load i8, ptr %i.aey, align 1, !tbaa !51
  %i.afd = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 2
  store i8 %i.afc, ptr %i.afa, align 1, !tbaa !51
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aex, i64 3 ; 2 uses
  store ptr %i.afe, ptr %0, align 8, !tbaa !49
  %i.aff = load i8, ptr %i.afb, align 1, !tbaa !51
  %i.afg = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 3
  store i8 %i.aff, ptr %i.afd, align 1, !tbaa !51
  %i.afh = add nsw i32 %.05.i.i921, -4            ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aex, i64 4 ; 3 uses
  store ptr %i.afi, ptr %0, align 8, !tbaa !49
  %i.afj = load i8, ptr %i.afe, align 1, !tbaa !51
  %i.afk = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 4
  store i8 %i.afj, ptr %i.afg, align 1, !tbaa !51
  %.not.i.i923.3 = icmp eq i32 %i.afh, 0
  br i1 %.not.i.i923.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924, label %.lr.ph.i.i920, !llvm.loop !233

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924: ; preds = %.lr.ph.i.i920, %middle.block1746
  %.lcssa1577 = phi ptr [ %i.ael, %middle.block1746 ], [ %i.afi, %.lr.ph.i.i920 ] ; 2 uses
  %i.afl = add nsw i32 %.013.i918, -1024          ; 2 uses
  %i.afm = icmp sgt i32 %.013.i918, 2047
  br i1 %i.afm, label %vector.memcheck1725, label %._crit_edge.i910, !llvm.loop !95

._crit_edge.i910:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924, %bb.az
  %.promoted.i911 = phi ptr [ %.promoted10.i909, %bb.az ], [ %.lcssa1577, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 8 uses
  %.0.lcssa.i912 = phi i32 [ %i.aej, %bb.az ], [ %i.afl, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 7 uses
  %i.afn = icmp sgt i32 %.0.lcssa.i912, 0
  br i1 %i.afn, label %.lr.ph.i5.i913.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925

.lr.ph.i5.i913.preheader:                         ; preds = %._crit_edge.i910
  %i.afo = zext nneg i32 %.0.lcssa.i912 to i64    ; 2 uses
  %min.iters.check1705 = icmp ult i32 %.0.lcssa.i912, 12
  br i1 %min.iters.check1705, label %.lr.ph.i5.i913.preheader2138, label %vector.memcheck1687

vector.memcheck1687:                              ; preds = %.lr.ph.i5.i913.preheader
  %i.afp = add nsw i32 %.0.lcssa.i912, -1
  %i.afq = zext i32 %i.afp to i64                 ; 2 uses
  %scevgep1690 = getelementptr i8, ptr %scevgep1689, i64 %i.afq ; 2 uses
  %scevgep1691 = getelementptr i8, ptr %.promoted.i911, i64 1
  %scevgep1692 = getelementptr i8, ptr %scevgep1691, i64 %i.afq ; 2 uses
  %bound01693 = icmp ult ptr %0, %scevgep1690
  %found.conflict1695 = and i1 %bound01693, %bound11694
  %bound01696 = icmp ult ptr %0, %scevgep1692
  %bound11697 = icmp ult ptr %.promoted.i911, %scevgep1688
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %conflict.rdx1699 = or i1 %found.conflict1695, %found.conflict1698
  %bound01700 = icmp ult ptr %i.c, %scevgep1692
  %bound11701 = icmp ult ptr %.promoted.i911, %scevgep1690
  %found.conflict1702 = and i1 %bound01700, %bound11701
  %conflict.rdx1703 = or i1 %conflict.rdx1699, %found.conflict1702
  br i1 %conflict.rdx1703, label %.lr.ph.i5.i913.preheader2138, label %vector.ph1706

vector.ph1706:                                    ; preds = %vector.memcheck1687
  %n.vec1708 = and i64 %i.afo, 2147483644         ; 5 uses
  %i.afr = getelementptr i8, ptr %.promoted.i911, i64 %n.vec1708
  %i.afs = trunc nuw nsw i64 %n.vec1708 to i32
  %i.aft = sub nsw i32 %.0.lcssa.i912, %i.afs
  %i.afu = getelementptr i8, ptr %i.c, i64 %n.vec1708
  br label %vector.body1709

vector.body1709:                                  ; preds = %vector.body1709, %vector.ph1706
  %index1710 = phi i64 [ 0, %vector.ph1706 ], [ %index.next1716, %vector.body1709 ] ; 4 uses
  %next.gep1711 = getelementptr i8, ptr %.promoted.i911, i64 %index1710 ; 2 uses
  %next.gep1713 = getelementptr i8, ptr %i.c, i64 %index1710 ; 2 uses
  %i.afv = getelementptr i8, ptr %next.gep1711, i64 2
  %wide.load1714 = load <2 x i8>, ptr %next.gep1711, align 1, !tbaa !51, !alias.scope !234
  %wide.load1715 = load <2 x i8>, ptr %i.afv, align 1, !tbaa !51, !alias.scope !234
  %i.afw = getelementptr i8, ptr %next.gep1713, i64 2
  store <2 x i8> %wide.load1714, ptr %next.gep1713, align 4, !tbaa !51, !alias.scope !237, !noalias !234
  store <2 x i8> %wide.load1715, ptr %i.afw, align 2, !tbaa !51, !alias.scope !237, !noalias !234
  %index.next1716 = add nuw i64 %index1710, 4     ; 2 uses
  %i.afx = icmp eq i64 %index.next1716, %n.vec1708
  br i1 %i.afx, label %middle.block1717, label %vector.body1709, !llvm.loop !239

middle.block1717:                                 ; preds = %vector.body1709
  %i.afy = getelementptr i8, ptr %.promoted.i911, i64 %index1710
  %i.afz = getelementptr i8, ptr %i.afy, i64 4
  store ptr %i.afz, ptr %0, align 8, !tbaa !49, !alias.scope !240, !noalias !242
  %cmp.n1718 = icmp eq i64 %n.vec1708, %i.afo
  br i1 %cmp.n1718, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913.preheader2138

.lr.ph.i5.i913.preheader2138:                     ; preds = %vector.memcheck1687, %.lr.ph.i5.i913.preheader, %middle.block1717
  %.ph2139 = phi ptr [ %.promoted.i911, %vector.memcheck1687 ], [ %.promoted.i911, %.lr.ph.i5.i913.preheader ], [ %i.afr, %middle.block1717 ] ; 2 uses
  %.05.i6.i914.ph = phi i32 [ %.0.lcssa.i912, %vector.memcheck1687 ], [ %.0.lcssa.i912, %.lr.ph.i5.i913.preheader ], [ %i.aft, %middle.block1717 ] ; 4 uses
  %.024.i7.i915.ph = phi ptr [ %i.c, %vector.memcheck1687 ], [ %i.c, %.lr.ph.i5.i913.preheader ], [ %i.afu, %middle.block1717 ] ; 2 uses
  %i.aga = add nsw i32 %.05.i6.i914.ph, -1
  %xtraiter2200 = and i32 %.05.i6.i914.ph, 3      ; 2 uses
  %lcmp.mod2201.not = icmp eq i32 %xtraiter2200, 0
  br i1 %lcmp.mod2201.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol

.lr.ph.i5.i913.prol:                              ; preds = %.lr.ph.i5.i913.preheader2138, %.lr.ph.i5.i913.prol
  %i.agb = phi ptr [ %i.agd, %.lr.ph.i5.i913.prol ], [ %.ph2139, %.lr.ph.i5.i913.preheader2138 ] ; 2 uses
  %.05.i6.i914.prol = phi i32 [ %i.agc, %.lr.ph.i5.i913.prol ], [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2138 ]
  %.024.i7.i915.prol = phi ptr [ %i.agf, %.lr.ph.i5.i913.prol ], [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2138 ] ; 2 uses
  %prol.iter2202 = phi i32 [ %prol.iter2202.next, %.lr.ph.i5.i913.prol ], [ 0, %.lr.ph.i5.i913.preheader2138 ]
  %i.agc = add nsw i32 %.05.i6.i914.prol, -1      ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 1 ; 3 uses
  store ptr %i.agd, ptr %0, align 8, !tbaa !49
  %i.age = load i8, ptr %i.agb, align 1, !tbaa !51
  %i.agf = getelementptr inbounds nuw i8, ptr %.024.i7.i915.prol, i64 1 ; 2 uses
  store i8 %i.age, ptr %.024.i7.i915.prol, align 1, !tbaa !51
  %prol.iter2202.next = add i32 %prol.iter2202, 1 ; 2 uses
  %prol.iter2202.cmp.not = icmp eq i32 %prol.iter2202.next, %xtraiter2200
  br i1 %prol.iter2202.cmp.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol, !llvm.loop !243

.lr.ph.i5.i913.prol.loopexit:                     ; preds = %.lr.ph.i5.i913.prol, %.lr.ph.i5.i913.preheader2138
  %.unr2203 = phi ptr [ %.ph2139, %.lr.ph.i5.i913.preheader2138 ], [ %i.agd, %.lr.ph.i5.i913.prol ]
  %.05.i6.i914.unr = phi i32 [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2138 ], [ %i.agc, %.lr.ph.i5.i913.prol ]
  %.024.i7.i915.unr = phi ptr [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2138 ], [ %i.agf, %.lr.ph.i5.i913.prol ]
  %i.agg = icmp ult i32 %i.aga, 3
  br i1 %i.agg, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913

.lr.ph.i5.i913:                                   ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913
  %i.agh = phi ptr [ %i.ags, %.lr.ph.i5.i913 ], [ %.unr2203, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %.05.i6.i914 = phi i32 [ %i.agr, %.lr.ph.i5.i913 ], [ %.05.i6.i914.unr, %.lr.ph.i5.i913.prol.loopexit ]
  %.024.i7.i915 = phi ptr [ %i.agu, %.lr.ph.i5.i913 ], [ %.024.i7.i915.unr, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 1 ; 2 uses
  store ptr %i.agi, ptr %0, align 8, !tbaa !49
  %i.agj = load i8, ptr %i.agh, align 1, !tbaa !51
  %i.agk = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 1
  store i8 %i.agj, ptr %.024.i7.i915, align 1, !tbaa !51
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 2 ; 2 uses
  store ptr %i.agl, ptr %0, align 8, !tbaa !49
  %i.agm = load i8, ptr %i.agi, align 1, !tbaa !51
  %i.agn = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 2
  store i8 %i.agm, ptr %i.agk, align 1, !tbaa !51
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agh, i64 3 ; 2 uses
  store ptr %i.ago, ptr %0, align 8, !tbaa !49
  %i.agp = load i8, ptr %i.agl, align 1, !tbaa !51
  %i.agq = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 3
  store i8 %i.agp, ptr %i.agn, align 1, !tbaa !51
  %i.agr = add nsw i32 %.05.i6.i914, -4           ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agh, i64 4 ; 2 uses
  store ptr %i.ags, ptr %0, align 8, !tbaa !49
  %i.agt = load i8, ptr %i.ago, align 1, !tbaa !51
  %i.agu = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 4
  store i8 %i.agt, ptr %i.agq, align 1, !tbaa !51
  %.not.i8.i916.3 = icmp eq i32 %i.agr, 0
  br i1 %.not.i8.i916.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913, !llvm.loop !244

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925: ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913, %middle.block1717, %._crit_edge.i910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit1051

.loopexit1051:                                    ; preds = %bb.ay, %.preheader1050, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925
  %indvars.iv.next1374 = add nsw i64 %indvars.iv1373, 1 ; 2 uses
  %lftr.wideiv1376 = trunc i64 %indvars.iv.next1374 to i32
  %exitcond1377.not = icmp eq i32 %i.adn, %lftr.wideiv1376
  br i1 %exitcond1377.not, label %.loopexit1022, label %bb.ax, !llvm.loop !245

bb.ba:                                            ; preds = %.lr.ph1204, %.loopexit1055
  %indvars.iv1367 = phi i64 [ %i.acw, %.lr.ph1204 ], [ %indvars.iv.next1368, %.loopexit1055 ] ; 3 uses
  %i.agv = sub nsw i64 %indvars.iv1367, %i.acx
  %i.agw = mul nsw i64 %13, %i.agv
  %i.agx = getelementptr inbounds i8, ptr %i.aco, i64 %i.agw
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !49 ; 3 uses
  %i.agz = sub nsw i64 %indvars.iv1367, %i.acy
  %i.aha = mul nsw i64 %i.acu, %i.agz
  %i.ahb = getelementptr inbounds i8, ptr %i.act, i64 %i.aha
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !3 ; 7 uses
  %.not746 = icmp eq ptr %i.agy, null
  br i1 %.not746, label %bb.bc, label %.preheader1054

.preheader1054:                                   ; preds = %bb.ba
  %i.ahd = icmp sgt i32 %i.ahc, 0
  br i1 %i.ahd, label %.lr.ph1200, label %.loopexit1055

.lr.ph1200:                                       ; preds = %.preheader1054
  %.promoted1201 = load ptr, ptr %0, align 8, !tbaa !49 ; 2 uses
  %xtraiter2188 = and i32 %i.ahc, 1
  %i.ahe = icmp eq i32 %i.ahc, 1
  br i1 %i.ahe, label %.epil.preheader, label %.lr.ph1200.new

.lr.ph1200.new:                                   ; preds = %.lr.ph1200
  %unroll_iter2194 = and i32 %i.ahc, 2147483646
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph1200.new
  %i.ahf = phi ptr [ %.promoted1201, %.lr.ph1200.new ], [ %i.ahq, %bb.bb ] ; 5 uses
  %.06851198 = phi ptr [ %i.agy, %.lr.ph1200.new ], [ %i.ahv, %bb.bb ] ; 2 uses
  %niter2195 = phi i32 [ 0, %.lr.ph1200.new ], [ %niter2195.next.1, %bb.bb ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 1 ; 2 uses
  store ptr %i.ahg, ptr %0, align 8, !tbaa !49
  %i.ahh = load i8, ptr %i.ahf, align 1, !tbaa !51
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 2 ; 2 uses
  store ptr %i.ahi, ptr %0, align 8, !tbaa !49
  %i.ahj = load i8, ptr %i.ahg, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927 = zext i8 %i.ahj to i64
  %.sroa.0.0.insert.ext.i929 = zext i8 %i.ahh to i64
  %.idx = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927, 10
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.idx
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %.sroa.0.0.insert.ext.i929
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !51
  store float %i.ahm, ptr %.06851198, align 4, !tbaa !46
  %i.ahn = getelementptr inbounds i8, ptr %.06851198, i64 %12 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahf, i64 3 ; 2 uses
  store ptr %i.aho, ptr %0, align 8, !tbaa !49
  %i.ahp = load i8, ptr %i.ahi, align 1, !tbaa !51
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4 ; 3 uses
  store ptr %i.ahq, ptr %0, align 8, !tbaa !49
  %i.ahr = load i8, ptr %i.aho, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927.1 = zext i8 %i.ahr to i64
  %.sroa.0.0.insert.ext.i929.1 = zext i8 %i.ahp to i64
  %.idx.1 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.1, 10
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.idx.1
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %.sroa.0.0.insert.ext.i929.1
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !51
  store float %i.ahu, ptr %i.ahn, align 4, !tbaa !46
  %i.ahv = getelementptr inbounds i8, ptr %i.ahn, i64 %12 ; 2 uses
  %niter2195.next.1 = add nuw nsw i32 %niter2195, 2 ; 2 uses
  %niter2195.ncmp.1 = icmp eq i32 %niter2195.next.1, %unroll_iter2194
  br i1 %niter2195.ncmp.1, label %.loopexit1055.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !246

bb.bc:                                            ; preds = %bb.ba
  %i.ahw = shl i32 %i.ahc, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i931 = load ptr, ptr %0, align 8   ; 5 uses
  %i.ahx = icmp sgt i32 %i.ahc, 511
  br i1 %i.ahx, label %vector.memcheck1662, label %._crit_edge.i932

vector.memcheck1662:                              ; preds = %bb.bc
  %scevgep1665 = getelementptr i8, ptr %.promoted10.i931, i64 1024
  %48 = add i32 %i.ahw, 1023
  %smin1666 = call i32 @llvm.smin.i32(i32 %i.ahw, i32 2047)
  %49 = sub i32 %48, %smin1666
  %50 = and i32 %49, -1024
  %51 = zext i32 %50 to i64
  %scevgep1664 = getelementptr i8, ptr %scevgep1665, i64 %51 ; 2 uses
  %bound01668 = icmp ult ptr %0, %scevgep1664
  %bound11669 = icmp ult ptr %.promoted10.i931, %scevgep1628
  %found.conflict1670 = and i1 %bound01668, %bound11669
  %conflict.rdx1671 = or i1 %found.conflict1667, %found.conflict1670
  %bound01672 = icmp ult ptr %i.b, %scevgep1664
  %bound11673 = icmp ult ptr %.promoted10.i931, %scevgep1663
  %found.conflict1674 = and i1 %bound01672, %bound11673
  %conflict.rdx1675 = or i1 %conflict.rdx1671, %found.conflict1674
  br label %vector.memcheck1663

vector.memcheck1663:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946, %vector.memcheck1662
  %.013.i940 = phi i32 [ %i.aiy, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %i.ahw, %vector.memcheck1662 ] ; 2 uses
  %.promoted1112.i941 = phi ptr [ %.lcssa1579, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %.promoted10.i931, %vector.memcheck1662 ] ; 7 uses
  br i1 %conflict.rdx1675, label %.lr.ph.i.i942, label %vector.ph1677

vector.ph1677:                                    ; preds = %vector.memcheck1663
  %i.ahy = getelementptr i8, ptr %.promoted1112.i941, i64 1024
  br label %vector.body1678

vector.body1678:                                  ; preds = %vector.body1678, %vector.ph1677
  %index1679 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1685.3, %vector.body1678 ] ; 6 uses
  %next.gep1680 = getelementptr i8, ptr %.promoted1112.i941, i64 %index1679 ; 2 uses
  %next.gep1682 = getelementptr i8, ptr %i.b, i64 %index1679 ; 2 uses
  %i.ahz = getelementptr i8, ptr %next.gep1680, i64 2
  %wide.load1683 = load <2 x i8>, ptr %next.gep1680, align 1, !tbaa !51, !alias.scope !247
  %wide.load1684 = load <2 x i8>, ptr %i.ahz, align 1, !tbaa !51, !alias.scope !247
  %i.aia = getelementptr i8, ptr %next.gep1682, i64 2
  store <2 x i8> %wide.load1683, ptr %next.gep1682, align 16, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1684, ptr %i.aia, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1685 = or disjoint i64 %index1679, 4 ; 2 uses
  %next.gep1680.1 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1685 ; 2 uses
  %next.gep1682.1 = getelementptr i8, ptr %i.b, i64 %index.next1685 ; 2 uses
  %i.aib = getelementptr i8, ptr %next.gep1680.1, i64 2
  %wide.load1683.1 = load <2 x i8>, ptr %next.gep1680.1, align 1, !tbaa !51, !alias.scope !247
  %wide.load1684.1 = load <2 x i8>, ptr %i.aib, align 1, !tbaa !51, !alias.scope !247
  %i.aic = getelementptr i8, ptr %next.gep1682.1, i64 2
  store <2 x i8> %wide.load1683.1, ptr %next.gep1682.1, align 4, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1684.1, ptr %i.aic, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1685.1 = or disjoint i64 %index1679, 8 ; 2 uses
  %next.gep1680.2 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1685.1 ; 2 uses
  %next.gep1682.2 = getelementptr i8, ptr %i.b, i64 %index.next1685.1 ; 2 uses
  %i.aid = getelementptr i8, ptr %next.gep1680.2, i64 2
  %wide.load1683.2 = load <2 x i8>, ptr %next.gep1680.2, align 1, !tbaa !51, !alias.scope !247
  %wide.load1684.2 = load <2 x i8>, ptr %i.aid, align 1, !tbaa !51, !alias.scope !247
  %i.aie = getelementptr i8, ptr %next.gep1682.2, i64 2
  store <2 x i8> %wide.load1683.2, ptr %next.gep1682.2, align 8, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1684.2, ptr %i.aie, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1685.2 = or disjoint i64 %index1679, 12 ; 3 uses
  %next.gep1680.3 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1685.2 ; 2 uses
  %next.gep1682.3 = getelementptr i8, ptr %i.b, i64 %index.next1685.2 ; 2 uses
  %i.aif = getelementptr i8, ptr %next.gep1680.3, i64 2
  %wide.load1683.3 = load <2 x i8>, ptr %next.gep1680.3, align 1, !tbaa !51, !alias.scope !247
  %wide.load1684.3 = load <2 x i8>, ptr %i.aif, align 1, !tbaa !51, !alias.scope !247
  %i.aig = getelementptr i8, ptr %next.gep1682.3, i64 2
  store <2 x i8> %wide.load1683.3, ptr %next.gep1682.3, align 4, !tbaa !51, !alias.scope !250, !noalias !247
  store <2 x i8> %wide.load1684.3, ptr %i.aig, align 2, !tbaa !51, !alias.scope !250, !noalias !247
  %index.next1685.3 = add nuw nsw i64 %index1679, 16 ; 2 uses
  %i.aih = icmp eq i64 %index.next1685.3, 1024
  br i1 %i.aih, label %middle.block1686, label %vector.body1678, !llvm.loop !252

middle.block1686:                                 ; preds = %vector.body1678
  %i.aii = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1685.2
  %i.aij = getelementptr i8, ptr %i.aii, i64 4
  store ptr %i.aij, ptr %0, align 8, !tbaa !49, !alias.scope !253, !noalias !255
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946

.lr.ph.i.i942:                                    ; preds = %vector.memcheck1663, %.lr.ph.i.i942
  %i.aik = phi ptr [ %i.aiv, %.lr.ph.i.i942 ], [ %.promoted1112.i941, %vector.memcheck1663 ] ; 5 uses
  %.05.i.i943 = phi i32 [ %i.aiu, %.lr.ph.i.i942 ], [ 1024, %vector.memcheck1663 ]
  %.024.i.i944 = phi ptr [ %i.aix, %.lr.ph.i.i942 ], [ %i.b, %vector.memcheck1663 ] ; 5 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 1 ; 2 uses
  store ptr %i.ail, ptr %0, align 8, !tbaa !49
  %i.aim = load i8, ptr %i.aik, align 1, !tbaa !51
  %i.ain = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 1
  store i8 %i.aim, ptr %.024.i.i944, align 1, !tbaa !51
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aik, i64 2 ; 2 uses
  store ptr %i.aio, ptr %0, align 8, !tbaa !49
  %i.aip = load i8, ptr %i.ail, align 1, !tbaa !51
  %i.aiq = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 2
  store i8 %i.aip, ptr %i.ain, align 1, !tbaa !51
  %i.air = getelementptr inbounds nuw i8, ptr %i.aik, i64 3 ; 2 uses
  store ptr %i.air, ptr %0, align 8, !tbaa !49
  %i.ais = load i8, ptr %i.aio, align 1, !tbaa !51
  %i.ait = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 3
  store i8 %i.ais, ptr %i.aiq, align 1, !tbaa !51
  %i.aiu = add nsw i32 %.05.i.i943, -4            ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aik, i64 4 ; 3 uses
  store ptr %i.aiv, ptr %0, align 8, !tbaa !49
  %i.aiw = load i8, ptr %i.air, align 1, !tbaa !51
  %i.aix = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 4
  store i8 %i.aiw, ptr %i.ait, align 1, !tbaa !51
  %.not.i.i945.3 = icmp eq i32 %i.aiu, 0
  br i1 %.not.i.i945.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946, label %.lr.ph.i.i942, !llvm.loop !256

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946: ; preds = %.lr.ph.i.i942, %middle.block1686
  %.lcssa1579 = phi ptr [ %i.ahy, %middle.block1686 ], [ %i.aiv, %.lr.ph.i.i942 ] ; 2 uses
  %i.aiy = add nsw i32 %.013.i940, -1024          ; 2 uses
  %i.aiz = icmp sgt i32 %.013.i940, 2047
  br i1 %i.aiz, label %vector.memcheck1663, label %._crit_edge.i932, !llvm.loop !95

._crit_edge.i932:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946, %bb.bc
  %.promoted.i933 = phi ptr [ %.promoted10.i931, %bb.bc ], [ %.lcssa1579, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 8 uses
  %.0.lcssa.i934 = phi i32 [ %i.ahw, %bb.bc ], [ %i.aiy, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 7 uses
  %i.aja = icmp sgt i32 %.0.lcssa.i934, 0
  br i1 %i.aja, label %.lr.ph.i5.i935.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947

.lr.ph.i5.i935.preheader:                         ; preds = %._crit_edge.i932
  %i.ajb = zext nneg i32 %.0.lcssa.i934 to i64    ; 2 uses
  %min.iters.check1645 = icmp ult i32 %.0.lcssa.i934, 12
  br i1 %min.iters.check1645, label %.lr.ph.i5.i935.preheader2143, label %vector.memcheck1627

vector.memcheck1627:                              ; preds = %.lr.ph.i5.i935.preheader
  %i.ajc = add nsw i32 %.0.lcssa.i934, -1
  %i.ajd = zext i32 %i.ajc to i64                 ; 2 uses
  %scevgep1630 = getelementptr i8, ptr %scevgep1629, i64 %i.ajd ; 2 uses
  %scevgep1631 = getelementptr i8, ptr %.promoted.i933, i64 1
  %scevgep1632 = getelementptr i8, ptr %scevgep1631, i64 %i.ajd ; 2 uses
  %bound01633 = icmp ult ptr %0, %scevgep1630
  %found.conflict1635 = and i1 %bound01633, %bound11634
  %bound01636 = icmp ult ptr %0, %scevgep1632
  %bound11637 = icmp ult ptr %.promoted.i933, %scevgep1628
  %found.conflict1638 = and i1 %bound01636, %bound11637
  %conflict.rdx1639 = or i1 %found.conflict1635, %found.conflict1638
  %bound01640 = icmp ult ptr %i.b, %scevgep1632
  %bound11641 = icmp ult ptr %.promoted.i933, %scevgep1630
  %found.conflict1642 = and i1 %bound01640, %bound11641
  %conflict.rdx1643 = or i1 %conflict.rdx1639, %found.conflict1642
  br i1 %conflict.rdx1643, label %.lr.ph.i5.i935.preheader2143, label %vector.ph1646

vector.ph1646:                                    ; preds = %vector.memcheck1627
  %n.vec1648 = and i64 %i.ajb, 2147483644         ; 5 uses
  %i.aje = getelementptr i8, ptr %.promoted.i933, i64 %n.vec1648
  %i.ajf = trunc nuw nsw i64 %n.vec1648 to i32
  %i.ajg = sub nsw i32 %.0.lcssa.i934, %i.ajf
  %i.ajh = getelementptr i8, ptr %i.b, i64 %n.vec1648
  br label %vector.body1649

vector.body1649:                                  ; preds = %vector.body1649, %vector.ph1646
  %index1650 = phi i64 [ 0, %vector.ph1646 ], [ %index.next1656, %vector.body1649 ] ; 4 uses
  %next.gep1651 = getelementptr i8, ptr %.promoted.i933, i64 %index1650 ; 2 uses
  %next.gep1653 = getelementptr i8, ptr %i.b, i64 %index1650 ; 2 uses
  %i.aji = getelementptr i8, ptr %next.gep1651, i64 2
  %wide.load1654 = load <2 x i8>, ptr %next.gep1651, align 1, !tbaa !51, !alias.scope !257
  %wide.load1655 = load <2 x i8>, ptr %i.aji, align 1, !tbaa !51, !alias.scope !257
  %i.ajj = getelementptr i8, ptr %next.gep1653, i64 2
  store <2 x i8> %wide.load1654, ptr %next.gep1653, align 4, !tbaa !51, !alias.scope !260, !noalias !257
  store <2 x i8> %wide.load1655, ptr %i.ajj, align 2, !tbaa !51, !alias.scope !260, !noalias !257
  %index.next1656 = add nuw i64 %index1650, 4     ; 2 uses
  %i.ajk = icmp eq i64 %index.next1656, %n.vec1648
  br i1 %i.ajk, label %middle.block1657, label %vector.body1649, !llvm.loop !262

middle.block1657:                                 ; preds = %vector.body1649
  %i.ajl = getelementptr i8, ptr %.promoted.i933, i64 %index1650
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 4
  store ptr %i.ajm, ptr %0, align 8, !tbaa !49, !alias.scope !263, !noalias !265
  %cmp.n1658 = icmp eq i64 %n.vec1648, %i.ajb
  br i1 %cmp.n1658, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935.preheader2143

.lr.ph.i5.i935.preheader2143:                     ; preds = %vector.memcheck1627, %.lr.ph.i5.i935.preheader, %middle.block1657
  %.ph2144 = phi ptr [ %.promoted.i933, %vector.memcheck1627 ], [ %.promoted.i933, %.lr.ph.i5.i935.preheader ], [ %i.aje, %middle.block1657 ] ; 2 uses
  %.05.i6.i936.ph = phi i32 [ %.0.lcssa.i934, %vector.memcheck1627 ], [ %.0.lcssa.i934, %.lr.ph.i5.i935.preheader ], [ %i.ajg, %middle.block1657 ] ; 4 uses
  %.024.i7.i937.ph = phi ptr [ %i.b, %vector.memcheck1627 ], [ %i.b, %.lr.ph.i5.i935.preheader ], [ %i.ajh, %middle.block1657 ] ; 2 uses
  %i.ajn = add nsw i32 %.05.i6.i936.ph, -1
  %xtraiter2196 = and i32 %.05.i6.i936.ph, 3      ; 2 uses
  %lcmp.mod2197.not.a = icmp eq i32 %xtraiter2196, 0
  br i1 %lcmp.mod2197.not.a, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol

.lr.ph.i5.i935.prol:                              ; preds = %.lr.ph.i5.i935.preheader2143, %.lr.ph.i5.i935.prol
  %i.ajo = phi ptr [ %i.ajq, %.lr.ph.i5.i935.prol ], [ %.ph2144, %.lr.ph.i5.i935.preheader2143 ] ; 2 uses
  %.05.i6.i936.prol = phi i32 [ %i.ajp, %.lr.ph.i5.i935.prol ], [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2143 ]
  %.024.i7.i937.prol = phi ptr [ %i.ajs, %.lr.ph.i5.i935.prol ], [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2143 ] ; 2 uses
  %prol.iter2198 = phi i32 [ %prol.iter2198.next, %.lr.ph.i5.i935.prol ], [ 0, %.lr.ph.i5.i935.preheader2143 ]
  %i.ajp = add nsw i32 %.05.i6.i936.prol, -1      ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1 ; 3 uses
  store ptr %i.ajq, ptr %0, align 8, !tbaa !49
  %i.ajr = load i8, ptr %i.ajo, align 1, !tbaa !51
  %i.ajs = getelementptr inbounds nuw i8, ptr %.024.i7.i937.prol, i64 1 ; 2 uses
  store i8 %i.ajr, ptr %.024.i7.i937.prol, align 1, !tbaa !51
  %prol.iter2198.next = add i32 %prol.iter2198, 1 ; 2 uses
  %prol.iter2198.cmp.not = icmp eq i32 %prol.iter2198.next, %xtraiter2196
  br i1 %prol.iter2198.cmp.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol, !llvm.loop !266

.lr.ph.i5.i935.prol.loopexit:                     ; preds = %.lr.ph.i5.i935.prol, %.lr.ph.i5.i935.preheader2143
  %.unr2199 = phi ptr [ %.ph2144, %.lr.ph.i5.i935.preheader2143 ], [ %i.ajq, %.lr.ph.i5.i935.prol ]
  %.05.i6.i936.unr = phi i32 [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2143 ], [ %i.ajp, %.lr.ph.i5.i935.prol ]
  %.024.i7.i937.unr = phi ptr [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2143 ], [ %i.ajs, %.lr.ph.i5.i935.prol ]
  %i.ajt = icmp ult i32 %i.ajn, 3
  br i1 %i.ajt, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935

.lr.ph.i5.i935:                                   ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935
  %i.aju = phi ptr [ %i.akf, %.lr.ph.i5.i935 ], [ %.unr2199, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %.05.i6.i936 = phi i32 [ %i.ake, %.lr.ph.i5.i935 ], [ %.05.i6.i936.unr, %.lr.ph.i5.i935.prol.loopexit ]
  %.024.i7.i937 = phi ptr [ %i.akh, %.lr.ph.i5.i935 ], [ %.024.i7.i937.unr, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 1 ; 2 uses
  store ptr %i.ajv, ptr %0, align 8, !tbaa !49
  %i.ajw = load i8, ptr %i.aju, align 1, !tbaa !51
  %i.ajx = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 1
  store i8 %i.ajw, ptr %.024.i7.i937, align 1, !tbaa !51
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aju, i64 2 ; 2 uses
  store ptr %i.ajy, ptr %0, align 8, !tbaa !49
  %i.ajz = load i8, ptr %i.ajv, align 1, !tbaa !51
  %i.aka = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 2
  store i8 %i.ajz, ptr %i.ajx, align 1, !tbaa !51
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aju, i64 3 ; 2 uses
  store ptr %i.akb, ptr %0, align 8, !tbaa !49
  %i.akc = load i8, ptr %i.ajy, align 1, !tbaa !51
  %i.akd = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 3
  store i8 %i.akc, ptr %i.aka, align 1, !tbaa !51
  %i.ake = add nsw i32 %.05.i6.i936, -4           ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aju, i64 4 ; 2 uses
  store ptr %i.akf, ptr %0, align 8, !tbaa !49
  %i.akg = load i8, ptr %i.akb, align 1, !tbaa !51
  %i.akh = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 4
  store i8 %i.akg, ptr %i.akd, align 1, !tbaa !51
  %.not.i8.i938.3 = icmp eq i32 %i.ake, 0
  br i1 %.not.i8.i938.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935, !llvm.loop !267

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947: ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935, %middle.block1657, %._crit_edge.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit1055

.loopexit1055.loopexit.unr-lcssa:                 ; preds = %bb.bb
  %lcmp.mod2192.not = icmp eq i32 %xtraiter2188, 0
  br i1 %lcmp.mod2192.not, label %.loopexit1055, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1055.loopexit.unr-lcssa, %.lr.ph1200
  %.epil.init2191 = phi ptr [ %.promoted1201, %.lr.ph1200 ], [ %i.ahq, %.loopexit1055.loopexit.unr-lcssa ] ; 3 uses
  %.06851198.epil.init = phi ptr [ %i.agy, %.lr.ph1200 ], [ %i.ahv, %.loopexit1055.loopexit.unr-lcssa ]
  %lcmp.mod2193 = trunc i32 %i.ahc to i1
  call void @llvm.assume(i1 %lcmp.mod2193)
  %i.aki = getelementptr inbounds nuw i8, ptr %.epil.init2191, i64 1 ; 2 uses
  store ptr %i.aki, ptr %0, align 8, !tbaa !49
  %i.akj = load i8, ptr %.epil.init2191, align 1, !tbaa !51
  %i.akk = getelementptr inbounds nuw i8, ptr %.epil.init2191, i64 2
  store ptr %i.akk, ptr %0, align 8, !tbaa !49
  %i.akl = load i8, ptr %i.aki, align 1, !tbaa !51
  %.sroa.4.0.insert.ext.i927.epil = zext i8 %i.akl to i64
  %.sroa.0.0.insert.ext.i929.epil = zext i8 %i.akj to i64
  %.idx.epil = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.epil, 10
  %i.akm = getelementptr inbounds nuw i8, ptr %i.acv, i64 %.idx.epil
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %.sroa.0.0.insert.ext.i929.epil
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !51
  store float %i.ako, ptr %.06851198.epil.init, align 4, !tbaa !46
  br label %.loopexit1055

.loopexit1055:                                    ; preds = %.epil.preheader, %.loopexit1055.loopexit.unr-lcssa, %.preheader1054, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947
  %indvars.iv.next1368 = add nsw i64 %indvars.iv1367, 1 ; 2 uses
  %lftr.wideiv1370 = trunc i64 %indvars.iv.next1368 to i32
  %exitcond1371.not = icmp eq i32 %i.acz, %lftr.wideiv1370
  br i1 %exitcond1371.not, label %.loopexit1022, label %bb.ba, !llvm.loop !268

bb.bd:                                            ; preds = %.lr.ph1197, %.loopexit1059
  %indvars.iv1361 = phi i64 [ %i.ach, %.lr.ph1197 ], [ %indvars.iv.next1362, %.loopexit1059 ] ; 3 uses
  %i.akp = sub nsw i64 %indvars.iv1361, %i.aci
  %i.akq = mul nsw i64 %13, %i.akp
  %i.akr = getelementptr inbounds i8, ptr %i.aca, i64 %i.akq
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !49 ; 2 uses
  %i.akt = sub nsw i64 %indvars.iv1361, %i.acj
  %i.aku = mul nsw i64 %i.acg, %i.akt
  %i.akv = getelementptr inbounds i8, ptr %i.acf, i64 %i.aku
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !3 ; 4 uses
  %.not744 = icmp eq ptr %i.aks, null
  br i1 %.not744, label %bb.bf, label %.preheader1058

.preheader1058:                                   ; preds = %bb.bd
  %i.akx = icmp sgt i32 %i.akw, 0
  br i1 %i.akx, label %.lr.ph1194, label %.loopexit1059

.lr.ph1194:                                       ; preds = %.preheader1058
  %.promoted = load ptr, ptr %0, align 8, !tbaa !49
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph1194, %bb.be
  %i.aky = phi ptr [ %.promoted, %.lr.ph1194 ], [ %i.alf, %bb.be ] ; 5 uses
  %.06791193 = phi i32 [ 0, %.lr.ph1194 ], [ %i.ali, %bb.be ]
  %.06811192 = phi ptr [ %i.aks, %.lr.ph1194 ], [ %i.alh, %bb.be ] ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 1 ; 2 uses
  store ptr %i.akz, ptr %0, align 8, !tbaa !49
  %i.ala = load i8, ptr %i.aky, align 1, !tbaa !51
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 2 ; 2 uses
  store ptr %i.alb, ptr %0, align 8, !tbaa !49
  %i.alc = load i8, ptr %i.akz, align 1, !tbaa !51
  %i.ald = getelementptr inbounds nuw i8, ptr %i.aky, i64 3 ; 2 uses
  store ptr %i.ald, ptr %0, align 8, !tbaa !49
  %i.ale = load i8, ptr %i.alb, align 1, !tbaa !51
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aky, i64 4 ; 2 uses
  store ptr %i.alf, ptr %0, align 8, !tbaa !49
  %i.alg = load i8, ptr %i.ald, align 1, !tbaa !51
  %.sroa.6.0.insert.ext.i949 = zext i8 %i.alg to i32
  %.sroa.6.0.insert.shift.i950 = shl nuw i32 %.sroa.6.0.insert.ext.i949, 24
  %.sroa.5.0.insert.ext.i951 = zext i8 %i.ale to i32
  %.sroa.5.0.insert.shift.i952 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i951, 16
  %.sroa.4.0.insert.ext.i954 = zext i8 %i.alc to i32
  %.sroa.4.0.insert.shift.i955 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i954, 8
  %.sroa.0.0.insert.ext.i957 = zext i8 %i.ala to i32
  %.sroa.5.0.insert.insert.i953 = or disjoint i32 %.sroa.4.0.insert.shift.i955, %.sroa.0.0.insert.ext.i957
  %.sroa.4.0.insert.insert.i956 = or disjoint i32 %.sroa.5.0.insert.insert.i953, %.sroa.5.0.insert.shift.i952
  %.sroa.0.0.insert.insert.i958 = or disjoint i32 %.sroa.4.0.insert.insert.i956, %.sroa.6.0.insert.shift.i950
  store i32 %.sroa.0.0.insert.insert.i958, ptr %.06811192, align 4, !tbaa !46
  %i.alh = getelementptr inbounds i8, ptr %.06811192, i64 %12
  %i.ali = add nuw nsw i32 %.06791193, 1          ; 2 uses
  %exitcond1360.not = icmp eq i32 %i.ali, %i.akw
  br i1 %exitcond1360.not, label %.loopexit1059, label %bb.be, !llvm.loop !269

bb.bf:                                            ; preds = %bb.bd
  %i.alj = shl i32 %i.akw, 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i959 = load ptr, ptr %0, align 8   ; 5 uses
  %i.alk = icmp sgt i32 %i.akw, 255
  br i1 %i.alk, label %vector.memcheck1602.a, label %._crit_edge.i960

vector.memcheck1602.a:                            ; preds = %bb.bf
  %scevgep1604 = getelementptr i8, ptr %.promoted10.i959, i64 1024
  %52 = add i32 %i.alj, 1023
  %smin = call i32 @llvm.smin.i32(i32 %i.alj, i32 2047)
  %53 = sub i32 %52, %smin
  %54 = and i32 %53, -1024
  %55 = zext i32 %54 to i64
  %scevgep1604.a = getelementptr i8, ptr %scevgep1604, i64 %55 ; 2 uses
  %bound01608 = icmp ult ptr %0, %scevgep1604.a
  %bound11609 = icmp ult ptr %.promoted10.i959, %scevgep
  %found.conflict1610 = and i1 %bound01608, %bound11609
  %conflict.rdx1611 = or i1 %found.conflict1607, %found.conflict1610
  %bound01612 = icmp ult ptr %i.a, %scevgep1604.a
  %bound11613 = icmp ult ptr %.promoted10.i959, %scevgep1603
  %found.conflict1614 = and i1 %bound01612, %bound11613
  %conflict.rdx1615 = or i1 %conflict.rdx1611, %found.conflict1614
  br label %vector.memcheck1602

vector.memcheck1602:                              ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974, %vector.memcheck1602.a
  %.013.i968 = phi i32 [ %i.aml, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %i.alj, %vector.memcheck1602.a ] ; 2 uses
  %.promoted1112.i969 = phi ptr [ %.lcssa1581, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %.promoted10.i959, %vector.memcheck1602.a ] ; 7 uses
  br i1 %conflict.rdx1615, label %.lr.ph.i.i970, label %vector.ph1617

vector.ph1617:                                    ; preds = %vector.memcheck1602
  %i.all = getelementptr i8, ptr %.promoted1112.i969, i64 1024
  br label %vector.body1618

vector.body1618:                                  ; preds = %vector.body1618, %vector.ph1617
  %index1619 = phi i64 [ 0, %vector.ph1617 ], [ %index.next1625.3, %vector.body1618 ] ; 6 uses
  %next.gep1620 = getelementptr i8, ptr %.promoted1112.i969, i64 %index1619 ; 2 uses
  %next.gep1622 = getelementptr i8, ptr %i.a, i64 %index1619 ; 2 uses
  %i.alm = getelementptr i8, ptr %next.gep1620, i64 2
  %wide.load1623 = load <2 x i8>, ptr %next.gep1620, align 1, !tbaa !51, !alias.scope !270
  %wide.load1624 = load <2 x i8>, ptr %i.alm, align 1, !tbaa !51, !alias.scope !270
  %i.aln = getelementptr i8, ptr %next.gep1622, i64 2
  store <2 x i8> %wide.load1623, ptr %next.gep1622, align 16, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1624, ptr %i.aln, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1625 = or disjoint i64 %index1619, 4 ; 2 uses
  %next.gep1620.1 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1625 ; 2 uses
  %next.gep1622.1 = getelementptr i8, ptr %i.a, i64 %index.next1625 ; 2 uses
  %i.alo = getelementptr i8, ptr %next.gep1620.1, i64 2
  %wide.load1623.1 = load <2 x i8>, ptr %next.gep1620.1, align 1, !tbaa !51, !alias.scope !270
  %wide.load1624.1 = load <2 x i8>, ptr %i.alo, align 1, !tbaa !51, !alias.scope !270
  %i.alp = getelementptr i8, ptr %next.gep1622.1, i64 2
  store <2 x i8> %wide.load1623.1, ptr %next.gep1622.1, align 4, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1624.1, ptr %i.alp, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1625.1 = or disjoint i64 %index1619, 8 ; 2 uses
  %next.gep1620.2 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1625.1 ; 2 uses
  %next.gep1622.2 = getelementptr i8, ptr %i.a, i64 %index.next1625.1 ; 2 uses
  %i.alq = getelementptr i8, ptr %next.gep1620.2, i64 2
  %wide.load1623.2 = load <2 x i8>, ptr %next.gep1620.2, align 1, !tbaa !51, !alias.scope !270
  %wide.load1624.2 = load <2 x i8>, ptr %i.alq, align 1, !tbaa !51, !alias.scope !270
  %i.alr = getelementptr i8, ptr %next.gep1622.2, i64 2
  store <2 x i8> %wide.load1623.2, ptr %next.gep1622.2, align 8, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1624.2, ptr %i.alr, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1625.2 = or disjoint i64 %index1619, 12 ; 3 uses
  %next.gep1620.3 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1625.2 ; 2 uses
  %next.gep1622.3 = getelementptr i8, ptr %i.a, i64 %index.next1625.2 ; 2 uses
  %i.als = getelementptr i8, ptr %next.gep1620.3, i64 2
  %wide.load1623.3 = load <2 x i8>, ptr %next.gep1620.3, align 1, !tbaa !51, !alias.scope !270
  %wide.load1624.3 = load <2 x i8>, ptr %i.als, align 1, !tbaa !51, !alias.scope !270
  %i.alt = getelementptr i8, ptr %next.gep1622.3, i64 2
  store <2 x i8> %wide.load1623.3, ptr %next.gep1622.3, align 4, !tbaa !51, !alias.scope !273, !noalias !270
  store <2 x i8> %wide.load1624.3, ptr %i.alt, align 2, !tbaa !51, !alias.scope !273, !noalias !270
  %index.next1625.3 = add nuw nsw i64 %index1619, 16 ; 2 uses
  %i.alu = icmp eq i64 %index.next1625.3, 1024
  br i1 %i.alu, label %middle.block1626, label %vector.body1618, !llvm.loop !275

middle.block1626:                                 ; preds = %vector.body1618
  %i.alv = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1625.2
  %i.alw = getelementptr i8, ptr %i.alv, i64 4
  store ptr %i.alw, ptr %0, align 8, !tbaa !49, !alias.scope !276, !noalias !278
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974

.lr.ph.i.i970:                                    ; preds = %vector.memcheck1602, %.lr.ph.i.i970
  %i.alx = phi ptr [ %i.ami, %.lr.ph.i.i970 ], [ %.promoted1112.i969, %vector.memcheck1602 ] ; 5 uses
  %.05.i.i971 = phi i32 [ %i.amh, %.lr.ph.i.i970 ], [ 1024, %vector.memcheck1602 ]
  %.024.i.i972 = phi ptr [ %i.amk, %.lr.ph.i.i970 ], [ %i.a, %vector.memcheck1602 ] ; 5 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 1 ; 2 uses
  store ptr %i.aly, ptr %0, align 8, !tbaa !49
  %i.alz = load i8, ptr %i.alx, align 1, !tbaa !51
  %i.ama = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 1
  store i8 %i.alz, ptr %.024.i.i972, align 1, !tbaa !51
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 2 ; 2 uses
  store ptr %i.amb, ptr %0, align 8, !tbaa !49
  %i.amc = load i8, ptr %i.aly, align 1, !tbaa !51
  %i.amd = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 2
  store i8 %i.amc, ptr %i.ama, align 1, !tbaa !51
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 3 ; 2 uses
  store ptr %i.ame, ptr %0, align 8, !tbaa !49
  %i.amf = load i8, ptr %i.amb, align 1, !tbaa !51
  %i.amg = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 3
  store i8 %i.amf, ptr %i.amd, align 1, !tbaa !51
  %i.amh = add nsw i32 %.05.i.i971, -4            ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alx, i64 4 ; 3 uses
  store ptr %i.ami, ptr %0, align 8, !tbaa !49
  %i.amj = load i8, ptr %i.ame, align 1, !tbaa !51
  %i.amk = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 4
  store i8 %i.amj, ptr %i.amg, align 1, !tbaa !51
  %.not.i.i973.3 = icmp eq i32 %i.amh, 0
  br i1 %.not.i.i973.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974, label %.lr.ph.i.i970, !llvm.loop !279

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974: ; preds = %.lr.ph.i.i970, %middle.block1626
  %.lcssa1581 = phi ptr [ %i.all, %middle.block1626 ], [ %i.ami, %.lr.ph.i.i970 ] ; 2 uses
  %i.aml = add nsw i32 %.013.i968, -1024          ; 2 uses
  %i.amm = icmp sgt i32 %.013.i968, 2047
  br i1 %i.amm, label %vector.memcheck1602, label %._crit_edge.i960, !llvm.loop !95

._crit_edge.i960:                                 ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974, %bb.bf
  %.promoted.i961 = phi ptr [ %.promoted10.i959, %bb.bf ], [ %.lcssa1581, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 8 uses
  %.0.lcssa.i962 = phi i32 [ %i.alj, %bb.bf ], [ %i.aml, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 7 uses
  %i.amn = icmp sgt i32 %.0.lcssa.i962, 0
  br i1 %i.amn, label %.lr.ph.i5.i963.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975

.lr.ph.i5.i963.preheader:                         ; preds = %._crit_edge.i960
  %i.amo = zext nneg i32 %.0.lcssa.i962 to i64    ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i962, 12
  br i1 %min.iters.check, label %.lr.ph.i5.i963.preheader2148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i5.i963.preheader
  %i.amp = add nsw i32 %.0.lcssa.i962, -1
  %i.amq = zext i32 %i.amp to i64                 ; 2 uses
  %scevgep1587 = getelementptr i8, ptr %scevgep1586, i64 %i.amq ; 2 uses
  %scevgep1588 = getelementptr i8, ptr %.promoted.i961, i64 1
  %scevgep1589 = getelementptr i8, ptr %scevgep1588, i64 %i.amq ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep1587
  %found.conflict = and i1 %bound0, %bound1
  %bound01590 = icmp ult ptr %0, %scevgep1589
  %bound11591 = icmp ult ptr %.promoted.i961, %scevgep
  %found.conflict1592 = and i1 %bound01590, %bound11591
  %conflict.rdx = or i1 %found.conflict, %found.conflict1592
  %bound01593 = icmp ult ptr %i.a, %scevgep1589
  %bound11594 = icmp ult ptr %.promoted.i961, %scevgep1587
  %found.conflict1595 = and i1 %bound01593, %bound11594
  %conflict.rdx1596 = or i1 %conflict.rdx, %found.conflict1595
  br i1 %conflict.rdx1596, label %.lr.ph.i5.i963.preheader2148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amo, 2147483644             ; 5 uses
  %i.amr = getelementptr i8, ptr %.promoted.i961, i64 %n.vec
  %i.ams = trunc nuw nsw i64 %n.vec to i32
  %i.amt = sub nsw i32 %.0.lcssa.i962, %i.ams
  %i.amu = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.promoted.i961, i64 %index ; 2 uses
  %next.gep1598 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.amv = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !280
  %wide.load1599 = load <2 x i8>, ptr %i.amv, align 1, !tbaa !51, !alias.scope !280
  %i.amw = getelementptr i8, ptr %next.gep1598, i64 2
  store <2 x i8> %wide.load, ptr %next.gep1598, align 4, !tbaa !51, !alias.scope !283, !noalias !280
  store <2 x i8> %wide.load1599, ptr %i.amw, align 2, !tbaa !51, !alias.scope !283, !noalias !280
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.amx = icmp eq i64 %index.next, %n.vec
  br i1 %i.amx, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %i.amy = getelementptr i8, ptr %.promoted.i961, i64 %index
  %i.amz = getelementptr i8, ptr %i.amy, i64 4
  store ptr %i.amz, ptr %0, align 8, !tbaa !49, !alias.scope !286, !noalias !288
  %cmp.n = icmp eq i64 %n.vec, %i.amo
  br i1 %cmp.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963.preheader2148

.lr.ph.i5.i963.preheader2148:                     ; preds = %vector.memcheck, %.lr.ph.i5.i963.preheader, %middle.block
  %.ph2149 = phi ptr [ %.promoted.i961, %vector.memcheck ], [ %.promoted.i961, %.lr.ph.i5.i963.preheader ], [ %i.amr, %middle.block ] ; 2 uses
  %.05.i6.i964.ph = phi i32 [ %.0.lcssa.i962, %vector.memcheck ], [ %.0.lcssa.i962, %.lr.ph.i5.i963.preheader ], [ %i.amt, %middle.block ] ; 4 uses
  %.024.i7.i965.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i5.i963.preheader ], [ %i.amu, %middle.block ] ; 2 uses
  %i.ana = add nsw i32 %.05.i6.i964.ph, -1
  %xtraiter2185 = and i32 %.05.i6.i964.ph, 3      ; 2 uses
  %lcmp.mod2186.not = icmp eq i32 %xtraiter2185, 0
  br i1 %lcmp.mod2186.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol

.lr.ph.i5.i963.prol:                              ; preds = %.lr.ph.i5.i963.preheader2148, %.lr.ph.i5.i963.prol
  %i.anb = phi ptr [ %i.and, %.lr.ph.i5.i963.prol ], [ %.ph2149, %.lr.ph.i5.i963.preheader2148 ] ; 2 uses
  %.05.i6.i964.prol = phi i32 [ %i.anc, %.lr.ph.i5.i963.prol ], [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2148 ]
  %.024.i7.i965.prol = phi ptr [ %i.anf, %.lr.ph.i5.i963.prol ], [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2148 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i963.prol ], [ 0, %.lr.ph.i5.i963.preheader2148 ]
  %i.anc = add nsw i32 %.05.i6.i964.prol, -1      ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anb, i64 1 ; 3 uses
  store ptr %i.and, ptr %0, align 8, !tbaa !49
  %i.ane = load i8, ptr %i.anb, align 1, !tbaa !51
  %i.anf = getelementptr inbounds nuw i8, ptr %.024.i7.i965.prol, i64 1 ; 2 uses
  store i8 %i.ane, ptr %.024.i7.i965.prol, align 1, !tbaa !51
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter2185
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol, !llvm.loop !289

.lr.ph.i5.i963.prol.loopexit:                     ; preds = %.lr.ph.i5.i963.prol, %.lr.ph.i5.i963.preheader2148
  %.unr2187 = phi ptr [ %.ph2149, %.lr.ph.i5.i963.preheader2148 ], [ %i.and, %.lr.ph.i5.i963.prol ]
  %.05.i6.i964.unr = phi i32 [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2148 ], [ %i.anc, %.lr.ph.i5.i963.prol ]
  %.024.i7.i965.unr = phi ptr [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2148 ], [ %i.anf, %.lr.ph.i5.i963.prol ]
  %i.ang = icmp ult i32 %i.ana, 3
  br i1 %i.ang, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963

.lr.ph.i5.i963:                                   ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963
  %i.anh = phi ptr [ %i.ans, %.lr.ph.i5.i963 ], [ %.unr2187, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %.05.i6.i964 = phi i32 [ %i.anr, %.lr.ph.i5.i963 ], [ %.05.i6.i964.unr, %.lr.ph.i5.i963.prol.loopexit ]
  %.024.i7.i965 = phi ptr [ %i.anu, %.lr.ph.i5.i963 ], [ %.024.i7.i965.unr, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 1 ; 2 uses
  store ptr %i.ani, ptr %0, align 8, !tbaa !49
  %i.anj = load i8, ptr %i.anh, align 1, !tbaa !51
  %i.ank = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 1
  store i8 %i.anj, ptr %.024.i7.i965, align 1, !tbaa !51
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 2 ; 2 uses
  store ptr %i.anl, ptr %0, align 8, !tbaa !49
  %i.anm = load i8, ptr %i.ani, align 1, !tbaa !51
  %i.ann = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 2
  store i8 %i.anm, ptr %i.ank, align 1, !tbaa !51
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 3 ; 2 uses
  store ptr %i.ano, ptr %0, align 8, !tbaa !49
  %i.anp = load i8, ptr %i.anl, align 1, !tbaa !51
  %i.anq = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 3
  store i8 %i.anp, ptr %i.ann, align 1, !tbaa !51
  %i.anr = add nsw i32 %.05.i6.i964, -4           ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anh, i64 4 ; 2 uses
  store ptr %i.ans, ptr %0, align 8, !tbaa !49
  %i.ant = load i8, ptr %i.ano, align 1, !tbaa !51
  %i.anu = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 4
  store i8 %i.ant, ptr %i.anq, align 1, !tbaa !51
  %.not.i8.i966.3 = icmp eq i32 %i.anr, 0
  br i1 %.not.i8.i966.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963, !llvm.loop !290

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975: ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963, %middle.block, %._crit_edge.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit1059

.loopexit1059:                                    ; preds = %bb.be, %.preheader1058, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975
  %indvars.iv.next1362 = add nsw i64 %indvars.iv1361, 1 ; 2 uses
  %lftr.wideiv1364 = trunc i64 %indvars.iv.next1362 to i32
  %exitcond1365.not = icmp eq i32 %i.ack, %lftr.wideiv1364
  br i1 %exitcond1365.not, label %.loopexit1022, label %bb.bd, !llvm.loop !291

bb.bg:                                            ; preds = %bb.aw
  %i.anv = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.anv, ptr noundef nonnull @.str.9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @__cxa_throw(ptr nonnull %i.anv, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.anw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bj:                                            ; preds = %bb.z
  %i.anx = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.anx, ptr noundef nonnull @.str.9)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @__cxa_throw(ptr nonnull %i.anx, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bm:                                            ; preds = %bb.y
  switch i32 %18, label %bb.cr [
    i32 0, label %bb.bn
    i32 1, label %bb.bx
    i32 2, label %bb.ch
  ]

bb.bn:                                            ; preds = %bb.bm
  switch i32 %19, label %bb.bu [
    i32 0, label %.preheader1065
    i32 1, label %.preheader1069
    i32 2, label %.preheader1073
  ]

.preheader1073:                                   ; preds = %bb.bn
  %.not7371177 = icmp sgt i32 %6, %7
  br i1 %.not7371177, label %.loopexit1022, label %.lr.ph1179

.lr.ph1179:                                       ; preds = %.preheader1073
  %i.anz = sub nsw i32 %5, %11
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = mul nsw i64 %14, %i.aoa
  %i.aoc = getelementptr inbounds i8, ptr %1, i64 %i.aob
  %i.aod = sub nsw i32 %5, %9
  %i.aoe = sext i32 %i.aod to i64
  %sext992 = shl i64 %4, 32
  %i.aof = ashr exact i64 %sext992, 32
  %i.aog = mul nsw i64 %i.aof, %i.aoe
  %i.aoh = getelementptr inbounds i8, ptr %2, i64 %i.aog
  %sext993 = shl i64 %3, 32
  %i.aoi = ashr exact i64 %sext993, 32
  %i.aoj = sext i32 %6 to i64
  %i.aok = sext i32 %10 to i64
  %i.aol = sext i32 %8 to i64
  %i.aom = add i32 %7, 1
  br label %bb.bs

.preheader1069:                                   ; preds = %bb.bn
  %.not7391183 = icmp sgt i32 %6, %7
  br i1 %.not7391183, label %.loopexit1022, label %.lr.ph1185

.lr.ph1185:                                       ; preds = %.preheader1069
  %i.aon = sub nsw i32 %5, %11
  %i.aoo = sext i32 %i.aon to i64
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_523copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
  %unroll_iter = and i32 %i.baj, 2147483644
  br label %.lr.ph1124

.lr.ph1124:                                       ; preds = %.lr.ph1124, %.lr.ph1124.preheader.new
  %i.bam = phi ptr [ %.promoted11281131, %.lr.ph1124.preheader.new ], [ %i.bbj, %.lr.ph1124 ] ; 5 uses
  %.06401122 = phi ptr [ %i.baf, %.lr.ph1124.preheader.new ], [ %i.bbk, %.lr.ph1124 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph1124.preheader.new ], [ %niter.next.3, %.lr.ph1124 ]
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !43
  %i.bao = zext i16 %i.ban to i64
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bao
  %i.baq = load float, ptr %i.bap, align 4, !tbaa !51
  store float %i.baq, ptr %.06401122, align 4, !tbaa !46
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bam, i64 2 ; 2 uses
  store ptr %i.bar, ptr %0, align 8, !tbaa !49
  %i.bas = getelementptr inbounds i8, ptr %.06401122, i64 %12 ; 2 uses
  %i.bat = load i16, ptr %i.bar, align 2, !tbaa !43
  %i.bau = zext i16 %i.bat to i64
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bau
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !51
  store float %i.baw, ptr %i.bas, align 4, !tbaa !46
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bam, i64 4 ; 2 uses
  store ptr %i.bax, ptr %0, align 8, !tbaa !49
  %i.bay = getelementptr inbounds i8, ptr %i.bas, i64 %12 ; 2 uses
  %i.baz = load i16, ptr %i.bax, align 2, !tbaa !43
  %i.bba = zext i16 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bba
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !51
  store float %i.bbc, ptr %i.bay, align 4, !tbaa !46
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bam, i64 6 ; 2 uses
  store ptr %i.bbd, ptr %0, align 8, !tbaa !49
  %i.bbe = getelementptr inbounds i8, ptr %i.bay, i64 %12 ; 2 uses
  %i.bbf = load i16, ptr %i.bbd, align 2, !tbaa !43
  %i.bbg = zext i16 %i.bbf to i64
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bbg
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !51
  store float %i.bbi, ptr %i.bbe, align 4, !tbaa !46
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bam, i64 8 ; 4 uses
  store ptr %i.bbj, ptr %0, align 8, !tbaa !49
  %i.bbk = getelementptr inbounds i8, ptr %i.bbe, i64 %12 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit1092.loopexit.unr-lcssa, label %.lr.ph1124, !llvm.loop !308

bb.cl:                                            ; preds = %bb.ck
  %i.bbl = sext i32 %i.baj to i64
  %i.bbm = shl nsw i64 %i.bbl, 1
  %i.bbn = getelementptr inbounds nuw i8, ptr %.promoted11281131, i64 %i.bbm ; 2 uses
  store ptr %i.bbn, ptr %0, align 8, !tbaa !49
  br label %.loopexit1092

.loopexit1092.loopexit.unr-lcssa:                 ; preds = %.lr.ph1124
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1092, label %.lr.ph1124.epil.preheader

.lr.ph1124.epil.preheader:                        ; preds = %.loopexit1092.loopexit.unr-lcssa, %.lr.ph1124.preheader
  %.epil.init = phi ptr [ %.promoted11281131, %.lr.ph1124.preheader ], [ %i.bbj, %.loopexit1092.loopexit.unr-lcssa ]
  %.06401122.epil.init = phi ptr [ %i.baf, %.lr.ph1124.preheader ], [ %i.bbk, %.loopexit1092.loopexit.unr-lcssa ]
  %lcmp.mod2166 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2166)
  br label %.lr.ph1124.epil

.lr.ph1124.epil:                                  ; preds = %.lr.ph1124.epil, %.lr.ph1124.epil.preheader
  %i.bbo = phi ptr [ %i.bbt, %.lr.ph1124.epil ], [ %.epil.init, %.lr.ph1124.epil.preheader ] ; 2 uses
  %.06401122.epil = phi ptr [ %i.bbu, %.lr.ph1124.epil ], [ %.06401122.epil.init, %.lr.ph1124.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1124.epil ], [ 0, %.lr.ph1124.epil.preheader ]
  %i.bbp = load i16, ptr %i.bbo, align 2, !tbaa !43
  %i.bbq = zext i16 %i.bbp to i64
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bbq
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !51
  store float %i.bbs, ptr %.06401122.epil, align 4, !tbaa !46
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbo, i64 2 ; 3 uses
  store ptr %i.bbt, ptr %0, align 8, !tbaa !49
  %i.bbu = getelementptr inbounds i8, ptr %.06401122.epil, i64 %12
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit1092, label %.lr.ph1124.epil, !llvm.loop !309

.loopexit1092:                                    ; preds = %.loopexit1092.loopexit.unr-lcssa, %.lr.ph1124.epil, %.preheader1091, %bb.cl
  %.promoted1126 = phi ptr [ %i.bbn, %bb.cl ], [ %.promoted11281131, %.preheader1091 ], [ %i.bbj, %.loopexit1092.loopexit.unr-lcssa ], [ %i.bbt, %.lr.ph1124.epil ]
  %indvars.iv.next1312 = add nsw i64 %indvars.iv1311, 1 ; 2 uses
  %lftr.wideiv1314 = trunc i64 %indvars.iv.next1312 to i32
  %exitcond1315.not = icmp eq i32 %i.aye, %lftr.wideiv1314
  br i1 %exitcond1315.not, label %.loopexit1022, label %bb.ck, !llvm.loop !310

bb.cm:                                            ; preds = %.lr.ph, %.loopexit1097
  %indvars.iv = phi i64 [ %i.axm, %.lr.ph ], [ %indvars.iv.next, %.loopexit1097 ] ; 3 uses
  %i.bbv = sub nsw i64 %indvars.iv, %i.axn
  %i.bbw = mul nsw i64 %13, %i.bbv
  %i.bbx = getelementptr inbounds i8, ptr %i.axf, i64 %i.bbw
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !49 ; 2 uses
  %i.bbz = sub nsw i64 %indvars.iv, %i.axo
  %i.bca = mul nsw i64 %i.axl, %i.bbz
  %i.bcb = getelementptr inbounds i8, ptr %i.axk, i64 %i.bca
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !3 ; 3 uses
  %.not726 = icmp eq ptr %i.bby, null
  br i1 %.not726, label %bb.cn, label %.preheader1096

.preheader1096:                                   ; preds = %bb.cm
  %i.bcd = icmp sgt i32 %i.bcc, 0
  br i1 %i.bcd, label %.preheader1095.preheader, label %.loopexit1097

.preheader1095.preheader:                         ; preds = %.preheader1096
  %.pre = load ptr, ptr %0, align 8, !tbaa !49
  br label %.preheader1095

.preheader1095:                                   ; preds = %.preheader1095.preheader, %.preheader1095
  %i.bce = phi ptr [ %i.bct, %.preheader1095 ], [ %.pre, %.preheader1095.preheader ]
  %.06351119 = phi i32 [ %i.bcv, %.preheader1095 ], [ 0, %.preheader1095.preheader ]
  %.06371118 = phi ptr [ %i.bcu, %.preheader1095 ], [ %i.bby, %.preheader1095.preheader ] ; 5 uses
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !51
  store i8 %i.bcf, ptr %.06371118, align 1, !tbaa !51
  %i.bcg = load ptr, ptr %0, align 8, !tbaa !49
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 1
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !51
  %i.bcj = getelementptr inbounds nuw i8, ptr %.06371118, i64 1
  store i8 %i.bci, ptr %i.bcj, align 1, !tbaa !51
  %i.bck = load ptr, ptr %0, align 8, !tbaa !49
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 2
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !51
  %i.bcn = getelementptr inbounds nuw i8, ptr %.06371118, i64 2
  store i8 %i.bcm, ptr %i.bcn, align 1, !tbaa !51
  %i.bco = load ptr, ptr %0, align 8, !tbaa !49
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 3
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !51
  %i.bcr = getelementptr inbounds nuw i8, ptr %.06371118, i64 3
  store i8 %i.bcq, ptr %i.bcr, align 1, !tbaa !51
  %i.bcs = load ptr, ptr %0, align 8, !tbaa !49
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 4 ; 2 uses
  store ptr %i.bct, ptr %0, align 8, !tbaa !49
  %i.bcu = getelementptr inbounds i8, ptr %.06371118, i64 %12
  %i.bcv = add nuw nsw i32 %.06351119, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bcv, %i.bcc
  br i1 %exitcond.not, label %.loopexit1097, label %.preheader1095, !llvm.loop !311

bb.cn:                                            ; preds = %bb.cm
  %i.bcw = sext i32 %i.bcc to i64
  %i.bcx = shl nsw i64 %i.bcw, 2
  %i.bcy = load ptr, ptr %0, align 8, !tbaa !49
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 %i.bcx
  store ptr %i.bcz, ptr %0, align 8, !tbaa !49
  br label %.loopexit1097

.loopexit1097:                                    ; preds = %.preheader1095, %.preheader1096, %bb.cn
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond1309.not = icmp eq i32 %i.axp, %lftr.wideiv
  br i1 %exitcond1309.not, label %.loopexit1022, label %bb.cm, !llvm.loop !312

bb.co:                                            ; preds = %bb.ch
  %i.bda = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bda, ptr noundef nonnull @.str.9)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  tail call void @__cxa_throw(ptr nonnull %i.bda, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.bdb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.bm
  %i.bdc = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bdc, ptr noundef nonnull @.str.9)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @__cxa_throw(ptr nonnull %i.bdc, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.bdd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit1022:                                    ; preds = %.loopexit1097, %.loopexit1092, %.loopexit1088, %.loopexit1084, %.loopexit1080, %.loopexit1076, %.loopexit1072, %.loopexit1068, %.loopexit1064, %.loopexit1059, %.loopexit1055, %.loopexit1051, %.loopexit1047, %.loopexit1043, %.loopexit1039, %.loopexit1035, %.loopexit1031, %.loopexit1027, %.loopexit1025, %.loopexit1023, %.loopexit, %.preheader1098, %.preheader1093, %.preheader1089, %.preheader1085, %.preheader1081, %.preheader1077, %.preheader1073, %.preheader1069, %.preheader1065, %.preheader1060, %.preheader1056, %.preheader1052, %.preheader1048, %.preheader1044, %.preheader1040, %.preheader1036, %.preheader1032, %.preheader1028, %bb.s, %_ZN9Imath_3_14halfC2Ef.exit, %bb.c
  ret void

bb.cu:                                            ; preds = %bb.ct, %bb.cq, %bb.cg, %bb.bw, %bb.bl, %bb.bi, %bb.av, %bb.ak, %bb.x
  %.sink = phi ptr [ %i.bdc, %bb.ct ], [ %i.bda, %bb.cq ], [ %i.axa, %bb.cg ], [ %i.asg, %bb.bw ], [ %i.anx, %bb.bl ], [ %i.anv, %bb.bi ], [ %i.abv, %bb.av ], [ %i.qf, %bb.ak ], [ %i.ex, %bb.x ]
  %.pn = phi { ptr, i32 } [ %i.bdd, %bb.ct ], [ %i.bdb, %bb.cq ], [ %i.axb, %bb.cg ], [ %i.ash, %bb.bw ], [ %i.any, %bb.bl ], [ %i.anw, %bb.bi ], [ %i.abw, %bb.av ], [ %i.qg, %bb.ak ], [ %i.ey, %bb.x ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_511skipChannelERPKcNS_9PixelTypeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca [1024 x i8], align 16             ; 17 uses
  %i.c = alloca [1024 x i8], align 16             ; 17 uses
  switch i32 %1, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32
  %i.e = shl i32 %i.d, 2                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 5 uses
  %i.f = icmp sgt i32 %i.e, 1023
  br i1 %i.f, label %vector.memcheck165, label %._crit_edge.i

vector.memcheck165:                               ; preds = %bb.b
  %scevgep167 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep168 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %3 = add nuw i32 %i.e, 1023
  %smin169 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 2047)
  %4 = sub i32 %3, %smin169
  %5 = and i32 %4, -1024
  %6 = zext i32 %5 to i64
  %7 = getelementptr i8, ptr %.promoted10.i, i64 %6
  %scevgep168.a = getelementptr i8, ptr %7, i64 1024 ; 2 uses
  %bound0171 = icmp ult ptr %0, %scevgep168
  %bound1172 = icmp ult ptr %i.c, %scevgep167
  %found.conflict173 = and i1 %bound0171, %bound1172
  %bound0172 = icmp ult ptr %0, %scevgep168.a
  %bound1173 = icmp ult ptr %.promoted10.i, %scevgep167
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %found.conflict173, %found.conflict174
  %bound0176 = icmp ult ptr %i.c, %scevgep168.a
  %bound1177 = icmp ult ptr %.promoted10.i, %scevgep168
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br label %vector.memcheck166

vector.memcheck166:                               ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %vector.memcheck165
  %.013.i = phi i32 [ %i.ag, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.e, %vector.memcheck165 ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %vector.memcheck165 ] ; 7 uses
  br i1 %conflict.rdx179, label %.lr.ph.i.i, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck166
  %i.g = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph181
  %index183 = phi i64 [ 0, %vector.ph181 ], [ %index.next189.3, %vector.body182 ] ; 6 uses
  %next.gep184 = getelementptr i8, ptr %.promoted1112.i, i64 %index183 ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.c, i64 %index183 ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep184, i64 2
  %wide.load187 = load <2 x i8>, ptr %next.gep184, align 1, !tbaa !51, !alias.scope !313
  %wide.load188 = load <2 x i8>, ptr %i.h, align 1, !tbaa !51, !alias.scope !313
  %i.i = getelementptr i8, ptr %next.gep186, i64 2
  store <2 x i8> %wide.load187, ptr %next.gep186, align 16, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188, ptr %i.i, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189 = or disjoint i64 %index183, 4   ; 2 uses
  %next.gep184.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189 ; 2 uses
  %next.gep186.1 = getelementptr i8, ptr %i.c, i64 %index.next189 ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep184.1, i64 2
  %wide.load187.1 = load <2 x i8>, ptr %next.gep184.1, align 1, !tbaa !51, !alias.scope !313
  %wide.load188.1 = load <2 x i8>, ptr %i.j, align 1, !tbaa !51, !alias.scope !313
  %i.k = getelementptr i8, ptr %next.gep186.1, i64 2
  store <2 x i8> %wide.load187.1, ptr %next.gep186.1, align 4, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188.1, ptr %i.k, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189.1 = or disjoint i64 %index183, 8 ; 2 uses
  %next.gep184.2 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189.1 ; 2 uses
  %next.gep186.2 = getelementptr i8, ptr %i.c, i64 %index.next189.1 ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep184.2, i64 2
  %wide.load187.2 = load <2 x i8>, ptr %next.gep184.2, align 1, !tbaa !51, !alias.scope !313
  %wide.load188.2 = load <2 x i8>, ptr %i.l, align 1, !tbaa !51, !alias.scope !313
  %i.m = getelementptr i8, ptr %next.gep186.2, i64 2
  store <2 x i8> %wide.load187.2, ptr %next.gep186.2, align 8, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188.2, ptr %i.m, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189.2 = or disjoint i64 %index183, 12 ; 3 uses
  %next.gep184.3 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189.2 ; 2 uses
  %next.gep186.3 = getelementptr i8, ptr %i.c, i64 %index.next189.2 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep184.3, i64 2
  %wide.load187.3 = load <2 x i8>, ptr %next.gep184.3, align 1, !tbaa !51, !alias.scope !313
  %wide.load188.3 = load <2 x i8>, ptr %i.n, align 1, !tbaa !51, !alias.scope !313
  %i.o = getelementptr i8, ptr %next.gep186.3, i64 2
  store <2 x i8> %wide.load187.3, ptr %next.gep186.3, align 4, !tbaa !51, !alias.scope !316, !noalias !313
  store <2 x i8> %wide.load188.3, ptr %i.o, align 2, !tbaa !51, !alias.scope !316, !noalias !313
  %index.next189.3 = add nuw nsw i64 %index183, 16 ; 2 uses
  %i.p = icmp eq i64 %index.next189.3, 1024
  br i1 %i.p, label %middle.block190, label %vector.body182, !llvm.loop !318

middle.block190:                                  ; preds = %vector.body182
  %i.q = getelementptr i8, ptr %.promoted1112.i, i64 %index.next189.2
  %i.r = getelementptr i8, ptr %i.q, i64 4
  store ptr %i.r, ptr %0, align 8, !tbaa !49, !alias.scope !319, !noalias !321
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i

.lr.ph.i.i:                                       ; preds = %vector.memcheck166, %.lr.ph.i.i
  %i.s = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck166 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.ac, %.lr.ph.i.i ], [ 1024, %vector.memcheck166 ]
  %.024.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.c, %vector.memcheck166 ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !49
  %i.u = load i8, ptr %i.s, align 1, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.u, ptr %.024.i.i, align 1, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !49
  %i.x = load i8, ptr %i.t, align 1, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.x, ptr %i.v, align 1, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !49
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !51
  %i.ac = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !49
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !51
  %.not.i.i.3 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !322

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i: ; preds = %.lr.ph.i.i, %middle.block190
  %.lcssa = phi ptr [ %i.g, %middle.block190 ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  %i.ag = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ah = icmp sgt i32 %.013.i, 2047
  br i1 %i.ah, label %vector.memcheck166, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i, %bb.b
  %.promoted.i = phi ptr [ %.promoted10.i, %bb.b ], [ %.lcssa, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.ag, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.ai = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.ai, label %.lr.ph.i5.i.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.aj = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check207 = icmp ult i32 %.0.lcssa.i, 26
  br i1 %min.iters.check207, label %.lr.ph.i5.i.preheader224, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i5.i.preheader
  %scevgep192 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %scevgep193 = getelementptr i8, ptr %i.c, i64 %i.ak ; 2 uses
  %scevgep194 = getelementptr i8, ptr %.promoted.i, i64 %i.ak ; 2 uses
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
  %n.vec210 = and i64 %i.aj, 2147483644           ; 5 uses
  %i.al = getelementptr i8, ptr %.promoted.i, i64 %n.vec210
  %i.am = trunc nuw nsw i64 %n.vec210 to i32
  %i.an = sub nsw i32 %.0.lcssa.i, %i.am
  %i.ao = getelementptr i8, ptr %i.c, i64 %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph208
  %index212 = phi i64 [ 0, %vector.ph208 ], [ %index.next218, %vector.body211 ] ; 4 uses
  %next.gep213 = getelementptr i8, ptr %.promoted.i, i64 %index212 ; 2 uses
  %next.gep215 = getelementptr i8, ptr %i.c, i64 %index212 ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep213, i64 2
  %wide.load216 = load <2 x i8>, ptr %next.gep213, align 1, !tbaa !51, !alias.scope !323
  %wide.load217 = load <2 x i8>, ptr %i.ap, align 1, !tbaa !51, !alias.scope !323
  %i.aq = getelementptr i8, ptr %next.gep215, i64 2
  store <2 x i8> %wide.load216, ptr %next.gep215, align 4, !tbaa !51, !alias.scope !326, !noalias !323
  store <2 x i8> %wide.load217, ptr %i.aq, align 2, !tbaa !51, !alias.scope !326, !noalias !323
  %index.next218 = add nuw i64 %index212, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next218, %n.vec210
  br i1 %i.ar, label %middle.block219, label %vector.body211, !llvm.loop !328

middle.block219:                                  ; preds = %vector.body211
  %i.as = getelementptr i8, ptr %.promoted.i, i64 %index212
  %i.at = getelementptr i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %0, align 8, !tbaa !49, !alias.scope !329, !noalias !331
  %cmp.n220 = icmp eq i64 %n.vec210, %i.aj
  br i1 %cmp.n220, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader224

.lr.ph.i5.i.preheader224:                         ; preds = %vector.memcheck191, %.lr.ph.i5.i.preheader, %middle.block219
  %.ph = phi ptr [ %.promoted.i, %vector.memcheck191 ], [ %.promoted.i, %.lr.ph.i5.i.preheader ], [ %i.al, %middle.block219 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck191 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.an, %middle.block219 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.c, %vector.memcheck191 ], [ %i.c, %.lr.ph.i5.i.preheader ], [ %i.ao, %middle.block219 ] ; 2 uses
  %i.au = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter239 = and i32 %.05.i6.i.ph, 3          ; 2 uses
  %lcmp.mod240.not = icmp eq i32 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader224, %.lr.ph.i5.i.prol
  %i.av = phi ptr [ %i.ax, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader224 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.aw, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader224 ]
  %.024.i7.i.prol = phi ptr [ %i.az, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader224 ] ; 2 uses
  %prol.iter241 = phi i32 [ %prol.iter241.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader224 ]
  %i.aw = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !49
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.024.i7.i.prol, align 1, !tbaa !51
  %prol.iter241.next = add i32 %prol.iter241, 1   ; 2 uses
  %prol.iter241.cmp.not = icmp eq i32 %prol.iter241.next, %xtraiter239
  br i1 %prol.iter241.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !332

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader224
  %.unr242 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader224 ], [ %i.ax, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader224 ], [ %i.aw, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader224 ], [ %i.az, %.lr.ph.i5.i.prol ]
  %i.ba = icmp ult i32 %i.au, 3
  br i1 %i.ba, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.bb = phi ptr [ %i.bm, %.lr.ph.i5.i ], [ %.unr242, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.bl, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.bo, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !49
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.bd, ptr %.024.i7.i, align 1, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !49
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 3 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !49
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !51
  %i.bl = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !49
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !51
  %.not.i8.i.3 = icmp eq i32 %i.bl, 0
  br i1 %.not.i8.i.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !333

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block219, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.bp = trunc i64 %2 to i32
  %i.bq = shl i32 %i.bp, 1                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i8 = load ptr, ptr %0, align 8     ; 5 uses
  %i.br = icmp sgt i32 %i.bq, 1023
  br i1 %i.br, label %vector.memcheck106.a, label %._crit_edge.i9

vector.memcheck106.a:                             ; preds = %bb.c
  %scevgep107 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep108 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %8 = add nuw i32 %i.bq, 1023
  %smin109 = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 2047)
  %9 = sub i32 %8, %smin109
  %10 = and i32 %9, -1024
  %11 = zext i32 %10 to i64
  %12 = getelementptr i8, ptr %.promoted10.i8, i64 %11
  %scevgep109 = getelementptr i8, ptr %12, i64 1024 ; 2 uses
  %bound0111 = icmp ult ptr %0, %scevgep108
  %bound1112 = icmp ult ptr %i.b, %scevgep107
  %found.conflict113 = and i1 %bound0111, %bound1112
  %bound0113 = icmp ult ptr %0, %scevgep109
  %bound1114 = icmp ult ptr %.promoted10.i8, %scevgep107
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %found.conflict113, %found.conflict115
  %bound0117 = icmp ult ptr %i.b, %scevgep109
  %bound1118 = icmp ult ptr %.promoted10.i8, %scevgep108
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  br label %vector.memcheck106

vector.memcheck106:                               ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, %vector.memcheck106.a
  %.013.i17 = phi i32 [ %i.cs, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %i.bq, %vector.memcheck106.a ] ; 2 uses
  %.promoted1112.i18 = phi ptr [ %.lcssa62, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %.promoted10.i8, %vector.memcheck106.a ] ; 7 uses
  br i1 %conflict.rdx120, label %.lr.ph.i.i19, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck106
  %i.bs = getelementptr i8, ptr %.promoted1112.i18, i64 1024
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph122
  %index124 = phi i64 [ 0, %vector.ph122 ], [ %index.next130.3, %vector.body123 ] ; 6 uses
  %next.gep125 = getelementptr i8, ptr %.promoted1112.i18, i64 %index124 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.b, i64 %index124 ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep125, i64 2
  %wide.load128 = load <2 x i8>, ptr %next.gep125, align 1, !tbaa !51, !alias.scope !334
  %wide.load129 = load <2 x i8>, ptr %i.bt, align 1, !tbaa !51, !alias.scope !334
  %i.bu = getelementptr i8, ptr %next.gep127, i64 2
  store <2 x i8> %wide.load128, ptr %next.gep127, align 16, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129, ptr %i.bu, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130 = or disjoint i64 %index124, 4   ; 2 uses
  %next.gep125.1 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130 ; 2 uses
  %next.gep127.1 = getelementptr i8, ptr %i.b, i64 %index.next130 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep125.1, i64 2
  %wide.load128.1 = load <2 x i8>, ptr %next.gep125.1, align 1, !tbaa !51, !alias.scope !334
  %wide.load129.1 = load <2 x i8>, ptr %i.bv, align 1, !tbaa !51, !alias.scope !334
  %i.bw = getelementptr i8, ptr %next.gep127.1, i64 2
  store <2 x i8> %wide.load128.1, ptr %next.gep127.1, align 4, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129.1, ptr %i.bw, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130.1 = or disjoint i64 %index124, 8 ; 2 uses
  %next.gep125.2 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130.1 ; 2 uses
  %next.gep127.2 = getelementptr i8, ptr %i.b, i64 %index.next130.1 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep125.2, i64 2
  %wide.load128.2 = load <2 x i8>, ptr %next.gep125.2, align 1, !tbaa !51, !alias.scope !334
  %wide.load129.2 = load <2 x i8>, ptr %i.bx, align 1, !tbaa !51, !alias.scope !334
  %i.by = getelementptr i8, ptr %next.gep127.2, i64 2
  store <2 x i8> %wide.load128.2, ptr %next.gep127.2, align 8, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129.2, ptr %i.by, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130.2 = or disjoint i64 %index124, 12 ; 3 uses
  %next.gep125.3 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130.2 ; 2 uses
  %next.gep127.3 = getelementptr i8, ptr %i.b, i64 %index.next130.2 ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep125.3, i64 2
  %wide.load128.3 = load <2 x i8>, ptr %next.gep125.3, align 1, !tbaa !51, !alias.scope !334
  %wide.load129.3 = load <2 x i8>, ptr %i.bz, align 1, !tbaa !51, !alias.scope !334
  %i.ca = getelementptr i8, ptr %next.gep127.3, i64 2
  store <2 x i8> %wide.load128.3, ptr %next.gep127.3, align 4, !tbaa !51, !alias.scope !337, !noalias !334
  store <2 x i8> %wide.load129.3, ptr %i.ca, align 2, !tbaa !51, !alias.scope !337, !noalias !334
  %index.next130.3 = add nuw nsw i64 %index124, 16 ; 2 uses
  %i.cb = icmp eq i64 %index.next130.3, 1024
  br i1 %i.cb, label %middle.block131, label %vector.body123, !llvm.loop !339

middle.block131:                                  ; preds = %vector.body123
  %i.cc = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next130.2
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  store ptr %i.cd, ptr %0, align 8, !tbaa !49, !alias.scope !340, !noalias !342
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23

.lr.ph.i.i19:                                     ; preds = %vector.memcheck106, %.lr.ph.i.i19
  %i.ce = phi ptr [ %i.cp, %.lr.ph.i.i19 ], [ %.promoted1112.i18, %vector.memcheck106 ] ; 5 uses
  %.05.i.i20 = phi i32 [ %i.co, %.lr.ph.i.i19 ], [ 1024, %vector.memcheck106 ]
  %.024.i.i21 = phi ptr [ %i.cr, %.lr.ph.i.i19 ], [ %i.b, %vector.memcheck106 ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !49
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 1
  store i8 %i.cg, ptr %.024.i.i21, align 1, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 2 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !49
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 2
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 3 ; 2 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !49
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 3
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !51
  %i.co = add nsw i32 %.05.i.i20, -4              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 3 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !49
  %i.cq = load i8, ptr %i.cl, align 1, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 4
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !51
  %.not.i.i22.3 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i22.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, label %.lr.ph.i.i19, !llvm.loop !343

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23: ; preds = %.lr.ph.i.i19, %middle.block131
  %.lcssa62 = phi ptr [ %i.bs, %middle.block131 ], [ %i.cp, %.lr.ph.i.i19 ] ; 2 uses
  %i.cs = add nsw i32 %.013.i17, -1024            ; 2 uses
  %i.ct = icmp sgt i32 %.013.i17, 2047
  br i1 %i.ct, label %vector.memcheck106, label %._crit_edge.i9, !llvm.loop !95

._crit_edge.i9:                                   ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23, %bb.c
  %.promoted.i10 = phi ptr [ %.promoted10.i8, %bb.c ], [ %.lcssa62, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 8 uses
  %.0.lcssa.i11 = phi i32 [ %i.bq, %bb.c ], [ %i.cs, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 7 uses
  %i.cu = icmp sgt i32 %.0.lcssa.i11, 0
  br i1 %i.cu, label %.lr.ph.i5.i12.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24

.lr.ph.i5.i12.preheader:                          ; preds = %._crit_edge.i9
  %i.cv = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %min.iters.check148 = icmp ult i32 %.0.lcssa.i11, 26
  br i1 %min.iters.check148, label %.lr.ph.i5.i12.preheader227, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.i5.i12.preheader
  %scevgep133 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cw = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.b, i64 %i.cw ; 2 uses
  %scevgep135 = getelementptr i8, ptr %.promoted.i10, i64 %i.cw ; 2 uses
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
  br i1 %conflict.rdx146, label %.lr.ph.i5.i12.preheader227, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck132
  %n.vec151 = and i64 %i.cv, 2147483644           ; 5 uses
  %i.cx = getelementptr i8, ptr %.promoted.i10, i64 %n.vec151
  %i.cy = trunc nuw nsw i64 %n.vec151 to i32
  %i.cz = sub nsw i32 %.0.lcssa.i11, %i.cy
  %i.da = getelementptr i8, ptr %i.b, i64 %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next159, %vector.body152 ] ; 4 uses
  %next.gep154 = getelementptr i8, ptr %.promoted.i10, i64 %index153 ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.b, i64 %index153 ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep154, i64 2
  %wide.load157 = load <2 x i8>, ptr %next.gep154, align 1, !tbaa !51, !alias.scope !344
  %wide.load158 = load <2 x i8>, ptr %i.db, align 1, !tbaa !51, !alias.scope !344
  %i.dc = getelementptr i8, ptr %next.gep156, i64 2
  store <2 x i8> %wide.load157, ptr %next.gep156, align 4, !tbaa !51, !alias.scope !347, !noalias !344
  store <2 x i8> %wide.load158, ptr %i.dc, align 2, !tbaa !51, !alias.scope !347, !noalias !344
  %index.next159 = add nuw i64 %index153, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.dd, label %middle.block160, label %vector.body152, !llvm.loop !349

middle.block160:                                  ; preds = %vector.body152
  %i.de = getelementptr i8, ptr %.promoted.i10, i64 %index153
  %i.df = getelementptr i8, ptr %i.de, i64 4
  store ptr %i.df, ptr %0, align 8, !tbaa !49, !alias.scope !350, !noalias !352
  %cmp.n161 = icmp eq i64 %n.vec151, %i.cv
  br i1 %cmp.n161, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12.preheader227

.lr.ph.i5.i12.preheader227:                       ; preds = %vector.memcheck132, %.lr.ph.i5.i12.preheader, %middle.block160
  %.ph228 = phi ptr [ %.promoted.i10, %vector.memcheck132 ], [ %.promoted.i10, %.lr.ph.i5.i12.preheader ], [ %i.cx, %middle.block160 ] ; 2 uses
  %.05.i6.i13.ph = phi i32 [ %.0.lcssa.i11, %vector.memcheck132 ], [ %.0.lcssa.i11, %.lr.ph.i5.i12.preheader ], [ %i.cz, %middle.block160 ] ; 4 uses
  %.024.i7.i14.ph = phi ptr [ %i.b, %vector.memcheck132 ], [ %i.b, %.lr.ph.i5.i12.preheader ], [ %i.da, %middle.block160 ] ; 2 uses
  %i.dg = add nsw i32 %.05.i6.i13.ph, -1
  %xtraiter235 = and i32 %.05.i6.i13.ph, 3        ; 2 uses
  %lcmp.mod236.not = icmp eq i32 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol

.lr.ph.i5.i12.prol:                               ; preds = %.lr.ph.i5.i12.preheader227, %.lr.ph.i5.i12.prol
  %i.dh = phi ptr [ %i.dj, %.lr.ph.i5.i12.prol ], [ %.ph228, %.lr.ph.i5.i12.preheader227 ] ; 2 uses
  %.05.i6.i13.prol = phi i32 [ %i.di, %.lr.ph.i5.i12.prol ], [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader227 ]
  %.024.i7.i14.prol = phi ptr [ %i.dl, %.lr.ph.i5.i12.prol ], [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader227 ] ; 2 uses
  %prol.iter237 = phi i32 [ %prol.iter237.next, %.lr.ph.i5.i12.prol ], [ 0, %.lr.ph.i5.i12.preheader227 ]
  %i.di = add nsw i32 %.05.i6.i13.prol, -1        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 3 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !49
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %.024.i7.i14.prol, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.024.i7.i14.prol, align 1, !tbaa !51
  %prol.iter237.next = add i32 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i32 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol, !llvm.loop !353

.lr.ph.i5.i12.prol.loopexit:                      ; preds = %.lr.ph.i5.i12.prol, %.lr.ph.i5.i12.preheader227
  %.unr238 = phi ptr [ %.ph228, %.lr.ph.i5.i12.preheader227 ], [ %i.dj, %.lr.ph.i5.i12.prol ]
  %.05.i6.i13.unr = phi i32 [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader227 ], [ %i.di, %.lr.ph.i5.i12.prol ]
  %.024.i7.i14.unr = phi ptr [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader227 ], [ %i.dl, %.lr.ph.i5.i12.prol ]
  %i.dm = icmp ult i32 %i.dg, 3
  br i1 %i.dm, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12

.lr.ph.i5.i12:                                    ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12
  %i.dn = phi ptr [ %i.dy, %.lr.ph.i5.i12 ], [ %.unr238, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %.05.i6.i13 = phi i32 [ %i.dx, %.lr.ph.i5.i12 ], [ %.05.i6.i13.unr, %.lr.ph.i5.i12.prol.loopexit ]
  %.024.i7.i14 = phi ptr [ %i.ea, %.lr.ph.i5.i12 ], [ %.024.i7.i14.unr, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  store ptr %i.do, ptr %0, align 8, !tbaa !49
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 1
  store i8 %i.dp, ptr %.024.i7.i14, align 1, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  store ptr %i.dr, ptr %0, align 8, !tbaa !49
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 2
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 3 ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !49
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 3
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !51
  %i.dx = add nsw i32 %.05.i6.i13, -4             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  store ptr %i.dy, ptr %0, align 8, !tbaa !49
  %i.dz = load i8, ptr %i.du, align 1, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 4
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !51
  %.not.i8.i15.3 = icmp eq i32 %i.dx, 0
  br i1 %.not.i8.i15.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12, !llvm.loop !354

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24: ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12, %middle.block160, %._crit_edge.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.eb = trunc i64 %2 to i32
  %i.ec = shl i32 %i.eb, 2                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i25 = load ptr, ptr %0, align 8    ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, 1023
  br i1 %i.ed, label %vector.memcheck.a, label %._crit_edge.i26

vector.memcheck.a:                                ; preds = %bb.d
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep66 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %13 = add nuw i32 %i.ec, 1023
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 2047)
  %14 = sub i32 %13, %smin
  %15 = and i32 %14, -1024
  %16 = zext i32 %15 to i64
  %17 = getelementptr i8, ptr %.promoted10.i25, i64 %16
  %scevgep67 = getelementptr i8, ptr %17, i64 1024 ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep66
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %0, %scevgep67
  %bound169 = icmp ult ptr %.promoted10.i25, %scevgep
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  %bound071 = icmp ult ptr %i.a, %scevgep67
  %bound172 = icmp ult ptr %.promoted10.i25, %scevgep66
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, %vector.memcheck.a
  %.013.i34 = phi i32 [ %i.fe, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %i.ec, %vector.memcheck.a ] ; 2 uses
  %.promoted1112.i35 = phi ptr [ %.lcssa64, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %.promoted10.i25, %vector.memcheck.a ] ; 7 uses
  br i1 %conflict.rdx74, label %.lr.ph.i.i36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ee = getelementptr i8, ptr %.promoted1112.i35, i64 1024
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %.promoted1112.i35, i64 %index ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !355
  %wide.load77 = load <2 x i8>, ptr %i.ef, align 1, !tbaa !51, !alias.scope !355
  %i.eg = getelementptr i8, ptr %next.gep76, i64 2
  store <2 x i8> %wide.load, ptr %next.gep76, align 16, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77, ptr %i.eg, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next ; 2 uses
  %next.gep76.1 = getelementptr i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep.1, i64 2
  %wide.load.1 = load <2 x i8>, ptr %next.gep.1, align 1, !tbaa !51, !alias.scope !355
  %wide.load77.1 = load <2 x i8>, ptr %i.eh, align 1, !tbaa !51, !alias.scope !355
  %i.ei = getelementptr i8, ptr %next.gep76.1, i64 2
  store <2 x i8> %wide.load.1, ptr %next.gep76.1, align 4, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77.1, ptr %i.ei, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next.1 = or disjoint i64 %index, 8       ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.1 ; 2 uses
  %next.gep76.2 = getelementptr i8, ptr %i.a, i64 %index.next.1 ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep.2, i64 2
  %wide.load.2 = load <2 x i8>, ptr %next.gep.2, align 1, !tbaa !51, !alias.scope !355
  %wide.load77.2 = load <2 x i8>, ptr %i.ej, align 1, !tbaa !51, !alias.scope !355
  %i.ek = getelementptr i8, ptr %next.gep76.2, i64 2
  store <2 x i8> %wide.load.2, ptr %next.gep76.2, align 8, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77.2, ptr %i.ek, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next.2 = or disjoint i64 %index, 12      ; 3 uses
  %next.gep.3 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.2 ; 2 uses
  %next.gep76.3 = getelementptr i8, ptr %i.a, i64 %index.next.2 ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep.3, i64 2
  %wide.load.3 = load <2 x i8>, ptr %next.gep.3, align 1, !tbaa !51, !alias.scope !355
  %wide.load77.3 = load <2 x i8>, ptr %i.el, align 1, !tbaa !51, !alias.scope !355
  %i.em = getelementptr i8, ptr %next.gep76.3, i64 2
  store <2 x i8> %wide.load.3, ptr %next.gep76.3, align 4, !tbaa !51, !alias.scope !358, !noalias !355
  store <2 x i8> %wide.load77.3, ptr %i.em, align 2, !tbaa !51, !alias.scope !358, !noalias !355
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.en = icmp eq i64 %index.next.3, 1024
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %i.eo = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.2
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  store ptr %i.ep, ptr %0, align 8, !tbaa !49, !alias.scope !361, !noalias !363
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40

.lr.ph.i.i36:                                     ; preds = %vector.memcheck, %.lr.ph.i.i36
  %i.eq = phi ptr [ %i.fb, %.lr.ph.i.i36 ], [ %.promoted1112.i35, %vector.memcheck ] ; 5 uses
  %.05.i.i37 = phi i32 [ %i.fa, %.lr.ph.i.i36 ], [ 1024, %vector.memcheck ]
  %.024.i.i38 = phi ptr [ %i.fd, %.lr.ph.i.i36 ], [ %i.a, %vector.memcheck ] ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  store ptr %i.er, ptr %0, align 8, !tbaa !49
  %i.es = load i8, ptr %i.eq, align 1, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 1
  store i8 %i.es, ptr %.024.i.i38, align 1, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  store ptr %i.eu, ptr %0, align 8, !tbaa !49
  %i.ev = load i8, ptr %i.er, align 1, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 2
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 3 ; 2 uses
  store ptr %i.ex, ptr %0, align 8, !tbaa !49
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 3
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !51
  %i.fa = add nsw i32 %.05.i.i37, -4              ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 3 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !49
  %i.fc = load i8, ptr %i.ex, align 1, !tbaa !51
  %i.fd = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 4
  store i8 %i.fc, ptr %i.ez, align 1, !tbaa !51
  %.not.i.i39.3 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i39.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, label %.lr.ph.i.i36, !llvm.loop !364

_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40: ; preds = %.lr.ph.i.i36, %middle.block
  %.lcssa64 = phi ptr [ %i.ee, %middle.block ], [ %i.fb, %.lr.ph.i.i36 ] ; 2 uses
  %i.fe = add nsw i32 %.013.i34, -1024            ; 2 uses
  %i.ff = icmp sgt i32 %.013.i34, 2047
  br i1 %i.ff, label %vector.memcheck, label %._crit_edge.i26, !llvm.loop !95

._crit_edge.i26:                                  ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40, %bb.d
  %.promoted.i27 = phi ptr [ %.promoted10.i25, %bb.d ], [ %.lcssa64, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 8 uses
  %.0.lcssa.i28 = phi i32 [ %i.ec, %bb.d ], [ %i.fe, %_ZN27OpenImageIO_v3_1_Imf__3_3_59CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 7 uses
  %i.fg = icmp sgt i32 %.0.lcssa.i28, 0
  br i1 %i.fg, label %.lr.ph.i5.i29.preheader, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41

.lr.ph.i5.i29.preheader:                          ; preds = %._crit_edge.i26
  %i.fh = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i28, 26
  br i1 %min.iters.check, label %.lr.ph.i5.i29.preheader231, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.i5.i29.preheader
  %scevgep79 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fi = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.a, i64 %i.fi ; 2 uses
  %scevgep81 = getelementptr i8, ptr %.promoted.i27, i64 %i.fi ; 2 uses
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
  br i1 %conflict.rdx92, label %.lr.ph.i5.i29.preheader231, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck78
  %n.vec = and i64 %i.fh, 2147483644              ; 5 uses
  %i.fj = getelementptr i8, ptr %.promoted.i27, i64 %n.vec
  %i.fk = trunc nuw nsw i64 %n.vec to i32
  %i.fl = sub nsw i32 %.0.lcssa.i28, %i.fk
  %i.fm = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph94
  %index96 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body95 ] ; 4 uses
  %next.gep97 = getelementptr i8, ptr %.promoted.i27, i64 %index96 ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.a, i64 %index96 ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep97, i64 2
  %wide.load100 = load <2 x i8>, ptr %next.gep97, align 1, !tbaa !51, !alias.scope !365
  %wide.load101 = load <2 x i8>, ptr %i.fn, align 1, !tbaa !51, !alias.scope !365
  %i.fo = getelementptr i8, ptr %next.gep99, i64 2
  store <2 x i8> %wide.load100, ptr %next.gep99, align 4, !tbaa !51, !alias.scope !368, !noalias !365
  store <2 x i8> %wide.load101, ptr %i.fo, align 2, !tbaa !51, !alias.scope !368, !noalias !365
  %index.next102 = add nuw i64 %index96, 4        ; 2 uses
  %i.fp = icmp eq i64 %index.next102, %n.vec
  br i1 %i.fp, label %middle.block103, label %vector.body95, !llvm.loop !370

middle.block103:                                  ; preds = %vector.body95
  %i.fq = getelementptr i8, ptr %.promoted.i27, i64 %index96
  %i.fr = getelementptr i8, ptr %i.fq, i64 4
  store ptr %i.fr, ptr %0, align 8, !tbaa !49, !alias.scope !371, !noalias !373
  %cmp.n = icmp eq i64 %n.vec, %i.fh
  br i1 %cmp.n, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29.preheader231

.lr.ph.i5.i29.preheader231:                       ; preds = %vector.memcheck78, %.lr.ph.i5.i29.preheader, %middle.block103
  %.ph232 = phi ptr [ %.promoted.i27, %vector.memcheck78 ], [ %.promoted.i27, %.lr.ph.i5.i29.preheader ], [ %i.fj, %middle.block103 ] ; 2 uses
  %.05.i6.i30.ph = phi i32 [ %.0.lcssa.i28, %vector.memcheck78 ], [ %.0.lcssa.i28, %.lr.ph.i5.i29.preheader ], [ %i.fl, %middle.block103 ] ; 4 uses
  %.024.i7.i31.ph = phi ptr [ %i.a, %vector.memcheck78 ], [ %i.a, %.lr.ph.i5.i29.preheader ], [ %i.fm, %middle.block103 ] ; 2 uses
  %i.fs = add nsw i32 %.05.i6.i30.ph, -1
  %xtraiter = and i32 %.05.i6.i30.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol

.lr.ph.i5.i29.prol:                               ; preds = %.lr.ph.i5.i29.preheader231, %.lr.ph.i5.i29.prol
  %i.ft = phi ptr [ %i.fv, %.lr.ph.i5.i29.prol ], [ %.ph232, %.lr.ph.i5.i29.preheader231 ] ; 2 uses
  %.05.i6.i30.prol = phi i32 [ %i.fu, %.lr.ph.i5.i29.prol ], [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader231 ]
  %.024.i7.i31.prol = phi ptr [ %i.fx, %.lr.ph.i5.i29.prol ], [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader231 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i29.prol ], [ 0, %.lr.ph.i5.i29.preheader231 ]
  %i.fu = add nsw i32 %.05.i6.i30.prol, -1        ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 3 uses
  store ptr %i.fv, ptr %0, align 8, !tbaa !49
  %i.fw = load i8, ptr %i.ft, align 1, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %.024.i7.i31.prol, i64 1 ; 2 uses
  store i8 %i.fw, ptr %.024.i7.i31.prol, align 1, !tbaa !51
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol, !llvm.loop !374

.lr.ph.i5.i29.prol.loopexit:                      ; preds = %.lr.ph.i5.i29.prol, %.lr.ph.i5.i29.preheader231
  %.unr = phi ptr [ %.ph232, %.lr.ph.i5.i29.preheader231 ], [ %i.fv, %.lr.ph.i5.i29.prol ]
  %.05.i6.i30.unr = phi i32 [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader231 ], [ %i.fu, %.lr.ph.i5.i29.prol ]
  %.024.i7.i31.unr = phi ptr [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader231 ], [ %i.fx, %.lr.ph.i5.i29.prol ]
  %i.fy = icmp ult i32 %i.fs, 3
  br i1 %i.fy, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29

.lr.ph.i5.i29:                                    ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29
  %i.fz = phi ptr [ %i.gk, %.lr.ph.i5.i29 ], [ %.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %.05.i6.i30 = phi i32 [ %i.gj, %.lr.ph.i5.i29 ], [ %.05.i6.i30.unr, %.lr.ph.i5.i29.prol.loopexit ]
  %.024.i7.i31 = phi ptr [ %i.gm, %.lr.ph.i5.i29 ], [ %.024.i7.i31.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  store ptr %i.ga, ptr %0, align 8, !tbaa !49
  %i.gb = load i8, ptr %i.fz, align 1, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 1
  store i8 %i.gb, ptr %.024.i7.i31, align 1, !tbaa !51
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 2 ; 2 uses
  store ptr %i.gd, ptr %0, align 8, !tbaa !49
  %i.ge = load i8, ptr %i.ga, align 1, !tbaa !51
  %i.gf = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 2
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !51
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 3 ; 2 uses
  store ptr %i.gg, ptr %0, align 8, !tbaa !49
  %i.gh = load i8, ptr %i.gd, align 1, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 3
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !51
  %i.gj = add nsw i32 %.05.i6.i30, -4             ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  store ptr %i.gk, ptr %0, align 8, !tbaa !49
  %i.gl = load i8, ptr %i.gg, align 1, !tbaa !51
  %i.gm = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 4
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !51
  %.not.i8.i32.3 = icmp eq i32 %i.gj, 0
  br i1 %.not.i8.i32.3, label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29, !llvm.loop !375

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41: ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29, %middle.block103, %._crit_edge.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.gn = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gn, ptr noundef nonnull @.str.9)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.go = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gn) #19
  resume { ptr, i32 } %i.go

bb.h:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_514convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
end_hunk_1
begin_hunk_2_@_ZNKSt23__codecvt_abstract_baseIwc11__mbstate_tE2inERS0_PKcS4_RS4_PwS6_RS6_:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZSt16__do_str_codecvtINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEcSt7codecvtIwc11__mbstate_tES7_MS8_KFNSt12codecvt_base6resultERS7_PKcSD_RSD_PwSF_RSF_EEbPKT0_SL_RT_RKT1_RT2_RmT3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef byval({ i64, i64 }) align 8 %6) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %.unpack = load i64, ptr %6, align 8, !tbaa !51
  %.unpack.fr = freeze i64 %.unpack               ; 3 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !429
  %i.e = load ptr, ptr %2, align 8, !tbaa !436
  store i32 0, ptr %i.e, align 4, !tbaa !431
  store i64 0, ptr %5, align 8, !tbaa !16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.elt35 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.unpack36 = load i64, ptr %.elt35, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %0, ptr %i.a, align 8, !tbaa !49
  %i.f = load ptr, ptr %3, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(12) %3) #19, !inline_history !447
  %i.j = add nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sext i32 %i.j to i64                     ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %3, i64 %.unpack36 ; 3 uses
  %i.o = and i64 %.unpack.fr, 1
  %.not = icmp eq i64 %i.o, 0
  %i.p = inttoptr i64 %.unpack.fr to ptr
  %.pre60 = load i64, ptr %i.k, align 8, !tbaa !429 ; 2 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.aj, %bb.d ], [ %0, %bb.c ]
  %i.r = phi i64 [ %i.ak, %bb.d ], [ %.pre60, %bb.c ]
  %.032.us = phi i64 [ %i.ah, %bb.d ], [ 0, %bb.c ]
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.l, %i.s
  %i.u = mul nsw i64 %i.t, %i.m
  %i.v = add i64 %i.u, %i.r
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.v, i32 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.w = load ptr, ptr %2, align 8, !tbaa !436    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.032.us ; 2 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !448
  %i.y = load i64, ptr %i.k, align 8, !tbaa !429
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %i.y
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ab = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef %i.aa, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !448
  %i.ad = load ptr, ptr %2, align 8, !tbaa !436
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ai = icmp ne i32 %i.ab, 1
  %i.aj = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not37.us = icmp eq ptr %i.aj, %1
  %or.cond.us = select i1 %i.ai, i1 true, i1 %.not37.us
  br i1 %or.cond.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !429 ; 2 uses
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = icmp slt i64 %i.al, %i.m
  br i1 %i.am, label %.split.us, label %.critedge.thread, !llvm.loop !449

.split:                                           ; preds = %bb.c, %bb.e
  %i.an = phi ptr [ %i.bk, %bb.e ], [ %0, %bb.c ]
  %i.ao = phi i64 [ %i.bl, %bb.e ], [ %.pre60, %bb.c ]
  %.032 = phi i64 [ %i.bi, %bb.e ], [ 0, %bb.c ]
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.l, %i.ap
  %i.ar = mul nsw i64 %i.aq, %i.m
  %i.as = add i64 %i.ar, %i.ao
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.as, i32 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.at = load ptr, ptr %2, align 8, !tbaa !436   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.032 ; 2 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !448
  %i.av = load i64, ptr %i.k, align 8, !tbaa !429
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ay = getelementptr i8, ptr %i.ax, i64 %.unpack.fr
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load ptr, ptr %i.az, align 8, !nosanitize !445
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.bc = call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef %i.bb, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.au, ptr noundef nonnull %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !448
  %i.be = load ptr, ptr %2, align 8, !tbaa !436
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bj = icmp ne i32 %i.bc, 1
  %i.bk = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not37 = icmp eq ptr %i.bk, %1
  %or.cond = select i1 %i.bj, i1 true, i1 %.not37
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.split
  %i.bl = load i64, ptr %i.k, align 8, !tbaa !429 ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bi
  %i.bn = icmp slt i64 %i.bm, %i.m
  br i1 %i.bn, label %.split, label %.critedge.thread, !llvm.loop !449

.critedge:                                        ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %i.ab, %.split.us ], [ %i.bc, %.split ]
  %.us-phi44 = phi i64 [ %i.ah, %.split.us ], [ %i.bi, %.split ]
  %.us-phi45 = phi ptr [ %i.aj, %.split.us ], [ %i.bk, %.split ]
  %.not38 = icmp eq i32 %.us-phi, 2
  br i1 %.not38, label %bb.f, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.e, %bb.d, %.critedge
  %i.bo = phi i64 [ %.us-phi44, %.critedge ], [ %i.ah, %bb.d ], [ %i.bi, %bb.e ]
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bo, i32 noundef signext 0)
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %.critedge.thread
  %.sink78 = phi ptr [ %i.bp, %.critedge.thread ], [ %.us-phi45, %.critedge ]
  %i.bq = phi i1 [ true, %.critedge.thread ], [ false, %.critedge ]
  %i.br = ptrtoint ptr %.sink78 to i64
  %i.bs = ptrtoint ptr %0 to i64
  %i.bt = sub i64 %i.br, %i.bs
  store i64 %i.bt, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.bq, %bb.f ]
  ret i1 %.1
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_ImfMisc.cpp() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, align 8, !tbaa !422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 8), align 8, !tbaa !424
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, i64 29), align 1, !tbaa !51
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L13SCANLINEIMAGEB5cxx11E, ptr nonnull @__dso_handle) #19 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, align 8, !tbaa !422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 8), align 8, !tbaa !424
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, i64 26), align 2, !tbaa !51
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L10TILEDIMAGEB5cxx11E, ptr nonnull @__dso_handle) #19 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, align 8, !tbaa !422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str.4, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 8), align 8, !tbaa !424
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, i64 28), align 4, !tbaa !51
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L12DEEPSCANLINEB5cxx11E, ptr nonnull @__dso_handle) #19 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, align 8, !tbaa !422
  store i64 7308332244138288484, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 16), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 8), align 8, !tbaa !424
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, i64 24), align 8, !tbaa !51
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_5L8DEEPTILEB5cxx11E, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 12}
!8 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !9, i64 0, !9, i64 8}
!9 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !4, i64 0, !4, i64 4}
!10 = !{!8, !4, i64 4}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 long", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!12, !13, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_57ChannelE", !24, i64 0, !4, i64 4, !4, i64 8, !25, i64 12}
!24 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_59PixelTypeE", !5, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!8, !4, i64 8}
!27 = !{!8, !4, i64 0}
!28 = !{!23, !4, i64 4}
!29 = !{!23, !4, i64 8}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19, !21, !20}
!33 = distinct !{!33, !19, !20, !21}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19, !21, !20}
!38 = distinct !{!38, !19}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !6, i64 0}
!41 = distinct !{!41, !19}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !5, i64 0}
!45 = distinct !{!45, !19}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !5, i64 0}
!48 = distinct !{!48, !19}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 omnipotent char", !14, i64 0}
!51 = !{!5, !5, i64 0}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!57, !44, i64 0}
!57 = !{!"_ZTSN9Imath_3_14halfE", !44, i64 0}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTS14imath_half_uif", !14, i64 0}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !19, !20, !21}
!91 = !{!92}
!92 = distinct !{!92, !87}
!93 = !{!89, !86}
!94 = distinct !{!94, !19, !20}
!95 = distinct !{!95, !19}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !19, !20, !21}
!102 = !{!103}
!103 = distinct !{!103, !98}
!104 = !{!100, !97}
!105 = distinct !{!105, !76}
!106 = distinct !{!106, !19, !20}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !19, !20, !21}
!115 = !{!116}
!116 = distinct !{!116, !111}
!117 = !{!113, !110}
!118 = distinct !{!118, !19, !20}
!119 = !{!120}
!120 = distinct !{!120, !121}
!121 = distinct !{!121, !"LVerDomain"}
!122 = !{!123}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !19, !20, !21}
!125 = !{!126}
!126 = distinct !{!126, !121}
!127 = !{!123, !120}
!128 = distinct !{!128, !76}
!129 = distinct !{!129, !19, !20}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = !{!136}
!136 = distinct !{!136, !134}
!137 = distinct !{!137, !19, !20, !21}
!138 = !{!139}
!139 = distinct !{!139, !134}
!140 = !{!136, !133}
!141 = distinct !{!141, !19, !20}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !19, !20, !21}
!148 = !{!149}
!149 = distinct !{!149, !144}
!150 = !{!146, !143}
!151 = distinct !{!151, !76}
!152 = distinct !{!152, !19, !20}
!153 = distinct !{!153, !19}
!154 = distinct !{!154, !19}
!155 = !{!156}
!156 = distinct !{!156, !157}
!157 = distinct !{!157, !"LVerDomain"}
!158 = !{!159}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !19, !20, !21}
!161 = !{!162}
!162 = distinct !{!162, !157}
!163 = !{!159, !156}
!164 = distinct !{!164, !19, !20}
!165 = !{!166}
!166 = distinct !{!166, !167}
!167 = distinct !{!167, !"LVerDomain"}
!168 = !{!169}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !19, !20, !21}
end_hunk_2
