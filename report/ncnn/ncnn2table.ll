Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK8QuantNet16print_quant_infoEv:bb.a
  %i.ah = fpext float %i.af to double
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.22, ptr noundef %i.ac, double noundef %i.aj, double noundef %i.ai, double noundef %i.ah) #41 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = shl i64 %i.ap, 30
  %i.ar = ashr i64 %i.aq, 32
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8QuantNet31initialize_static_weight_scalesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 2                         ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, 2                         ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr i64 %i.y, 2                         ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !159
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !120
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr i64 %i.ah, 2                       ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !159
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !120
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr i64 %i.aq, 2                       ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph465, label %.preheader457

.lr.ph465:                                        ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !150, !nonnull !151, !align !152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !155
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !119
  %wide.trip.count648 = and i64 %i.h, 2147483647
  br label %bb.b

.preheader457:                                    ; preds = %._crit_edge, %bb.a
  %i.az = icmp sgt i32 %i.r, 0
  br i1 %i.az, label %.lr.ph505, label %.preheader456

.lr.ph505:                                        ; preds = %.preheader457
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %wide.trip.count688 = and i64 %i.q, 2147483647
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !123
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph465, %._crit_edge
  %indvars.iv645 = phi i64 [ 0, %.lr.ph465 ], [ %indvars.iv.next646, %._crit_edge ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv645
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !161
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !157 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 276
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !360 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.bk to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i32 %i.bk, 1
  br i1 %i.bm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0441461.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.speculated436.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod926 = trunc i32 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod926)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.epil.init
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !163
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp olt float %.0441461.epil.init, %i.bp
  %.sroa.speculated436.epil = select i1 %i.bq, float %i.bp, float %.0441461.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.0441.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.speculated436.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated436.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.br = fcmp oeq float %.0441.lcssa, 0.000000e+00
  %i.bs = fdiv float 1.270000e+02, %.0441.lcssa
  %i.bt = select i1 %i.br, float 1.000000e+00, float %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv645
  store float %i.bt, ptr %i.bu, align 4, !tbaa !163
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next646, %wide.trip.count648
  br i1 %exitcond649.not, label %.preheader457, label %bb.b, !llvm.loop !319

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0441461 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.sroa.speculated436.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !163
  %i.bx = tail call noundef float @llvm.fabs.f32(float %i.bw) ; 2 uses
  %i.by = fcmp olt float %.0441461, %i.bx
  %.sroa.speculated436 = select i1 %i.by, float %i.bx, float %.0441461 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !163
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.cb) ; 2 uses
  %i.cd = fcmp olt float %.sroa.speculated436, %i.cc
  %.sroa.speculated436.1 = select i1 %i.cd, float %i.cc, float %.sroa.speculated436 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !320

.preheader456:                                    ; preds = %._crit_edge502, %.preheader457
  %i.ce = icmp sgt i32 %i.aa, 0
  br i1 %i.ce, label %.lr.ph542, label %.preheader454

.lr.ph542:                                        ; preds = %.preheader456
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %wide.trip.count753 = and i64 %i.z, 2147483647
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph505, %._crit_edge502
  %i.ch = phi ptr [ %.pre, %.lr.ph505 ], [ %i.gx, %._crit_edge502 ]
  %indvars.iv685 = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next686, %._crit_edge502 ] ; 9 uses
  %i.ci = load ptr, ptr %i.ba, align 8, !tbaa !150, !nonnull !151, !align !152
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv685
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !161
  %i.cm = sext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !157 ; 9 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 216
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !362
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 208 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !363 ; 2 uses
  %i.cu = getelementptr inbounds nuw [224 x i8], ptr %i.ch, i64 %indvars.iv685
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, i32 noundef %i.ct, i64 noundef 4, ptr noundef null)
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !363 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %.pre892 = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 2 uses
  br i1 %i.cw, label %.lr.ph474, label %._crit_edge475

.lr.ph474:                                        ; preds = %bb.c
  %i.cx = sdiv i32 %i.cr, %i.ct                   ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 248
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !130
  %i.da = icmp sgt i32 %i.cx, 0
  %i.db = getelementptr inbounds nuw [224 x i8], ptr %.pre892, i64 %indvars.iv685
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !130
  %1 = zext nneg i32 %i.cx to i64
  %wide.trip.count658 = zext nneg i32 %i.cv to i64
  %wide.trip.count653 = zext i32 %i.cx to i64     ; 2 uses
  %xtraiter927 = and i64 %wide.trip.count653, 1
  %i.dd = icmp eq i32 %i.cx, 1
  %unroll_iter931 = and i64 %wide.trip.count653, 2147483646
  %lcmp.mod928.not = icmp eq i64 %xtraiter927, 0
  %lcmp.mod930 = trunc i32 %i.cx to i1
  br label %bb.d

._crit_edge475:                                   ; preds = %._crit_edge470, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 220
  %i.df = load i32, ptr %i.de, align 4, !tbaa !364 ; 5 uses
  %i.dg = getelementptr inbounds nuw [224 x i8], ptr %.pre892, i64 %indvars.iv685
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, i32 noundef %i.cv, i64 noundef 4, ptr noundef null)
  %i.di = load i32, ptr %i.cs, align 8, !tbaa !363 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 0
  %.pre893 = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 2 uses
  br i1 %i.dj, label %.lr.ph485, label %._crit_edge486

.lr.ph485:                                        ; preds = %._crit_edge475
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 392
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !130
  %i.dm = icmp sgt i32 %i.df, 0
  %i.dn = getelementptr inbounds nuw [224 x i8], ptr %.pre893, i64 %indvars.iv685
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !130
  %2 = zext nneg i32 %i.df to i64
  %wide.trip.count668 = zext nneg i32 %i.di to i64
  %wide.trip.count663 = zext i32 %i.df to i64     ; 2 uses
  %xtraiter933 = and i64 %wide.trip.count663, 1
  %i.dq = icmp eq i32 %i.df, 1
  %unroll_iter937 = and i64 %wide.trip.count663, 2147483646
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  %lcmp.mod936 = trunc i32 %i.df to i1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph474, %._crit_edge470
  %indvars.iv655 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next656, %._crit_edge470 ] ; 3 uses
  %i.dr = mul nuw nsw i64 %indvars.iv655, %1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dr ; 3 uses
  br i1 %i.da, label %.lr.ph469.preheader, label %._crit_edge470

.lr.ph469.preheader:                              ; preds = %bb.d
  br i1 %i.dd, label %.lr.ph469.epil.preheader, label %.lr.ph469

._crit_edge470.loopexit.unr-lcssa:                ; preds = %.lr.ph469
  br i1 %lcmp.mod928.not, label %._crit_edge470, label %.lr.ph469.epil.preheader

.lr.ph469.epil.preheader:                         ; preds = %._crit_edge470.loopexit.unr-lcssa, %.lr.ph469.preheader
  %indvars.iv650.epil.init = phi i64 [ 0, %.lr.ph469.preheader ], [ %indvars.iv.next651.1, %._crit_edge470.loopexit.unr-lcssa ]
  %.0443466.epil.init = phi float [ 0.000000e+00, %.lr.ph469.preheader ], [ %.sroa.speculated430.1, %._crit_edge470.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod930)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv650.epil.init
  %i.du = load float, ptr %i.dt, align 4, !tbaa !163
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.dw = fcmp olt float %.0443466.epil.init, %i.dv
  %.sroa.speculated430.epil = select i1 %i.dw, float %i.dv, float %.0443466.epil.init
  br label %._crit_edge470

._crit_edge470:                                   ; preds = %.lr.ph469.epil.preheader, %._crit_edge470.loopexit.unr-lcssa, %bb.d
  %.0443.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %.sroa.speculated430.1, %._crit_edge470.loopexit.unr-lcssa ], [ %.sroa.speculated430.epil, %.lr.ph469.epil.preheader ] ; 2 uses
  %i.dx = fcmp oeq float %.0443.lcssa, 0.000000e+00
  %i.dy = fdiv float 1.270000e+02, %.0443.lcssa
  %i.dz = select i1 %i.dx, float 1.000000e+00, float %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv655
  store float %i.dz, ptr %i.ea, align 4, !tbaa !163
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count658
  br i1 %exitcond659.not, label %._crit_edge475, label %bb.d, !llvm.loop !321

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %indvars.iv650 = phi i64 [ %indvars.iv.next651.1, %.lr.ph469 ], [ 0, %.lr.ph469.preheader ] ; 3 uses
  %.0443466 = phi float [ %.sroa.speculated430.1, %.lr.ph469 ], [ 0.000000e+00, %.lr.ph469.preheader ] ; 2 uses
  %niter932 = phi i64 [ %niter932.next.1, %.lr.ph469 ], [ 0, %.lr.ph469.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv650
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !163
  %i.ed = tail call noundef float @llvm.fabs.f32(float %i.ec) ; 2 uses
  %i.ee = fcmp olt float %.0443466, %i.ed
  %.sroa.speculated430 = select i1 %i.ee, float %i.ed, float %.0443466 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv650
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !163
  %i.ei = tail call noundef float @llvm.fabs.f32(float %i.eh) ; 2 uses
  %i.ej = fcmp olt float %.sroa.speculated430, %i.ei
  %.sroa.speculated430.1 = select i1 %i.ej, float %i.ei, float %.sroa.speculated430 ; 3 uses
  %indvars.iv.next651.1 = add nuw nsw i64 %indvars.iv650, 2 ; 2 uses
  %niter932.next.1 = add i64 %niter932, 2         ; 2 uses
  %niter932.ncmp.1 = icmp eq i64 %niter932.next.1, %unroll_iter931
  br i1 %niter932.ncmp.1, label %._crit_edge470.loopexit.unr-lcssa, label %.lr.ph469, !llvm.loop !322

._crit_edge486:                                   ; preds = %._crit_edge481, %._crit_edge475
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cp, i64 224
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !365 ; 5 uses
  %i.em = getelementptr inbounds nuw [224 x i8], ptr %.pre893, i64 %indvars.iv685
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.en, i32 noundef %i.di, i64 noundef 4, ptr noundef null)
  %i.eo = load i32, ptr %i.cs, align 8, !tbaa !363 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph496, label %._crit_edge497

.lr.ph496:                                        ; preds = %._crit_edge486
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cp, i64 536
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !130
  %i.es = icmp sgt i32 %i.el, 0
  %i.et = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.eu = getelementptr inbounds nuw [224 x i8], ptr %i.et, i64 %indvars.iv685
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !130
  %3 = zext nneg i32 %i.el to i64
  %wide.trip.count678 = zext nneg i32 %i.eo to i64
  %wide.trip.count673 = zext i32 %i.el to i64     ; 2 uses
  %xtraiter939 = and i64 %wide.trip.count673, 1
  %i.ex = icmp eq i32 %i.el, 1
  %unroll_iter943 = and i64 %wide.trip.count673, 2147483646
  %lcmp.mod940.not = icmp eq i64 %xtraiter939, 0
  %lcmp.mod942 = trunc i32 %i.el to i1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph485, %._crit_edge481
  %indvars.iv665 = phi i64 [ 0, %.lr.ph485 ], [ %indvars.iv.next666, %._crit_edge481 ] ; 3 uses
  %i.ey = mul nuw nsw i64 %indvars.iv665, %2
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ey ; 3 uses
  br i1 %i.dm, label %.lr.ph480.preheader, label %._crit_edge481

.lr.ph480.preheader:                              ; preds = %bb.e
  br i1 %i.dq, label %.lr.ph480.epil.preheader, label %.lr.ph480

._crit_edge481.loopexit.unr-lcssa:                ; preds = %.lr.ph480
  br i1 %lcmp.mod934.not, label %._crit_edge481, label %.lr.ph480.epil.preheader

.lr.ph480.epil.preheader:                         ; preds = %._crit_edge481.loopexit.unr-lcssa, %.lr.ph480.preheader
  %indvars.iv660.epil.init = phi i64 [ 0, %.lr.ph480.preheader ], [ %indvars.iv.next661.1, %._crit_edge481.loopexit.unr-lcssa ]
  %.0444477.epil.init = phi float [ 0.000000e+00, %.lr.ph480.preheader ], [ %.sroa.speculated424.1, %._crit_edge481.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod936)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv660.epil.init
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !163
  %i.fc = tail call noundef float @llvm.fabs.f32(float %i.fb) ; 2 uses
  %i.fd = fcmp olt float %.0444477.epil.init, %i.fc
  %.sroa.speculated424.epil = select i1 %i.fd, float %i.fc, float %.0444477.epil.init
  br label %._crit_edge481

._crit_edge481:                                   ; preds = %.lr.ph480.epil.preheader, %._crit_edge481.loopexit.unr-lcssa, %bb.e
  %.0444.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.speculated424.1, %._crit_edge481.loopexit.unr-lcssa ], [ %.sroa.speculated424.epil, %.lr.ph480.epil.preheader ] ; 2 uses
  %i.fe = fcmp oeq float %.0444.lcssa, 0.000000e+00
  %i.ff = fdiv float 1.270000e+02, %.0444.lcssa
  %i.fg = select i1 %i.fe, float 1.000000e+00, float %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv665
  store float %i.fg, ptr %i.fh, align 4, !tbaa !163
  %indvars.iv.next666 = add nuw nsw i64 %indvars.iv665, 1 ; 2 uses
  %exitcond669.not = icmp eq i64 %indvars.iv.next666, %wide.trip.count668
  br i1 %exitcond669.not, label %._crit_edge486, label %bb.e, !llvm.loop !323

.lr.ph480:                                        ; preds = %.lr.ph480.preheader, %.lr.ph480
  %indvars.iv660 = phi i64 [ %indvars.iv.next661.1, %.lr.ph480 ], [ 0, %.lr.ph480.preheader ] ; 3 uses
  %.0444477 = phi float [ %.sroa.speculated424.1, %.lr.ph480 ], [ 0.000000e+00, %.lr.ph480.preheader ] ; 2 uses
  %niter938 = phi i64 [ %niter938.next.1, %.lr.ph480 ], [ 0, %.lr.ph480.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv660
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !163
  %i.fk = tail call noundef float @llvm.fabs.f32(float %i.fj) ; 2 uses
  %i.fl = fcmp olt float %.0444477, %i.fk
  %.sroa.speculated424 = select i1 %i.fl, float %i.fk, float %.0444477 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv660
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !163
  %i.fp = tail call noundef float @llvm.fabs.f32(float %i.fo) ; 2 uses
  %i.fq = fcmp olt float %.sroa.speculated424, %i.fp
  %.sroa.speculated424.1 = select i1 %i.fq, float %i.fp, float %.sroa.speculated424 ; 3 uses
  %indvars.iv.next661.1 = add nuw nsw i64 %indvars.iv660, 2 ; 2 uses
  %niter938.next.1 = add i64 %niter938, 2         ; 2 uses
  %niter938.ncmp.1 = icmp eq i64 %niter938.next.1, %unroll_iter937
  br i1 %niter938.ncmp.1, label %._crit_edge481.loopexit.unr-lcssa, label %.lr.ph480, !llvm.loop !324

._crit_edge497:                                   ; preds = %._crit_edge492, %._crit_edge486
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cp, i64 680
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !130 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cp, i64 724
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !366 ; 4 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  br i1 %i.fv, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %._crit_edge497
  %wide.trip.count683 = zext nneg i32 %i.fu to i64 ; 2 uses
  %xtraiter945 = and i64 %wide.trip.count683, 1
  %i.fw = icmp eq i32 %i.fu, 1
  br i1 %i.fw, label %.lr.ph501.epil.preheader, label %.lr.ph501.preheader.new

.lr.ph501.preheader.new:                          ; preds = %.lr.ph501.preheader
  %unroll_iter949 = and i64 %wide.trip.count683, 2147483646
  br label %.lr.ph501

bb.f:                                             ; preds = %.lr.ph496, %._crit_edge492
  %indvars.iv675 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next676, %._crit_edge492 ] ; 3 uses
  %i.fx = mul nuw nsw i64 %indvars.iv675, %3
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fx ; 3 uses
  br i1 %i.es, label %.lr.ph491.preheader, label %._crit_edge492

.lr.ph491.preheader:                              ; preds = %bb.f
  br i1 %i.ex, label %.lr.ph491.epil.preheader, label %.lr.ph491

._crit_edge492.loopexit.unr-lcssa:                ; preds = %.lr.ph491
  br i1 %lcmp.mod940.not, label %._crit_edge492, label %.lr.ph491.epil.preheader

.lr.ph491.epil.preheader:                         ; preds = %._crit_edge492.loopexit.unr-lcssa, %.lr.ph491.preheader
  %indvars.iv670.epil.init = phi i64 [ 0, %.lr.ph491.preheader ], [ %indvars.iv.next671.1, %._crit_edge492.loopexit.unr-lcssa ]
  %.0445488.epil.init = phi float [ 0.000000e+00, %.lr.ph491.preheader ], [ %.sroa.speculated418.1, %._crit_edge492.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod942)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv670.epil.init
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !163
  %i.gb = tail call noundef float @llvm.fabs.f32(float %i.ga) ; 2 uses
  %i.gc = fcmp olt float %.0445488.epil.init, %i.gb
  %.sroa.speculated418.epil = select i1 %i.gc, float %i.gb, float %.0445488.epil.init
  br label %._crit_edge492

._crit_edge492:                                   ; preds = %.lr.ph491.epil.preheader, %._crit_edge492.loopexit.unr-lcssa, %bb.f
  %.0445.lcssa = phi float [ 0.000000e+00, %bb.f ], [ %.sroa.speculated418.1, %._crit_edge492.loopexit.unr-lcssa ], [ %.sroa.speculated418.epil, %.lr.ph491.epil.preheader ] ; 2 uses
  %i.gd = fcmp oeq float %.0445.lcssa, 0.000000e+00
  %i.ge = fdiv float 1.270000e+02, %.0445.lcssa
  %i.gf = select i1 %i.gd, float 1.000000e+00, float %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv675
  store float %i.gf, ptr %i.gg, align 4, !tbaa !163
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond679.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count678
  br i1 %exitcond679.not, label %._crit_edge497, label %bb.f, !llvm.loop !325

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %.lr.ph491
  %indvars.iv670 = phi i64 [ %indvars.iv.next671.1, %.lr.ph491 ], [ 0, %.lr.ph491.preheader ] ; 3 uses
  %.0445488 = phi float [ %.sroa.speculated418.1, %.lr.ph491 ], [ 0.000000e+00, %.lr.ph491.preheader ] ; 2 uses
  %niter944 = phi i64 [ %niter944.next.1, %.lr.ph491 ], [ 0, %.lr.ph491.preheader ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv670
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !163
  %i.gj = tail call noundef float @llvm.fabs.f32(float %i.gi) ; 2 uses
  %i.gk = fcmp olt float %.0445488, %i.gj
  %.sroa.speculated418 = select i1 %i.gk, float %i.gj, float %.0445488 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv670
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !163
  %i.go = tail call noundef float @llvm.fabs.f32(float %i.gn) ; 2 uses
  %i.gp = fcmp olt float %.sroa.speculated418, %i.go
  %.sroa.speculated418.1 = select i1 %i.gp, float %i.go, float %.sroa.speculated418 ; 3 uses
  %indvars.iv.next671.1 = add nuw nsw i64 %indvars.iv670, 2 ; 2 uses
  %niter944.next.1 = add i64 %niter944, 2         ; 2 uses
  %niter944.ncmp.1 = icmp eq i64 %niter944.next.1, %unroll_iter943
  br i1 %niter944.ncmp.1, label %._crit_edge492.loopexit.unr-lcssa, label %.lr.ph491, !llvm.loop !326

._crit_edge502.loopexit.unr-lcssa:                ; preds = %.lr.ph501
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %._crit_edge502, label %.lr.ph501.epil.preheader

.lr.ph501.epil.preheader:                         ; preds = %._crit_edge502.loopexit.unr-lcssa, %.lr.ph501.preheader
  %indvars.iv680.epil.init = phi i64 [ 0, %.lr.ph501.preheader ], [ %indvars.iv.next681.1, %._crit_edge502.loopexit.unr-lcssa ]
  %.0447498.epil.init = phi float [ 0.000000e+00, %.lr.ph501.preheader ], [ %.sroa.speculated412.1, %._crit_edge502.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod948 = trunc i32 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod948)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv680.epil.init
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !163
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gr) ; 2 uses
  %i.gt = fcmp olt float %.0447498.epil.init, %i.gs
  %.sroa.speculated412.epil = select i1 %i.gt, float %i.gs, float %.0447498.epil.init
  br label %._crit_edge502

._crit_edge502:                                   ; preds = %.lr.ph501.epil.preheader, %._crit_edge502.loopexit.unr-lcssa, %._crit_edge497
  %.0447.lcssa = phi float [ 0.000000e+00, %._crit_edge497 ], [ %.sroa.speculated412.1, %._crit_edge502.loopexit.unr-lcssa ], [ %.sroa.speculated412.epil, %.lr.ph501.epil.preheader ] ; 2 uses
  %i.gu = fcmp oeq float %.0447.lcssa, 0.000000e+00
  %i.gv = fdiv float 1.270000e+02, %.0447.lcssa
  %i.gw = select i1 %i.gu, float 1.000000e+00, float %i.gv
  %i.gx = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 2 uses
  %i.gy = getelementptr inbounds nuw [224 x i8], ptr %i.gx, i64 %indvars.iv685
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 216
  store float %i.gw, ptr %i.gz, align 8, !tbaa !180
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %.preheader456, label %bb.c, !llvm.loop !327

.lr.ph501:                                        ; preds = %.lr.ph501, %.lr.ph501.preheader.new
  %indvars.iv680 = phi i64 [ 0, %.lr.ph501.preheader.new ], [ %indvars.iv.next681.1, %.lr.ph501 ] ; 3 uses
  %.0447498 = phi float [ 0.000000e+00, %.lr.ph501.preheader.new ], [ %.sroa.speculated412.1, %.lr.ph501 ] ; 2 uses
  %niter950 = phi i64 [ 0, %.lr.ph501.preheader.new ], [ %niter950.next.1, %.lr.ph501 ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv680
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !163
  %i.hc = tail call noundef float @llvm.fabs.f32(float %i.hb) ; 2 uses
  %i.hd = fcmp olt float %.0447498, %i.hc
  %.sroa.speculated412 = select i1 %i.hd, float %i.hc, float %.0447498 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv680
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !163
  %i.hh = tail call noundef float @llvm.fabs.f32(float %i.hg) ; 2 uses
  %i.hi = fcmp olt float %.sroa.speculated412, %i.hh
  %.sroa.speculated412.1 = select i1 %i.hi, float %i.hh, float %.sroa.speculated412 ; 3 uses
  %indvars.iv.next681.1 = add nuw nsw i64 %indvars.iv680, 2 ; 2 uses
  %niter950.next.1 = add i64 %niter950, 2         ; 2 uses
  %niter950.ncmp.1 = icmp eq i64 %niter950.next.1, %unroll_iter949
  br i1 %niter950.ncmp.1, label %._crit_edge502.loopexit.unr-lcssa, label %.lr.ph501, !llvm.loop !328

.preheader454:                                    ; preds = %.split531, %.preheader456
  %i.hj = icmp sgt i32 %i.aj, 0
  br i1 %i.hj, label %.lr.ph587, label %.preheader452

.lr.ph587:                                        ; preds = %.preheader454
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %wide.trip.count821 = and i64 %i.ai, 2147483647
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph542, %.split531
  %indvars.iv750 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next751, %.split531 ] ; 5 uses
  %i.hm = load ptr, ptr %i.cf, align 8, !tbaa !150, !nonnull !151, !align !152
  %i.hn = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv750
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !161
  %i.hq = sext i32 %i.hp to i64
  %i.hr = load ptr, ptr %i.hm, align 8, !tbaa !155
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !157 ; 11 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 216
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !368
  %i.hw = icmp eq i32 %i.hv, 2                    ; 2 uses
  %i.hx = select i1 %i.hw, i32 2, i32 1           ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 212
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !369
  %i.ia = sdiv i32 %i.hz, %i.hx
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 208 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !370 ; 2 uses
  %i.id = sdiv i32 %i.ia, %i.ic                   ; 4 uses
  %i.ie = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.if = getelementptr inbounds nuw [144 x i8], ptr %i.ie, i64 %indvars.iv750
  %i.ig = zext i1 %i.hw to i32                    ; 2 uses
  %i.ih = shl i32 %i.ic, %i.ig
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.if, i32 noundef %i.ih, i64 noundef 4, ptr noundef null)
  %i.ii = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.ij = getelementptr inbounds nuw [144 x i8], ptr %i.ii, i64 %indvars.iv750
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.il = load i32, ptr %i.ib, align 8, !tbaa !370
  %i.im = shl i32 %i.il, %i.ig
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ik, i32 noundef %i.im, i64 noundef 4, ptr noundef null)
  %i.in = load i32, ptr %i.ib, align 8, !tbaa !370 ; 7 uses
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.split, label %.split531

.split:                                           ; preds = %bb.g
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ht, i64 240
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 288
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 268
  %i.is = getelementptr inbounds nuw i8, ptr %i.ht, i64 224
  %i.it = icmp sgt i32 %i.id, 0
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 312
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ht, i64 360
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 340
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ht, i64 296
  %i.iy = load i32, ptr %i.iw, align 4, !tbaa !184, !noalias !371
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !130, !noalias !371
  %i.ja = load i64, ptr %i.iv, align 8, !tbaa !131, !noalias !371
  %i.jb = load i64, ptr %i.iu, align 8, !tbaa !175, !noalias !371 ; 2 uses
  %factor.op.mul532 = mul i64 %i.ja, %i.jb
  %i.jc = sext i32 %i.iy to i64
  %factor.op.mul = mul i64 %i.jb, %i.jc
  %i.jd = load ptr, ptr %i.cg, align 8, !tbaa !121
  %i.je = getelementptr inbounds nuw [144 x i8], ptr %i.jd, i64 %indvars.iv750 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !130 ; 2 uses
  %i.jg = load i32, ptr %i.ir, align 4, !tbaa !184, !noalias !372
  %i.jh = load ptr, ptr %i.is, align 8, !tbaa !130, !noalias !372 ; 2 uses
  %i.ji = load i64, ptr %i.iq, align 8, !tbaa !131, !noalias !372
  %i.jj = load i64, ptr %i.ip, align 8, !tbaa !175, !noalias !372 ; 2 uses
  %factor.op.mul533 = mul i64 %i.ji, %i.jj        ; 2 uses
  %i.jk = sext i32 %i.jg to i64
  %factor.op.mul518 = mul i64 %i.jj, %i.jk        ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !130 ; 2 uses
  %i.jn = zext nneg i32 %i.in to i64              ; 2 uses
  %wide.trip.count748 = zext nneg i32 %i.hx to i64 ; 2 uses
  %wide.trip.count743 = zext nneg i32 %i.in to i64 ; 6 uses
  br i1 %i.it, label %.preheader455.us.us.preheader, label %.preheader455.us538.preheader

.preheader455.us538.preheader:                    ; preds = %.split
  %xtraiter951 = and i64 %wide.trip.count743, 1
  %i.jo = icmp eq i32 %i.in, 1
  %unroll_iter955 = and i64 %wide.trip.count743, 2147483646
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  %lcmp.mod954 = trunc i32 %i.in to i1
  br label %.preheader455.us538

.preheader455.us.us.preheader:                    ; preds = %.split
  %wide.trip.count733 = zext nneg i32 %i.id to i64 ; 2 uses
  %xtraiter958 = and i64 %wide.trip.count733, 1
  %i.jp = icmp eq i32 %i.id, 1
  %unroll_iter962 = and i64 %wide.trip.count733, 2147483646
  %lcmp.mod959.not = icmp eq i64 %xtraiter958, 0
  %lcmp.mod961 = trunc i32 %i.id to i1
  %xtraiter965 = and i64 %wide.trip.count743, 1
  %i.jq = icmp eq i32 %i.in, 1
  %unroll_iter969 = and i64 %wide.trip.count743, 2147483646
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  %lcmp.mod968 = trunc i32 %i.in to i1
  br label %.preheader455.us.us

end_hunk_0
begin_hunk_1_@_ZN8QuantNet11quantize_KLEv:bb.a
  %i.be = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.be)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8QuantNet11quantize_KLEv.omp_outlined.23, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %1, ptr nonnull %3, ptr nonnull %i.a, ptr nonnull %i.c)
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8QuantNet11quantize_KLEv.omp_outlined.25, ptr nonnull %i.c, ptr nonnull %0)
  %i.bg = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8QuantNet11quantize_KLEv.omp_outlined.26, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %1, ptr nonnull %3, ptr nonnull %i.a, ptr nonnull %i.c)
  %i.bh = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bh)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8QuantNet11quantize_KLEv.omp_outlined.28, ptr nonnull %i.c, ptr nonnull %0)
  %i.bi = load ptr, ptr %3, align 8, !tbaa !190   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %i.bi, %bb.f ] ; 3 uses
  %i.bl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !63
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #20, !inline_history !11
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bk
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.bo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bi, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #37
  br label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bp = load ptr, ptr %1, align 8, !tbaa !190   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit, %.lr.ph.i.i.i7
  %.05.i.i.i8 = phi ptr [ %i.bu, %.lr.ph.i.i.i7 ], [ %i.bp, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !63
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i8) #20, !inline_history !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bu, %i.br
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10, label %.lr.ph.i.i.i7, !llvm.loop !12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10: ; preds = %.lr.ph.i.i.i7
  %.pr.i11 = load ptr, ptr %1, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit
  %i.bv = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10 ], [ %i.bp, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i13 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i13, label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #37
  br label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14

_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %i.bw

bb.j:                                             ; preds = %bb.c, %bb.d, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8QuantNet11quantize_KLEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !161    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !161
  %i.h = load i32, ptr %0, align 4, !tbaa !161    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !161
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !161
  %i.k = load i32, ptr %i.a, align 4, !tbaa !161  ; 2 uses
  %.not202 = icmp sgt i32 %i.k, %i.j
  br i1 %.not202, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 6 uses
  %i.o = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph205, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread181
  %indvars.iv245 = phi i64 [ %i.o, %.lr.ph205 ], [ %indvars.iv.next246, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread181 ] ; 9 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !150, !nonnull !151, !align !152
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv245
  %i.s = load i32, ptr %i.r, align 4, !tbaa !161
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157  ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 2 uses
  %i.aa = icmp eq i64 %i.z, 11
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 8391732706658905923
  %i.ae = getelementptr i8, ptr %i.ab, i64 3
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 7957695015494119286
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.am = load i32, ptr %i.al, align 8, !tbaa !193 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 212
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !195
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 220
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 260
  %i.at = load i32, ptr %i.as, align 4, !tbaa !196
  %i.au = sdiv i32 %i.at, %i.am                   ; 5 uses
  %i.av = icmp eq i32 %i.ao, 3
  %i.aw = icmp eq i32 %i.aq, 3
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %i.ax = load <4 x i32>, ptr %i.ar, align 4, !tbaa !161
  %i.ay = icmp eq <4 x i32> %i.ax, splat (i32 1)  ; 4 uses
  %i.az = extractelement <4 x i1> %i.ay, i64 0
  %or.cond3 = select i1 %or.cond, i1 %i.az, i1 false
  %i.ba = extractelement <4 x i1> %i.ay, i64 1
  %or.cond5 = select i1 %or.cond3, i1 %i.ba, i1 false
  %i.bb = extractelement <4 x i1> %i.ay, i64 2
  %or.cond7 = select i1 %or.cond5, i1 %i.bb, i1 false
  %i.bc = extractelement <4 x i1> %i.ay, i64 3
  %or.cond9 = select i1 %or.cond7, i1 %i.bc, i1 false
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bd, i64 %indvars.iv245
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i32 noundef %i.am, i64 noundef 4, ptr noundef null)
          to label %.preheader183 unwind label %bb.f

.preheader183:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bf = icmp sgt i32 %i.am, 0
  br i1 %i.bf, label %.lr.ph187, label %thread-pre-split

.lr.ph187:                                        ; preds = %.preheader183
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 352
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130, !noalias !402
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !175, !noalias !402
  %i.bk = icmp sgt i32 %i.au, 0
  %4 = zext nneg i32 %i.au to i64
  %wide.trip.count213 = zext nneg i32 %i.am to i64
  %factor.op.mul = mul i64 %i.bj, %4
  %wide.trip.count = zext i32 %i.au to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bl = icmp eq i32 %i.au, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod280 = trunc i32 %i.au to i1
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %indvars.iv245
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130
  %. = select i1 %or.cond9, float 3.100000e+01, float 1.270000e+02
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph187, %._crit_edge
  %indvars.iv210 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next211, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %indvars.iv210, %factor.op.mul
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.reass ; 3 uses
  br i1 %i.bk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  br i1 %i.bl, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0178184.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.speculated154.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.epil.init
  %i.br = load float, ptr %i.bq, align 4, !tbaa !163
  %i.bs = call noundef float @llvm.fabs.f32(float %i.br) ; 2 uses
  %i.bt = fcmp olt float %.0178184.epil.init, %i.bs
  %.sroa.speculated154.epil = select i1 %i.bt, float %i.bs, float %.0178184.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.0178.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %.sroa.speculated154.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated154.epil, %.lr.ph.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv210
  %i.bv = fdiv float %., %.0178.lcssa
  store float %i.bv, ptr %i.bu, align 4, !tbaa !163
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %thread-pre-split, label %bb.d, !llvm.loop !388

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0178184 = phi float [ %.sroa.speculated154.1, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !163
  %i.by = call noundef float @llvm.fabs.f32(float %i.bx) ; 2 uses
  %i.bz = fcmp olt float %.0178184, %i.by
  %.sroa.speculated154 = select i1 %i.bz, float %i.by, float %.0178184 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !163
  %i.cd = call noundef float @llvm.fabs.f32(float %i.cc) ; 2 uses
  %i.ce = fcmp olt float %.sroa.speculated154, %i.cd
  %.sroa.speculated154.1 = select i1 %i.ce, float %i.cd, float %.sroa.speculated154 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !389

thread-pre-split:                                 ; preds = %._crit_edge, %.preheader183, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.pr = load i64, ptr %i.y, align 8, !tbaa !158
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread179

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread179: ; preds = %bb.c, %thread-pre-split
  %i.cf = phi i64 [ %.pr, %thread-pre-split ], [ %i.z, %bb.c ]
  %i.cg = icmp eq i64 %i.cf, 20
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread180

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread179
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.ci = load i128, ptr %i.ch, align 1
  %i.cj = xor i128 %i.ci, 138844297650319802350679583742711721795
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = zext i32 %i.cl to i128
  %i.cn = xor i128 %i.cm, 1702062423
  %i.co = or i128 %i.cj, %i.cn
  %i.cp = icmp ne i128 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread180

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !198 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 260
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !199
  %i.cw = sdiv i32 %i.cv, %i.ct                   ; 4 uses
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cx, i64 %indvars.iv245
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.cy, i32 noundef %i.ct, i64 noundef 4, ptr noundef null)
          to label %.preheader182 unwind label %bb.f

.preheader182:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread
  %i.cz = icmp sgt i32 %i.ct, 0
  br i1 %i.cz, label %.lr.ph194, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread180

.lr.ph194:                                        ; preds = %.preheader182
  %i.da = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !130, !noalias !403
  %i.dc = icmp sgt i32 %i.cw, 0
  %i.dd = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.de = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %indvars.iv245
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !130 ; 3 uses
  br i1 %i.dc, label %.lr.ph191.us.preheader, label %_ZN4ncnn3MatD2Ev.exit103.preheader

_ZN4ncnn3MatD2Ev.exit103.preheader:               ; preds = %.lr.ph194
  %wide.trip.count218 = zext nneg i32 %i.ct to i64 ; 3 uses
  %min.iters.check266 = icmp ult i32 %i.ct, 8
  br i1 %min.iters.check266, label %_ZN4ncnn3MatD2Ev.exit103.preheader277, label %vector.ph267

vector.ph267:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit103.preheader
  %n.vec268 = and i64 %wide.trip.count218, 2147483640 ; 3 uses
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next271, %vector.body269 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index270 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> splat (float +inf), ptr %i.dg, align 4, !tbaa !163
  store <4 x float> splat (float +inf), ptr %i.dh, align 4, !tbaa !163
  %index.next271 = add nuw i64 %index270, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next271, %n.vec268
  br i1 %i.di, label %middle.block272, label %vector.body269, !llvm.loop !392

middle.block272:                                  ; preds = %vector.body269
  %cmp.n273 = icmp eq i64 %n.vec268, %wide.trip.count218
  br i1 %cmp.n273, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread180, label %_ZN4ncnn3MatD2Ev.exit103.preheader277

_ZN4ncnn3MatD2Ev.exit103.preheader277:            ; preds = %_ZN4ncnn3MatD2Ev.exit103.preheader, %middle.block272
  %indvars.iv215.ph = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit103.preheader ], [ %n.vec268, %middle.block272 ]
  br label %_ZN4ncnn3MatD2Ev.exit103

.lr.ph191.us.preheader:                           ; preds = %.lr.ph194
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !175, !noalias !403
  %i.dl = zext nneg i32 %i.cw to i64              ; 3 uses
  %wide.trip.count228 = zext nneg i32 %i.ct to i64
  %factor.op.mul258 = mul i64 %i.dk, %i.dl
  %xtraiter281 = and i64 %i.dl, 1
  %i.dm = icmp eq i32 %i.cw, 1
  %unroll_iter285 = and i64 %i.dl, 2147483646
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  %lcmp.mod284 = trunc i32 %i.cw to i1
  br label %.lr.ph191.us

.lr.ph191.us:                                     ; preds = %.lr.ph191.us.preheader, %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us
  %indvars.iv225 = phi i64 [ 0, %.lr.ph191.us.preheader ], [ %indvars.iv.next226, %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us ] ; 3 uses
  %.reass259 = mul i64 %indvars.iv225, %factor.op.mul258
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 %.reass259 ; 3 uses
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph191.us.new

.lr.ph191.us.new:                                 ; preds = %.lr.ph191.us, %.lr.ph191.us.new
  %indvars.iv220 = phi i64 [ %indvars.iv.next221.1, %.lr.ph191.us.new ], [ 0, %.lr.ph191.us ] ; 3 uses
  %.0177188.us = phi float [ %.sroa.speculated131.us.1, %.lr.ph191.us.new ], [ 0.000000e+00, %.lr.ph191.us ] ; 2 uses
  %niter286 = phi i64 [ %niter286.next.1, %.lr.ph191.us.new ], [ 0, %.lr.ph191.us ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv220
  %i.dp = load float, ptr %i.do, align 4, !tbaa !163
  %i.dq = call noundef float @llvm.fabs.f32(float %i.dp) ; 2 uses
  %i.dr = fcmp olt float %.0177188.us, %i.dq
  %.sroa.speculated131.us = select i1 %i.dr, float %i.dq, float %.0177188.us ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv220
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !163
  %i.dv = call noundef float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.dw = fcmp olt float %.sroa.speculated131.us, %i.dv
  %.sroa.speculated131.us.1 = select i1 %i.dw, float %i.dv, float %.sroa.speculated131.us ; 3 uses
  %indvars.iv.next221.1 = add nuw nsw i64 %indvars.iv220, 2 ; 2 uses
  %niter286.next.1 = add i64 %niter286, 2         ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa, label %.lr.ph191.us.new, !llvm.loop !393

._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa: ; preds = %.lr.ph191.us.new
  br i1 %lcmp.mod282.not, label %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa, %.lr.ph191.us
  %indvars.iv220.epil.init = phi i64 [ 0, %.lr.ph191.us ], [ %indvars.iv.next221.1, %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa ]
  %.0177188.us.epil.init = phi float [ 0.000000e+00, %.lr.ph191.us ], [ %.sroa.speculated131.us.1, %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv220.epil.init
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !163
  %i.dz = call noundef float @llvm.fabs.f32(float %i.dy) ; 2 uses
  %i.ea = fcmp olt float %.0177188.us.epil.init, %i.dz
  %.sroa.speculated131.us.epil = select i1 %i.ea, float %i.dz, float %.0177188.us.epil.init
  br label %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us

._ZN4ncnn3MatD2Ev.exit103_crit_edge.us:           ; preds = %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa, %.epil.preheader
  %.sroa.speculated131.us.lcssa = phi float [ %.sroa.speculated131.us.1, %._ZN4ncnn3MatD2Ev.exit103_crit_edge.us.unr-lcssa ], [ %.sroa.speculated131.us.epil, %.epil.preheader ]
  %i.eb = fdiv float 1.270000e+02, %.sroa.speculated131.us.lcssa
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv225
  store float %i.eb, ptr %i.ec, align 4, !tbaa !163
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
end_hunk_1
begin_hunk_2_@_ZN8QuantNet13quantize_ACIQEv:bb.a
  invoke void @_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.be = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.be)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8QuantNet13quantize_ACIQEv.omp_outlined.69, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %1, ptr nonnull %3, ptr nonnull %i.a, ptr nonnull %i.c)
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.bf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN8QuantNet13quantize_ACIQEv.omp_outlined.70, ptr nonnull %i.c, ptr nonnull %0)
  %i.bg = load ptr, ptr %3, align 8, !tbaa !190   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !63
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #20, !inline_history !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bi
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.bm = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bg, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #37
  br label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bn = load ptr, ptr %1, align 8, !tbaa !190   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !191 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit, %.lr.ph.i.i.i7
  %.05.i.i.i8 = phi ptr [ %i.bs, %.lr.ph.i.i.i7 ], [ %i.bn, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !63
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i8) #20, !inline_history !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bs, %i.bp
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10, label %.lr.ph.i.i.i7, !llvm.loop !12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10: ; preds = %.lr.ph.i.i.i7
  %.pr.i11 = load ptr, ptr %1, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit
  %i.bt = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i10 ], [ %i.bn, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i13 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i13, label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #37
  br label %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14

_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit.i12, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %i.bu

bb.j:                                             ; preds = %bb.c, %bb.d, %_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8QuantNet13quantize_ACIQEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !161    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !161
  %i.h = load i32, ptr %0, align 4, !tbaa !161    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !161
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !161
  %i.k = load i32, ptr %i.a, align 4, !tbaa !161  ; 2 uses
  %.not213 = icmp sgt i32 %i.k, %i.j
  br i1 %.not213, label %._crit_edge217, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 6 uses
  %i.o = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph216, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192
  %indvars.iv244 = phi i64 [ %i.o, %.lr.ph216 ], [ %indvars.iv.next245, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192 ] ; 9 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !150, !nonnull !151, !align !152
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv244
  %i.s = load i32, ptr %i.r, align 4, !tbaa !161
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157  ; 17 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !158  ; 2 uses
  %i.aa = icmp eq i64 %i.z, 11
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 8391732706658905923
  %i.ae = getelementptr i8, ptr %i.ab, i64 3
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 7957695015494119286
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %thread-pre-split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.am = load i32, ptr %i.al, align 8, !tbaa !193 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 212
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !195
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 220
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 260
  %i.at = load i32, ptr %i.as, align 4, !tbaa !196
  %i.au = sdiv i32 %i.at, %i.am                   ; 6 uses
  %i.av = icmp eq i32 %i.ao, 3
  %i.aw = icmp eq i32 %i.aq, 3
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %i.ax = load <4 x i32>, ptr %i.ar, align 4, !tbaa !161
  %i.ay = icmp eq <4 x i32> %i.ax, splat (i32 1)  ; 4 uses
  %i.az = extractelement <4 x i1> %i.ay, i64 0
  %or.cond3 = select i1 %or.cond, i1 %i.az, i1 false
  %i.ba = extractelement <4 x i1> %i.ay, i64 1
  %or.cond5 = select i1 %or.cond3, i1 %i.ba, i1 false
  %i.bb = extractelement <4 x i1> %i.ay, i64 2
  %or.cond7 = select i1 %or.cond5, i1 %i.bb, i1 false
  %i.bc = extractelement <4 x i1> %i.ay, i64 3
  %or.cond9 = select i1 %or.cond7, i1 %i.bc, i1 false ; 2 uses
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %i.bd, i64 %indvars.iv244
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i32 noundef %i.am, i64 noundef 4, ptr noundef null)
          to label %.preheader194 unwind label %bb.h

.preheader194:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bf = icmp sgt i32 %i.am, 0
  br i1 %i.bf, label %.lr.ph198, label %thread-pre-split

.lr.ph198:                                        ; preds = %.preheader194
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 352
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130, !noalias !575
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !175, !noalias !575
  %i.bk = icmp sgt i32 %i.au, 0
  %i.bl = sitofp i32 %i.au to double
  %4 = zext nneg i32 %i.au to i64
  %wide.trip.count222 = zext nneg i32 %i.am to i64
  %factor.op.mul = mul i64 %i.bj, %4
  %wide.trip.count = zext i32 %i.au to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i32 %i.au, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod264 = trunc i32 %i.au to i1
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.bo = getelementptr inbounds nuw [72 x i8], ptr %i.bn, i64 %indvars.iv244
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !130
  %. = select i1 %or.cond9, double f0x400A4B9A00000000, double f0x400F646DA0000000
  %.262 = select i1 %or.cond9, float 3.100000e+01, float 1.270000e+02
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph198, %._crit_edge
  %indvars.iv219 = phi i64 [ 0, %.lr.ph198 ], [ %indvars.iv.next220, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %indvars.iv219, %factor.op.mul
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.reass ; 3 uses
  br i1 %i.bk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  br i1 %i.bm, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0189195.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.speculated165.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod264)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.epil.init
  %i.bs = load float, ptr %i.br, align 4, !tbaa !163
  %i.bt = call noundef float @llvm.fabs.f32(float %i.bs) ; 2 uses
  %i.bu = fcmp olt float %.0189195.epil.init, %i.bt
  %.sroa.speculated165.epil = select i1 %i.bu, float %i.bt, float %.0189195.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.sroa.speculated165.lcssa = phi float [ %.sroa.speculated165.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated165.epil, %.lr.ph.epil.preheader ]
  %i.bv = fmul float %.sroa.speculated165.lcssa, 2.000000e+00
  %i.bw = fpext float %i.bv to double
  %i.bx = fmul double %i.bw, f0x3FE149630C3D2904
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.0189.lcssa = phi double [ 0.000000e+00, %bb.d ], [ %i.bx, %._crit_edge.loopexit ]
  %i.by = call noundef double @log(double noundef %i.bl) #20
  %i.bz = fmul double %i.by, 2.000000e+00
  %i.ca = call double @sqrt(double noundef %i.bz) #20
  %i.cb = fdiv double %.0189.lcssa, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv219
  %i.cd = fmul double %i.cb, %.
  %i.ce = fptrunc double %i.cd to float
  %i.cf = fdiv float %.262, %i.ce
  store float %i.cf, ptr %i.cc, align 4, !tbaa !163
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %thread-pre-split, label %bb.d, !llvm.loop !565

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0189195 = phi float [ %.sroa.speculated165.1, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !163
  %i.ci = call noundef float @llvm.fabs.f32(float %i.ch) ; 2 uses
  %i.cj = fcmp olt float %.0189195, %i.ci
  %.sroa.speculated165 = select i1 %i.cj, float %i.ci, float %.0189195 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !163
  %i.cn = call noundef float @llvm.fabs.f32(float %i.cm) ; 2 uses
  %i.co = fcmp olt float %.sroa.speculated165, %i.cn
  %.sroa.speculated165.1 = select i1 %i.co, float %i.cn, float %.sroa.speculated165 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !566

thread-pre-split:                                 ; preds = %._crit_edge, %.preheader194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.pr = load i64, ptr %i.y, align 8, !tbaa !158
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190: ; preds = %bb.c, %thread-pre-split
  %i.cp = phi i64 [ %.pr, %thread-pre-split ], [ %i.z, %bb.c ]
  %i.cq = icmp eq i64 %i.cp, 20
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = xor i128 %i.cs, 138844297650319802350679583742711721795
  %i.cu = getelementptr i8, ptr %i.cr, i64 16
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = zext i32 %i.cv to i128
  %i.cx = xor i128 %i.cw, 1702062423
  %i.cy = or i128 %i.ct, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !198 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 260
  %i.df = load i32, ptr %i.de, align 4, !tbaa !199
  %i.dg = sdiv i32 %i.df, %i.dd                   ; 6 uses
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.dh, i64 %indvars.iv244
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.di, i32 noundef %i.dd, i64 noundef 4, ptr noundef null)
          to label %.preheader193 unwind label %bb.h

.preheader193:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread
  %i.dj = icmp sgt i32 %i.dd, 0
  br i1 %i.dj, label %.lr.ph205, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191

.lr.ph205:                                        ; preds = %.preheader193
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !130, !noalias !576
  %i.dm = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !175, !noalias !576
  %i.do = icmp sgt i32 %i.dg, 0
  %i.dp = sitofp i32 %i.dg to double
  %i.dq = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %indvars.iv244
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !130
  %5 = zext nneg i32 %i.dg to i64
  %wide.trip.count232 = zext nneg i32 %i.dd to i64
  %factor.op.mul255 = mul i64 %i.dn, %5
  %wide.trip.count227 = zext i32 %i.dg to i64     ; 2 uses
  %xtraiter265 = and i64 %wide.trip.count227, 1
  %i.dt = icmp eq i32 %i.dg, 1
  %unroll_iter269 = and i64 %wide.trip.count227, 2147483646
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  %lcmp.mod268 = trunc i32 %i.dg to i1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph205, %_ZN4ncnn3MatD2Ev.exit114
  %indvars.iv229 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next230, %_ZN4ncnn3MatD2Ev.exit114 ] ; 3 uses
  %.reass256 = mul i64 %indvars.iv229, %factor.op.mul255
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.reass256 ; 3 uses
  br i1 %i.do, label %.lr.ph202.preheader, label %_ZN4ncnn3MatD2Ev.exit114

.lr.ph202.preheader:                              ; preds = %bb.e
  br i1 %i.dt, label %.lr.ph202.epil.preheader, label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.lr.ph202
  %indvars.iv224 = phi i64 [ %indvars.iv.next225.1, %.lr.ph202 ], [ 0, %.lr.ph202.preheader ] ; 3 uses
  %.0188199 = phi float [ %.sroa.speculated142.1, %.lr.ph202 ], [ 0.000000e+00, %.lr.ph202.preheader ] ; 2 uses
  %niter270 = phi i64 [ %niter270.next.1, %.lr.ph202 ], [ 0, %.lr.ph202.preheader ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv224
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !163
  %i.dx = call noundef float @llvm.fabs.f32(float %i.dw) ; 2 uses
  %i.dy = fcmp olt float %.0188199, %i.dx
  %.sroa.speculated142 = select i1 %i.dy, float %i.dx, float %.0188199 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv224
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !163
  %i.ec = call noundef float @llvm.fabs.f32(float %i.eb) ; 2 uses
  %i.ed = fcmp olt float %.sroa.speculated142, %i.ec
  %.sroa.speculated142.1 = select i1 %i.ed, float %i.ec, float %.sroa.speculated142 ; 3 uses
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 2 uses
  %niter270.next.1 = add i64 %niter270, 2         ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa, label %.lr.ph202, !llvm.loop !569

_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa:      ; preds = %.lr.ph202
  br i1 %lcmp.mod266.not, label %_ZN4ncnn3MatD2Ev.exit114.loopexit, label %.lr.ph202.epil.preheader

.lr.ph202.epil.preheader:                         ; preds = %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa, %.lr.ph202.preheader
  %indvars.iv224.epil.init = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next225.1, %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa ]
  %.0188199.epil.init = phi float [ 0.000000e+00, %.lr.ph202.preheader ], [ %.sroa.speculated142.1, %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod268)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv224.epil.init
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !163
  %i.eg = call noundef float @llvm.fabs.f32(float %i.ef) ; 2 uses
  %i.eh = fcmp olt float %.0188199.epil.init, %i.eg
  %.sroa.speculated142.epil = select i1 %i.eh, float %i.eg, float %.0188199.epil.init
  br label %_ZN4ncnn3MatD2Ev.exit114.loopexit

_ZN4ncnn3MatD2Ev.exit114.loopexit:                ; preds = %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa, %.lr.ph202.epil.preheader
  %.sroa.speculated142.lcssa = phi float [ %.sroa.speculated142.1, %_ZN4ncnn3MatD2Ev.exit114.loopexit.unr-lcssa ], [ %.sroa.speculated142.epil, %.lr.ph202.epil.preheader ]
  %i.ei = fmul float %.sroa.speculated142.lcssa, 2.000000e+00
  %i.ej = fpext float %i.ei to double
  %i.ek = fmul double %i.ej, f0x3FE149630C3D2904
  br label %_ZN4ncnn3MatD2Ev.exit114

_ZN4ncnn3MatD2Ev.exit114:                         ; preds = %_ZN4ncnn3MatD2Ev.exit114.loopexit, %bb.e
  %.0188.lcssa = phi double [ 0.000000e+00, %bb.e ], [ %i.ek, %_ZN4ncnn3MatD2Ev.exit114.loopexit ]
  %i.el = call noundef double @log(double noundef %i.dp) #20
  %i.em = fmul double %i.el, 2.000000e+00
  %i.en = call double @sqrt(double noundef %i.em) #20
  %i.eo = fdiv double %.0188.lcssa, %i.en
  %i.ep = fmul double %i.eo, f0x400F646DA0000000
  %i.eq = fptrunc double %i.ep to float
  %i.er = fdiv float 1.270000e+02, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv229
  store float %i.er, ptr %i.es, align 4, !tbaa !163
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191, label %bb.e, !llvm.loop !570

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191: ; preds = %_ZN4ncnn3MatD2Ev.exit114, %.preheader193, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread190, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
  %i.et = load i64, ptr %i.y, align 8, !tbaa !158
  %i.eu = icmp eq i64 %i.et, 12
  br i1 %i.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191
  %i.ev = load ptr, ptr %i.x, align 8, !tbaa !149 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 1
  %i.ex = xor i64 %i.ew, 8030569537813245513
  %i.ey = getelementptr i8, ptr %i.ev, i64 8
  %i.ez = load i32, ptr %i.ey, align 1
  %i.fa = zext i32 %i.ez to i64
  %i.fb = xor i64 %i.fa, 1952675172
  %i.fc = or i64 %i.ex, %i.fb
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !201 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !202
  %i.fk = sdiv i32 %i.fj, %i.fh                   ; 6 uses
  %i.fl = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.fm = getelementptr inbounds nuw [72 x i8], ptr %i.fl, i64 %indvars.iv244
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i32 noundef %i.fh, i64 noundef 4, ptr noundef null)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread
  %i.fn = icmp sgt i32 %i.fh, 0
  br i1 %i.fn, label %.lr.ph212, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192

.lr.ph212:                                        ; preds = %.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 304
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !130, !noalias !577
  %i.fq = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !175, !noalias !577
  %i.fs = icmp sgt i32 %i.fk, 0
  %i.ft = sitofp i32 %i.fk to double
  %i.fu = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.fv = getelementptr inbounds nuw [72 x i8], ptr %i.fu, i64 %indvars.iv244
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !130
  %6 = zext nneg i32 %i.fk to i64
  %wide.trip.count242 = zext nneg i32 %i.fh to i64
  %factor.op.mul257 = mul i64 %i.fr, %6
  %wide.trip.count237 = zext i32 %i.fk to i64     ; 2 uses
  %xtraiter271 = and i64 %wide.trip.count237, 1
  %i.fx = icmp eq i32 %i.fk, 1
  %unroll_iter275 = and i64 %wide.trip.count237, 2147483646
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  %lcmp.mod274 = trunc i32 %i.fk to i1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph212, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv239 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next240, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %.reass258 = mul i64 %indvars.iv239, %factor.op.mul257
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.reass258 ; 3 uses
  br i1 %i.fs, label %.lr.ph209.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph209.preheader:                              ; preds = %bb.f
  br i1 %i.fx, label %.lr.ph209.epil.preheader, label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %.lr.ph209
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.1, %.lr.ph209 ], [ 0, %.lr.ph209.preheader ] ; 3 uses
  %.0187206 = phi float [ %.sroa.speculated.1, %.lr.ph209 ], [ 0.000000e+00, %.lr.ph209.preheader ] ; 2 uses
  %niter276 = phi i64 [ %niter276.next.1, %.lr.ph209 ], [ 0, %.lr.ph209.preheader ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv234
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !163
  %i.gb = call noundef float @llvm.fabs.f32(float %i.ga) ; 2 uses
  %i.gc = fcmp olt float %.0187206, %i.gb
  %.sroa.speculated = select i1 %i.gc, float %i.gb, float %.0187206 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv234
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !163
  %i.gg = call noundef float @llvm.fabs.f32(float %i.gf) ; 2 uses
  %i.gh = fcmp olt float %.sroa.speculated, %i.gg
  %.sroa.speculated.1 = select i1 %i.gh, float %i.gg, float %.sroa.speculated ; 3 uses
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa, label %.lr.ph209, !llvm.loop !573

_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph209
  br i1 %lcmp.mod272.not, label %_ZN4ncnn3MatD2Ev.exit.loopexit, label %.lr.ph209.epil.preheader

.lr.ph209.epil.preheader:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa, %.lr.ph209.preheader
  %indvars.iv234.epil.init = phi i64 [ 0, %.lr.ph209.preheader ], [ %indvars.iv.next235.1, %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa ]
  %.0187206.epil.init = phi float [ 0.000000e+00, %.lr.ph209.preheader ], [ %.sroa.speculated.1, %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv234.epil.init
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !163
  %i.gk = call noundef float @llvm.fabs.f32(float %i.gj) ; 2 uses
  %i.gl = fcmp olt float %.0187206.epil.init, %i.gk
  %.sroa.speculated.epil = select i1 %i.gl, float %i.gk, float %.0187206.epil.init
  br label %_ZN4ncnn3MatD2Ev.exit.loopexit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa, %.lr.ph209.epil.preheader
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.1, %_ZN4ncnn3MatD2Ev.exit.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph209.epil.preheader ]
  %i.gm = fmul float %.sroa.speculated.lcssa, 2.000000e+00
  %i.gn = fpext float %i.gm to double
  %i.go = fmul double %i.gn, f0x3FE149630C3D2904
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.loopexit, %bb.f
  %.0187.lcssa = phi double [ 0.000000e+00, %bb.f ], [ %i.go, %_ZN4ncnn3MatD2Ev.exit.loopexit ]
  %i.gp = call noundef double @log(double noundef %i.ft) #20
  %i.gq = fmul double %i.gp, 2.000000e+00
  %i.gr = call double @sqrt(double noundef %i.gq) #20
  %i.gs = fdiv double %.0187.lcssa, %i.gr
  %i.gt = fmul double %i.gs, f0x400F646DA0000000
  %i.gu = fptrunc double %i.gt to float
  %i.gv = fdiv float 1.270000e+02, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv239
  store float %i.gv, ptr %i.gw, align 4, !tbaa !163
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192, label %bb.f, !llvm.loop !574

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192: ; preds = %_ZN4ncnn3MatD2Ev.exit, %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread191, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, 1
  %i.gx = load i32, ptr %i.b, align 4, !tbaa !161
  %i.gy = sext i32 %i.gx to i64
  %.not.not = icmp slt i64 %indvars.iv244, %i.gy
  br i1 %.not.not, label %bb.c, label %._crit_edge217

._crit_edge217:                                   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread192, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge217, %bb.a
  ret void

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8QuantNet13quantize_ACIQEv.omp_outlined.69(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.cv::Mat", align 8          ; 11 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.ncnn::Extractor", align 8   ; 9 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 17 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 13 uses
  %12 = alloca %"class.ncnn::Mat", align 16       ; 12 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !161    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.br

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.f, ptr %i.b, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !161
  %i.h = load i32, ptr %0, align 4, !tbaa !161    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !161
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !161
  %i.k = load i32, ptr %i.a, align 4, !tbaa !161  ; 2 uses
  %.not147 = icmp sgt i32 %i.k, %i.j
  br i1 %.not147, label %._crit_edge148, label %.preheader124.lr.ph

.preheader124.lr.ph:                              ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 448
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.lr.ph, %._crit_edge146
  %i.az = phi i32 [ %i.j, %.preheader124.lr.ph ], [ %i.ja, %._crit_edge146 ] ; 2 uses
  %i.ba = phi i32 [ %i.k, %.preheader124.lr.ph ], [ %i.iy, %._crit_edge146 ] ; 3 uses
  %.not67143 = icmp sgt i32 %i.ba, %i.az
  br i1 %.not67143, label %._crit_edge146, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %.preheader124
  %i.bb = sext i32 %i.ba to i64
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %._crit_edge
  %indvars.iv166 = phi i64 [ %i.bb, %.lr.ph145.preheader ], [ %indvars.iv.next167, %._crit_edge ] ; 5 uses
  %i.bc = trunc nsw i64 %indvars.iv166 to i32     ; 3 uses
  %i.bd = srem i32 %i.bc, 100
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph145
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !182
  %i.bg = sitofp i32 %i.bc to float
end_hunk_2
