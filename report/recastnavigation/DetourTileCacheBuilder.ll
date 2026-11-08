Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a
vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n566 = icmp eq i64 %n.vec561, %wide.trip.count435
  br i1 %cmp.n566, label %.loopexit626, label %.preheader350.preheader

.preheader350.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv432.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec561, %vec.epilog.middle.block ]
  br label %.preheader350

.loopexit626:                                     ; preds = %.preheader350, %vec.epilog.middle.block, %middle.block
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50
  %i.dp = tail call fastcc noundef i32 @_ZL11triangulateiPKhPtS1_(i32 noundef %i.de, ptr noundef %i.do, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cp) ; 2 uses
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.dp, i1 false)
  %i.dq = load i32, ptr %i.dd, align 8, !tbaa !73
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph368, label %._crit_edge369

.preheader350:                                    ; preds = %.preheader350.preheader, %.preheader350
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %.preheader350 ], [ %indvars.iv432.ph, %.preheader350.preheader ] ; 3 uses
  %i.ds = trunc i64 %indvars.iv432 to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv432
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !77
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %.loopexit626, label %.preheader350, !llvm.loop !130

._crit_edge369:                                   ; preds = %bb.v, %.loopexit626
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cw, i8 -1, i64 %i.cz, i1 false)
  %.not420 = icmp eq i32 %i.dp, 0
  br i1 %.not420, label %.loopexit347, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %._crit_edge369
  %wide.trip.count443 = zext i32 %spec.select to i64
  br label %.lr.ph373

.lr.ph368:                                        ; preds = %.loopexit626, %bb.v
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %bb.v ], [ 0, %.loopexit626 ] ; 3 uses
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !50
  %i.dv = shl nuw nsw i64 %indvars.iv437, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !66
  %i.dy = zext i8 %i.dx to i16                    ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !66  ; 2 uses
  %i.eb = zext i8 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !66
  %i.ee = zext i8 %i.ed to i16                    ; 3 uses
  %i.ef = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 2 uses
  %narrow.i = mul nuw nsw i16 %i.dy, 67
  %narrow42.i = mul nuw nsw i16 %i.ee, 31
  %narrow43.i = add nuw nsw i16 %narrow42.i, %narrow.i
  %i.eg = and i16 %narrow43.i, 255
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.eh ; 2 uses
  %.03645.i = load i16, ptr %i.ei, align 2, !tbaa !77 ; 3 uses
  %.not46.i = icmp eq i16 %.03645.i, -1
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph368
  %i.ej = zext i8 %i.ea to i32
  %invariant.op = sub i32 2, %i.ej
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i
  %.03647.i = phi i16 [ %.03645.i, %.lr.ph.i ], [ %.036.i, %bb.t ] ; 2 uses
  %i.ek = zext i16 %.03647.i to i64               ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ek, 6
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i ; 3 uses
  %i.em = load i16, ptr %i.el, align 2, !tbaa !77
  %i.en = icmp eq i16 %i.em, %i.dy
  br i1 %i.en, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !77
  %i.eq = icmp eq i16 %i.ep, %i.ee
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.es = load i16, ptr %i.er, align 2, !tbaa !77
  %i.et = zext i16 %i.es to i32
  %.reass.i.reass.reass = add i32 %i.et, %invariant.op
  %i.eu = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.eu, label %_ZL9addVertextttPtS_S_Ri.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ek
  %.036.i = load i16, ptr %i.ev, align 2, !tbaa !77 ; 2 uses
  %.not.i = icmp eq i16 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.q

._crit_edge.i:                                    ; preds = %bb.t, %.lr.ph368
  %i.ew = load i32, ptr %i.bt, align 4, !tbaa !76 ; 3 uses
  %i.ex = trunc i32 %i.ew to i16                  ; 2 uses
  %i.ey = add nsw i32 %i.ew, 1
  store i32 %i.ey, ptr %i.bt, align 4, !tbaa !76
  %i.ez = and i32 %i.ew, 65535                    ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ez, 3
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %i.fb ; 3 uses
  store i16 %i.dy, ptr %i.fc, align 2, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i16 %i.eb, ptr %i.fd, align 2, !tbaa !77
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i16 %i.ee, ptr %i.fe, align 2, !tbaa !77
  %i.ff = zext nneg i32 %i.ez to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.ff
  store i16 %.03645.i, ptr %i.fg, align 2, !tbaa !77
  store i16 %i.ex, ptr %i.ei, align 2, !tbaa !77
  br label %_ZL9addVertextttPtS_S_Ri.exit

_ZL9addVertextttPtS_S_Ri.exit:                    ; preds = %bb.s, %._crit_edge.i
  %.2.i = phi i16 [ %i.ex, %._crit_edge.i ], [ %.03647.i, %bb.s ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv437
  store i16 %.2.i, ptr %i.fh, align 2, !tbaa !77
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !66
  %.not257 = icmp sgt i8 %i.fj, -1
  br i1 %.not257, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZL9addVertextttPtS_S_Ri.exit
  %i.fk = zext i16 %.2.i to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fk
  store i8 1, ptr %i.fl, align 1, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL9addVertextttPtS_S_Ri.exit
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.fm = load i32, ptr %i.dd, align 8, !tbaa !73
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %indvars.iv.next438, %i.fn
  br i1 %i.fo, label %.lr.ph368, label %._crit_edge369

._crit_edge374:                                   ; preds = %bb.y
  %.not251 = icmp eq i32 %.1211, 0
  br i1 %.not251, label %.loopexit347, label %.preheader349.preheader

.preheader349.preheader:                          ; preds = %._crit_edge374
  %i.fp = icmp sgt i32 %.1211, 1
  br i1 %i.fp, label %.lr.ph396.preheader, label %.preheader346

.lr.ph373:                                        ; preds = %.lr.ph373.preheader, %bb.y
  %indvars.iv440 = phi i64 [ 0, %.lr.ph373.preheader ], [ %indvars.iv.next441, %bb.y ] ; 2 uses
  %.0210370 = phi i32 [ 0, %.lr.ph373.preheader ], [ %.1211, %bb.y ] ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv440, 6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx ; 3 uses
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !77 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 2 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !77 ; 2 uses
  %.not254 = icmp eq i16 %i.fr, %i.ft
  br i1 %.not254, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph373
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !77 ; 2 uses
  %.not255 = icmp eq i16 %i.fr, %i.fv
  %.not256 = icmp eq i16 %i.ft, %i.fv
  %or.cond = or i1 %.not255, %.not256
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fw = zext i16 %i.fr to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !77
  %i.fz = mul nsw i32 %.0210370, 6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.ga ; 3 uses
  store i16 %i.fy, ptr %i.gb, align 2, !tbaa !77
  %i.gc = load i16, ptr %i.fs, align 2, !tbaa !77
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !77
  %i.gg = getelementptr i8, ptr %i.gb, i64 2
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !77
  %i.gh = load i16, ptr %i.fu, align 2, !tbaa !77
  %i.gi = zext i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !77
  %i.gl = getelementptr i8, ptr %i.gb, i64 4
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !77
  %i.gm = add nsw i32 %.0210370, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph373
  %.1211 = phi i32 [ %i.gm, %bb.x ], [ %.0210370, %.lr.ph373 ], [ %.0210370, %bb.w ] ; 5 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, %wide.trip.count443
  br i1 %exitcond444.not, label %._crit_edge374, label %.lr.ph373

.lr.ph396.preheader:                              ; preds = %.preheader349.preheader, %.preheader349
  %.2212558 = phi i32 [ %i.gn, %.preheader349 ], [ %.1211, %.preheader349.preheader ] ; 4 uses
  %i.gn = add nsw i32 %.2212558, -1               ; 4 uses
  %wide.trip.count455 = zext nneg i32 %i.gn to i64
  %i.go = load ptr, ptr %i.ba, align 8, !tbaa !53
  %wide.trip.count450 = zext nneg i32 %.2212558 to i64
  br label %.lr.ph383

.loopexit:                                        ; preds = %bb.ab
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445.a, 1
  %exitcond456.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count455
  br i1 %exitcond456.not, label %._crit_edge397, label %.lr.ph383

._crit_edge397:                                   ; preds = %.loopexit
  %i.gp = icmp sgt i32 %.2208, 0
  br i1 %i.gp, label %.preheader349, label %.preheader346

.lr.ph383:                                        ; preds = %.loopexit, %.lr.ph396.preheader
  %indvars.iv452 = phi i64 [ 0, %.lr.ph396.preheader ], [ %indvars.iv.next453, %.loopexit ] ; 3 uses
  %indvars.iv445.a = phi i64 [ 1, %.lr.ph396.preheader ], [ %indvars.iv.next446, %.loopexit ] ; 2 uses
  %.0194393 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2196, %.loopexit ]
  %.0197392 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2199, %.loopexit ]
  %.0200391 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2202, %.loopexit ]
  %.0203390 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2205, %.loopexit ]
  %.0206389 = phi i32 [ 0, %.lr.ph396.preheader ], [ %.2208, %.loopexit ]
  %.idx515.a = mul nuw nsw i64 %indvars.iv452, 12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx515.a
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv452 to i32
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph383, %bb.ab
  %indvars.iv447 = phi i64 [ %indvars.iv445.a, %.lr.ph383 ], [ %indvars.iv.next448, %bb.ab ] ; 3 uses
  %.1195380 = phi i32 [ %.0194393, %.lr.ph383 ], [ %.2196, %bb.ab ]
  %.1198379 = phi i32 [ %.0197392, %.lr.ph383 ], [ %.2199, %bb.ab ]
  %.1201378 = phi i32 [ %.0200391, %.lr.ph383 ], [ %.2202, %bb.ab ]
  %.1204377 = phi i32 [ %.0203390, %.lr.ph383 ], [ %.2205, %bb.ab ]
  %.1207376 = phi i32 [ %.0206389, %.lr.ph383 ], [ %.2208, %bb.ab ] ; 2 uses
  %.idx516.a = mul nuw nsw i64 %indvars.iv447, 12
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx516.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.gt = call fastcc noundef i32 @_ZL17getPolyMergeValuePtS_PKtRiS2_(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gs, ptr noundef %i.go, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n) ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, %.1207376
  br i1 %i.gu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gv = load i32, ptr %i.m, align 4, !tbaa !76
  %i.gw = load i32, ptr %i.n, align 4, !tbaa !76
  %i.gx = trunc nuw nsw i64 %indvars.iv447 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2208 = phi i32 [ %i.gt, %bb.aa ], [ %.1207376, %bb.z ] ; 3 uses
  %.2205 = phi i32 [ %i.gr, %bb.aa ], [ %.1204377, %bb.z ] ; 3 uses
  %.2202 = phi i32 [ %i.gx, %bb.aa ], [ %.1201378, %bb.z ] ; 3 uses
  %.2199 = phi i32 [ %i.gv, %bb.aa ], [ %.1198379, %bb.z ] ; 3 uses
  %.2196 = phi i32 [ %i.gw, %bb.aa ], [ %.1195380, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %.loopexit, label %bb.z

.preheader349:                                    ; preds = %._crit_edge397
  %i.gy = mul nsw i32 %.2202, 6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = mul nsw i32 %.2205, 6
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.hb
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.gz ; 2 uses
  tail call fastcc void @_ZL10mergePolysPtS_ii(ptr noundef nonnull %i.hc, ptr noundef nonnull %i.hd, i32 noundef %.2199, i32 noundef %.2196)
  %i.he = mul nsw i32 %i.gn, 6
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.hf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.hd, ptr noundef nonnull align 2 dereferenceable(12) %i.hg, i64 12, i1 false)
  %i.hh = icmp sgt i32 %.2212558, 2
  br i1 %i.hh, label %.lr.ph396.preheader, label %.preheader346

.preheader346:                                    ; preds = %._crit_edge397, %.preheader349, %.preheader349.preheader
  %.2212.lcssa = phi i32 [ %.1211, %.preheader349.preheader ], [ %.2212558, %._crit_edge397 ], [ %i.gn, %.preheader349 ] ; 2 uses
  %.not253405 = icmp sgt i32 %.2212.lcssa, 0
  br i1 %.not253405, label %.lr.ph407, label %.loopexit347

.lr.ph407:                                        ; preds = %.preheader346
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dd, i64 17
  %wide.trip.count465 = zext nneg i32 %.2212.lcssa to i64
  %.pre = load i32, ptr %i.bu, align 8, !tbaa !138
  %.pre477 = load i8, ptr %i.hi, align 1, !tbaa !74
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit347, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph407, %bb.ac
  %i.hj = phi i32 [ %.pre, %.lr.ph407 ], [ %i.ij, %bb.ac ] ; 2 uses
  %indvars.iv461 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next462, %bb.ac ] ; 2 uses
  %i.hk = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.hl = mul nsw i32 %i.hj, 12
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.hm ; 6 uses
  %.idx517 = mul nuw nsw i64 %indvars.iv461, 12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx517 ; 6 uses
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !77
  store i16 %i.hp, ptr %i.hn, align 2, !tbaa !77
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !77
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !77
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !77
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !77
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !77
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !77
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !77
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !77
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 10
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !77
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hn, i64 10
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !77
  %i.if = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.ig = sext i32 %i.hj to i64
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  store i8 %.pre477, ptr %i.ih, align 1, !tbaa !66
  %i.ii = load i32, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.ij = add nsw i32 %i.ii, 1                    ; 2 uses
  store i32 %i.ij, ptr %i.bu, align 8, !tbaa !138
  %.not252 = icmp slt i32 %i.ii, %.0231.lcssa
  br i1 %.not252, label %bb.ac, label %_ZN12dtFixedArrayItED2Ev.exit

.loopexit347:                                     ; preds = %bb.ac, %._crit_edge369, %.preheader346, %bb.p, %._crit_edge374
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %i.ik = load i32, ptr %1, align 8, !tbaa !46
  %i.il = sext i32 %i.ik to i64
  %.not258 = icmp slt i64 %indvars.iv.next468, %i.il
  br i1 %.not258, label %bb.p, label %.critedge.preheader

bb.ae:                                            ; preds = %.lr.ph419, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread
  %i.im = phi i32 [ %i.da, %.lr.ph419 ], [ %i.zm, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ] ; 4 uses
  %.0184418 = phi i32 [ 0, %.lr.ph419 ], [ %i.zn, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ] ; 9 uses
  %i.in = sext i32 %.0184418 to i64               ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.ae, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !66
  %.not259 = icmp eq i8 %i.ip, 0
  br i1 %.not259, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iq = trunc i32 %.0184418 to i16              ; 14 uses
  %.val = load i32, ptr %i.bu, align 8            ; 3 uses
  %.val261 = load ptr, ptr %i.bi, align 8         ; 2 uses
  %i.ir = icmp sgt i32 %.val, 0
  br i1 %i.ir, label %.lr.ph19.preheader.i, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread

.lr.ph19.preheader.i:                             ; preds = %bb.af
  %wide.trip.count53.i = zext nneg i32 %.val to i64 ; 2 uses
  %broadcast.splatinsert613 = insertelement <4 x i16> poison, i16 %i.iq, i64 0
  %broadcast.splat614 = shufflevector <4 x i16> %broadcast.splatinsert613, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph19.i

._crit_edge20.i:                                  ; preds = %._crit_edge.thread.i
  %i.is = icmp slt i32 %.179.i, 3
  %i.it = icmp sgt i32 %.181.lcssa88.i, 24
  %i.iu = select i1 %i.is, i1 true, i1 %i.it
  br i1 %i.iu, label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, label %bb.al

.lr.ph19.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph19.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.thread.i ] ; 2 uses
  %.07816.i = phi i32 [ 0, %.lr.ph19.preheader.i ], [ %.179.i, %._crit_edge.thread.i ]
  %.08015.i = phi i32 [ 0, %.lr.ph19.preheader.i ], [ %.181.lcssa88.i, %._crit_edge.thread.i ] ; 3 uses
  %.idx.i263 = mul nuw nsw i64 %indvars.iv50.i, 24
  %i.iv = getelementptr inbounds nuw i8, ptr %.val261, i64 %.idx.i263 ; 8 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !77
  %i.ix = icmp eq i16 %i.iw, -1
  br i1 %i.ix, label %._crit_edge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph19.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !77
  %i.ja = icmp eq i16 %i.iz, -1
  br i1 %i.ja, label %.lr.ph.preheader.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !77
  %i.jd = icmp eq i16 %i.jc, -1
  br i1 %i.jd, label %.lr.ph.preheader.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.je = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !77
  %i.jg = icmp eq i16 %i.jf, -1
  br i1 %i.jg, label %.lr.ph.preheader.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !77
  %i.jj = icmp eq i16 %i.ji, -1
  br i1 %i.jj, label %.lr.ph.preheader.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 10
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !77
  %i.jm = icmp eq i16 %i.jl, -1
  %spec.select.i.i = select i1 %i.jm, i32 5, i32 6
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.ph.i = phi i32 [ 4, %bb.aj ], [ 2, %bb.ah ], [ %spec.select.i.i, %bb.ak ], [ 1, %bb.ag ], [ 3, %bb.ai ] ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.ph.i to i64 ; 3 uses
  %min.iters.check610 = icmp samesign ult i32 %.ph.i, 4
  br i1 %min.iters.check610, label %.lr.ph.i264.preheader, label %vector.body615

vector.body615:                                   ; preds = %.lr.ph.preheader.i
  %i.jn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.08015.i, i64 0
  %n.vec612 = and i64 %wide.trip.count.i, 4       ; 2 uses
  %wide.load619 = load <4 x i16>, ptr %i.iv, align 2, !tbaa !77
  %i.jo = freeze <4 x i16> %wide.load619
  %i.jp = icmp eq <4 x i16> %i.jo, %broadcast.splat614 ; 2 uses
  %i.jq = zext <4 x i1> %i.jp to <4 x i32>
  %i.jr = add <4 x i32> %i.jn, %i.jq
  %i.js = bitcast <4 x i1> %i.jp to i4
  %i.jt = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.js)
  %i.ju = zext nneg i4 %i.jt to i32               ; 2 uses
  %i.jv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jr) ; 2 uses
  %cmp.n622 = icmp eq i64 %n.vec612, %wide.trip.count.i
  br i1 %cmp.n622, label %._crit_edge.i265, label %.lr.ph.i264.preheader
end_hunk_0
begin_hunk_1_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a
  %i.uo = getelementptr [2 x i8], ptr %i.b, i64 %i.un ; 2 uses
  %i.up = getelementptr i8, ptr %i.uo, i64 -2
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !77
  %i.ur = icmp eq i16 %i.uq, %i.to
  br i1 %i.ur, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.us = icmp sgt i32 %.1324395.i, 47
  br i1 %i.us, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i16 %i.tq, ptr %i.uo, align 2, !tbaa !77
  %i.ut = sext i32 %.1396.i to i64
  %i.uu = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.ut
  store i16 %i.ts, ptr %i.uu, align 2, !tbaa !77
  %.pre.i269 = load i16, ptr %i.b, align 16, !tbaa !77
  br label %.critedge305.i

.critedge305.i:                                   ; preds = %bb.bu, %_ZL9pushFronttPtRi.exit313.i
  %i.uv = phi i16 [ %.pre.i269, %bb.bu ], [ %i.to, %_ZL9pushFronttPtRi.exit313.i ] ; 2 uses
  %.2.i270 = add nsw i32 %.1396.i, 1
  %.2325.i = add nsw i32 %.1324395.i, 1
  %i.uw = mul i32 %.7223399.i, 3                  ; 3 uses
  %i.ux = add i32 %i.uw, -3
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.uy
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !77
  store i16 %i.va, ptr %i.tn, align 2, !tbaa !77
  %i.vb = add i32 %i.uw, -2
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.vc
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !77
  store i16 %i.ve, ptr %i.tp, align 2, !tbaa !77
  %i.vf = add i32 %i.uw, -1
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !77
  store i16 %i.vi, ptr %i.tr, align 2, !tbaa !77
  %i.vj = add nsw i32 %.7223399.i, -1
  %i.vk = add nsw i32 %.0256398.i, -1
  br label %bb.bv

bb.bv:                                            ; preds = %.critedge305.i, %bb.bs
  %.pre530533.i = phi i16 [ %.pre530534.i, %bb.bs ], [ %i.uv, %.critedge305.i ] ; 2 uses
  %i.vl = phi i16 [ %i.tk, %bb.bs ], [ %i.uv, %.critedge305.i ]
  %.3326.ph.i = phi i32 [ %.1324395.i, %bb.bs ], [ %.2325.i, %.critedge305.i ] ; 3 uses
  %.3.ph.i = phi i32 [ %.1396.i, %bb.bs ], [ %.2.i270, %.critedge305.i ] ; 2 uses
  %.2261.ph.i = phi i1 [ %.0259397.i, %bb.bs ], [ true, %.critedge305.i ] ; 2 uses
  %.2258.ph.i = phi i32 [ %.0256398.i, %bb.bs ], [ %i.vk, %.critedge305.i ]
  %.9225.ph.i = phi i32 [ %.7223399.i, %bb.bs ], [ %i.vj, %.critedge305.i ] ; 3 uses
  %i.vm = add nsw i32 %.2258.ph.i, 1              ; 2 uses
  %.not297.i = icmp slt i32 %i.vm, %.9225.ph.i
  br i1 %.not297.i, label %.lr.ph401.i, label %.si.unfold.true.i

.si.unfold.true.i:                                ; preds = %bb.bv
  br i1 %.2261.ph.i, label %._crit_edge402.i, label %._crit_edge402.jt24.i

._crit_edge402.jt24.i:                            ; preds = %.si.unfold.true.i, %._crit_edge402.i
  %.5.i = phi i32 [ %.0323.i, %._crit_edge402.i ], [ %.3326.ph.i, %.si.unfold.true.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.vn = icmp sgt i32 %.5.i, 0
  br i1 %i.vn, label %.lr.ph425.i, label %._crit_edge426.i

.lr.ph425.i:                                      ; preds = %._crit_edge402.jt24.i
  %i.vo = load ptr, ptr %i.ba, align 8, !tbaa !53
  %wide.trip.count502.i = zext nneg i32 %.5.i to i64
  br label %bb.bw

._crit_edge426.i:                                 ; preds = %bb.bw, %._crit_edge402.jt24.i
  %i.vp = call fastcc noundef i32 @_ZL11triangulateiPKhPtS1_(i32 noundef %.5.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) ; 2 uses
  %spec.select306.i = tail call i32 @llvm.abs.i32(i32 %i.vp, i1 true) ; 3 uses
  %i.vq = icmp samesign ugt i32 %spec.select306.i, 48
  br i1 %i.vq, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534, label %bb.bx

_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534: ; preds = %._crit_edge426.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN12dtFixedArrayItED2Ev.exit

bb.bw:                                            ; preds = %bb.bw, %.lr.ph425.i
  %indvars.iv499.i = phi i64 [ 0, %.lr.ph425.i ], [ %indvars.iv.next500.i, %bb.bw ] ; 5 uses
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv499.i
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !77
  %i.vt = zext i16 %i.vs to i64
  %.idx.i268 = mul nuw nsw i64 %i.vt, 6
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 %.idx.i268 ; 3 uses
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !77
  %i.vw = trunc i16 %i.vv to i8
  %i.vx = shl nuw nsw i64 %indvars.iv499.i, 2
  %i.vy = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vx ; 4 uses
  store i8 %i.vw, ptr %i.vy, align 4, !tbaa !66
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !77
  %i.wb = trunc i16 %i.wa to i8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 1
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !66
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !77
  %i.wf = trunc i16 %i.we to i8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  store i8 %i.wf, ptr %i.wg, align 2, !tbaa !66
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 3
  store i8 0, ptr %i.wh, align 1, !tbaa !66
  %i.wi = trunc i64 %indvars.iv499.i to i16
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv499.i
  store i16 %i.wi, ptr %i.wj, align 2, !tbaa !77
  %indvars.iv.next500.i = add nuw nsw i64 %indvars.iv499.i, 1 ; 2 uses
  %exitcond503.not.i = icmp eq i64 %indvars.iv.next500.i, %wide.trip.count502.i
  br i1 %exitcond503.not.i, label %._crit_edge426.i, label %bb.bw

bb.bx:                                            ; preds = %._crit_edge426.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.wk = mul nuw nsw i32 %spec.select306.i, 12
  %i.wl = zext nneg i32 %i.wk to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.g, i8 -1, i64 %i.wl, i1 false)
  %.not472.i = icmp eq i32 %i.vp, 0
  br i1 %.not472.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %.lr.ph430.preheader.i

.lr.ph430.preheader.i:                            ; preds = %bb.bx
  %wide.trip.count507.i = zext nneg i32 %spec.select306.i to i64
  br label %.lr.ph430.i

._crit_edge431.i:                                 ; preds = %bb.ca
  %.not298.i = icmp eq i32 %.1246.i, 0
  br i1 %.not298.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %.preheader354.i.preheader

.preheader354.i.preheader:                        ; preds = %._crit_edge431.i
  %i.wm = icmp sgt i32 %.1246.i, 1
  br i1 %i.wm, label %.lr.ph453.preheader.i.lr.ph, label %.preheader.i267

.lr.ph453.preheader.i.lr.ph:                      ; preds = %.preheader354.i.preheader
  %i.wn = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.wo = zext nneg i32 %.1246.i to i64
  br label %.lr.ph453.preheader.i

.lr.ph430.i:                                      ; preds = %bb.ca, %.lr.ph430.preheader.i
  %indvars.iv504.i = phi i64 [ 0, %.lr.ph430.preheader.i ], [ %indvars.iv.next505.i, %bb.ca ] ; 2 uses
  %.0245427.i = phi i32 [ 0, %.lr.ph430.preheader.i ], [ %.1246.i, %bb.ca ] ; 5 uses
  %.idx563.i.a = mul nuw nsw i64 %indvars.iv504.i, 6
  %i.wp = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx563.i.a ; 3 uses
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !77 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 2
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !77 ; 3 uses
  %.not301.i = icmp eq i16 %i.wq, %i.ws
  br i1 %.not301.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.lr.ph430.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !77 ; 3 uses
  %.not302.i = icmp eq i16 %i.wq, %i.wu
  %.not303.i = icmp eq i16 %i.ws, %i.wu
  %or.cond.i = or i1 %.not302.i, %.not303.i
  br i1 %or.cond.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wv = zext i16 %i.wq to i64                   ; 2 uses
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.wv
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !77
  %i.wy = mul nsw i32 %.0245427.i, 6
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.wz ; 3 uses
  store i16 %i.wx, ptr %i.xa, align 4, !tbaa !77
  %i.xb = zext i16 %i.ws to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.xb
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !77
  %i.xe = getelementptr i8, ptr %i.xa, i64 2
  store i16 %i.xd, ptr %i.xe, align 2, !tbaa !77
  %i.xf = zext i16 %i.wu to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.xf
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !77
  %i.xi = getelementptr i8, ptr %i.xa, i64 4
  store i16 %i.xh, ptr %i.xi, align 4, !tbaa !77
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.wv
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !77
  %i.xl = trunc i16 %i.xk to i8
  %i.xm = sext i32 %.0245427.i to i64
  %i.xn = getelementptr inbounds i8, ptr %i.h, i64 %i.xm
  store i8 %i.xl, ptr %i.xn, align 1, !tbaa !66
  %i.xo = add nsw i32 %.0245427.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.lr.ph430.i
  %.1246.i = phi i32 [ %i.xo, %bb.bz ], [ %.0245427.i, %.lr.ph430.i ], [ %.0245427.i, %bb.by ] ; 5 uses
  %indvars.iv.next505.i = add nuw nsw i64 %indvars.iv504.i, 1 ; 2 uses
  %exitcond508.not.i = icmp eq i64 %indvars.iv.next505.i, %wide.trip.count507.i
  br i1 %exitcond508.not.i, label %._crit_edge431.i, label %.lr.ph430.i

.lr.ph453.preheader.i:                            ; preds = %.lr.ph453.preheader.i.lr.ph, %.preheader354.i
  %indvars.iv471 = phi i64 [ %i.wo, %.lr.ph453.preheader.i.lr.ph ], [ %indvars.iv.next472, %.preheader354.i ] ; 4 uses
  %indvars.iv.next472 = add nsw i64 %indvars.iv471, -1 ; 4 uses
  br label %.lr.ph440.i

.loopexit353.i:                                   ; preds = %bb.cd
  %indvars.iv.next517.i = add nuw nsw i64 %indvars.iv516.i, 1 ; 2 uses
  %indvars.iv.next510.i = add nuw nsw i64 %indvars.iv509.i.a, 1
  %exitcond520.not.i = icmp eq i64 %indvars.iv.next517.i, %indvars.iv.next472
  br i1 %exitcond520.not.i, label %._crit_edge454.i, label %.lr.ph440.i

._crit_edge454.i:                                 ; preds = %.loopexit353.i
  %i.xp = icmp sgt i32 %.2243.i, 0
  br i1 %i.xp, label %.preheader354.i, label %.preheader.i267.loopexit

.lr.ph440.i:                                      ; preds = %.loopexit353.i, %.lr.ph453.preheader.i
  %indvars.iv516.i = phi i64 [ 0, %.lr.ph453.preheader.i ], [ %indvars.iv.next517.i, %.loopexit353.i ] ; 3 uses
  %indvars.iv509.i.a = phi i64 [ 1, %.lr.ph453.preheader.i ], [ %indvars.iv.next510.i, %.loopexit353.i ] ; 2 uses
  %.0229450.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2231.i, %.loopexit353.i ]
  %.0232449.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2234.i, %.loopexit353.i ]
  %.0235448.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2237.i, %.loopexit353.i ]
  %.0238447.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2240.i, %.loopexit353.i ]
  %.0241446.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2243.i, %.loopexit353.i ]
  %.idx564.i = mul nuw nsw i64 %indvars.iv516.i, 12
  %i.xq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx564.i
  %i.xr = trunc nuw nsw i64 %indvars.iv516.i to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %.lr.ph440.i
  %indvars.iv511.i = phi i64 [ %indvars.iv509.i.a, %.lr.ph440.i ], [ %indvars.iv.next512.i, %bb.cd ] ; 3 uses
  %.1230437.i = phi i32 [ %.0229450.i, %.lr.ph440.i ], [ %.2231.i, %bb.cd ]
  %.1233436.i = phi i32 [ %.0232449.i, %.lr.ph440.i ], [ %.2234.i, %bb.cd ]
  %.1236435.i = phi i32 [ %.0235448.i, %.lr.ph440.i ], [ %.2237.i, %bb.cd ]
  %.1239434.i = phi i32 [ %.0238447.i, %.lr.ph440.i ], [ %.2240.i, %bb.cd ]
  %.1242433.i = phi i32 [ %.0241446.i, %.lr.ph440.i ], [ %.2243.i, %bb.cd ] ; 2 uses
  %.idx565.i = mul nuw nsw i64 %indvars.iv511.i, 12
  %i.xs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx565.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.xt = call fastcc noundef i32 @_ZL17getPolyMergeValuePtS_PKtRiS2_(ptr noundef nonnull %i.xq, ptr noundef nonnull %i.xs, ptr noundef %i.wn, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 2 uses
  %i.xu = icmp sgt i32 %i.xt, %.1242433.i
  br i1 %i.xu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xv = load i32, ptr %i.i, align 4, !tbaa !76
  %i.xw = load i32, ptr %i.j, align 4, !tbaa !76
  %i.xx = trunc nuw nsw i64 %indvars.iv511.i to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.2243.i = phi i32 [ %i.xt, %bb.cc ], [ %.1242433.i, %bb.cb ] ; 3 uses
  %.2240.i = phi i32 [ %i.xr, %bb.cc ], [ %.1239434.i, %bb.cb ] ; 3 uses
  %.2237.i = phi i32 [ %i.xx, %bb.cc ], [ %.1236435.i, %bb.cb ] ; 4 uses
  %.2234.i = phi i32 [ %i.xv, %bb.cc ], [ %.1233436.i, %bb.cb ] ; 3 uses
  %.2231.i = phi i32 [ %i.xw, %bb.cc ], [ %.1230437.i, %bb.cb ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond515.not.i = icmp eq i64 %indvars.iv.next512.i, %indvars.iv471
  br i1 %exitcond515.not.i, label %.loopexit353.i, label %bb.cb

.preheader354.i:                                  ; preds = %._crit_edge454.i
  %i.xy = mul nsw i32 %.2240.i, 6
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.xz
  %i.yb = mul nsw i32 %.2237.i, 6
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.yc ; 2 uses
  call fastcc void @_ZL10mergePolysPtS_ii(ptr noundef nonnull %i.ya, ptr noundef nonnull %i.yd, i32 noundef %.2234.i, i32 noundef %.2231.i)
  %.idx518 = mul nuw nsw i64 %indvars.iv.next472, 12
  %i.ye = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.yd, ptr noundef nonnull align 4 dereferenceable(12) %i.ye, i64 12, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next472
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !66
  %i.yh = sext i32 %.2237.i to i64
  %i.yi = getelementptr inbounds i8, ptr %i.h, i64 %i.yh
  store i8 %i.yg, ptr %i.yi, align 1, !tbaa !66
  %i.yj = icmp sgt i64 %indvars.iv471, 2
  br i1 %i.yj, label %.lr.ph453.preheader.i, label %.lr.ph463.i

.preheader.i267.loopexit:                         ; preds = %._crit_edge454.i
  %i.yk = trunc nuw nsw i64 %indvars.iv471 to i32
  br label %.preheader.i267

.preheader.i267:                                  ; preds = %.preheader.i267.loopexit, %.preheader354.i.preheader
  %.2247.i.lcssa = phi i32 [ %.1246.i, %.preheader354.i.preheader ], [ %i.yk, %.preheader.i267.loopexit ] ; 2 uses
  %i.yl = icmp sgt i32 %.2247.i.lcssa, 0
  br i1 %i.yl, label %.lr.ph463.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537

.lr.ph463.i:                                      ; preds = %.preheader354.i, %.preheader.i267
  %.2247.i.lcssa531 = phi i32 [ %.2247.i.lcssa, %.preheader.i267 ], [ 1, %.preheader354.i ]
  %wide.trip.count528.i = zext nneg i32 %.2247.i.lcssa531 to i64
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cg
  %indvars.iv.next525.i = add nuw nsw i64 %indvars.iv524.i, 1 ; 2 uses
  %exitcond529.not.i = icmp eq i64 %indvars.iv.next525.i, %wide.trip.count528.i
  br i1 %exitcond529.not.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph463.i
  %i.ym = phi i32 [ %i.qg, %.lr.ph463.i ], [ %i.zb, %bb.ce ] ; 2 uses
  %indvars.iv524.i = phi i64 [ 0, %.lr.ph463.i ], [ %indvars.iv.next525.i, %bb.ce ] ; 3 uses
  %.not299.i = icmp slt i32 %i.ym, %.0231.lcssa
  br i1 %.not299.i, label %bb.cg, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537

bb.cg:                                            ; preds = %bb.cf
  %i.yn = mul nuw nsw i64 %indvars.iv524.i, 12
  %i.yo = and i64 %i.yn, 8589934588
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.yo
  %i.yp = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.yq = mul nsw i32 %i.ym, 12
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds [2 x i8], ptr %i.yp, i64 %i.yr ; 2 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.yt, i8 -1, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ys, ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i, i64 12, i1 false), !tbaa !77
  %i.yu = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv524.i
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !66
  %i.yw = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.yx = load i32, ptr %i.bu, align 8, !tbaa !138
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds i8, ptr %i.yw, i64 %i.yy
  store i8 %i.yv, ptr %i.yz, align 1, !tbaa !66
  %i.za = load i32, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.zb = add nsw i32 %i.za, 1                    ; 2 uses
  store i32 %i.zb, ptr %i.bu, align 8, !tbaa !138
  %.not300.i = icmp slt i32 %i.za, %.0231.lcssa
  br i1 %.not300.i, label %bb.ce, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit

_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread: ; preds = %bb.bb, %bb.bt, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN12dtFixedArrayItED2Ev.exit

_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537: ; preds = %bb.ce, %bb.cf, %._crit_edge431.i, %.preheader.i267, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.preheader

_ZL12removeVertexR19dtTileCachePolyMeshti.exit:   ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN12dtFixedArrayItED2Ev.exit

.preheader:                                       ; preds = %._crit_edge393.i, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.zc = load i32, ptr %i.bt, align 4, !tbaa !137 ; 2 uses
  %i.zd = icmp slt i32 %.0184418, %i.zc
  br i1 %i.zd, label %.lr.ph415, label %._crit_edge416

.lr.ph415:                                        ; preds = %.preheader, %.lr.ph415
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %.lr.ph415 ], [ %i.in, %.preheader ] ; 2 uses
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 3 uses
  %i.ze = getelementptr inbounds i8, ptr %i.ae, i64 %indvars.iv.next475
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !66
  %i.zg = getelementptr inbounds i8, ptr %i.ae, i64 %indvars.iv474
  store i8 %i.zf, ptr %i.zg, align 1, !tbaa !66
  %i.zh = load i32, ptr %i.bt, align 4, !tbaa !137 ; 2 uses
  %i.zi = sext i32 %i.zh to i64
  %i.zj = icmp slt i64 %indvars.iv.next475, %i.zi
  br i1 %i.zj, label %.lr.ph415, label %._crit_edge416

._crit_edge416:                                   ; preds = %.lr.ph415, %.preheader
  %i.zk = phi i32 [ %i.zc, %.preheader ], [ %i.zh, %.lr.ph415 ]
  %i.zl = add nsw i32 %.0184418, -1
  br label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread

_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread: ; preds = %._crit_edge416, %bb.af, %._crit_edge20.i, %bb.ae, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit
  %i.zm = phi i32 [ %i.zk, %._crit_edge416 ], [ %i.im, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit ], [ %i.im, %bb.ae ], [ %i.im, %._crit_edge20.i ], [ %i.im, %bb.af ] ; 3 uses
  %.2 = phi i32 [ %i.zl, %._crit_edge416 ], [ %.0184418, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit ], [ %.0184418, %bb.ae ], [ %.0184418, %._crit_edge20.i ], [ %.0184418, %bb.af ]
  %i.zn = add nsw i32 %.2, 1                      ; 2 uses
  %.not260 = icmp slt i32 %i.zn, %i.zm
  br i1 %.not260, label %bb.ae, label %.thread341

.thread341:                                       ; preds = %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, %.critedge.preheader
  %i.zo = phi i32 [ %i.da, %.critedge.preheader ], [ %i.zm, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ]
  %i.zp = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.zq = load i32, ptr %i.bu, align 8, !tbaa !138
  %i.zr = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.zs = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyP16dtTileCacheAllocPtiPKtiRK21dtTileCacheContourSet(ptr noundef nonnull %0, ptr noundef %i.zp, i32 noundef %i.zq, ptr noundef %i.zr, i32 noundef %i.zo, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %. = select i1 %i.zs, i32 1073741824, i32 -2147483644
  br label %_ZN12dtFixedArrayItED2Ev.exit

_ZN12dtFixedArrayItED2Ev.exit:                    ; preds = %bb.ad, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, %.thread341, %bb.o
  %.11 = phi i32 [ -2147483644, %bb.o ], [ %., %.thread341 ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534 ], [ -2147483632, %bb.ad ]
  %i.zt = load ptr, ptr %0, align 8, !tbaa !18
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  %i.zv = load ptr, ptr %i.zu, align 8
  tail call void %i.zv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cw) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit285

_ZN12dtFixedArrayItED2Ev.exit285:                 ; preds = %bb.n, %_ZN12dtFixedArrayItED2Ev.exit
  %.12 = phi i32 [ %.11, %_ZN12dtFixedArrayItED2Ev.exit ], [ -2147483644, %bb.n ]
  %i.zw = load ptr, ptr %0, align 8, !tbaa !18
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = load ptr, ptr %i.zx, align 8
  tail call void %i.zy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cp) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit287

_ZN12dtFixedArrayItED2Ev.exit287:                 ; preds = %bb.m, %_ZN12dtFixedArrayItED2Ev.exit285
  %.13 = phi i32 [ %.12, %_ZN12dtFixedArrayItED2Ev.exit285 ], [ -2147483644, %bb.m ]
  %i.zz = load ptr, ptr %0, align 8, !tbaa !18
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8
  tail call void %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ci) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit289

_ZN12dtFixedArrayItED2Ev.exit289:                 ; preds = %bb.l, %_ZN12dtFixedArrayItED2Ev.exit287
  %.14 = phi i32 [ %.13, %_ZN12dtFixedArrayItED2Ev.exit287 ], [ -2147483644, %bb.l ]
  %i.aac = load ptr, ptr %0, align 8, !tbaa !18
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8
  tail call void %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cc) #15, !call_target !41, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  br label %_ZN12dtFixedArrayIhED2Ev.exit

_ZN12dtFixedArrayIhED2Ev.exit:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %._crit_edge, %_ZN12dtFixedArrayItED2Ev.exit289
  %.15 = phi i32 [ %.14, %_ZN12dtFixedArrayItED2Ev.exit289 ], [ -2147483644, %bb.j ], [ -2147483644, %bb.i ], [ -2147483644, %bb.h ], [ -2147483644, %._crit_edge ], [ -2147483644, %bb.k ]
end_hunk_1
