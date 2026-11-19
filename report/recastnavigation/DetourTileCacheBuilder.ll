Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z24dtBuildTileCachePolyMeshP16dtTileCacheAllocR21dtTileCacheContourSetR19dtTileCachePolyMesh:bb.a
  %.0259397.i = phi i1 [ %.2261.ph.i, %bb.bv ], [ false, %._crit_edge402.i ]
  %.1396.i = phi i32 [ %.3.ph.i, %bb.bv ], [ %.0322.i, %._crit_edge402.i ] ; 6 uses
  %.1324395.i = phi i32 [ %.3326.ph.i, %bb.bv ], [ %.0323.i, %._crit_edge402.i ] ; 8 uses
  %i.tl = mul nsw i32 %.0256398.i, 3
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.tm ; 4 uses
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !77 ; 3 uses
  %i.tp = getelementptr i8, ptr %i.tn, i64 2      ; 2 uses
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !77 ; 2 uses
  %i.tr = getelementptr i8, ptr %i.tn, i64 4      ; 2 uses
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !77 ; 2 uses
  %i.tt = icmp eq i16 %i.tk, %i.tq
  br i1 %i.tt, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %.lr.ph401.i
  %i.tu = icmp sgt i32 %.1324395.i, 47
  br i1 %i.tu, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.tv = icmp sgt i32 %.1324395.i, 0
  br i1 %i.tv, label %.lr.ph.preheader.i.i, label %_ZL9pushFronttPtRi.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.br
  %i.tw = shl nuw nsw i32 %.1324395.i, 1
  %i.tx = zext nneg i32 %i.tw to i64              ; 3 uses
  %i.ty = add nsw i32 %.1324395.i, -1
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = shl nuw nsw i64 %i.tz, 1                ; 2 uses
  %i.ub = sub nuw nsw i64 %i.tx, %i.ua
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.ub
  %i.uc = add nsw i64 %i.tx, -2
  %i.ud = sub nsw i64 %i.uc, %i.ua
  %scevgep10.i.i = getelementptr i8, ptr %i.b, i64 %i.ud
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep.i.i, ptr align 2 %scevgep10.i.i, i64 %i.tx, i1 false), !tbaa !77
  br label %_ZL9pushFronttPtRi.exit.i

_ZL9pushFronttPtRi.exit.i:                        ; preds = %.lr.ph.preheader.i.i, %bb.br
  store i16 %i.to, ptr %i.b, align 16, !tbaa !77
  %i.ue = icmp sgt i32 %.1396.i, 0
  br i1 %i.ue, label %.lr.ph.preheader.i310.i, label %_ZL9pushFronttPtRi.exit313.i

.lr.ph.preheader.i310.i:                          ; preds = %_ZL9pushFronttPtRi.exit.i
  %i.uf = shl nuw i32 %.1396.i, 1
  %i.ug = zext i32 %i.uf to i64                   ; 3 uses
  %i.uh = add nsw i32 %.1396.i, -1
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = shl nuw nsw i64 %i.ui, 1                ; 2 uses
  %i.uk = sub nuw nsw i64 %i.ug, %i.uj
  %scevgep.i311.i = getelementptr i8, ptr %i.c, i64 %i.uk
  %i.ul = add nsw i64 %i.ug, -2
  %i.um = sub nsw i64 %i.ul, %i.uj
  %scevgep10.i312.i = getelementptr i8, ptr %i.c, i64 %i.um
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep.i311.i, ptr align 2 %scevgep10.i312.i, i64 %i.ug, i1 false), !tbaa !77
  br label %_ZL9pushFronttPtRi.exit313.i

_ZL9pushFronttPtRi.exit313.i:                     ; preds = %.lr.ph.preheader.i310.i, %_ZL9pushFronttPtRi.exit.i
  store i16 %i.ts, ptr %i.c, align 16, !tbaa !77
  br label %.critedge305.i

bb.bs:                                            ; preds = %.lr.ph401.i
  %i.un = sext i32 %.1324395.i to i64
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
  %3 = zext nneg i32 %.1246.i to i64
  br label %.lr.ph453.preheader.i

.lr.ph430.i:                                      ; preds = %bb.ca, %.lr.ph430.preheader.i
  %indvars.iv504.i = phi i64 [ 0, %.lr.ph430.preheader.i ], [ %indvars.iv.next505.i, %bb.ca ] ; 2 uses
  %.0245427.i = phi i32 [ 0, %.lr.ph430.preheader.i ], [ %.1246.i, %bb.ca ] ; 5 uses
  %.idx563.i = mul nuw nsw i64 %indvars.iv504.i, 6
  %i.wo = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx563.i ; 3 uses
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !77 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 2
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !77 ; 3 uses
  %.not301.i = icmp eq i16 %i.wp, %i.wr
  br i1 %.not301.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.lr.ph430.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !77 ; 3 uses
  %.not302.i = icmp eq i16 %i.wp, %i.wt
  %.not303.i = icmp eq i16 %i.wr, %i.wt
  %or.cond.i = or i1 %.not302.i, %.not303.i
  br i1 %or.cond.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wu = zext i16 %i.wp to i64                   ; 2 uses
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.wu
  %i.ww = load i16, ptr %i.wv, align 2, !tbaa !77
  %i.wx = mul nsw i32 %.0245427.i, 6
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.wy ; 3 uses
  store i16 %i.ww, ptr %i.wz, align 4, !tbaa !77
  %i.xa = zext i16 %i.wr to i64
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.xa
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !77
  %i.xd = getelementptr i8, ptr %i.wz, i64 2
  store i16 %i.xc, ptr %i.xd, align 2, !tbaa !77
  %i.xe = zext i16 %i.wt to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.xe
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !77
  %i.xh = getelementptr i8, ptr %i.wz, i64 4
  store i16 %i.xg, ptr %i.xh, align 4, !tbaa !77
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.wu
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !77
  %i.xk = trunc i16 %i.xj to i8
  %i.xl = sext i32 %.0245427.i to i64
  %i.xm = getelementptr inbounds i8, ptr %i.h, i64 %i.xl
  store i8 %i.xk, ptr %i.xm, align 1, !tbaa !66
  %i.xn = add nsw i32 %.0245427.i, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.lr.ph430.i
  %.1246.i = phi i32 [ %i.xn, %bb.bz ], [ %.0245427.i, %.lr.ph430.i ], [ %.0245427.i, %bb.by ] ; 5 uses
  %indvars.iv.next505.i = add nuw nsw i64 %indvars.iv504.i, 1 ; 2 uses
  %exitcond508.not.i = icmp eq i64 %indvars.iv.next505.i, %wide.trip.count507.i
  br i1 %exitcond508.not.i, label %._crit_edge431.i, label %.lr.ph430.i

.lr.ph453.preheader.i:                            ; preds = %.lr.ph453.preheader.i.lr.ph, %.preheader354.i
  %indvars.iv471 = phi i64 [ %3, %.lr.ph453.preheader.i.lr.ph ], [ %indvars.iv.next472, %.preheader354.i ] ; 4 uses
  %indvars.iv.next472 = add nsw i64 %indvars.iv471, -1 ; 4 uses
  br label %.lr.ph440.i

.loopexit353.i:                                   ; preds = %bb.cd
  %indvars.iv.next517.i = add nuw nsw i64 %indvars.iv516.i, 1 ; 2 uses
  %indvars.iv.next510.i = add nuw nsw i64 %indvars.iv509.i, 1
  %exitcond520.not.i = icmp eq i64 %indvars.iv.next517.i, %indvars.iv.next472
  br i1 %exitcond520.not.i, label %._crit_edge454.i, label %.lr.ph440.i

._crit_edge454.i:                                 ; preds = %.loopexit353.i
  %i.xo = icmp sgt i32 %.2243.i, 0
  br i1 %i.xo, label %.preheader354.i, label %.preheader.i267.loopexit

.lr.ph440.i:                                      ; preds = %.loopexit353.i, %.lr.ph453.preheader.i
  %indvars.iv516.i = phi i64 [ 0, %.lr.ph453.preheader.i ], [ %indvars.iv.next517.i, %.loopexit353.i ] ; 3 uses
  %indvars.iv509.i = phi i64 [ 1, %.lr.ph453.preheader.i ], [ %indvars.iv.next510.i, %.loopexit353.i ] ; 2 uses
  %.0229450.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2231.i, %.loopexit353.i ]
  %.0232449.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2234.i, %.loopexit353.i ]
  %.0235448.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2237.i, %.loopexit353.i ]
  %.0238447.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2240.i, %.loopexit353.i ]
  %.0241446.i = phi i32 [ 0, %.lr.ph453.preheader.i ], [ %.2243.i, %.loopexit353.i ]
  %.idx564.i = mul nuw nsw i64 %indvars.iv516.i, 12
  %i.xp = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx564.i
  %i.xq = trunc nuw nsw i64 %indvars.iv516.i to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %.lr.ph440.i
  %indvars.iv511.i = phi i64 [ %indvars.iv509.i, %.lr.ph440.i ], [ %indvars.iv.next512.i, %bb.cd ] ; 3 uses
  %.1230437.i = phi i32 [ %.0229450.i, %.lr.ph440.i ], [ %.2231.i, %bb.cd ]
  %.1233436.i = phi i32 [ %.0232449.i, %.lr.ph440.i ], [ %.2234.i, %bb.cd ]
  %.1236435.i = phi i32 [ %.0235448.i, %.lr.ph440.i ], [ %.2237.i, %bb.cd ]
  %.1239434.i = phi i32 [ %.0238447.i, %.lr.ph440.i ], [ %.2240.i, %bb.cd ]
  %.1242433.i = phi i32 [ %.0241446.i, %.lr.ph440.i ], [ %.2243.i, %bb.cd ] ; 2 uses
  %.idx565.i = mul nuw nsw i64 %indvars.iv511.i, 12
  %i.xr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx565.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.xs = call fastcc noundef i32 @_ZL17getPolyMergeValuePtS_PKtRiS2_(ptr noundef nonnull %i.xp, ptr noundef nonnull %i.xr, ptr noundef %i.wn, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 2 uses
  %i.xt = icmp sgt i32 %i.xs, %.1242433.i
  br i1 %i.xt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xu = load i32, ptr %i.i, align 4, !tbaa !76
  %i.xv = load i32, ptr %i.j, align 4, !tbaa !76
  %i.xw = trunc nuw nsw i64 %indvars.iv511.i to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.2243.i = phi i32 [ %i.xs, %bb.cc ], [ %.1242433.i, %bb.cb ] ; 3 uses
  %.2240.i = phi i32 [ %i.xq, %bb.cc ], [ %.1239434.i, %bb.cb ] ; 3 uses
  %.2237.i = phi i32 [ %i.xw, %bb.cc ], [ %.1236435.i, %bb.cb ] ; 4 uses
  %.2234.i = phi i32 [ %i.xu, %bb.cc ], [ %.1233436.i, %bb.cb ] ; 3 uses
  %.2231.i = phi i32 [ %i.xv, %bb.cc ], [ %.1230437.i, %bb.cb ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond515.not.i = icmp eq i64 %indvars.iv.next512.i, %indvars.iv471
  br i1 %exitcond515.not.i, label %.loopexit353.i, label %bb.cb

.preheader354.i:                                  ; preds = %._crit_edge454.i
  %i.xx = mul nsw i32 %.2240.i, 6
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.xy
  %i.ya = mul nsw i32 %.2237.i, 6
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.yb ; 2 uses
  call fastcc void @_ZL10mergePolysPtS_ii(ptr noundef nonnull %i.xz, ptr noundef nonnull %i.yc, i32 noundef %.2234.i, i32 noundef %.2231.i)
  %.idx518 = mul nuw nsw i64 %indvars.iv.next472, 12
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.yc, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  %i.yd = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next472
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !66
  %i.yf = sext i32 %.2237.i to i64
  %i.yg = getelementptr inbounds i8, ptr %i.h, i64 %i.yf
  store i8 %i.ye, ptr %i.yg, align 1, !tbaa !66
  %i.yh = icmp sgt i64 %indvars.iv471, 2
  br i1 %i.yh, label %.lr.ph453.preheader.i, label %.lr.ph463.i

.preheader.i267.loopexit:                         ; preds = %._crit_edge454.i
  %5 = trunc nuw nsw i64 %indvars.iv471 to i32
  br label %.preheader.i267

.preheader.i267:                                  ; preds = %.preheader.i267.loopexit, %.preheader354.i.preheader
  %.2247.i.lcssa = phi i32 [ %.1246.i, %.preheader354.i.preheader ], [ %5, %.preheader.i267.loopexit ] ; 2 uses
  %i.yi = icmp sgt i32 %.2247.i.lcssa, 0
  br i1 %i.yi, label %.lr.ph463.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537

.lr.ph463.i:                                      ; preds = %.preheader354.i, %.preheader.i267
  %.2247.i.lcssa531 = phi i32 [ %.2247.i.lcssa, %.preheader.i267 ], [ 1, %.preheader354.i ]
  %wide.trip.count528.i = zext nneg i32 %.2247.i.lcssa531 to i64
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cg
  %indvars.iv.next525.i = add nuw nsw i64 %indvars.iv524.i, 1 ; 2 uses
  %exitcond529.not.i = icmp eq i64 %indvars.iv.next525.i, %wide.trip.count528.i
  br i1 %exitcond529.not.i, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph463.i
  %i.yj = phi i32 [ %i.qg, %.lr.ph463.i ], [ %i.yy, %bb.ce ] ; 2 uses
  %indvars.iv524.i = phi i64 [ 0, %.lr.ph463.i ], [ %indvars.iv.next525.i, %bb.ce ] ; 3 uses
  %.not299.i = icmp slt i32 %i.yj, %.0231.lcssa
  br i1 %.not299.i, label %bb.cg, label %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread537

bb.cg:                                            ; preds = %bb.cf
  %i.yk = mul nuw nsw i64 %indvars.iv524.i, 12
  %i.yl = and i64 %i.yk, 8589934588
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.yl
  %i.ym = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.yn = mul nsw i32 %i.yj, 12
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [2 x i8], ptr %i.ym, i64 %i.yo ; 2 uses
  %i.yq = getelementptr i8, ptr %i.yp, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.yq, i8 -1, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.yp, ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i, i64 12, i1 false), !tbaa !77
  %i.yr = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv524.i
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !66
  %i.yt = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.yu = load i32, ptr %i.bu, align 8, !tbaa !138
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds i8, ptr %i.yt, i64 %i.yv
  store i8 %i.ys, ptr %i.yw, align 1, !tbaa !66
  %i.yx = load i32, ptr %i.bu, align 8, !tbaa !138 ; 2 uses
  %i.yy = add nsw i32 %i.yx, 1                    ; 2 uses
  store i32 %i.yy, ptr %i.bu, align 8, !tbaa !138
  %.not300.i = icmp slt i32 %i.yx, %.0231.lcssa
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
  %i.yz = load i32, ptr %i.bt, align 4, !tbaa !137 ; 2 uses
  %i.za = icmp slt i32 %.0184418, %i.yz
  br i1 %i.za, label %.lr.ph415, label %._crit_edge416

.lr.ph415:                                        ; preds = %.preheader, %.lr.ph415
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %.lr.ph415 ], [ %i.in, %.preheader ] ; 2 uses
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 3 uses
  %i.zb = getelementptr inbounds i8, ptr %i.ae, i64 %indvars.iv.next475
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !66
  %i.zd = getelementptr inbounds i8, ptr %i.ae, i64 %indvars.iv474
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !66
  %i.ze = load i32, ptr %i.bt, align 4, !tbaa !137 ; 2 uses
  %i.zf = sext i32 %i.ze to i64
  %i.zg = icmp slt i64 %indvars.iv.next475, %i.zf
  br i1 %i.zg, label %.lr.ph415, label %._crit_edge416

._crit_edge416:                                   ; preds = %.lr.ph415, %.preheader
  %i.zh = phi i32 [ %i.yz, %.preheader ], [ %i.ze, %.lr.ph415 ]
  %i.zi = add nsw i32 %.0184418, -1
  br label %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread

_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread: ; preds = %._crit_edge416, %bb.af, %._crit_edge20.i, %bb.ae, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit
  %i.zj = phi i32 [ %i.zh, %._crit_edge416 ], [ %i.im, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit ], [ %i.im, %bb.ae ], [ %i.im, %._crit_edge20.i ], [ %i.im, %bb.af ] ; 3 uses
  %.2 = phi i32 [ %i.zi, %._crit_edge416 ], [ %.0184418, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit ], [ %.0184418, %bb.ae ], [ %.0184418, %._crit_edge20.i ], [ %.0184418, %bb.af ]
  %i.zk = add nsw i32 %.2, 1                      ; 2 uses
  %.not260 = icmp slt i32 %i.zk, %i.zj
  br i1 %.not260, label %bb.ae, label %.thread341

.thread341:                                       ; preds = %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread, %.critedge.preheader
  %i.zl = phi i32 [ %i.da, %.critedge.preheader ], [ %i.zj, %_ZL15canRemoveVertexR19dtTileCachePolyMesht.exit.thread ]
  %i.zm = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.zn = load i32, ptr %i.bu, align 8, !tbaa !138
  %i.zo = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.zp = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyP16dtTileCacheAllocPtiPKtiRK21dtTileCacheContourSet(ptr noundef nonnull %0, ptr noundef %i.zm, i32 noundef %i.zn, ptr noundef %i.zo, i32 noundef %i.zl, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %. = select i1 %i.zp, i32 1073741824, i32 -2147483644
  br label %_ZN12dtFixedArrayItED2Ev.exit

_ZN12dtFixedArrayItED2Ev.exit:                    ; preds = %bb.ad, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread, %.thread341, %bb.o
  %.11 = phi i32 [ -2147483644, %bb.o ], [ %., %.thread341 ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread ], [ -2147483632, %_ZL12removeVertexR19dtTileCachePolyMeshti.exit.thread534 ], [ -2147483632, %bb.ad ]
  %i.zq = load ptr, ptr %0, align 8, !tbaa !18
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.zs = load ptr, ptr %i.zr, align 8
  tail call void %i.zs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cw) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit285

_ZN12dtFixedArrayItED2Ev.exit285:                 ; preds = %bb.n, %_ZN12dtFixedArrayItED2Ev.exit
  %.12 = phi i32 [ %.11, %_ZN12dtFixedArrayItED2Ev.exit ], [ -2147483644, %bb.n ]
  %i.zt = load ptr, ptr %0, align 8, !tbaa !18
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  %i.zv = load ptr, ptr %i.zu, align 8
  tail call void %i.zv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cp) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit287

_ZN12dtFixedArrayItED2Ev.exit287:                 ; preds = %bb.m, %_ZN12dtFixedArrayItED2Ev.exit285
  %.13 = phi i32 [ %.12, %_ZN12dtFixedArrayItED2Ev.exit285 ], [ -2147483644, %bb.m ]
  %i.zw = load ptr, ptr %0, align 8, !tbaa !18
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 32
  %i.zy = load ptr, ptr %i.zx, align 8
  tail call void %i.zy(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ci) #15, !call_target !41, !inline_history !3
  br label %_ZN12dtFixedArrayItED2Ev.exit289

_ZN12dtFixedArrayItED2Ev.exit289:                 ; preds = %bb.l, %_ZN12dtFixedArrayItED2Ev.exit287
  %.14 = phi i32 [ %.13, %_ZN12dtFixedArrayItED2Ev.exit287 ], [ -2147483644, %bb.l ]
  %i.zz = load ptr, ptr %0, align 8, !tbaa !18
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8
  tail call void %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cc) #15, !call_target !41, !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  br label %_ZN12dtFixedArrayIhED2Ev.exit

_ZN12dtFixedArrayIhED2Ev.exit:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %._crit_edge, %_ZN12dtFixedArrayItED2Ev.exit289
  %.15 = phi i32 [ %.14, %_ZN12dtFixedArrayItED2Ev.exit289 ], [ -2147483644, %bb.j ], [ -2147483644, %bb.i ], [ -2147483644, %bb.h ], [ -2147483644, %._crit_edge ], [ -2147483644, %bb.k ]
  %i.aac = load ptr, ptr %0, align 8, !tbaa !18
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8
  tail call void %i.aae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ae) #15, !call_target !41, !inline_history !4
  ret i32 %.15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL11triangulateiPKhPtS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge140

.preheader128:                                    ; preds = %bb.c
  %i.b = icmp sgt i32 %0, 3
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge140

.preheader.preheader:                             ; preds = %.preheader128
  %scevgep146 = getelementptr i8, ptr %2, i64 2
  %i.c = add nsw i32 %0, -2
  %i.d = zext nneg i32 %0 to i64
  %i.e = add nsw i32 %0, -4
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0108131 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = add nuw nsw i32 %.0108131, 1             ; 4 uses
  %i.g = icmp slt i32 %i.f, %0
  %i.h = select i1 %i.g, i32 %i.f, i32 0          ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = icmp slt i32 %i.i, %0
  %i.k = select i1 %i.j, i32 %i.i, i32 0
  %i.l = tail call fastcc noundef zeroext i1 @_ZL8diagonaliiiPKhPKt(i32 noundef %.0108131, i32 noundef %i.k, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !77
  %i.p = or i16 %i.o, -32768
  store i16 %i.p, ptr %i.n, align 2, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %exitcond.not = icmp eq i32 %i.f, %0
  br i1 %exitcond.not, label %.preheader128, label %.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %indvars.iv151 = phi i64 [ %i.d, %.preheader.preheader ], [ %indvars.iv.next152, %bb.i ] ; 6 uses
  %.0109139 = phi ptr [ %3, %.preheader.preheader ], [ %i.cc, %bb.i ] ; 4 uses
  %.0111138 = phi i32 [ 0, %.preheader.preheader ], [ %i.cd, %bb.i ] ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %.not121 = icmp eq i32 %.2, -1
  br i1 %.not121, label %.thread, label %bb.h
end_hunk_0
