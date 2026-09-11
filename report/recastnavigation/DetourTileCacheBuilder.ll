Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourTileCacheBuilder?download=true
inline.NumInlined: 236
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_Z23dtBuildTileCacheRegionsP16dtTileCacheAllocR16dtTileCacheLayeri:bb.a
  br i1 %lcmp.mod580.not, label %._crit_edge367, label %.lr.ph366.epil.preheader

.lr.ph366.epil.preheader:                         ; preds = %._crit_edge367.loopexit.unr-lcssa, %.lr.ph366.preheader
  %indvars.iv446.epil.init = phi i64 [ 0, %.lr.ph366.preheader ], [ %indvars.iv.next447.3, %._crit_edge367.loopexit.unr-lcssa ]
  %lcmp.mod581 = icmp ne i64 %xtraiter578, 0
  tail call void @llvm.assume(i1 %lcmp.mod581)
  br label %.lr.ph366.epil

.lr.ph366.epil:                                   ; preds = %.lr.ph366.epil, %.lr.ph366.epil.preheader
  %indvars.iv446.epil = phi i64 [ %indvars.iv446.epil.init, %.lr.ph366.epil.preheader ], [ %indvars.iv.next447.epil, %.lr.ph366.epil ] ; 2 uses
  %epil.iter579 = phi i64 [ 0, %.lr.ph366.epil.preheader ], [ %epil.iter579.next, %.lr.ph366.epil ]
  %i.ta = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv446.epil
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 21 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !119
  %i.td = zext i8 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !66
  store i8 %i.tf, ptr %i.tb, align 1, !tbaa !119
  %indvars.iv.next447.epil = add nuw nsw i64 %indvars.iv446.epil, 1
  %epil.iter579.next = add i64 %epil.iter579, 1   ; 2 uses
  %epil.iter579.cmp.not = icmp eq i64 %epil.iter579.next, %xtraiter578
  br i1 %epil.iter579.cmp.not, label %._crit_edge367, label %.lr.ph366.epil, !llvm.loop !111

._crit_edge367:                                   ; preds = %._crit_edge367.loopexit.unr-lcssa, %.lr.ph366.epil, %.preheader
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %.5.1, ptr %i.tg, align 8, !tbaa !72
  %i.th = mul nuw nsw i32 %i.i, %i.f              ; 4 uses
  %.not382 = icmp eq i32 %i.th, 0
  br i1 %.not382, label %._crit_edge371, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %._crit_edge367
  %wide.trip.count454 = zext nneg i32 %i.th to i64 ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count454, 1
  %i.ti = icmp eq i32 %i.th, 1
  br i1 %i.ti, label %.lr.ph370.epil.preheader, label %.lr.ph370.preheader.new

.lr.ph370.preheader.new:                          ; preds = %.lr.ph370.preheader
  %unroll_iter588 = and i64 %wide.trip.count454, 65534
  br label %.lr.ph370

.lr.ph366:                                        ; preds = %.lr.ph366, %.lr.ph366.preheader.new
  %indvars.iv446 = phi i64 [ 0, %.lr.ph366.preheader.new ], [ %indvars.iv.next447.3, %.lr.ph366 ] ; 5 uses
  %niter583 = phi i64 [ 0, %.lr.ph366.preheader.new ], [ %niter583.next.3, %.lr.ph366 ]
  %i.tj = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv446
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 21 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !119
  %i.tm = zext i8 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !66
  store i8 %i.to, ptr %i.tk, align 1, !tbaa !119
  %i.tp = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv446
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 45 ; 2 uses
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !119
  %i.ts = zext i8 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !66
  store i8 %i.tu, ptr %i.tq, align 1, !tbaa !119
  %i.tv = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv446
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 69 ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !119
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !66
  store i8 %i.ua, ptr %i.tw, align 1, !tbaa !119
  %i.ub = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv446
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 93 ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !119
  %i.ue = zext i8 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !66
  store i8 %i.ug, ptr %i.uc, align 1, !tbaa !119
  %indvars.iv.next447.3 = add nuw nsw i64 %indvars.iv446, 4 ; 2 uses
  %niter583.next.3 = add i64 %niter583, 4         ; 2 uses
  %niter583.ncmp.3 = icmp eq i64 %niter583.next.3, %unroll_iter582
  br i1 %niter583.ncmp.3, label %._crit_edge367.loopexit.unr-lcssa, label %.lr.ph366

._crit_edge371.loopexit.unr-lcssa:                ; preds = %bb.bc
  %lcmp.mod586.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod586.not, label %._crit_edge371, label %.lr.ph370.epil.preheader

.lr.ph370.epil.preheader:                         ; preds = %._crit_edge371.loopexit.unr-lcssa, %.lr.ph370.preheader
  %indvars.iv451.epil.init = phi i64 [ 0, %.lr.ph370.preheader ], [ %indvars.iv.next452.1, %._crit_edge371.loopexit.unr-lcssa ]
  %lcmp.mod587 = trunc i32 %i.th to i1
  tail call void @llvm.assume(i1 %lcmp.mod587)
  %i.uh = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %indvars.iv451.epil.init ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !66  ; 2 uses
  %.not241.epil = icmp eq i8 %i.uj, -1
  br i1 %.not241.epil, label %._crit_edge371, label %bb.az

bb.az:                                            ; preds = %.lr.ph370.epil.preheader
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 21
  %i.un = load i8, ptr %i.um, align 1, !tbaa !119
  store i8 %i.un, ptr %i.ui, align 1, !tbaa !66
  br label %._crit_edge371

._crit_edge371:                                   ; preds = %._crit_edge371.loopexit.unr-lcssa, %bb.az, %.lr.ph370.epil.preheader, %._crit_edge367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN12dtFixedArrayI21dtLayerMonotoneRegionED2Ev.exit

.lr.ph370:                                        ; preds = %bb.bc, %.lr.ph370.preheader.new
  %indvars.iv451 = phi i64 [ 0, %.lr.ph370.preheader.new ], [ %indvars.iv.next452.1, %bb.bc ] ; 3 uses
  %niter589 = phi i64 [ 0, %.lr.ph370.preheader.new ], [ %niter589.next.1, %bb.bc ]
  %i.uo = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %indvars.iv451 ; 2 uses
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !66  ; 2 uses
  %.not241 = icmp eq i8 %i.uq, -1
  br i1 %.not241, label %.lr.ph370.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph370
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 21
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !119
  store i8 %i.uu, ptr %i.up, align 1, !tbaa !66
  br label %.lr.ph370.1

.lr.ph370.1:                                      ; preds = %.lr.ph370, %bb.ba
  %i.uv = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %indvars.iv451
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 1 ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !66  ; 2 uses
  %.not241.1 = icmp eq i8 %i.uy, -1
  br i1 %.not241.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph370.1
  %i.uz = zext i8 %i.uy to i64
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 21
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !119
  store i8 %i.vc, ptr %i.ux, align 1, !tbaa !66
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph370.1
  %indvars.iv.next452.1 = add nuw nsw i64 %indvars.iv451, 2 ; 2 uses
  %niter589.next.1 = add i64 %niter589, 2         ; 2 uses
  %niter589.ncmp.1 = icmp eq i64 %niter589.next.1, %unroll_iter588
  br i1 %niter589.ncmp.1, label %._crit_edge371.loopexit.unr-lcssa, label %.lr.ph370

_ZN12dtFixedArrayI21dtLayerMonotoneRegionED2Ev.exit: ; preds = %.critedge254.thread, %._crit_edge371
  %.3225 = phi i32 [ 1073741824, %._crit_edge371 ], [ -2147483644, %.critedge254.thread ]
  %i.vd = load ptr, ptr %0, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load ptr, ptr %i.ve, align 8
  tail call void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fc) #15, !call_target !41, !inline_history !112
  br label %.critedge254

.critedge254:                                     ; preds = %bb.y, %_ZN12dtFixedArrayI21dtLayerMonotoneRegionED2Ev.exit
  %.4226 = phi i32 [ %.3225, %_ZN12dtFixedArrayI21dtLayerMonotoneRegionED2Ev.exit ], [ -2147483632, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN12dtFixedArrayI16dtLayerSweepSpanED2Ev.exit

_ZN12dtFixedArrayI16dtLayerSweepSpanED2Ev.exit:   ; preds = %bb.a, %.critedge254
  %.5227 = phi i32 [ %.4226, %.critedge254 ], [ -2147483644, %bb.a ]
  %i.vg = load ptr, ptr %0, align 8, !tbaa !18
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vi = load ptr, ptr %i.vh, align 8
  tail call void %i.vi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.s) #15, !call_target !41, !inline_history !113
  ret i32 %.5227
}

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483631) i32 @_Z24dtBuildTileCacheContoursP16dtTileCacheAllocR16dtTileCacheLayerifR21dtTileCacheContourSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, float noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 4, !tbaa !62    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.e = load i8, ptr %i.d, align 1, !tbaa !63    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !72    ; 2 uses
  %i.h = zext i8 %i.g to i32
  store i32 %i.h, ptr %4, align 8, !tbaa !46
  %i.i = zext i8 %i.g to i64
  %i.j = mul nuw nsw i64 %i.i, 24
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.j) #15, !call_target !28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext i8 %i.e to i32
  %i.q = zext i8 %i.c to i32
  %i.r = load i32, ptr %4, align 8, !tbaa !46
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.t, i1 false)
  %i.u = add nuw nsw i32 %i.p, %i.q               ; 3 uses
  %i.v = shl nuw nsw i32 %i.u, 2
  %i.w = shl nuw nsw i32 %i.u, 4
  %i.x = zext nneg i32 %i.w to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.x) #15, !call_target !28, !inline_history !1 ; 31 uses
  %.not88 = icmp eq ptr %i.ab, null
  br i1 %.not88, label %_ZN12dtFixedArrayIhED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = shl nuw nsw i32 %i.u, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ad) #15, !call_target !28, !inline_history !2 ; 20 uses
  %.not89 = icmp eq ptr %i.ah, null
  br i1 %.not89, label %_ZN12dtFixedArrayItED2Ev.exit, label %.preheader153

.preheader153:                                    ; preds = %bb.c
  %.not91165.not = icmp eq i8 %i.e, 0
  br i1 %.not91165.not, label %_ZN12dtFixedArrayItED2Ev.exit, label %.preheader151.lr.ph

.preheader151.lr.ph:                              ; preds = %.preheader153
  %.not92160.not = icmp eq i8 %i.c, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aq = fmul float %3, %3
  %scevgep235.i = getelementptr i8, ptr %i.ah, i64 -2
  br i1 %.not92160.not, label %_ZN12dtFixedArrayItED2Ev.exit, label %.preheader151.preheader

.preheader151.preheader:                          ; preds = %.preheader151.lr.ph
  %i.ar = zext i8 %i.c to i64                     ; 2 uses
  %wide.trip.count192 = zext i8 %i.e to i64
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.preheader, %._ZL11walkContourR16dtTileCacheLayeriiR13dtTempContour.exit.thread145_crit_edge
  %indvars.iv189 = phi i64 [ 0, %.preheader151.preheader ], [ %indvars.iv.next190, %._ZL11walkContourR16dtTileCacheLayeriiR13dtTempContour.exit.thread145_crit_edge ] ; 5 uses
  %indvars191 = trunc i64 %indvars.iv189 to i32   ; 10 uses
  %i.as = mul nuw nsw i64 %indvars.iv189, %i.ar
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.at = add nuw nsw i32 %indvars191, 1          ; 2 uses
  %i.au = trunc i64 %indvars.iv189 to i32
  %i.av = add i32 %i.au, -1
  %i.aw = add nsw i32 %indvars191, -1
  %i.ax = add nsw i32 %indvars191, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader151, %.loopexit
  %indvars.iv184 = phi i64 [ 0, %.preheader151 ], [ %indvars.iv.next185, %.loopexit ] ; 8 uses
  %indvars186 = trunc i64 %indvars.iv184 to i32   ; 11 uses
  %i.ay = add nuw nsw i64 %indvars.iv184, %i.as   ; 2 uses
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !66  ; 3 uses
  %i.bc = icmp eq i8 %i.bb, -1
  br i1 %i.bc, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.be = zext i8 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !73
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i8 %i.bb, ptr %i.bi, align 8, !tbaa !127
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ay
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 17
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !74
  %i.bn = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !62  ; 2 uses
  %i.bq = zext i8 %i.bp to i32                    ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 49
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !63
  %i.bt = zext i8 %i.bs to i32                    ; 4 uses
  %i.bu = mul nuw nsw i32 %indvars191, %i.bq      ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = add nuw nsw i64 %indvars.iv184, %i.bv   ; 3 uses
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !66  ; 4 uses
  %i.ca = and i8 %i.bz, 15                        ; 3 uses
  %i.cb = zext nneg i8 %i.ca to i32               ; 6 uses
  %i.cc = load ptr, ptr %i.ai, align 8            ; 9 uses
  %i.cd = lshr i8 %i.bz, 4
  %i.ce = zext nneg i8 %i.cd to i32               ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bw
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !66  ; 8 uses
  %i.ch = icmp samesign ult i8 %i.ca, 8
  br i1 %i.ch, label %bb.p, label %bb.q

bb.g:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.i
  %i.ci = and i32 %i.cb, 1
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = sext i32 %i.bu to i64
  %i.cl = getelementptr i8, ptr %i.cc, i64 %indvars.iv184
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ck
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.1.i

bb.i:                                             ; preds = %bb.g
  %i.cp = and i32 %i.ce, 1
  %.not.i.1.i = icmp eq i32 %i.cp, 0
  %spec.select.i = select i1 %.not.i.1.i, i8 -1, i8 -8
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.1.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.1.i: ; preds = %bb.i, %bb.h
  %.0.i.1.i = phi i8 [ %spec.select.i, %bb.i ], [ %i.co, %bb.h ]
  %.not.1.i = icmp eq i8 %.0.i.1.i, %i.cg
  br i1 %.not.1.i, label %bb.j, label %bb.s

bb.j:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.1.i
  %i.cq = and i32 %i.cb, 2
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = zext i8 %i.bp to i64
  %i.ct = mul nuw nsw i64 %indvars.iv.next190, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv184
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.2.i

bb.l:                                             ; preds = %bb.j
  %i.cx = and i32 %i.ce, 2
  %.not.i.2.i = icmp eq i32 %i.cx, 0
  %spec.select145.i = select i1 %.not.i.2.i, i8 -1, i8 -7
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.2.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.2.i: ; preds = %bb.l, %bb.k
  %.0.i.2.i = phi i8 [ %spec.select145.i, %bb.l ], [ %i.cw, %bb.k ]
  %.not.2.i = icmp eq i8 %.0.i.2.i, %i.cg
  br i1 %.not.2.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.2.i
  %i.cy = and i32 %i.cb, 4
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv184
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.bv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i

bb.o:                                             ; preds = %bb.m
  %i.de = and i32 %i.ce, 4
  %.not.i.3.i = icmp eq i32 %i.de, 0
  %spec.select146.i = select i1 %.not.i.3.i, i8 -1, i8 -6
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i: ; preds = %bb.o, %bb.n
  %.0.i.3.i = phi i8 [ %spec.select146.i, %bb.o ], [ %i.dd, %bb.n ]
  %.not.3.i = icmp eq i8 %.0.i.3.i, %i.cg
  br i1 %.not.3.i, label %bb.bd, label %bb.t

bb.p:                                             ; preds = %bb.f
  %.not.i.i = icmp sgt i8 %i.bz, -1
  %spec.select147.i = select i1 %.not.i.i, i8 -1, i8 -5
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.i

bb.q:                                             ; preds = %bb.f
  %i.df = mul nsw i32 %i.av, %i.bq
  %i.dg = add nsw i32 %i.df, %indvars186
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.cc, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i = phi i8 [ %spec.select147.i, %bb.p ], [ %i.dj, %bb.q ]
  %.not.i = icmp eq i8 %.0.i.i, %i.cg
  br i1 %.not.i, label %bb.g, label %bb.r

bb.r:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.i
  %i.dk = mul nuw nsw i32 %i.bt, %i.bq            ; 3 uses
  %.not131.i.jt3 = icmp eq i32 %i.dk, 0
  br i1 %.not131.i.jt3, label %.thread119.i, label %.lr.ph.i.jt3

bb.s:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.1.i
  %i.dl = mul nuw nsw i32 %i.bt, %i.bq            ; 3 uses
  %.not131.i.jt0 = icmp eq i32 %i.dl, 0
  br i1 %.not131.i.jt0, label %.thread119.i, label %.lr.ph.i.jt0

bb.t:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i
  %i.dm = mul nuw nsw i32 %i.bt, %i.bq            ; 3 uses
  %.not131.i.jt2 = icmp eq i32 %i.dm, 0
  br i1 %.not131.i.jt2, label %.thread119.i, label %.lr.ph.i.jt2

bb.u:                                             ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.2.i
  %i.dn = mul nuw nsw i32 %i.bt, %i.bq            ; 3 uses
  %.not131.i.jt1 = icmp eq i32 %i.dn, 0
  br i1 %.not131.i.jt1, label %.thread119.i, label %.lr.ph.i.jt1

.lr.ph.i.jt3:                                     ; preds = %bb.r
  %i.do = icmp samesign ult i8 %i.ca, 8
  br i1 %i.do, label %bb.z, label %bb.v

.lr.ph.i.jt0:                                     ; preds = %bb.s
  %i.dp = and i32 %i.cb, 1
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %bb.w

.lr.ph.i.jt2:                                     ; preds = %bb.t
  %i.dr = and i32 %i.cb, 4
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ab, label %bb.x

.lr.ph.i.jt1:                                     ; preds = %bb.u
  %i.dt = and i32 %i.cb, 2
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.y

bb.v:                                             ; preds = %.lr.ph.i.jt3
  %i.dv = mul nsw i32 %i.aw, %i.bq
  %i.dw = add nsw i32 %i.dv, %indvars186
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.cc, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3

bb.w:                                             ; preds = %.lr.ph.i.jt0
  %i.ea = add nsw i32 %indvars186, -1
  %i.eb = mul nsw i32 %indvars191, %i.bq
  %i.ec = add nsw i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.cc, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0

bb.x:                                             ; preds = %.lr.ph.i.jt2
  %i.eg = add nsw i32 %indvars186, 1
  %i.eh = mul nsw i32 %indvars191, %i.bq
  %i.ei = add nsw i32 %i.eg, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.cc, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2

bb.y:                                             ; preds = %.lr.ph.i.jt1
  %i.em = mul nsw i32 %i.ax, %i.bq
  %i.en = add nsw i32 %i.em, %indvars186
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.cc, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1

bb.z:                                             ; preds = %.lr.ph.i.jt3
  %.not.i106.peel.i.jt3 = icmp sgt i8 %i.bz, -1
  %spec.select218.a = select i1 %.not.i106.peel.i.jt3, i8 -1, i8 -5
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3

bb.aa:                                            ; preds = %.lr.ph.i.jt0
  %i.er = and i32 %i.ce, 1
  %.not.i106.peel.i.jt0 = icmp eq i32 %i.er, 0
  %spec.select219 = select i1 %.not.i106.peel.i.jt0, i8 -1, i8 -8
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0

bb.ab:                                            ; preds = %.lr.ph.i.jt2
  %i.es = and i32 %i.ce, 4
  %.not.i106.peel.i.jt2 = icmp eq i32 %i.es, 0
  %spec.select220 = select i1 %.not.i106.peel.i.jt2, i8 -1, i8 -6
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2

bb.ac:                                            ; preds = %.lr.ph.i.jt1
  %i.et = and i32 %i.ce, 2
  %.not.i106.peel.i.jt1 = icmp eq i32 %i.et, 0
  %spec.select221 = select i1 %.not.i106.peel.i.jt1, i8 -1, i8 -7
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3: ; preds = %bb.z, %bb.v
  %.0.i105.peel.i.jt3 = phi i8 [ %spec.select218.a, %bb.z ], [ %i.dz, %bb.v ] ; 2 uses
  %.not102.peel.i.jt3 = icmp eq i8 %.0.i105.peel.i.jt3, %i.cg
  br i1 %.not102.peel.i.jt3, label %bb.af, label %.thread.peel.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0: ; preds = %bb.aa, %bb.w
  %.0.i105.peel.i.jt0 = phi i8 [ %spec.select219, %bb.aa ], [ %i.ef, %bb.w ] ; 2 uses
  %.not102.peel.i.jt0 = icmp eq i8 %.0.i105.peel.i.jt0, %i.cg
  br i1 %.not102.peel.i.jt0, label %bb.af, label %.thread.peel.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2: ; preds = %bb.ab, %bb.x
  %.0.i105.peel.i.jt2 = phi i8 [ %spec.select220, %bb.ab ], [ %i.el, %bb.x ] ; 2 uses
  %.not102.peel.i.jt2 = icmp eq i8 %.0.i105.peel.i.jt2, %i.cg
  br i1 %.not102.peel.i.jt2, label %bb.af, label %bb.ad

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1: ; preds = %bb.ac, %bb.y
  %.0.i105.peel.i.jt1 = phi i8 [ %spec.select221, %bb.ac ], [ %i.eq, %bb.y ] ; 2 uses
  %.not102.peel.i.jt1 = icmp eq i8 %.0.i105.peel.i.jt1, %i.cg
  br i1 %.not102.peel.i.jt1, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2
  %i.eu = add nuw nsw i32 %indvars186, 1
  br label %.thread.peel.i

bb.ae:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1
  %i.ev = add nuw nsw i32 %indvars186, 1
  br label %.thread.peel.i

default.unreachable:                              ; preds = %bb.ak
  unreachable

.thread.peel.i:                                   ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3, %bb.ad, %bb.ae
  %.0.i105.peel.i213 = phi i8 [ %.0.i105.peel.i.jt1, %bb.ae ], [ %.0.i105.peel.i.jt3, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ %.0.i105.peel.i.jt2, %bb.ad ], [ %.0.i105.peel.i.jt0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ]
  %i.ew = phi i32 [ %i.dn, %bb.ae ], [ %i.dk, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ %i.dm, %bb.ad ], [ %i.dl, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ]
  %.293.ph.i211 = phi i32 [ 1, %bb.ae ], [ 3, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ 2, %bb.ad ], [ 0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ]
  %.080.peel.i = phi i32 [ %i.ev, %bb.ae ], [ %indvars186, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ %i.eu, %bb.ad ], [ %indvars186, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ]
  %.0.peel.i = phi i32 [ %i.at, %bb.ae ], [ %indvars191, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ %indvars191, %bb.ad ], [ %i.at, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ]
  %i.ex = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.bw
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !66
  %i.fa = trunc i32 %.080.peel.i to i8
  store i8 %i.fa, ptr %i.ab, align 1, !tbaa !66
  store i8 %i.ez, ptr %i.am, align 1, !tbaa !66
  %i.fb = trunc i32 %.0.peel.i to i8
  store i8 %i.fb, ptr %i.an, align 1, !tbaa !66
  store i8 %.0.i105.peel.i213, ptr %i.ao, align 1, !tbaa !66
  br label %bb.ag

bb.af:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1
  %i.fc = phi i32 [ %i.dk, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ %i.dl, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ], [ %i.dm, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2 ], [ %i.dn, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1 ]
  %.293.ph.i210 = phi i32 [ 3, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt3 ], [ 0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt0 ], [ 2, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt2 ], [ 1, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.peel.i.jt1 ] ; 2 uses
  %i.fd = zext nneg i32 %.293.ph.i210 to i64      ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetXi.offset, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !76
  %i.fg = add nsw i32 %i.ff, %indvars186
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetYi.offset, i64 %i.fd
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !76
  %i.fj = add nsw i32 %i.fi, %indvars191
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.peel.i
  %i.fk = phi i32 [ %i.fc, %bb.af ], [ %i.ew, %.thread.peel.i ] ; 2 uses
  %.293.ph.i212 = phi i32 [ %.293.ph.i210, %bb.af ], [ %.293.ph.i211, %.thread.peel.i ] ; 2 uses
  %.sroa.12.0 = phi i32 [ 0, %bb.af ], [ 1, %.thread.peel.i ] ; 2 uses
  %.sink.i = phi i32 [ 3, %bb.af ], [ 1, %.thread.peel.i ]
  %.083.peel.i = phi i32 [ %i.fg, %bb.af ], [ %indvars186, %.thread.peel.i ]
  %.082.peel.i = phi i32 [ %i.fj, %bb.af ], [ %indvars191, %.thread.peel.i ]
  %exitcond.peel.not.i = icmp eq i32 %i.fk, 1
  br i1 %exitcond.peel.not.i, label %.thread119.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.ag
  %i.fl = add nuw nsw i32 %.sink.i, %.293.ph.i212
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.thread.i
  %.sroa.12.1 = phi i32 [ %.sroa.12.2, %.thread.i ], [ %.sroa.12.0, %.peel.next.i.preheader ] ; 8 uses
  %.084129.i = phi i32 [ %i.je, %.thread.i ], [ 1, %.peel.next.i.preheader ]
  %.086128.in.i = phi i32 [ %i.iy, %.thread.i ], [ %i.fl, %.peel.next.i.preheader ]
  %.097127.i = phi i32 [ %.082.i, %.thread.i ], [ %.082.peel.i, %.peel.next.i.preheader ] ; 12 uses
  %.099126.i = phi i32 [ %.083.i, %.thread.i ], [ %.083.peel.i, %.peel.next.i.preheader ] ; 12 uses
  %.086128.i = and i32 %.086128.in.i, 3           ; 7 uses
  %i.fm = load ptr, ptr %1, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !62
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = mul nsw i32 %.097127.i, %i.fp
  %i.fr = add nsw i32 %i.fq, %.099126.i
  %i.fs = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.ft = sext i32 %i.fr to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !66  ; 2 uses
  %i.fw = and i8 %i.fv, 15
  %i.fx = shl nuw nsw i32 1, %.086128.i           ; 2 uses
  %i.fy = zext nneg i8 %i.fw to i32
  %i.fz = and i32 %i.fx, %i.fy
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.peel.next.i
  %i.gb = lshr i8 %i.fv, 4
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = and i32 %i.fx, %i.gc
  %.not.i106.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i106.i, label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ge = trunc nuw nsw i32 %.086128.i to i8
  %i.gf = or disjoint i8 %i.ge, -8
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i

bb.aj:                                            ; preds = %.peel.next.i
  %i.gg = zext nneg i32 %.086128.i to i64         ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetXi.offset, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !76
  %i.gj = add nsw i32 %i.gi, %.099126.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetYi.offset, i64 %i.gg
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !76
  %i.gm = add nsw i32 %i.gl, %.097127.i
  %i.gn = mul nsw i32 %i.gm, %i.fp
  %i.go = add nsw i32 %i.gj, %i.gn
  %i.gp = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.gq = sext i32 %i.go to i64
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !66
  br label %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i

_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i105.i = phi i8 [ %i.gf, %bb.ai ], [ %i.gs, %bb.aj ], [ -1, %bb.ah ] ; 3 uses
  %i.gt = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.gu = mul nsw i32 %.097127.i, %i.bq
  %i.gv = add nsw i32 %i.gu, %.099126.i
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !66
  %.not102.i = icmp eq i8 %.0.i105.i, %i.gy
  br i1 %.not102.i, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i
  switch i32 %.086128.i, label %default.unreachable [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gz = add nsw i32 %.097127.i, 1
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.ha = add nsw i32 %.099126.i, 1
  %i.hb = add nsw i32 %.097127.i, 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.hc = add nsw i32 %.099126.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.080.i = phi i32 [ %.099126.i, %bb.ak ], [ %.099126.i, %bb.al ], [ %i.ha, %bb.am ], [ %i.hc, %bb.an ] ; 3 uses
  %.0.i = phi i32 [ %.097127.i, %bb.ak ], [ %i.gz, %bb.al ], [ %i.hb, %bb.am ], [ %.097127.i, %bb.an ] ; 3 uses
  %i.hd = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gw
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !66  ; 3 uses
  %i.hg = icmp sgt i32 %.sroa.12.1, 1
  br i1 %i.hg, label %bb.ap, label %.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hh = shl i32 %.sroa.12.1, 2                  ; 2 uses
  %i.hi = add i32 %i.hh, -8
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hj ; 2 uses
  %i.hl = add i32 %i.hh, -4
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.hm ; 7 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 3
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !66
  %i.hq = icmp eq i8 %.0.i105.i, %i.hp
  br i1 %i.hq, label %bb.aq, label %.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hr = load i8, ptr %i.hk, align 1, !tbaa !66
  %i.hs = load i8, ptr %i.hn, align 1, !tbaa !66  ; 2 uses
  %i.ht = icmp eq i8 %i.hr, %i.hs
  %i.hu = zext i8 %i.hs to i32
  %i.hv = icmp eq i32 %.080.i, %i.hu
  %or.cond.i.i = and i1 %i.ht, %i.hv
  br i1 %or.cond.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.hf, ptr %i.hw, align 1, !tbaa !66
  %i.hx = trunc i32 %.0.i to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !66
  br label %.thread.i

bb.as:                                            ; preds = %bb.aq
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !66
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !66  ; 2 uses
  %i.id = icmp eq i8 %i.ia, %i.ic
  %i.ie = zext i8 %i.ic to i32
  %i.if = icmp eq i32 %.0.i, %i.ie
  %or.cond42.i.i = and i1 %i.id, %i.if
  br i1 %or.cond42.i.i, label %bb.at, label %.thread.i.i

bb.at:                                            ; preds = %bb.as
  %i.ig = trunc i32 %.080.i to i8
  store i8 %i.ig, ptr %i.hn, align 1, !tbaa !66
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.hf, ptr %i.ih, align 1, !tbaa !66
  br label %.thread.i

.thread.i.i:                                      ; preds = %bb.as, %bb.ap, %bb.ao
  %.not.i108.i = icmp slt i32 %.sroa.12.1, %i.v
  br i1 %.not.i108.i, label %bb.au, label %_ZN12dtFixedArrayItED2Ev.exit

bb.au:                                            ; preds = %.thread.i.i
  %i.ii = shl nsw i32 %.sroa.12.1, 2
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ab, i64 %i.ij ; 4 uses
  %i.il = trunc i32 %.080.i to i8
  store i8 %i.il, ptr %i.ik, align 1, !tbaa !66
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 %i.hf, ptr %i.im, align 1, !tbaa !66
  %i.in = trunc i32 %.0.i to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i8 %i.in, ptr %i.io, align 1, !tbaa !66
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  store i8 %.0.i105.i, ptr %i.ip, align 1, !tbaa !66
  %i.iq = add nsw i32 %.sroa.12.1, 1
  br label %.thread.i

bb.av:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit107.i
  %i.ir = zext nneg i32 %.086128.i to i64         ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetXi.offset, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !76
  %i.iu = add nsw i32 %i.it, %.099126.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr @__const._Z13getDirOffsetYi.offset, i64 %i.ir
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !76
  %i.ix = add nsw i32 %i.iw, %.097127.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.ar
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %bb.av ], [ %.sroa.12.1, %bb.ar ], [ %.sroa.12.1, %bb.at ], [ %i.iq, %bb.au ] ; 2 uses
  %.sink149.i = phi i32 [ 3, %bb.av ], [ 1, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.au ]
  %.083.i = phi i32 [ %i.iu, %bb.av ], [ %.099126.i, %bb.ar ], [ %.099126.i, %bb.at ], [ %.099126.i, %bb.au ]
  %.082.i = phi i32 [ %i.ix, %bb.av ], [ %.097127.i, %bb.ar ], [ %.097127.i, %bb.at ], [ %.097127.i, %bb.au ]
  %i.iy = add nuw nsw i32 %.sink149.i, %.086128.i
  %i.iz = zext i32 %.099126.i to i64
  %i.ja = icmp eq i64 %indvars.iv184, %i.iz
  %i.jb = zext i32 %.097127.i to i64
  %i.jc = icmp eq i64 %indvars.iv189, %i.jb
  %or.cond103.i = and i1 %i.jc, %i.ja
  %i.jd = icmp eq i32 %.086128.i, %.293.ph.i212
  %or.cond104.i = and i1 %i.jd, %or.cond103.i
  %i.je = add nuw nsw i32 %.084129.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.je, %i.fk
  %or.cond.i = select i1 %or.cond104.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %.thread119.i, label %.peel.next.i, !llvm.loop !124

.thread119.i:                                     ; preds = %.thread.i, %bb.r, %bb.s, %bb.t, %bb.u, %bb.ag
  %i.jf = phi i32 [ 0, %bb.s ], [ %.sroa.12.0, %bb.ag ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ %.sroa.12.2, %.thread.i ] ; 3 uses
  %i.jg = shl i32 %i.jf, 2
  %i.jh = add i32 %i.jg, -4
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %i.ab, i64 %i.ji ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !66
  %i.jl = load i8, ptr %i.ab, align 1, !tbaa !66
  %i.jm = icmp eq i8 %i.jk, %i.jl
  br i1 %i.jm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread119.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !66
  %i.jp = load i8, ptr %i.an, align 1, !tbaa !66
  %i.jq = icmp eq i8 %i.jo, %i.jp
  %i.jr = sext i1 %i.jq to i32
  %spec.select148 = add nsw i32 %i.jf, %i.jr
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.thread119.i
  %.sroa.12.4.ph = phi i32 [ %i.jf, %.thread119.i ], [ %spec.select148, %bb.aw ] ; 7 uses
  %i.js = icmp sgt i32 %.sroa.12.4.ph, 0
  br i1 %i.js, label %.lr.ph.i97, label %bb.bd

.lr.ph.i97:                                       ; preds = %bb.ax
  %i.jt = zext nneg i32 %.sroa.12.4.ph to i64     ; 2 uses
  br label %bb.ay

._crit_edge.i:                                    ; preds = %bb.ba
  %i.ju = icmp slt i32 %i.kl, 2
  br i1 %i.ju, label %bb.bb, label %.lr.ph217.i

bb.ay:                                            ; preds = %bb.ba, %.lr.ph.i97
  %.sroa.38.3 = phi i32 [ 0, %.lr.ph.i97 ], [ %.sroa.38.4, %bb.ba ]
  %i.jv = phi i32 [ 0, %.lr.ph.i97 ], [ %i.kl, %bb.ba ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i, %bb.ba ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.jw = icmp eq i64 %indvars.iv.next.i, %i.jt   ; 2 uses
  %i.jx = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.jy = and i64 %i.jx, 4294967292
  %i.jz = select i1 %i.jw, i64 0, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !66
  %i.kd = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 3
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !66
  %.not181.i = icmp eq i8 %i.kc, %i.kg
  br i1 %.not181.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kh = trunc i64 %indvars.iv.i to i16
  %i.ki = add nsw i32 %i.jv, 1                    ; 2 uses
  %i.kj = sext i32 %i.jv to i64
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.kj
  store i16 %i.kh, ptr %i.kk, align 2, !tbaa !77
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.38.4 = phi i32 [ %.sroa.38.3, %bb.ay ], [ %i.ki, %bb.az ] ; 2 uses
  %i.kl = phi i32 [ %i.jv, %bb.ay ], [ %i.ki, %bb.az ] ; 3 uses
  br i1 %i.jw, label %._crit_edge.i, label %bb.ay

bb.bb:                                            ; preds = %._crit_edge.i
  %.not259.i = icmp eq i32 %.sroa.12.4.ph, 1
  br i1 %.not259.i, label %bb.bd, label %.lr.ph197.preheader.i

.lr.ph197.preheader.i:                            ; preds = %bb.bb
  %i.km = load i8, ptr %i.ab, align 1, !tbaa !66
  %i.kn = zext i8 %i.km to i32                    ; 4 uses
  %5 = add nsw i64 %i.jt, -1                      ; 3 uses
  %xtraiter = and i64 %5, 1
  %6 = icmp eq i32 %.sroa.12.4.ph, 2
  br i1 %6, label %.lr.ph197.i.a, label %._crit_edge198.i.a

._crit_edge198.i.a:                               ; preds = %.lr.ph197.preheader.i
  %unroll_iter = and i64 %5, -2
  br label %bb.be

._crit_edge198.loopexit.i.unr-lcssa:              ; preds = %bb.be
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.bc, label %.lr.ph197.i.a

.lr.ph197.i.a:                                    ; preds = %._crit_edge198.loopexit.i.unr-lcssa, %.lr.ph197.preheader.i
  %indvars.iv230.i.a = phi i64 [ 1, %.lr.ph197.preheader.i ], [ %indvars.iv.next231.i.1, %._crit_edge198.loopexit.i.unr-lcssa ] ; 2 uses
  %.0160194.i.epil.init = phi i32 [ 0, %.lr.ph197.preheader.i ], [ %.1161.i.1, %._crit_edge198.loopexit.i.unr-lcssa ]
  %.0162193.i = phi i32 [ %i.kn, %.lr.ph197.preheader.i ], [ %.1165.i.1, %._crit_edge198.loopexit.i.unr-lcssa ]
  %.0164192.i.a = phi i32 [ 0, %.lr.ph197.preheader.i ], [ %spec.select260.i.1, %._crit_edge198.loopexit.i.unr-lcssa ]
  %.0170189.i.epil.init = phi i32 [ %i.kn, %.lr.ph197.preheader.i ], [ %spec.select259.i.1, %._crit_edge198.loopexit.i.unr-lcssa ]
  %lcmp.mod231 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.ko = shl nuw nsw i64 %indvars.iv230.i.a, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !66
  %i.kr = zext i8 %i.kq to i32                    ; 2 uses
  %7 = icmp samesign ugt i32 %.0170189.i.epil.init, %i.kr
  %8 = trunc nuw nsw i64 %indvars.iv230.i.a to i32 ; 2 uses
  %spec.select260.i.epil = select i1 %7, i32 %8, i32 %.0164192.i.a
  %9 = icmp samesign ult i32 %.0162193.i, %i.kr
  %.1161.i.epil = select i1 %9, i32 %8, i32 %.0160194.i.epil.init
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge198.loopexit.i.unr-lcssa, %.lr.ph197.i.a
  %.1171.i = phi i32 [ %spec.select260.i.1, %._crit_edge198.loopexit.i.unr-lcssa ], [ %spec.select260.i.epil, %.lr.ph197.i.a ]
  %.1169.i = phi i32 [ %.1161.i.1, %._crit_edge198.loopexit.i.unr-lcssa ], [ %.1161.i.epil, %.lr.ph197.i.a ]
  %10 = trunc i32 %.1171.i to i16
  %11 = trunc i32 %.1169.i to i16
  br label %bb.bd

bb.bd:                                            ; preds = %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i, %bb.bc, %bb.bb, %bb.ax
  %.sroa.12.4.ph138 = phi i32 [ 1, %bb.bb ], [ %.sroa.12.4.ph, %bb.bc ], [ %.sroa.12.4.ph, %bb.ax ], [ 0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i ]
  %.0166.lcssa.i = phi i16 [ 0, %bb.bb ], [ %10, %bb.bc ], [ 0, %bb.ax ], [ 0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i ]
  %.0160.lcssa.i = phi i16 [ 0, %bb.bb ], [ %11, %bb.bc ], [ 0, %bb.ax ], [ 0, %_ZL15getNeighbourRegR16dtTileCacheLayeriii.exit.3.i ]
  store i16 %.0166.lcssa.i, ptr %i.ah, align 2, !tbaa !77
  store i16 %.0160.lcssa.i, ptr %i.ap, align 2, !tbaa !77
  br label %.lr.ph217.i

bb.be:                                            ; preds = %bb.be, %._crit_edge198.i.a
  %indvars.iv230.i = phi i64 [ 1, %._crit_edge198.i.a ], [ %indvars.iv.next231.i.1, %bb.be ] ; 4 uses
  %.0160194.i = phi i32 [ 0, %._crit_edge198.i.a ], [ %.1161.i.1, %bb.be ]
  %.0164192.i = phi i32 [ %i.kn, %._crit_edge198.i.a ], [ %.1165.i.1, %bb.be ] ; 2 uses
  %.1165.i.a = phi i32 [ 0, %._crit_edge198.i.a ], [ %spec.select260.i.1, %bb.be ]
  %.1163.i = phi i32 [ %i.kn, %._crit_edge198.i.a ], [ %spec.select259.i.1, %bb.be ] ; 2 uses
  %niter = phi i64 [ 0, %._crit_edge198.i.a ], [ %indvars.iv.next231.i.a, %bb.be ]
  %12 = shl nuw nsw i64 %indvars.iv230.i, 2
  %13 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !66
  %15 = zext i8 %14 to i32                        ; 4 uses
  %16 = icmp samesign ugt i32 %.1163.i, %15
  %17 = trunc nuw nsw i64 %indvars.iv230.i to i32 ; 2 uses
  %spec.select259.i = tail call i32 @llvm.umin.i32(i32 %.1163.i, i32 %15) ; 2 uses
  %spec.select260.i = select i1 %16, i32 %17, i32 %.1165.i.a
  %18 = icmp samesign ult i32 %.0164192.i, %15
  %.1165.i = tail call i32 @llvm.umax.i32(i32 %.0164192.i, i32 %15) ; 2 uses
  %.1161.i = select i1 %18, i32 %17, i32 %.0160194.i
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %19 = shl nuw nsw i64 %indvars.iv.next231.i, 2
  %20 = getelementptr inbounds nuw i8, ptr %i.ab, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !66
  %22 = zext i8 %21 to i32                        ; 4 uses
  %23 = icmp samesign ugt i32 %spec.select259.i, %22
  %24 = trunc nuw nsw i64 %indvars.iv.next231.i to i32 ; 2 uses
  %spec.select259.i.1 = tail call i32 @llvm.umin.i32(i32 %spec.select259.i, i32 %22) ; 2 uses
  %spec.select260.i.1 = select i1 %23, i32 %24, i32 %spec.select260.i ; 3 uses
  %25 = icmp samesign ult i32 %.1165.i, %22
  %.1165.i.1 = tail call i32 @llvm.umax.i32(i32 %.1165.i, i32 %22) ; 2 uses
  %.1161.i.1 = select i1 %25, i32 %24, i32 %.1161.i ; 3 uses
  %indvars.iv.next231.i.1 = add nuw nsw i64 %indvars.iv230.i, 2 ; 2 uses
  %indvars.iv.next231.i.a = add nuw i64 %niter, 2 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i.a, %unroll_iter
  br i1 %exitcond234.not.i, label %._crit_edge198.loopexit.i.unr-lcssa, label %bb.be

.lr.ph217.i:                                      ; preds = %bb.bd, %._crit_edge.i
  %.sroa.12.4.ph138.a = phi i32 [ %.sroa.12.4.ph138, %bb.bd ], [ %.sroa.12.4.ph, %._crit_edge.i ] ; 4 uses
  %.sroa.38.0 = phi i32 [ 2, %bb.bd ], [ %.sroa.38.4, %._crit_edge.i ]
  %i.ks = phi i32 [ 2, %bb.bd ], [ %i.kl, %._crit_edge.i ]
  %i.kt = add nsw i32 %.sroa.12.4.ph138.a, -1     ; 2 uses
  br label %bb.bf

.lr.ph221.i:                                      ; preds = %._crit_edge208.thread.i
  %wide.trip.count243.i = zext nneg i32 %i.pb to i64
  %.pre.i = load i16, ptr %i.ah, align 2, !tbaa !77 ; 2 uses
  %i.ku = add nsw i64 %wide.trip.count243.i, -1   ; 2 uses
  %xtraiter.a = and i64 %i.ku, 3                  ; 3 uses
  %i.kv = add i32 %i.pb, -2
  %i.kw = icmp ult i32 %i.kv, 3
  br i1 %i.kw, label %.epil.preheader, label %.lr.ph221.i.new

.lr.ph221.i.new:                                  ; preds = %.lr.ph221.i
  %unroll_iter.a = and i64 %i.ku, -4
  br label %bb.bl

bb.bf:                                            ; preds = %._crit_edge208.thread.i, %.lr.ph217.i
  %.sroa.38.1 = phi i32 [ %.sroa.38.0, %.lr.ph217.i ], [ %.sroa.38.2, %._crit_edge208.thread.i ] ; 2 uses
  %i.kx = phi i32 [ %i.ks, %.lr.ph217.i ], [ %i.pb, %._crit_edge208.thread.i ] ; 7 uses
  %.0157215.i = phi i32 [ 0, %.lr.ph217.i ], [ %.1158.i, %._crit_edge208.thread.i ] ; 5 uses
  %i.ky = add nsw i32 %.0157215.i, 1              ; 4 uses
  %i.kz = srem i32 %i.ky, %i.kx
  %i.la = sext i32 %.0157215.i to i64
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !77
  %i.ld = zext i16 %i.lc to i32                   ; 3 uses
  %i.le = shl nuw nsw i32 %i.ld, 2
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.lf ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !66  ; 4 uses
  %i.li = zext i8 %i.lh to i32                    ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !66  ; 3 uses
  %i.ll = zext i8 %i.lk to i32                    ; 3 uses
  %i.lm = sext i32 %i.kz to i64
  %i.ln = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !77
  %i.lp = zext i16 %i.lo to i32                   ; 3 uses
  %i.lq = shl nuw nsw i32 %i.lp, 2
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.lr ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !66  ; 3 uses
  %i.lu = zext i8 %i.lt to i32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !66  ; 2 uses
  %i.lx = zext i8 %i.lw to i32
  %i.ly = icmp ugt i8 %i.lt, %i.lh
  br i1 %i.ly, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lz = icmp eq i8 %i.lt, %i.lh
  %i.ma = icmp ugt i8 %i.lw, %i.lk
  %or.cond183.i = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond183.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.mb = add nuw nsw i32 %i.ld, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.mc = add nsw i32 %i.kt, %i.lp
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn.i = phi i32 [ %i.mb, %bb.bh ], [ %i.mc, %bb.bi ]
  %.0150.i = phi i32 [ 1, %bb.bh ], [ %i.kt, %bb.bi ] ; 2 uses
  %.0149.i = phi i32 [ %i.lp, %bb.bh ], [ %i.ld, %bb.bi ] ; 3 uses
  %.1152201.i = srem i32 %.pn.i, %.sroa.12.4.ph138.a ; 3 uses
  %.not202.i = icmp eq i32 %.1152201.i, %.0149.i
  br i1 %.not202.i, label %._crit_edge208.thread.i, label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.bj
  %i.md = sub nsw i32 %i.lu, %i.li
  %i.me = sitofp i32 %i.md to float               ; 6 uses
  %i.mf = sub nsw i32 %i.lx, %i.ll
  %i.mg = sitofp i32 %i.mf to float               ; 6 uses
  %i.mh = fmul nnan float %i.mg, %i.mg
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.me, float %i.me, float %i.mh)
  %.fr167 = freeze float %i.mi                    ; 2 uses
  %i.mj = fcmp ogt float %.fr167, 0.000000e+00
  %i.mk = uitofp i8 %i.lh to float                ; 2 uses
  %i.ml = uitofp i8 %i.lk to float                ; 2 uses
  br i1 %i.mj, label %.lr.ph207.i.split.us, label %.lr.ph207.i.split

.lr.ph207.i.split.us:                             ; preds = %.lr.ph207.i, %.lr.ph207.i.split.us
  %.1152205.i.us = phi i32 [ %.1152.i.us, %.lr.ph207.i.split.us ], [ %.1152201.i, %.lr.ph207.i ] ; 3 uses
  %.0153204.i.us = phi i32 [ %.1154.i.us, %.lr.ph207.i.split.us ], [ -1, %.lr.ph207.i ]
  %.0155203.i.us = phi float [ %.1156.i.us, %.lr.ph207.i.split.us ], [ 0.000000e+00, %.lr.ph207.i ] ; 2 uses
  %i.mm = shl nsw i32 %.1152205.i.us, 2
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.ab, i64 %i.mn ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !66  ; 2 uses
  %i.mq = zext i8 %i.mp to i32
  %i.mr = getelementptr i8, ptr %i.mo, i64 2
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !66  ; 2 uses
  %i.mt = zext i8 %i.ms to i32
  %i.mu = sub nsw i32 %i.mq, %i.li
  %i.mv = sitofp i32 %i.mu to float
  %i.mw = sub nsw i32 %i.mt, %i.ll
  %i.mx = sitofp i32 %i.mw to float
  %i.my = fmul nnan float %i.mg, %i.mx
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.me, float %i.mv, float %i.my)
  %i.na = fdiv float %i.mz, %.fr167               ; 3 uses
  %i.nb = fcmp olt float %i.na, 0.000000e+00
  %i.nc = fcmp ogt float %i.na, 1.000000e+00
  %spec.store.select.i.i.us = select i1 %i.nc, float 1.000000e+00, float %i.na
  %.1.i.i.us = select i1 %i.nb, float 0.000000e+00, float %spec.store.select.i.i.us ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %.1.i.i.us, float %i.me, float %i.mk)
  %i.ne = uitofp i8 %i.mp to float
  %i.nf = fsub float %i.nd, %i.ne                 ; 2 uses
  %i.ng = tail call float @llvm.fmuladd.f32(float %.1.i.i.us, float %i.mg, float %i.ml)
  %i.nh = uitofp i8 %i.ms to float
  %i.ni = fsub float %i.ng, %i.nh                 ; 2 uses
  %i.nj = fmul float %i.ni, %i.ni
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.nf, float %i.nf, float %i.nj) ; 2 uses
  %i.nl = fcmp ogt float %i.nk, %.0155203.i.us    ; 2 uses
  %.1156.i.us = select i1 %i.nl, float %i.nk, float %.0155203.i.us ; 2 uses
  %.1154.i.us = select i1 %i.nl, i32 %.1152205.i.us, i32 %.0153204.i.us ; 2 uses
  %i.nm = add nsw i32 %.1152205.i.us, %.0150.i
  %.1152.i.us = srem i32 %i.nm, %.sroa.12.4.ph138.a ; 2 uses
  %.not.i95.us = icmp eq i32 %.1152.i.us, %.0149.i
  br i1 %.not.i95.us, label %._crit_edge208.i, label %.lr.ph207.i.split.us

.lr.ph207.i.split:                                ; preds = %.lr.ph207.i, %.lr.ph207.i.split
  %.1152205.i = phi i32 [ %.1152.i, %.lr.ph207.i.split ], [ %.1152201.i, %.lr.ph207.i ] ; 3 uses
  %.0153204.i = phi i32 [ %.1154.i, %.lr.ph207.i.split ], [ -1, %.lr.ph207.i ]
  %.0155203.i = phi float [ %.1156.i, %.lr.ph207.i.split ], [ 0.000000e+00, %.lr.ph207.i ] ; 2 uses
  %i.nn = shl nsw i32 %.1152205.i, 2
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds i8, ptr %i.ab, i64 %i.no ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !66  ; 2 uses
  %i.nr = zext i8 %i.nq to i32
  %i.ns = getelementptr i8, ptr %i.np, i64 2
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !66  ; 2 uses
  %i.nu = zext i8 %i.nt to i32
  %i.nv = sub nsw i32 %i.nr, %i.li
  %i.nw = sitofp i32 %i.nv to float
  %i.nx = sub nsw i32 %i.nu, %i.ll
  %i.ny = sitofp i32 %i.nx to float
  %i.nz = fmul nnan float %i.mg, %i.ny
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.me, float %i.nw, float %i.nz) ; 3 uses
  %i.ob = fcmp olt float %i.oa, 0.000000e+00
  %i.oc = fcmp ogt float %i.oa, 1.000000e+00
  %spec.store.select.i.i = select i1 %i.oc, float 1.000000e+00, float %i.oa
  %.1.i.i = select i1 %i.ob, float 0.000000e+00, float %spec.store.select.i.i ; 2 uses
  %i.od = tail call float @llvm.fmuladd.f32(float %.1.i.i, float %i.me, float %i.mk)
  %i.oe = uitofp i8 %i.nq to float
  %i.of = fsub float %i.od, %i.oe                 ; 2 uses
  %i.og = tail call float @llvm.fmuladd.f32(float %.1.i.i, float %i.mg, float %i.ml)
  %i.oh = uitofp i8 %i.nt to float
  %i.oi = fsub float %i.og, %i.oh                 ; 2 uses
  %i.oj = fmul float %i.oi, %i.oi
  %i.ok = tail call noundef float @llvm.fmuladd.f32(float %i.of, float %i.of, float %i.oj) ; 2 uses
  %i.ol = fcmp ogt float %i.ok, %.0155203.i       ; 2 uses
  %.1156.i = select i1 %i.ol, float %i.ok, float %.0155203.i ; 2 uses
  %.1154.i = select i1 %i.ol, i32 %.1152205.i, i32 %.0153204.i ; 2 uses
  %i.om = add nsw i32 %.1152205.i, %.0150.i
  %.1152.i = srem i32 %i.om, %.sroa.12.4.ph138.a  ; 2 uses
  %.not.i95 = icmp eq i32 %.1152.i, %.0149.i
  br i1 %.not.i95, label %._crit_edge208.i, label %.lr.ph207.i.split

._crit_edge208.i:                                 ; preds = %.lr.ph207.i.split, %.lr.ph207.i.split.us
  %.us-phi = phi float [ %.1156.i.us, %.lr.ph207.i.split.us ], [ %.1156.i, %.lr.ph207.i.split ]
  %.us-phi157 = phi i32 [ %.1154.i.us, %.lr.ph207.i.split.us ], [ %.1154.i, %.lr.ph207.i.split ] ; 2 uses
  %.not180.i = icmp ne i32 %.us-phi157, -1
  %i.on = fcmp ogt float %.us-phi, %i.aq
  %or.cond185.i = select i1 %.not180.i, i1 %i.on, i1 false
  br i1 %or.cond185.i, label %bb.bk, label %._crit_edge208.thread.i

bb.bk:                                            ; preds = %._crit_edge208.i
  %i.oo = add nuw nsw i32 %i.kx, 1                ; 2 uses
  %i.op = icmp sgt i32 %i.kx, %.0157215.i
  br i1 %i.op, label %.lr.ph213.preheader.i, label %._crit_edge214.i

.lr.ph213.preheader.i:                            ; preds = %bb.bk
  %i.oq = zext nneg i32 %i.kx to i64
  %i.or = xor i32 %.0157215.i, -1
  %i.os = add i32 %i.kx, %i.or
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %i.ou = shl nuw nsw i64 %i.ot, 1
  %i.ov = sub nsw i64 %i.oq, %i.ot
  %i.ow = shl nsw i64 %i.ov, 1                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.ow
  %scevgep236.i = getelementptr i8, ptr %scevgep235.i, i64 %i.ow
  %i.ox = add nuw nsw i64 %i.ou, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 2 dereferenceable(1) %scevgep236.i, i64 %i.ox, i1 false), !tbaa !77
  br label %._crit_edge214.i

._crit_edge214.i:                                 ; preds = %.lr.ph213.preheader.i, %bb.bk
  %i.oy = trunc i32 %.us-phi157 to i16
  %i.oz = sext i32 %i.ky to i64
  %i.pa = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.oz
  store i16 %i.oy, ptr %i.pa, align 2, !tbaa !77
  br label %._crit_edge208.thread.i

._crit_edge208.thread.i:                          ; preds = %._crit_edge214.i, %._crit_edge208.i, %bb.bj
  %.sroa.38.2 = phi i32 [ %.sroa.38.1, %bb.bj ], [ %i.oo, %._crit_edge214.i ], [ %.sroa.38.1, %._crit_edge208.i ] ; 7 uses
  %i.pb = phi i32 [ %i.kx, %bb.bj ], [ %i.oo, %._crit_edge214.i ], [ %i.kx, %._crit_edge208.i ] ; 5 uses
  %.1158.i = phi i32 [ %i.ky, %bb.bj ], [ %.0157215.i, %._crit_edge214.i ], [ %i.ky, %._crit_edge208.i ] ; 2 uses
  %i.pc = icmp slt i32 %.1158.i, %i.pb
end_hunk_0
begin_hunk_1_@_ZL8diagonaliiiPKhPKt:bb.a
bb.j:                                             ; preds = %_ZL6vequalPKhS0_.exit59.thread.i
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not31.i.i.i = icmp ugt i8 %i.ah, %i.de
  %.not32.i.i.i = icmp ugt i8 %i.de, %i.bc
  %or.cond.i.i.i = or i1 %.not31.i.i.i, %.not32.i.i.i
  br i1 %or.cond.i.i.i, label %.split.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split.i.i:                                       ; preds = %bb.k
  %.not33.i.i.i = icmp uge i8 %i.ah, %i.de
  %i.fc = icmp uge i8 %i.de, %i.bc
  %spec.select.i.i.i = and i1 %.not33.i.i.i, %i.fc
  br i1 %spec.select.i.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread

bb.l:                                             ; preds = %bb.j
  %.not28.i.i.i = icmp ugt i8 %i.ay, %.val56.i
  %.not29.i.i.i = icmp ugt i8 %.val56.i, %.val54.pre.i
  %or.cond9.i.i.i = or i1 %.not28.i.i.i, %.not29.i.i.i
  br i1 %or.cond9.i.i.i, label %_ZL7betweenPKhS0_S0_.exit.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL7betweenPKhS0_S0_.exit.i.i:                    ; preds = %bb.l
  %.not30.i.i.i = icmp uge i8 %i.ay, %.val56.i
  %i.fd = icmp uge i8 %.val56.i, %.val54.pre.i
  %spec.select10.i.i.i = and i1 %.not30.i.i.i, %i.fd
  br i1 %spec.select10.i.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28

_ZL7betweenPKhS0_S0_.exit.thread13.i.i:           ; preds = %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.fe = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i = load i8, ptr %i.fe, align 1, !tbaa !66 ; 4 uses
  %i.ff = zext i8 %.val39.i.i to i32              ; 4 uses
  %i.fg = sub nsw i32 %i.ff, %i.az
  %.neg3.i.i52.i.i = mul nsw i32 %i.fg, %.neg.i.i.i.i
  %i.fh = zext i8 %i.dn to i32                    ; 4 uses
  %i.fi = sub nsw i32 %i.fh, %i.ai
  %.neg8.i.i.i54.i.i = mul nsw i32 %.neg.i.i.i.i.i, %i.fi
  %i.fj = icmp eq i32 %.neg8.i.i.i54.i.i, %.neg3.i.i52.i.i
  br i1 %i.fj, label %bb.m, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28:  ; preds = %_ZL7betweenPKhS0_S0_.exit.i.i
  %i.fk = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i29 = load i8, ptr %i.fk, align 1, !tbaa !66 ; 3 uses
  %i.fl = zext i8 %.val39.i.i29 to i32            ; 3 uses
  %i.fm = sub nsw i32 %i.fl, %i.az
  %.neg3.i.i52.i.i30 = mul nsw i32 %i.fm, %.neg.i.i.i.i
  %i.fn = zext i8 %i.dn to i32                    ; 3 uses
  %i.fo = sub nsw i32 %i.fn, %i.ai
  %.neg8.i.i.i54.i.i31 = mul nsw i32 %.neg.i.i.i.i.i, %i.fo
  %i.fp = icmp eq i32 %.neg8.i.i.i54.i.i31, %.neg3.i.i52.i.i30
  br i1 %i.fp, label %.thread32, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread:    ; preds = %.split.i.i
  %i.fq = getelementptr i8, ptr %i.dd, i64 2
  %.val39.i.i21 = load i8, ptr %i.fq, align 1, !tbaa !66 ; 3 uses
  %i.fr = zext i8 %.val39.i.i21 to i32            ; 3 uses
  %i.fs = sub nsw i32 %i.fr, %i.az
  %.neg3.i.i52.i.i22 = mul nsw i32 %i.fs, %.neg.i.i.i.i
  %i.ft = zext i8 %i.dn to i32                    ; 3 uses
  %i.fu = sub nsw i32 %i.ft, %i.ai
  %.neg8.i.i.i54.i.i23 = mul nsw i32 %.neg.i.i.i.i.i, %i.fu
  %i.fv = icmp eq i32 %.neg8.i.i.i54.i.i23, %.neg3.i.i52.i.i22
  br i1 %i.fv, label %.thread, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

bb.m:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i
  br i1 %.not.i.i.i, label %.thread32, label %.thread

.thread:                                          ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread, %bb.m
  %.val39.i.i2527 = phi i8 [ %.val39.i.i, %bb.m ], [ %.val39.i.i21, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %i.fw = phi i32 [ %i.ff, %bb.m ], [ %i.fr, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %i.fx = phi i32 [ %i.fh, %bb.m ], [ %i.ft, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ]
  %.not31.i57.i.i = icmp ugt i8 %i.ah, %i.dn
  %.not32.i58.i.i = icmp ugt i8 %i.dn, %i.bc
  %or.cond.i59.i.i = or i1 %.not31.i57.i.i, %.not32.i58.i.i
  br i1 %or.cond.i59.i.i, label %.split18.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split18.i.i:                                     ; preds = %.thread
  %.not33.i60.i.i = icmp uge i8 %i.ah, %i.dn
  %i.fy = icmp uge i8 %i.dn, %i.bc
  %spec.select.i61.i.i = and i1 %.not33.i60.i.i, %i.fy
  br i1 %spec.select.i61.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

.thread32:                                        ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28, %bb.m
  %.val39.i.i2534 = phi i8 [ %.val39.i.i, %bb.m ], [ %.val39.i.i29, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ] ; 5 uses
  %i.fz = phi i32 [ %i.ff, %bb.m ], [ %i.fl, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %i.ga = phi i32 [ %i.fh, %bb.m ], [ %i.fn, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %.not28.i62.i.i = icmp ugt i8 %i.ay, %.val39.i.i2534
  %.not29.i63.i.i = icmp ugt i8 %.val39.i.i2534, %.val54.pre.i
  %or.cond9.i64.i.i = or i1 %.not28.i62.i.i, %.not29.i63.i.i
  br i1 %or.cond9.i64.i.i, label %_ZL7betweenPKhS0_S0_.exit67.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL7betweenPKhS0_S0_.exit67.i.i:                  ; preds = %.thread32
  %.not30.i65.i.i = icmp uge i8 %i.ay, %.val39.i.i2534
  %i.gb = icmp uge i8 %.val39.i.i2534, %.val54.pre.i
  %spec.select10.i66.i.i = and i1 %.not30.i65.i.i, %i.gb
  br i1 %spec.select10.i66.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i

_ZL7betweenPKhS0_S0_.exit67.thread16.i.i:         ; preds = %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread, %_ZL7betweenPKhS0_S0_.exit67.i.i, %.split18.i.i, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i
  %i.gc = phi i32 [ %i.ft, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %i.ga, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %i.fx, %.split18.i.i ], [ %i.fh, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %i.fn, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %i.gd = phi i32 [ %i.fr, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %i.fz, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %i.fw, %.split18.i.i ], [ %i.ff, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %i.fl, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ]
  %.val39.i.i24 = phi i8 [ %.val39.i.i21, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread ], [ %.val39.i.i2534, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ %.val39.i.i2527, %.split18.i.i ], [ %.val39.i.i, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i ], [ %.val39.i.i29, %_ZL7betweenPKhS0_S0_.exit.thread13.i.i.thread28 ] ; 4 uses
  %.neg.i.i68.i.i = sub nsw i32 %i.dz, %i.gc      ; 2 uses
  %i.ge = sub nsw i32 %i.az, %i.dx
  %.neg3.i.i69.i.i = mul nsw i32 %i.ge, %.neg.i.i68.i.i
  %i.gf = sub nsw i32 %i.ai, %i.dz
  %.neg.i.i.i70.i.i = sub nsw i32 %i.dx, %i.gd    ; 2 uses
  %.neg8.i.i.i71.i.i = mul nsw i32 %.neg.i.i.i70.i.i, %i.gf
  %i.gg = icmp eq i32 %.neg8.i.i.i71.i.i, %.neg3.i.i69.i.i
  br i1 %i.gg, label %bb.n, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

bb.n:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i
  %.not.i73.i.i = icmp eq i8 %i.de, %i.dn
  br i1 %.not.i73.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not31.i74.i.i = icmp ugt i8 %i.de, %i.ah
  %.not32.i75.i.i = icmp ugt i8 %i.ah, %i.dn
  %or.cond.i76.i.i = or i1 %.not31.i74.i.i, %.not32.i75.i.i
  br i1 %or.cond.i76.i.i, label %.split22.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split22.i.i:                                     ; preds = %bb.o
  %.not33.i77.i.i = icmp uge i8 %i.de, %i.ah
  %i.gh = icmp uge i8 %i.ah, %i.dn
  %spec.select.i78.i.i = and i1 %.not33.i77.i.i, %i.gh
  br i1 %spec.select.i78.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

bb.p:                                             ; preds = %bb.n
  %.not28.i79.i.i = icmp ugt i8 %.val56.i, %i.ay
  %.not29.i80.i.i = icmp ugt i8 %i.ay, %.val39.i.i24
  %or.cond9.i81.i.i = or i1 %.not28.i79.i.i, %.not29.i80.i.i
  br i1 %or.cond9.i81.i.i, label %_ZL7betweenPKhS0_S0_.exit84.i.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL7betweenPKhS0_S0_.exit84.i.i:                  ; preds = %bb.p
  %.not30.i82.i.i = icmp uge i8 %.val56.i, %i.ay
  %i.gi = icmp uge i8 %i.ay, %.val39.i.i24
  %spec.select10.i83.i.i = and i1 %.not30.i82.i.i, %i.gi
  br i1 %spec.select10.i83.i.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i

_ZL7betweenPKhS0_S0_.exit84.thread20.i.i:         ; preds = %_ZL7betweenPKhS0_S0_.exit84.i.i, %.split22.i.i, %_ZL7betweenPKhS0_S0_.exit67.thread16.i.i
  %i.gj = sub nsw i32 %i.cj, %i.dx
  %.neg3.i.i86.i.i = mul nsw i32 %i.gj, %.neg.i.i68.i.i
  %i.gk = sub nsw i32 %i.bd, %i.dz
  %.neg8.i.i.i88.i.i = mul nsw i32 %.neg.i.i.i70.i.i, %i.gk
  %i.gl = icmp eq i32 %.neg8.i.i.i88.i.i, %.neg3.i.i86.i.i
  br i1 %i.gl, label %bb.q, label %.thread82.i

bb.q:                                             ; preds = %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i
  %.not.i90.i.i = icmp eq i8 %i.de, %i.dn
  br i1 %.not.i90.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not31.i91.i.i = icmp ugt i8 %i.de, %i.bc
  %.not32.i92.i.i = icmp ugt i8 %i.bc, %i.dn
  %or.cond.i93.i.i = or i1 %.not31.i91.i.i, %.not32.i92.i.i
  br i1 %or.cond.i93.i.i, label %.split.i, label %_ZL10diagonalieiiiPKhPKt.exit

.split.i:                                         ; preds = %bb.r
  %.not33.i94.i.i = icmp uge i8 %i.de, %i.bc
  %i.gm = icmp uge i8 %i.bc, %i.dn
  %spec.select.i95.i.i = and i1 %.not33.i94.i.i, %i.gm
  %cond.fr6068.i = freeze i1 %spec.select.i95.i.i
  br i1 %cond.fr6068.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %.thread82.i

bb.s:                                             ; preds = %bb.q
  %.not28.i96.i.i = icmp ugt i8 %.val56.i, %.val54.pre.i
  %.not29.i97.i.i = icmp ugt i8 %.val54.pre.i, %.val39.i.i24
  %or.cond9.i98.i.i = or i1 %.not28.i96.i.i, %.not29.i97.i.i
  br i1 %or.cond9.i98.i.i, label %_ZL9intersectPKhS0_S0_S0_.exit.i, label %_ZL10diagonalieiiiPKhPKt.exit

_ZL9intersectPKhS0_S0_S0_.exit.i:                 ; preds = %bb.s
  %.not30.i99.i.i = icmp uge i8 %.val56.i, %.val54.pre.i
  %i.gn = icmp uge i8 %.val54.pre.i, %.val39.i.i24
  %spec.select10.i100.i.i = and i1 %.not30.i99.i.i, %i.gn
  %cond.fr60.i = freeze i1 %spec.select10.i100.i.i
  br i1 %cond.fr60.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %.thread82.i

.thread82.i:                                      ; preds = %_ZL9intersectPKhS0_S0_S0_.exit.i, %.split.i, %_ZL7betweenPKhS0_S0_.exit84.thread20.i.i, %_ZL6vequalPKhS0_.exit59.i, %_ZL6vequalPKhS0_.exit58.i, %_ZL6vequalPKhS0_.exit57.i, %_ZL6vequalPKhS0_.exit.i, %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cg
  br i1 %exitcond.not.i, label %_ZL10diagonalieiiiPKhPKt.exit, label %bb.d

_ZL10diagonalieiiiPKhPKt.exit:                    ; preds = %.thread82.i, %_ZL9intersectPKhS0_S0_S0_.exit.i, %bb.s, %.split.i, %bb.r, %_ZL7betweenPKhS0_S0_.exit84.i.i, %bb.p, %.split22.i.i, %bb.o, %_ZL7betweenPKhS0_S0_.exit67.i.i, %.thread32, %.split18.i.i, %.thread, %_ZL7betweenPKhS0_S0_.exit.i.i, %bb.l, %.split.i.i, %bb.k, %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i, %bb.b, %_ZL6inConeiiiPKhPKt.exit.thread, %.split, %_ZL6inConeiiiPKhPKt.exit
  %i.go = phi i1 [ false, %_ZL6inConeiiiPKhPKt.exit ], [ false, %.split ], [ false, %bb.b ], [ true, %_ZL6inConeiiiPKhPKt.exit.thread ], [ false, %_ZL7betweenPKhS0_S0_.exit.i.i ], [ false, %_ZL13intersectPropPKhS0_S0_S0_.exit.i.i ], [ false, %.split22.i.i ], [ false, %_ZL7betweenPKhS0_S0_.exit84.i.i ], [ false, %_ZL7betweenPKhS0_S0_.exit67.i.i ], [ false, %bb.s ], [ false, %.split.i.i ], [ false, %bb.l ], [ false, %.split18.i.i ], [ false, %.thread32 ], [ false, %bb.r ], [ false, %bb.k ], [ false, %.thread ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.split.i ], [ false, %_ZL9intersectPKhS0_S0_S0_.exit.i ], [ true, %.thread82.i ]
  ret i1 %i.go
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtTileCacheAlloc", file: !19, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !42, vtableHolder: !0)
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtTileCacheCompressor", file: !19, line: 96, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !101, vtableHolder: !5)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !DIFile(filename: "DetourTileCache/Include/DetourTileCacheBuilder.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "f3fbf7322de4d5643648d135af2c65f3")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!22 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 18, baseType: !23)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!26 = !{!20, !21, !25}
!27 = !DISubroutineType(types: !26)
!28 = !DISubprogram(name: "alloc", linkageName: "_ZN16dtTileCacheAlloc5allocEm", scope: !0, file: !19, line: 85, type: !27, scopeLine: 85, containingType: !0, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !{!29}
!31 = !DISubroutineType(types: !30)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !31, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$dtTileCacheAlloc", scope: !19, file: !19, baseType: !33, size: 64, flags: DIFlagArtificial)
!35 = !{null, !21}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "~dtTileCacheAlloc", linkageName: "_ZN16dtTileCacheAllocD4Ev", scope: !0, file: !19, line: 81, type: !36, scopeLine: 81, containingType: !0, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DISubprogram(name: "reset", linkageName: "_ZN16dtTileCacheAlloc5resetEv", scope: !0, file: !19, line: 83, type: !36, scopeLine: 83, containingType: !0, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!39 = !{null, !21, !20}
!40 = !DISubroutineType(types: !39)
!41 = !DISubprogram(name: "free", linkageName: "_ZN16dtTileCacheAlloc4freeEPv", scope: !0, file: !19, line: 90, type: !40, scopeLine: 90, containingType: !0, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!42 = !{!34, !37, !38, !28, !41}
!43 = !{!"any pointer", !13, i64 0}
!44 = !{!"p1 _ZTS18dtTileCacheContour", !43, i64 0}
!45 = !{!"_ZTS21dtTileCacheContourSet", !14, i64 0, !44, i64 8}
!46 = !{!45, !14, i64 0}
!47 = !{!45, !44, i64 8}
!48 = !{!"p1 omnipotent char", !43, i64 0}
!49 = !{!"_ZTS18dtTileCacheContour", !14, i64 0, !48, i64 8, !13, i64 16, !13, i64 17}
!50 = !{!49, !48, i64 8}
!51 = !{!"p1 short", !43, i64 0}
!52 = !{!"_ZTS19dtTileCachePolyMesh", !14, i64 0, !14, i64 4, !14, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !48, i64 40}
!53 = !{!52, !51, i64 16}
!54 = !{!52, !51, i64 24}
!55 = !{!52, !51, i64 32}
!56 = !{!52, !48, i64 40}
!57 = !{!"p1 _ZTS22dtTileCacheLayerHeader", !43, i64 0}
!58 = !{!"_ZTS16dtTileCacheLayer", !57, i64 0, !13, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!59 = !{!58, !57, i64 0}
!60 = !{!"short", !13, i64 0}
!61 = !{!"_ZTS22dtTileCacheLayerHeader", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !13, i64 20, !13, i64 32, !60, i64 44, !60, i64 46, !13, i64 48, !13, i64 49, !13, i64 50, !13, i64 51, !13, i64 52, !13, i64 53}
!62 = !{!61, !13, i64 48}
!63 = !{!61, !13, i64 49}
!64 = !{!58, !48, i64 40}
!65 = !{!58, !48, i64 24}
!66 = !{!13, !13, i64 0}
!67 = !{!58, !48, i64 16}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!58, !13, i64 8}
!73 = !{!49, !14, i64 0}
!74 = !{!49, !13, i64 17}
!75 = !{!58, !48, i64 32}
!76 = !{!14, !14, i64 0}
!77 = !{!60, !60, i64 0}
!78 = !{!"float", !13, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!82 = !{!29, !80, !81}
!83 = !DISubroutineType(types: !82)
!84 = !DISubprogram(name: "maxCompressedSize", linkageName: "_ZN21dtTileCacheCompressor17maxCompressedSizeEi", scope: !5, file: !19, line: 100, type: !83, scopeLine: 100, containingType: !5, virtualIndex: 2, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$dtTileCacheCompressor", scope: !19, file: !19, baseType: !33, size: 64, flags: DIFlagArtificial)
!86 = !{null, !80}
!87 = !DISubroutineType(types: !86)
!88 = !DISubprogram(name: "~dtTileCacheCompressor", linkageName: "_ZN21dtTileCacheCompressorD4Ev", scope: !5, file: !19, line: 98, type: !87, scopeLine: 98, containingType: !5, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!89 = !DIFile(filename: "Detour/Include/DetourStatus.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "cea993215ed2cba071c3caa8d47c63ca")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "dtStatus", file: !89, line: 22, baseType: !90)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!97 = !{!91, !80, !94, !81, !95, !81, !96}
!98 = !DISubroutineType(types: !97)
!99 = !DISubprogram(name: "compress", linkageName: "_ZN21dtTileCacheCompressor8compressEPKhiPhiPi", scope: !5, file: !19, line: 101, type: !98, scopeLine: 101, containingType: !5, virtualIndex: 3, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!100 = !DISubprogram(name: "decompress", linkageName: "_ZN21dtTileCacheCompressor10decompressEPKhiPhiPi", scope: !5, file: !19, line: 103, type: !98, scopeLine: 103, containingType: !5, virtualIndex: 4, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!101 = !{!85, !88, !84, !99, !100}
!102 = distinct !{null}
!103 = distinct !{!103, !68}
!104 = distinct !{null}
!105 = distinct !{!105, !69}
!106 = distinct !{!106, !69}
!107 = distinct !{!107, !69}
!108 = distinct !{!108, !70, !71}
!109 = distinct !{!109, !70, !71}
!110 = distinct !{!110, !71, !70}
!111 = distinct !{!111, !69}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = !{!"_ZTS16dtLayerSweepSpan", !60, i64 0, !13, i64 2, !13, i64 3}
!115 = !{!114, !13, i64 3}
!116 = !{!114, !60, i64 0}
!117 = !{!114, !13, i64 2}
!118 = !{!"_ZTS21dtLayerMonotoneRegion", !14, i64 0, !13, i64 4, !13, i64 20, !13, i64 21, !13, i64 22}
!119 = !{!118, !13, i64 21}
!120 = !{!118, !14, i64 0}
!121 = !{!118, !13, i64 22}
!122 = !{!118, !13, i64 20}
!123 = !{!"branch_weights", i32 8, i32 8}
!124 = distinct !{!124, !68}
!125 = distinct !{!125, !69}
!126 = distinct !{!126, !68}
!127 = !{!49, !13, i64 16}
!128 = distinct !{!128, !70, !71}
!129 = distinct !{!129, !70, !71}
!130 = distinct !{!130, !71, !70}
!131 = distinct !{!131, !71, !70}
!132 = distinct !{!132, !70, !71}
!133 = distinct !{!133, !71, !70}
!134 = distinct !{!134, !71, !70}
!135 = distinct !{!135, !71, !70}
!136 = !{!52, !14, i64 0}
!137 = !{!52, !14, i64 4}
!138 = !{!52, !14, i64 8}
!139 = !{!"branch_weights", i32 4, i32 12}
!140 = distinct !{!140, !68}
!141 = distinct !{null}
!142 = distinct !{null}
!143 = !{!48, !48, i64 0}
!144 = !{!"p1 _ZTS16dtTileCacheLayer", !43, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!61, !14, i64 0}
!147 = !{!61, !14, i64 4}
end_hunk_1
