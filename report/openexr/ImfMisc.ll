Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfMisc?download=true
inline.NumInlined: 360
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN7Imf_3_423copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
.lr.ph1194:                                       ; preds = %.preheader987
  %i.gm = sub nsw i32 %5, %11
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul nsw i64 %14, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %1, i64 %i.go
  %i.gq = sub nsw i32 %5, %9
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl i64 %4, 32
  %i.gt = ashr exact i64 %i.gs, 32
  %i.gu = mul nsw i64 %i.gt, %i.gr
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  %i.gw = shl i64 %3, 32
  %i.gx = ashr exact i64 %i.gw, 32
  %i.gy = sext i32 %6 to i64
  %i.gz = sext i32 %10 to i64
  %i.ha = sext i32 %8 to i64
  %i.hb = add i32 %7, 1
  %scevgep2207 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %scevgep2208 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep2252 = getelementptr inbounds nuw i8, ptr %i.i, i64 1024 ; 2 uses
  %bound02255 = icmp ult ptr %0, %scevgep2252
  %bound12256 = icmp ult ptr %i.i, %scevgep2208
  %found.conflict2257 = and i1 %bound02255, %bound12256
  %bound12213 = icmp ult ptr %i.i, %scevgep2208
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1194, %.loopexit986
  %indvars.iv1351 = phi i64 [ %i.gy, %.lr.ph1194 ], [ %indvars.iv.next1352, %.loopexit986 ] ; 3 uses
  %i.hc = sub nsw i64 %indvars.iv1351, %i.gz
  %i.hd = mul nsw i64 %13, %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.gp, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !41 ; 2 uses
  %i.hg = sub nsw i64 %indvars.iv1351, %i.ha
  %i.hh = mul nsw i64 %i.gx, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.gv, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !32 ; 4 uses
  %.not760 = icmp eq ptr %i.hf, null
  br i1 %.not760, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph1190, label %.loopexit986

.lr.ph1190:                                       ; preds = %.preheader
  %.promoted1191 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1190, %bb.ac
  %i.hl = phi ptr [ %.promoted1191, %.lr.ph1190 ], [ %i.hs, %bb.ac ] ; 5 uses
  %.06951189 = phi i32 [ 0, %.lr.ph1190 ], [ %i.hv, %bb.ac ]
  %.06961188 = phi ptr [ %i.hf, %.lr.ph1190 ], [ %i.hu, %bb.ac ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1 ; 2 uses
  store ptr %i.hm, ptr %0, align 8, !tbaa !41
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 2 ; 2 uses
  store ptr %i.ho, ptr %0, align 8, !tbaa !41
  %i.hp = load i8, ptr %i.hm, align 1, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 3 ; 2 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !41
  %i.hr = load i8, ptr %i.ho, align 1, !tbaa !42
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  store ptr %i.hs, ptr %0, align 8, !tbaa !41
  %i.ht = load i8, ptr %i.hq, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i = zext i8 %i.ht to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.hr to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.hp to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.hn to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %.06961188, align 4, !tbaa !32
  %i.hu = getelementptr inbounds i8, ptr %.06961188, i64 %12
  %i.hv = add nuw nsw i32 %.06951189, 1           ; 2 uses
  %exitcond1350.not = icmp eq i32 %i.hv, %i.hj
  br i1 %exitcond1350.not, label %.loopexit986, label %bb.ac, !llvm.loop !106

bb.ad:                                            ; preds = %bb.ab
  %i.hw = shl nsw i32 %i.hj, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.hx = icmp sgt i32 %i.hj, 255
  br i1 %i.hx, label %vector.memcheck2254, label %._crit_edge.i

vector.memcheck2254:                              ; preds = %bb.ad, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i
  %.013.i = phi i32 [ %i.iz, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.hw, %bb.ad ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %bb.ad ] ; 10 uses
  %i.hy = getelementptr i8, ptr %.promoted1112.i, i64 1024 ; 2 uses
  %bound02258 = icmp ult ptr %0, %i.hy
  %bound12259 = icmp ult ptr %.promoted1112.i, %scevgep2208
  %found.conflict2260 = and i1 %bound02258, %bound12259
  %conflict.rdx2261 = or i1 %found.conflict2257, %found.conflict2260
  %bound02262 = icmp ult ptr %i.i, %i.hy
  %bound12263 = icmp ult ptr %.promoted1112.i, %scevgep2252
  %found.conflict2264 = and i1 %bound02262, %bound12263
  %conflict.rdx2265 = or i1 %conflict.rdx2261, %found.conflict2264
  br i1 %conflict.rdx2265, label %.lr.ph.i.i, label %vector.ph2266

vector.ph2266:                                    ; preds = %vector.memcheck2254
  %i.hz = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body2267

vector.body2267:                                  ; preds = %vector.body2267, %vector.ph2266
  %index2268 = phi i64 [ 0, %vector.ph2266 ], [ %index.next2274.3, %vector.body2267 ] ; 6 uses
  %next.gep2269 = getelementptr i8, ptr %.promoted1112.i, i64 %index2268 ; 2 uses
  %next.gep2271 = getelementptr i8, ptr %i.i, i64 %index2268 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep2269, i64 2
  %wide.load2272 = load <2 x i8>, ptr %next.gep2269, align 1, !tbaa !42, !alias.scope !262
  %wide.load2273 = load <2 x i8>, ptr %i.ia, align 1, !tbaa !42, !alias.scope !262
  %i.ib = getelementptr i8, ptr %next.gep2271, i64 2
  store <2 x i8> %wide.load2272, ptr %next.gep2271, align 16, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2273, ptr %i.ib, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2274 = or disjoint i64 %index2268, 4 ; 2 uses
  %next.gep2269.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2274 ; 2 uses
  %next.gep2271.1 = getelementptr i8, ptr %i.i, i64 %index.next2274 ; 2 uses
  %i.ic = getelementptr i8, ptr %next.gep2269.1, i64 2
  %wide.load2272.1 = load <2 x i8>, ptr %next.gep2269.1, align 1, !tbaa !42, !alias.scope !262
  %wide.load2273.1 = load <2 x i8>, ptr %i.ic, align 1, !tbaa !42, !alias.scope !262
  %i.id = getelementptr i8, ptr %next.gep2271.1, i64 2
  store <2 x i8> %wide.load2272.1, ptr %next.gep2271.1, align 4, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2273.1, ptr %i.id, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2274.1 = or disjoint i64 %index2268, 8 ; 2 uses
  %next.gep2269.2 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2274.1 ; 2 uses
  %next.gep2271.2 = getelementptr i8, ptr %i.i, i64 %index.next2274.1 ; 2 uses
  %i.ie = getelementptr i8, ptr %next.gep2269.2, i64 2
  %wide.load2272.2 = load <2 x i8>, ptr %next.gep2269.2, align 1, !tbaa !42, !alias.scope !262
  %wide.load2273.2 = load <2 x i8>, ptr %i.ie, align 1, !tbaa !42, !alias.scope !262
  %i.if = getelementptr i8, ptr %next.gep2271.2, i64 2
  store <2 x i8> %wide.load2272.2, ptr %next.gep2271.2, align 8, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2273.2, ptr %i.if, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2274.2 = or disjoint i64 %index2268, 12 ; 3 uses
  %next.gep2269.3 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2274.2 ; 2 uses
  %next.gep2271.3 = getelementptr i8, ptr %i.i, i64 %index.next2274.2 ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep2269.3, i64 2
  %wide.load2272.3 = load <2 x i8>, ptr %next.gep2269.3, align 1, !tbaa !42, !alias.scope !262
  %wide.load2273.3 = load <2 x i8>, ptr %i.ig, align 1, !tbaa !42, !alias.scope !262
  %i.ih = getelementptr i8, ptr %next.gep2271.3, i64 2
  store <2 x i8> %wide.load2272.3, ptr %next.gep2271.3, align 4, !tbaa !42, !alias.scope !263, !noalias !262
  store <2 x i8> %wide.load2273.3, ptr %i.ih, align 2, !tbaa !42, !alias.scope !263, !noalias !262
  %index.next2274.3 = add nuw nsw i64 %index2268, 16 ; 2 uses
  %i.ii = icmp eq i64 %index.next2274.3, 1024
  br i1 %i.ii, label %middle.block2275, label %vector.body2267, !llvm.loop !110

middle.block2275:                                 ; preds = %vector.body2267
  %i.ij = getelementptr i8, ptr %.promoted1112.i, i64 %index.next2274.2
  %i.ik = getelementptr i8, ptr %i.ij, i64 4
  store ptr %i.ik, ptr %0, align 8, !tbaa !41, !alias.scope !264, !noalias !265
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i

.lr.ph.i.i:                                       ; preds = %vector.memcheck2254, %.lr.ph.i.i
  %i.il = phi ptr [ %i.iw, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck2254 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.iv, %.lr.ph.i.i ], [ 1024, %vector.memcheck2254 ]
  %.024.i.i = phi ptr [ %i.iy, %.lr.ph.i.i ], [ %i.i, %vector.memcheck2254 ] ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  store ptr %i.im, ptr %0, align 8, !tbaa !41
  %i.in = load i8, ptr %i.il, align 1, !tbaa !42
  %i.io = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.in, ptr %.024.i.i, align 1, !tbaa !42
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 2 uses
  store ptr %i.ip, ptr %0, align 8, !tbaa !41
  %i.iq = load i8, ptr %i.im, align 1, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !42
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 3 ; 2 uses
  store ptr %i.is, ptr %0, align 8, !tbaa !41
  %i.it = load i8, ptr %i.ip, align 1, !tbaa !42
  %i.iu = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !42
  %i.iv = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 3 uses
  store ptr %i.iw, ptr %0, align 8, !tbaa !41
  %i.ix = load i8, ptr %i.is, align 1, !tbaa !42
  %i.iy = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.ix, ptr %i.iu, align 1, !tbaa !42
  %.not.i.i769.3 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i769.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !112

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i:   ; preds = %.lr.ph.i.i, %middle.block2275
  %.lcssa = phi ptr [ %i.hz, %middle.block2275 ], [ %i.iw, %.lr.ph.i.i ] ; 2 uses
  %i.iz = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ja = icmp sgt i32 %.013.i, 2047
  br i1 %i.ja, label %vector.memcheck2254, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, %bb.ad
  %.promoted.i768 = phi ptr [ %.promoted10.i, %bb.ad ], [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.hw, %bb.ad ], [ %i.iz, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %i.jb = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.jb, label %.lr.ph.i5.i.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.jc = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check2210 = icmp ult i32 %.0.lcssa.i, 12
  br i1 %min.iters.check2210, label %.lr.ph.i5.i.preheader2278, label %vector.memcheck2211

vector.memcheck2211:                              ; preds = %.lr.ph.i5.i.preheader
  %i.jd = add nsw i32 %.0.lcssa.i, -1
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr i8, ptr %scevgep2207, i64 %i.je ; 2 uses
  %bound02212 = icmp ult ptr %0, %i.jf
  %found.conflict2214 = and i1 %bound02212, %bound12213
  %20 = zext nneg i32 %.0.lcssa.i to i64
  %21 = getelementptr i8, ptr %.promoted.i768, i64 %20 ; 2 uses
  %bound02215 = icmp ult ptr %0, %21
  %bound12216 = icmp ult ptr %.promoted.i768, %scevgep2208
  %found.conflict2217 = and i1 %bound02215, %bound12216
  %conflict.rdx2218 = or i1 %found.conflict2214, %found.conflict2217
  %bound02219 = icmp ult ptr %i.i, %21
  %bound12220 = icmp ult ptr %.promoted.i768, %i.jf
  %found.conflict2221 = and i1 %bound02219, %bound12220
  %conflict.rdx2222 = or i1 %conflict.rdx2218, %found.conflict2221
  br i1 %conflict.rdx2222, label %.lr.ph.i5.i.preheader2278, label %vector.ph2223

vector.ph2223:                                    ; preds = %vector.memcheck2211
  %n.vec2224 = and i64 %i.jc, 2147483644          ; 5 uses
  %i.jg = getelementptr i8, ptr %.promoted.i768, i64 %n.vec2224
  %i.jh = trunc nuw nsw i64 %n.vec2224 to i32
  %i.ji = sub nsw i32 %.0.lcssa.i, %i.jh
  %i.jj = getelementptr i8, ptr %i.i, i64 %n.vec2224
  br label %vector.body2225

vector.body2225:                                  ; preds = %vector.body2225, %vector.ph2223
  %index2226 = phi i64 [ 0, %vector.ph2223 ], [ %index.next2232, %vector.body2225 ] ; 4 uses
  %next.gep2227 = getelementptr i8, ptr %.promoted.i768, i64 %index2226 ; 2 uses
  %next.gep2229 = getelementptr i8, ptr %i.i, i64 %index2226 ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep2227, i64 2
  %wide.load2230 = load <2 x i8>, ptr %next.gep2227, align 1, !tbaa !42, !alias.scope !266
  %wide.load2231 = load <2 x i8>, ptr %i.jk, align 1, !tbaa !42, !alias.scope !266
  %i.jl = getelementptr i8, ptr %next.gep2229, i64 2
  store <2 x i8> %wide.load2230, ptr %next.gep2229, align 4, !tbaa !42, !alias.scope !267, !noalias !266
  store <2 x i8> %wide.load2231, ptr %i.jl, align 2, !tbaa !42, !alias.scope !267, !noalias !266
  %index.next2232 = add nuw i64 %index2226, 4     ; 2 uses
  %i.jm = icmp eq i64 %index.next2232, %n.vec2224
  br i1 %i.jm, label %middle.block2233, label %vector.body2225, !llvm.loop !116

middle.block2233:                                 ; preds = %vector.body2225
  %i.jn = getelementptr i8, ptr %.promoted.i768, i64 %index2226
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  store ptr %i.jo, ptr %0, align 8, !tbaa !41, !alias.scope !268, !noalias !269
  %cmp.n2234 = icmp eq i64 %n.vec2224, %i.jc
  br i1 %cmp.n2234, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader2278

.lr.ph.i5.i.preheader2278:                        ; preds = %vector.memcheck2211, %.lr.ph.i5.i.preheader, %middle.block2233
  %.ph = phi ptr [ %.promoted.i768, %vector.memcheck2211 ], [ %.promoted.i768, %.lr.ph.i5.i.preheader ], [ %i.jg, %middle.block2233 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck2211 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.ji, %middle.block2233 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.i, %vector.memcheck2211 ], [ %i.i, %.lr.ph.i5.i.preheader ], [ %i.jj, %middle.block2233 ] ; 2 uses
  %i.jp = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter2401 = and i32 %.05.i6.i.ph, 3         ; 2 uses
  %lcmp.mod2402.not = icmp eq i32 %xtraiter2401, 0
  br i1 %lcmp.mod2402.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader2278, %.lr.ph.i5.i.prol
  %i.jq = phi ptr [ %i.js, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader2278 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.jr, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2278 ]
  %.024.i7.i.prol = phi ptr [ %i.ju, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2278 ] ; 2 uses
  %prol.iter2403 = phi i32 [ %prol.iter2403.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader2278 ]
  %i.jr = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 3 uses
  store ptr %i.js, ptr %0, align 8, !tbaa !41
  %i.jt = load i8, ptr %i.jq, align 1, !tbaa !42
  %i.ju = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.jt, ptr %.024.i7.i.prol, align 1, !tbaa !42
  %prol.iter2403.next = add i32 %prol.iter2403, 1 ; 2 uses
  %prol.iter2403.cmp.not = icmp eq i32 %prol.iter2403.next, %xtraiter2401
  br i1 %prol.iter2403.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !118

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader2278
  %.unr2404 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader2278 ], [ %i.js, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader2278 ], [ %i.jr, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader2278 ], [ %i.ju, %.lr.ph.i5.i.prol ]
  %i.jv = icmp ult i32 %i.jp, 3
  br i1 %i.jv, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.jw = phi ptr [ %i.kh, %.lr.ph.i5.i ], [ %.unr2404, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.kg, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.kj, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1 ; 2 uses
  store ptr %i.jx, ptr %0, align 8, !tbaa !41
  %i.jy = load i8, ptr %i.jw, align 1, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.jy, ptr %.024.i7.i, align 1, !tbaa !42
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  store ptr %i.ka, ptr %0, align 8, !tbaa !41
  %i.kb = load i8, ptr %i.jx, align 1, !tbaa !42
  %i.kc = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !42
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 3 ; 2 uses
  store ptr %i.kd, ptr %0, align 8, !tbaa !41
  %i.ke = load i8, ptr %i.ka, align 1, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !42
  %i.kg = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 2 uses
  store ptr %i.kh, ptr %0, align 8, !tbaa !41
  %i.ki = load i8, ptr %i.kd, align 1, !tbaa !42
  %i.kj = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.ki, ptr %i.kf, align 1, !tbaa !42
  %.not.i8.i.3 = icmp eq i32 %i.kg, 0
  br i1 %.not.i8.i.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !119

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block2233, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %.loopexit986

.loopexit986:                                     ; preds = %bb.ac, %.preheader, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  %indvars.iv.next1352 = add nsw i64 %indvars.iv1351, 1 ; 2 uses
  %lftr.wideiv1354 = trunc i64 %indvars.iv.next1352 to i32
  %exitcond1355.not = icmp eq i32 %i.hb, %lftr.wideiv1354
  br i1 %exitcond1355.not, label %.loopexit981, label %bb.ab, !llvm.loop !120

bb.ae:                                            ; preds = %.lr.ph1187, %.loopexit990
  %indvars.iv1345 = phi i64 [ %i.gi, %.lr.ph1187 ], [ %indvars.iv.next1346, %.loopexit990 ] ; 3 uses
  %i.kk = sub nsw i64 %indvars.iv1345, %i.gj
  %i.kl = mul nsw i64 %13, %i.kk
  %i.km = getelementptr inbounds i8, ptr %i.fz, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !41 ; 2 uses
  %i.ko = sub nsw i64 %indvars.iv1345, %i.gk
  %i.kp = mul nsw i64 %i.gh, %i.ko
  %i.kq = getelementptr inbounds i8, ptr %i.gf, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !32 ; 4 uses
  %.not758 = icmp eq ptr %i.kn, null
  br i1 %.not758, label %bb.af, label %.preheader989

.preheader989:                                    ; preds = %bb.ae
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.lr.ph1184, label %.loopexit990

.lr.ph1184:                                       ; preds = %.preheader989, %.lr.ph1184
  %.06921183 = phi i32 [ %i.kz, %.lr.ph1184 ], [ 0, %.preheader989 ]
  %.06931182 = phi ptr [ %i.ky, %.lr.ph1184 ], [ %i.kn, %.preheader989 ] ; 2 uses
  %.promoted.i770 = load ptr, ptr %0, align 8, !tbaa !41 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 1 ; 2 uses
  store ptr %i.kt, ptr %0, align 8, !tbaa !41
  %i.ku = load i8, ptr %.promoted.i770, align 1, !tbaa !42
  %i.kv = getelementptr inbounds nuw i8, ptr %.promoted.i770, i64 2
  store ptr %i.kv, ptr %0, align 8, !tbaa !41
  %i.kw = load i8, ptr %i.kt, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i771 = zext i8 %i.kw to i16
  %.sroa.4.0.insert.shift.i772 = shl nuw i16 %.sroa.4.0.insert.ext.i771, 8
  %.sroa.0.0.insert.ext.i773 = zext i8 %i.ku to i16
  %.sroa.0.0.insert.insert.i774 = or disjoint i16 %.sroa.4.0.insert.shift.i772, %.sroa.0.0.insert.ext.i773
  %i.kx = tail call noundef i32 @_ZN7Imf_3_410halfToUintEN9Imath_3_24halfE(i16 %.sroa.0.0.insert.insert.i774)
  store i32 %i.kx, ptr %.06931182, align 4, !tbaa !32
  %i.ky = getelementptr inbounds i8, ptr %.06931182, i64 %12
  %i.kz = add nuw nsw i32 %.06921183, 1           ; 2 uses
  %exitcond1344.not = icmp eq i32 %i.kz, %i.kr
  br i1 %exitcond1344.not, label %.loopexit990, label %.lr.ph1184, !llvm.loop !121

bb.af:                                            ; preds = %bb.ae
  %i.la = shl nsw i32 %i.kr, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %.promoted10.i775 = load ptr, ptr %0, align 8   ; 2 uses
  %i.lb = icmp sgt i32 %i.kr, 511
  br i1 %i.lb, label %vector.memcheck2168, label %._crit_edge.i776

vector.memcheck2168:                              ; preds = %bb.af, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790
  %.013.i784 = phi i32 [ %i.md, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %i.la, %bb.af ] ; 2 uses
  %.promoted1112.i785 = phi ptr [ %.lcssa1509, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ], [ %.promoted10.i775, %bb.af ] ; 10 uses
  %i.lc = getelementptr i8, ptr %.promoted1112.i785, i64 1024 ; 2 uses
  %bound02172 = icmp ult ptr %0, %i.lc
  %bound12173 = icmp ult ptr %.promoted1112.i785, %scevgep2122
  %found.conflict2174 = and i1 %bound02172, %bound12173
  %conflict.rdx2175 = or i1 %found.conflict2171, %found.conflict2174
  %bound02176 = icmp ult ptr %i.h, %i.lc
  %bound12177 = icmp ult ptr %.promoted1112.i785, %scevgep2166
  %found.conflict2178 = and i1 %bound02176, %bound12177
  %conflict.rdx2179 = or i1 %conflict.rdx2175, %found.conflict2178
  br i1 %conflict.rdx2179, label %.lr.ph.i.i786, label %vector.ph2180

vector.ph2180:                                    ; preds = %vector.memcheck2168
  %i.ld = getelementptr i8, ptr %.promoted1112.i785, i64 1024
  br label %vector.body2181

vector.body2181:                                  ; preds = %vector.body2181, %vector.ph2180
  %index2182 = phi i64 [ 0, %vector.ph2180 ], [ %index.next2188.3, %vector.body2181 ] ; 6 uses
  %next.gep2183 = getelementptr i8, ptr %.promoted1112.i785, i64 %index2182 ; 2 uses
  %next.gep2185 = getelementptr i8, ptr %i.h, i64 %index2182 ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep2183, i64 2
  %wide.load2186 = load <2 x i8>, ptr %next.gep2183, align 1, !tbaa !42, !alias.scope !270
  %wide.load2187 = load <2 x i8>, ptr %i.le, align 1, !tbaa !42, !alias.scope !270
  %i.lf = getelementptr i8, ptr %next.gep2185, i64 2
  store <2 x i8> %wide.load2186, ptr %next.gep2185, align 16, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2187, ptr %i.lf, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2188 = or disjoint i64 %index2182, 4 ; 2 uses
  %next.gep2183.1 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2188 ; 2 uses
  %next.gep2185.1 = getelementptr i8, ptr %i.h, i64 %index.next2188 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep2183.1, i64 2
  %wide.load2186.1 = load <2 x i8>, ptr %next.gep2183.1, align 1, !tbaa !42, !alias.scope !270
  %wide.load2187.1 = load <2 x i8>, ptr %i.lg, align 1, !tbaa !42, !alias.scope !270
  %i.lh = getelementptr i8, ptr %next.gep2185.1, i64 2
  store <2 x i8> %wide.load2186.1, ptr %next.gep2185.1, align 4, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2187.1, ptr %i.lh, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2188.1 = or disjoint i64 %index2182, 8 ; 2 uses
  %next.gep2183.2 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2188.1 ; 2 uses
  %next.gep2185.2 = getelementptr i8, ptr %i.h, i64 %index.next2188.1 ; 2 uses
  %i.li = getelementptr i8, ptr %next.gep2183.2, i64 2
  %wide.load2186.2 = load <2 x i8>, ptr %next.gep2183.2, align 1, !tbaa !42, !alias.scope !270
  %wide.load2187.2 = load <2 x i8>, ptr %i.li, align 1, !tbaa !42, !alias.scope !270
  %i.lj = getelementptr i8, ptr %next.gep2185.2, i64 2
  store <2 x i8> %wide.load2186.2, ptr %next.gep2185.2, align 8, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2187.2, ptr %i.lj, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2188.2 = or disjoint i64 %index2182, 12 ; 3 uses
  %next.gep2183.3 = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2188.2 ; 2 uses
  %next.gep2185.3 = getelementptr i8, ptr %i.h, i64 %index.next2188.2 ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep2183.3, i64 2
  %wide.load2186.3 = load <2 x i8>, ptr %next.gep2183.3, align 1, !tbaa !42, !alias.scope !270
  %wide.load2187.3 = load <2 x i8>, ptr %i.lk, align 1, !tbaa !42, !alias.scope !270
  %i.ll = getelementptr i8, ptr %next.gep2185.3, i64 2
  store <2 x i8> %wide.load2186.3, ptr %next.gep2185.3, align 4, !tbaa !42, !alias.scope !271, !noalias !270
  store <2 x i8> %wide.load2187.3, ptr %i.ll, align 2, !tbaa !42, !alias.scope !271, !noalias !270
  %index.next2188.3 = add nuw nsw i64 %index2182, 16 ; 2 uses
  %i.lm = icmp eq i64 %index.next2188.3, 1024
  br i1 %i.lm, label %middle.block2189, label %vector.body2181, !llvm.loop !125

middle.block2189:                                 ; preds = %vector.body2181
  %i.ln = getelementptr i8, ptr %.promoted1112.i785, i64 %index.next2188.2
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  store ptr %i.lo, ptr %0, align 8, !tbaa !41, !alias.scope !272, !noalias !273
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790

.lr.ph.i.i786:                                    ; preds = %vector.memcheck2168, %.lr.ph.i.i786
  %i.lp = phi ptr [ %i.ma, %.lr.ph.i.i786 ], [ %.promoted1112.i785, %vector.memcheck2168 ] ; 5 uses
  %.05.i.i787 = phi i32 [ %i.lz, %.lr.ph.i.i786 ], [ 1024, %vector.memcheck2168 ]
  %.024.i.i788 = phi ptr [ %i.mc, %.lr.ph.i.i786 ], [ %i.h, %vector.memcheck2168 ] ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  store ptr %i.lq, ptr %0, align 8, !tbaa !41
  %i.lr = load i8, ptr %i.lp, align 1, !tbaa !42
  %i.ls = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 1
  store i8 %i.lr, ptr %.024.i.i788, align 1, !tbaa !42
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 2 ; 2 uses
  store ptr %i.lt, ptr %0, align 8, !tbaa !41
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !42
  %i.lv = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 2
  store i8 %i.lu, ptr %i.ls, align 1, !tbaa !42
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 3 ; 2 uses
  store ptr %i.lw, ptr %0, align 8, !tbaa !41
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !42
  %i.ly = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 3
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !42
  %i.lz = add nsw i32 %.05.i.i787, -4             ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 3 uses
  store ptr %i.ma, ptr %0, align 8, !tbaa !41
  %i.mb = load i8, ptr %i.lw, align 1, !tbaa !42
  %i.mc = getelementptr inbounds nuw i8, ptr %.024.i.i788, i64 4
  store i8 %i.mb, ptr %i.ly, align 1, !tbaa !42
  %.not.i.i789.3 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i789.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790, label %.lr.ph.i.i786, !llvm.loop !127

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790: ; preds = %.lr.ph.i.i786, %middle.block2189
  %.lcssa1509 = phi ptr [ %i.ld, %middle.block2189 ], [ %i.ma, %.lr.ph.i.i786 ] ; 2 uses
  %i.md = add nsw i32 %.013.i784, -1024           ; 2 uses
  %i.me = icmp sgt i32 %.013.i784, 2047
  br i1 %i.me, label %vector.memcheck2168, label %._crit_edge.i776, !llvm.loop !1

._crit_edge.i776:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790, %bb.af
  %.promoted.i777 = phi ptr [ %.promoted10.i775, %bb.af ], [ %.lcssa1509, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 8 uses
  %.0.lcssa.i778 = phi i32 [ %i.la, %bb.af ], [ %i.md, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i790 ] ; 8 uses
  %i.mf = icmp sgt i32 %.0.lcssa.i778, 0
  br i1 %i.mf, label %.lr.ph.i5.i779.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791

.lr.ph.i5.i779.preheader:                         ; preds = %._crit_edge.i776
  %i.mg = zext nneg i32 %.0.lcssa.i778 to i64     ; 2 uses
  %min.iters.check2124 = icmp ult i32 %.0.lcssa.i778, 12
  br i1 %min.iters.check2124, label %.lr.ph.i5.i779.preheader2282, label %vector.memcheck2125

vector.memcheck2125:                              ; preds = %.lr.ph.i5.i779.preheader
  %i.mh = add nsw i32 %.0.lcssa.i778, -1
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr i8, ptr %scevgep2121, i64 %i.mi ; 2 uses
  %bound02126 = icmp ult ptr %0, %i.mj
  %found.conflict2128 = and i1 %bound02126, %bound12127
  %22 = zext nneg i32 %.0.lcssa.i778 to i64
  %23 = getelementptr i8, ptr %.promoted.i777, i64 %22 ; 2 uses
  %bound02129 = icmp ult ptr %0, %23
  %bound12130 = icmp ult ptr %.promoted.i777, %scevgep2122
  %found.conflict2131 = and i1 %bound02129, %bound12130
  %conflict.rdx2132 = or i1 %found.conflict2128, %found.conflict2131
  %bound02133 = icmp ult ptr %i.h, %23
  %bound12134 = icmp ult ptr %.promoted.i777, %i.mj
  %found.conflict2135 = and i1 %bound02133, %bound12134
  %conflict.rdx2136 = or i1 %conflict.rdx2132, %found.conflict2135
  br i1 %conflict.rdx2136, label %.lr.ph.i5.i779.preheader2282, label %vector.ph2137

vector.ph2137:                                    ; preds = %vector.memcheck2125
  %n.vec2138 = and i64 %i.mg, 2147483644          ; 5 uses
  %i.mk = getelementptr i8, ptr %.promoted.i777, i64 %n.vec2138
  %i.ml = trunc nuw nsw i64 %n.vec2138 to i32
  %i.mm = sub nsw i32 %.0.lcssa.i778, %i.ml
  %i.mn = getelementptr i8, ptr %i.h, i64 %n.vec2138
  br label %vector.body2139

vector.body2139:                                  ; preds = %vector.body2139, %vector.ph2137
  %index2140 = phi i64 [ 0, %vector.ph2137 ], [ %index.next2146, %vector.body2139 ] ; 4 uses
  %next.gep2141 = getelementptr i8, ptr %.promoted.i777, i64 %index2140 ; 2 uses
  %next.gep2143 = getelementptr i8, ptr %i.h, i64 %index2140 ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep2141, i64 2
  %wide.load2144 = load <2 x i8>, ptr %next.gep2141, align 1, !tbaa !42, !alias.scope !274
  %wide.load2145 = load <2 x i8>, ptr %i.mo, align 1, !tbaa !42, !alias.scope !274
  %i.mp = getelementptr i8, ptr %next.gep2143, i64 2
  store <2 x i8> %wide.load2144, ptr %next.gep2143, align 4, !tbaa !42, !alias.scope !275, !noalias !274
  store <2 x i8> %wide.load2145, ptr %i.mp, align 2, !tbaa !42, !alias.scope !275, !noalias !274
  %index.next2146 = add nuw i64 %index2140, 4     ; 2 uses
  %i.mq = icmp eq i64 %index.next2146, %n.vec2138
  br i1 %i.mq, label %middle.block2147, label %vector.body2139, !llvm.loop !131

middle.block2147:                                 ; preds = %vector.body2139
  %i.mr = getelementptr i8, ptr %.promoted.i777, i64 %index2140
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  store ptr %i.ms, ptr %0, align 8, !tbaa !41, !alias.scope !276, !noalias !277
  %cmp.n2148 = icmp eq i64 %n.vec2138, %i.mg
  br i1 %cmp.n2148, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779.preheader2282

.lr.ph.i5.i779.preheader2282:                     ; preds = %vector.memcheck2125, %.lr.ph.i5.i779.preheader, %middle.block2147
  %.ph2283 = phi ptr [ %.promoted.i777, %vector.memcheck2125 ], [ %.promoted.i777, %.lr.ph.i5.i779.preheader ], [ %i.mk, %middle.block2147 ] ; 2 uses
  %.05.i6.i780.ph = phi i32 [ %.0.lcssa.i778, %vector.memcheck2125 ], [ %.0.lcssa.i778, %.lr.ph.i5.i779.preheader ], [ %i.mm, %middle.block2147 ] ; 4 uses
  %.024.i7.i781.ph = phi ptr [ %i.h, %vector.memcheck2125 ], [ %i.h, %.lr.ph.i5.i779.preheader ], [ %i.mn, %middle.block2147 ] ; 2 uses
  %i.mt = add nsw i32 %.05.i6.i780.ph, -1
  %xtraiter2397 = and i32 %.05.i6.i780.ph, 3      ; 2 uses
  %lcmp.mod2398.not = icmp eq i32 %xtraiter2397, 0
  br i1 %lcmp.mod2398.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol

.lr.ph.i5.i779.prol:                              ; preds = %.lr.ph.i5.i779.preheader2282, %.lr.ph.i5.i779.prol
  %i.mu = phi ptr [ %i.mw, %.lr.ph.i5.i779.prol ], [ %.ph2283, %.lr.ph.i5.i779.preheader2282 ] ; 2 uses
  %.05.i6.i780.prol = phi i32 [ %i.mv, %.lr.ph.i5.i779.prol ], [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2282 ]
  %.024.i7.i781.prol = phi ptr [ %i.my, %.lr.ph.i5.i779.prol ], [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2282 ] ; 2 uses
  %prol.iter2399 = phi i32 [ %prol.iter2399.next, %.lr.ph.i5.i779.prol ], [ 0, %.lr.ph.i5.i779.preheader2282 ]
  %i.mv = add nsw i32 %.05.i6.i780.prol, -1       ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 1 ; 3 uses
  store ptr %i.mw, ptr %0, align 8, !tbaa !41
  %i.mx = load i8, ptr %i.mu, align 1, !tbaa !42
  %i.my = getelementptr inbounds nuw i8, ptr %.024.i7.i781.prol, i64 1 ; 2 uses
  store i8 %i.mx, ptr %.024.i7.i781.prol, align 1, !tbaa !42
  %prol.iter2399.next = add i32 %prol.iter2399, 1 ; 2 uses
  %prol.iter2399.cmp.not = icmp eq i32 %prol.iter2399.next, %xtraiter2397
  br i1 %prol.iter2399.cmp.not, label %.lr.ph.i5.i779.prol.loopexit, label %.lr.ph.i5.i779.prol, !llvm.loop !133

.lr.ph.i5.i779.prol.loopexit:                     ; preds = %.lr.ph.i5.i779.prol, %.lr.ph.i5.i779.preheader2282
  %.unr2400 = phi ptr [ %.ph2283, %.lr.ph.i5.i779.preheader2282 ], [ %i.mw, %.lr.ph.i5.i779.prol ]
  %.05.i6.i780.unr = phi i32 [ %.05.i6.i780.ph, %.lr.ph.i5.i779.preheader2282 ], [ %i.mv, %.lr.ph.i5.i779.prol ]
  %.024.i7.i781.unr = phi ptr [ %.024.i7.i781.ph, %.lr.ph.i5.i779.preheader2282 ], [ %i.my, %.lr.ph.i5.i779.prol ]
  %i.mz = icmp ult i32 %i.mt, 3
  br i1 %i.mz, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779

.lr.ph.i5.i779:                                   ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779
  %i.na = phi ptr [ %i.nl, %.lr.ph.i5.i779 ], [ %.unr2400, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %.05.i6.i780 = phi i32 [ %i.nk, %.lr.ph.i5.i779 ], [ %.05.i6.i780.unr, %.lr.ph.i5.i779.prol.loopexit ]
  %.024.i7.i781 = phi ptr [ %i.nn, %.lr.ph.i5.i779 ], [ %.024.i7.i781.unr, %.lr.ph.i5.i779.prol.loopexit ] ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 2 uses
  store ptr %i.nb, ptr %0, align 8, !tbaa !41
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !42
  %i.nd = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 1
  store i8 %i.nc, ptr %.024.i7.i781, align 1, !tbaa !42
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 2 ; 2 uses
  store ptr %i.ne, ptr %0, align 8, !tbaa !41
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !42
  %i.ng = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 2
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !42
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 3 ; 2 uses
  store ptr %i.nh, ptr %0, align 8, !tbaa !41
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !42
  %i.nj = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 3
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !42
  %i.nk = add nsw i32 %.05.i6.i780, -4            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  store ptr %i.nl, ptr %0, align 8, !tbaa !41
  %i.nm = load i8, ptr %i.nh, align 1, !tbaa !42
  %i.nn = getelementptr inbounds nuw i8, ptr %.024.i7.i781, i64 4
  store i8 %i.nm, ptr %i.nj, align 1, !tbaa !42
  %.not.i8.i782.3 = icmp eq i32 %i.nk, 0
  br i1 %.not.i8.i782.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791, label %.lr.ph.i5.i779, !llvm.loop !134

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791: ; preds = %.lr.ph.i5.i779.prol.loopexit, %.lr.ph.i5.i779, %middle.block2147, %._crit_edge.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %.loopexit990

.loopexit990:                                     ; preds = %.lr.ph1184, %.preheader989, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit791
  %indvars.iv.next1346 = add nsw i64 %indvars.iv1345, 1 ; 2 uses
  %lftr.wideiv1348 = trunc i64 %indvars.iv.next1346 to i32
  %exitcond1349.not = icmp eq i32 %i.gl, %lftr.wideiv1348
  br i1 %exitcond1349.not, label %.loopexit981, label %bb.ae, !llvm.loop !135

bb.ag:                                            ; preds = %.lr.ph1181, %.loopexit994
  %indvars.iv1339 = phi i64 [ %i.fs, %.lr.ph1181 ], [ %indvars.iv.next1340, %.loopexit994 ] ; 3 uses
  %i.no = sub nsw i64 %indvars.iv1339, %i.ft
  %i.np = mul nsw i64 %13, %i.no
  %i.nq = getelementptr inbounds i8, ptr %i.fj, i64 %i.np
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !41 ; 2 uses
  %i.ns = sub nsw i64 %indvars.iv1339, %i.fu
  %i.nt = mul nsw i64 %i.fr, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.fp, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !32 ; 4 uses
  %.not756 = icmp eq ptr %i.nr, null
  br i1 %.not756, label %bb.ah, label %.preheader993

.preheader993:                                    ; preds = %bb.ag
  %i.nw = icmp sgt i32 %i.nv, 0
  br i1 %i.nw, label %.lr.ph1178, label %.loopexit994

.lr.ph1178:                                       ; preds = %.preheader993, %.lr.ph1178
  %.06881177 = phi i32 [ %i.oi, %.lr.ph1178 ], [ 0, %.preheader993 ]
  %.06891176 = phi ptr [ %i.oh, %.lr.ph1178 ], [ %i.nr, %.preheader993 ] ; 2 uses
  %.promoted.i792 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 1 ; 2 uses
  store ptr %i.nx, ptr %0, align 8, !tbaa !41
  %i.ny = load i8, ptr %.promoted.i792, align 1, !tbaa !42
  %i.nz = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 2 ; 2 uses
  store ptr %i.nz, ptr %0, align 8, !tbaa !41
  %i.oa = load i8, ptr %i.nx, align 1, !tbaa !42
  %i.ob = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 3 ; 2 uses
  store ptr %i.ob, ptr %0, align 8, !tbaa !41
  %i.oc = load i8, ptr %i.nz, align 1, !tbaa !42
  %i.od = getelementptr inbounds nuw i8, ptr %.promoted.i792, i64 4
  store ptr %i.od, ptr %0, align 8, !tbaa !41
  %i.oe = load i8, ptr %i.ob, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i793 = zext i8 %i.oe to i32
  %.sroa.6.0.insert.shift.i794 = shl nuw i32 %.sroa.6.0.insert.ext.i793, 24
  %.sroa.5.0.insert.ext.i795 = zext i8 %i.oc to i32
  %.sroa.5.0.insert.shift.i796 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i795, 16
  %.sroa.4.0.insert.ext.i798 = zext i8 %i.oa to i32
  %.sroa.4.0.insert.shift.i799 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i798, 8
  %.sroa.0.0.insert.ext.i801 = zext i8 %i.ny to i32
  %.sroa.5.0.insert.insert.i797 = or disjoint i32 %.sroa.4.0.insert.shift.i799, %.sroa.0.0.insert.ext.i801
  %.sroa.4.0.insert.insert.i800 = or disjoint i32 %.sroa.5.0.insert.insert.i797, %.sroa.5.0.insert.shift.i796
  %.sroa.0.0.insert.insert.i802 = or disjoint i32 %.sroa.4.0.insert.insert.i800, %.sroa.6.0.insert.shift.i794
  %i.of = bitcast i32 %.sroa.0.0.insert.insert.i802 to float
  %i.og = tail call noundef i32 @_ZN7Imf_3_411floatToUintEf(float noundef %i.of)
  store i32 %i.og, ptr %.06891176, align 4, !tbaa !32
  %i.oh = getelementptr inbounds i8, ptr %.06891176, i64 %12
  %i.oi = add nuw nsw i32 %.06881177, 1           ; 2 uses
  %exitcond1338.not = icmp eq i32 %i.oi, %i.nv
  br i1 %exitcond1338.not, label %.loopexit994, label %.lr.ph1178, !llvm.loop !136

bb.ah:                                            ; preds = %bb.ag
  %i.oj = shl nsw i32 %i.nv, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %.promoted10.i803 = load ptr, ptr %0, align 8   ; 2 uses
  %i.ok = icmp sgt i32 %i.nv, 255
  br i1 %i.ok, label %vector.memcheck2082, label %._crit_edge.i804

vector.memcheck2082:                              ; preds = %bb.ah, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818
  %.013.i812 = phi i32 [ %i.pm, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %i.oj, %bb.ah ] ; 2 uses
  %.promoted1112.i813 = phi ptr [ %.lcssa1511, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ], [ %.promoted10.i803, %bb.ah ] ; 10 uses
  %i.ol = getelementptr i8, ptr %.promoted1112.i813, i64 1024 ; 2 uses
  %bound02086 = icmp ult ptr %0, %i.ol
  %bound12087 = icmp ult ptr %.promoted1112.i813, %scevgep2036
  %found.conflict2088 = and i1 %bound02086, %bound12087
  %conflict.rdx2089 = or i1 %found.conflict2085, %found.conflict2088
  %bound02090 = icmp ult ptr %i.g, %i.ol
  %bound12091 = icmp ult ptr %.promoted1112.i813, %scevgep2080
  %found.conflict2092 = and i1 %bound02090, %bound12091
  %conflict.rdx2093 = or i1 %conflict.rdx2089, %found.conflict2092
  br i1 %conflict.rdx2093, label %.lr.ph.i.i814, label %vector.ph2094

vector.ph2094:                                    ; preds = %vector.memcheck2082
  %i.om = getelementptr i8, ptr %.promoted1112.i813, i64 1024
  br label %vector.body2095

vector.body2095:                                  ; preds = %vector.body2095, %vector.ph2094
  %index2096 = phi i64 [ 0, %vector.ph2094 ], [ %index.next2102.3, %vector.body2095 ] ; 6 uses
  %next.gep2097 = getelementptr i8, ptr %.promoted1112.i813, i64 %index2096 ; 2 uses
  %next.gep2099 = getelementptr i8, ptr %i.g, i64 %index2096 ; 2 uses
  %i.on = getelementptr i8, ptr %next.gep2097, i64 2
  %wide.load2100 = load <2 x i8>, ptr %next.gep2097, align 1, !tbaa !42, !alias.scope !278
  %wide.load2101 = load <2 x i8>, ptr %i.on, align 1, !tbaa !42, !alias.scope !278
  %i.oo = getelementptr i8, ptr %next.gep2099, i64 2
  store <2 x i8> %wide.load2100, ptr %next.gep2099, align 16, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2101, ptr %i.oo, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2102 = or disjoint i64 %index2096, 4 ; 2 uses
  %next.gep2097.1 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2102 ; 2 uses
  %next.gep2099.1 = getelementptr i8, ptr %i.g, i64 %index.next2102 ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep2097.1, i64 2
  %wide.load2100.1 = load <2 x i8>, ptr %next.gep2097.1, align 1, !tbaa !42, !alias.scope !278
  %wide.load2101.1 = load <2 x i8>, ptr %i.op, align 1, !tbaa !42, !alias.scope !278
  %i.oq = getelementptr i8, ptr %next.gep2099.1, i64 2
  store <2 x i8> %wide.load2100.1, ptr %next.gep2099.1, align 4, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2101.1, ptr %i.oq, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2102.1 = or disjoint i64 %index2096, 8 ; 2 uses
  %next.gep2097.2 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2102.1 ; 2 uses
  %next.gep2099.2 = getelementptr i8, ptr %i.g, i64 %index.next2102.1 ; 2 uses
  %i.or = getelementptr i8, ptr %next.gep2097.2, i64 2
  %wide.load2100.2 = load <2 x i8>, ptr %next.gep2097.2, align 1, !tbaa !42, !alias.scope !278
  %wide.load2101.2 = load <2 x i8>, ptr %i.or, align 1, !tbaa !42, !alias.scope !278
  %i.os = getelementptr i8, ptr %next.gep2099.2, i64 2
  store <2 x i8> %wide.load2100.2, ptr %next.gep2099.2, align 8, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2101.2, ptr %i.os, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2102.2 = or disjoint i64 %index2096, 12 ; 3 uses
  %next.gep2097.3 = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2102.2 ; 2 uses
  %next.gep2099.3 = getelementptr i8, ptr %i.g, i64 %index.next2102.2 ; 2 uses
  %i.ot = getelementptr i8, ptr %next.gep2097.3, i64 2
  %wide.load2100.3 = load <2 x i8>, ptr %next.gep2097.3, align 1, !tbaa !42, !alias.scope !278
  %wide.load2101.3 = load <2 x i8>, ptr %i.ot, align 1, !tbaa !42, !alias.scope !278
  %i.ou = getelementptr i8, ptr %next.gep2099.3, i64 2
  store <2 x i8> %wide.load2100.3, ptr %next.gep2099.3, align 4, !tbaa !42, !alias.scope !279, !noalias !278
  store <2 x i8> %wide.load2101.3, ptr %i.ou, align 2, !tbaa !42, !alias.scope !279, !noalias !278
  %index.next2102.3 = add nuw nsw i64 %index2096, 16 ; 2 uses
  %i.ov = icmp eq i64 %index.next2102.3, 1024
  br i1 %i.ov, label %middle.block2103, label %vector.body2095, !llvm.loop !140

middle.block2103:                                 ; preds = %vector.body2095
  %i.ow = getelementptr i8, ptr %.promoted1112.i813, i64 %index.next2102.2
  %i.ox = getelementptr i8, ptr %i.ow, i64 4
  store ptr %i.ox, ptr %0, align 8, !tbaa !41, !alias.scope !280, !noalias !281
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818

.lr.ph.i.i814:                                    ; preds = %vector.memcheck2082, %.lr.ph.i.i814
  %i.oy = phi ptr [ %i.pj, %.lr.ph.i.i814 ], [ %.promoted1112.i813, %vector.memcheck2082 ] ; 5 uses
  %.05.i.i815 = phi i32 [ %i.pi, %.lr.ph.i.i814 ], [ 1024, %vector.memcheck2082 ]
  %.024.i.i816 = phi ptr [ %i.pl, %.lr.ph.i.i814 ], [ %i.g, %vector.memcheck2082 ] ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1 ; 2 uses
  store ptr %i.oz, ptr %0, align 8, !tbaa !41
  %i.pa = load i8, ptr %i.oy, align 1, !tbaa !42
  %i.pb = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 1
  store i8 %i.pa, ptr %.024.i.i816, align 1, !tbaa !42
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 2 ; 2 uses
  store ptr %i.pc, ptr %0, align 8, !tbaa !41
  %i.pd = load i8, ptr %i.oz, align 1, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 2
  store i8 %i.pd, ptr %i.pb, align 1, !tbaa !42
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 3 ; 2 uses
  store ptr %i.pf, ptr %0, align 8, !tbaa !41
  %i.pg = load i8, ptr %i.pc, align 1, !tbaa !42
  %i.ph = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 3
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !42
  %i.pi = add nsw i32 %.05.i.i815, -4             ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oy, i64 4 ; 3 uses
  store ptr %i.pj, ptr %0, align 8, !tbaa !41
  %i.pk = load i8, ptr %i.pf, align 1, !tbaa !42
  %i.pl = getelementptr inbounds nuw i8, ptr %.024.i.i816, i64 4
  store i8 %i.pk, ptr %i.ph, align 1, !tbaa !42
  %.not.i.i817.3 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i817.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818, label %.lr.ph.i.i814, !llvm.loop !142

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818: ; preds = %.lr.ph.i.i814, %middle.block2103
  %.lcssa1511 = phi ptr [ %i.om, %middle.block2103 ], [ %i.pj, %.lr.ph.i.i814 ] ; 2 uses
  %i.pm = add nsw i32 %.013.i812, -1024           ; 2 uses
  %i.pn = icmp sgt i32 %.013.i812, 2047
  br i1 %i.pn, label %vector.memcheck2082, label %._crit_edge.i804, !llvm.loop !1

._crit_edge.i804:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818, %bb.ah
  %.promoted.i805 = phi ptr [ %.promoted10.i803, %bb.ah ], [ %.lcssa1511, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 8 uses
  %.0.lcssa.i806 = phi i32 [ %i.oj, %bb.ah ], [ %i.pm, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i818 ] ; 8 uses
  %i.po = icmp sgt i32 %.0.lcssa.i806, 0
  br i1 %i.po, label %.lr.ph.i5.i807.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819

.lr.ph.i5.i807.preheader:                         ; preds = %._crit_edge.i804
  %i.pp = zext nneg i32 %.0.lcssa.i806 to i64     ; 2 uses
  %min.iters.check2038 = icmp ult i32 %.0.lcssa.i806, 12
  br i1 %min.iters.check2038, label %.lr.ph.i5.i807.preheader2287, label %vector.memcheck2039

vector.memcheck2039:                              ; preds = %.lr.ph.i5.i807.preheader
  %i.pq = add nsw i32 %.0.lcssa.i806, -1
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr i8, ptr %scevgep2035, i64 %i.pr ; 2 uses
  %bound02040 = icmp ult ptr %0, %i.ps
  %found.conflict2042 = and i1 %bound02040, %bound12041
  %24 = zext nneg i32 %.0.lcssa.i806 to i64
  %25 = getelementptr i8, ptr %.promoted.i805, i64 %24 ; 2 uses
  %bound02043 = icmp ult ptr %0, %25
  %bound12044 = icmp ult ptr %.promoted.i805, %scevgep2036
  %found.conflict2045 = and i1 %bound02043, %bound12044
  %conflict.rdx2046 = or i1 %found.conflict2042, %found.conflict2045
  %bound02047 = icmp ult ptr %i.g, %25
  %bound12048 = icmp ult ptr %.promoted.i805, %i.ps
  %found.conflict2049 = and i1 %bound02047, %bound12048
  %conflict.rdx2050 = or i1 %conflict.rdx2046, %found.conflict2049
  br i1 %conflict.rdx2050, label %.lr.ph.i5.i807.preheader2287, label %vector.ph2051

vector.ph2051:                                    ; preds = %vector.memcheck2039
  %n.vec2052 = and i64 %i.pp, 2147483644          ; 5 uses
  %i.pt = getelementptr i8, ptr %.promoted.i805, i64 %n.vec2052
  %i.pu = trunc nuw nsw i64 %n.vec2052 to i32
  %i.pv = sub nsw i32 %.0.lcssa.i806, %i.pu
  %i.pw = getelementptr i8, ptr %i.g, i64 %n.vec2052
  br label %vector.body2053

vector.body2053:                                  ; preds = %vector.body2053, %vector.ph2051
  %index2054 = phi i64 [ 0, %vector.ph2051 ], [ %index.next2060, %vector.body2053 ] ; 4 uses
  %next.gep2055 = getelementptr i8, ptr %.promoted.i805, i64 %index2054 ; 2 uses
  %next.gep2057 = getelementptr i8, ptr %i.g, i64 %index2054 ; 2 uses
  %i.px = getelementptr i8, ptr %next.gep2055, i64 2
  %wide.load2058 = load <2 x i8>, ptr %next.gep2055, align 1, !tbaa !42, !alias.scope !282
  %wide.load2059 = load <2 x i8>, ptr %i.px, align 1, !tbaa !42, !alias.scope !282
  %i.py = getelementptr i8, ptr %next.gep2057, i64 2
  store <2 x i8> %wide.load2058, ptr %next.gep2057, align 4, !tbaa !42, !alias.scope !283, !noalias !282
  store <2 x i8> %wide.load2059, ptr %i.py, align 2, !tbaa !42, !alias.scope !283, !noalias !282
  %index.next2060 = add nuw i64 %index2054, 4     ; 2 uses
  %i.pz = icmp eq i64 %index.next2060, %n.vec2052
  br i1 %i.pz, label %middle.block2061, label %vector.body2053, !llvm.loop !146

middle.block2061:                                 ; preds = %vector.body2053
  %i.qa = getelementptr i8, ptr %.promoted.i805, i64 %index2054
  %i.qb = getelementptr i8, ptr %i.qa, i64 4
  store ptr %i.qb, ptr %0, align 8, !tbaa !41, !alias.scope !284, !noalias !285
  %cmp.n2062 = icmp eq i64 %n.vec2052, %i.pp
  br i1 %cmp.n2062, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807.preheader2287

.lr.ph.i5.i807.preheader2287:                     ; preds = %vector.memcheck2039, %.lr.ph.i5.i807.preheader, %middle.block2061
  %.ph2288 = phi ptr [ %.promoted.i805, %vector.memcheck2039 ], [ %.promoted.i805, %.lr.ph.i5.i807.preheader ], [ %i.pt, %middle.block2061 ] ; 2 uses
  %.05.i6.i808.ph = phi i32 [ %.0.lcssa.i806, %vector.memcheck2039 ], [ %.0.lcssa.i806, %.lr.ph.i5.i807.preheader ], [ %i.pv, %middle.block2061 ] ; 4 uses
  %.024.i7.i809.ph = phi ptr [ %i.g, %vector.memcheck2039 ], [ %i.g, %.lr.ph.i5.i807.preheader ], [ %i.pw, %middle.block2061 ] ; 2 uses
  %i.qc = add nsw i32 %.05.i6.i808.ph, -1
  %xtraiter2393 = and i32 %.05.i6.i808.ph, 3      ; 2 uses
  %lcmp.mod2394.not = icmp eq i32 %xtraiter2393, 0
  br i1 %lcmp.mod2394.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol

.lr.ph.i5.i807.prol:                              ; preds = %.lr.ph.i5.i807.preheader2287, %.lr.ph.i5.i807.prol
  %i.qd = phi ptr [ %i.qf, %.lr.ph.i5.i807.prol ], [ %.ph2288, %.lr.ph.i5.i807.preheader2287 ] ; 2 uses
  %.05.i6.i808.prol = phi i32 [ %i.qe, %.lr.ph.i5.i807.prol ], [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2287 ]
  %.024.i7.i809.prol = phi ptr [ %i.qh, %.lr.ph.i5.i807.prol ], [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2287 ] ; 2 uses
  %prol.iter2395 = phi i32 [ %prol.iter2395.next, %.lr.ph.i5.i807.prol ], [ 0, %.lr.ph.i5.i807.preheader2287 ]
  %i.qe = add nsw i32 %.05.i6.i808.prol, -1       ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 1 ; 3 uses
  store ptr %i.qf, ptr %0, align 8, !tbaa !41
  %i.qg = load i8, ptr %i.qd, align 1, !tbaa !42
  %i.qh = getelementptr inbounds nuw i8, ptr %.024.i7.i809.prol, i64 1 ; 2 uses
  store i8 %i.qg, ptr %.024.i7.i809.prol, align 1, !tbaa !42
  %prol.iter2395.next = add i32 %prol.iter2395, 1 ; 2 uses
  %prol.iter2395.cmp.not = icmp eq i32 %prol.iter2395.next, %xtraiter2393
  br i1 %prol.iter2395.cmp.not, label %.lr.ph.i5.i807.prol.loopexit, label %.lr.ph.i5.i807.prol, !llvm.loop !148

.lr.ph.i5.i807.prol.loopexit:                     ; preds = %.lr.ph.i5.i807.prol, %.lr.ph.i5.i807.preheader2287
  %.unr2396 = phi ptr [ %.ph2288, %.lr.ph.i5.i807.preheader2287 ], [ %i.qf, %.lr.ph.i5.i807.prol ]
  %.05.i6.i808.unr = phi i32 [ %.05.i6.i808.ph, %.lr.ph.i5.i807.preheader2287 ], [ %i.qe, %.lr.ph.i5.i807.prol ]
  %.024.i7.i809.unr = phi ptr [ %.024.i7.i809.ph, %.lr.ph.i5.i807.preheader2287 ], [ %i.qh, %.lr.ph.i5.i807.prol ]
  %i.qi = icmp ult i32 %i.qc, 3
  br i1 %i.qi, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807

.lr.ph.i5.i807:                                   ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807
  %i.qj = phi ptr [ %i.qu, %.lr.ph.i5.i807 ], [ %.unr2396, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %.05.i6.i808 = phi i32 [ %i.qt, %.lr.ph.i5.i807 ], [ %.05.i6.i808.unr, %.lr.ph.i5.i807.prol.loopexit ]
  %.024.i7.i809 = phi ptr [ %i.qw, %.lr.ph.i5.i807 ], [ %.024.i7.i809.unr, %.lr.ph.i5.i807.prol.loopexit ] ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 2 uses
  store ptr %i.qk, ptr %0, align 8, !tbaa !41
  %i.ql = load i8, ptr %i.qj, align 1, !tbaa !42
  %i.qm = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 1
  store i8 %i.ql, ptr %.024.i7.i809, align 1, !tbaa !42
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 2 ; 2 uses
  store ptr %i.qn, ptr %0, align 8, !tbaa !41
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !42
  %i.qp = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 2
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !42
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 3 ; 2 uses
  store ptr %i.qq, ptr %0, align 8, !tbaa !41
  %i.qr = load i8, ptr %i.qn, align 1, !tbaa !42
  %i.qs = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 3
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !42
  %i.qt = add nsw i32 %.05.i6.i808, -4            ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 2 uses
  store ptr %i.qu, ptr %0, align 8, !tbaa !41
  %i.qv = load i8, ptr %i.qq, align 1, !tbaa !42
  %i.qw = getelementptr inbounds nuw i8, ptr %.024.i7.i809, i64 4
  store i8 %i.qv, ptr %i.qs, align 1, !tbaa !42
  %.not.i8.i810.3 = icmp eq i32 %i.qt, 0
  br i1 %.not.i8.i810.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819, label %.lr.ph.i5.i807, !llvm.loop !149

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819: ; preds = %.lr.ph.i5.i807.prol.loopexit, %.lr.ph.i5.i807, %middle.block2061, %._crit_edge.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.loopexit994

.loopexit994:                                     ; preds = %.lr.ph1178, %.preheader993, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit819
  %indvars.iv.next1340 = add nsw i64 %indvars.iv1339, 1 ; 2 uses
  %lftr.wideiv1342 = trunc i64 %indvars.iv.next1340 to i32
  %exitcond1343.not = icmp eq i32 %i.fv, %lftr.wideiv1342
  br i1 %exitcond1343.not, label %.loopexit981, label %bb.ag, !llvm.loop !150

bb.ai:                                            ; preds = %bb.aa
  %i.qx = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.qx, ptr noundef nonnull @.str.9)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.qx, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.al:                                            ; preds = %bb.z
  switch i32 %19, label %bb.at [
    i32 0, label %.preheader999
    i32 1, label %.preheader1003
    i32 2, label %.preheader1007
  ]

.preheader1007:                                   ; preds = %bb.al
  %.not7491160 = icmp sgt i32 %6, %7
  br i1 %.not7491160, label %.loopexit981, label %.lr.ph1162

.lr.ph1162:                                       ; preds = %.preheader1007
  %i.qz = sub nsw i32 %5, %11
  %i.ra = sext i32 %i.qz to i64
  %i.rb = mul nsw i64 %14, %i.ra
  %i.rc = getelementptr inbounds i8, ptr %1, i64 %i.rb
  %i.rd = sub nsw i32 %5, %9
  %i.re = sext i32 %i.rd to i64
  %i.rf = shl i64 %4, 32
  %i.rg = ashr exact i64 %i.rf, 32
  %i.rh = mul nsw i64 %i.rg, %i.re
  %i.ri = getelementptr inbounds i8, ptr %2, i64 %i.rh
  %i.rj = shl i64 %3, 32
  %i.rk = ashr exact i64 %i.rj, 32
  %i.rl = sext i32 %6 to i64
  %i.rm = sext i32 %10 to i64
  %i.rn = sext i32 %8 to i64
  %i.ro = add i32 %7, 1
  %scevgep1777 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %scevgep1778 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1822 = getelementptr inbounds nuw i8, ptr %i.d, i64 1024 ; 2 uses
  %bound01825 = icmp ult ptr %0, %scevgep1822
  %bound11826 = icmp ult ptr %i.d, %scevgep1778
  %found.conflict1827 = and i1 %bound01825, %bound11826
  %bound11783 = icmp ult ptr %i.d, %scevgep1778
  br label %bb.ar

.preheader1003:                                   ; preds = %bb.al
  %.not7511167 = icmp sgt i32 %6, %7
  br i1 %.not7511167, label %.loopexit981, label %.lr.ph1169

.lr.ph1169:                                       ; preds = %.preheader1003
  %i.rp = sub nsw i32 %5, %11
  %i.rq = sext i32 %i.rp to i64
  %i.rr = mul nsw i64 %14, %i.rq
  %i.rs = getelementptr inbounds i8, ptr %1, i64 %i.rr
  %i.rt = sub nsw i32 %5, %9
  %i.ru = sext i32 %i.rt to i64
  %i.rv = shl i64 %4, 32
  %i.rw = ashr exact i64 %i.rv, 32
  %i.rx = mul nsw i64 %i.rw, %i.ru
  %i.ry = getelementptr inbounds i8, ptr %2, i64 %i.rx
  %i.rz = shl i64 %3, 32
  %i.sa = ashr exact i64 %i.rz, 32
  %i.sb = sext i32 %6 to i64
  %i.sc = sext i32 %10 to i64
  %i.sd = sext i32 %8 to i64
  %i.se = add i32 %7, 1
  %scevgep1863 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %scevgep1864 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1908 = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 2 uses
  %bound01911 = icmp ult ptr %0, %scevgep1908
  %bound11912 = icmp ult ptr %i.e, %scevgep1864
  %found.conflict1913 = and i1 %bound01911, %bound11912
  %bound11869 = icmp ult ptr %i.e, %scevgep1864
  br label %bb.ao

.preheader999:                                    ; preds = %bb.al
  %.not7531173 = icmp sgt i32 %6, %7
  br i1 %.not7531173, label %.loopexit981, label %.lr.ph1175

.lr.ph1175:                                       ; preds = %.preheader999
  %i.sf = sub nsw i32 %5, %11
  %i.sg = sext i32 %i.sf to i64
  %i.sh = mul nsw i64 %14, %i.sg
  %i.si = getelementptr inbounds i8, ptr %1, i64 %i.sh
  %i.sj = sub nsw i32 %5, %9
  %i.sk = sext i32 %i.sj to i64
  %i.sl = shl i64 %4, 32
  %i.sm = ashr exact i64 %i.sl, 32
  %i.sn = mul nsw i64 %i.sm, %i.sk
  %i.so = getelementptr inbounds i8, ptr %2, i64 %i.sn
  %i.sp = shl i64 %3, 32
  %i.sq = ashr exact i64 %i.sp, 32
  %i.sr = sext i32 %6 to i64
  %i.ss = sext i32 %10 to i64
  %i.st = sext i32 %8 to i64
  %i.su = add i32 %7, 1
  %scevgep1949 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %scevgep1950 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1994 = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  %bound01997 = icmp ult ptr %0, %scevgep1994
  %bound11998 = icmp ult ptr %i.f, %scevgep1950
  %found.conflict1999 = and i1 %bound01997, %bound11998
  %bound11955 = icmp ult ptr %i.f, %scevgep1950
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1175, %.loopexit998
  %indvars.iv1333 = phi i64 [ %i.sr, %.lr.ph1175 ], [ %indvars.iv.next1334, %.loopexit998 ] ; 3 uses
  %i.sv = sub nsw i64 %indvars.iv1333, %i.ss
  %i.sw = mul nsw i64 %13, %i.sv
  %i.sx = getelementptr inbounds i8, ptr %i.si, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !41 ; 2 uses
  %i.sz = sub nsw i64 %indvars.iv1333, %i.st
  %i.ta = mul nsw i64 %i.sq, %i.sz
  %i.tb = getelementptr inbounds i8, ptr %i.so, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !32 ; 4 uses
  %.not754 = icmp eq ptr %i.sy, null
  br i1 %.not754, label %bb.an, label %.preheader997

.preheader997:                                    ; preds = %bb.am
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %.lr.ph1172, label %.loopexit998

.lr.ph1172:                                       ; preds = %.preheader997, %.lr.ph1172
  %.06851171 = phi i32 [ %i.to, %.lr.ph1172 ], [ 0, %.preheader997 ]
  %.06861170 = phi ptr [ %i.tn, %.lr.ph1172 ], [ %i.sy, %.preheader997 ] ; 2 uses
  %.promoted.i820 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 1 ; 2 uses
  store ptr %i.te, ptr %0, align 8, !tbaa !41
  %i.tf = load i8, ptr %.promoted.i820, align 1, !tbaa !42
  %i.tg = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 2 ; 2 uses
  store ptr %i.tg, ptr %0, align 8, !tbaa !41
  %i.th = load i8, ptr %i.te, align 1, !tbaa !42
  %i.ti = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 3 ; 2 uses
  store ptr %i.ti, ptr %0, align 8, !tbaa !41
  %i.tj = load i8, ptr %i.tg, align 1, !tbaa !42
  %i.tk = getelementptr inbounds nuw i8, ptr %.promoted.i820, i64 4
  store ptr %i.tk, ptr %0, align 8, !tbaa !41
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i821 = zext i8 %i.tl to i32
  %.sroa.6.0.insert.shift.i822 = shl nuw i32 %.sroa.6.0.insert.ext.i821, 24
  %.sroa.5.0.insert.ext.i823 = zext i8 %i.tj to i32
  %.sroa.5.0.insert.shift.i824 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i823, 16
  %.sroa.4.0.insert.ext.i826 = zext i8 %i.th to i32
  %.sroa.4.0.insert.shift.i827 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i826, 8
  %.sroa.0.0.insert.ext.i829 = zext i8 %i.tf to i32
  %.sroa.5.0.insert.insert.i825 = or disjoint i32 %.sroa.4.0.insert.shift.i827, %.sroa.0.0.insert.ext.i829
  %.sroa.4.0.insert.insert.i828 = or disjoint i32 %.sroa.5.0.insert.insert.i825, %.sroa.5.0.insert.shift.i824
  %.sroa.0.0.insert.insert.i830 = or disjoint i32 %.sroa.4.0.insert.insert.i828, %.sroa.6.0.insert.shift.i822
  %i.tm = tail call i16 @_ZN7Imf_3_410uintToHalfEj(i32 noundef %.sroa.0.0.insert.insert.i830)
  store i16 %i.tm, ptr %.06861170, align 2, !tbaa !37
  %i.tn = getelementptr inbounds i8, ptr %.06861170, i64 %12
  %i.to = add nuw nsw i32 %.06851171, 1           ; 2 uses
  %exitcond1332.not = icmp eq i32 %i.to, %i.tc
  br i1 %exitcond1332.not, label %.loopexit998, label %.lr.ph1172, !llvm.loop !151

bb.an:                                            ; preds = %bb.am
  %i.tp = shl nsw i32 %i.tc, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %.promoted10.i831 = load ptr, ptr %0, align 8   ; 2 uses
  %i.tq = icmp sgt i32 %i.tc, 255
  br i1 %i.tq, label %vector.memcheck1996, label %._crit_edge.i832

vector.memcheck1996:                              ; preds = %bb.an, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846
  %.013.i840 = phi i32 [ %i.us, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %i.tp, %bb.an ] ; 2 uses
  %.promoted1112.i841 = phi ptr [ %.lcssa1513, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ], [ %.promoted10.i831, %bb.an ] ; 10 uses
  %i.tr = getelementptr i8, ptr %.promoted1112.i841, i64 1024 ; 2 uses
  %bound02000 = icmp ult ptr %0, %i.tr
  %bound12001 = icmp ult ptr %.promoted1112.i841, %scevgep1950
  %found.conflict2002 = and i1 %bound02000, %bound12001
  %conflict.rdx2003 = or i1 %found.conflict1999, %found.conflict2002
  %bound02004 = icmp ult ptr %i.f, %i.tr
  %bound12005 = icmp ult ptr %.promoted1112.i841, %scevgep1994
  %found.conflict2006 = and i1 %bound02004, %bound12005
  %conflict.rdx2007 = or i1 %conflict.rdx2003, %found.conflict2006
  br i1 %conflict.rdx2007, label %.lr.ph.i.i842, label %vector.ph2008

vector.ph2008:                                    ; preds = %vector.memcheck1996
  %i.ts = getelementptr i8, ptr %.promoted1112.i841, i64 1024
  br label %vector.body2009

vector.body2009:                                  ; preds = %vector.body2009, %vector.ph2008
  %index2010 = phi i64 [ 0, %vector.ph2008 ], [ %index.next2016.3, %vector.body2009 ] ; 6 uses
  %next.gep2011 = getelementptr i8, ptr %.promoted1112.i841, i64 %index2010 ; 2 uses
  %next.gep2013 = getelementptr i8, ptr %i.f, i64 %index2010 ; 2 uses
  %i.tt = getelementptr i8, ptr %next.gep2011, i64 2
  %wide.load2014 = load <2 x i8>, ptr %next.gep2011, align 1, !tbaa !42, !alias.scope !286
  %wide.load2015 = load <2 x i8>, ptr %i.tt, align 1, !tbaa !42, !alias.scope !286
  %i.tu = getelementptr i8, ptr %next.gep2013, i64 2
  store <2 x i8> %wide.load2014, ptr %next.gep2013, align 16, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2015, ptr %i.tu, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2016 = or disjoint i64 %index2010, 4 ; 2 uses
  %next.gep2011.1 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2016 ; 2 uses
  %next.gep2013.1 = getelementptr i8, ptr %i.f, i64 %index.next2016 ; 2 uses
  %i.tv = getelementptr i8, ptr %next.gep2011.1, i64 2
  %wide.load2014.1 = load <2 x i8>, ptr %next.gep2011.1, align 1, !tbaa !42, !alias.scope !286
  %wide.load2015.1 = load <2 x i8>, ptr %i.tv, align 1, !tbaa !42, !alias.scope !286
  %i.tw = getelementptr i8, ptr %next.gep2013.1, i64 2
  store <2 x i8> %wide.load2014.1, ptr %next.gep2013.1, align 4, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2015.1, ptr %i.tw, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2016.1 = or disjoint i64 %index2010, 8 ; 2 uses
  %next.gep2011.2 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2016.1 ; 2 uses
  %next.gep2013.2 = getelementptr i8, ptr %i.f, i64 %index.next2016.1 ; 2 uses
  %i.tx = getelementptr i8, ptr %next.gep2011.2, i64 2
  %wide.load2014.2 = load <2 x i8>, ptr %next.gep2011.2, align 1, !tbaa !42, !alias.scope !286
  %wide.load2015.2 = load <2 x i8>, ptr %i.tx, align 1, !tbaa !42, !alias.scope !286
  %i.ty = getelementptr i8, ptr %next.gep2013.2, i64 2
  store <2 x i8> %wide.load2014.2, ptr %next.gep2013.2, align 8, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2015.2, ptr %i.ty, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2016.2 = or disjoint i64 %index2010, 12 ; 3 uses
  %next.gep2011.3 = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2016.2 ; 2 uses
  %next.gep2013.3 = getelementptr i8, ptr %i.f, i64 %index.next2016.2 ; 2 uses
  %i.tz = getelementptr i8, ptr %next.gep2011.3, i64 2
  %wide.load2014.3 = load <2 x i8>, ptr %next.gep2011.3, align 1, !tbaa !42, !alias.scope !286
  %wide.load2015.3 = load <2 x i8>, ptr %i.tz, align 1, !tbaa !42, !alias.scope !286
  %i.ua = getelementptr i8, ptr %next.gep2013.3, i64 2
  store <2 x i8> %wide.load2014.3, ptr %next.gep2013.3, align 4, !tbaa !42, !alias.scope !287, !noalias !286
  store <2 x i8> %wide.load2015.3, ptr %i.ua, align 2, !tbaa !42, !alias.scope !287, !noalias !286
  %index.next2016.3 = add nuw nsw i64 %index2010, 16 ; 2 uses
  %i.ub = icmp eq i64 %index.next2016.3, 1024
  br i1 %i.ub, label %middle.block2017, label %vector.body2009, !llvm.loop !155

middle.block2017:                                 ; preds = %vector.body2009
  %i.uc = getelementptr i8, ptr %.promoted1112.i841, i64 %index.next2016.2
  %i.ud = getelementptr i8, ptr %i.uc, i64 4
  store ptr %i.ud, ptr %0, align 8, !tbaa !41, !alias.scope !288, !noalias !289
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846

.lr.ph.i.i842:                                    ; preds = %vector.memcheck1996, %.lr.ph.i.i842
  %i.ue = phi ptr [ %i.up, %.lr.ph.i.i842 ], [ %.promoted1112.i841, %vector.memcheck1996 ] ; 5 uses
  %.05.i.i843 = phi i32 [ %i.uo, %.lr.ph.i.i842 ], [ 1024, %vector.memcheck1996 ]
  %.024.i.i844 = phi ptr [ %i.ur, %.lr.ph.i.i842 ], [ %i.f, %vector.memcheck1996 ] ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1 ; 2 uses
  store ptr %i.uf, ptr %0, align 8, !tbaa !41
  %i.ug = load i8, ptr %i.ue, align 1, !tbaa !42
  %i.uh = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 1
  store i8 %i.ug, ptr %.024.i.i844, align 1, !tbaa !42
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 2 ; 2 uses
  store ptr %i.ui, ptr %0, align 8, !tbaa !41
  %i.uj = load i8, ptr %i.uf, align 1, !tbaa !42
  %i.uk = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 2
  store i8 %i.uj, ptr %i.uh, align 1, !tbaa !42
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 3 ; 2 uses
  store ptr %i.ul, ptr %0, align 8, !tbaa !41
  %i.um = load i8, ptr %i.ui, align 1, !tbaa !42
  %i.un = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 3
  store i8 %i.um, ptr %i.uk, align 1, !tbaa !42
  %i.uo = add nsw i32 %.05.i.i843, -4             ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 4 ; 3 uses
  store ptr %i.up, ptr %0, align 8, !tbaa !41
  %i.uq = load i8, ptr %i.ul, align 1, !tbaa !42
  %i.ur = getelementptr inbounds nuw i8, ptr %.024.i.i844, i64 4
  store i8 %i.uq, ptr %i.un, align 1, !tbaa !42
  %.not.i.i845.3 = icmp eq i32 %i.uo, 0
  br i1 %.not.i.i845.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846, label %.lr.ph.i.i842, !llvm.loop !157

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846: ; preds = %.lr.ph.i.i842, %middle.block2017
  %.lcssa1513 = phi ptr [ %i.ts, %middle.block2017 ], [ %i.up, %.lr.ph.i.i842 ] ; 2 uses
  %i.us = add nsw i32 %.013.i840, -1024           ; 2 uses
  %i.ut = icmp sgt i32 %.013.i840, 2047
  br i1 %i.ut, label %vector.memcheck1996, label %._crit_edge.i832, !llvm.loop !1

._crit_edge.i832:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846, %bb.an
  %.promoted.i833 = phi ptr [ %.promoted10.i831, %bb.an ], [ %.lcssa1513, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 8 uses
  %.0.lcssa.i834 = phi i32 [ %i.tp, %bb.an ], [ %i.us, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i846 ] ; 8 uses
  %i.uu = icmp sgt i32 %.0.lcssa.i834, 0
  br i1 %i.uu, label %.lr.ph.i5.i835.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847

.lr.ph.i5.i835.preheader:                         ; preds = %._crit_edge.i832
  %i.uv = zext nneg i32 %.0.lcssa.i834 to i64     ; 2 uses
  %min.iters.check1952 = icmp ult i32 %.0.lcssa.i834, 12
  br i1 %min.iters.check1952, label %.lr.ph.i5.i835.preheader2292, label %vector.memcheck1953

vector.memcheck1953:                              ; preds = %.lr.ph.i5.i835.preheader
  %i.uw = add nsw i32 %.0.lcssa.i834, -1
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr i8, ptr %scevgep1949, i64 %i.ux ; 2 uses
  %bound01954 = icmp ult ptr %0, %i.uy
  %found.conflict1956 = and i1 %bound01954, %bound11955
  %26 = zext nneg i32 %.0.lcssa.i834 to i64
  %27 = getelementptr i8, ptr %.promoted.i833, i64 %26 ; 2 uses
  %bound01957 = icmp ult ptr %0, %27
  %bound11958 = icmp ult ptr %.promoted.i833, %scevgep1950
  %found.conflict1959 = and i1 %bound01957, %bound11958
  %conflict.rdx1960 = or i1 %found.conflict1956, %found.conflict1959
  %bound01961 = icmp ult ptr %i.f, %27
  %bound11962 = icmp ult ptr %.promoted.i833, %i.uy
  %found.conflict1963 = and i1 %bound01961, %bound11962
  %conflict.rdx1964 = or i1 %conflict.rdx1960, %found.conflict1963
  br i1 %conflict.rdx1964, label %.lr.ph.i5.i835.preheader2292, label %vector.ph1965

vector.ph1965:                                    ; preds = %vector.memcheck1953
  %n.vec1966 = and i64 %i.uv, 2147483644          ; 5 uses
  %i.uz = getelementptr i8, ptr %.promoted.i833, i64 %n.vec1966
  %i.va = trunc nuw nsw i64 %n.vec1966 to i32
  %i.vb = sub nsw i32 %.0.lcssa.i834, %i.va
  %i.vc = getelementptr i8, ptr %i.f, i64 %n.vec1966
  br label %vector.body1967

vector.body1967:                                  ; preds = %vector.body1967, %vector.ph1965
  %index1968 = phi i64 [ 0, %vector.ph1965 ], [ %index.next1974, %vector.body1967 ] ; 4 uses
  %next.gep1969 = getelementptr i8, ptr %.promoted.i833, i64 %index1968 ; 2 uses
  %next.gep1971 = getelementptr i8, ptr %i.f, i64 %index1968 ; 2 uses
  %i.vd = getelementptr i8, ptr %next.gep1969, i64 2
  %wide.load1972 = load <2 x i8>, ptr %next.gep1969, align 1, !tbaa !42, !alias.scope !290
  %wide.load1973 = load <2 x i8>, ptr %i.vd, align 1, !tbaa !42, !alias.scope !290
  %i.ve = getelementptr i8, ptr %next.gep1971, i64 2
  store <2 x i8> %wide.load1972, ptr %next.gep1971, align 4, !tbaa !42, !alias.scope !291, !noalias !290
  store <2 x i8> %wide.load1973, ptr %i.ve, align 2, !tbaa !42, !alias.scope !291, !noalias !290
  %index.next1974 = add nuw i64 %index1968, 4     ; 2 uses
  %i.vf = icmp eq i64 %index.next1974, %n.vec1966
  br i1 %i.vf, label %middle.block1975, label %vector.body1967, !llvm.loop !161

middle.block1975:                                 ; preds = %vector.body1967
  %i.vg = getelementptr i8, ptr %.promoted.i833, i64 %index1968
  %i.vh = getelementptr i8, ptr %i.vg, i64 4
  store ptr %i.vh, ptr %0, align 8, !tbaa !41, !alias.scope !292, !noalias !293
  %cmp.n1976 = icmp eq i64 %n.vec1966, %i.uv
  br i1 %cmp.n1976, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835.preheader2292

.lr.ph.i5.i835.preheader2292:                     ; preds = %vector.memcheck1953, %.lr.ph.i5.i835.preheader, %middle.block1975
  %.ph2293 = phi ptr [ %.promoted.i833, %vector.memcheck1953 ], [ %.promoted.i833, %.lr.ph.i5.i835.preheader ], [ %i.uz, %middle.block1975 ] ; 2 uses
  %.05.i6.i836.ph = phi i32 [ %.0.lcssa.i834, %vector.memcheck1953 ], [ %.0.lcssa.i834, %.lr.ph.i5.i835.preheader ], [ %i.vb, %middle.block1975 ] ; 4 uses
  %.024.i7.i837.ph = phi ptr [ %i.f, %vector.memcheck1953 ], [ %i.f, %.lr.ph.i5.i835.preheader ], [ %i.vc, %middle.block1975 ] ; 2 uses
  %i.vi = add nsw i32 %.05.i6.i836.ph, -1
  %xtraiter2389 = and i32 %.05.i6.i836.ph, 3      ; 2 uses
  %lcmp.mod2390.not = icmp eq i32 %xtraiter2389, 0
  br i1 %lcmp.mod2390.not, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol

.lr.ph.i5.i835.prol:                              ; preds = %.lr.ph.i5.i835.preheader2292, %.lr.ph.i5.i835.prol
  %i.vj = phi ptr [ %i.vl, %.lr.ph.i5.i835.prol ], [ %.ph2293, %.lr.ph.i5.i835.preheader2292 ] ; 2 uses
  %.05.i6.i836.prol = phi i32 [ %i.vk, %.lr.ph.i5.i835.prol ], [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2292 ]
  %.024.i7.i837.prol = phi ptr [ %i.vn, %.lr.ph.i5.i835.prol ], [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2292 ] ; 2 uses
  %prol.iter2391 = phi i32 [ %prol.iter2391.next, %.lr.ph.i5.i835.prol ], [ 0, %.lr.ph.i5.i835.preheader2292 ]
  %i.vk = add nsw i32 %.05.i6.i836.prol, -1       ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 1 ; 3 uses
  store ptr %i.vl, ptr %0, align 8, !tbaa !41
  %i.vm = load i8, ptr %i.vj, align 1, !tbaa !42
  %i.vn = getelementptr inbounds nuw i8, ptr %.024.i7.i837.prol, i64 1 ; 2 uses
  store i8 %i.vm, ptr %.024.i7.i837.prol, align 1, !tbaa !42
  %prol.iter2391.next = add i32 %prol.iter2391, 1 ; 2 uses
  %prol.iter2391.cmp.not = icmp eq i32 %prol.iter2391.next, %xtraiter2389
  br i1 %prol.iter2391.cmp.not, label %.lr.ph.i5.i835.prol.loopexit, label %.lr.ph.i5.i835.prol, !llvm.loop !163

.lr.ph.i5.i835.prol.loopexit:                     ; preds = %.lr.ph.i5.i835.prol, %.lr.ph.i5.i835.preheader2292
  %.unr2392 = phi ptr [ %.ph2293, %.lr.ph.i5.i835.preheader2292 ], [ %i.vl, %.lr.ph.i5.i835.prol ]
  %.05.i6.i836.unr = phi i32 [ %.05.i6.i836.ph, %.lr.ph.i5.i835.preheader2292 ], [ %i.vk, %.lr.ph.i5.i835.prol ]
  %.024.i7.i837.unr = phi ptr [ %.024.i7.i837.ph, %.lr.ph.i5.i835.preheader2292 ], [ %i.vn, %.lr.ph.i5.i835.prol ]
  %i.vo = icmp ult i32 %i.vi, 3
  br i1 %i.vo, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835

.lr.ph.i5.i835:                                   ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835
  %i.vp = phi ptr [ %i.wa, %.lr.ph.i5.i835 ], [ %.unr2392, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %.05.i6.i836 = phi i32 [ %i.vz, %.lr.ph.i5.i835 ], [ %.05.i6.i836.unr, %.lr.ph.i5.i835.prol.loopexit ]
  %.024.i7.i837 = phi ptr [ %i.wc, %.lr.ph.i5.i835 ], [ %.024.i7.i837.unr, %.lr.ph.i5.i835.prol.loopexit ] ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 2 uses
  store ptr %i.vq, ptr %0, align 8, !tbaa !41
  %i.vr = load i8, ptr %i.vp, align 1, !tbaa !42
  %i.vs = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 1
  store i8 %i.vr, ptr %.024.i7.i837, align 1, !tbaa !42
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 2 ; 2 uses
  store ptr %i.vt, ptr %0, align 8, !tbaa !41
  %i.vu = load i8, ptr %i.vq, align 1, !tbaa !42
  %i.vv = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 2
  store i8 %i.vu, ptr %i.vs, align 1, !tbaa !42
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 3 ; 2 uses
  store ptr %i.vw, ptr %0, align 8, !tbaa !41
  %i.vx = load i8, ptr %i.vt, align 1, !tbaa !42
  %i.vy = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 3
  store i8 %i.vx, ptr %i.vv, align 1, !tbaa !42
  %i.vz = add nsw i32 %.05.i6.i836, -4            ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  store ptr %i.wa, ptr %0, align 8, !tbaa !41
  %i.wb = load i8, ptr %i.vw, align 1, !tbaa !42
  %i.wc = getelementptr inbounds nuw i8, ptr %.024.i7.i837, i64 4
  store i8 %i.wb, ptr %i.vy, align 1, !tbaa !42
  %.not.i8.i838.3 = icmp eq i32 %i.vz, 0
  br i1 %.not.i8.i838.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847, label %.lr.ph.i5.i835, !llvm.loop !164

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847: ; preds = %.lr.ph.i5.i835.prol.loopexit, %.lr.ph.i5.i835, %middle.block1975, %._crit_edge.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.loopexit998

.loopexit998:                                     ; preds = %.lr.ph1172, %.preheader997, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit847
  %indvars.iv.next1334 = add nsw i64 %indvars.iv1333, 1 ; 2 uses
  %lftr.wideiv1336 = trunc i64 %indvars.iv.next1334 to i32
  %exitcond1337.not = icmp eq i32 %i.su, %lftr.wideiv1336
  br i1 %exitcond1337.not, label %.loopexit981, label %bb.am, !llvm.loop !165

bb.ao:                                            ; preds = %.lr.ph1169, %.loopexit1002
  %indvars.iv1327 = phi i64 [ %i.sb, %.lr.ph1169 ], [ %indvars.iv.next1328, %.loopexit1002 ] ; 3 uses
  %i.wd = sub nsw i64 %indvars.iv1327, %i.sc
  %i.we = mul nsw i64 %13, %i.wd
  %i.wf = getelementptr inbounds i8, ptr %i.rs, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !41 ; 3 uses
  %i.wh = sub nsw i64 %indvars.iv1327, %i.sd
  %i.wi = mul nsw i64 %i.sa, %i.wh
  %i.wj = getelementptr inbounds i8, ptr %i.ry, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !32 ; 7 uses
  %.not752 = icmp eq ptr %i.wg, null
  br i1 %.not752, label %bb.aq, label %.preheader1001

.preheader1001:                                   ; preds = %bb.ao
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %.lr.ph1165, label %.loopexit1002

.lr.ph1165:                                       ; preds = %.preheader1001
  %.promoted1166 = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %xtraiter2377 = and i32 %i.wk, 1
  %i.wm = icmp eq i32 %i.wk, 1
  br i1 %i.wm, label %.epil.preheader2376, label %.lr.ph1165.new

.lr.ph1165.new:                                   ; preds = %.lr.ph1165
  %unroll_iter2383 = and i32 %i.wk, 2147483646
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph1165.new
  %i.wn = phi ptr [ %.promoted1166, %.lr.ph1165.new ], [ %i.wv, %bb.ap ] ; 5 uses
  %.06821163 = phi ptr [ %i.wg, %.lr.ph1165.new ], [ %i.wx, %bb.ap ] ; 2 uses
  %niter2384 = phi i32 [ 0, %.lr.ph1165.new ], [ %niter2384.next.1, %bb.ap ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 1 ; 2 uses
  store ptr %i.wo, ptr %0, align 8, !tbaa !41
  %i.wp = load i8, ptr %i.wn, align 1, !tbaa !42
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 2 ; 2 uses
  store ptr %i.wq, ptr %0, align 8, !tbaa !41
  %i.wr = load i8, ptr %i.wo, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849 = zext i8 %i.wr to i16
  %.sroa.4.0.insert.shift.i850 = shl nuw i16 %.sroa.4.0.insert.ext.i849, 8
  %.sroa.0.0.insert.ext.i851 = zext i8 %i.wp to i16
  %.sroa.0.0.insert.insert.i852 = or disjoint i16 %.sroa.4.0.insert.shift.i850, %.sroa.0.0.insert.ext.i851
  store i16 %.sroa.0.0.insert.insert.i852, ptr %.06821163, align 2, !tbaa !44
  %i.ws = getelementptr inbounds i8, ptr %.06821163, i64 %12 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wn, i64 3 ; 2 uses
  store ptr %i.wt, ptr %0, align 8, !tbaa !41
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !42
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 4 ; 3 uses
  store ptr %i.wv, ptr %0, align 8, !tbaa !41
  %i.ww = load i8, ptr %i.wt, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849.1 = zext i8 %i.ww to i16
  %.sroa.4.0.insert.shift.i850.1 = shl nuw i16 %.sroa.4.0.insert.ext.i849.1, 8
  %.sroa.0.0.insert.ext.i851.1 = zext i8 %i.wu to i16
  %.sroa.0.0.insert.insert.i852.1 = or disjoint i16 %.sroa.4.0.insert.shift.i850.1, %.sroa.0.0.insert.ext.i851.1
  store i16 %.sroa.0.0.insert.insert.i852.1, ptr %i.ws, align 2, !tbaa !44
  %i.wx = getelementptr inbounds i8, ptr %i.ws, i64 %12 ; 2 uses
  %niter2384.next.1 = add nuw nsw i32 %niter2384, 2 ; 2 uses
  %niter2384.ncmp.1 = icmp eq i32 %niter2384.next.1, %unroll_iter2383
  br i1 %niter2384.ncmp.1, label %.loopexit1002.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !166

bb.aq:                                            ; preds = %bb.ao
  %i.wy = shl nsw i32 %i.wk, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %.promoted10.i853 = load ptr, ptr %0, align 8   ; 2 uses
  %i.wz = icmp sgt i32 %i.wk, 511
  br i1 %i.wz, label %vector.memcheck1910, label %._crit_edge.i854

vector.memcheck1910:                              ; preds = %bb.aq, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868
  %.013.i862 = phi i32 [ %i.yb, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %i.wy, %bb.aq ] ; 2 uses
  %.promoted1112.i863 = phi ptr [ %.lcssa1515, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ], [ %.promoted10.i853, %bb.aq ] ; 10 uses
  %i.xa = getelementptr i8, ptr %.promoted1112.i863, i64 1024 ; 2 uses
  %bound01914 = icmp ult ptr %0, %i.xa
  %bound11915 = icmp ult ptr %.promoted1112.i863, %scevgep1864
  %found.conflict1916 = and i1 %bound01914, %bound11915
  %conflict.rdx1917 = or i1 %found.conflict1913, %found.conflict1916
  %bound01918 = icmp ult ptr %i.e, %i.xa
  %bound11919 = icmp ult ptr %.promoted1112.i863, %scevgep1908
  %found.conflict1920 = and i1 %bound01918, %bound11919
  %conflict.rdx1921 = or i1 %conflict.rdx1917, %found.conflict1920
  br i1 %conflict.rdx1921, label %.lr.ph.i.i864, label %vector.ph1922

vector.ph1922:                                    ; preds = %vector.memcheck1910
  %i.xb = getelementptr i8, ptr %.promoted1112.i863, i64 1024
  br label %vector.body1923

vector.body1923:                                  ; preds = %vector.body1923, %vector.ph1922
  %index1924 = phi i64 [ 0, %vector.ph1922 ], [ %index.next1930.3, %vector.body1923 ] ; 6 uses
  %next.gep1925 = getelementptr i8, ptr %.promoted1112.i863, i64 %index1924 ; 2 uses
  %next.gep1927 = getelementptr i8, ptr %i.e, i64 %index1924 ; 2 uses
  %i.xc = getelementptr i8, ptr %next.gep1925, i64 2
  %wide.load1928 = load <2 x i8>, ptr %next.gep1925, align 1, !tbaa !42, !alias.scope !294
  %wide.load1929 = load <2 x i8>, ptr %i.xc, align 1, !tbaa !42, !alias.scope !294
  %i.xd = getelementptr i8, ptr %next.gep1927, i64 2
  store <2 x i8> %wide.load1928, ptr %next.gep1927, align 16, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1929, ptr %i.xd, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1930 = or disjoint i64 %index1924, 4 ; 2 uses
  %next.gep1925.1 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1930 ; 2 uses
  %next.gep1927.1 = getelementptr i8, ptr %i.e, i64 %index.next1930 ; 2 uses
  %i.xe = getelementptr i8, ptr %next.gep1925.1, i64 2
  %wide.load1928.1 = load <2 x i8>, ptr %next.gep1925.1, align 1, !tbaa !42, !alias.scope !294
  %wide.load1929.1 = load <2 x i8>, ptr %i.xe, align 1, !tbaa !42, !alias.scope !294
  %i.xf = getelementptr i8, ptr %next.gep1927.1, i64 2
  store <2 x i8> %wide.load1928.1, ptr %next.gep1927.1, align 4, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1929.1, ptr %i.xf, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1930.1 = or disjoint i64 %index1924, 8 ; 2 uses
  %next.gep1925.2 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1930.1 ; 2 uses
  %next.gep1927.2 = getelementptr i8, ptr %i.e, i64 %index.next1930.1 ; 2 uses
  %i.xg = getelementptr i8, ptr %next.gep1925.2, i64 2
  %wide.load1928.2 = load <2 x i8>, ptr %next.gep1925.2, align 1, !tbaa !42, !alias.scope !294
  %wide.load1929.2 = load <2 x i8>, ptr %i.xg, align 1, !tbaa !42, !alias.scope !294
  %i.xh = getelementptr i8, ptr %next.gep1927.2, i64 2
  store <2 x i8> %wide.load1928.2, ptr %next.gep1927.2, align 8, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1929.2, ptr %i.xh, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1930.2 = or disjoint i64 %index1924, 12 ; 3 uses
  %next.gep1925.3 = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1930.2 ; 2 uses
  %next.gep1927.3 = getelementptr i8, ptr %i.e, i64 %index.next1930.2 ; 2 uses
  %i.xi = getelementptr i8, ptr %next.gep1925.3, i64 2
  %wide.load1928.3 = load <2 x i8>, ptr %next.gep1925.3, align 1, !tbaa !42, !alias.scope !294
  %wide.load1929.3 = load <2 x i8>, ptr %i.xi, align 1, !tbaa !42, !alias.scope !294
  %i.xj = getelementptr i8, ptr %next.gep1927.3, i64 2
  store <2 x i8> %wide.load1928.3, ptr %next.gep1927.3, align 4, !tbaa !42, !alias.scope !295, !noalias !294
  store <2 x i8> %wide.load1929.3, ptr %i.xj, align 2, !tbaa !42, !alias.scope !295, !noalias !294
  %index.next1930.3 = add nuw nsw i64 %index1924, 16 ; 2 uses
  %i.xk = icmp eq i64 %index.next1930.3, 1024
  br i1 %i.xk, label %middle.block1931, label %vector.body1923, !llvm.loop !170

middle.block1931:                                 ; preds = %vector.body1923
  %i.xl = getelementptr i8, ptr %.promoted1112.i863, i64 %index.next1930.2
  %i.xm = getelementptr i8, ptr %i.xl, i64 4
  store ptr %i.xm, ptr %0, align 8, !tbaa !41, !alias.scope !296, !noalias !297
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868

.lr.ph.i.i864:                                    ; preds = %vector.memcheck1910, %.lr.ph.i.i864
  %i.xn = phi ptr [ %i.xy, %.lr.ph.i.i864 ], [ %.promoted1112.i863, %vector.memcheck1910 ] ; 5 uses
  %.05.i.i865 = phi i32 [ %i.xx, %.lr.ph.i.i864 ], [ 1024, %vector.memcheck1910 ]
  %.024.i.i866 = phi ptr [ %i.ya, %.lr.ph.i.i864 ], [ %i.e, %vector.memcheck1910 ] ; 5 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 1 ; 2 uses
  store ptr %i.xo, ptr %0, align 8, !tbaa !41
  %i.xp = load i8, ptr %i.xn, align 1, !tbaa !42
  %i.xq = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 1
  store i8 %i.xp, ptr %.024.i.i866, align 1, !tbaa !42
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 2 ; 2 uses
  store ptr %i.xr, ptr %0, align 8, !tbaa !41
  %i.xs = load i8, ptr %i.xo, align 1, !tbaa !42
  %i.xt = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 2
  store i8 %i.xs, ptr %i.xq, align 1, !tbaa !42
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xn, i64 3 ; 2 uses
  store ptr %i.xu, ptr %0, align 8, !tbaa !41
  %i.xv = load i8, ptr %i.xr, align 1, !tbaa !42
  %i.xw = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 3
  store i8 %i.xv, ptr %i.xt, align 1, !tbaa !42
  %i.xx = add nsw i32 %.05.i.i865, -4             ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xn, i64 4 ; 3 uses
  store ptr %i.xy, ptr %0, align 8, !tbaa !41
  %i.xz = load i8, ptr %i.xu, align 1, !tbaa !42
  %i.ya = getelementptr inbounds nuw i8, ptr %.024.i.i866, i64 4
  store i8 %i.xz, ptr %i.xw, align 1, !tbaa !42
  %.not.i.i867.3 = icmp eq i32 %i.xx, 0
  br i1 %.not.i.i867.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868, label %.lr.ph.i.i864, !llvm.loop !172

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868: ; preds = %.lr.ph.i.i864, %middle.block1931
  %.lcssa1515 = phi ptr [ %i.xb, %middle.block1931 ], [ %i.xy, %.lr.ph.i.i864 ] ; 2 uses
  %i.yb = add nsw i32 %.013.i862, -1024           ; 2 uses
  %i.yc = icmp sgt i32 %.013.i862, 2047
  br i1 %i.yc, label %vector.memcheck1910, label %._crit_edge.i854, !llvm.loop !1

._crit_edge.i854:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868, %bb.aq
  %.promoted.i855 = phi ptr [ %.promoted10.i853, %bb.aq ], [ %.lcssa1515, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 8 uses
  %.0.lcssa.i856 = phi i32 [ %i.wy, %bb.aq ], [ %i.yb, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i868 ] ; 8 uses
  %i.yd = icmp sgt i32 %.0.lcssa.i856, 0
  br i1 %i.yd, label %.lr.ph.i5.i857.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869

.lr.ph.i5.i857.preheader:                         ; preds = %._crit_edge.i854
  %i.ye = zext nneg i32 %.0.lcssa.i856 to i64     ; 2 uses
  %min.iters.check1866 = icmp ult i32 %.0.lcssa.i856, 12
  br i1 %min.iters.check1866, label %.lr.ph.i5.i857.preheader2297, label %vector.memcheck1867

vector.memcheck1867:                              ; preds = %.lr.ph.i5.i857.preheader
  %i.yf = add nsw i32 %.0.lcssa.i856, -1
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr i8, ptr %scevgep1863, i64 %i.yg ; 2 uses
  %bound01868 = icmp ult ptr %0, %i.yh
  %found.conflict1870 = and i1 %bound01868, %bound11869
  %28 = zext nneg i32 %.0.lcssa.i856 to i64
  %29 = getelementptr i8, ptr %.promoted.i855, i64 %28 ; 2 uses
  %bound01871 = icmp ult ptr %0, %29
  %bound11872 = icmp ult ptr %.promoted.i855, %scevgep1864
  %found.conflict1873 = and i1 %bound01871, %bound11872
  %conflict.rdx1874 = or i1 %found.conflict1870, %found.conflict1873
  %bound01875 = icmp ult ptr %i.e, %29
  %bound11876 = icmp ult ptr %.promoted.i855, %i.yh
  %found.conflict1877 = and i1 %bound01875, %bound11876
  %conflict.rdx1878 = or i1 %conflict.rdx1874, %found.conflict1877
  br i1 %conflict.rdx1878, label %.lr.ph.i5.i857.preheader2297, label %vector.ph1879

vector.ph1879:                                    ; preds = %vector.memcheck1867
  %n.vec1880 = and i64 %i.ye, 2147483644          ; 5 uses
  %i.yi = getelementptr i8, ptr %.promoted.i855, i64 %n.vec1880
  %i.yj = trunc nuw nsw i64 %n.vec1880 to i32
  %i.yk = sub nsw i32 %.0.lcssa.i856, %i.yj
  %i.yl = getelementptr i8, ptr %i.e, i64 %n.vec1880
  br label %vector.body1881

vector.body1881:                                  ; preds = %vector.body1881, %vector.ph1879
  %index1882 = phi i64 [ 0, %vector.ph1879 ], [ %index.next1888, %vector.body1881 ] ; 4 uses
  %next.gep1883 = getelementptr i8, ptr %.promoted.i855, i64 %index1882 ; 2 uses
  %next.gep1885 = getelementptr i8, ptr %i.e, i64 %index1882 ; 2 uses
  %i.ym = getelementptr i8, ptr %next.gep1883, i64 2
  %wide.load1886 = load <2 x i8>, ptr %next.gep1883, align 1, !tbaa !42, !alias.scope !298
  %wide.load1887 = load <2 x i8>, ptr %i.ym, align 1, !tbaa !42, !alias.scope !298
  %i.yn = getelementptr i8, ptr %next.gep1885, i64 2
  store <2 x i8> %wide.load1886, ptr %next.gep1885, align 4, !tbaa !42, !alias.scope !299, !noalias !298
  store <2 x i8> %wide.load1887, ptr %i.yn, align 2, !tbaa !42, !alias.scope !299, !noalias !298
  %index.next1888 = add nuw i64 %index1882, 4     ; 2 uses
  %i.yo = icmp eq i64 %index.next1888, %n.vec1880
  br i1 %i.yo, label %middle.block1889, label %vector.body1881, !llvm.loop !176

middle.block1889:                                 ; preds = %vector.body1881
  %i.yp = getelementptr i8, ptr %.promoted.i855, i64 %index1882
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  store ptr %i.yq, ptr %0, align 8, !tbaa !41, !alias.scope !300, !noalias !301
  %cmp.n1890 = icmp eq i64 %n.vec1880, %i.ye
  br i1 %cmp.n1890, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857.preheader2297

.lr.ph.i5.i857.preheader2297:                     ; preds = %vector.memcheck1867, %.lr.ph.i5.i857.preheader, %middle.block1889
  %.ph2298 = phi ptr [ %.promoted.i855, %vector.memcheck1867 ], [ %.promoted.i855, %.lr.ph.i5.i857.preheader ], [ %i.yi, %middle.block1889 ] ; 2 uses
  %.05.i6.i858.ph = phi i32 [ %.0.lcssa.i856, %vector.memcheck1867 ], [ %.0.lcssa.i856, %.lr.ph.i5.i857.preheader ], [ %i.yk, %middle.block1889 ] ; 4 uses
  %.024.i7.i859.ph = phi ptr [ %i.e, %vector.memcheck1867 ], [ %i.e, %.lr.ph.i5.i857.preheader ], [ %i.yl, %middle.block1889 ] ; 2 uses
  %i.yr = add nsw i32 %.05.i6.i858.ph, -1
  %xtraiter2385 = and i32 %.05.i6.i858.ph, 3      ; 2 uses
  %lcmp.mod2386.not = icmp eq i32 %xtraiter2385, 0
  br i1 %lcmp.mod2386.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol

.lr.ph.i5.i857.prol:                              ; preds = %.lr.ph.i5.i857.preheader2297, %.lr.ph.i5.i857.prol
  %i.ys = phi ptr [ %i.yu, %.lr.ph.i5.i857.prol ], [ %.ph2298, %.lr.ph.i5.i857.preheader2297 ] ; 2 uses
  %.05.i6.i858.prol = phi i32 [ %i.yt, %.lr.ph.i5.i857.prol ], [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2297 ]
  %.024.i7.i859.prol = phi ptr [ %i.yw, %.lr.ph.i5.i857.prol ], [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2297 ] ; 2 uses
  %prol.iter2387 = phi i32 [ %prol.iter2387.next, %.lr.ph.i5.i857.prol ], [ 0, %.lr.ph.i5.i857.preheader2297 ]
  %i.yt = add nsw i32 %.05.i6.i858.prol, -1       ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 1 ; 3 uses
  store ptr %i.yu, ptr %0, align 8, !tbaa !41
  %i.yv = load i8, ptr %i.ys, align 1, !tbaa !42
  %i.yw = getelementptr inbounds nuw i8, ptr %.024.i7.i859.prol, i64 1 ; 2 uses
  store i8 %i.yv, ptr %.024.i7.i859.prol, align 1, !tbaa !42
  %prol.iter2387.next = add i32 %prol.iter2387, 1 ; 2 uses
  %prol.iter2387.cmp.not = icmp eq i32 %prol.iter2387.next, %xtraiter2385
  br i1 %prol.iter2387.cmp.not, label %.lr.ph.i5.i857.prol.loopexit, label %.lr.ph.i5.i857.prol, !llvm.loop !178

.lr.ph.i5.i857.prol.loopexit:                     ; preds = %.lr.ph.i5.i857.prol, %.lr.ph.i5.i857.preheader2297
  %.unr2388 = phi ptr [ %.ph2298, %.lr.ph.i5.i857.preheader2297 ], [ %i.yu, %.lr.ph.i5.i857.prol ]
  %.05.i6.i858.unr = phi i32 [ %.05.i6.i858.ph, %.lr.ph.i5.i857.preheader2297 ], [ %i.yt, %.lr.ph.i5.i857.prol ]
  %.024.i7.i859.unr = phi ptr [ %.024.i7.i859.ph, %.lr.ph.i5.i857.preheader2297 ], [ %i.yw, %.lr.ph.i5.i857.prol ]
  %i.yx = icmp ult i32 %i.yr, 3
  br i1 %i.yx, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857

.lr.ph.i5.i857:                                   ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857
  %i.yy = phi ptr [ %i.zj, %.lr.ph.i5.i857 ], [ %.unr2388, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %.05.i6.i858 = phi i32 [ %i.zi, %.lr.ph.i5.i857 ], [ %.05.i6.i858.unr, %.lr.ph.i5.i857.prol.loopexit ]
  %.024.i7.i859 = phi ptr [ %i.zl, %.lr.ph.i5.i857 ], [ %.024.i7.i859.unr, %.lr.ph.i5.i857.prol.loopexit ] ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 1 ; 2 uses
  store ptr %i.yz, ptr %0, align 8, !tbaa !41
  %i.za = load i8, ptr %i.yy, align 1, !tbaa !42
  %i.zb = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 1
  store i8 %i.za, ptr %.024.i7.i859, align 1, !tbaa !42
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 2 ; 2 uses
  store ptr %i.zc, ptr %0, align 8, !tbaa !41
  %i.zd = load i8, ptr %i.yz, align 1, !tbaa !42
  %i.ze = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 2
  store i8 %i.zd, ptr %i.zb, align 1, !tbaa !42
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 3 ; 2 uses
  store ptr %i.zf, ptr %0, align 8, !tbaa !41
  %i.zg = load i8, ptr %i.zc, align 1, !tbaa !42
  %i.zh = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 3
  store i8 %i.zg, ptr %i.ze, align 1, !tbaa !42
  %i.zi = add nsw i32 %.05.i6.i858, -4            ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yy, i64 4 ; 2 uses
  store ptr %i.zj, ptr %0, align 8, !tbaa !41
  %i.zk = load i8, ptr %i.zf, align 1, !tbaa !42
  %i.zl = getelementptr inbounds nuw i8, ptr %.024.i7.i859, i64 4
  store i8 %i.zk, ptr %i.zh, align 1, !tbaa !42
  %.not.i8.i860.3 = icmp eq i32 %i.zi, 0
  br i1 %.not.i8.i860.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869, label %.lr.ph.i5.i857, !llvm.loop !179

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869: ; preds = %.lr.ph.i5.i857.prol.loopexit, %.lr.ph.i5.i857, %middle.block1889, %._crit_edge.i854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.loopexit1002

.loopexit1002.loopexit.unr-lcssa:                 ; preds = %bb.ap
  %lcmp.mod2381.not = icmp eq i32 %xtraiter2377, 0
  br i1 %lcmp.mod2381.not, label %.loopexit1002, label %.epil.preheader2376

.epil.preheader2376:                              ; preds = %.loopexit1002.loopexit.unr-lcssa, %.lr.ph1165
  %.epil.init2380 = phi ptr [ %.promoted1166, %.lr.ph1165 ], [ %i.wv, %.loopexit1002.loopexit.unr-lcssa ] ; 3 uses
  %.06821163.epil.init = phi ptr [ %i.wg, %.lr.ph1165 ], [ %i.wx, %.loopexit1002.loopexit.unr-lcssa ]
  %lcmp.mod2382 = trunc i32 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod2382)
  %i.zm = getelementptr inbounds nuw i8, ptr %.epil.init2380, i64 1 ; 2 uses
  store ptr %i.zm, ptr %0, align 8, !tbaa !41
  %i.zn = load i8, ptr %.epil.init2380, align 1, !tbaa !42
  %i.zo = getelementptr inbounds nuw i8, ptr %.epil.init2380, i64 2
  store ptr %i.zo, ptr %0, align 8, !tbaa !41
  %i.zp = load i8, ptr %i.zm, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i849.epil = zext i8 %i.zp to i16
  %.sroa.4.0.insert.shift.i850.epil = shl nuw i16 %.sroa.4.0.insert.ext.i849.epil, 8
  %.sroa.0.0.insert.ext.i851.epil = zext i8 %i.zn to i16
  %.sroa.0.0.insert.insert.i852.epil = or disjoint i16 %.sroa.4.0.insert.shift.i850.epil, %.sroa.0.0.insert.ext.i851.epil
  store i16 %.sroa.0.0.insert.insert.i852.epil, ptr %.06821163.epil.init, align 2, !tbaa !44
  br label %.loopexit1002

.loopexit1002:                                    ; preds = %.epil.preheader2376, %.loopexit1002.loopexit.unr-lcssa, %.preheader1001, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit869
  %indvars.iv.next1328 = add nsw i64 %indvars.iv1327, 1 ; 2 uses
  %lftr.wideiv1330 = trunc i64 %indvars.iv.next1328 to i32
  %exitcond1331.not = icmp eq i32 %i.se, %lftr.wideiv1330
  br i1 %exitcond1331.not, label %.loopexit981, label %bb.ao, !llvm.loop !180

bb.ar:                                            ; preds = %.lr.ph1162, %.loopexit1006
  %indvars.iv1321 = phi i64 [ %i.rl, %.lr.ph1162 ], [ %indvars.iv.next1322, %.loopexit1006 ] ; 3 uses
  %i.zq = sub nsw i64 %indvars.iv1321, %i.rm
  %i.zr = mul nsw i64 %13, %i.zq
  %i.zs = getelementptr inbounds i8, ptr %i.rc, i64 %i.zr
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !41 ; 2 uses
  %i.zu = sub nsw i64 %indvars.iv1321, %i.rn
  %i.zv = mul nsw i64 %i.rk, %i.zu
  %i.zw = getelementptr inbounds i8, ptr %i.ri, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !32 ; 4 uses
  %.not750 = icmp eq ptr %i.zt, null
  br i1 %.not750, label %bb.as, label %.preheader1005

.preheader1005:                                   ; preds = %bb.ar
  %i.zy = icmp sgt i32 %i.zx, 0
  br i1 %i.zy, label %.lr.ph1159, label %.loopexit1006

.lr.ph1159:                                       ; preds = %.preheader1005, %.lr.ph1159
  %.06781158 = phi i32 [ %i.aak, %.lr.ph1159 ], [ 0, %.preheader1005 ]
  %.06791157 = phi ptr [ %i.aaj, %.lr.ph1159 ], [ %i.zt, %.preheader1005 ] ; 2 uses
  %.promoted.i870 = load ptr, ptr %0, align 8, !tbaa !41 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 1 ; 2 uses
  store ptr %i.zz, ptr %0, align 8, !tbaa !41
  %i.aaa = load i8, ptr %.promoted.i870, align 1, !tbaa !42
  %i.aab = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 2 ; 2 uses
  store ptr %i.aab, ptr %0, align 8, !tbaa !41
  %i.aac = load i8, ptr %i.zz, align 1, !tbaa !42
  %i.aad = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 3 ; 2 uses
  store ptr %i.aad, ptr %0, align 8, !tbaa !41
  %i.aae = load i8, ptr %i.aab, align 1, !tbaa !42
  %i.aaf = getelementptr inbounds nuw i8, ptr %.promoted.i870, i64 4
  store ptr %i.aaf, ptr %0, align 8, !tbaa !41
  %i.aag = load i8, ptr %i.aad, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i871 = zext i8 %i.aag to i32
  %.sroa.6.0.insert.shift.i872 = shl nuw i32 %.sroa.6.0.insert.ext.i871, 24
  %.sroa.5.0.insert.ext.i873 = zext i8 %i.aae to i32
  %.sroa.5.0.insert.shift.i874 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i873, 16
  %.sroa.4.0.insert.ext.i876 = zext i8 %i.aac to i32
  %.sroa.4.0.insert.shift.i877 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i876, 8
  %.sroa.0.0.insert.ext.i879 = zext i8 %i.aaa to i32
  %.sroa.5.0.insert.insert.i875 = or disjoint i32 %.sroa.4.0.insert.shift.i877, %.sroa.0.0.insert.ext.i879
  %.sroa.4.0.insert.insert.i878 = or disjoint i32 %.sroa.5.0.insert.insert.i875, %.sroa.5.0.insert.shift.i874
  %.sroa.0.0.insert.insert.i880 = or disjoint i32 %.sroa.4.0.insert.insert.i878, %.sroa.6.0.insert.shift.i872
  %i.aah = bitcast i32 %.sroa.0.0.insert.insert.i880 to float
  %i.aai = tail call i16 @_ZN7Imf_3_411floatToHalfEf(float noundef %i.aah)
  store i16 %i.aai, ptr %.06791157, align 2, !tbaa !37
  %i.aaj = getelementptr inbounds i8, ptr %.06791157, i64 %12
  %i.aak = add nuw nsw i32 %.06781158, 1          ; 2 uses
  %exitcond1320.not = icmp eq i32 %i.aak, %i.zx
  br i1 %exitcond1320.not, label %.loopexit1006, label %.lr.ph1159, !llvm.loop !181

bb.as:                                            ; preds = %bb.ar
  %i.aal = shl nsw i32 %i.zx, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %.promoted10.i881 = load ptr, ptr %0, align 8   ; 2 uses
  %i.aam = icmp sgt i32 %i.zx, 255
  br i1 %i.aam, label %vector.memcheck1824, label %._crit_edge.i882

vector.memcheck1824:                              ; preds = %bb.as, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896
  %.013.i890 = phi i32 [ %i.abo, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %i.aal, %bb.as ] ; 2 uses
  %.promoted1112.i891 = phi ptr [ %.lcssa1517, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ], [ %.promoted10.i881, %bb.as ] ; 10 uses
  %i.aan = getelementptr i8, ptr %.promoted1112.i891, i64 1024 ; 2 uses
  %bound01828 = icmp ult ptr %0, %i.aan
  %bound11829 = icmp ult ptr %.promoted1112.i891, %scevgep1778
  %found.conflict1830 = and i1 %bound01828, %bound11829
  %conflict.rdx1831 = or i1 %found.conflict1827, %found.conflict1830
  %bound01832 = icmp ult ptr %i.d, %i.aan
  %bound11833 = icmp ult ptr %.promoted1112.i891, %scevgep1822
  %found.conflict1834 = and i1 %bound01832, %bound11833
  %conflict.rdx1835 = or i1 %conflict.rdx1831, %found.conflict1834
  br i1 %conflict.rdx1835, label %.lr.ph.i.i892, label %vector.ph1836

vector.ph1836:                                    ; preds = %vector.memcheck1824
  %i.aao = getelementptr i8, ptr %.promoted1112.i891, i64 1024
  br label %vector.body1837

vector.body1837:                                  ; preds = %vector.body1837, %vector.ph1836
  %index1838 = phi i64 [ 0, %vector.ph1836 ], [ %index.next1844.3, %vector.body1837 ] ; 6 uses
  %next.gep1839 = getelementptr i8, ptr %.promoted1112.i891, i64 %index1838 ; 2 uses
  %next.gep1841 = getelementptr i8, ptr %i.d, i64 %index1838 ; 2 uses
  %i.aap = getelementptr i8, ptr %next.gep1839, i64 2
  %wide.load1842 = load <2 x i8>, ptr %next.gep1839, align 1, !tbaa !42, !alias.scope !302
  %wide.load1843 = load <2 x i8>, ptr %i.aap, align 1, !tbaa !42, !alias.scope !302
  %i.aaq = getelementptr i8, ptr %next.gep1841, i64 2
  store <2 x i8> %wide.load1842, ptr %next.gep1841, align 16, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1843, ptr %i.aaq, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1844 = or disjoint i64 %index1838, 4 ; 2 uses
  %next.gep1839.1 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1844 ; 2 uses
  %next.gep1841.1 = getelementptr i8, ptr %i.d, i64 %index.next1844 ; 2 uses
  %i.aar = getelementptr i8, ptr %next.gep1839.1, i64 2
  %wide.load1842.1 = load <2 x i8>, ptr %next.gep1839.1, align 1, !tbaa !42, !alias.scope !302
  %wide.load1843.1 = load <2 x i8>, ptr %i.aar, align 1, !tbaa !42, !alias.scope !302
  %i.aas = getelementptr i8, ptr %next.gep1841.1, i64 2
  store <2 x i8> %wide.load1842.1, ptr %next.gep1841.1, align 4, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1843.1, ptr %i.aas, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1844.1 = or disjoint i64 %index1838, 8 ; 2 uses
  %next.gep1839.2 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1844.1 ; 2 uses
  %next.gep1841.2 = getelementptr i8, ptr %i.d, i64 %index.next1844.1 ; 2 uses
  %i.aat = getelementptr i8, ptr %next.gep1839.2, i64 2
  %wide.load1842.2 = load <2 x i8>, ptr %next.gep1839.2, align 1, !tbaa !42, !alias.scope !302
  %wide.load1843.2 = load <2 x i8>, ptr %i.aat, align 1, !tbaa !42, !alias.scope !302
  %i.aau = getelementptr i8, ptr %next.gep1841.2, i64 2
  store <2 x i8> %wide.load1842.2, ptr %next.gep1841.2, align 8, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1843.2, ptr %i.aau, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1844.2 = or disjoint i64 %index1838, 12 ; 3 uses
  %next.gep1839.3 = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1844.2 ; 2 uses
  %next.gep1841.3 = getelementptr i8, ptr %i.d, i64 %index.next1844.2 ; 2 uses
  %i.aav = getelementptr i8, ptr %next.gep1839.3, i64 2
  %wide.load1842.3 = load <2 x i8>, ptr %next.gep1839.3, align 1, !tbaa !42, !alias.scope !302
  %wide.load1843.3 = load <2 x i8>, ptr %i.aav, align 1, !tbaa !42, !alias.scope !302
  %i.aaw = getelementptr i8, ptr %next.gep1841.3, i64 2
  store <2 x i8> %wide.load1842.3, ptr %next.gep1841.3, align 4, !tbaa !42, !alias.scope !303, !noalias !302
  store <2 x i8> %wide.load1843.3, ptr %i.aaw, align 2, !tbaa !42, !alias.scope !303, !noalias !302
  %index.next1844.3 = add nuw nsw i64 %index1838, 16 ; 2 uses
  %i.aax = icmp eq i64 %index.next1844.3, 1024
  br i1 %i.aax, label %middle.block1845, label %vector.body1837, !llvm.loop !185

middle.block1845:                                 ; preds = %vector.body1837
  %i.aay = getelementptr i8, ptr %.promoted1112.i891, i64 %index.next1844.2
  %i.aaz = getelementptr i8, ptr %i.aay, i64 4
  store ptr %i.aaz, ptr %0, align 8, !tbaa !41, !alias.scope !304, !noalias !305
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896

.lr.ph.i.i892:                                    ; preds = %vector.memcheck1824, %.lr.ph.i.i892
  %i.aba = phi ptr [ %i.abl, %.lr.ph.i.i892 ], [ %.promoted1112.i891, %vector.memcheck1824 ] ; 5 uses
  %.05.i.i893 = phi i32 [ %i.abk, %.lr.ph.i.i892 ], [ 1024, %vector.memcheck1824 ]
  %.024.i.i894 = phi ptr [ %i.abn, %.lr.ph.i.i892 ], [ %i.d, %vector.memcheck1824 ] ; 5 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 1 ; 2 uses
  store ptr %i.abb, ptr %0, align 8, !tbaa !41
  %i.abc = load i8, ptr %i.aba, align 1, !tbaa !42
  %i.abd = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 1
  store i8 %i.abc, ptr %.024.i.i894, align 1, !tbaa !42
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 2 ; 2 uses
  store ptr %i.abe, ptr %0, align 8, !tbaa !41
  %i.abf = load i8, ptr %i.abb, align 1, !tbaa !42
  %i.abg = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 2
  store i8 %i.abf, ptr %i.abd, align 1, !tbaa !42
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 3 ; 2 uses
  store ptr %i.abh, ptr %0, align 8, !tbaa !41
  %i.abi = load i8, ptr %i.abe, align 1, !tbaa !42
  %i.abj = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 3
  store i8 %i.abi, ptr %i.abg, align 1, !tbaa !42
  %i.abk = add nsw i32 %.05.i.i893, -4            ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aba, i64 4 ; 3 uses
  store ptr %i.abl, ptr %0, align 8, !tbaa !41
  %i.abm = load i8, ptr %i.abh, align 1, !tbaa !42
  %i.abn = getelementptr inbounds nuw i8, ptr %.024.i.i894, i64 4
  store i8 %i.abm, ptr %i.abj, align 1, !tbaa !42
  %.not.i.i895.3 = icmp eq i32 %i.abk, 0
  br i1 %.not.i.i895.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896, label %.lr.ph.i.i892, !llvm.loop !187

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896: ; preds = %.lr.ph.i.i892, %middle.block1845
  %.lcssa1517 = phi ptr [ %i.aao, %middle.block1845 ], [ %i.abl, %.lr.ph.i.i892 ] ; 2 uses
  %i.abo = add nsw i32 %.013.i890, -1024          ; 2 uses
  %i.abp = icmp sgt i32 %.013.i890, 2047
  br i1 %i.abp, label %vector.memcheck1824, label %._crit_edge.i882, !llvm.loop !1

._crit_edge.i882:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896, %bb.as
  %.promoted.i883 = phi ptr [ %.promoted10.i881, %bb.as ], [ %.lcssa1517, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 8 uses
  %.0.lcssa.i884 = phi i32 [ %i.aal, %bb.as ], [ %i.abo, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i896 ] ; 8 uses
  %i.abq = icmp sgt i32 %.0.lcssa.i884, 0
  br i1 %i.abq, label %.lr.ph.i5.i885.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897

.lr.ph.i5.i885.preheader:                         ; preds = %._crit_edge.i882
  %i.abr = zext nneg i32 %.0.lcssa.i884 to i64    ; 2 uses
  %min.iters.check1780 = icmp ult i32 %.0.lcssa.i884, 12
  br i1 %min.iters.check1780, label %.lr.ph.i5.i885.preheader2302, label %vector.memcheck1781

vector.memcheck1781:                              ; preds = %.lr.ph.i5.i885.preheader
  %i.abs = add nsw i32 %.0.lcssa.i884, -1
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr i8, ptr %scevgep1777, i64 %i.abt ; 2 uses
  %bound01782 = icmp ult ptr %0, %i.abu
  %found.conflict1784 = and i1 %bound01782, %bound11783
  %30 = zext nneg i32 %.0.lcssa.i884 to i64
  %31 = getelementptr i8, ptr %.promoted.i883, i64 %30 ; 2 uses
  %bound01785 = icmp ult ptr %0, %31
  %bound11786 = icmp ult ptr %.promoted.i883, %scevgep1778
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1788 = or i1 %found.conflict1784, %found.conflict1787
  %bound01789 = icmp ult ptr %i.d, %31
  %bound11790 = icmp ult ptr %.promoted.i883, %i.abu
  %found.conflict1791 = and i1 %bound01789, %bound11790
  %conflict.rdx1792 = or i1 %conflict.rdx1788, %found.conflict1791
  br i1 %conflict.rdx1792, label %.lr.ph.i5.i885.preheader2302, label %vector.ph1793

vector.ph1793:                                    ; preds = %vector.memcheck1781
  %n.vec1794 = and i64 %i.abr, 2147483644         ; 5 uses
  %i.abv = getelementptr i8, ptr %.promoted.i883, i64 %n.vec1794
  %i.abw = trunc nuw nsw i64 %n.vec1794 to i32
  %i.abx = sub nsw i32 %.0.lcssa.i884, %i.abw
  %i.aby = getelementptr i8, ptr %i.d, i64 %n.vec1794
  br label %vector.body1795

vector.body1795:                                  ; preds = %vector.body1795, %vector.ph1793
  %index1796 = phi i64 [ 0, %vector.ph1793 ], [ %index.next1802, %vector.body1795 ] ; 4 uses
  %next.gep1797 = getelementptr i8, ptr %.promoted.i883, i64 %index1796 ; 2 uses
  %next.gep1799 = getelementptr i8, ptr %i.d, i64 %index1796 ; 2 uses
  %i.abz = getelementptr i8, ptr %next.gep1797, i64 2
  %wide.load1800 = load <2 x i8>, ptr %next.gep1797, align 1, !tbaa !42, !alias.scope !306
  %wide.load1801 = load <2 x i8>, ptr %i.abz, align 1, !tbaa !42, !alias.scope !306
  %i.aca = getelementptr i8, ptr %next.gep1799, i64 2
  store <2 x i8> %wide.load1800, ptr %next.gep1799, align 4, !tbaa !42, !alias.scope !307, !noalias !306
  store <2 x i8> %wide.load1801, ptr %i.aca, align 2, !tbaa !42, !alias.scope !307, !noalias !306
  %index.next1802 = add nuw i64 %index1796, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next1802, %n.vec1794
  br i1 %i.acb, label %middle.block1803, label %vector.body1795, !llvm.loop !191

middle.block1803:                                 ; preds = %vector.body1795
  %i.acc = getelementptr i8, ptr %.promoted.i883, i64 %index1796
  %i.acd = getelementptr i8, ptr %i.acc, i64 4
  store ptr %i.acd, ptr %0, align 8, !tbaa !41, !alias.scope !308, !noalias !309
  %cmp.n1804 = icmp eq i64 %n.vec1794, %i.abr
  br i1 %cmp.n1804, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885.preheader2302

.lr.ph.i5.i885.preheader2302:                     ; preds = %vector.memcheck1781, %.lr.ph.i5.i885.preheader, %middle.block1803
  %.ph2303 = phi ptr [ %.promoted.i883, %vector.memcheck1781 ], [ %.promoted.i883, %.lr.ph.i5.i885.preheader ], [ %i.abv, %middle.block1803 ] ; 2 uses
  %.05.i6.i886.ph = phi i32 [ %.0.lcssa.i884, %vector.memcheck1781 ], [ %.0.lcssa.i884, %.lr.ph.i5.i885.preheader ], [ %i.abx, %middle.block1803 ] ; 4 uses
  %.024.i7.i887.ph = phi ptr [ %i.d, %vector.memcheck1781 ], [ %i.d, %.lr.ph.i5.i885.preheader ], [ %i.aby, %middle.block1803 ] ; 2 uses
  %i.ace = add nsw i32 %.05.i6.i886.ph, -1
  %xtraiter2372 = and i32 %.05.i6.i886.ph, 3      ; 2 uses
  %lcmp.mod2373.not = icmp eq i32 %xtraiter2372, 0
  br i1 %lcmp.mod2373.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol

.lr.ph.i5.i885.prol:                              ; preds = %.lr.ph.i5.i885.preheader2302, %.lr.ph.i5.i885.prol
  %i.acf = phi ptr [ %i.ach, %.lr.ph.i5.i885.prol ], [ %.ph2303, %.lr.ph.i5.i885.preheader2302 ] ; 2 uses
  %.05.i6.i886.prol = phi i32 [ %i.acg, %.lr.ph.i5.i885.prol ], [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2302 ]
  %.024.i7.i887.prol = phi ptr [ %i.acj, %.lr.ph.i5.i885.prol ], [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2302 ] ; 2 uses
  %prol.iter2374 = phi i32 [ %prol.iter2374.next, %.lr.ph.i5.i885.prol ], [ 0, %.lr.ph.i5.i885.preheader2302 ]
  %i.acg = add nsw i32 %.05.i6.i886.prol, -1      ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 1 ; 3 uses
  store ptr %i.ach, ptr %0, align 8, !tbaa !41
  %i.aci = load i8, ptr %i.acf, align 1, !tbaa !42
  %i.acj = getelementptr inbounds nuw i8, ptr %.024.i7.i887.prol, i64 1 ; 2 uses
  store i8 %i.aci, ptr %.024.i7.i887.prol, align 1, !tbaa !42
  %prol.iter2374.next = add i32 %prol.iter2374, 1 ; 2 uses
  %prol.iter2374.cmp.not = icmp eq i32 %prol.iter2374.next, %xtraiter2372
  br i1 %prol.iter2374.cmp.not, label %.lr.ph.i5.i885.prol.loopexit, label %.lr.ph.i5.i885.prol, !llvm.loop !193

.lr.ph.i5.i885.prol.loopexit:                     ; preds = %.lr.ph.i5.i885.prol, %.lr.ph.i5.i885.preheader2302
  %.unr2375 = phi ptr [ %.ph2303, %.lr.ph.i5.i885.preheader2302 ], [ %i.ach, %.lr.ph.i5.i885.prol ]
  %.05.i6.i886.unr = phi i32 [ %.05.i6.i886.ph, %.lr.ph.i5.i885.preheader2302 ], [ %i.acg, %.lr.ph.i5.i885.prol ]
  %.024.i7.i887.unr = phi ptr [ %.024.i7.i887.ph, %.lr.ph.i5.i885.preheader2302 ], [ %i.acj, %.lr.ph.i5.i885.prol ]
  %i.ack = icmp ult i32 %i.ace, 3
  br i1 %i.ack, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885

.lr.ph.i5.i885:                                   ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885
  %i.acl = phi ptr [ %i.acw, %.lr.ph.i5.i885 ], [ %.unr2375, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %.05.i6.i886 = phi i32 [ %i.acv, %.lr.ph.i5.i885 ], [ %.05.i6.i886.unr, %.lr.ph.i5.i885.prol.loopexit ]
  %.024.i7.i887 = phi ptr [ %i.acy, %.lr.ph.i5.i885 ], [ %.024.i7.i887.unr, %.lr.ph.i5.i885.prol.loopexit ] ; 5 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1 ; 2 uses
  store ptr %i.acm, ptr %0, align 8, !tbaa !41
  %i.acn = load i8, ptr %i.acl, align 1, !tbaa !42
  %i.aco = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 1
  store i8 %i.acn, ptr %.024.i7.i887, align 1, !tbaa !42
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acl, i64 2 ; 2 uses
  store ptr %i.acp, ptr %0, align 8, !tbaa !41
  %i.acq = load i8, ptr %i.acm, align 1, !tbaa !42
  %i.acr = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 2
  store i8 %i.acq, ptr %i.aco, align 1, !tbaa !42
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acl, i64 3 ; 2 uses
  store ptr %i.acs, ptr %0, align 8, !tbaa !41
  %i.act = load i8, ptr %i.acp, align 1, !tbaa !42
  %i.acu = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 3
  store i8 %i.act, ptr %i.acr, align 1, !tbaa !42
  %i.acv = add nsw i32 %.05.i6.i886, -4           ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acl, i64 4 ; 2 uses
  store ptr %i.acw, ptr %0, align 8, !tbaa !41
  %i.acx = load i8, ptr %i.acs, align 1, !tbaa !42
  %i.acy = getelementptr inbounds nuw i8, ptr %.024.i7.i887, i64 4
  store i8 %i.acx, ptr %i.acu, align 1, !tbaa !42
  %.not.i8.i888.3 = icmp eq i32 %i.acv, 0
  br i1 %.not.i8.i888.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897, label %.lr.ph.i5.i885, !llvm.loop !194

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897: ; preds = %.lr.ph.i5.i885.prol.loopexit, %.lr.ph.i5.i885, %middle.block1803, %._crit_edge.i882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.loopexit1006

.loopexit1006:                                    ; preds = %.lr.ph1159, %.preheader1005, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit897
  %indvars.iv.next1322 = add nsw i64 %indvars.iv1321, 1 ; 2 uses
  %lftr.wideiv1324 = trunc i64 %indvars.iv.next1322 to i32
  %exitcond1325.not = icmp eq i32 %i.ro, %lftr.wideiv1324
  br i1 %exitcond1325.not, label %.loopexit981, label %bb.ar, !llvm.loop !195

bb.at:                                            ; preds = %bb.al
  %i.acz = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.acz, ptr noundef nonnull @.str.9)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.acz, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.aw:                                            ; preds = %bb.z
  switch i32 %19, label %bb.bg [
    i32 0, label %.preheader1011
    i32 1, label %.preheader1015
    i32 2, label %.preheader1019
  ]

.preheader1019:                                   ; preds = %bb.aw
  %.not7431140 = icmp sgt i32 %6, %7
  br i1 %.not7431140, label %.loopexit981, label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.preheader1019
  %i.adb = sub nsw i32 %5, %11
  %i.adc = sext i32 %i.adb to i64
  %i.add = mul nsw i64 %14, %i.adc
  %i.ade = getelementptr inbounds i8, ptr %1, i64 %i.add
  %i.adf = sub nsw i32 %5, %9
  %i.adg = sext i32 %i.adf to i64
  %i.adh = shl i64 %4, 32
  %i.adi = ashr exact i64 %i.adh, 32
  %i.adj = mul nsw i64 %i.adi, %i.adg
  %i.adk = getelementptr inbounds i8, ptr %2, i64 %i.adj
  %i.adl = shl i64 %3, 32
  %i.adm = ashr exact i64 %i.adl, 32
  %i.adn = sext i32 %6 to i64
  %i.ado = sext i32 %10 to i64
  %i.adp = sext i32 %8 to i64
  %i.adq = add i32 %7, 1
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %scevgep1537 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1564 = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %bound01567 = icmp ult ptr %0, %scevgep1564
  %bound11568 = icmp ult ptr %i.a, %scevgep1537
  %found.conflict1569 = and i1 %bound01567, %bound11568
  %bound1 = icmp ult ptr %i.a, %scevgep1537
  br label %bb.bd

.preheader1015:                                   ; preds = %bb.aw
  %.not7451147 = icmp sgt i32 %6, %7
  br i1 %.not7451147, label %.loopexit981, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %.preheader1015
  %i.adr = sub nsw i32 %5, %11
  %i.ads = sext i32 %i.adr to i64
  %i.adt = mul nsw i64 %14, %i.ads
  %i.adu = getelementptr inbounds i8, ptr %1, i64 %i.adt
  %i.adv = sub nsw i32 %5, %9
  %i.adw = sext i32 %i.adv to i64
  %i.adx = shl i64 %4, 32
  %i.ady = ashr exact i64 %i.adx, 32
  %i.adz = mul nsw i64 %i.ady, %i.adw
  %i.aea = getelementptr inbounds i8, ptr %2, i64 %i.adz
  %i.aeb = shl i64 %3, 32
  %i.aec = ashr exact i64 %i.aeb, 32
  %i.aed = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  %i.aee = sext i32 %6 to i64
  %i.aef = sext i32 %10 to i64
  %i.aeg = sext i32 %8 to i64
  %i.aeh = add i32 %7, 1
  %scevgep1605 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %scevgep1606 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1650 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %bound01653 = icmp ult ptr %0, %scevgep1650
  %bound11654 = icmp ult ptr %i.b, %scevgep1606
  %found.conflict1655 = and i1 %bound01653, %bound11654
  %bound11611 = icmp ult ptr %i.b, %scevgep1606
  br label %bb.ba

.preheader1011:                                   ; preds = %bb.aw
  %.not7471154 = icmp sgt i32 %6, %7
  br i1 %.not7471154, label %.loopexit981, label %.lr.ph1156

.lr.ph1156:                                       ; preds = %.preheader1011
  %i.aei = sub nsw i32 %5, %11
  %i.aej = sext i32 %i.aei to i64
  %i.aek = mul nsw i64 %14, %i.aej
  %i.ael = getelementptr inbounds i8, ptr %1, i64 %i.aek
  %i.aem = sub nsw i32 %5, %9
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = shl i64 %4, 32
  %i.aep = ashr exact i64 %i.aeo, 32
  %i.aeq = mul nsw i64 %i.aep, %i.aen
  %i.aer = getelementptr inbounds i8, ptr %2, i64 %i.aeq
  %i.aes = shl i64 %3, 32
  %i.aet = ashr exact i64 %i.aes, 32
  %i.aeu = sext i32 %6 to i64
  %i.aev = sext i32 %10 to i64
  %i.aew = sext i32 %8 to i64
  %i.aex = add i32 %7, 1
  %scevgep1691 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %scevgep1692 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %scevgep1736 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %bound01739 = icmp ult ptr %0, %scevgep1736
  %bound11740 = icmp ult ptr %i.c, %scevgep1692
  %found.conflict1741 = and i1 %bound01739, %bound11740
  %bound11697 = icmp ult ptr %i.c, %scevgep1692
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1156, %.loopexit1010
  %indvars.iv1315 = phi i64 [ %i.aeu, %.lr.ph1156 ], [ %indvars.iv.next1316, %.loopexit1010 ] ; 3 uses
  %i.aey = sub nsw i64 %indvars.iv1315, %i.aev
  %i.aez = mul nsw i64 %13, %i.aey
  %i.afa = getelementptr inbounds i8, ptr %i.ael, i64 %i.aez
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !41 ; 2 uses
  %i.afc = sub nsw i64 %indvars.iv1315, %i.aew
  %i.afd = mul nsw i64 %i.aet, %i.afc
  %i.afe = getelementptr inbounds i8, ptr %i.aer, i64 %i.afd
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !32 ; 4 uses
  %.not748 = icmp eq ptr %i.afb, null
  br i1 %.not748, label %bb.az, label %.preheader1009

.preheader1009:                                   ; preds = %bb.ax
  %i.afg = icmp sgt i32 %i.aff, 0
  br i1 %i.afg, label %.lr.ph1152, label %.loopexit1010

.lr.ph1152:                                       ; preds = %.preheader1009
  %.promoted1153 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1152, %bb.ay
  %i.afh = phi ptr [ %.promoted1153, %.lr.ph1152 ], [ %i.afo, %bb.ay ] ; 5 uses
  %.06751151 = phi i32 [ 0, %.lr.ph1152 ], [ %i.afs, %bb.ay ]
  %.06761150 = phi ptr [ %i.afb, %.lr.ph1152 ], [ %i.afr, %bb.ay ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 1 ; 2 uses
  store ptr %i.afi, ptr %0, align 8, !tbaa !41
  %i.afj = load i8, ptr %i.afh, align 1, !tbaa !42
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 2 ; 2 uses
  store ptr %i.afk, ptr %0, align 8, !tbaa !41
  %i.afl = load i8, ptr %i.afi, align 1, !tbaa !42
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afh, i64 3 ; 2 uses
  store ptr %i.afm, ptr %0, align 8, !tbaa !41
  %i.afn = load i8, ptr %i.afk, align 1, !tbaa !42
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 4 ; 2 uses
  store ptr %i.afo, ptr %0, align 8, !tbaa !41
  %i.afp = load i8, ptr %i.afm, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i899 = zext i8 %i.afp to i32
  %.sroa.6.0.insert.shift.i900 = shl nuw i32 %.sroa.6.0.insert.ext.i899, 24
  %.sroa.5.0.insert.ext.i901 = zext i8 %i.afn to i32
  %.sroa.5.0.insert.shift.i902 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i901, 16
  %.sroa.4.0.insert.ext.i904 = zext i8 %i.afl to i32
  %.sroa.4.0.insert.shift.i905 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i904, 8
  %.sroa.0.0.insert.ext.i907 = zext i8 %i.afj to i32
  %.sroa.5.0.insert.insert.i903 = or disjoint i32 %.sroa.4.0.insert.shift.i905, %.sroa.0.0.insert.ext.i907
  %.sroa.4.0.insert.insert.i906 = or disjoint i32 %.sroa.5.0.insert.insert.i903, %.sroa.5.0.insert.shift.i902
  %.sroa.0.0.insert.insert.i908 = or disjoint i32 %.sroa.4.0.insert.insert.i906, %.sroa.6.0.insert.shift.i900
  %i.afq = uitofp i32 %.sroa.0.0.insert.insert.i908 to float
  store float %i.afq, ptr %.06761150, align 4, !tbaa !39
  %i.afr = getelementptr inbounds i8, ptr %.06761150, i64 %12
  %i.afs = add nuw nsw i32 %.06751151, 1          ; 2 uses
  %exitcond1314.not = icmp eq i32 %i.afs, %i.aff
  br i1 %exitcond1314.not, label %.loopexit1010, label %bb.ay, !llvm.loop !196

bb.az:                                            ; preds = %bb.ax
  %i.aft = shl nsw i32 %i.aff, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i909 = load ptr, ptr %0, align 8   ; 2 uses
  %i.afu = icmp sgt i32 %i.aff, 255
  br i1 %i.afu, label %vector.memcheck1738, label %._crit_edge.i910

vector.memcheck1738:                              ; preds = %bb.az, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924
  %.013.i918 = phi i32 [ %i.agw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %i.aft, %bb.az ] ; 2 uses
  %.promoted1112.i919 = phi ptr [ %.lcssa1519, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ], [ %.promoted10.i909, %bb.az ] ; 10 uses
  %i.afv = getelementptr i8, ptr %.promoted1112.i919, i64 1024 ; 2 uses
  %bound01742 = icmp ult ptr %0, %i.afv
  %bound11743 = icmp ult ptr %.promoted1112.i919, %scevgep1692
  %found.conflict1744 = and i1 %bound01742, %bound11743
  %conflict.rdx1745 = or i1 %found.conflict1741, %found.conflict1744
  %bound01746 = icmp ult ptr %i.c, %i.afv
  %bound11747 = icmp ult ptr %.promoted1112.i919, %scevgep1736
  %found.conflict1748 = and i1 %bound01746, %bound11747
  %conflict.rdx1749 = or i1 %conflict.rdx1745, %found.conflict1748
  br i1 %conflict.rdx1749, label %.lr.ph.i.i920, label %vector.ph1750

vector.ph1750:                                    ; preds = %vector.memcheck1738
  %i.afw = getelementptr i8, ptr %.promoted1112.i919, i64 1024
  br label %vector.body1751

vector.body1751:                                  ; preds = %vector.body1751, %vector.ph1750
  %index1752 = phi i64 [ 0, %vector.ph1750 ], [ %index.next1758.3, %vector.body1751 ] ; 6 uses
  %next.gep1753 = getelementptr i8, ptr %.promoted1112.i919, i64 %index1752 ; 2 uses
  %next.gep1755 = getelementptr i8, ptr %i.c, i64 %index1752 ; 2 uses
  %i.afx = getelementptr i8, ptr %next.gep1753, i64 2
  %wide.load1756 = load <2 x i8>, ptr %next.gep1753, align 1, !tbaa !42, !alias.scope !310
  %wide.load1757 = load <2 x i8>, ptr %i.afx, align 1, !tbaa !42, !alias.scope !310
  %i.afy = getelementptr i8, ptr %next.gep1755, i64 2
  store <2 x i8> %wide.load1756, ptr %next.gep1755, align 16, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1757, ptr %i.afy, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1758 = or disjoint i64 %index1752, 4 ; 2 uses
  %next.gep1753.1 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1758 ; 2 uses
  %next.gep1755.1 = getelementptr i8, ptr %i.c, i64 %index.next1758 ; 2 uses
  %i.afz = getelementptr i8, ptr %next.gep1753.1, i64 2
  %wide.load1756.1 = load <2 x i8>, ptr %next.gep1753.1, align 1, !tbaa !42, !alias.scope !310
  %wide.load1757.1 = load <2 x i8>, ptr %i.afz, align 1, !tbaa !42, !alias.scope !310
  %i.aga = getelementptr i8, ptr %next.gep1755.1, i64 2
  store <2 x i8> %wide.load1756.1, ptr %next.gep1755.1, align 4, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1757.1, ptr %i.aga, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1758.1 = or disjoint i64 %index1752, 8 ; 2 uses
  %next.gep1753.2 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1758.1 ; 2 uses
  %next.gep1755.2 = getelementptr i8, ptr %i.c, i64 %index.next1758.1 ; 2 uses
  %i.agb = getelementptr i8, ptr %next.gep1753.2, i64 2
  %wide.load1756.2 = load <2 x i8>, ptr %next.gep1753.2, align 1, !tbaa !42, !alias.scope !310
  %wide.load1757.2 = load <2 x i8>, ptr %i.agb, align 1, !tbaa !42, !alias.scope !310
  %i.agc = getelementptr i8, ptr %next.gep1755.2, i64 2
  store <2 x i8> %wide.load1756.2, ptr %next.gep1755.2, align 8, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1757.2, ptr %i.agc, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1758.2 = or disjoint i64 %index1752, 12 ; 3 uses
  %next.gep1753.3 = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1758.2 ; 2 uses
  %next.gep1755.3 = getelementptr i8, ptr %i.c, i64 %index.next1758.2 ; 2 uses
  %i.agd = getelementptr i8, ptr %next.gep1753.3, i64 2
  %wide.load1756.3 = load <2 x i8>, ptr %next.gep1753.3, align 1, !tbaa !42, !alias.scope !310
  %wide.load1757.3 = load <2 x i8>, ptr %i.agd, align 1, !tbaa !42, !alias.scope !310
  %i.age = getelementptr i8, ptr %next.gep1755.3, i64 2
  store <2 x i8> %wide.load1756.3, ptr %next.gep1755.3, align 4, !tbaa !42, !alias.scope !311, !noalias !310
  store <2 x i8> %wide.load1757.3, ptr %i.age, align 2, !tbaa !42, !alias.scope !311, !noalias !310
  %index.next1758.3 = add nuw nsw i64 %index1752, 16 ; 2 uses
  %i.agf = icmp eq i64 %index.next1758.3, 1024
  br i1 %i.agf, label %middle.block1759, label %vector.body1751, !llvm.loop !200

middle.block1759:                                 ; preds = %vector.body1751
  %i.agg = getelementptr i8, ptr %.promoted1112.i919, i64 %index.next1758.2
  %i.agh = getelementptr i8, ptr %i.agg, i64 4
  store ptr %i.agh, ptr %0, align 8, !tbaa !41, !alias.scope !312, !noalias !313
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924

.lr.ph.i.i920:                                    ; preds = %vector.memcheck1738, %.lr.ph.i.i920
  %i.agi = phi ptr [ %i.agt, %.lr.ph.i.i920 ], [ %.promoted1112.i919, %vector.memcheck1738 ] ; 5 uses
  %.05.i.i921 = phi i32 [ %i.ags, %.lr.ph.i.i920 ], [ 1024, %vector.memcheck1738 ]
  %.024.i.i922 = phi ptr [ %i.agv, %.lr.ph.i.i920 ], [ %i.c, %vector.memcheck1738 ] ; 5 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 1 ; 2 uses
  store ptr %i.agj, ptr %0, align 8, !tbaa !41
  %i.agk = load i8, ptr %i.agi, align 1, !tbaa !42
  %i.agl = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 1
  store i8 %i.agk, ptr %.024.i.i922, align 1, !tbaa !42
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agi, i64 2 ; 2 uses
  store ptr %i.agm, ptr %0, align 8, !tbaa !41
  %i.agn = load i8, ptr %i.agj, align 1, !tbaa !42
  %i.ago = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 2
  store i8 %i.agn, ptr %i.agl, align 1, !tbaa !42
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 3 ; 2 uses
  store ptr %i.agp, ptr %0, align 8, !tbaa !41
  %i.agq = load i8, ptr %i.agm, align 1, !tbaa !42
  %i.agr = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 3
  store i8 %i.agq, ptr %i.ago, align 1, !tbaa !42
  %i.ags = add nsw i32 %.05.i.i921, -4            ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agi, i64 4 ; 3 uses
  store ptr %i.agt, ptr %0, align 8, !tbaa !41
  %i.agu = load i8, ptr %i.agp, align 1, !tbaa !42
  %i.agv = getelementptr inbounds nuw i8, ptr %.024.i.i922, i64 4
  store i8 %i.agu, ptr %i.agr, align 1, !tbaa !42
  %.not.i.i923.3 = icmp eq i32 %i.ags, 0
  br i1 %.not.i.i923.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924, label %.lr.ph.i.i920, !llvm.loop !202

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924: ; preds = %.lr.ph.i.i920, %middle.block1759
  %.lcssa1519 = phi ptr [ %i.afw, %middle.block1759 ], [ %i.agt, %.lr.ph.i.i920 ] ; 2 uses
  %i.agw = add nsw i32 %.013.i918, -1024          ; 2 uses
  %i.agx = icmp sgt i32 %.013.i918, 2047
  br i1 %i.agx, label %vector.memcheck1738, label %._crit_edge.i910, !llvm.loop !1

._crit_edge.i910:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924, %bb.az
  %.promoted.i911 = phi ptr [ %.promoted10.i909, %bb.az ], [ %.lcssa1519, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 8 uses
  %.0.lcssa.i912 = phi i32 [ %i.aft, %bb.az ], [ %i.agw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i924 ] ; 8 uses
  %i.agy = icmp sgt i32 %.0.lcssa.i912, 0
  br i1 %i.agy, label %.lr.ph.i5.i913.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925

.lr.ph.i5.i913.preheader:                         ; preds = %._crit_edge.i910
  %i.agz = zext nneg i32 %.0.lcssa.i912 to i64    ; 2 uses
  %min.iters.check1694 = icmp ult i32 %.0.lcssa.i912, 12
  br i1 %min.iters.check1694, label %.lr.ph.i5.i913.preheader2307, label %vector.memcheck1695

vector.memcheck1695:                              ; preds = %.lr.ph.i5.i913.preheader
  %i.aha = add nsw i32 %.0.lcssa.i912, -1
  %i.ahb = zext i32 %i.aha to i64
  %i.ahc = getelementptr i8, ptr %scevgep1691, i64 %i.ahb ; 2 uses
  %bound01696 = icmp ult ptr %0, %i.ahc
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %32 = zext nneg i32 %.0.lcssa.i912 to i64
  %33 = getelementptr i8, ptr %.promoted.i911, i64 %32 ; 2 uses
  %bound01699 = icmp ult ptr %0, %33
  %bound11700 = icmp ult ptr %.promoted.i911, %scevgep1692
  %found.conflict1701 = and i1 %bound01699, %bound11700
  %conflict.rdx1702 = or i1 %found.conflict1698, %found.conflict1701
  %bound01703 = icmp ult ptr %i.c, %33
  %bound11704 = icmp ult ptr %.promoted.i911, %i.ahc
  %found.conflict1705 = and i1 %bound01703, %bound11704
  %conflict.rdx1706 = or i1 %conflict.rdx1702, %found.conflict1705
  br i1 %conflict.rdx1706, label %.lr.ph.i5.i913.preheader2307, label %vector.ph1707

vector.ph1707:                                    ; preds = %vector.memcheck1695
  %n.vec1708 = and i64 %i.agz, 2147483644         ; 5 uses
  %i.ahd = getelementptr i8, ptr %.promoted.i911, i64 %n.vec1708
  %i.ahe = trunc nuw nsw i64 %n.vec1708 to i32
  %i.ahf = sub nsw i32 %.0.lcssa.i912, %i.ahe
  %i.ahg = getelementptr i8, ptr %i.c, i64 %n.vec1708
  br label %vector.body1709

vector.body1709:                                  ; preds = %vector.body1709, %vector.ph1707
  %index1710 = phi i64 [ 0, %vector.ph1707 ], [ %index.next1716, %vector.body1709 ] ; 4 uses
  %next.gep1711 = getelementptr i8, ptr %.promoted.i911, i64 %index1710 ; 2 uses
  %next.gep1713 = getelementptr i8, ptr %i.c, i64 %index1710 ; 2 uses
  %i.ahh = getelementptr i8, ptr %next.gep1711, i64 2
  %wide.load1714 = load <2 x i8>, ptr %next.gep1711, align 1, !tbaa !42, !alias.scope !314
  %wide.load1715 = load <2 x i8>, ptr %i.ahh, align 1, !tbaa !42, !alias.scope !314
  %i.ahi = getelementptr i8, ptr %next.gep1713, i64 2
  store <2 x i8> %wide.load1714, ptr %next.gep1713, align 4, !tbaa !42, !alias.scope !315, !noalias !314
  store <2 x i8> %wide.load1715, ptr %i.ahi, align 2, !tbaa !42, !alias.scope !315, !noalias !314
  %index.next1716 = add nuw i64 %index1710, 4     ; 2 uses
  %i.ahj = icmp eq i64 %index.next1716, %n.vec1708
  br i1 %i.ahj, label %middle.block1717, label %vector.body1709, !llvm.loop !206

middle.block1717:                                 ; preds = %vector.body1709
  %i.ahk = getelementptr i8, ptr %.promoted.i911, i64 %index1710
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 4
  store ptr %i.ahl, ptr %0, align 8, !tbaa !41, !alias.scope !316, !noalias !317
  %cmp.n1718 = icmp eq i64 %n.vec1708, %i.agz
  br i1 %cmp.n1718, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913.preheader2307

.lr.ph.i5.i913.preheader2307:                     ; preds = %vector.memcheck1695, %.lr.ph.i5.i913.preheader, %middle.block1717
  %.ph2308 = phi ptr [ %.promoted.i911, %vector.memcheck1695 ], [ %.promoted.i911, %.lr.ph.i5.i913.preheader ], [ %i.ahd, %middle.block1717 ] ; 2 uses
  %.05.i6.i914.ph = phi i32 [ %.0.lcssa.i912, %vector.memcheck1695 ], [ %.0.lcssa.i912, %.lr.ph.i5.i913.preheader ], [ %i.ahf, %middle.block1717 ] ; 4 uses
  %.024.i7.i915.ph = phi ptr [ %i.c, %vector.memcheck1695 ], [ %i.c, %.lr.ph.i5.i913.preheader ], [ %i.ahg, %middle.block1717 ] ; 2 uses
  %i.ahm = add nsw i32 %.05.i6.i914.ph, -1
  %xtraiter2368 = and i32 %.05.i6.i914.ph, 3      ; 2 uses
  %lcmp.mod2369.not = icmp eq i32 %xtraiter2368, 0
  br i1 %lcmp.mod2369.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol

.lr.ph.i5.i913.prol:                              ; preds = %.lr.ph.i5.i913.preheader2307, %.lr.ph.i5.i913.prol
  %i.ahn = phi ptr [ %i.ahp, %.lr.ph.i5.i913.prol ], [ %.ph2308, %.lr.ph.i5.i913.preheader2307 ] ; 2 uses
  %.05.i6.i914.prol = phi i32 [ %i.aho, %.lr.ph.i5.i913.prol ], [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2307 ]
  %.024.i7.i915.prol = phi ptr [ %i.ahr, %.lr.ph.i5.i913.prol ], [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2307 ] ; 2 uses
  %prol.iter2370 = phi i32 [ %prol.iter2370.next, %.lr.ph.i5.i913.prol ], [ 0, %.lr.ph.i5.i913.preheader2307 ]
  %i.aho = add nsw i32 %.05.i6.i914.prol, -1      ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1 ; 3 uses
  store ptr %i.ahp, ptr %0, align 8, !tbaa !41
  %i.ahq = load i8, ptr %i.ahn, align 1, !tbaa !42
  %i.ahr = getelementptr inbounds nuw i8, ptr %.024.i7.i915.prol, i64 1 ; 2 uses
  store i8 %i.ahq, ptr %.024.i7.i915.prol, align 1, !tbaa !42
  %prol.iter2370.next = add i32 %prol.iter2370, 1 ; 2 uses
  %prol.iter2370.cmp.not = icmp eq i32 %prol.iter2370.next, %xtraiter2368
  br i1 %prol.iter2370.cmp.not, label %.lr.ph.i5.i913.prol.loopexit, label %.lr.ph.i5.i913.prol, !llvm.loop !208

.lr.ph.i5.i913.prol.loopexit:                     ; preds = %.lr.ph.i5.i913.prol, %.lr.ph.i5.i913.preheader2307
  %.unr2371 = phi ptr [ %.ph2308, %.lr.ph.i5.i913.preheader2307 ], [ %i.ahp, %.lr.ph.i5.i913.prol ]
  %.05.i6.i914.unr = phi i32 [ %.05.i6.i914.ph, %.lr.ph.i5.i913.preheader2307 ], [ %i.aho, %.lr.ph.i5.i913.prol ]
  %.024.i7.i915.unr = phi ptr [ %.024.i7.i915.ph, %.lr.ph.i5.i913.preheader2307 ], [ %i.ahr, %.lr.ph.i5.i913.prol ]
  %i.ahs = icmp ult i32 %i.ahm, 3
  br i1 %i.ahs, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913

.lr.ph.i5.i913:                                   ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913
  %i.aht = phi ptr [ %i.aie, %.lr.ph.i5.i913 ], [ %.unr2371, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %.05.i6.i914 = phi i32 [ %i.aid, %.lr.ph.i5.i913 ], [ %.05.i6.i914.unr, %.lr.ph.i5.i913.prol.loopexit ]
  %.024.i7.i915 = phi ptr [ %i.aig, %.lr.ph.i5.i913 ], [ %.024.i7.i915.unr, %.lr.ph.i5.i913.prol.loopexit ] ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 1 ; 2 uses
  store ptr %i.ahu, ptr %0, align 8, !tbaa !41
  %i.ahv = load i8, ptr %i.aht, align 1, !tbaa !42
  %i.ahw = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 1
  store i8 %i.ahv, ptr %.024.i7.i915, align 1, !tbaa !42
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 2 ; 2 uses
  store ptr %i.ahx, ptr %0, align 8, !tbaa !41
  %i.ahy = load i8, ptr %i.ahu, align 1, !tbaa !42
  %i.ahz = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 2
  store i8 %i.ahy, ptr %i.ahw, align 1, !tbaa !42
  %i.aia = getelementptr inbounds nuw i8, ptr %i.aht, i64 3 ; 2 uses
  store ptr %i.aia, ptr %0, align 8, !tbaa !41
  %i.aib = load i8, ptr %i.ahx, align 1, !tbaa !42
  %i.aic = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 3
  store i8 %i.aib, ptr %i.ahz, align 1, !tbaa !42
  %i.aid = add nsw i32 %.05.i6.i914, -4           ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aht, i64 4 ; 2 uses
  store ptr %i.aie, ptr %0, align 8, !tbaa !41
  %i.aif = load i8, ptr %i.aia, align 1, !tbaa !42
  %i.aig = getelementptr inbounds nuw i8, ptr %.024.i7.i915, i64 4
  store i8 %i.aif, ptr %i.aic, align 1, !tbaa !42
  %.not.i8.i916.3 = icmp eq i32 %i.aid, 0
  br i1 %.not.i8.i916.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925, label %.lr.ph.i5.i913, !llvm.loop !209

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925: ; preds = %.lr.ph.i5.i913.prol.loopexit, %.lr.ph.i5.i913, %middle.block1717, %._crit_edge.i910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.loopexit1010

.loopexit1010:                                    ; preds = %bb.ay, %.preheader1009, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit925
  %indvars.iv.next1316 = add nsw i64 %indvars.iv1315, 1 ; 2 uses
  %lftr.wideiv1318 = trunc i64 %indvars.iv.next1316 to i32
  %exitcond1319.not = icmp eq i32 %i.aex, %lftr.wideiv1318
  br i1 %exitcond1319.not, label %.loopexit981, label %bb.ax, !llvm.loop !210

bb.ba:                                            ; preds = %.lr.ph1149, %.loopexit1014
  %indvars.iv1309 = phi i64 [ %i.aee, %.lr.ph1149 ], [ %indvars.iv.next1310, %.loopexit1014 ] ; 3 uses
  %i.aih = sub nsw i64 %indvars.iv1309, %i.aef
  %i.aii = mul nsw i64 %13, %i.aih
  %i.aij = getelementptr inbounds i8, ptr %i.adu, i64 %i.aii
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !41 ; 3 uses
  %i.ail = sub nsw i64 %indvars.iv1309, %i.aeg
  %i.aim = mul nsw i64 %i.aec, %i.ail
  %i.ain = getelementptr inbounds i8, ptr %i.aea, i64 %i.aim
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !32 ; 7 uses
  %.not746 = icmp eq ptr %i.aik, null
  br i1 %.not746, label %bb.bc, label %.preheader1013

.preheader1013:                                   ; preds = %bb.ba
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph1145, label %.loopexit1014

.lr.ph1145:                                       ; preds = %.preheader1013
  %.promoted1146 = load ptr, ptr %0, align 8, !tbaa !41 ; 2 uses
  %xtraiter2356 = and i32 %i.aio, 1
  %i.aiq = icmp eq i32 %i.aio, 1
  br i1 %i.aiq, label %.epil.preheader2355, label %.lr.ph1145.new

.lr.ph1145.new:                                   ; preds = %.lr.ph1145
  %unroll_iter2362 = and i32 %i.aio, 2147483646
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph1145.new
  %i.air = phi ptr [ %.promoted1146, %.lr.ph1145.new ], [ %i.ajc, %bb.bb ] ; 5 uses
  %.06731143 = phi ptr [ %i.aik, %.lr.ph1145.new ], [ %i.ajh, %bb.bb ] ; 2 uses
  %niter2363 = phi i32 [ 0, %.lr.ph1145.new ], [ %niter2363.next.1, %bb.bb ]
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 1 ; 2 uses
  store ptr %i.ais, ptr %0, align 8, !tbaa !41
  %i.ait = load i8, ptr %i.air, align 1, !tbaa !42
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 2 ; 2 uses
  store ptr %i.aiu, ptr %0, align 8, !tbaa !41
  %i.aiv = load i8, ptr %i.ais, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927 = zext i8 %i.aiv to i64
  %.sroa.0.0.insert.ext.i929 = zext i8 %i.ait to i64
  %.idx = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927, 10
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %.sroa.0.0.insert.ext.i929
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !42
  store float %i.aiy, ptr %.06731143, align 4, !tbaa !39
  %i.aiz = getelementptr inbounds i8, ptr %.06731143, i64 %12 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.air, i64 3 ; 2 uses
  store ptr %i.aja, ptr %0, align 8, !tbaa !41
  %i.ajb = load i8, ptr %i.aiu, align 1, !tbaa !42
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.air, i64 4 ; 3 uses
  store ptr %i.ajc, ptr %0, align 8, !tbaa !41
  %i.ajd = load i8, ptr %i.aja, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927.1 = zext i8 %i.ajd to i64
  %.sroa.0.0.insert.ext.i929.1 = zext i8 %i.ajb to i64
  %.idx.1 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.1, 10
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx.1
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %.sroa.0.0.insert.ext.i929.1
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !42
  store float %i.ajg, ptr %i.aiz, align 4, !tbaa !39
  %i.ajh = getelementptr inbounds i8, ptr %i.aiz, i64 %12 ; 2 uses
  %niter2363.next.1 = add nuw nsw i32 %niter2363, 2 ; 2 uses
  %niter2363.ncmp.1 = icmp eq i32 %niter2363.next.1, %unroll_iter2362
  br i1 %niter2363.ncmp.1, label %.loopexit1014.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !211

bb.bc:                                            ; preds = %bb.ba
  %i.aji = shl nsw i32 %i.aio, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i931 = load ptr, ptr %0, align 8   ; 2 uses
  %i.ajj = icmp sgt i32 %i.aio, 511
  br i1 %i.ajj, label %vector.memcheck1652, label %._crit_edge.i932

vector.memcheck1652:                              ; preds = %bb.bc, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946
  %.013.i940 = phi i32 [ %i.akl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %i.aji, %bb.bc ] ; 2 uses
  %.promoted1112.i941 = phi ptr [ %.lcssa1521, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ], [ %.promoted10.i931, %bb.bc ] ; 10 uses
  %i.ajk = getelementptr i8, ptr %.promoted1112.i941, i64 1024 ; 2 uses
  %bound01656 = icmp ult ptr %0, %i.ajk
  %bound11657 = icmp ult ptr %.promoted1112.i941, %scevgep1606
  %found.conflict1658 = and i1 %bound01656, %bound11657
  %conflict.rdx1659 = or i1 %found.conflict1655, %found.conflict1658
  %bound01660 = icmp ult ptr %i.b, %i.ajk
  %bound11661 = icmp ult ptr %.promoted1112.i941, %scevgep1650
  %found.conflict1662 = and i1 %bound01660, %bound11661
  %conflict.rdx1663 = or i1 %conflict.rdx1659, %found.conflict1662
  br i1 %conflict.rdx1663, label %.lr.ph.i.i942, label %vector.ph1664

vector.ph1664:                                    ; preds = %vector.memcheck1652
  %i.ajl = getelementptr i8, ptr %.promoted1112.i941, i64 1024
  br label %vector.body1665

vector.body1665:                                  ; preds = %vector.body1665, %vector.ph1664
  %index1666 = phi i64 [ 0, %vector.ph1664 ], [ %index.next1672.3, %vector.body1665 ] ; 6 uses
  %next.gep1667 = getelementptr i8, ptr %.promoted1112.i941, i64 %index1666 ; 2 uses
  %next.gep1669 = getelementptr i8, ptr %i.b, i64 %index1666 ; 2 uses
  %i.ajm = getelementptr i8, ptr %next.gep1667, i64 2
  %wide.load1670 = load <2 x i8>, ptr %next.gep1667, align 1, !tbaa !42, !alias.scope !318
  %wide.load1671 = load <2 x i8>, ptr %i.ajm, align 1, !tbaa !42, !alias.scope !318
  %i.ajn = getelementptr i8, ptr %next.gep1669, i64 2
  store <2 x i8> %wide.load1670, ptr %next.gep1669, align 16, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1671, ptr %i.ajn, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1672 = or disjoint i64 %index1666, 4 ; 2 uses
  %next.gep1667.1 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1672 ; 2 uses
  %next.gep1669.1 = getelementptr i8, ptr %i.b, i64 %index.next1672 ; 2 uses
  %i.ajo = getelementptr i8, ptr %next.gep1667.1, i64 2
  %wide.load1670.1 = load <2 x i8>, ptr %next.gep1667.1, align 1, !tbaa !42, !alias.scope !318
  %wide.load1671.1 = load <2 x i8>, ptr %i.ajo, align 1, !tbaa !42, !alias.scope !318
  %i.ajp = getelementptr i8, ptr %next.gep1669.1, i64 2
  store <2 x i8> %wide.load1670.1, ptr %next.gep1669.1, align 4, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1671.1, ptr %i.ajp, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1672.1 = or disjoint i64 %index1666, 8 ; 2 uses
  %next.gep1667.2 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1672.1 ; 2 uses
  %next.gep1669.2 = getelementptr i8, ptr %i.b, i64 %index.next1672.1 ; 2 uses
  %i.ajq = getelementptr i8, ptr %next.gep1667.2, i64 2
  %wide.load1670.2 = load <2 x i8>, ptr %next.gep1667.2, align 1, !tbaa !42, !alias.scope !318
  %wide.load1671.2 = load <2 x i8>, ptr %i.ajq, align 1, !tbaa !42, !alias.scope !318
  %i.ajr = getelementptr i8, ptr %next.gep1669.2, i64 2
  store <2 x i8> %wide.load1670.2, ptr %next.gep1669.2, align 8, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1671.2, ptr %i.ajr, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1672.2 = or disjoint i64 %index1666, 12 ; 3 uses
  %next.gep1667.3 = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1672.2 ; 2 uses
  %next.gep1669.3 = getelementptr i8, ptr %i.b, i64 %index.next1672.2 ; 2 uses
  %i.ajs = getelementptr i8, ptr %next.gep1667.3, i64 2
  %wide.load1670.3 = load <2 x i8>, ptr %next.gep1667.3, align 1, !tbaa !42, !alias.scope !318
  %wide.load1671.3 = load <2 x i8>, ptr %i.ajs, align 1, !tbaa !42, !alias.scope !318
  %i.ajt = getelementptr i8, ptr %next.gep1669.3, i64 2
  store <2 x i8> %wide.load1670.3, ptr %next.gep1669.3, align 4, !tbaa !42, !alias.scope !319, !noalias !318
  store <2 x i8> %wide.load1671.3, ptr %i.ajt, align 2, !tbaa !42, !alias.scope !319, !noalias !318
  %index.next1672.3 = add nuw nsw i64 %index1666, 16 ; 2 uses
  %i.aju = icmp eq i64 %index.next1672.3, 1024
  br i1 %i.aju, label %middle.block1673, label %vector.body1665, !llvm.loop !215

middle.block1673:                                 ; preds = %vector.body1665
  %i.ajv = getelementptr i8, ptr %.promoted1112.i941, i64 %index.next1672.2
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 4
  store ptr %i.ajw, ptr %0, align 8, !tbaa !41, !alias.scope !320, !noalias !321
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946

.lr.ph.i.i942:                                    ; preds = %vector.memcheck1652, %.lr.ph.i.i942
  %i.ajx = phi ptr [ %i.aki, %.lr.ph.i.i942 ], [ %.promoted1112.i941, %vector.memcheck1652 ] ; 5 uses
  %.05.i.i943 = phi i32 [ %i.akh, %.lr.ph.i.i942 ], [ 1024, %vector.memcheck1652 ]
  %.024.i.i944 = phi ptr [ %i.akk, %.lr.ph.i.i942 ], [ %i.b, %vector.memcheck1652 ] ; 5 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 1 ; 2 uses
  store ptr %i.ajy, ptr %0, align 8, !tbaa !41
  %i.ajz = load i8, ptr %i.ajx, align 1, !tbaa !42
  %i.aka = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 1
  store i8 %i.ajz, ptr %.024.i.i944, align 1, !tbaa !42
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 2 ; 2 uses
  store ptr %i.akb, ptr %0, align 8, !tbaa !41
  %i.akc = load i8, ptr %i.ajy, align 1, !tbaa !42
  %i.akd = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 2
  store i8 %i.akc, ptr %i.aka, align 1, !tbaa !42
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajx, i64 3 ; 2 uses
  store ptr %i.ake, ptr %0, align 8, !tbaa !41
  %i.akf = load i8, ptr %i.akb, align 1, !tbaa !42
  %i.akg = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 3
  store i8 %i.akf, ptr %i.akd, align 1, !tbaa !42
  %i.akh = add nsw i32 %.05.i.i943, -4            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4 ; 3 uses
  store ptr %i.aki, ptr %0, align 8, !tbaa !41
  %i.akj = load i8, ptr %i.ake, align 1, !tbaa !42
  %i.akk = getelementptr inbounds nuw i8, ptr %.024.i.i944, i64 4
  store i8 %i.akj, ptr %i.akg, align 1, !tbaa !42
  %.not.i.i945.3 = icmp eq i32 %i.akh, 0
  br i1 %.not.i.i945.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946, label %.lr.ph.i.i942, !llvm.loop !217

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946: ; preds = %.lr.ph.i.i942, %middle.block1673
  %.lcssa1521 = phi ptr [ %i.ajl, %middle.block1673 ], [ %i.aki, %.lr.ph.i.i942 ] ; 2 uses
  %i.akl = add nsw i32 %.013.i940, -1024          ; 2 uses
  %i.akm = icmp sgt i32 %.013.i940, 2047
  br i1 %i.akm, label %vector.memcheck1652, label %._crit_edge.i932, !llvm.loop !1

._crit_edge.i932:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946, %bb.bc
  %.promoted.i933 = phi ptr [ %.promoted10.i931, %bb.bc ], [ %.lcssa1521, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 8 uses
  %.0.lcssa.i934 = phi i32 [ %i.aji, %bb.bc ], [ %i.akl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i946 ] ; 8 uses
  %i.akn = icmp sgt i32 %.0.lcssa.i934, 0
  br i1 %i.akn, label %.lr.ph.i5.i935.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947

.lr.ph.i5.i935.preheader:                         ; preds = %._crit_edge.i932
  %i.ako = zext nneg i32 %.0.lcssa.i934 to i64    ; 2 uses
  %min.iters.check1608 = icmp ult i32 %.0.lcssa.i934, 12
  br i1 %min.iters.check1608, label %.lr.ph.i5.i935.preheader2312, label %vector.memcheck1609

vector.memcheck1609:                              ; preds = %.lr.ph.i5.i935.preheader
  %i.akp = add nsw i32 %.0.lcssa.i934, -1
  %i.akq = zext i32 %i.akp to i64
  %i.akr = getelementptr i8, ptr %scevgep1605, i64 %i.akq ; 2 uses
  %bound01610 = icmp ult ptr %0, %i.akr
  %found.conflict1612 = and i1 %bound01610, %bound11611
  %34 = zext nneg i32 %.0.lcssa.i934 to i64
  %35 = getelementptr i8, ptr %.promoted.i933, i64 %34 ; 2 uses
  %bound01613 = icmp ult ptr %0, %35
  %bound11614 = icmp ult ptr %.promoted.i933, %scevgep1606
  %found.conflict1615 = and i1 %bound01613, %bound11614
  %conflict.rdx1616 = or i1 %found.conflict1612, %found.conflict1615
  %bound01617 = icmp ult ptr %i.b, %35
  %bound11618 = icmp ult ptr %.promoted.i933, %i.akr
  %found.conflict1619 = and i1 %bound01617, %bound11618
  %conflict.rdx1620 = or i1 %conflict.rdx1616, %found.conflict1619
  br i1 %conflict.rdx1620, label %.lr.ph.i5.i935.preheader2312, label %vector.ph1621

vector.ph1621:                                    ; preds = %vector.memcheck1609
  %n.vec1622 = and i64 %i.ako, 2147483644         ; 5 uses
  %i.aks = getelementptr i8, ptr %.promoted.i933, i64 %n.vec1622
  %i.akt = trunc nuw nsw i64 %n.vec1622 to i32
  %i.aku = sub nsw i32 %.0.lcssa.i934, %i.akt
  %i.akv = getelementptr i8, ptr %i.b, i64 %n.vec1622
  br label %vector.body1623

vector.body1623:                                  ; preds = %vector.body1623, %vector.ph1621
  %index1624 = phi i64 [ 0, %vector.ph1621 ], [ %index.next1630, %vector.body1623 ] ; 4 uses
  %next.gep1625 = getelementptr i8, ptr %.promoted.i933, i64 %index1624 ; 2 uses
  %next.gep1627 = getelementptr i8, ptr %i.b, i64 %index1624 ; 2 uses
  %i.akw = getelementptr i8, ptr %next.gep1625, i64 2
  %wide.load1628 = load <2 x i8>, ptr %next.gep1625, align 1, !tbaa !42, !alias.scope !322
  %wide.load1629 = load <2 x i8>, ptr %i.akw, align 1, !tbaa !42, !alias.scope !322
  %i.akx = getelementptr i8, ptr %next.gep1627, i64 2
  store <2 x i8> %wide.load1628, ptr %next.gep1627, align 4, !tbaa !42, !alias.scope !323, !noalias !322
  store <2 x i8> %wide.load1629, ptr %i.akx, align 2, !tbaa !42, !alias.scope !323, !noalias !322
  %index.next1630 = add nuw i64 %index1624, 4     ; 2 uses
  %i.aky = icmp eq i64 %index.next1630, %n.vec1622
  br i1 %i.aky, label %middle.block1631, label %vector.body1623, !llvm.loop !221

middle.block1631:                                 ; preds = %vector.body1623
  %i.akz = getelementptr i8, ptr %.promoted.i933, i64 %index1624
  %i.ala = getelementptr i8, ptr %i.akz, i64 4
  store ptr %i.ala, ptr %0, align 8, !tbaa !41, !alias.scope !324, !noalias !325
  %cmp.n1632 = icmp eq i64 %n.vec1622, %i.ako
  br i1 %cmp.n1632, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935.preheader2312

.lr.ph.i5.i935.preheader2312:                     ; preds = %vector.memcheck1609, %.lr.ph.i5.i935.preheader, %middle.block1631
  %.ph2313 = phi ptr [ %.promoted.i933, %vector.memcheck1609 ], [ %.promoted.i933, %.lr.ph.i5.i935.preheader ], [ %i.aks, %middle.block1631 ] ; 2 uses
  %.05.i6.i936.ph = phi i32 [ %.0.lcssa.i934, %vector.memcheck1609 ], [ %.0.lcssa.i934, %.lr.ph.i5.i935.preheader ], [ %i.aku, %middle.block1631 ] ; 4 uses
  %.024.i7.i937.ph = phi ptr [ %i.b, %vector.memcheck1609 ], [ %i.b, %.lr.ph.i5.i935.preheader ], [ %i.akv, %middle.block1631 ] ; 2 uses
  %i.alb = add nsw i32 %.05.i6.i936.ph, -1
  %xtraiter2364 = and i32 %.05.i6.i936.ph, 3      ; 2 uses
  %lcmp.mod2365.not = icmp eq i32 %xtraiter2364, 0
  br i1 %lcmp.mod2365.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol

.lr.ph.i5.i935.prol:                              ; preds = %.lr.ph.i5.i935.preheader2312, %.lr.ph.i5.i935.prol
  %i.alc = phi ptr [ %i.ale, %.lr.ph.i5.i935.prol ], [ %.ph2313, %.lr.ph.i5.i935.preheader2312 ] ; 2 uses
  %.05.i6.i936.prol = phi i32 [ %i.ald, %.lr.ph.i5.i935.prol ], [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2312 ]
  %.024.i7.i937.prol = phi ptr [ %i.alg, %.lr.ph.i5.i935.prol ], [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2312 ] ; 2 uses
  %prol.iter2366 = phi i32 [ %prol.iter2366.next, %.lr.ph.i5.i935.prol ], [ 0, %.lr.ph.i5.i935.preheader2312 ]
  %i.ald = add nsw i32 %.05.i6.i936.prol, -1      ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alc, i64 1 ; 3 uses
  store ptr %i.ale, ptr %0, align 8, !tbaa !41
  %i.alf = load i8, ptr %i.alc, align 1, !tbaa !42
  %i.alg = getelementptr inbounds nuw i8, ptr %.024.i7.i937.prol, i64 1 ; 2 uses
  store i8 %i.alf, ptr %.024.i7.i937.prol, align 1, !tbaa !42
  %prol.iter2366.next = add i32 %prol.iter2366, 1 ; 2 uses
  %prol.iter2366.cmp.not = icmp eq i32 %prol.iter2366.next, %xtraiter2364
  br i1 %prol.iter2366.cmp.not, label %.lr.ph.i5.i935.prol.loopexit, label %.lr.ph.i5.i935.prol, !llvm.loop !223

.lr.ph.i5.i935.prol.loopexit:                     ; preds = %.lr.ph.i5.i935.prol, %.lr.ph.i5.i935.preheader2312
  %.unr2367 = phi ptr [ %.ph2313, %.lr.ph.i5.i935.preheader2312 ], [ %i.ale, %.lr.ph.i5.i935.prol ]
  %.05.i6.i936.unr = phi i32 [ %.05.i6.i936.ph, %.lr.ph.i5.i935.preheader2312 ], [ %i.ald, %.lr.ph.i5.i935.prol ]
  %.024.i7.i937.unr = phi ptr [ %.024.i7.i937.ph, %.lr.ph.i5.i935.preheader2312 ], [ %i.alg, %.lr.ph.i5.i935.prol ]
  %i.alh = icmp ult i32 %i.alb, 3
  br i1 %i.alh, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935

.lr.ph.i5.i935:                                   ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935
  %i.ali = phi ptr [ %i.alt, %.lr.ph.i5.i935 ], [ %.unr2367, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %.05.i6.i936 = phi i32 [ %i.als, %.lr.ph.i5.i935 ], [ %.05.i6.i936.unr, %.lr.ph.i5.i935.prol.loopexit ]
  %.024.i7.i937 = phi ptr [ %i.alv, %.lr.ph.i5.i935 ], [ %.024.i7.i937.unr, %.lr.ph.i5.i935.prol.loopexit ] ; 5 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 1 ; 2 uses
  store ptr %i.alj, ptr %0, align 8, !tbaa !41
  %i.alk = load i8, ptr %i.ali, align 1, !tbaa !42
  %i.all = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 1
  store i8 %i.alk, ptr %.024.i7.i937, align 1, !tbaa !42
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 2 ; 2 uses
  store ptr %i.alm, ptr %0, align 8, !tbaa !41
  %i.aln = load i8, ptr %i.alj, align 1, !tbaa !42
  %i.alo = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 2
  store i8 %i.aln, ptr %i.all, align 1, !tbaa !42
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ali, i64 3 ; 2 uses
  store ptr %i.alp, ptr %0, align 8, !tbaa !41
  %i.alq = load i8, ptr %i.alm, align 1, !tbaa !42
  %i.alr = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 3
  store i8 %i.alq, ptr %i.alo, align 1, !tbaa !42
  %i.als = add nsw i32 %.05.i6.i936, -4           ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ali, i64 4 ; 2 uses
  store ptr %i.alt, ptr %0, align 8, !tbaa !41
  %i.alu = load i8, ptr %i.alp, align 1, !tbaa !42
  %i.alv = getelementptr inbounds nuw i8, ptr %.024.i7.i937, i64 4
  store i8 %i.alu, ptr %i.alr, align 1, !tbaa !42
  %.not.i8.i938.3 = icmp eq i32 %i.als, 0
  br i1 %.not.i8.i938.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947, label %.lr.ph.i5.i935, !llvm.loop !224

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947: ; preds = %.lr.ph.i5.i935.prol.loopexit, %.lr.ph.i5.i935, %middle.block1631, %._crit_edge.i932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit1014

.loopexit1014.loopexit.unr-lcssa:                 ; preds = %bb.bb
  %lcmp.mod2360.not = icmp eq i32 %xtraiter2356, 0
  br i1 %lcmp.mod2360.not, label %.loopexit1014, label %.epil.preheader2355

.epil.preheader2355:                              ; preds = %.loopexit1014.loopexit.unr-lcssa, %.lr.ph1145
  %.epil.init2359 = phi ptr [ %.promoted1146, %.lr.ph1145 ], [ %i.ajc, %.loopexit1014.loopexit.unr-lcssa ] ; 3 uses
  %.06731143.epil.init = phi ptr [ %i.aik, %.lr.ph1145 ], [ %i.ajh, %.loopexit1014.loopexit.unr-lcssa ]
  %lcmp.mod2361 = trunc i32 %i.aio to i1
  call void @llvm.assume(i1 %lcmp.mod2361)
  %i.alw = getelementptr inbounds nuw i8, ptr %.epil.init2359, i64 1 ; 2 uses
  store ptr %i.alw, ptr %0, align 8, !tbaa !41
  %i.alx = load i8, ptr %.epil.init2359, align 1, !tbaa !42
  %i.aly = getelementptr inbounds nuw i8, ptr %.epil.init2359, i64 2
  store ptr %i.aly, ptr %0, align 8, !tbaa !41
  %i.alz = load i8, ptr %i.alw, align 1, !tbaa !42
  %.sroa.4.0.insert.ext.i927.epil = zext i8 %i.alz to i64
  %.sroa.0.0.insert.ext.i929.epil = zext i8 %i.alx to i64
  %.idx.epil = shl nuw nsw i64 %.sroa.4.0.insert.ext.i927.epil, 10
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.idx.epil
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %.sroa.0.0.insert.ext.i929.epil
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !42
  store float %i.amc, ptr %.06731143.epil.init, align 4, !tbaa !39
  br label %.loopexit1014

.loopexit1014:                                    ; preds = %.epil.preheader2355, %.loopexit1014.loopexit.unr-lcssa, %.preheader1013, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit947
  %indvars.iv.next1310 = add nsw i64 %indvars.iv1309, 1 ; 2 uses
  %lftr.wideiv1312 = trunc i64 %indvars.iv.next1310 to i32
  %exitcond1313.not = icmp eq i32 %i.aeh, %lftr.wideiv1312
  br i1 %exitcond1313.not, label %.loopexit981, label %bb.ba, !llvm.loop !225

bb.bd:                                            ; preds = %.lr.ph1142, %.loopexit1018
  %indvars.iv1303 = phi i64 [ %i.adn, %.lr.ph1142 ], [ %indvars.iv.next1304, %.loopexit1018 ] ; 3 uses
  %i.amd = sub nsw i64 %indvars.iv1303, %i.ado
  %i.ame = mul nsw i64 %13, %i.amd
  %i.amf = getelementptr inbounds i8, ptr %i.ade, i64 %i.ame
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !41 ; 2 uses
  %i.amh = sub nsw i64 %indvars.iv1303, %i.adp
  %i.ami = mul nsw i64 %i.adm, %i.amh
  %i.amj = getelementptr inbounds i8, ptr %i.adk, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !32 ; 4 uses
  %.not744 = icmp eq ptr %i.amg, null
  br i1 %.not744, label %bb.bf, label %.preheader1017

.preheader1017:                                   ; preds = %bb.bd
  %i.aml = icmp sgt i32 %i.amk, 0
  br i1 %i.aml, label %.lr.ph1138, label %.loopexit1018

.lr.ph1138:                                       ; preds = %.preheader1017
  %.promoted1139 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph1138, %bb.be
  %i.amm = phi ptr [ %.promoted1139, %.lr.ph1138 ], [ %i.amt, %bb.be ] ; 5 uses
  %.06691137 = phi i32 [ 0, %.lr.ph1138 ], [ %i.amw, %bb.be ]
  %.06701136 = phi ptr [ %i.amg, %.lr.ph1138 ], [ %i.amv, %bb.be ] ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1 ; 2 uses
  store ptr %i.amn, ptr %0, align 8, !tbaa !41
  %i.amo = load i8, ptr %i.amm, align 1, !tbaa !42
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 2 ; 2 uses
  store ptr %i.amp, ptr %0, align 8, !tbaa !41
  %i.amq = load i8, ptr %i.amn, align 1, !tbaa !42
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 3 ; 2 uses
  store ptr %i.amr, ptr %0, align 8, !tbaa !41
  %i.ams = load i8, ptr %i.amp, align 1, !tbaa !42
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amm, i64 4 ; 2 uses
  store ptr %i.amt, ptr %0, align 8, !tbaa !41
  %i.amu = load i8, ptr %i.amr, align 1, !tbaa !42
  %.sroa.6.0.insert.ext.i949 = zext i8 %i.amu to i32
  %.sroa.6.0.insert.shift.i950 = shl nuw i32 %.sroa.6.0.insert.ext.i949, 24
  %.sroa.5.0.insert.ext.i951 = zext i8 %i.ams to i32
  %.sroa.5.0.insert.shift.i952 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i951, 16
  %.sroa.4.0.insert.ext.i954 = zext i8 %i.amq to i32
  %.sroa.4.0.insert.shift.i955 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i954, 8
  %.sroa.0.0.insert.ext.i957 = zext i8 %i.amo to i32
  %.sroa.5.0.insert.insert.i953 = or disjoint i32 %.sroa.4.0.insert.shift.i955, %.sroa.0.0.insert.ext.i957
  %.sroa.4.0.insert.insert.i956 = or disjoint i32 %.sroa.5.0.insert.insert.i953, %.sroa.5.0.insert.shift.i952
  %.sroa.0.0.insert.insert.i958 = or disjoint i32 %.sroa.4.0.insert.insert.i956, %.sroa.6.0.insert.shift.i950
  store i32 %.sroa.0.0.insert.insert.i958, ptr %.06701136, align 4, !tbaa !39
  %i.amv = getelementptr inbounds i8, ptr %.06701136, i64 %12
  %i.amw = add nuw nsw i32 %.06691137, 1          ; 2 uses
  %exitcond1302.not = icmp eq i32 %i.amw, %i.amk
  br i1 %exitcond1302.not, label %.loopexit1018, label %bb.be, !llvm.loop !226

bb.bf:                                            ; preds = %bb.bd
  %i.amx = shl nsw i32 %i.amk, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i959 = load ptr, ptr %0, align 8   ; 2 uses
  %i.amy = icmp sgt i32 %i.amk, 255
  br i1 %i.amy, label %vector.memcheck1566, label %._crit_edge.i960

vector.memcheck1566:                              ; preds = %bb.bf, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974
  %.013.i968 = phi i32 [ %i.aoa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %i.amx, %bb.bf ] ; 2 uses
  %.promoted1112.i969 = phi ptr [ %.lcssa1523, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ], [ %.promoted10.i959, %bb.bf ] ; 10 uses
  %i.amz = getelementptr i8, ptr %.promoted1112.i969, i64 1024 ; 2 uses
  %bound01570 = icmp ult ptr %0, %i.amz
  %bound11571 = icmp ult ptr %.promoted1112.i969, %scevgep1537
  %found.conflict1572 = and i1 %bound01570, %bound11571
  %conflict.rdx1573 = or i1 %found.conflict1569, %found.conflict1572
  %bound01574 = icmp ult ptr %i.a, %i.amz
  %bound11575 = icmp ult ptr %.promoted1112.i969, %scevgep1564
  %found.conflict1576 = and i1 %bound01574, %bound11575
  %conflict.rdx1577 = or i1 %conflict.rdx1573, %found.conflict1576
  br i1 %conflict.rdx1577, label %.lr.ph.i.i970, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.memcheck1566
  %i.ana = getelementptr i8, ptr %.promoted1112.i969, i64 1024
  br label %vector.body1579

vector.body1579:                                  ; preds = %vector.body1579, %vector.ph1578
  %index1580 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586.3, %vector.body1579 ] ; 6 uses
  %next.gep1581 = getelementptr i8, ptr %.promoted1112.i969, i64 %index1580 ; 2 uses
  %next.gep1583 = getelementptr i8, ptr %i.a, i64 %index1580 ; 2 uses
  %i.anb = getelementptr i8, ptr %next.gep1581, i64 2
  %wide.load1584 = load <2 x i8>, ptr %next.gep1581, align 1, !tbaa !42, !alias.scope !326
  %wide.load1585 = load <2 x i8>, ptr %i.anb, align 1, !tbaa !42, !alias.scope !326
  %i.anc = getelementptr i8, ptr %next.gep1583, i64 2
  store <2 x i8> %wide.load1584, ptr %next.gep1583, align 16, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1585, ptr %i.anc, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1586 = or disjoint i64 %index1580, 4 ; 2 uses
  %next.gep1581.1 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1586 ; 2 uses
  %next.gep1583.1 = getelementptr i8, ptr %i.a, i64 %index.next1586 ; 2 uses
  %i.and = getelementptr i8, ptr %next.gep1581.1, i64 2
  %wide.load1584.1 = load <2 x i8>, ptr %next.gep1581.1, align 1, !tbaa !42, !alias.scope !326
  %wide.load1585.1 = load <2 x i8>, ptr %i.and, align 1, !tbaa !42, !alias.scope !326
  %i.ane = getelementptr i8, ptr %next.gep1583.1, i64 2
  store <2 x i8> %wide.load1584.1, ptr %next.gep1583.1, align 4, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1585.1, ptr %i.ane, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1586.1 = or disjoint i64 %index1580, 8 ; 2 uses
  %next.gep1581.2 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1586.1 ; 2 uses
  %next.gep1583.2 = getelementptr i8, ptr %i.a, i64 %index.next1586.1 ; 2 uses
  %i.anf = getelementptr i8, ptr %next.gep1581.2, i64 2
  %wide.load1584.2 = load <2 x i8>, ptr %next.gep1581.2, align 1, !tbaa !42, !alias.scope !326
  %wide.load1585.2 = load <2 x i8>, ptr %i.anf, align 1, !tbaa !42, !alias.scope !326
  %i.ang = getelementptr i8, ptr %next.gep1583.2, i64 2
  store <2 x i8> %wide.load1584.2, ptr %next.gep1583.2, align 8, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1585.2, ptr %i.ang, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1586.2 = or disjoint i64 %index1580, 12 ; 3 uses
  %next.gep1581.3 = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1586.2 ; 2 uses
  %next.gep1583.3 = getelementptr i8, ptr %i.a, i64 %index.next1586.2 ; 2 uses
  %i.anh = getelementptr i8, ptr %next.gep1581.3, i64 2
  %wide.load1584.3 = load <2 x i8>, ptr %next.gep1581.3, align 1, !tbaa !42, !alias.scope !326
  %wide.load1585.3 = load <2 x i8>, ptr %i.anh, align 1, !tbaa !42, !alias.scope !326
  %i.ani = getelementptr i8, ptr %next.gep1583.3, i64 2
  store <2 x i8> %wide.load1584.3, ptr %next.gep1583.3, align 4, !tbaa !42, !alias.scope !327, !noalias !326
  store <2 x i8> %wide.load1585.3, ptr %i.ani, align 2, !tbaa !42, !alias.scope !327, !noalias !326
  %index.next1586.3 = add nuw nsw i64 %index1580, 16 ; 2 uses
  %i.anj = icmp eq i64 %index.next1586.3, 1024
  br i1 %i.anj, label %middle.block1587, label %vector.body1579, !llvm.loop !230

middle.block1587:                                 ; preds = %vector.body1579
  %i.ank = getelementptr i8, ptr %.promoted1112.i969, i64 %index.next1586.2
  %i.anl = getelementptr i8, ptr %i.ank, i64 4
  store ptr %i.anl, ptr %0, align 8, !tbaa !41, !alias.scope !328, !noalias !329
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974

.lr.ph.i.i970:                                    ; preds = %vector.memcheck1566, %.lr.ph.i.i970
  %i.anm = phi ptr [ %i.anx, %.lr.ph.i.i970 ], [ %.promoted1112.i969, %vector.memcheck1566 ] ; 5 uses
  %.05.i.i971 = phi i32 [ %i.anw, %.lr.ph.i.i970 ], [ 1024, %vector.memcheck1566 ]
  %.024.i.i972 = phi ptr [ %i.anz, %.lr.ph.i.i970 ], [ %i.a, %vector.memcheck1566 ] ; 5 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 1 ; 2 uses
  store ptr %i.ann, ptr %0, align 8, !tbaa !41
  %i.ano = load i8, ptr %i.anm, align 1, !tbaa !42
  %i.anp = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 1
  store i8 %i.ano, ptr %.024.i.i972, align 1, !tbaa !42
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anm, i64 2 ; 2 uses
  store ptr %i.anq, ptr %0, align 8, !tbaa !41
  %i.anr = load i8, ptr %i.ann, align 1, !tbaa !42
  %i.ans = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 2
  store i8 %i.anr, ptr %i.anp, align 1, !tbaa !42
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 3 ; 2 uses
  store ptr %i.ant, ptr %0, align 8, !tbaa !41
  %i.anu = load i8, ptr %i.anq, align 1, !tbaa !42
  %i.anv = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 3
  store i8 %i.anu, ptr %i.ans, align 1, !tbaa !42
  %i.anw = add nsw i32 %.05.i.i971, -4            ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anm, i64 4 ; 3 uses
  store ptr %i.anx, ptr %0, align 8, !tbaa !41
  %i.any = load i8, ptr %i.ant, align 1, !tbaa !42
  %i.anz = getelementptr inbounds nuw i8, ptr %.024.i.i972, i64 4
  store i8 %i.any, ptr %i.anv, align 1, !tbaa !42
  %.not.i.i973.3 = icmp eq i32 %i.anw, 0
  br i1 %.not.i.i973.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974, label %.lr.ph.i.i970, !llvm.loop !232

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974: ; preds = %.lr.ph.i.i970, %middle.block1587
  %.lcssa1523 = phi ptr [ %i.ana, %middle.block1587 ], [ %i.anx, %.lr.ph.i.i970 ] ; 2 uses
  %i.aoa = add nsw i32 %.013.i968, -1024          ; 2 uses
  %i.aob = icmp sgt i32 %.013.i968, 2047
  br i1 %i.aob, label %vector.memcheck1566, label %._crit_edge.i960, !llvm.loop !1

._crit_edge.i960:                                 ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974, %bb.bf
  %.promoted.i961 = phi ptr [ %.promoted10.i959, %bb.bf ], [ %.lcssa1523, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 8 uses
  %.0.lcssa.i962 = phi i32 [ %i.amx, %bb.bf ], [ %i.aoa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i974 ] ; 8 uses
  %i.aoc = icmp sgt i32 %.0.lcssa.i962, 0
  br i1 %i.aoc, label %.lr.ph.i5.i963.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975

.lr.ph.i5.i963.preheader:                         ; preds = %._crit_edge.i960
  %i.aod = zext nneg i32 %.0.lcssa.i962 to i64    ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i962, 12
  br i1 %min.iters.check, label %.lr.ph.i5.i963.preheader2317, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i5.i963.preheader
  %i.aoe = add nsw i32 %.0.lcssa.i962, -1
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = getelementptr i8, ptr %scevgep, i64 %i.aof ; 2 uses
  %bound0 = icmp ult ptr %0, %i.aog
  %found.conflict = and i1 %bound0, %bound1
  %36 = zext nneg i32 %.0.lcssa.i962 to i64
  %37 = getelementptr i8, ptr %.promoted.i961, i64 %36 ; 2 uses
  %bound01538 = icmp ult ptr %0, %37
  %bound11539 = icmp ult ptr %.promoted.i961, %scevgep1537
  %found.conflict1540 = and i1 %bound01538, %bound11539
  %conflict.rdx = or i1 %found.conflict, %found.conflict1540
  %bound01541 = icmp ult ptr %i.a, %37
  %bound11542 = icmp ult ptr %.promoted.i961, %i.aog
  %found.conflict1543 = and i1 %bound01541, %bound11542
  %conflict.rdx1544 = or i1 %conflict.rdx, %found.conflict1543
  br i1 %conflict.rdx1544, label %.lr.ph.i5.i963.preheader2317, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aod, 2147483644             ; 5 uses
  %i.aoh = getelementptr i8, ptr %.promoted.i961, i64 %n.vec
  %i.aoi = trunc nuw nsw i64 %n.vec to i32
  %i.aoj = sub nsw i32 %.0.lcssa.i962, %i.aoi
  %i.aok = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.promoted.i961, i64 %index ; 2 uses
  %next.gep1546 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.aol = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !42, !alias.scope !330
  %wide.load1547 = load <2 x i8>, ptr %i.aol, align 1, !tbaa !42, !alias.scope !330
  %i.aom = getelementptr i8, ptr %next.gep1546, i64 2
  store <2 x i8> %wide.load, ptr %next.gep1546, align 4, !tbaa !42, !alias.scope !331, !noalias !330
  store <2 x i8> %wide.load1547, ptr %i.aom, align 2, !tbaa !42, !alias.scope !331, !noalias !330
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aon = icmp eq i64 %index.next, %n.vec
  br i1 %i.aon, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %i.aoo = getelementptr i8, ptr %.promoted.i961, i64 %index
  %i.aop = getelementptr i8, ptr %i.aoo, i64 4
  store ptr %i.aop, ptr %0, align 8, !tbaa !41, !alias.scope !332, !noalias !333
  %cmp.n = icmp eq i64 %n.vec, %i.aod
  br i1 %cmp.n, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963.preheader2317

.lr.ph.i5.i963.preheader2317:                     ; preds = %vector.memcheck, %.lr.ph.i5.i963.preheader, %middle.block
  %.ph2318 = phi ptr [ %.promoted.i961, %vector.memcheck ], [ %.promoted.i961, %.lr.ph.i5.i963.preheader ], [ %i.aoh, %middle.block ] ; 2 uses
  %.05.i6.i964.ph = phi i32 [ %.0.lcssa.i962, %vector.memcheck ], [ %.0.lcssa.i962, %.lr.ph.i5.i963.preheader ], [ %i.aoj, %middle.block ] ; 4 uses
  %.024.i7.i965.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i5.i963.preheader ], [ %i.aok, %middle.block ] ; 2 uses
  %i.aoq = add nsw i32 %.05.i6.i964.ph, -1
  %xtraiter2352 = and i32 %.05.i6.i964.ph, 3      ; 2 uses
  %lcmp.mod2353.not = icmp eq i32 %xtraiter2352, 0
  br i1 %lcmp.mod2353.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol

.lr.ph.i5.i963.prol:                              ; preds = %.lr.ph.i5.i963.preheader2317, %.lr.ph.i5.i963.prol
  %i.aor = phi ptr [ %i.aot, %.lr.ph.i5.i963.prol ], [ %.ph2318, %.lr.ph.i5.i963.preheader2317 ] ; 2 uses
  %.05.i6.i964.prol = phi i32 [ %i.aos, %.lr.ph.i5.i963.prol ], [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2317 ]
  %.024.i7.i965.prol = phi ptr [ %i.aov, %.lr.ph.i5.i963.prol ], [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2317 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i963.prol ], [ 0, %.lr.ph.i5.i963.preheader2317 ]
  %i.aos = add nsw i32 %.05.i6.i964.prol, -1      ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 1 ; 3 uses
  store ptr %i.aot, ptr %0, align 8, !tbaa !41
  %i.aou = load i8, ptr %i.aor, align 1, !tbaa !42
  %i.aov = getelementptr inbounds nuw i8, ptr %.024.i7.i965.prol, i64 1 ; 2 uses
  store i8 %i.aou, ptr %.024.i7.i965.prol, align 1, !tbaa !42
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter2352
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i963.prol.loopexit, label %.lr.ph.i5.i963.prol, !llvm.loop !238

.lr.ph.i5.i963.prol.loopexit:                     ; preds = %.lr.ph.i5.i963.prol, %.lr.ph.i5.i963.preheader2317
  %.unr2354 = phi ptr [ %.ph2318, %.lr.ph.i5.i963.preheader2317 ], [ %i.aot, %.lr.ph.i5.i963.prol ]
  %.05.i6.i964.unr = phi i32 [ %.05.i6.i964.ph, %.lr.ph.i5.i963.preheader2317 ], [ %i.aos, %.lr.ph.i5.i963.prol ]
  %.024.i7.i965.unr = phi ptr [ %.024.i7.i965.ph, %.lr.ph.i5.i963.preheader2317 ], [ %i.aov, %.lr.ph.i5.i963.prol ]
  %i.aow = icmp ult i32 %i.aoq, 3
  br i1 %i.aow, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963

.lr.ph.i5.i963:                                   ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963
  %i.aox = phi ptr [ %i.api, %.lr.ph.i5.i963 ], [ %.unr2354, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %.05.i6.i964 = phi i32 [ %i.aph, %.lr.ph.i5.i963 ], [ %.05.i6.i964.unr, %.lr.ph.i5.i963.prol.loopexit ]
  %.024.i7.i965 = phi ptr [ %i.apk, %.lr.ph.i5.i963 ], [ %.024.i7.i965.unr, %.lr.ph.i5.i963.prol.loopexit ] ; 5 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 1 ; 2 uses
  store ptr %i.aoy, ptr %0, align 8, !tbaa !41
  %i.aoz = load i8, ptr %i.aox, align 1, !tbaa !42
  %i.apa = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 1
  store i8 %i.aoz, ptr %.024.i7.i965, align 1, !tbaa !42
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aox, i64 2 ; 2 uses
  store ptr %i.apb, ptr %0, align 8, !tbaa !41
  %i.apc = load i8, ptr %i.aoy, align 1, !tbaa !42
  %i.apd = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 2
  store i8 %i.apc, ptr %i.apa, align 1, !tbaa !42
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aox, i64 3 ; 2 uses
  store ptr %i.ape, ptr %0, align 8, !tbaa !41
  %i.apf = load i8, ptr %i.apb, align 1, !tbaa !42
  %i.apg = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 3
  store i8 %i.apf, ptr %i.apd, align 1, !tbaa !42
  %i.aph = add nsw i32 %.05.i6.i964, -4           ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aox, i64 4 ; 2 uses
  store ptr %i.api, ptr %0, align 8, !tbaa !41
  %i.apj = load i8, ptr %i.ape, align 1, !tbaa !42
  %i.apk = getelementptr inbounds nuw i8, ptr %.024.i7.i965, i64 4
  store i8 %i.apj, ptr %i.apg, align 1, !tbaa !42
  %.not.i8.i966.3 = icmp eq i32 %i.aph, 0
  br i1 %.not.i8.i966.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975, label %.lr.ph.i5.i963, !llvm.loop !239

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975: ; preds = %.lr.ph.i5.i963.prol.loopexit, %.lr.ph.i5.i963, %middle.block, %._crit_edge.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit1018

.loopexit1018:                                    ; preds = %bb.be, %.preheader1017, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit975
  %indvars.iv.next1304 = add nsw i64 %indvars.iv1303, 1 ; 2 uses
  %lftr.wideiv1306 = trunc i64 %indvars.iv.next1304 to i32
  %exitcond1307.not = icmp eq i32 %i.adq, %lftr.wideiv1306
  br i1 %exitcond1307.not, label %.loopexit981, label %bb.bd, !llvm.loop !240

bb.bg:                                            ; preds = %bb.aw
  %i.apl = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.apl, ptr noundef nonnull @.str.9)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @__cxa_throw(ptr nonnull %i.apl, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bj:                                            ; preds = %bb.z
  %i.apn = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.apn, ptr noundef nonnull @.str.9)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @__cxa_throw(ptr nonnull %i.apn, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.apo = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bm:                                            ; preds = %bb.y
  switch i32 %18, label %bb.cx [
    i32 0, label %bb.bn
    i32 1, label %bb.bx
    i32 2, label %bb.cj
  ]

bb.bn:                                            ; preds = %bb.bm
  switch i32 %19, label %bb.bu [
    i32 0, label %.preheader1024
    i32 1, label %.preheader1028
    i32 2, label %.preheader1032
  ]

.preheader1032:                                   ; preds = %bb.bn
  %.not7371121 = icmp sgt i32 %6, %7
  br i1 %.not7371121, label %.loopexit981, label %.lr.ph1123

.lr.ph1123:                                       ; preds = %.preheader1032
  %i.app = sub nsw i32 %5, %11
  %i.apq = sext i32 %i.app to i64
  %i.apr = mul nsw i64 %14, %i.apq
  %i.aps = getelementptr inbounds i8, ptr %1, i64 %i.apr
  %i.apt = sub nsw i32 %5, %9
  %i.apu = sext i32 %i.apt to i64
  %i.apv = shl i64 %4, 32
  %i.apw = ashr exact i64 %i.apv, 32
  %i.apx = mul nsw i64 %i.apw, %i.apu
  %i.apy = getelementptr inbounds i8, ptr %2, i64 %i.apx
  %i.apz = shl i64 %3, 32
  %i.aqa = ashr exact i64 %i.apz, 32
  %i.aqb = sext i32 %6 to i64
  %i.aqc = sext i32 %10 to i64
  %i.aqd = sext i32 %8 to i64
  %i.aqe = add i32 %7, 1
  br label %bb.bs

.preheader1028:                                   ; preds = %bb.bn
  %.not7391127 = icmp sgt i32 %6, %7
  br i1 %.not7391127, label %.loopexit981, label %.lr.ph1129

.lr.ph1129:                                       ; preds = %.preheader1028
  %i.aqf = sub nsw i32 %5, %11
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = mul nsw i64 %14, %i.aqg
  %i.aqi = getelementptr inbounds i8, ptr %1, i64 %i.aqh
  %i.aqj = sub nsw i32 %5, %9
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = shl i64 %4, 32
  %i.aqm = ashr exact i64 %i.aql, 32
  %i.aqn = mul nsw i64 %i.aqm, %i.aqk
  %i.aqo = getelementptr inbounds i8, ptr %2, i64 %i.aqn
  %i.aqp = shl i64 %3, 32
  %i.aqq = ashr exact i64 %i.aqp, 32
  %i.aqr = sext i32 %6 to i64
  %i.aqs = sext i32 %10 to i64
  %i.aqt = sext i32 %8 to i64
  %i.aqu = add i32 %7, 1
  br label %bb.bq

.preheader1024:                                   ; preds = %bb.bn
  %.not7411133 = icmp sgt i32 %6, %7
  br i1 %.not7411133, label %.loopexit981, label %.lr.ph1135

end_hunk_0
begin_hunk_1_@_ZN7Imf_3_423copyIntoDeepFrameBufferERPKcPcS1_lliiiiiiilllbdNS_10Compressor6FormatENS_9PixelTypeES6_:bb.a
  store ptr %i.bez, ptr %0, align 8, !tbaa !41
  %i.bfa = getelementptr inbounds i8, ptr %.06361077, i64 %12
  %i.bfb = add nuw nsw i32 %.06351078, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bfb, %i.bei
  br i1 %exitcond.not, label %.loopexit1056, label %.preheader1054, !llvm.loop !260

bb.ct:                                            ; preds = %bb.cs
  %i.bfc = sext i32 %i.bei to i64
  %i.bfd = shl nsw i64 %i.bfc, 2
  %i.bfe = load ptr, ptr %0, align 8, !tbaa !41
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bfd
  store ptr %i.bff, ptr %0, align 8, !tbaa !41
  br label %.loopexit1056

.loopexit1056:                                    ; preds = %.preheader1054, %.preheader1055, %bb.ct
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond1252.not = icmp eq i32 %i.azu, %lftr.wideiv
  br i1 %exitcond1252.not, label %.loopexit981, label %bb.cs, !llvm.loop !261

bb.cu:                                            ; preds = %bb.cj
  %i.bfg = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bfg, ptr noundef nonnull @.str.9)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  tail call void @__cxa_throw(ptr nonnull %i.bfg, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.bfh = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cx:                                            ; preds = %bb.bm
  %i.bfi = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bfi, ptr noundef nonnull @.str.9)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  tail call void @__cxa_throw(ptr nonnull %i.bfi, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit981:                                     ; preds = %.loopexit1056, %.loopexit1051, %.loopexit1047, %.loopexit1043, %.loopexit1039, %.loopexit1035, %.loopexit1031, %.loopexit1027, %.loopexit1023, %.loopexit1018, %.loopexit1014, %.loopexit1010, %.loopexit1006, %.loopexit1002, %.loopexit998, %.loopexit994, %.loopexit990, %.loopexit986, %.loopexit984, %.loopexit982, %.loopexit, %.preheader1057, %.preheader1052, %.preheader1048, %.preheader1044, %.preheader1040, %.preheader1036, %.preheader1032, %.preheader1028, %.preheader1024, %.preheader1019, %.preheader1015, %.preheader1011, %.preheader1007, %.preheader1003, %.preheader999, %.preheader995, %.preheader991, %.preheader987, %bb.s, %_ZN9Imath_3_24halfC2Ef.exit, %bb.c
  ret void

bb.da:                                            ; preds = %bb.cz, %bb.cw, %bb.ci, %bb.bw, %bb.bl, %bb.bi, %bb.av, %bb.ak, %bb.x
  %.sink = phi ptr [ %i.bfi, %bb.cz ], [ %i.bfg, %bb.cw ], [ %i.azd, %bb.ci ], [ %i.auc, %bb.bw ], [ %i.apn, %bb.bl ], [ %i.apl, %bb.bi ], [ %i.acz, %bb.av ], [ %i.qx, %bb.ak ], [ %i.fd, %bb.x ]
  %.pn = phi { ptr, i32 } [ %i.bfj, %bb.cz ], [ %i.bfh, %bb.cw ], [ %i.aze, %bb.ci ], [ %i.aud, %bb.bw ], [ %i.apo, %bb.bl ], [ %i.apm, %bb.bi ], [ %i.ada, %bb.av ], [ %i.qy, %bb.ak ], [ %i.fe, %bb.x ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_411skipChannelERPKcNS_9PixelTypeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
  %i.e = shl i32 %i.d, 2                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.promoted10.i = load ptr, ptr %0, align 8      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1023
  br i1 %i.f, label %.lr.ph.i.preheader.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader.i.preheader:                   ; preds = %bb.b
  %scevgep225 = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 2 uses
  %scevgep226 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0229 = icmp ult ptr %0, %scevgep225
  %bound1230 = icmp ult ptr %i.c, %scevgep226
  %found.conflict231 = and i1 %bound0229, %bound1230
  br label %vector.memcheck228

vector.memcheck228:                               ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, %.lr.ph.i.preheader.i.preheader
  %.013.i = phi i32 [ %i.ah, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %i.e, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %.promoted1112.i = phi ptr [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ], [ %.promoted10.i, %.lr.ph.i.preheader.i.preheader ] ; 10 uses
  %i.g = getelementptr i8, ptr %.promoted1112.i, i64 1024 ; 2 uses
  %bound0232 = icmp ult ptr %0, %i.g
  %bound1233 = icmp ult ptr %.promoted1112.i, %scevgep226
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %i.c, %i.g
  %bound1237 = icmp ult ptr %.promoted1112.i, %scevgep225
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  br i1 %conflict.rdx239, label %.lr.ph.i.i, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck228
  %i.h = getelementptr i8, ptr %.promoted1112.i, i64 1024
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph240
  %index242 = phi i64 [ 0, %vector.ph240 ], [ %index.next248.3, %vector.body241 ] ; 6 uses
  %next.gep243 = getelementptr i8, ptr %.promoted1112.i, i64 %index242 ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.c, i64 %index242 ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep243, i64 2
  %wide.load246 = load <2 x i8>, ptr %next.gep243, align 1, !tbaa !42, !alias.scope !373
  %wide.load247 = load <2 x i8>, ptr %i.i, align 1, !tbaa !42, !alias.scope !373
  %i.j = getelementptr i8, ptr %next.gep245, i64 2
  store <2 x i8> %wide.load246, ptr %next.gep245, align 16, !tbaa !42, !alias.scope !374, !noalias !373
  store <2 x i8> %wide.load247, ptr %i.j, align 2, !tbaa !42, !alias.scope !374, !noalias !373
  %index.next248 = or disjoint i64 %index242, 4   ; 2 uses
  %next.gep243.1 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next248 ; 2 uses
  %next.gep245.1 = getelementptr i8, ptr %i.c, i64 %index.next248 ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep243.1, i64 2
  %wide.load246.1 = load <2 x i8>, ptr %next.gep243.1, align 1, !tbaa !42, !alias.scope !373
  %wide.load247.1 = load <2 x i8>, ptr %i.k, align 1, !tbaa !42, !alias.scope !373
  %i.l = getelementptr i8, ptr %next.gep245.1, i64 2
  store <2 x i8> %wide.load246.1, ptr %next.gep245.1, align 4, !tbaa !42, !alias.scope !374, !noalias !373
  store <2 x i8> %wide.load247.1, ptr %i.l, align 2, !tbaa !42, !alias.scope !374, !noalias !373
  %index.next248.1 = or disjoint i64 %index242, 8 ; 2 uses
  %next.gep243.2 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next248.1 ; 2 uses
  %next.gep245.2 = getelementptr i8, ptr %i.c, i64 %index.next248.1 ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep243.2, i64 2
  %wide.load246.2 = load <2 x i8>, ptr %next.gep243.2, align 1, !tbaa !42, !alias.scope !373
  %wide.load247.2 = load <2 x i8>, ptr %i.m, align 1, !tbaa !42, !alias.scope !373
  %i.n = getelementptr i8, ptr %next.gep245.2, i64 2
  store <2 x i8> %wide.load246.2, ptr %next.gep245.2, align 8, !tbaa !42, !alias.scope !374, !noalias !373
  store <2 x i8> %wide.load247.2, ptr %i.n, align 2, !tbaa !42, !alias.scope !374, !noalias !373
  %index.next248.2 = or disjoint i64 %index242, 12 ; 3 uses
  %next.gep243.3 = getelementptr i8, ptr %.promoted1112.i, i64 %index.next248.2 ; 2 uses
  %next.gep245.3 = getelementptr i8, ptr %i.c, i64 %index.next248.2 ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep243.3, i64 2
  %wide.load246.3 = load <2 x i8>, ptr %next.gep243.3, align 1, !tbaa !42, !alias.scope !373
  %wide.load247.3 = load <2 x i8>, ptr %i.o, align 1, !tbaa !42, !alias.scope !373
  %i.p = getelementptr i8, ptr %next.gep245.3, i64 2
  store <2 x i8> %wide.load246.3, ptr %next.gep245.3, align 4, !tbaa !42, !alias.scope !374, !noalias !373
  store <2 x i8> %wide.load247.3, ptr %i.p, align 2, !tbaa !42, !alias.scope !374, !noalias !373
  %index.next248.3 = add nuw nsw i64 %index242, 16 ; 2 uses
  %i.q = icmp eq i64 %index.next248.3, 1024
  br i1 %i.q, label %middle.block249, label %vector.body241, !llvm.loop !337

middle.block249:                                  ; preds = %vector.body241
  %i.r = getelementptr i8, ptr %.promoted1112.i, i64 %index.next248.2
  %i.s = getelementptr i8, ptr %i.r, i64 4
  store ptr %i.s, ptr %0, align 8, !tbaa !41, !alias.scope !375, !noalias !376
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i

.lr.ph.i.i:                                       ; preds = %vector.memcheck228, %.lr.ph.i.i
  %i.t = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.promoted1112.i, %vector.memcheck228 ] ; 5 uses
  %.05.i.i = phi i32 [ %i.ad, %.lr.ph.i.i ], [ 1024, %vector.memcheck228 ]
  %.024.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.c, %vector.memcheck228 ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !41
  %i.v = load i8, ptr %i.t, align 1, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  store i8 %i.v, ptr %.024.i.i, align 1, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !41
  %i.y = load i8, ptr %i.u, align 1, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 2
  store i8 %i.y, ptr %i.w, align 1, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !41
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 3
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !42
  %i.ad = add nsw i32 %.05.i.i, -4                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !41
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !42
  %.not.i.i.3 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, label %.lr.ph.i.i, !llvm.loop !339

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i:   ; preds = %.lr.ph.i.i, %middle.block249
  %.lcssa = phi ptr [ %i.h, %middle.block249 ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %i.ah = add nsw i32 %.013.i, -1024              ; 2 uses
  %i.ai = icmp sgt i32 %.013.i, 2047
  br i1 %i.ai, label %vector.memcheck228, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i, %bb.b
  %.promoted.i = phi ptr [ %.promoted10.i, %bb.b ], [ %.lcssa, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ %i.e, %bb.b ], [ %i.ah, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i ] ; 7 uses
  %i.aj = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.aj, label %.lr.ph.i5.i.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit

.lr.ph.i5.i.preheader:                            ; preds = %._crit_edge.i
  %i.ak = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %min.iters.check266 = icmp ult i32 %.0.lcssa.i, 26
  br i1 %min.iters.check266, label %.lr.ph.i5.i.preheader294, label %vector.memcheck267

vector.memcheck267:                               ; preds = %.lr.ph.i5.i.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.an = getelementptr i8, ptr %i.c, i64 %i.am   ; 2 uses
  %bound0268 = icmp ult ptr %0, %i.an
  %bound0268.a = icmp ult ptr %i.c, %i.al
  %found.conflict270 = and i1 %bound0268, %bound0268.a
  %3 = getelementptr i8, ptr %.promoted.i, i64 %i.am ; 2 uses
  %bound0271 = icmp ult ptr %0, %3
  %bound1272 = icmp ult ptr %.promoted.i, %i.al
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %found.conflict270, %found.conflict273
  %bound0275 = icmp ult ptr %i.c, %3
  %bound1276 = icmp ult ptr %.promoted.i, %i.an
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  br i1 %conflict.rdx278, label %.lr.ph.i5.i.preheader294, label %vector.ph279

vector.ph279:                                     ; preds = %vector.memcheck267
  %n.vec280 = and i64 %i.ak, 2147483644           ; 5 uses
  %i.ao = getelementptr i8, ptr %.promoted.i, i64 %n.vec280
  %i.ap = trunc nuw nsw i64 %n.vec280 to i32
  %i.aq = sub nsw i32 %.0.lcssa.i, %i.ap
  %i.ar = getelementptr i8, ptr %i.c, i64 %n.vec280
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next288, %vector.body281 ] ; 4 uses
  %next.gep283 = getelementptr i8, ptr %.promoted.i, i64 %index282 ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.c, i64 %index282 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep283, i64 2
  %wide.load286 = load <2 x i8>, ptr %next.gep283, align 1, !tbaa !42, !alias.scope !377
  %wide.load287 = load <2 x i8>, ptr %i.as, align 1, !tbaa !42, !alias.scope !377
  %i.at = getelementptr i8, ptr %next.gep285, i64 2
  store <2 x i8> %wide.load286, ptr %next.gep285, align 4, !tbaa !42, !alias.scope !378, !noalias !377
  store <2 x i8> %wide.load287, ptr %i.at, align 2, !tbaa !42, !alias.scope !378, !noalias !377
  %index.next288 = add nuw i64 %index282, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next288, %n.vec280
  br i1 %i.au, label %middle.block289, label %vector.body281, !llvm.loop !343

middle.block289:                                  ; preds = %vector.body281
  %i.av = getelementptr i8, ptr %.promoted.i, i64 %index282
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store ptr %i.aw, ptr %0, align 8, !tbaa !41, !alias.scope !379, !noalias !380
  %cmp.n290 = icmp eq i64 %n.vec280, %i.ak
  br i1 %cmp.n290, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i.preheader294

.lr.ph.i5.i.preheader294:                         ; preds = %vector.memcheck267, %.lr.ph.i5.i.preheader, %middle.block289
  %.ph = phi ptr [ %.promoted.i, %vector.memcheck267 ], [ %.promoted.i, %.lr.ph.i5.i.preheader ], [ %i.ao, %middle.block289 ] ; 2 uses
  %.05.i6.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck267 ], [ %.0.lcssa.i, %.lr.ph.i5.i.preheader ], [ %i.aq, %middle.block289 ] ; 4 uses
  %.024.i7.i.ph = phi ptr [ %i.c, %vector.memcheck267 ], [ %i.c, %.lr.ph.i5.i.preheader ], [ %i.ar, %middle.block289 ] ; 2 uses
  %i.ax = add nsw i32 %.05.i6.i.ph, -1
  %xtraiter309 = and i32 %.05.i6.i.ph, 3          ; 2 uses
  %lcmp.mod310.not = icmp eq i32 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %.lr.ph.i5.i.preheader294, %.lr.ph.i5.i.prol
  %i.ay = phi ptr [ %i.ba, %.lr.ph.i5.i.prol ], [ %.ph, %.lr.ph.i5.i.preheader294 ] ; 2 uses
  %.05.i6.i.prol = phi i32 [ %i.az, %.lr.ph.i5.i.prol ], [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader294 ]
  %.024.i7.i.prol = phi ptr [ %i.bc, %.lr.ph.i5.i.prol ], [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader294 ] ; 2 uses
  %prol.iter311 = phi i32 [ %prol.iter311.next, %.lr.ph.i5.i.prol ], [ 0, %.lr.ph.i5.i.preheader294 ]
  %i.az = add nsw i32 %.05.i6.i.prol, -1          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !41
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %.024.i7.i.prol, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.024.i7.i.prol, align 1, !tbaa !42
  %prol.iter311.next = add i32 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i32 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !345

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %.lr.ph.i5.i.preheader294
  %.unr312 = phi ptr [ %.ph, %.lr.ph.i5.i.preheader294 ], [ %i.ba, %.lr.ph.i5.i.prol ]
  %.05.i6.i.unr = phi i32 [ %.05.i6.i.ph, %.lr.ph.i5.i.preheader294 ], [ %i.az, %.lr.ph.i5.i.prol ]
  %.024.i7.i.unr = phi ptr [ %.024.i7.i.ph, %.lr.ph.i5.i.preheader294 ], [ %i.bc, %.lr.ph.i5.i.prol ]
  %i.bd = icmp ult i32 %i.ax, 3
  br i1 %i.bd, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %i.be = phi ptr [ %i.bp, %.lr.ph.i5.i ], [ %.unr312, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %.05.i6.i = phi i32 [ %i.bo, %.lr.ph.i5.i ], [ %.05.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ]
  %.024.i7.i = phi ptr [ %i.br, %.lr.ph.i5.i ], [ %.024.i7.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !41
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 1
  store i8 %i.bg, ptr %.024.i7.i, align 1, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !41
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 2
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 3 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !41
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 3
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !42
  %i.bo = add nsw i32 %.05.i6.i, -4               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !41
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.024.i7.i, i64 4
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !42
  %.not.i8.i.3 = icmp eq i32 %i.bo, 0
  br i1 %.not.i8.i.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit, label %.lr.ph.i5.i, !llvm.loop !346

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %middle.block289, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.bs = trunc i64 %2 to i32
  %i.bt = shl i32 %i.bs, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.promoted10.i8 = load ptr, ptr %0, align 8     ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 1023
  br i1 %i.bu, label %.lr.ph.i.preheader.i16.preheader, label %._crit_edge.i9

.lr.ph.i.preheader.i16.preheader:                 ; preds = %bb.c
  %scevgep141 = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 2 uses
  %scevgep142 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0145 = icmp ult ptr %0, %scevgep141
  %bound1146 = icmp ult ptr %i.b, %scevgep142
  %found.conflict147 = and i1 %bound0145, %bound1146
  br label %vector.memcheck144

vector.memcheck144:                               ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23, %.lr.ph.i.preheader.i16.preheader
  %.013.i17 = phi i32 [ %i.cw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %i.bt, %.lr.ph.i.preheader.i16.preheader ] ; 2 uses
  %.promoted1112.i18 = phi ptr [ %.lcssa62, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23 ], [ %.promoted10.i8, %.lr.ph.i.preheader.i16.preheader ] ; 10 uses
  %i.bv = getelementptr i8, ptr %.promoted1112.i18, i64 1024 ; 2 uses
  %bound0148 = icmp ult ptr %0, %i.bv
  %bound1149 = icmp ult ptr %.promoted1112.i18, %scevgep142
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %found.conflict147, %found.conflict150
  %bound0152 = icmp ult ptr %i.b, %i.bv
  %bound1153 = icmp ult ptr %.promoted1112.i18, %scevgep141
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  br i1 %conflict.rdx155, label %.lr.ph.i.i19, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck144
  %i.bw = getelementptr i8, ptr %.promoted1112.i18, i64 1024
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph156
  %index158 = phi i64 [ 0, %vector.ph156 ], [ %index.next164.3, %vector.body157 ] ; 6 uses
  %next.gep159 = getelementptr i8, ptr %.promoted1112.i18, i64 %index158 ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.b, i64 %index158 ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep159, i64 2
  %wide.load162 = load <2 x i8>, ptr %next.gep159, align 1, !tbaa !42, !alias.scope !381
  %wide.load163 = load <2 x i8>, ptr %i.bx, align 1, !tbaa !42, !alias.scope !381
  %i.by = getelementptr i8, ptr %next.gep161, i64 2
  store <2 x i8> %wide.load162, ptr %next.gep161, align 16, !tbaa !42, !alias.scope !382, !noalias !381
  store <2 x i8> %wide.load163, ptr %i.by, align 2, !tbaa !42, !alias.scope !382, !noalias !381
  %index.next164 = or disjoint i64 %index158, 4   ; 2 uses
  %next.gep159.1 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next164 ; 2 uses
  %next.gep161.1 = getelementptr i8, ptr %i.b, i64 %index.next164 ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep159.1, i64 2
  %wide.load162.1 = load <2 x i8>, ptr %next.gep159.1, align 1, !tbaa !42, !alias.scope !381
  %wide.load163.1 = load <2 x i8>, ptr %i.bz, align 1, !tbaa !42, !alias.scope !381
  %i.ca = getelementptr i8, ptr %next.gep161.1, i64 2
  store <2 x i8> %wide.load162.1, ptr %next.gep161.1, align 4, !tbaa !42, !alias.scope !382, !noalias !381
  store <2 x i8> %wide.load163.1, ptr %i.ca, align 2, !tbaa !42, !alias.scope !382, !noalias !381
  %index.next164.1 = or disjoint i64 %index158, 8 ; 2 uses
  %next.gep159.2 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next164.1 ; 2 uses
  %next.gep161.2 = getelementptr i8, ptr %i.b, i64 %index.next164.1 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep159.2, i64 2
  %wide.load162.2 = load <2 x i8>, ptr %next.gep159.2, align 1, !tbaa !42, !alias.scope !381
  %wide.load163.2 = load <2 x i8>, ptr %i.cb, align 1, !tbaa !42, !alias.scope !381
  %i.cc = getelementptr i8, ptr %next.gep161.2, i64 2
  store <2 x i8> %wide.load162.2, ptr %next.gep161.2, align 8, !tbaa !42, !alias.scope !382, !noalias !381
  store <2 x i8> %wide.load163.2, ptr %i.cc, align 2, !tbaa !42, !alias.scope !382, !noalias !381
  %index.next164.2 = or disjoint i64 %index158, 12 ; 3 uses
  %next.gep159.3 = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next164.2 ; 2 uses
  %next.gep161.3 = getelementptr i8, ptr %i.b, i64 %index.next164.2 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep159.3, i64 2
  %wide.load162.3 = load <2 x i8>, ptr %next.gep159.3, align 1, !tbaa !42, !alias.scope !381
  %wide.load163.3 = load <2 x i8>, ptr %i.cd, align 1, !tbaa !42, !alias.scope !381
  %i.ce = getelementptr i8, ptr %next.gep161.3, i64 2
  store <2 x i8> %wide.load162.3, ptr %next.gep161.3, align 4, !tbaa !42, !alias.scope !382, !noalias !381
  store <2 x i8> %wide.load163.3, ptr %i.ce, align 2, !tbaa !42, !alias.scope !382, !noalias !381
  %index.next164.3 = add nuw nsw i64 %index158, 16 ; 2 uses
  %i.cf = icmp eq i64 %index.next164.3, 1024
  br i1 %i.cf, label %middle.block165, label %vector.body157, !llvm.loop !350

middle.block165:                                  ; preds = %vector.body157
  %i.cg = getelementptr i8, ptr %.promoted1112.i18, i64 %index.next164.2
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  store ptr %i.ch, ptr %0, align 8, !tbaa !41, !alias.scope !383, !noalias !384
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23

.lr.ph.i.i19:                                     ; preds = %vector.memcheck144, %.lr.ph.i.i19
  %i.ci = phi ptr [ %i.ct, %.lr.ph.i.i19 ], [ %.promoted1112.i18, %vector.memcheck144 ] ; 5 uses
  %.05.i.i20 = phi i32 [ %i.cs, %.lr.ph.i.i19 ], [ 1024, %vector.memcheck144 ]
  %.024.i.i21 = phi ptr [ %i.cv, %.lr.ph.i.i19 ], [ %i.b, %vector.memcheck144 ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !41
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 1
  store i8 %i.ck, ptr %.024.i.i21, align 1, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !41
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 2
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 3 ; 2 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !41
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 3
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !42
  %i.cs = add nsw i32 %.05.i.i20, -4              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 3 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !41
  %i.cu = load i8, ptr %i.cp, align 1, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %.024.i.i21, i64 4
  store i8 %i.cu, ptr %i.cr, align 1, !tbaa !42
  %.not.i.i22.3 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i22.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23, label %.lr.ph.i.i19, !llvm.loop !352

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23: ; preds = %.lr.ph.i.i19, %middle.block165
  %.lcssa62 = phi ptr [ %i.bw, %middle.block165 ], [ %i.ct, %.lr.ph.i.i19 ] ; 2 uses
  %i.cw = add nsw i32 %.013.i17, -1024            ; 2 uses
  %i.cx = icmp sgt i32 %.013.i17, 2047
  br i1 %i.cx, label %vector.memcheck144, label %._crit_edge.i9, !llvm.loop !1

._crit_edge.i9:                                   ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23, %bb.c
  %.promoted.i10 = phi ptr [ %.promoted10.i8, %bb.c ], [ %.lcssa62, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 8 uses
  %.0.lcssa.i11 = phi i32 [ %i.bt, %bb.c ], [ %i.cw, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i23 ] ; 7 uses
  %i.cy = icmp sgt i32 %.0.lcssa.i11, 0
  br i1 %i.cy, label %.lr.ph.i5.i12.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24

.lr.ph.i5.i12.preheader:                          ; preds = %._crit_edge.i9
  %i.cz = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %min.iters.check182 = icmp ult i32 %.0.lcssa.i11, 26
  br i1 %min.iters.check182, label %.lr.ph.i5.i12.preheader297, label %vector.memcheck183

vector.memcheck183:                               ; preds = %.lr.ph.i5.i12.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.db = zext nneg i32 %.0.lcssa.i11 to i64      ; 2 uses
  %i.dc = getelementptr i8, ptr %i.b, i64 %i.db   ; 2 uses
  %bound0184 = icmp ult ptr %0, %i.dc
  %bound0184.a = icmp ult ptr %i.b, %i.da
  %found.conflict186 = and i1 %bound0184, %bound0184.a
  %4 = getelementptr i8, ptr %.promoted.i10, i64 %i.db ; 2 uses
  %bound0187 = icmp ult ptr %0, %4
  %bound1188 = icmp ult ptr %.promoted.i10, %i.da
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %found.conflict186, %found.conflict189
  %bound0191 = icmp ult ptr %i.b, %4
  %bound1192 = icmp ult ptr %.promoted.i10, %i.dc
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  br i1 %conflict.rdx194, label %.lr.ph.i5.i12.preheader297, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck183
  %n.vec196 = and i64 %i.cz, 2147483644           ; 5 uses
  %i.dd = getelementptr i8, ptr %.promoted.i10, i64 %n.vec196
  %i.de = trunc nuw nsw i64 %n.vec196 to i32
  %i.df = sub nsw i32 %.0.lcssa.i11, %i.de
  %i.dg = getelementptr i8, ptr %i.b, i64 %n.vec196
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next204, %vector.body197 ] ; 4 uses
  %next.gep199 = getelementptr i8, ptr %.promoted.i10, i64 %index198 ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.b, i64 %index198 ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep199, i64 2
  %wide.load202 = load <2 x i8>, ptr %next.gep199, align 1, !tbaa !42, !alias.scope !385
  %wide.load203 = load <2 x i8>, ptr %i.dh, align 1, !tbaa !42, !alias.scope !385
  %i.di = getelementptr i8, ptr %next.gep201, i64 2
  store <2 x i8> %wide.load202, ptr %next.gep201, align 4, !tbaa !42, !alias.scope !386, !noalias !385
  store <2 x i8> %wide.load203, ptr %i.di, align 2, !tbaa !42, !alias.scope !386, !noalias !385
  %index.next204 = add nuw i64 %index198, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next204, %n.vec196
  br i1 %i.dj, label %middle.block205, label %vector.body197, !llvm.loop !356

middle.block205:                                  ; preds = %vector.body197
  %i.dk = getelementptr i8, ptr %.promoted.i10, i64 %index198
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  store ptr %i.dl, ptr %0, align 8, !tbaa !41, !alias.scope !387, !noalias !388
  %cmp.n206 = icmp eq i64 %n.vec196, %i.cz
  br i1 %cmp.n206, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12.preheader297

.lr.ph.i5.i12.preheader297:                       ; preds = %vector.memcheck183, %.lr.ph.i5.i12.preheader, %middle.block205
  %.ph298 = phi ptr [ %.promoted.i10, %vector.memcheck183 ], [ %.promoted.i10, %.lr.ph.i5.i12.preheader ], [ %i.dd, %middle.block205 ] ; 2 uses
  %.05.i6.i13.ph = phi i32 [ %.0.lcssa.i11, %vector.memcheck183 ], [ %.0.lcssa.i11, %.lr.ph.i5.i12.preheader ], [ %i.df, %middle.block205 ] ; 4 uses
  %.024.i7.i14.ph = phi ptr [ %i.b, %vector.memcheck183 ], [ %i.b, %.lr.ph.i5.i12.preheader ], [ %i.dg, %middle.block205 ] ; 2 uses
  %i.dm = add nsw i32 %.05.i6.i13.ph, -1
  %xtraiter305 = and i32 %.05.i6.i13.ph, 3        ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol

.lr.ph.i5.i12.prol:                               ; preds = %.lr.ph.i5.i12.preheader297, %.lr.ph.i5.i12.prol
  %i.dn = phi ptr [ %i.dp, %.lr.ph.i5.i12.prol ], [ %.ph298, %.lr.ph.i5.i12.preheader297 ] ; 2 uses
  %.05.i6.i13.prol = phi i32 [ %i.do, %.lr.ph.i5.i12.prol ], [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader297 ]
  %.024.i7.i14.prol = phi ptr [ %i.dr, %.lr.ph.i5.i12.prol ], [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader297 ] ; 2 uses
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.lr.ph.i5.i12.prol ], [ 0, %.lr.ph.i5.i12.preheader297 ]
  %i.do = add nsw i32 %.05.i6.i13.prol, -1        ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 3 uses
  store ptr %i.dp, ptr %0, align 8, !tbaa !41
  %i.dq = load i8, ptr %i.dn, align 1, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %.024.i7.i14.prol, i64 1 ; 2 uses
  store i8 %i.dq, ptr %.024.i7.i14.prol, align 1, !tbaa !42
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.i5.i12.prol.loopexit, label %.lr.ph.i5.i12.prol, !llvm.loop !358

.lr.ph.i5.i12.prol.loopexit:                      ; preds = %.lr.ph.i5.i12.prol, %.lr.ph.i5.i12.preheader297
  %.unr308 = phi ptr [ %.ph298, %.lr.ph.i5.i12.preheader297 ], [ %i.dp, %.lr.ph.i5.i12.prol ]
  %.05.i6.i13.unr = phi i32 [ %.05.i6.i13.ph, %.lr.ph.i5.i12.preheader297 ], [ %i.do, %.lr.ph.i5.i12.prol ]
  %.024.i7.i14.unr = phi ptr [ %.024.i7.i14.ph, %.lr.ph.i5.i12.preheader297 ], [ %i.dr, %.lr.ph.i5.i12.prol ]
  %i.ds = icmp ult i32 %i.dm, 3
  br i1 %i.ds, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12

.lr.ph.i5.i12:                                    ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12
  %i.dt = phi ptr [ %i.ee, %.lr.ph.i5.i12 ], [ %.unr308, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %.05.i6.i13 = phi i32 [ %i.ed, %.lr.ph.i5.i12 ], [ %.05.i6.i13.unr, %.lr.ph.i5.i12.prol.loopexit ]
  %.024.i7.i14 = phi ptr [ %i.eg, %.lr.ph.i5.i12 ], [ %.024.i7.i14.unr, %.lr.ph.i5.i12.prol.loopexit ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.du, ptr %0, align 8, !tbaa !41
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !42
  %i.dw = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 1
  store i8 %i.dv, ptr %.024.i7.i14, align 1, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 2 uses
  store ptr %i.dx, ptr %0, align 8, !tbaa !41
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !42
  %i.dz = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 2
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 3 ; 2 uses
  store ptr %i.ea, ptr %0, align 8, !tbaa !41
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 3
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !42
  %i.ed = add nsw i32 %.05.i6.i13, -4             ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !41
  %i.ef = load i8, ptr %i.ea, align 1, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %.024.i7.i14, i64 4
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !42
  %.not.i8.i15.3 = icmp eq i32 %i.ed, 0
  br i1 %.not.i8.i15.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, label %.lr.ph.i5.i12, !llvm.loop !359

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24: ; preds = %.lr.ph.i5.i12.prol.loopexit, %.lr.ph.i5.i12, %middle.block205, %._crit_edge.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.eh = trunc i64 %2 to i32
  %i.ei = shl i32 %i.eh, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.promoted10.i25 = load ptr, ptr %0, align 8    ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1023
  br i1 %i.ej, label %.lr.ph.i.preheader.i33.preheader, label %._crit_edge.i26

.lr.ph.i.preheader.i33.preheader:                 ; preds = %bb.d
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %scevgep75 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %0, %scevgep
  %bound1 = icmp ult ptr %i.a, %scevgep75
  %found.conflict = and i1 %bound0, %bound1
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40, %.lr.ph.i.preheader.i33.preheader
  %.013.i34 = phi i32 [ %i.fl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %i.ei, %.lr.ph.i.preheader.i33.preheader ] ; 2 uses
  %.promoted1112.i35 = phi ptr [ %.lcssa64, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40 ], [ %.promoted10.i25, %.lr.ph.i.preheader.i33.preheader ] ; 10 uses
  %i.ek = getelementptr i8, ptr %.promoted1112.i35, i64 1024 ; 2 uses
  %bound076 = icmp ult ptr %0, %i.ek
  %bound177 = icmp ult ptr %.promoted1112.i35, %scevgep75
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  %bound079 = icmp ult ptr %i.a, %i.ek
  %bound180 = icmp ult ptr %.promoted1112.i35, %scevgep
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx, %found.conflict81
  br i1 %conflict.rdx82, label %.lr.ph.i.i36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.el = getelementptr i8, ptr %.promoted1112.i35, i64 1024
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %.promoted1112.i35, i64 %index ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !42, !alias.scope !389
  %wide.load85 = load <2 x i8>, ptr %i.em, align 1, !tbaa !42, !alias.scope !389
  %i.en = getelementptr i8, ptr %next.gep84, i64 2
  store <2 x i8> %wide.load, ptr %next.gep84, align 16, !tbaa !42, !alias.scope !390, !noalias !389
  store <2 x i8> %wide.load85, ptr %i.en, align 2, !tbaa !42, !alias.scope !390, !noalias !389
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next ; 2 uses
  %next.gep84.1 = getelementptr i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep.1, i64 2
  %wide.load.1 = load <2 x i8>, ptr %next.gep.1, align 1, !tbaa !42, !alias.scope !389
  %wide.load85.1 = load <2 x i8>, ptr %i.eo, align 1, !tbaa !42, !alias.scope !389
  %i.ep = getelementptr i8, ptr %next.gep84.1, i64 2
  store <2 x i8> %wide.load.1, ptr %next.gep84.1, align 4, !tbaa !42, !alias.scope !390, !noalias !389
  store <2 x i8> %wide.load85.1, ptr %i.ep, align 2, !tbaa !42, !alias.scope !390, !noalias !389
  %index.next.1 = or disjoint i64 %index, 8       ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.1 ; 2 uses
  %next.gep84.2 = getelementptr i8, ptr %i.a, i64 %index.next.1 ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep.2, i64 2
  %wide.load.2 = load <2 x i8>, ptr %next.gep.2, align 1, !tbaa !42, !alias.scope !389
  %wide.load85.2 = load <2 x i8>, ptr %i.eq, align 1, !tbaa !42, !alias.scope !389
  %i.er = getelementptr i8, ptr %next.gep84.2, i64 2
  store <2 x i8> %wide.load.2, ptr %next.gep84.2, align 8, !tbaa !42, !alias.scope !390, !noalias !389
  store <2 x i8> %wide.load85.2, ptr %i.er, align 2, !tbaa !42, !alias.scope !390, !noalias !389
  %index.next.2 = or disjoint i64 %index, 12      ; 3 uses
  %next.gep.3 = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.2 ; 2 uses
  %next.gep84.3 = getelementptr i8, ptr %i.a, i64 %index.next.2 ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep.3, i64 2
  %wide.load.3 = load <2 x i8>, ptr %next.gep.3, align 1, !tbaa !42, !alias.scope !389
  %wide.load85.3 = load <2 x i8>, ptr %i.es, align 1, !tbaa !42, !alias.scope !389
  %i.et = getelementptr i8, ptr %next.gep84.3, i64 2
  store <2 x i8> %wide.load.3, ptr %next.gep84.3, align 4, !tbaa !42, !alias.scope !390, !noalias !389
  store <2 x i8> %wide.load85.3, ptr %i.et, align 2, !tbaa !42, !alias.scope !390, !noalias !389
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.eu = icmp eq i64 %index.next.3, 1024
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %vector.body
  %i.ev = getelementptr i8, ptr %.promoted1112.i35, i64 %index.next.2
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  store ptr %i.ew, ptr %0, align 8, !tbaa !41, !alias.scope !391, !noalias !392
  br label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40

.lr.ph.i.i36:                                     ; preds = %vector.memcheck, %.lr.ph.i.i36
  %i.ex = phi ptr [ %i.fi, %.lr.ph.i.i36 ], [ %.promoted1112.i35, %vector.memcheck ] ; 5 uses
  %.05.i.i37 = phi i32 [ %i.fh, %.lr.ph.i.i36 ], [ 1024, %vector.memcheck ]
  %.024.i.i38 = phi ptr [ %i.fk, %.lr.ph.i.i36 ], [ %i.a, %vector.memcheck ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 2 uses
  store ptr %i.ey, ptr %0, align 8, !tbaa !41
  %i.ez = load i8, ptr %i.ex, align 1, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 1
  store i8 %i.ez, ptr %.024.i.i38, align 1, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 2 ; 2 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !41
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 2
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !42
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 3 ; 2 uses
  store ptr %i.fe, ptr %0, align 8, !tbaa !41
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 3
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !42
  %i.fh = add nsw i32 %.05.i.i37, -4              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 3 uses
  store ptr %i.fi, ptr %0, align 8, !tbaa !41
  %i.fj = load i8, ptr %i.fe, align 1, !tbaa !42
  %i.fk = getelementptr inbounds nuw i8, ptr %.024.i.i38, i64 4
  store i8 %i.fj, ptr %i.fg, align 1, !tbaa !42
  %.not.i.i39.3 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i39.3, label %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40, label %.lr.ph.i.i36, !llvm.loop !365

_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40: ; preds = %.lr.ph.i.i36, %middle.block
  %.lcssa64 = phi ptr [ %i.el, %middle.block ], [ %i.fi, %.lr.ph.i.i36 ] ; 2 uses
  %i.fl = add nsw i32 %.013.i34, -1024            ; 2 uses
  %i.fm = icmp sgt i32 %.013.i34, 2047
  br i1 %i.fm, label %vector.memcheck, label %._crit_edge.i26, !llvm.loop !1

._crit_edge.i26:                                  ; preds = %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40, %bb.d
  %.promoted.i27 = phi ptr [ %.promoted10.i25, %bb.d ], [ %.lcssa64, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 8 uses
  %.0.lcssa.i28 = phi i32 [ %i.ei, %bb.d ], [ %i.fl, %_ZN7Imf_3_49CharPtrIO9readCharsERPKcPci.exit.i40 ] ; 7 uses
  %i.fn = icmp sgt i32 %.0.lcssa.i28, 0
  br i1 %i.fn, label %.lr.ph.i5.i29.preheader, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41

.lr.ph.i5.i29.preheader:                          ; preds = %._crit_edge.i26
  %i.fo = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i28, 26
  br i1 %min.iters.check, label %.lr.ph.i5.i29.preheader301, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i5.i29.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fq = zext nneg i32 %.0.lcssa.i28 to i64      ; 2 uses
  %i.fr = getelementptr i8, ptr %i.a, i64 %i.fq   ; 2 uses
  %bound0103 = icmp ult ptr %0, %i.fr
  %bound0103.a = icmp ult ptr %i.a, %i.fp
  %found.conflict105 = and i1 %bound0103, %bound0103.a
  %5 = getelementptr i8, ptr %.promoted.i27, i64 %i.fq ; 2 uses
  %bound0106 = icmp ult ptr %0, %5
  %bound1107 = icmp ult ptr %.promoted.i27, %i.fp
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %found.conflict105, %found.conflict108
  %bound0110 = icmp ult ptr %i.a, %5
  %bound1111 = icmp ult ptr %.promoted.i27, %i.fr
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  br i1 %conflict.rdx113, label %.lr.ph.i5.i29.preheader301, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck102
  %n.vec = and i64 %i.fo, 2147483644              ; 5 uses
  %i.fs = getelementptr i8, ptr %.promoted.i27, i64 %n.vec
  %i.ft = trunc nuw nsw i64 %n.vec to i32
  %i.fu = sub nsw i32 %.0.lcssa.i28, %i.ft
  %i.fv = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph114
  %index116 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body115 ] ; 4 uses
  %next.gep117 = getelementptr i8, ptr %.promoted.i27, i64 %index116 ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.a, i64 %index116 ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep117, i64 2
  %wide.load120 = load <2 x i8>, ptr %next.gep117, align 1, !tbaa !42, !alias.scope !393
  %wide.load121 = load <2 x i8>, ptr %i.fw, align 1, !tbaa !42, !alias.scope !393
  %i.fx = getelementptr i8, ptr %next.gep119, i64 2
  store <2 x i8> %wide.load120, ptr %next.gep119, align 4, !tbaa !42, !alias.scope !394, !noalias !393
  store <2 x i8> %wide.load121, ptr %i.fx, align 2, !tbaa !42, !alias.scope !394, !noalias !393
  %index.next122 = add nuw i64 %index116, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next122, %n.vec
  br i1 %i.fy, label %middle.block123, label %vector.body115, !llvm.loop !369

middle.block123:                                  ; preds = %vector.body115
  %i.fz = getelementptr i8, ptr %.promoted.i27, i64 %index116
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  store ptr %i.ga, ptr %0, align 8, !tbaa !41, !alias.scope !395, !noalias !396
  %cmp.n = icmp eq i64 %n.vec, %i.fo
  br i1 %cmp.n, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29.preheader301

.lr.ph.i5.i29.preheader301:                       ; preds = %vector.memcheck102, %.lr.ph.i5.i29.preheader, %middle.block123
  %.ph302 = phi ptr [ %.promoted.i27, %vector.memcheck102 ], [ %.promoted.i27, %.lr.ph.i5.i29.preheader ], [ %i.fs, %middle.block123 ] ; 2 uses
  %.05.i6.i30.ph = phi i32 [ %.0.lcssa.i28, %vector.memcheck102 ], [ %.0.lcssa.i28, %.lr.ph.i5.i29.preheader ], [ %i.fu, %middle.block123 ] ; 4 uses
  %.024.i7.i31.ph = phi ptr [ %i.a, %vector.memcheck102 ], [ %i.a, %.lr.ph.i5.i29.preheader ], [ %i.fv, %middle.block123 ] ; 2 uses
  %i.gb = add nsw i32 %.05.i6.i30.ph, -1
  %xtraiter = and i32 %.05.i6.i30.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol

.lr.ph.i5.i29.prol:                               ; preds = %.lr.ph.i5.i29.preheader301, %.lr.ph.i5.i29.prol
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i5.i29.prol ], [ %.ph302, %.lr.ph.i5.i29.preheader301 ] ; 2 uses
  %.05.i6.i30.prol = phi i32 [ %i.gd, %.lr.ph.i5.i29.prol ], [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader301 ]
  %.024.i7.i31.prol = phi ptr [ %i.gg, %.lr.ph.i5.i29.prol ], [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader301 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i5.i29.prol ], [ 0, %.lr.ph.i5.i29.preheader301 ]
  %i.gd = add nsw i32 %.05.i6.i30.prol, -1        ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 3 uses
  store ptr %i.ge, ptr %0, align 8, !tbaa !41
  %i.gf = load i8, ptr %i.gc, align 1, !tbaa !42
  %i.gg = getelementptr inbounds nuw i8, ptr %.024.i7.i31.prol, i64 1 ; 2 uses
  store i8 %i.gf, ptr %.024.i7.i31.prol, align 1, !tbaa !42
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i5.i29.prol.loopexit, label %.lr.ph.i5.i29.prol, !llvm.loop !371

.lr.ph.i5.i29.prol.loopexit:                      ; preds = %.lr.ph.i5.i29.prol, %.lr.ph.i5.i29.preheader301
  %.unr = phi ptr [ %.ph302, %.lr.ph.i5.i29.preheader301 ], [ %i.ge, %.lr.ph.i5.i29.prol ]
  %.05.i6.i30.unr = phi i32 [ %.05.i6.i30.ph, %.lr.ph.i5.i29.preheader301 ], [ %i.gd, %.lr.ph.i5.i29.prol ]
  %.024.i7.i31.unr = phi ptr [ %.024.i7.i31.ph, %.lr.ph.i5.i29.preheader301 ], [ %i.gg, %.lr.ph.i5.i29.prol ]
  %i.gh = icmp ult i32 %i.gb, 3
  br i1 %i.gh, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29

.lr.ph.i5.i29:                                    ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29
  %i.gi = phi ptr [ %i.gt, %.lr.ph.i5.i29 ], [ %.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %.05.i6.i30 = phi i32 [ %i.gs, %.lr.ph.i5.i29 ], [ %.05.i6.i30.unr, %.lr.ph.i5.i29.prol.loopexit ]
  %.024.i7.i31 = phi ptr [ %i.gv, %.lr.ph.i5.i29 ], [ %.024.i7.i31.unr, %.lr.ph.i5.i29.prol.loopexit ] ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1 ; 2 uses
  store ptr %i.gj, ptr %0, align 8, !tbaa !41
  %i.gk = load i8, ptr %i.gi, align 1, !tbaa !42
  %i.gl = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 1
  store i8 %i.gk, ptr %.024.i7.i31, align 1, !tbaa !42
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 2 uses
  store ptr %i.gm, ptr %0, align 8, !tbaa !41
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !42
  %i.go = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 2
  store i8 %i.gn, ptr %i.gl, align 1, !tbaa !42
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 3 ; 2 uses
  store ptr %i.gp, ptr %0, align 8, !tbaa !41
  %i.gq = load i8, ptr %i.gm, align 1, !tbaa !42
  %i.gr = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 3
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !42
  %i.gs = add nsw i32 %.05.i6.i30, -4             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store ptr %i.gt, ptr %0, align 8, !tbaa !41
  %i.gu = load i8, ptr %i.gp, align 1, !tbaa !42
  %i.gv = getelementptr inbounds nuw i8, ptr %.024.i7.i31, i64 4
  store i8 %i.gu, ptr %i.gr, align 1, !tbaa !42
  %.not.i8.i32.3 = icmp eq i32 %i.gs, 0
  br i1 %.not.i8.i32.3, label %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, label %.lr.ph.i5.i29, !llvm.loop !372

_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41: ; preds = %.lr.ph.i5.i29.prol.loopexit, %.lr.ph.i5.i29, %middle.block123, %._crit_edge.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.gw = tail call ptr @__cxa_allocate_exception(i64 72) #19 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gw, ptr noundef nonnull @.str.9)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.gx = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gw) #19
  resume { ptr, i32 } %i.gx

bb.h:                                             ; preds = %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit41, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit24, %_ZN7Imf_3_43Xdr4skipINS_9CharPtrIOEPKcEEvRT0_i.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414convertInPlaceERPcRPKcNS_9PixelTypeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  br label %.lr.ph

.preheader29:                                     ; preds = %bb.a
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.preheader29
  %.pre44 = load ptr, ptr %1, align 8, !tbaa !41  ; 2 uses
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
  %.pre45 = load ptr, ptr %1, align 8, !tbaa !41
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %i.b = phi ptr [ %i.l, %.lr.ph37 ], [ %.pre45, %.lr.ph37.preheader ]
  %.036 = phi i64 [ %i.m, %.lr.ph37 ], [ 0, %.lr.ph37.preheader ]
  %.sroa.06.0.copyload = load i32, ptr %i.b, align 1, !tbaa !42 ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.06.0.copyload to i8
  %.sroa.4.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 8
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 16
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.6.0.extract.shift.i = lshr i32 %.sroa.06.0.copyload, 24
  %.sroa.6.0.extract.trunc.i = trunc nuw i32 %.sroa.6.0.extract.shift.i to i8
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %0, align 8, !tbaa !41
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.c, align 1, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !41
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.e, align 1, !tbaa !42
  %i.g = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !41
  store i8 %.sroa.5.0.extract.trunc.i, ptr %i.g, align 1, !tbaa !42
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %0, align 8, !tbaa !41
  store i8 %.sroa.6.0.extract.trunc.i, ptr %i.i, align 1, !tbaa !42
  %i.k = load ptr, ptr %1, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !41
  %i.m = add nuw i64 %.036, 1                     ; 2 uses
  %exitcond43.not = icmp eq i64 %i.m, %3
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph37, !llvm.loop !397

.lr.ph35:                                         ; preds = %.lr.ph35, %.lr.ph35.preheader.new
  %i.n = phi ptr [ %.pre44, %.lr.ph35.preheader.new ], [ %i.z, %.lr.ph35 ]
  %niter = phi i64 [ 0, %.lr.ph35.preheader.new ], [ %niter.next.1, %.lr.ph35 ]
  %.sroa.03.0.copyload = load i16, ptr %i.n, align 2, !tbaa !37 ; 2 uses
  %.sroa.0.0.extract.trunc.i24 = trunc i16 %.sroa.03.0.copyload to i8
  %.sroa.4.0.extract.shift.i25 = lshr i16 %.sroa.03.0.copyload, 8
end_hunk_1
