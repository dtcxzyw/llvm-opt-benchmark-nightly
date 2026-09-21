Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrevc3?download=true
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dtrevc3_:bb.a
  %invariant.gep1997 = getelementptr [8 x i8], ptr %i.aa, i64 %i.bjh ; 4 uses
  %invariant.gep1999 = getelementptr [8 x i8], ptr %i.ah, i64 %i.bjj ; 4 uses
  %invariant.gep2001 = getelementptr [8 x i8], ptr %i.aa, i64 %i.bji ; 4 uses
  %invariant.gep2003 = getelementptr [8 x i8], ptr %i.ah, i64 %i.bjk ; 4 uses
  %i.bjm = add i32 %.sink2049, -2
  %i.bjn = sub i32 %i.bjm, %storemerge13731675    ; 2 uses
  %i.bjo = zext i32 %i.bjn to i64
  %i.bjp = add nuw nsw i64 %i.bjo, 1              ; 2 uses
  %min.iters.check2268 = icmp ugt i32 %i.bjn, 22
  %or.cond2288 = select i1 %min.iters.check2268, i1 %ident.check2214.not, i1 false
  br i1 %or.cond2288, label %vector.memcheck2215, label %scalar.ph2267.preheader

vector.memcheck2215:                              ; preds = %.lr.ph1602
  %i.bjq = add nsw i64 %i.bjj, %i.bjg
  %i.bjr = shl nsw i64 %i.bjq, 3                  ; 2 uses
  %scevgep2217 = getelementptr i8, ptr %scevgep2216, i64 %i.bjr ; 5 uses
  %i.bjs = add i32 %.sink2049, -2
  %i.bjt = sub i32 %i.bjs, %storemerge13731675
  %i.bju = zext i32 %i.bjt to i64
  %i.bjv = shl nuw nsw i64 %i.bju, 3              ; 4 uses
  %i.bjw = getelementptr i8, ptr %12, i64 %i.bjr
  %scevgep2218 = getelementptr i8, ptr %i.bjw, i64 %i.bjv ; 5 uses
  %i.bjx = add nsw i64 %i.bjk, %i.bjg
  %i.bjy = shl nsw i64 %i.bjx, 3                  ; 2 uses
  %scevgep2220 = getelementptr i8, ptr %scevgep2219, i64 %i.bjy ; 5 uses
  %i.bjz = getelementptr i8, ptr %12, i64 %i.bjy
  %scevgep2221 = getelementptr i8, ptr %i.bjz, i64 %i.bjv ; 5 uses
  %i.bka = shl nsw i64 %i.bjb, 3
  %scevgep2222 = getelementptr i8, ptr %12, i64 %i.bka ; 2 uses
  %i.bkb = add nsw i64 %i.bjg, %i.bji
  %i.bkc = shl nsw i64 %i.bkb, 3                  ; 2 uses
  %scevgep2224 = getelementptr i8, ptr %scevgep2223, i64 %i.bkc ; 2 uses
  %i.bkd = getelementptr i8, ptr %scevgep2225, i64 %i.bkc
  %scevgep2226 = getelementptr i8, ptr %i.bkd, i64 %i.bjv ; 2 uses
  %i.bke = add nsw i64 %i.bjh, %i.bjg
  %i.bkf = shl nsw i64 %i.bke, 3                  ; 2 uses
  %scevgep2228 = getelementptr i8, ptr %scevgep2227, i64 %i.bkf ; 2 uses
  %i.bkg = getelementptr i8, ptr %scevgep2229, i64 %i.bkf
  %scevgep2230 = getelementptr i8, ptr %i.bkg, i64 %i.bjv ; 2 uses
  %i.bkh = shl nsw i64 %i.bje, 3
  %scevgep2231 = getelementptr i8, ptr %12, i64 %i.bkh ; 2 uses
  %bound02232 = icmp ult ptr %scevgep2217, %scevgep2221
  %bound12233 = icmp ult ptr %scevgep2220, %scevgep2218
  %found.conflict2234 = and i1 %bound02232, %bound12233
  %bound02235 = icmp ult ptr %scevgep2217, %scevgep2222
  %bound12236 = icmp ult ptr %i.bjc, %scevgep2218
  %found.conflict2237 = and i1 %bound02235, %bound12236
  %conflict.rdx2238 = or i1 %found.conflict2234, %found.conflict2237
  %bound02239 = icmp ult ptr %scevgep2217, %scevgep2226
  %bound12240 = icmp ult ptr %scevgep2224, %scevgep2218
  %found.conflict2241 = and i1 %bound02239, %bound12240
  %conflict.rdx2242 = or i1 %conflict.rdx2238, %found.conflict2241
  %bound02243 = icmp ult ptr %scevgep2217, %scevgep2230
  %bound12244 = icmp ult ptr %scevgep2228, %scevgep2218
  %found.conflict2245 = and i1 %bound02243, %bound12244
  %conflict.rdx2246 = or i1 %conflict.rdx2242, %found.conflict2245
  %bound02247 = icmp ult ptr %scevgep2217, %scevgep2231
  %bound12248 = icmp ult ptr %i.bjf, %scevgep2218
  %found.conflict2249 = and i1 %bound02247, %bound12248
  %conflict.rdx2250 = or i1 %conflict.rdx2246, %found.conflict2249
  %bound02251 = icmp ult ptr %scevgep2220, %scevgep2222
  %bound12252 = icmp ult ptr %i.bjc, %scevgep2221
  %found.conflict2253 = and i1 %bound02251, %bound12252
  %conflict.rdx2254 = or i1 %conflict.rdx2250, %found.conflict2253
  %bound02255 = icmp ult ptr %scevgep2220, %scevgep2226
  %bound12256 = icmp ult ptr %scevgep2224, %scevgep2221
  %found.conflict2257 = and i1 %bound02255, %bound12256
  %conflict.rdx2258 = or i1 %conflict.rdx2254, %found.conflict2257
  %bound02259 = icmp ult ptr %scevgep2220, %scevgep2230
  %bound12260 = icmp ult ptr %scevgep2228, %scevgep2221
  %found.conflict2261 = and i1 %bound02259, %bound12260
  %conflict.rdx2262 = or i1 %conflict.rdx2258, %found.conflict2261
  %bound02263 = icmp ult ptr %scevgep2220, %scevgep2231
  %bound12264 = icmp ult ptr %i.bjf, %scevgep2221
  %found.conflict2265 = and i1 %bound02263, %bound12264
  %conflict.rdx2266 = or i1 %conflict.rdx2262, %found.conflict2265
  br i1 %conflict.rdx2266, label %scalar.ph2267.preheader, label %vector.ph2269

vector.ph2269:                                    ; preds = %vector.memcheck2215
  %n.vec2270 = and i64 %i.bjp, 8589934584         ; 3 uses
  %i.bki = add nsw i64 %n.vec2270, %i.bjg
  %i.bkj = load double, ptr %i.bjc, align 8, !tbaa !74, !alias.scope !84
  %.scalar2290 = fneg double %i.bkj
  %i.bkk = insertelement <4 x double> poison, double %.scalar2290, i64 0
  %i.bkl = shufflevector <4 x double> %i.bkk, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bkm = load double, ptr %i.bjf, align 8, !tbaa !74, !alias.scope !85
  %.scalar2291 = fneg double %i.bkm
  %i.bkn = insertelement <4 x double> poison, double %.scalar2291, i64 0
  %i.bko = shufflevector <4 x double> %i.bkn, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2275

vector.body2275:                                  ; preds = %vector.body2275, %vector.ph2269
  %index2276 = phi i64 [ 0, %vector.ph2269 ], [ %index.next2281, %vector.body2275 ] ; 2 uses
  %i.bkp = add i64 %index2276, %i.bjg             ; 4 uses
  %i.bkq = getelementptr [8 x i8], ptr %invariant.gep1997, i64 %i.bkp ; 2 uses
  %i.bkr = getelementptr i8, ptr %i.bkq, i64 32
  %wide.load2277 = load <4 x double>, ptr %i.bkq, align 8, !tbaa !74, !alias.scope !86
  %wide.load2278 = load <4 x double>, ptr %i.bkr, align 8, !tbaa !74, !alias.scope !86
  %i.bks = fmul <4 x double> %wide.load2277, %i.bkl
  %i.bkt = fmul <4 x double> %wide.load2278, %i.bkl
  %i.bku = getelementptr [8 x i8], ptr %invariant.gep1999, i64 %i.bkp ; 2 uses
  %i.bkv = getelementptr i8, ptr %i.bku, i64 32
  store <4 x double> %i.bks, ptr %i.bku, align 8, !tbaa !74, !alias.scope !87, !noalias !88
  store <4 x double> %i.bkt, ptr %i.bkv, align 8, !tbaa !74, !alias.scope !87, !noalias !88
  %i.bkw = getelementptr [8 x i8], ptr %invariant.gep2001, i64 %i.bkp ; 2 uses
  %i.bkx = getelementptr i8, ptr %i.bkw, i64 32
  %wide.load2279 = load <4 x double>, ptr %i.bkw, align 8, !tbaa !74, !alias.scope !89
  %wide.load2280 = load <4 x double>, ptr %i.bkx, align 8, !tbaa !74, !alias.scope !89
  %i.bky = fmul <4 x double> %wide.load2279, %i.bko
  %i.bkz = fmul <4 x double> %wide.load2280, %i.bko
  %i.bla = getelementptr [8 x i8], ptr %invariant.gep2003, i64 %i.bkp ; 2 uses
  %i.blb = getelementptr i8, ptr %i.bla, i64 32
  store <4 x double> %i.bky, ptr %i.bla, align 8, !tbaa !74, !alias.scope !90, !noalias !91
  store <4 x double> %i.bkz, ptr %i.blb, align 8, !tbaa !74, !alias.scope !90, !noalias !91
  %index.next2281 = add nuw i64 %index2276, 8     ; 2 uses
  %i.blc = icmp eq i64 %index.next2281, %n.vec2270
  br i1 %i.blc, label %middle.block2282, label %vector.body2275, !llvm.loop !52

middle.block2282:                                 ; preds = %vector.body2275
  %cmp.n2283 = icmp eq i64 %i.bjp, %n.vec2270
  br i1 %cmp.n2283, label %.lr.ph1610.preheader, label %scalar.ph2267.preheader

scalar.ph2267.preheader:                          ; preds = %vector.memcheck2215, %.lr.ph1602, %middle.block2282
  %indvars.iv1772.ph = phi i64 [ %i.bjg, %vector.memcheck2215 ], [ %i.bjg, %.lr.ph1602 ], [ %i.bki, %middle.block2282 ] ; 6 uses
  %i.bld = trunc i64 %indvars.iv1772.ph to i32    ; 2 uses
  %i.ble = add i32 %.sink2049, %i.bld
  %i.blf = and i32 %i.ble, 1
  %lcmp.mod2348.not.not = icmp eq i32 %i.blf, 0
  br i1 %lcmp.mod2348.not.not, label %scalar.ph2267.prol, label %scalar.ph2267.prol.loopexit

scalar.ph2267.prol:                               ; preds = %scalar.ph2267.preheader
  %i.blg = load double, ptr %i.bjc, align 8, !tbaa !74
  %i.blh = fneg double %i.blg
  %i.bli = mul nsw i64 %indvars.iv1772.ph, %i.asu ; 2 uses
  %gep1998.prol = getelementptr [8 x i8], ptr %invariant.gep1997, i64 %i.bli
  %i.blj = load double, ptr %gep1998.prol, align 8, !tbaa !74
  %i.blk = fmul double %i.blj, %i.blh
  %gep2000.prol = getelementptr [8 x i8], ptr %invariant.gep1999, i64 %indvars.iv1772.ph
  store double %i.blk, ptr %gep2000.prol, align 8, !tbaa !74
  %i.bll = load double, ptr %i.bjf, align 8, !tbaa !74
  %i.blm = fneg double %i.bll
  %gep2002.prol = getelementptr [8 x i8], ptr %invariant.gep2001, i64 %i.bli
  %i.bln = load double, ptr %gep2002.prol, align 8, !tbaa !74
  %i.blo = fmul double %i.bln, %i.blm
  %gep2004.prol = getelementptr [8 x i8], ptr %invariant.gep2003, i64 %indvars.iv1772.ph
  store double %i.blo, ptr %gep2004.prol, align 8, !tbaa !74
  %indvars.iv.next1773.prol = add nsw i64 %indvars.iv1772.ph, 1
  br label %scalar.ph2267.prol.loopexit

scalar.ph2267.prol.loopexit:                      ; preds = %scalar.ph2267.prol, %scalar.ph2267.preheader
  %indvars.iv1772.unr = phi i64 [ %indvars.iv1772.ph, %scalar.ph2267.preheader ], [ %indvars.iv.next1773.prol, %scalar.ph2267.prol ]
  %i.blp = icmp eq i32 %.sink2049, %i.bld
  br i1 %i.blp, label %.lr.ph1610.preheader, label %scalar.ph2267

scalar.ph2267:                                    ; preds = %scalar.ph2267.prol.loopexit, %scalar.ph2267
  %indvars.iv1772 = phi i64 [ %indvars.iv.next1773.1, %scalar.ph2267 ], [ %indvars.iv1772.unr, %scalar.ph2267.prol.loopexit ] ; 5 uses
  %i.blq = load double, ptr %i.bjc, align 8, !tbaa !74
  %i.blr = fneg double %i.blq
  %i.bls = mul nsw i64 %indvars.iv1772, %i.asu    ; 2 uses
  %gep1998 = getelementptr [8 x i8], ptr %invariant.gep1997, i64 %i.bls
  %i.blt = load double, ptr %gep1998, align 8, !tbaa !74
  %i.blu = fmul double %i.blt, %i.blr
  %gep2000 = getelementptr [8 x i8], ptr %invariant.gep1999, i64 %indvars.iv1772
  store double %i.blu, ptr %gep2000, align 8, !tbaa !74
  %i.blv = load double, ptr %i.bjf, align 8, !tbaa !74
  %i.blw = fneg double %i.blv
  %gep2002 = getelementptr [8 x i8], ptr %invariant.gep2001, i64 %i.bls
  %i.blx = load double, ptr %gep2002, align 8, !tbaa !74
  %i.bly = fmul double %i.blx, %i.blw
  %gep2004 = getelementptr [8 x i8], ptr %invariant.gep2003, i64 %indvars.iv1772
  store double %i.bly, ptr %gep2004, align 8, !tbaa !74
  %indvars.iv.next1773 = add nsw i64 %indvars.iv1772, 1 ; 3 uses
  %i.blz = load double, ptr %i.bjc, align 8, !tbaa !74
  %i.bma = fneg double %i.blz
  %i.bmb = mul nsw i64 %indvars.iv.next1773, %i.asu ; 2 uses
  %gep1998.1 = getelementptr [8 x i8], ptr %invariant.gep1997, i64 %i.bmb
  %i.bmc = load double, ptr %gep1998.1, align 8, !tbaa !74
  %i.bmd = fmul double %i.bmc, %i.bma
  %gep2000.1 = getelementptr [8 x i8], ptr %invariant.gep1999, i64 %indvars.iv.next1773
  store double %i.bmd, ptr %gep2000.1, align 8, !tbaa !74
  %i.bme = load double, ptr %i.bjf, align 8, !tbaa !74
  %i.bmf = fneg double %i.bme
  %gep2002.1 = getelementptr [8 x i8], ptr %invariant.gep2001, i64 %i.bmb
  %i.bmg = load double, ptr %gep2002.1, align 8, !tbaa !74
  %i.bmh = fmul double %i.bmg, %i.bmf
  %gep2004.1 = getelementptr [8 x i8], ptr %invariant.gep2003, i64 %indvars.iv.next1773
  store double %i.bmh, ptr %gep2004.1, align 8, !tbaa !74
  %indvars.iv.next1773.1 = add nsw i64 %indvars.iv1772, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1773.1 to i32
  %exitcond1775.not.1 = icmp eq i32 %i.bjl, %lftr.wideiv.1
  br i1 %exitcond1775.not.1, label %.lr.ph1610.preheader, label %scalar.ph2267, !llvm.loop !53

.lr.ph1610.preheader:                             ; preds = %scalar.ph2267.prol.loopexit, %scalar.ph2267, %middle.block2282
  store i32 %.sink2049, ptr %i.f, align 4, !tbaa !63
  %i.bmi = sext i32 %i.biz to i64
  br label %.lr.ph1610

.lr.ph1610:                                       ; preds = %.lr.ph1610.preheader, %.lr.ph1610._crit_edge
  %i.bmj = phi i32 [ %.sink2050, %.lr.ph1610.preheader ], [ %i.byl, %.lr.ph1610._crit_edge ] ; 5 uses
  %i.bmk = phi i32 [ %.sink2049, %.lr.ph1610.preheader ], [ %i.bym, %.lr.ph1610._crit_edge ] ; 8 uses
  %indvars.iv1776 = phi i64 [ %i.bmi, %.lr.ph1610.preheader ], [ %.pre1889, %.lr.ph1610._crit_edge ] ; 27 uses
  %.212941608 = phi double [ %i.gc, %.lr.ph1610.preheader ], [ %.31295, %.lr.ph1610._crit_edge ] ; 3 uses
  %.913181606 = phi i32 [ %i.biz, %.lr.ph1610.preheader ], [ %.111320, %.lr.ph1610._crit_edge ] ; 2 uses
  %.413251605 = phi double [ 1.000000e+00, %.lr.ph1610.preheader ], [ %.71328, %.lr.ph1610._crit_edge ] ; 5 uses
  %indvars1778 = trunc i64 %indvars.iv1776 to i32 ; 5 uses
  %i.bml = sext i32 %.913181606 to i64
  %i.bmm = icmp slt i64 %indvars.iv1776, %i.bml
  %.pre1889 = add nsw i64 %indvars.iv1776, 1      ; 4 uses
  br i1 %i.bmm, label %.lr.ph1610._crit_edge, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph1610
  %i.bmn = sext i32 %i.bmk to i64
  %i.bmo = icmp slt i64 %indvars.iv1776, %i.bmn
  br i1 %i.bmo, label %bb.dz, label %..thread1454_crit_edge

..thread1454_crit_edge:                           ; preds = %bb.dy
  %i.bmp = trunc nsw i64 %.pre1889 to i32
  %.pre1851.pre = load i32, ptr %i.s, align 4, !tbaa !63
  br label %.thread1454

bb.dz:                                            ; preds = %bb.dy
  %i.bmq = add nsw i32 %indvars1778, 1
  %i.bmr = mul nsw i64 %indvars.iv1776, %i.asu    ; 3 uses
  %i.bms = getelementptr [8 x i8], ptr %i.aa, i64 %.pre1889
  %i.bmt = getelementptr [8 x i8], ptr %i.bms, i64 %i.bmr
  %i.bmu = load double, ptr %i.bmt, align 8, !tbaa !74
  %i.bmv = fcmp oeq double %i.bmu, 0.000000e+00
  %i.bmw = trunc nsw i64 %indvars.iv1776 to i32
  %i.bmx = add i32 %i.bmw, 2
  %.pre1851.pre1869 = load i32, ptr %i.s, align 4, !tbaa !63 ; 4 uses
  br i1 %i.bmv, label %.thread1454, label %bb.ee

.thread1454:                                      ; preds = %..thread1454_crit_edge, %bb.dz
  %.pre1851 = phi i32 [ %.pre1851.pre1869, %bb.dz ], [ %.pre1851.pre, %..thread1454_crit_edge ] ; 3 uses
  %.1013191457 = phi i32 [ %i.bmq, %bb.dz ], [ %i.bmp, %..thread1454_crit_edge ]
  %i.bmy = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bmz = load double, ptr %i.bmy, align 8, !tbaa !74
  %i.bna = fcmp ogt double %i.bmz, %.212941608
  br i1 %i.bna, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.thread1454
  %i.bnb = fdiv double 1.000000e+00, %.413251605
  store double %i.bnb, ptr %i.w, align 8, !tbaa !74
  %i.bnc = add i32 %i.bmk, 1
  %i.bnd = sub i32 %i.bnc, %.pre1851
  store i32 %i.bnd, ptr %i.g, align 4, !tbaa !63
  %i.bne = mul nsw i32 %i.bmj, %i.bmk
  %i.bnf = add nsw i32 %i.bne, %.pre1851
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bng
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bnh, ptr noundef nonnull @c__1) #7
  %i.bni = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bnj = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bnk = add i32 %i.bni, 1
  %i.bnl = sub i32 %i.bnk, %i.bnj
  store i32 %i.bnl, ptr %i.g, align 4, !tbaa !63
  %i.bnm = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bnn = add nsw i32 %i.bnm, 1
  %i.bno = mul nsw i32 %i.bnn, %i.bni
  %i.bnp = add nsw i32 %i.bno, %i.bnj
  %i.bnq = sext i32 %i.bnp to i64
  %i.bnr = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bnq
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bnr, ptr noundef nonnull @c__1) #7
  %.pre1850 = load i32, ptr %i.s, align 4, !tbaa !63
  %.pre1852 = load i32, ptr %i.t, align 4, !tbaa !63
  %.pre1853 = load i32, ptr %3, align 4, !tbaa !63
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.thread1454
  %i.bns = phi i32 [ %.pre1853, %bb.ea ], [ %i.bmk, %.thread1454 ]
  %i.bnt = phi i32 [ %.pre1852, %bb.ea ], [ %i.bmj, %.thread1454 ]
  %i.bnu = phi i32 [ %.pre1850, %bb.ea ], [ %.pre1851, %.thread1454 ] ; 2 uses
  %.51326 = phi double [ 1.000000e+00, %bb.ea ], [ %.413251605, %.thread1454 ] ; 2 uses
  %i.bnv = add i32 %indvars1778, -2               ; 2 uses
  %i.bnw = sub i32 %i.bnv, %i.bnu
  store i32 %i.bnw, ptr %i.g, align 4, !tbaa !63
  %i.bnx = add nsw i32 %i.bnu, 2                  ; 2 uses
  %i.bny = mul nsw i64 %indvars.iv1776, %i.asu    ; 2 uses
  %i.bnz = mul nsw i32 %i.y, %indvars1778
  %i.boa = sext i32 %i.bnx to i64
  %i.bob = getelementptr [8 x i8], ptr %i.aa, i64 %i.bny
  %i.boc = getelementptr [8 x i8], ptr %i.bob, i64 %i.boa
  %i.bod = mul nsw i32 %i.bns, %i.bnt
  %i.boe = add nsw i32 %i.bod, %i.bnx
  %i.bof = sext i32 %i.boe to i64
  %i.bog = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bof
  %i.boh = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.boc, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bog, ptr noundef nonnull @c__1) #7
  %i.boi = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.boj = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bok = mul nsw i32 %i.boj, %i.boi
  %i.bol = sext i32 %i.bok to i64
  %i.bom = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bon = getelementptr [8 x i8], ptr %i.bom, i64 %i.bol ; 2 uses
  %i.boo = load double, ptr %i.bon, align 8, !tbaa !74
  %i.bop = fsub double %i.boo, %i.boh
  store double %i.bop, ptr %i.bon, align 8, !tbaa !74
  %i.boq = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bor = sub i32 %i.bnv, %i.boq
  store i32 %i.bor, ptr %i.g, align 4, !tbaa !63
  %i.bos = add nsw i32 %i.boq, 2                  ; 2 uses
  %i.bot = sext i32 %i.bos to i64
  %i.bou = getelementptr [8 x i8], ptr %i.aa, i64 %i.bny
  %i.bov = getelementptr [8 x i8], ptr %i.bou, i64 %i.bot
  %i.bow = add nsw i32 %i.boi, 1
  %i.box = mul nsw i32 %i.bow, %i.boj
  %i.boy = add nsw i32 %i.bos, %i.box
  %i.boz = sext i32 %i.boy to i64
  %i.bpa = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.boz
  %i.bpb = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.bov, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bpa, ptr noundef nonnull @c__1) #7
  %i.bpc = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.bpd = add nsw i32 %i.bpc, 1
  %i.bpe = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bpf = mul nsw i32 %i.bpd, %i.bpe
  %i.bpg = sext i32 %i.bpf to i64
  %i.bph = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bpi = getelementptr [8 x i8], ptr %i.bph, i64 %i.bpg ; 2 uses
  %i.bpj = load double, ptr %i.bpi, align 8, !tbaa !74
  %i.bpk = fsub double %i.bpj, %i.bpb
  store double %i.bpk, ptr %i.bpi, align 8, !tbaa !74
  %i.bpl = load double, ptr %i.u, align 8, !tbaa !74
  %i.bpm = fneg double %i.bpl
  store double %i.bpm, ptr %i.h, align 8, !tbaa !74
  %i.bpn = sext i32 %i.bnz to i64
  %i.bpo = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv1776
  %i.bpp = getelementptr [8 x i8], ptr %i.bpo, i64 %i.bpn
  %i.bpq = mul nsw i32 %i.bpe, %i.bpc
  %i.bpr = sext i32 %i.bpq to i64
  %i.bps = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bpt = getelementptr [8 x i8], ptr %i.bps, i64 %i.bpr
  call void @dlaln2_(ptr noundef nonnull @c_false, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull %i.m, ptr noundef nonnull @c_b29, ptr noundef %i.bpp, ptr noundef nonnull %5, ptr noundef nonnull @c_b29, ptr noundef nonnull @c_b29, ptr noundef nonnull %i.bpt, ptr noundef nonnull %3, ptr noundef nonnull %i.v, ptr noundef nonnull %i.h, ptr noundef nonnull %i.o, ptr noundef nonnull @c__2, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.bpu = load double, ptr %i.n, align 8, !tbaa !74
  %i.bpv = fcmp une double %i.bpu, 1.000000e+00
  br i1 %i.bpv, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.bpw = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bpx = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bpy = add i32 %i.bpw, 1
  %i.bpz = sub i32 %i.bpy, %i.bpx
  store i32 %i.bpz, ptr %i.g, align 4, !tbaa !63
  %i.bqa = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bqb = mul nsw i32 %i.bqa, %i.bpw
  %i.bqc = add nsw i32 %i.bqb, %i.bpx
  %i.bqd = sext i32 %i.bqc to i64
  %i.bqe = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bqd
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bqe, ptr noundef nonnull @c__1) #7
  %i.bqf = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bqg = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bqh = add i32 %i.bqf, 1
  %i.bqi = sub i32 %i.bqh, %i.bqg
  store i32 %i.bqi, ptr %i.g, align 4, !tbaa !63
  %i.bqj = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bqk = add nsw i32 %i.bqj, 1
  %i.bql = mul nsw i32 %i.bqk, %i.bqf
  %i.bqm = add nsw i32 %i.bql, %i.bqg
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bqn
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bqo, ptr noundef nonnull @c__1) #7
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.bqp = load double, ptr %i.o, align 16, !tbaa !74
  %i.bqq = load i32, ptr %i.t, align 4, !tbaa !63 ; 3 uses
  %i.bqr = load i32, ptr %3, align 4, !tbaa !63   ; 3 uses
  %i.bqs = mul nsw i32 %i.bqr, %i.bqq
  %i.bqt = sext i32 %i.bqs to i64
  %i.bqu = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bqv = getelementptr [8 x i8], ptr %i.bqu, i64 %i.bqt ; 2 uses
  store double %i.bqp, ptr %i.bqv, align 8, !tbaa !74
  %i.bqw = load double, ptr %i.asn, align 16, !tbaa !74 ; 4 uses
  %i.bqx = add nsw i32 %i.bqq, 1
  %i.bqy = mul nsw i32 %i.bqx, %i.bqr
  %i.bqz = sext i32 %i.bqy to i64
  %i.bra = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.brb = getelementptr [8 x i8], ptr %i.bra, i64 %i.bqz
  store double %i.bqw, ptr %i.brb, align 8, !tbaa !74
  %i.brc = load double, ptr %i.bqv, align 8, !tbaa !74 ; 4 uses
  store double %i.brc, ptr %i.h, align 8, !tbaa !74
  %i.brd = fcmp oge double %i.brc, 0.000000e+00
  %i.bre = fneg double %i.brc
  %i.brf = select i1 %i.brd, double %i.brc, double %i.bre ; 2 uses
  %i.brg = fcmp oge double %i.bqw, 0.000000e+00
  %i.brh = fneg double %i.bqw
  %i.bri = select i1 %i.brg, double %i.bqw, double %i.brh ; 2 uses
  %i.brj = fcmp oge double %i.brf, %i.bri
  %i.brk = select i1 %i.brj, double %i.brf, double %i.bri ; 2 uses
  %i.brl = fcmp oge double %i.brk, %.51326
  %i.brm = select i1 %i.brl, double %i.brk, double %.51326 ; 2 uses
  %i.brn = fdiv double %i.gc, %i.brm
  br label %.lr.ph1610._crit_edge

bb.ee:                                            ; preds = %bb.dz
  %i.bro = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.brp = load double, ptr %i.bro, align 8, !tbaa !74 ; 3 uses
  store double %i.brp, ptr %i.h, align 8, !tbaa !74
  %i.brq = getelementptr [8 x i8], ptr %12, i64 %indvars.iv1776
  %i.brr = load double, ptr %i.brq, align 8, !tbaa !74 ; 2 uses
  %i.brs = fcmp oge double %i.brp, %i.brr
  %i.brt = select i1 %i.brs, double %i.brp, double %i.brr
  %i.bru = fcmp ogt double %i.brt, %.212941608
  br i1 %i.bru, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.brv = fdiv double 1.000000e+00, %.413251605
  store double %i.brv, ptr %i.w, align 8, !tbaa !74
  %i.brw = add i32 %i.bmk, 1
  %i.brx = sub i32 %i.brw, %.pre1851.pre1869
  store i32 %i.brx, ptr %i.g, align 4, !tbaa !63
  %i.bry = mul nsw i32 %i.bmj, %i.bmk
  %i.brz = add nsw i32 %i.bry, %.pre1851.pre1869
  %i.bsa = sext i32 %i.brz to i64
  %i.bsb = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bsa
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bsb, ptr noundef nonnull @c__1) #7
  %i.bsc = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bsd = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bse = add i32 %i.bsc, 1
  %i.bsf = sub i32 %i.bse, %i.bsd
  store i32 %i.bsf, ptr %i.g, align 4, !tbaa !63
  %i.bsg = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bsh = add nsw i32 %i.bsg, 1
  %i.bsi = mul nsw i32 %i.bsh, %i.bsc
  %i.bsj = add nsw i32 %i.bsi, %i.bsd
  %i.bsk = sext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bsk
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bsl, ptr noundef nonnull @c__1) #7
  %.pre1846 = load i32, ptr %i.s, align 4, !tbaa !63
  %.pre1848 = load i32, ptr %i.t, align 4, !tbaa !63
  %.pre1849 = load i32, ptr %3, align 4, !tbaa !63
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.bsm = phi i32 [ %.pre1849, %bb.ef ], [ %i.bmk, %bb.ee ]
  %i.bsn = phi i32 [ %.pre1848, %bb.ef ], [ %i.bmj, %bb.ee ]
  %i.bso = phi i32 [ %.pre1846, %bb.ef ], [ %.pre1851.pre1869, %bb.ee ] ; 2 uses
  %.61327 = phi double [ 1.000000e+00, %bb.ef ], [ %.413251605, %bb.ee ] ; 2 uses
  %i.bsp = add i32 %indvars1778, -2               ; 4 uses
  %i.bsq = sub i32 %i.bsp, %i.bso
  store i32 %i.bsq, ptr %i.g, align 4, !tbaa !63
  %i.bsr = add nsw i32 %i.bso, 2                  ; 2 uses
  %i.bss = mul nsw i32 %i.y, %indvars1778
  %i.bst = sext i32 %i.bsr to i64
  %i.bsu = getelementptr [8 x i8], ptr %i.aa, i64 %i.bmr
  %i.bsv = getelementptr [8 x i8], ptr %i.bsu, i64 %i.bst
  %i.bsw = mul nsw i32 %i.bsm, %i.bsn
  %i.bsx = add nsw i32 %i.bsw, %i.bsr
  %i.bsy = sext i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bsy
  %i.bta = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.bsv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bsz, ptr noundef nonnull @c__1) #7
  %i.btb = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.btc = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.btd = mul nsw i32 %i.btc, %i.btb
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.btg = getelementptr [8 x i8], ptr %i.btf, i64 %i.bte ; 2 uses
  %i.bth = load double, ptr %i.btg, align 8, !tbaa !74
  %i.bti = fsub double %i.bth, %i.bta
  store double %i.bti, ptr %i.btg, align 8, !tbaa !74
  %i.btj = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.btk = sub i32 %i.bsp, %i.btj
  store i32 %i.btk, ptr %i.g, align 4, !tbaa !63
  %i.btl = add nsw i32 %i.btj, 2                  ; 2 uses
  %i.btm = sext i32 %i.btl to i64
  %i.btn = getelementptr [8 x i8], ptr %i.aa, i64 %i.bmr
  %i.bto = getelementptr [8 x i8], ptr %i.btn, i64 %i.btm
  %i.btp = add nsw i32 %i.btb, 1
  %i.btq = mul nsw i32 %i.btp, %i.btc
  %i.btr = add nsw i32 %i.btl, %i.btq
  %i.bts = sext i32 %i.btr to i64
  %i.btt = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bts
  %i.btu = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.bto, ptr noundef nonnull @c__1, ptr noundef nonnull %i.btt, ptr noundef nonnull @c__1) #7
  %i.btv = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.btw = add nsw i32 %i.btv, 1
  %i.btx = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bty = mul nsw i32 %i.btw, %i.btx
  %i.btz = sext i32 %i.bty to i64
  %i.bua = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bub = getelementptr [8 x i8], ptr %i.bua, i64 %i.btz ; 2 uses
  %i.buc = load double, ptr %i.bub, align 8, !tbaa !74
  %i.bud = fsub double %i.buc, %i.btu
  store double %i.bud, ptr %i.bub, align 8, !tbaa !74
  %i.bue = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.buf = sub i32 %i.bsp, %i.bue
  store i32 %i.buf, ptr %i.g, align 4, !tbaa !63
  %i.bug = add nsw i32 %i.bue, 2                  ; 2 uses
  %i.buh = mul nsw i64 %.pre1889, %i.asu          ; 2 uses
  %i.bui = sext i32 %i.bug to i64
  %i.buj = getelementptr [8 x i8], ptr %i.aa, i64 %i.buh
  %i.buk = getelementptr [8 x i8], ptr %i.buj, i64 %i.bui
  %i.bul = mul nsw i32 %i.btx, %i.btv
  %i.bum = add nsw i32 %i.bug, %i.bul
  %i.bun = sext i32 %i.bum to i64
  %i.buo = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bun
  %i.bup = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.buk, ptr noundef nonnull @c__1, ptr noundef nonnull %i.buo, ptr noundef nonnull @c__1) #7
  %i.buq = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.bur = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bus = mul nsw i32 %i.bur, %i.buq
  %i.but = sext i32 %i.bus to i64
  %i.buu = getelementptr [8 x i8], ptr %12, i64 %indvars.iv1776
  %i.buv = getelementptr [8 x i8], ptr %i.buu, i64 %i.but ; 2 uses
  %i.buw = load double, ptr %i.buv, align 8, !tbaa !74
  %i.bux = fsub double %i.buw, %i.bup
  store double %i.bux, ptr %i.buv, align 8, !tbaa !74
  %i.buy = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.buz = sub i32 %i.bsp, %i.buy
  store i32 %i.buz, ptr %i.g, align 4, !tbaa !63
  %i.bva = add nsw i32 %i.buy, 2                  ; 2 uses
  %i.bvb = sext i32 %i.bva to i64
  %i.bvc = getelementptr [8 x i8], ptr %i.aa, i64 %i.buh
  %i.bvd = getelementptr [8 x i8], ptr %i.bvc, i64 %i.bvb
  %i.bve = add nsw i32 %i.buq, 1
  %i.bvf = mul nsw i32 %i.bve, %i.bur
  %i.bvg = add nsw i32 %i.bva, %i.bvf
  %i.bvh = sext i32 %i.bvg to i64
  %i.bvi = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bvh
  %i.bvj = call double @ddot_(ptr noundef nonnull %i.g, ptr noundef %i.bvd, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bvi, ptr noundef nonnull @c__1) #7
  %i.bvk = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.bvl = add nsw i32 %i.bvk, 1
  %i.bvm = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bvn = mul nsw i32 %i.bvl, %i.bvm
  %i.bvo = sext i32 %i.bvn to i64
  %i.bvp = getelementptr [8 x i8], ptr %12, i64 %indvars.iv1776
  %i.bvq = getelementptr [8 x i8], ptr %i.bvp, i64 %i.bvo ; 2 uses
  %i.bvr = load double, ptr %i.bvq, align 8, !tbaa !74
  %i.bvs = fsub double %i.bvr, %i.bvj
  store double %i.bvs, ptr %i.bvq, align 8, !tbaa !74
  %i.bvt = load double, ptr %i.u, align 8, !tbaa !74
  %i.bvu = fneg double %i.bvt
  store double %i.bvu, ptr %i.h, align 8, !tbaa !74
  %i.bvv = sext i32 %i.bss to i64
  %i.bvw = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv1776
  %i.bvx = getelementptr [8 x i8], ptr %i.bvw, i64 %i.bvv
  %i.bvy = mul nsw i32 %i.bvm, %i.bvk
  %i.bvz = sext i32 %i.bvy to i64
  %i.bwa = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bwb = getelementptr [8 x i8], ptr %i.bwa, i64 %i.bvz
  call void @dlaln2_(ptr noundef nonnull @c_true, ptr noundef nonnull @c__2, ptr noundef nonnull @c__2, ptr noundef nonnull %i.m, ptr noundef nonnull @c_b29, ptr noundef %i.bvx, ptr noundef nonnull %5, ptr noundef nonnull @c_b29, ptr noundef nonnull @c_b29, ptr noundef nonnull %i.bwb, ptr noundef nonnull %3, ptr noundef nonnull %i.v, ptr noundef nonnull %i.h, ptr noundef nonnull %i.o, ptr noundef nonnull @c__2, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.bwc = load double, ptr %i.n, align 8, !tbaa !74
  %i.bwd = fcmp une double %i.bwc, 1.000000e+00
  br i1 %i.bwd, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.bwe = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bwf = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bwg = add i32 %i.bwe, 1
  %i.bwh = sub i32 %i.bwg, %i.bwf
  store i32 %i.bwh, ptr %i.g, align 4, !tbaa !63
  %i.bwi = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bwj = mul nsw i32 %i.bwi, %i.bwe
  %i.bwk = add nsw i32 %i.bwj, %i.bwf
  %i.bwl = sext i32 %i.bwk to i64
  %i.bwm = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bwl
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bwm, ptr noundef nonnull @c__1) #7
  %i.bwn = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bwo = load i32, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.bwp = add i32 %i.bwn, 1
  %i.bwq = sub i32 %i.bwp, %i.bwo
  store i32 %i.bwq, ptr %i.g, align 4, !tbaa !63
  %i.bwr = load i32, ptr %i.t, align 4, !tbaa !63
  %i.bws = add nsw i32 %i.bwr, 1
  %i.bwt = mul nsw i32 %i.bws, %i.bwn
  %i.bwu = add nsw i32 %i.bwt, %i.bwo
  %i.bwv = sext i32 %i.bwu to i64
  %i.bww = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bwv
  call void @dscal_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bww, ptr noundef nonnull @c__1) #7
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.bwx = load double, ptr %i.o, align 16, !tbaa !74 ; 4 uses
  %i.bwy = load i32, ptr %i.t, align 4, !tbaa !63 ; 3 uses
  %i.bwz = load i32, ptr %3, align 4, !tbaa !63   ; 3 uses
  %i.bxa = mul nsw i32 %i.bwz, %i.bwy
  %i.bxb = sext i32 %i.bxa to i64                 ; 2 uses
  %i.bxc = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bxd = getelementptr [8 x i8], ptr %i.bxc, i64 %i.bxb
  store double %i.bwx, ptr %i.bxd, align 8, !tbaa !74
  %i.bxe = load double, ptr %i.asn, align 16, !tbaa !74 ; 4 uses
  %i.bxf = add nsw i32 %i.bwy, 1
  %i.bxg = mul nsw i32 %i.bxf, %i.bwz
  %i.bxh = sext i32 %i.bxg to i64                 ; 2 uses
  %i.bxi = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1776
  %i.bxj = getelementptr [8 x i8], ptr %i.bxi, i64 %i.bxh
  store double %i.bxe, ptr %i.bxj, align 8, !tbaa !74
  %i.bxk = load double, ptr %i.aso, align 8, !tbaa !74 ; 4 uses
  %i.bxl = getelementptr [8 x i8], ptr %12, i64 %indvars.iv1776
  %i.bxm = getelementptr [8 x i8], ptr %i.bxl, i64 %i.bxb
  store double %i.bxk, ptr %i.bxm, align 8, !tbaa !74
  %i.bxn = load double, ptr %i.asp, align 8, !tbaa !74 ; 4 uses
  %i.bxo = getelementptr [8 x i8], ptr %12, i64 %indvars.iv1776
  %i.bxp = getelementptr [8 x i8], ptr %i.bxo, i64 %i.bxh
  store double %i.bxn, ptr %i.bxp, align 8, !tbaa !74
  %i.bxq = fcmp oge double %i.bwx, 0.000000e+00
  %i.bxr = fneg double %i.bwx
  %i.bxs = select i1 %i.bxq, double %i.bwx, double %i.bxr ; 2 uses
  %i.bxt = fcmp oge double %i.bxe, 0.000000e+00
  %i.bxu = fneg double %i.bxe
  %i.bxv = select i1 %i.bxt, double %i.bxe, double %i.bxu ; 2 uses
  %i.bxw = fcmp oge double %i.bxs, %i.bxv
  %i.bxx = select i1 %i.bxw, double %i.bxs, double %i.bxv ; 2 uses
  %i.bxy = fcmp oge double %i.bxk, 0.000000e+00
  %i.bxz = fneg double %i.bxk
  %i.bya = select i1 %i.bxy, double %i.bxk, double %i.bxz ; 2 uses
  %i.byb = fcmp oge double %i.bxx, %i.bya
  %i.byc = select i1 %i.byb, double %i.bxx, double %i.bya ; 2 uses
  %i.byd = fcmp oge double %i.bxn, 0.000000e+00
  %i.bye = fneg double %i.bxn
  %i.byf = select i1 %i.byd, double %i.bxn, double %i.bye ; 2 uses
  %i.byg = fcmp oge double %i.byc, %i.byf
  %i.byh = select i1 %i.byg, double %i.byc, double %i.byf ; 3 uses
  store double %i.byh, ptr %i.h, align 8, !tbaa !74
  %i.byi = fcmp oge double %i.byh, %.61327
  %i.byj = select i1 %i.byi, double %i.byh, double %.61327 ; 2 uses
  %i.byk = fdiv double %i.gc, %i.byj
  br label %.lr.ph1610._crit_edge

.lr.ph1610._crit_edge:                            ; preds = %.lr.ph1610, %bb.ei, %bb.ed
  %i.byl = phi i32 [ %i.bqq, %bb.ed ], [ %i.bwy, %bb.ei ], [ %i.bmj, %.lr.ph1610 ] ; 2 uses
  %i.bym = phi i32 [ %i.bqr, %bb.ed ], [ %i.bwz, %bb.ei ], [ %i.bmk, %.lr.ph1610 ] ; 2 uses
  %.71328 = phi double [ %i.brm, %bb.ed ], [ %i.byj, %bb.ei ], [ %.413251605, %.lr.ph1610 ]
  %.111320 = phi i32 [ %.1013191457, %bb.ed ], [ %i.bmx, %bb.ei ], [ %.913181606, %.lr.ph1610 ]
  %.31295 = phi double [ %i.brn, %bb.ed ], [ %i.byk, %bb.ei ], [ %.212941608, %.lr.ph1610 ]
  %i.byn = load i32, ptr %i.f, align 4, !tbaa !63
  %i.byo = sext i32 %i.byn to i64
  %.not1379.not = icmp slt i64 %indvars.iv1776, %i.byo
  br i1 %.not1379.not, label %.lr.ph1610, label %._crit_edge1611, !llvm.loop !54

._crit_edge1611:                                  ; preds = %.lr.ph1610._crit_edge, %._crit_edge1603.thread
  %i.byp = phi i32 [ %.sink2049, %._crit_edge1603.thread ], [ %i.bym, %.lr.ph1610._crit_edge ] ; 8 uses
  %i.byq = phi i32 [ %.sink2050, %._crit_edge1603.thread ], [ %i.byl, %.lr.ph1610._crit_edge ] ; 7 uses
  %i.byr = load i32, ptr %i.s, align 4, !tbaa !63 ; 12 uses
  br i1 %.not1369, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %._crit_edge1611
  %i.bys = add i32 %i.byp, 1
  %i.byt = sub i32 %i.bys, %i.byr
  store i32 %i.byt, ptr %i.f, align 4, !tbaa !63
  %i.byu = mul nsw i32 %i.byq, %i.byp
end_hunk_0
