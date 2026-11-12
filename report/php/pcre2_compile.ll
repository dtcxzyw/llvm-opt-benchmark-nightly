Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@compile_regex:bb.a
  store i32 %i.se, ptr %i.bj, align 8, !tbaa !35
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  store i32 %.41483.i, ptr %i.by, align 8, !tbaa !84
  store i32 %.01269.i, ptr %i.bz, align 4, !tbaa !85
  %i.sf = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.01522.i, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %.41483.i, i32 noundef %.01269.i)
  %i.sg = add i32 %i.sf, %.01318.i1176
  br label %add_list_to_class.exit163

bb.cd:                                            ; preds = %bb.bx
  store i32 %.41483.i, ptr %i.by, align 8, !tbaa !84
  store i32 %.41483.i, ptr %i.bz, align 4, !tbaa !85
  %i.sh = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.01522.i, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %.41483.i, i32 noundef %.41483.i)
  %i.si = add i32 %i.sh, %.01318.i1176
  br label %add_list_to_class.exit163

add_list_to_class.exit163:                        ; preds = %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.aw, %.preheader674.preheader, %.preheader675.preheader, %.preheader668.preheader, %.preheader666.preheader, %.preheader664.preheader, %.preheader662.preheader, %.preheader660.preheader, %.preheader.preheader, %bb.bs, %bb.bo, %bb.bm, %bb.bi, %bb.cd, %bb.cc, %bb.bu, %bb.bh
  %i.sj = phi ptr [ %i.it, %bb.bq ], [ %i.sc, %bb.cc ], [ %i.rs, %bb.cd ], [ %i.it, %bb.bh ], [ %i.rg, %bb.bu ], [ %i.iy, %bb.aw ], [ %i.it, %bb.bk ], [ %i.it, %bb.bn ], [ %i.it, %.preheader.preheader ], [ %i.it, %.preheader660.preheader ], [ %i.it, %.preheader662.preheader ], [ %i.it, %.preheader664.preheader ], [ %i.it, %.preheader666.preheader ], [ %i.it, %.preheader668.preheader ], [ %i.it, %bb.bi ], [ %i.it, %bb.bm ], [ %i.it, %bb.bo ], [ %i.it, %bb.bs ], [ %i.iy, %.preheader675.preheader ], [ %i.iy, %.preheader674.preheader ], [ %i.it, %bb.bt ] ; 2 uses
  %.21335.i = phi i32 [ %.01333.i1173, %bb.bq ], [ %.01333.i1173, %bb.cc ], [ %.01333.i1173, %bb.cd ], [ %.01333.i1173, %bb.bh ], [ 1, %bb.bu ], [ 1, %bb.aw ], [ %.01333.i1173, %bb.bk ], [ %.01333.i1173, %bb.bn ], [ %.01333.i1173, %.preheader.preheader ], [ %.01333.i1173, %.preheader660.preheader ], [ %.01333.i1173, %.preheader662.preheader ], [ %.01333.i1173, %.preheader664.preheader ], [ %.01333.i1173, %.preheader666.preheader ], [ %.01333.i1173, %.preheader668.preheader ], [ %.01333.i1173, %bb.bi ], [ %.01333.i1173, %bb.bm ], [ %.01333.i1173, %bb.bo ], [ %.01333.i1173, %bb.bs ], [ %.01333.i1173, %.preheader675.preheader ], [ %.01333.i1173, %.preheader674.preheader ], [ %.01333.i1173, %bb.bt ] ; 2 uses
  %.11332.i = phi i32 [ %.01331.i1174, %bb.bq ], [ %.01331.i1174, %bb.cc ], [ %.01331.i1174, %bb.cd ], [ %.01331.i1174, %bb.bh ], [ %.01331.i1174, %bb.bu ], [ %i.ix, %bb.aw ], [ %.01331.i1174, %bb.bk ], [ %.01331.i1174, %bb.bn ], [ %.01331.i1174, %.preheader.preheader ], [ 1, %.preheader660.preheader ], [ %.01331.i1174, %.preheader662.preheader ], [ 1, %.preheader664.preheader ], [ %.01331.i1174, %.preheader666.preheader ], [ 1, %.preheader668.preheader ], [ %.01331.i1174, %bb.bi ], [ %.01331.i1174, %bb.bm ], [ %.01331.i1174, %bb.bo ], [ %.01331.i1174, %bb.bs ], [ 0, %.preheader675.preheader ], [ 1, %.preheader674.preheader ], [ %.01331.i1174, %bb.bt ] ; 4 uses
  %.31330.i = phi i32 [ %.01327.i1175, %bb.bq ], [ %.01327.i1175, %bb.cc ], [ %.01327.i1175, %bb.cd ], [ %.01327.i1175, %bb.bh ], [ %.01327.i1175, %bb.bu ], [ %.01327.i1175, %bb.aw ], [ %.01327.i1175, %bb.bk ], [ %.01327.i1175, %bb.bn ], [ %.01327.i1175, %.preheader.preheader ], [ %.01327.i1175, %.preheader660.preheader ], [ %.01327.i1175, %.preheader662.preheader ], [ %.01327.i1175, %.preheader664.preheader ], [ %.01327.i1175, %.preheader666.preheader ], [ %.01327.i1175, %.preheader668.preheader ], [ %.01327.i1175, %bb.bi ], [ %.01327.i1175, %bb.bm ], [ %.01327.i1175, %bb.bo ], [ %.01327.i1175, %bb.bs ], [ %.11328.i, %.preheader675.preheader ], [ %.11328.i, %.preheader674.preheader ], [ %.01327.i1175, %bb.bt ] ; 2 uses
  %.21320.i = phi i32 [ %i.nm, %bb.bq ], [ %i.sg, %bb.cc ], [ %i.si, %bb.cd ], [ %i.nm, %bb.bh ], [ %.01318.i1176, %bb.bu ], [ %.01318.i1176, %bb.aw ], [ %i.nm, %bb.bk ], [ %i.nm, %bb.bn ], [ %i.nm, %.preheader.preheader ], [ %i.nm, %.preheader660.preheader ], [ %i.nm, %.preheader662.preheader ], [ %i.nm, %.preheader664.preheader ], [ %i.nm, %.preheader666.preheader ], [ %i.nm, %.preheader668.preheader ], [ %i.nm, %bb.bi ], [ %i.nm, %bb.bm ], [ %i.nm, %bb.bo ], [ %i.nm, %bb.bs ], [ 1, %.preheader675.preheader ], [ 1, %.preheader674.preheader ], [ %i.nm, %bb.bt ] ; 2 uses
  %i.sk = load ptr, ptr %i.e, align 8, !tbaa !27  ; 3 uses
  %i.sl = icmp ule ptr %i.sk, %i.ig               ; 2 uses
  %brmerge.i = or i1 %i.bd, %i.sl
  %.01336.mux.i = select i1 %i.sl, i32 %.01336.i1172, i32 1
  br i1 %brmerge.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %add_list_to_class.exit163
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sm, %i.iq
  %i.so = add i64 %i.sn, %i.iv                    ; 2 uses
  store ptr %i.ig, ptr %i.e, align 8, !tbaa !27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %add_list_to_class.exit163
  %i.sp = phi ptr [ %i.sk, %add_list_to_class.exit163 ], [ %i.ig, %bb.ce ] ; 6 uses
  %.5 = phi i64 [ %.4, %add_list_to_class.exit163 ], [ %i.so, %bb.ce ] ; 4 uses
  %i.sq = phi i64 [ %i.iv, %add_list_to_class.exit163 ], [ %i.so, %bb.ce ]
  %.11337.i = phi i32 [ %.01336.mux.i, %add_list_to_class.exit163 ], [ 1, %bb.ce ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 4 ; 3 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !28 ; 2 uses
  %.not1638.i = icmp eq i32 %i.ss, -2146631680
  br i1 %.not1638.i, label %._crit_edge1178, label %bb.at, !llvm.loop !176

._crit_edge1178:                                  ; preds = %bb.cf
  %i.st = icmp eq i32 %.11337.i, 0
  %i.su = icmp ne i32 %.21335.i, 0                ; 3 uses
  %i.sv = icmp eq i32 %.31330.i, 0
  %i.sw = icmp sgt i32 %.21320.i, 0
  store ptr %i.sr, ptr %i.a, align 8, !tbaa !68
  %spec.store.select33.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 4 uses
  br i1 %i.st, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge1178
  %i.sx = and i32 %.01522.i, 131072
  %i.sy = icmp ne i32 %i.sx, 0                    ; 2 uses
  %or.cond35.i = select i1 %i.sy, i1 true, i1 %i.su
  %or.cond35.not.i = xor i1 %or.cond35.i, true
  %i.sz = icmp ne i32 %.11332.i, 0                ; 2 uses
  %or.cond37.i = select i1 %or.cond35.not.i, i1 %i.sz, i1 false
  br i1 %or.cond37.i, label %bb.cp, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.sv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %or.cond39.i = select i1 %i.dd, i1 %i.sz, i1 false
  %.not659 = xor i1 %i.ff, true
  %or.cond41.not.i = select i1 %or.cond39.i, i1 %.not659, i1 false
  %.not1751 = xor i1 %i.sy, true
  %or.cond1667.i = and i1 %or.cond41.not.i, %.not1751
  br i1 %or.cond1667.i, label %.thread283, label %bb.cl

.thread283:                                       ; preds = %bb.ci
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  store ptr %i.ta, ptr %i.e, align 8, !tbaa !27
  store i8 2, ptr %i.sp, align 1, !tbaa !29
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  store ptr %i.tb, ptr %i.e, align 8, !tbaa !27
  store i8 2, ptr %i.sp, align 1, !tbaa !29
  br i1 %i.dd, label %bb.ck, label %._crit_edge1752

._crit_edge1752:                                  ; preds = %bb.cj
  %.pre1753 = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.cl

bb.ck:                                            ; preds = %.thread283, %bb.cj
  %i.tc = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.td = call i32 @_pcre2_ord2utf_8(i32 noundef 256, ptr noundef %i.tc) #17, !inline_history !173
  %i.te = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.tf = zext i32 %i.td to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tf ; 2 uses
  store ptr %i.tg, ptr %i.e, align 8, !tbaa !27
  %i.th = call i32 @_pcre2_ord2utf_8(i32 noundef 1114111, ptr noundef %i.tg) #17, !inline_history !173
  %i.ti = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.tj = zext i32 %i.th to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge1752, %bb.ck, %bb.ci
  %i.tl = phi ptr [ %.pre1753, %._crit_edge1752 ], [ %i.tk, %bb.ck ], [ %i.sp, %bb.ci ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  store ptr %i.tm, ptr %i.e, align 8, !tbaa !27
  store i8 0, ptr %i.tl, align 1, !tbaa !29
  store i8 112, ptr %.31386.i, align 1, !tbaa !29
  %i.tn = getelementptr inbounds nuw i8, ptr %.31386.i, i64 3 ; 2 uses
  %i.to = zext i1 %i.ff to i8                     ; 2 uses
  %i.tp = or disjoint i8 %i.to, 4
  %storemerge.i = select i1 %i.su, i8 %i.tp, i8 %i.to ; 2 uses
  store i8 %storemerge.i, ptr %i.tn, align 1, !tbaa !29
  br i1 %i.sw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.tq = or disjoint i8 %storemerge.i, 2
  store i8 %i.tq, ptr %i.tn, align 1, !tbaa !29
  %i.tr = getelementptr inbounds nuw i8, ptr %.31386.i, i64 36
  %i.ts = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.ig to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tr, ptr nonnull align 1 %i.ig, i64 %i.tv, i1 false)
  %i.tw = xor i1 %i.ff, true
  %or.cond43.i = select i1 %i.tw, i1 true, i1 %i.su
  br i1 %or.cond43.i, label %.loopexit684, label %.preheader683.preheader

.preheader683.preheader:                          ; preds = %bb.cm
  %i.tx = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.ty = xor <16 x i8> %i.tx, splat (i8 -1)
  store <16 x i8> %i.ty, ptr %i.d, align 16, !tbaa !29
  %i.tz = load <16 x i8>, ptr %i.cm, align 16, !tbaa !29
  %i.ua = xor <16 x i8> %i.tz, splat (i8 -1)
  store <16 x i8> %i.ua, ptr %i.cm, align 16, !tbaa !29
  br label %.loopexit684

.loopexit684:                                     ; preds = %.preheader683.preheader, %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ig, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.uc = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit684
  %.51388.i = phi ptr [ %i.ub, %.loopexit684 ], [ %i.uc, %bb.cn ] ; 2 uses
  %i.ud = ptrtoint ptr %.51388.i to i64
  %i.ue = ptrtoint ptr %.11367.i to i64
  %i.uf = sub i64 %i.ud, %i.ue                    ; 2 uses
  %i.ug = trunc i64 %i.uf to i8
  %i.uh = lshr i64 %i.uf, 8
  %i.ui = trunc i64 %i.uh to i8
  %i.uj = getelementptr inbounds nuw i8, ptr %.11367.i, i64 1
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !29
  %i.uk = getelementptr inbounds nuw i8, ptr %.11367.i, i64 2
  store i8 %i.ug, ptr %i.uk, align 1, !tbaa !29
  br label %.thread

bb.cp:                                            ; preds = %._crit_edge1178.thread, %bb.cg, %._crit_edge1178
  %spec.store.select33.i1834 = phi i32 [ %spec.store.select33.i1831, %._crit_edge1178.thread ], [ %spec.store.select33.i, %bb.cg ], [ %spec.store.select33.i, %._crit_edge1178 ] ; 2 uses
  %.01331.i.lcssa1833 = phi i32 [ 0, %._crit_edge1178.thread ], [ %.11332.i, %bb.cg ], [ %.11332.i, %._crit_edge1178 ]
  %.61832 = phi i64 [ %.31737, %._crit_edge1178.thread ], [ %.5, %bb.cg ], [ %.5, %._crit_edge1178 ]
  %i.ul = icmp eq i32 %.01331.i.lcssa1833, %i.fg
  %i.um = select i1 %i.ul, i8 110, i8 111
  %i.un = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.um, ptr %.31386.i, align 1, !tbaa !29
  br i1 %i.bd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.ff, label %.preheader681.preheader, label %.loopexit682

.preheader681.preheader:                          ; preds = %bb.cq
  %i.uo = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.up = xor <16 x i8> %i.uo, splat (i8 -1)
  store <16 x i8> %i.up, ptr %i.d, align 16, !tbaa !29
  %i.uq = load <16 x i8>, ptr %i.cn, align 16, !tbaa !29
  %i.ur = xor <16 x i8> %i.uq, splat (i8 -1)
  store <16 x i8> %i.ur, ptr %i.cn, align 16, !tbaa !29
  br label %.loopexit682

.loopexit682:                                     ; preds = %.preheader681.preheader, %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.un, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit682, %bb.cp
  %i.us = getelementptr inbounds nuw i8, ptr %.31386.i, i64 33
  br label %.thread

bb.cs:                                            ; preds = %._crit_edge1758
  store i32 1, ptr %i.bw, align 8, !tbaa !73
  %.pre1750 = load i16, ptr %i.bh, align 2, !tbaa !72 ; 2 uses
  br i1 %.not1634.i1148, label %.critedge.i, label %.lr.ph1152

.lr.ph1152:                                       ; preds = %bb.cs, %bb.cw
  %i.ut = phi i16 [ %i.vd, %bb.cw ], [ %.pre1750, %bb.cs ] ; 3 uses
  %.7 = phi i64 [ %.8, %bb.cw ], [ %.31737, %bb.cs ] ; 3 uses
  %.01303.i1150 = phi ptr [ %i.ve, %bb.cw ], [ %.0113, %bb.cs ] ; 3 uses
  %.61389.i1149 = phi ptr [ %.71390.i, %bb.cw ], [ %.31386.i, %bb.cs ] ; 6 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.01303.i1150, i64 10
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !200
  %.not1635.i = icmp ult i16 %i.uv, %i.ut
  br i1 %.not1635.i, label %.critedge.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1152
  br i1 %i.bd, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uw = add i64 %.7, 3
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.ux = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 1
  store i8 -90, ptr %.61389.i1149, align 1, !tbaa !29
  %i.uy = getelementptr inbounds nuw i8, ptr %.01303.i1150, i64 8 ; 2 uses
  %16 = load i16, ptr %i.uy, align 8, !tbaa !198
  %17 = lshr i16 %16, 8
  %18 = trunc nuw i16 %17 to i8
  store i8 %18, ptr %i.ux, align 1, !tbaa !29
  %i.uz = load i16, ptr %i.uy, align 8, !tbaa !198
  %i.va = trunc i16 %i.uz to i8
  %i.vb = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 2
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !29
  %i.vc = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 3
  %.pre1748 = load i16, ptr %i.bh, align 2, !tbaa !72
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.vd = phi i16 [ %.pre1748, %bb.cv ], [ %i.ut, %bb.cu ] ; 2 uses
  %.8 = phi i64 [ %.7, %bb.cv ], [ %i.uw, %bb.cu ] ; 2 uses
  %.71390.i = phi ptr [ %i.vc, %bb.cv ], [ %.61389.i1149, %bb.cu ] ; 2 uses
  %i.ve = load ptr, ptr %.01303.i1150, align 8, !tbaa !199 ; 2 uses
  %.not1634.i = icmp eq ptr %i.ve, null
  br i1 %.not1634.i, label %.critedge.i, label %.lr.ph1152, !llvm.loop !177

.critedge.i:                                      ; preds = %bb.cw, %.lr.ph1152, %bb.cs
  %i.vf = phi i16 [ %.pre1750, %bb.cs ], [ %i.vd, %bb.cw ], [ %i.ut, %.lr.ph1152 ]
  %.9 = phi i64 [ %.31737, %bb.cs ], [ %.8, %bb.cw ], [ %.7, %.lr.ph1152 ]
  %.61389.i.lcssa = phi ptr [ %.31386.i, %bb.cs ], [ %.71390.i, %bb.cw ], [ %.61389.i1149, %.lr.ph1152 ] ; 2 uses
  %.not1636.i = icmp eq i16 %i.vf, 0
  %i.vg = select i1 %.not1636.i, i8 -92, i8 -91
  %i.vh = getelementptr inbounds nuw i8, ptr %.61389.i.lcssa, i64 1
  store i8 %i.vg, ptr %.61389.i.lcssa, align 1, !tbaa !29
  %spec.store.select44.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2)
  br label %.thread

bb.cx:                                            ; preds = %._crit_edge1758, %._crit_edge1758
  store i32 1, ptr %i.bv, align 4, !tbaa !74
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge1758, %._crit_edge1758
  %i.vi = add i32 %i.dt, 2144796672
  %i.vj = lshr i32 %i.vi, 16
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @verbops, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !28
  %i.vn = trunc i32 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.vn, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.cz:                                            ; preds = %._crit_edge1758
  %i.vp = load i32, ptr %i.bj, align 8, !tbaa !35
  %i.vq = or i32 %i.vp, 4096
  store i32 %i.vq, ptr %i.bj, align 8, !tbaa !35
  %i.vr = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 -97, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.da:                                            ; preds = %._crit_edge1758
  %i.vs = load i32, ptr %i.bj, align 8, !tbaa !35
  %i.vt = or i32 %i.vs, 4096
  store i32 %i.vt, ptr %i.bj, align 8, !tbaa !35
  br label %bb.dc

bb.db:                                            ; preds = %._crit_edge1758, %._crit_edge1758
  store i32 1, ptr %i.bv, align 4, !tbaa !74
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %._crit_edge1758, %._crit_edge1758
  %i.vu = add i32 %i.dt, 2144796672
  %i.vv = lshr i32 %i.vu, 16
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr @verbops, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !28
  %i.vz = trunc i32 %i.vy to i8
  %i.wa = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1 ; 2 uses
  store i8 %i.vz, ptr %.31386.i, align 1, !tbaa !29
  %i.wb = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4 ; 3 uses
  store ptr %i.wc, ptr %i.a, align 8, !tbaa !68
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !28 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.31386.i, i64 2 ; 2 uses
  store ptr %i.wa, ptr %i.c, align 8, !tbaa !27
  %i.wf = icmp sgt i32 %i.wd, 0
  br i1 %i.wf, label %.lr.ph1144, label %._crit_edge1145

._crit_edge1145.loopexit:                         ; preds = %bb.di
  %.pre1747 = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.wg = trunc i32 %.11305.i to i8
  br label %._crit_edge1145

._crit_edge1145:                                  ; preds = %._crit_edge1145.loopexit, %bb.dc
  %i.wh = phi ptr [ %.pre1747, %._crit_edge1145.loopexit ], [ %i.wa, %bb.dc ]
  %.10 = phi i64 [ %.12, %._crit_edge1145.loopexit ], [ %.31737, %bb.dc ]
  %.81391.i.lcssa = phi ptr [ %.91392.i, %._crit_edge1145.loopexit ], [ %i.we, %bb.dc ] ; 2 uses
  %.01304.i.lcssa = phi i8 [ %i.wg, %._crit_edge1145.loopexit ], [ 0, %bb.dc ]
  store i8 %.01304.i.lcssa, ptr %i.wh, align 1, !tbaa !29
  %i.wi = getelementptr inbounds nuw i8, ptr %.81391.i.lcssa, i64 1
  store i8 0, ptr %.81391.i.lcssa, align 1, !tbaa !29
  br label %.thread

.lr.ph1144:                                       ; preds = %bb.dc, %bb.di
  %i.wj = phi ptr [ %i.ws, %bb.di ], [ %i.wc, %bb.dc ]
  %.11 = phi i64 [ %.12, %bb.di ], [ %.31737, %bb.dc ] ; 2 uses
  %.01266.i1142 = phi i32 [ %i.wt, %bb.di ], [ 0, %bb.dc ]
  %.01304.i1141 = phi i32 [ %.11305.i, %bb.di ], [ 0, %bb.dc ] ; 2 uses
  %.81391.i1140 = phi ptr [ %.91392.i, %bb.di ], [ %i.we, %bb.dc ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 4 ; 3 uses
  store ptr %i.wk, ptr %i.a, align 8, !tbaa !68
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !28 ; 2 uses
  br i1 %i.dd, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph1144
  %i.wm = call i32 @_pcre2_ord2utf_8(i32 noundef %i.wl, ptr noundef nonnull %i.j) #17, !inline_history !173
  br label %bb.df

bb.de:                                            ; preds = %.lr.ph1144
  %i.wn = trunc i32 %i.wl to i8
  store i8 %i.wn, ptr %i.j, align 1, !tbaa !29
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.01314.i = phi i32 [ %i.wm, %bb.dd ], [ 1, %bb.de ] ; 2 uses
  %i.wo = zext i32 %.01314.i to i64               ; 3 uses
  br i1 %i.bd, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wp = add i64 %.11, %i.wo
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.81391.i1140, ptr nonnull align 1 %i.j, i64 %i.wo, i1 false)
  %i.wq = getelementptr inbounds nuw i8, ptr %.81391.i1140, i64 %i.wo
  %i.wr = add i32 %.01314.i, %.01304.i1141
  %.pre1745 = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ws = phi ptr [ %.pre1745, %bb.dh ], [ %i.wk, %bb.dg ]
  %.12 = phi i64 [ %.11, %bb.dh ], [ %i.wp, %bb.dg ] ; 2 uses
  %.91392.i = phi ptr [ %i.wq, %bb.dh ], [ %.81391.i1140, %bb.dg ] ; 2 uses
  %.11305.i = phi i32 [ %i.wr, %bb.dh ], [ %.01304.i1141, %bb.dg ] ; 2 uses
  %i.wt = add nuw nsw i32 %.01266.i1142, 1        ; 2 uses
  %exitcond1577.not = icmp eq i32 %i.wt, %i.wd
  br i1 %exitcond1577.not, label %._crit_edge1145.loopexit, label %.lr.ph1144, !llvm.loop !178

bb.dj:                                            ; preds = %._crit_edge1758
  %i.wu = getelementptr inbounds nuw i8, ptr %.promoted, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !28 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  store ptr %i.ww, ptr %i.a, align 8, !tbaa !68
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !28 ; 2 uses
  %i.wy = lshr i32 %i.wv, 18
  %.lobit1631.i = and i32 %i.wy, 1                ; 2 uses
  %i.wz = xor i32 %.lobit1631.i, 1
  %i.xa = lshr i32 %i.wv, 3
  %.lobit1633.i = and i32 %i.xa, 1
  br label %.thread

bb.dk:                                            ; preds = %._crit_edge1758, %._crit_edge1758, %._crit_edge1758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  %i.xb = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.xc = getelementptr inbounds nuw i8, ptr %.promoted, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !28 ; 5 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.promoted, i64 8
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !28
  %i.xg = zext i32 %i.xf to i64
  %i.xh = shl nuw i64 %i.xg, 32
  %i.xi = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !28
  %i.xk = zext i32 %i.xj to i64
  %i.xl = or disjoint i64 %i.xh, %i.xk            ; 4 uses
  store ptr %i.xi, ptr %i.a, align 8, !tbaa !68
  %i.xm = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xl ; 3 uses
  %i.xo = load i16, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %.not1187 = icmp eq i16 %i.xo, 0
  br i1 %.not1187, label %.loopexit687, label %.lr.ph1133

.lr.ph1133:                                       ; preds = %bb.dk
  %i.xp = zext nneg i32 %i.xd to i64
  br label %bb.dl

bb.dl:                                            ; preds = %.lr.ph1133, %bb.dq
  %i.xq = phi i16 [ %i.xo, %.lr.ph1133 ], [ %i.yo, %bb.dq ]
  %.01263.i1131 = phi ptr [ %i.xb, %.lr.ph1133 ], [ %i.yq, %bb.dq ] ; 5 uses
  %.01264.i1130 = phi i32 [ 0, %.lr.ph1133 ], [ %i.yp, %bb.dq ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.01263.i1131, i64 12
  %i.xs = load i16, ptr %i.xr, align 4, !tbaa !77
  %i.xt = zext i16 %i.xs to i32
  %i.xu = icmp eq i32 %i.xd, %i.xt
  br i1 %i.xu, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.xv = load ptr, ptr %.01263.i1131, align 8, !tbaa !76
  %i.xw = call i32 @_pcre2_strncmp_8(ptr noundef %i.xn, ptr noundef %i.xv, i64 noundef %i.xp) #17, !inline_history !173
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.dn, label %._crit_edge1741

._crit_edge1741:                                  ; preds = %bb.dm
  %.pre1742 = load i16, ptr %i.bq, align 8, !tbaa !69
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.xy = getelementptr inbounds nuw i8, ptr %.01263.i1131, i64 14
  %i.xz = load i16, ptr %i.xy, align 2, !tbaa !82
  %.not1625.i = icmp eq i16 %i.xz, 0
end_hunk_0
