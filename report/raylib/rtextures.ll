Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@ImageDraw:bb.a
._crit_edge.loopexit389.unr-lcssa:                ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph303.split.split.split.epil.preheader

.lr.ph303.split.split.split.epil.preheader:       ; preds = %._crit_edge.loopexit389.unr-lcssa, %.lr.ph303.split.split.split.preheader
  %.epil.init = phi i32 [ %i.bd, %.lr.ph303.split.split.split.preheader ], [ %i.ea, %._crit_edge.loopexit389.unr-lcssa ]
  %.0224299.epil.init = phi ptr [ %i.cm, %.lr.ph303.split.split.split.preheader ], [ %i.ec, %._crit_edge.loopexit389.unr-lcssa ]
  %.0225296.epil.init = phi ptr [ %i.ce, %.lr.ph303.split.split.split.preheader ], [ %i.eb, %._crit_edge.loopexit389.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod390)
  %i.dt = icmp eq i32 %i.bd, %.epil.init
  br i1 %i.dt, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %.lr.ph303.split.split.split.epil.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0224299.epil.init, ptr align 1 %.0225296.epil.init, i64 %i.cr, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit389.unr-lcssa, %bb.ab, %.lr.ph303.split.split.split.epil.preheader, %..loopexit_crit_edge.split.us308, %..loopexit_crit_edge.split.us.us.us, %.lr.ph303.split, %GetPixelDataSize.exit278
  br i1 %.0219, label %bb.ae, label %bb.af

.lr.ph303.split.split.split:                      ; preds = %.loopexit.1, %.lr.ph303.split.split.split.preheader.new
  %i.du = phi i32 [ %i.bd, %.lr.ph303.split.split.split.preheader.new ], [ %i.ea, %.loopexit.1 ] ; 2 uses
  %.0224299 = phi ptr [ %i.cm, %.lr.ph303.split.split.split.preheader.new ], [ %i.ec, %.loopexit.1 ] ; 2 uses
  %.0225296 = phi ptr [ %i.ce, %.lr.ph303.split.split.split.preheader.new ], [ %i.eb, %.loopexit.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph303.split.split.split.preheader.new ], [ %niter.next.1, %.loopexit.1 ]
  %i.dv = icmp eq i32 %i.bd, %i.du
  br i1 %i.dv, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph303.split.split.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0224299, ptr align 1 %.0225296, i64 %i.cr, i1 false)
  %.pre333 = load i32, ptr %i.p, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph303.split.split.split, %bb.ac
  %i.dw = phi i32 [ %i.du, %.lr.ph303.split.split.split ], [ %.pre333, %bb.ac ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.0225296, i64 %i.cv ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.0224299, i64 %i.cw ; 2 uses
  %i.dz = icmp eq i32 %i.bd, %i.dw
  br i1 %i.dz, label %bb.ad, label %.loopexit.1

bb.ad:                                            ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.dx, i64 %i.cr, i1 false)
  %.pre333.1 = load i32, ptr %i.p, align 4
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.ad, %.loopexit
  %i.ea = phi i32 [ %i.dw, %.loopexit ], [ %.pre333.1, %bb.ad ] ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.cv ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.cw ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit389.unr-lcssa, label %.lr.ph303.split.split.split, !llvm.loop !112

bb.ae:                                            ; preds = %._crit_edge
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp sgt i32 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = icmp sgt i32 %i.eh, 1
  %or.cond11 = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %or.cond11, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ej = load ptr, ptr %8, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.el = load <2 x i32>, ptr %i.ek, align 8      ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.en = load i32, ptr %i.em, align 4            ; 3 uses
  %switch.tableidx363 = add i32 %i.en, -1         ; 2 uses
  %i.eo = icmp ult i32 %switch.tableidx363, 24
  br i1 %i.eo, label %switch.lookup364, label %bb.ah

switch.lookup364:                                 ; preds = %bb.ag
  %i.ep = zext nneg i32 %switch.tableidx363 to i64
  %switch.gep365 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.ep
  %switch.load366 = load double, ptr %switch.gep365, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %switch.lookup364, %bb.ag
  %.0.i279 = phi double [ 0.000000e+00, %bb.ag ], [ %switch.load366, %switch.lookup364 ]
  %i.eq = extractelement <2 x i32> %i.el, i64 0   ; 2 uses
  %i.er = sitofp i32 %i.eq to double
  %i.es = fmul nnan double %.0.i279, %i.er
  %i.et = extractelement <2 x i32> %i.el, i64 1   ; 2 uses
  %i.eu = sitofp i32 %i.et to double
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = fptosi double %i.ev to i32              ; 2 uses
  %i.ex = icmp slt i32 %i.eq, 4
  %i.ey = icmp slt i32 %i.et, 4
  %or.cond.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i, label %bb.ai, label %GetPixelDataSize.exit284

bb.ai:                                            ; preds = %bb.ah
  %i.ez = and i32 %i.en, -2
  %or.cond3.i281 = icmp eq i32 %i.ez, 14
  br i1 %or.cond3.i281, label %GetPixelDataSize.exit284, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = and i32 %i.en, -8
  %or.cond5.i282 = icmp eq i32 %i.fa, 16
  %spec.select.i283 = select i1 %or.cond5.i282, i32 16, i32 %i.ew
  br label %GetPixelDataSize.exit284

GetPixelDataSize.exit284:                         ; preds = %bb.ah, %bb.ai, %bb.aj
  %.016.i280 = phi i32 [ %i.ew, %bb.ah ], [ 8, %bb.ai ], [ %spec.select.i283, %bb.aj ]
  %i.fb = sext i32 %.016.i280 to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ej, i64 %i.fb
  store ptr %i.fc, ptr %8, align 8
  %i.fd = sdiv <2 x i32> %i.el, splat (i32 2)
  store <2 x i32> %i.fd, ptr %i.ek, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fh = load ptr, ptr %9, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fj = load <2 x i32>, ptr %i.fi, align 8      ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.fl = load i32, ptr %i.fk, align 4            ; 3 uses
  %switch.tableidx367 = add i32 %i.fl, -1         ; 2 uses
  %i.fm = icmp ult i32 %switch.tableidx367, 24
  br i1 %i.fm, label %switch.lookup368, label %bb.ak

switch.lookup368:                                 ; preds = %GetPixelDataSize.exit284
  %i.fn = zext nneg i32 %switch.tableidx367 to i64
  %switch.gep369 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.fn
  %switch.load370 = load double, ptr %switch.gep369, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %switch.lookup368, %GetPixelDataSize.exit284
  %.0.i285 = phi double [ 0.000000e+00, %GetPixelDataSize.exit284 ], [ %switch.load370, %switch.lookup368 ]
  %i.fo = extractelement <2 x i32> %i.fj, i64 0   ; 2 uses
  %i.fp = sitofp i32 %i.fo to double
  %i.fq = fmul nnan double %.0.i285, %i.fp
  %i.fr = extractelement <2 x i32> %i.fj, i64 1   ; 2 uses
  %i.fs = sitofp i32 %i.fr to double
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fptosi double %i.ft to i32              ; 2 uses
  %i.fv = icmp slt i32 %i.fo, 4
  %i.fw = icmp slt i32 %i.fr, 4
  %or.cond.i286 = and i1 %i.fv, %i.fw
  br i1 %or.cond.i286, label %bb.al, label %GetPixelDataSize.exit291

bb.al:                                            ; preds = %bb.ak
  %i.fx = and i32 %i.fl, -2
  %or.cond3.i288 = icmp eq i32 %i.fx, 14
  br i1 %or.cond3.i288, label %GetPixelDataSize.exit291, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = and i32 %i.fl, -8
  %or.cond5.i289 = icmp eq i32 %i.fy, 16
  %spec.select.i290 = select i1 %or.cond5.i289, i32 16, i32 %i.fu
  br label %GetPixelDataSize.exit291

GetPixelDataSize.exit291:                         ; preds = %bb.ak, %bb.al, %bb.am
  %.016.i287 = phi i32 [ %i.fu, %bb.ak ], [ 8, %bb.al ], [ %spec.select.i290, %bb.am ]
  %i.fz = sext i32 %.016.i287 to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fh, i64 %i.fz
  store ptr %i.ga, ptr %9, align 8
  %i.gb = sdiv <2 x i32> %i.fj, splat (i32 2)
  store <2 x i32> %i.gb, ptr %i.fi, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = add nsw i32 %i.gd, -1
  store i32 %i.ge, ptr %i.gc, align 8
  %i.gf = fmul <2 x float> %.sroa.21.8, splat (float 5.000000e-01)
  %i.gg = fmul <2 x float> %.sroa.0136.4, splat (float 5.000000e-01)
  %i.gh = fmul <2 x float> %5, splat (float 5.000000e-01)
  %i.gi = fmul <2 x float> %.sroa.0107.1, splat (float 5.000000e-01)
  call void @ImageDraw(ptr noundef nonnull %8, ptr noundef nonnull byval(%struct.Image) align 8 %9, <2 x float> %i.gg, <2 x float> %i.gf, <2 x float> %i.gi, <2 x float> %i.gh, i32 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  br label %bb.an

bb.an:                                            ; preds = %GetPixelDataSize.exit291, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.b, %bb.c, %bb.an, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResizeNN(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 4 uses
  %i.j = mul nsw i32 %2, %1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #53 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8              ; 2 uses
  %i.o = icmp sgt i32 %2, 0
  %i.p = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %bb.d
  %3 = load i32, ptr %i.f, align 4
  %4 = shl i32 %3, 16
  %5 = sdiv i32 %4, %2
  %6 = add nsw i32 %5, 1
  %7 = shl i32 %i.n, 16
  %8 = sdiv i32 %7, %1
  %9 = add nsw i32 %8, 1                          ; 3 uses
  %i.q = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count49 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %i.q, 1
  %i.r = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.q, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = trunc i32 %1 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv46 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next47, %._crit_edge ] ; 3 uses
  %i.s = trunc i64 %indvars.iv46 to i32
  %i.t = mul i32 %6, %i.s
  %i.u = ashr i32 %i.t, 16
  %i.v = mul nuw nsw i64 %indvars.iv46, %i.q
  %i.w = mul nsw i32 %i.u, %i.n                   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v ; 3 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.new

._crit_edge44.split:                              ; preds = %._crit_edge, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.z) #52
  store ptr %i.m, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  store i32 7, ptr %i.x, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.y)
  tail call void @free(ptr noundef %i.i) #52
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.aa = trunc i64 %indvars.iv.epil.init to i32
  %i.ab = mul i32 %9, %i.aa
  %i.ac = ashr i32 %i.ab, 16
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ad = add nsw i32 %i.ac, %i.w
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1
  store i32 %i.ag, ptr %gep.epil, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge44.split, label %.preheader

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ah = trunc i64 %indvars.iv to i32
  %i.ai = mul i32 %9, %i.ah
  %i.aj = ashr i32 %i.ai, 16
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ak = add nsw i32 %i.aj, %i.w
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1
  store i32 %i.an, ptr %gep, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.next to i32
  %i.ap = mul i32 %9, %i.ao
  %i.aq = ashr i32 %i.ap, 16
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ar = add nsw i32 %i.aq, %i.w
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1
  store i32 %i.au, ptr %gep.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge44.split
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResize(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4
  %switch.tableidx = add i32 %i.j, -1             ; 3 uses
  %i.k = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 75, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageResize.31, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.m = mul nsw i32 %2, %1
  %i.n = mul nsw i32 %i.m, %switch.ext
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #53 ; 2 uses
  %i.q = load i32, ptr %i.i, align 4
  %switch.tableidx67 = add i32 %i.q, -1           ; 3 uses
  %i.r = icmp ult i32 %switch.tableidx67, 7
  %switch.maskindex70 = trunc i32 %switch.tableidx67 to i8
  %switch.shifted71 = lshr i8 75, %switch.maskindex70
  %switch.lobit72 = trunc i8 %switch.shifted71 to i1
  %or.cond76 = select i1 %i.r, i1 %switch.lobit72, i1 false
  br i1 %or.cond76, label %switch.lookup69, label %bb.e

switch.lookup69:                                  ; preds = %switch.lookup
  %i.s = zext nneg i32 %switch.tableidx67 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.ImageResize.31, i64 %i.s
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i32
  %i.t = load i32, ptr %i.c, align 8
  %i.u = load i32, ptr %i.f, align 4
  %i.v = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef nonnull %i.a, i32 noundef %i.t, i32 noundef %i.u, i32 noundef 0, ptr noundef %i.p, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %switch.ext75, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %switch.lookup69
  %i.w = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.w) #52
  store ptr %i.p, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 2 uses
  %i.y = mul nsw i32 %2, %1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #53 ; 2 uses
  %i.ac = load i32, ptr %i.c, align 8
  %i.ad = load i32, ptr %i.f, align 4
  %i.ae = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %i.x, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef 0, ptr noundef %i.ab, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr %i.i, align 4
  tail call void @free(ptr noundef %i.x) #52
  %i.ag = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.ag) #52
  store ptr %i.ab, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  store i32 7, ptr %i.i, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.af)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFromChannel(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load <4 x i32>, ptr %i.c, align 8
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = load i32, ptr %i.c, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.h
  %i.i = icmp eq i32 %i.f, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %2, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.54) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087 = phi i32 [ 0, %bb.c ], [ %2, %bb.b ]     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 6 uses
  switch i32 %i.l, label %bb.g [
    i32 11, label %bb.e
    i32 8, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.not = icmp eq i32 %.087, 0
  br i1 %.not, label %.thread, label %.thread.sink.split

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i32 %.087, 1
  br i1 %i.m, label %.thread.sink.split, label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = add i32 %i.l, -3
  %or.cond14 = icmp ult i32 %i.n, 2
  %i.o = icmp eq i32 %i.l, 9
  %or.cond17 = or i1 %i.o, %or.cond14
  %i.p = icmp eq i32 %i.l, 12
  %or.cond20 = or i1 %i.p, %or.cond17
  %i.q = icmp samesign ugt i32 %.087, 2
  %or.cond22 = select i1 %or.cond20, i1 %i.q, i1 false
  br i1 %or.cond22, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp samesign ugt i32 %.087, 3
  br i1 %i.r, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.str.57.sink = phi ptr [ @.str.56, %bb.f ], [ @.str.55, %bb.e ], [ @.str.57, %bb.g ], [ @.str.58, %bb.h ]
  %.289.ph = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 3, %bb.h ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull %.str.57.sink) #52
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %bb.e, %bb.h
  %.289 = phi i32 [ %.087, %bb.f ], [ %.087, %bb.h ], [ 0, %bb.e ], [ %.289.ph, %.thread.sink.split ] ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = shufflevector <4 x i32> %i.e, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.t, ptr %i.s, align 8
  %i.u = mul nsw i32 %i.f, %i.g                   ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 1) #56 ; 2 uses
  %i.x = icmp sgt i32 %i.l, 13
  br i1 %i.x, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.y = icmp sgt i32 %i.u, 0
  br i1 %i.y, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.z = zext nneg i32 %.289 to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  br label %.lr.ph

bb.i:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.59) #52
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 6 uses
  %.084100 = phi i32 [ 0, %.lr.ph.preheader ], [ %.185, %bb.ai ] ; 29 uses
  switch i32 %i.l, label %bb.ai [
end_hunk_0
begin_hunk_1_@ImageAlphaClear:bb.a
; Function Attrs: nounwind uwtable
define void @ImageAlphaMask(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.Image, align 8              ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %.not39 = icmp eq i32 %i.f, %i.h
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.60) #52
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 13
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.61) #52
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #52
  call void @ImageCopy(ptr dead_on_unwind nonnull writable sret(%struct.Image) align 8 %2, ptr noundef nonnull byval(%struct.Image) align 8 %1)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %.not40 = icmp eq i32 %i.m, 1
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ImageFormat(ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load i32, ptr %i.i, align 4
  switch i32 %i.n, label %bb.m [
    i32 1, label %bb.i
    i32 7, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 4
  %i.q = shl i32 %i.o, 1
  %i.r = mul i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul nsw i32 %i.x, %i.v
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = sext i32 %i.y to i64
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.critedge ], [ 0, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.i ] ; 5 uses
  %i.ab = icmp slt i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %..critedge_crit_edge, label %bb.k

..critedge_crit_edge:                             ; preds = %bb.j
  %.pre = load ptr, ptr %0, align 8
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = mul nsw i32 %i.ad, %i.ac
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv, %i.af
  %.pre54 = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %i.ag, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %.pre54) #52
  store ptr %i.t, ptr %0, align 8
  store i32 2, ptr %i.i, align 4
  br label %.loopexit

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.k
  %i.ah = phi ptr [ %.pre, %..critedge_crit_edge ], [ %.pre54, %bb.k ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv42 ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %i.am, ptr %i.an, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 2
  br label %bb.j

bb.m:                                             ; preds = %bb.h
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef 7)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul nsw i32 %i.ar, %i.ap
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %i.au = sext i32 %i.as to i64
  br label %bb.o

bb.o:                                             ; preds = %.critedge2, %bb.n
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.critedge2 ], [ 3, %bb.n ] ; 2 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.critedge2 ], [ 0, %bb.n ] ; 4 uses
  %i.av = icmp slt i64 %indvars.iv47, %i.au
  br i1 %i.av, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.a, align 8
  %i.ax = load i32, ptr %i.e, align 4
  %i.ay = mul nsw i32 %i.ax, %i.aw
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv47, %i.az
  br i1 %i.ba, label %.critedge2, label %.loopexit

.critedge2:                                       ; preds = %bb.o, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv47
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv49
  store i8 %i.bc, ptr %i.be, align 1
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 4
  br label %bb.o

.loopexit:                                        ; preds = %bb.p, %bb.l
  %.sroa.0.0.copyload = phi ptr [ %i.z, %bb.l ], [ %i.at, %bb.p ]
  tail call void @free(ptr noundef %.sroa.0.0.copyload) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #52
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %.loopexit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaPremultiply(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 2 uses
  %i.j = load i32, ptr %i.c, align 8
  %i.k = load i32, ptr %i.f, align 4
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.n = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.n) #52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  store ptr %i.i, ptr %0, align 8
  store i32 7, ptr %i.o, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.p)
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  switch i8 %i.s, label %bb.f [
    i8 0, label %bb.e
    i8 -1, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 0, ptr %i.u, align 1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %1 = uitofp i8 %i.s to float
  %2 = fdiv float %1, 2.550000e+02                ; 2 uses
  %3 = load i8, ptr %i.q, align 1
  %4 = uitofp i8 %3 to float
  %5 = fmul float %2, %4
  %6 = fptoui float %5 to i8
  store i8 %6, ptr %i.q, align 1
  %7 = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %9 = load <2 x i8>, ptr %7, align 1
  %10 = uitofp <2 x i8> %9 to <2 x float>
  %11 = insertelement <2 x float> poison, float %2, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %12, %10                ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fptoui float %i.w to i8
  store i8 %i.x, ptr %7, align 1
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = fptoui float %i.y to i8
  store i8 %i.z, ptr %8, align 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageBlurGaussian(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ImageAlphaPremultiply(ptr noundef nonnull %0)
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 8 uses
  %i.j = load i32, ptr %i.f, align 4
  %i.k = load i32, ptr %i.c, align 8
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 11 uses
  %i.p = load i32, ptr %i.f, align 4
  %i.q = load i32, ptr %i.c, align 8
  %i.r = mul nsw i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 4
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 5 uses
  %i.v = load i32, ptr %i.f, align 4              ; 5 uses
  %i.w = load i32, ptr %i.c, align 8              ; 5 uses
  %i.x = mul nsw i32 %i.w, %i.v                   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader350

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %i.x, 4
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader350.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader350, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader350.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader350.loopexit.unr-lcssa ]
  %lcmp.mod477 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod477)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.epil
  %i.ac = load <4 x i8>, ptr %i.aa, align 1
  %i.ad = uitofp <4 x i8> %i.ac to <4 x float>
  store <4 x float> %i.ad, ptr %i.ab, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader350, label %.lr.ph.epil, !llvm.loop !114

.preheader350:                                    ; preds = %.preheader350.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %i.ae = icmp sgt i32 %i.v, 0                    ; 2 uses
  %i.af = icmp sgt i32 %i.w, 0                    ; 2 uses
  %i.ag = icmp sgt i32 %1, 0                      ; 2 uses
  %i.ah = xor i32 %1, -1                          ; 2 uses
  %i.ai = sext i32 %1 to i64                      ; 2 uses
  %i.aj = sext i32 %i.w to i64                    ; 4 uses
  %i.ak = zext i32 %i.w to i64                    ; 7 uses
  %i.al = sext i32 %i.v to i64
  %wide.trip.count419 = zext nneg i32 %i.v to i64
  %wide.trip.count409 = zext i32 %1 to i64        ; 4 uses
  %invariant.op = sub nsw i64 %i.aj, %i.ai
  %wide.trip.count429 = zext nneg i32 %i.v to i64
  %xtraiter478 = and i64 %wide.trip.count409, 3   ; 3 uses
  %i.am = icmp ult i32 %1, 4
  %unroll_iter483 = and i64 %wide.trip.count409, 2147483644
  %lcmp.mod480.not = icmp eq i64 %xtraiter478, 0
  %lcmp.mod482 = icmp ne i64 %xtraiter478, 0
  %xtraiter485 = and i64 %wide.trip.count409, 3   ; 3 uses
  %i.an = icmp ult i32 %1, 4
  %unroll_iter492 = and i64 %wide.trip.count409, 2147483644
  %lcmp.mod489.not = icmp eq i64 %xtraiter485, 0
  %lcmp.mod491 = icmp ne i64 %xtraiter485, 0
  br label %.preheader349

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv
  %i.aq = load <4 x i8>, ptr %i.ao, align 1
  %i.ar = uitofp <4 x i8> %i.aq to <4 x float>
  store <4 x float> %i.ar, ptr %i.ap, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.au = load <4 x i8>, ptr %i.as, align 1
  %i.av = uitofp <4 x i8> %i.au to <4 x float>
  store <4 x float> %i.av, ptr %i.at, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.ay = load <4 x i8>, ptr %i.aw, align 1
  %i.az = uitofp <4 x i8> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.ax, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.bc = load <4 x i8>, ptr %i.ba, align 1
  %i.bd = uitofp <4 x i8> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.bb, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader350.loopexit.unr-lcssa, label %.lr.ph

.preheader349:                                    ; preds = %.preheader350, %._crit_edge392
  %.0335393 = phi i32 [ 0, %.preheader350 ], [ %i.cu, %._crit_edge392 ]
  br i1 %i.ae, label %.preheader347.lr.ph, label %.preheader348

.preheader347.lr.ph:                              ; preds = %.preheader349
  br i1 %i.af, label %.preheader347.us, label %._crit_edge392

.preheader347.us:                                 ; preds = %.preheader347.lr.ph, %._crit_edge.us
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %._crit_edge.us ], [ 0, %.preheader347.lr.ph ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv416, %i.aj   ; 3 uses
  br i1 %i.ag, label %.lr.ph361.us, label %.preheader346.us

.lr.ph361.us.new:                                 ; preds = %.lr.ph361.us, %.lr.ph361.us.new
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.3, %.lr.ph361.us.new ], [ 0, %.lr.ph361.us ] ; 5 uses
  %i.bf = phi <4 x float> [ %i.bq, %.lr.ph361.us.new ], [ zeroinitializer, %.lr.ph361.us ]
  %niter484 = phi i64 [ %niter484.next.3, %.lr.ph361.us.new ], [ 0, %.lr.ph361.us ]
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv406
  %i.bg = load <4 x float>, ptr %gep, align 4
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv406
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bj = load <4 x float>, ptr %gep.1, align 4
  %i.bk = fadd <4 x float> %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv406
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bm = load <4 x float>, ptr %gep.2, align 4
  %i.bn = fadd <4 x float> %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv406
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bp = load <4 x float>, ptr %gep.3, align 4
  %i.bq = fadd <4 x float> %i.bn, %i.bp           ; 3 uses
  %indvars.iv.next407.3 = add nuw nsw i64 %indvars.iv406, 4 ; 2 uses
  %niter484.next.3 = add i64 %niter484, 4         ; 2 uses
  %niter484.ncmp.3 = icmp eq i64 %niter484.next.3, %unroll_iter483
  br i1 %niter484.ncmp.3, label %.preheader346.us.loopexit.unr-lcssa, label %.lr.ph361.us.new

bb.e:                                             ; preds = %.preheader346.us, %bb.i
  %indvars.iv411 = phi i64 [ 0, %.preheader346.us ], [ %indvars.iv.next412, %bb.i ] ; 4 uses
  %.0315370.us = phi i32 [ %1, %.preheader346.us ], [ %.2317.us, %bb.i ] ; 2 uses
  %i.br = phi <4 x float> [ %i.cq, %.preheader346.us ], [ %i.ci, %bb.i ] ; 2 uses
  %indvars413 = trunc i64 %indvars.iv411 to i32   ; 3 uses
  %i.bs = sub i32 %1, %indvars413
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = add i32 %i.cr, %indvars413
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load <4 x float>, ptr %i.bw, align 4
  %i.by = fsub <4 x float> %i.br, %i.bx
  %i.bz = add nsw i32 %.0315370.us, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1316.us = phi i32 [ %i.bz, %bb.f ], [ %.0315370.us, %bb.e ] ; 2 uses
  %i.ca = phi <4 x float> [ %i.by, %bb.f ], [ %i.br, %bb.e ] ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv411, %invariant.op
  br i1 %i.cb, label %bb.h, label %bb.i

end_hunk_1
