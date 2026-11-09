Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_drawing?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
begin_hunk_0_@_ZN4ncnn20resize_bilinear_fontEPKhPhi:bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader906, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.p = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.q = fadd fast <4 x double> %i.p, splat (double 5.000000e-01)
  %i.r = fmul fast <4 x double> %i.q, %broadcast.splat
  %i.s = fadd fast <4 x double> %i.r, splat (double -5.000000e-01)
  %i.t = fptrunc fast <4 x double> %i.s to <4 x float> ; 2 uses
  %i.u = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.t)
  %i.v = fptosi <4 x float> %i.u to <4 x i32>     ; 2 uses
  %i.w = sitofp fast <4 x i32> %i.v to <4 x float>
  %i.x = fsub fast <4 x float> %i.t, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !11
  %i.z = fmul fast <4 x float> %i.x, splat (float 2.048000e+03) ; 3 uses
  %i.aa = fsub fast <4 x float> splat (float 2.048000e+03), %i.z ; 2 uses
  %i.ab = fcmp fast oge <4 x float> %i.aa, zeroinitializer
  %i.ac = select fast <4 x i1> %i.ab, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa
  %i.ae = shl nuw nsw i64 %index, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae
  %i.ag = fcmp fast oge <4 x float> %i.z, zeroinitializer
  %i.ah = select fast <4 x i1> %i.ag, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ai = fadd fast <4 x float> %i.ah, %i.z
  %i.aj = shufflevector <4 x float> %i.ad, <4 x float> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.aj)
  store <8 x i16> %interleaved.vec, ptr %i.af, align 2, !tbaa !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph574.preheader, label %.lr.ph.preheader906

.lr.ph.preheader906:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph574.preheader:                              ; preds = %.lr.ph, %middle.block
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count673 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check751 = icmp slt i32 %i.a, 4
  br i1 %min.iters.check751, label %.lr.ph574.preheader905, label %vector.ph752

vector.ph752:                                     ; preds = %.lr.ph574.preheader
  %n.vec753 = and i64 %wide.trip.count673, 2147483644 ; 3 uses
  %broadcast.splatinsert754 = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat755 = shufflevector <4 x double> %broadcast.splatinsert754, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph752
  %index757 = phi i64 [ 0, %vector.ph752 ], [ %index.next760, %vector.body756 ] ; 3 uses
  %vec.ind758 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph752 ], [ %vec.ind.next761, %vector.body756 ] ; 2 uses
  %i.al = uitofp nneg <4 x i32> %vec.ind758 to <4 x double>
  %i.am = fadd fast <4 x double> %i.al, splat (double 5.000000e-01)
  %i.an = fmul fast <4 x double> %i.am, %broadcast.splat755
  %i.ao = fadd fast <4 x double> %i.an, splat (double -5.000000e-01)
  %i.ap = fptrunc fast <4 x double> %i.ao to <4 x float> ; 2 uses
  %i.aq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ap)
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>   ; 2 uses
  %i.as = sitofp fast <4 x i32> %i.ar to <4 x float>
  %i.at = fsub fast <4 x float> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index757
  store <4 x i32> %i.ar, ptr %i.au, align 4, !tbaa !11
  %i.av = fmul fast <4 x float> %i.at, splat (float 2.048000e+03) ; 3 uses
  %i.aw = fsub fast <4 x float> splat (float 2.048000e+03), %i.av ; 2 uses
  %i.ax = fcmp fast oge <4 x float> %i.aw, zeroinitializer
  %i.ay = select fast <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.az = fadd fast <4 x float> %i.ay, %i.aw
  %i.ba = shl nuw nsw i64 %index757, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba
  %i.bc = fcmp fast oge <4 x float> %i.av, zeroinitializer
  %i.bd = select fast <4 x i1> %i.bc, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.be = fadd fast <4 x float> %i.bd, %i.av
  %i.bf = shufflevector <4 x float> %i.az, <4 x float> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec759 = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.bf)
  store <8 x i16> %interleaved.vec759, ptr %i.bb, align 2, !tbaa !123
  %index.next760 = add nuw i64 %index757, 4       ; 2 uses
  %vec.ind.next761 = add <4 x i32> %vec.ind758, splat (i32 4)
  %i.bg = icmp eq i64 %index.next760, %n.vec753
  br i1 %i.bg, label %middle.block762, label %vector.body756, !llvm.loop !96

middle.block762:                                  ; preds = %vector.body756
  %cmp.n763 = icmp eq i64 %n.vec753, %wide.trip.count673
  br i1 %cmp.n763, label %._crit_edge, label %.lr.ph574.preheader905

.lr.ph574.preheader905:                           ; preds = %.lr.ph574.preheader, %middle.block762
  %indvars.iv670.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec753, %middle.block762 ]
  br label %.lr.ph574

.lr.ph:                                           ; preds = %.lr.ph.preheader906, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader906 ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp ninf nsz nneg i32 %i.bh to double
  %i.bj = fadd fast double %i.bi, 5.000000e-01
  %i.bk = fmul fast double %i.bj, %i.c
  %i.bl = fadd fast double %i.bk, -5.000000e-01
  %i.bm = fptrunc fast double %i.bl to float      ; 2 uses
  %i.bn = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bm)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = fsub fast float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !11
  %i.bs = fmul fast float %i.bq, 2.048000e+03     ; 3 uses
  %i.bt = fsub fast float 2.048000e+03, %i.bs     ; 2 uses
  %i.bu = fcmp fast oge float %i.bt, 0.000000e+00
  %i.bv = select fast i1 %i.bu, float 5.000000e-01, float -5.000000e-01
  %i.bw = fadd fast float %i.bv, %i.bt
  %i.bx = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.bw)
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !123
  %i.bz = fcmp fast oge float %i.bs, 0.000000e+00
  %i.ca = select fast i1 %i.bz, float 5.000000e-01, float -5.000000e-01
  %i.cb = fadd fast float %i.ca, %i.bs
  %i.cc = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph574.preheader, label %.lr.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph574, %middle.block762, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.cg, align 8, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cf, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %2, i64 noundef 2, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 0, ptr %i.cj, align 8, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ci, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %2, i64 noundef 2, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.b

.lr.ph574:                                        ; preds = %.lr.ph574.preheader905, %.lr.ph574
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %.lr.ph574 ], [ %indvars.iv670.ph, %.lr.ph574.preheader905 ] ; 4 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv670 to i32
  %i.cl = uitofp ninf nsz nneg i32 %i.ck to double
  %i.cm = fadd fast double %i.cl, 5.000000e-01
  %i.cn = fmul fast double %i.cm, %i.c
  %i.co = fadd fast double %i.cn, -5.000000e-01
  %i.cp = fptrunc fast double %i.co to float      ; 2 uses
  %i.cq = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.cp)
  %i.cr = fptosi float %i.cq to i32               ; 2 uses
  %i.cs = sitofp fast i32 %i.cr to float
  %i.ct = fsub fast float %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv670
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !11
  %i.cv = fmul fast float %i.ct, 2.048000e+03     ; 3 uses
  %i.cw = fsub fast float 2.048000e+03, %i.cv     ; 2 uses
  %i.cx = fcmp fast oge float %i.cw, 0.000000e+00
  %i.cy = select fast i1 %i.cx, float 5.000000e-01, float -5.000000e-01
  %i.cz = fadd fast float %i.cy, %i.cw
  %i.da = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.cz)
  %.idx715 = shl nuw nsw i64 %indvars.iv670, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx715 ; 2 uses
  store i16 %i.da, ptr %i.db, align 2, !tbaa !123
  %i.dc = fcmp fast oge float %i.cv, 0.000000e+00
  %i.dd = select fast i1 %i.dc, float 5.000000e-01, float -5.000000e-01
  %i.de = fadd fast float %i.dd, %i.cv
  %i.df = tail call i16 @llvm.fptosi.sat.i16.f32(float %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !123
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count673
  br i1 %exitcond674.not, label %._crit_edge, label %.lr.ph574, !llvm.loop !98

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %._crit_edge
  br i1 %i.o, label %.lr.ph647, label %._crit_edge648

.lr.ph647:                                        ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.dh = load ptr, ptr %4, align 8, !tbaa !130   ; 2 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !130
  %i.dj = shl nuw i32 %2, 1
  %i.dk = zext i32 %i.dj to i64
  call void @llvm.memset.p0.i64(ptr align 2 %i.dh, i8 0, i64 %i.dk, i1 false), !tbaa !123
  %i.dl = icmp samesign ugt i32 %2, 15            ; 2 uses
  %i.dm = zext nneg i32 %2 to i64                 ; 4 uses
  %i.dn = shl nuw nsw i64 %i.dm, 1
  %i.do = and i32 %2, 2147483632                  ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dq = load ptr, ptr %i.ce, align 8, !tbaa !131 ; 2 uses
  %.not.i478 = icmp eq ptr %i.dq, null
  br i1 %.not.i478, label %_ZN4ncnn3MatD2Ev.exit, label %bb.at

bb.c:                                             ; preds = %.lr.ph647, %bb.ag
  %.0646 = phi ptr [ %i.n, %.lr.ph647 ], [ %.1, %bb.ag ] ; 7 uses
  %.0406645 = phi ptr [ %i.di, %.lr.ph647 ], [ %.1407, %bb.ag ] ; 9 uses
  %.0408644 = phi ptr [ %i.dh, %.lr.ph647 ], [ %.1409, %bb.ag ] ; 7 uses
  %.0411643 = phi i32 [ -2, %.lr.ph647 ], [ %i.dt, %bb.ag ] ; 2 uses
  %.0412642 = phi i32 [ 0, %.lr.ph647 ], [ %.pre-phi, %bb.ag ] ; 5 uses
  %i.dr = sext i32 %.0412642 to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11 ; 7 uses
  %i.du = icmp eq i32 %i.dt, %.0411643
  br i1 %i.du, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dv = add nsw i32 %.0411643, 1
  %i.dw = icmp eq i32 %i.dt, %i.dv
  %i.dx = mul i32 %i.dt, 10                       ; 3 uses
  br i1 %i.dw, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.dy = add i32 %i.dx, 10
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %0, i64 %i.dz ; 3 uses
  %i.eb = icmp sgt i32 %i.dt, 38
  br i1 %i.eb, label %.lr.ph587.preheader, label %.lr.ph585

.lr.ph585:                                        ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 9
  br label %bb.f

.lr.ph587.preheader:                              ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr align 2 %.0406645, i8 0, i64 %i.dn, i1 false), !tbaa !123
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph585, %bb.m
  %indvars.iv688 = phi i64 [ 0, %.lr.ph585 ], [ %indvars.iv.next689, %bb.m ] ; 3 uses
  %.0443583 = phi ptr [ %i.m, %.lr.ph585 ], [ %i.fl, %bb.m ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv688
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !11 ; 4 uses
  %i.ef = load i16, ptr %.0443583, align 2, !tbaa !123
  %i.eg = getelementptr inbounds nuw i8, ptr %.0443583, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !123
  %i.ei = icmp slt i32 %i.ee, 0
  br i1 %i.ei, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ej = load i8, ptr %i.ea, align 1, !tbaa !9
  %i.ek = and i8 %i.ej, 15
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.el = icmp samesign ugt i32 %i.ee, 18
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.em = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.en = lshr i8 %i.em, 4
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.eo = and i32 %i.ee, 1
  %i.ep = icmp eq i32 %i.eo, 0
  %i.eq = lshr i32 %i.ee, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9   ; 3 uses
  br i1 %i.ep, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eu = and i8 %i.et, 15
  %i.ev = lshr i8 %i.et, 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ew = lshr i8 %i.et, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = and i8 %i.ey, 15
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.g
  %.0441 = phi i8 [ 0, %bb.g ], [ %i.en, %bb.i ], [ %i.ew, %bb.l ], [ %i.eu, %bb.k ]
  %.0440 = phi i8 [ %i.ek, %bb.g ], [ 0, %bb.i ], [ %i.ez, %bb.l ], [ %i.ev, %bb.k ]
  %i.fa = zext nneg i8 %.0441 to i32
  %i.fb = sext i16 %i.ef to i32
  %i.fc = mul nsw i32 %i.fa, %i.fb
  %i.fd = zext nneg i8 %.0440 to i32
  %i.fe = sext i16 %i.eh to i32
  %i.ff = mul nsw i32 %i.fd, %i.fe
  %i.fg = add nsw i32 %i.ff, %i.fc                ; 2 uses
  %i.fh = lshr i32 %i.fg, 4
  %i.fi = add nsw i32 %i.fh, %i.fg
  %i.fj = trunc i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.0406645, i64 %indvars.iv688
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !123
  %i.fl = getelementptr inbounds nuw i8, ptr %.0443583, i64 4
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 2 uses
  %exitcond692.not = icmp eq i64 %indvars.iv.next689, %i.dm
  br i1 %exitcond692.not, label %.loopexit, label %bb.f, !llvm.loop !99

bb.n:                                             ; preds = %bb.d
  %i.fm = sext i32 %i.dx to i64
  %i.fn = getelementptr inbounds i8, ptr %0, i64 %i.fm ; 5 uses
  %i.fo = add i32 %i.dx, 10
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %0, i64 %i.fp ; 4 uses
  %i.fr = icmp sgt i32 %i.dt, 38
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 9 ; 2 uses
  br i1 %i.fr, label %.lr.ph582, label %.lr.ph579

.lr.ph579:                                        ; preds = %bb.n
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 9
  br label %bb.v

.lr.ph582:                                        ; preds = %bb.n, %bb.u
  %indvars.iv683 = phi i64 [ %indvars.iv.next684, %bb.u ], [ 0, %bb.n ] ; 4 uses
  %.0439580 = phi ptr [ %i.hd, %bb.u ], [ %i.m, %bb.n ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv683
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !11 ; 4 uses
  %i.fw = load i16, ptr %.0439580, align 2, !tbaa !123
  %i.fx = getelementptr inbounds nuw i8, ptr %.0439580, i64 2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !123
  %i.fz = icmp slt i32 %i.fv, 0
  br i1 %i.fz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph582
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !9
  %i.gb = and i8 %i.ga, 15
  br label %bb.u

bb.p:                                             ; preds = %.lr.ph582
  %i.gc = icmp samesign ugt i32 %i.fv, 18
  br i1 %i.gc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gd = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.ge = lshr i8 %i.gd, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.gf = and i32 %i.fv, 1
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = lshr i32 %i.fv, 1
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gi ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9   ; 3 uses
  br i1 %i.gg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gl = and i8 %i.gk, 15
  %i.gm = lshr i8 %i.gk, 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gn = lshr i8 %i.gk, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gq = and i8 %i.gp, 15
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.o
  %.0437 = phi i8 [ 0, %bb.o ], [ %i.ge, %bb.q ], [ %i.gn, %bb.t ], [ %i.gl, %bb.s ]
  %.0436 = phi i8 [ %i.gb, %bb.o ], [ 0, %bb.q ], [ %i.gq, %bb.t ], [ %i.gm, %bb.s ]
  %i.gr = zext nneg i8 %.0437 to i32
  %i.gs = sext i16 %i.fw to i32
  %i.gt = mul nsw i32 %i.gr, %i.gs
  %i.gu = zext nneg i8 %.0436 to i32
  %i.gv = sext i16 %i.fy to i32
  %i.gw = mul nsw i32 %i.gu, %i.gv
  %i.gx = add nsw i32 %i.gw, %i.gt                ; 2 uses
  %i.gy = lshr i32 %i.gx, 4
  %i.gz = add nsw i32 %i.gy, %i.gx
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0406645, i64 %indvars.iv683
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !123
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.0408644, i64 %indvars.iv683
  store i16 0, ptr %i.hc, align 2, !tbaa !123
  %i.hd = getelementptr inbounds nuw i8, ptr %.0439580, i64 4
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv683, 1 ; 2 uses
  %exitcond687.not = icmp eq i64 %indvars.iv.next684, %i.dm
  br i1 %exitcond687.not, label %.loopexit, label %.lr.ph582, !llvm.loop !100

bb.v:                                             ; preds = %.lr.ph579, %bb.ac
  %indvars.iv678 = phi i64 [ 0, %.lr.ph579 ], [ %indvars.iv.next679, %bb.ac ] ; 4 uses
  %.0435577 = phi ptr [ %i.m, %.lr.ph579 ], [ %i.jj, %bb.ac ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv678
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !11 ; 4 uses
  %i.hg = load i16, ptr %.0435577, align 2, !tbaa !123
  %i.hh = getelementptr inbounds nuw i8, ptr %.0435577, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !123
  %i.hj = icmp slt i32 %i.hf, 0
  br i1 %i.hj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hk = load i8, ptr %i.fn, align 1, !tbaa !9
  %i.hl = and i8 %i.hk, 15
  %i.hm = load i8, ptr %i.fq, align 1, !tbaa !9
  %i.hn = and i8 %i.hm, 15
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.ho = icmp samesign ugt i32 %i.hf, 18
  br i1 %i.ho, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hp = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.hq = lshr i8 %i.hp, 4
  %i.hr = load i8, ptr %i.ft, align 1, !tbaa !9
  %i.hs = lshr i8 %i.hr, 4
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ht = and i32 %i.hf, 1
  %i.hu = icmp eq i32 %i.ht, 0
  %i.hv = lshr i32 %i.hf, 1
  %i.hw = zext nneg i32 %i.hv to i64              ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !9   ; 3 uses
  br i1 %i.hu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hz = and i8 %i.hy, 15
  %i.ia = lshr i8 %i.hy, 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hw
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9   ; 2 uses
  %i.id = and i8 %i.ic, 15
  %i.ie = lshr i8 %i.ic, 4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.if = lshr i8 %i.hy, 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !9
  %i.ii = and i8 %i.ih, 15
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hw ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !9
  %i.il = lshr i8 %i.ik, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !9
  %i.io = and i8 %i.in, 15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y, %bb.w
  %.0433 = phi i8 [ 0, %bb.w ], [ %i.hq, %bb.y ], [ %i.if, %bb.ab ], [ %i.hz, %bb.aa ]
  %.0432 = phi i8 [ %i.hl, %bb.w ], [ 0, %bb.y ], [ %i.ii, %bb.ab ], [ %i.ia, %bb.aa ]
  %.0431 = phi i8 [ 0, %bb.w ], [ %i.hs, %bb.y ], [ %i.il, %bb.ab ], [ %i.id, %bb.aa ]
  %.0430 = phi i8 [ %i.hn, %bb.w ], [ 0, %bb.y ], [ %i.io, %bb.ab ], [ %i.ie, %bb.aa ]
  %i.ip = zext nneg i8 %.0433 to i32
  %i.iq = sext i16 %i.hg to i32                   ; 2 uses
  %i.ir = mul nsw i32 %i.ip, %i.iq
  %i.is = zext nneg i8 %.0432 to i32
  %i.it = sext i16 %i.hi to i32                   ; 2 uses
  %i.iu = mul nsw i32 %i.is, %i.it
  %i.iv = add nsw i32 %i.iu, %i.ir                ; 2 uses
  %i.iw = lshr i32 %i.iv, 4
  %i.ix = add nsw i32 %i.iw, %i.iv
  %i.iy = trunc i32 %i.ix to i16
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.0406645, i64 %indvars.iv678
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !123
  %i.ja = zext nneg i8 %.0431 to i32
  %i.jb = mul nsw i32 %i.ja, %i.iq
  %i.jc = zext nneg i8 %.0430 to i32
  %i.jd = mul nsw i32 %i.jc, %i.it
  %i.je = add nsw i32 %i.jd, %i.jb                ; 2 uses
  %i.jf = lshr i32 %i.je, 4
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = trunc i32 %i.jg to i16
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %.0408644, i64 %indvars.iv678
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !123
  %i.jj = getelementptr inbounds nuw i8, ptr %.0435577, i64 4
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1 ; 2 uses
  %exitcond682.not = icmp eq i64 %indvars.iv.next679, %i.dm
  br i1 %exitcond682.not, label %.loopexit, label %bb.v, !llvm.loop !101

.loopexit:                                        ; preds = %bb.ac, %bb.u, %bb.m, %.lr.ph587.preheader, %bb.c
  %.1409 = phi ptr [ %.0408644, %bb.c ], [ %.0406645, %bb.m ], [ %.0406645, %.lr.ph587.preheader ], [ %.0408644, %bb.u ], [ %.0408644, %bb.ac ] ; 5 uses
  %.1407 = phi ptr [ %.0406645, %bb.c ], [ %.0408644, %bb.m ], [ %.0408644, %.lr.ph587.preheader ], [ %.0406645, %bb.u ], [ %.0406645, %bb.ac ] ; 5 uses
  %i.jk = add nsw i32 %.0412642, 1                ; 4 uses
  %i.jl = icmp slt i32 %i.jk, %i.a
  br i1 %i.jl, label %bb.ad, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre = load i16, ptr %.0646, align 2, !tbaa !123
  br label %bb.af

bb.ad:                                            ; preds = %.loopexit
  %i.jm = sext i32 %i.jk to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !11
  %i.jp = icmp eq i32 %i.jo, %i.dt
  %.pre698 = load i16, ptr %.0646, align 2, !tbaa !123 ; 3 uses
  br i1 %i.jp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jq = getelementptr inbounds nuw i8, ptr %.0646, i64 2
  %i.jr = load <2 x i16>, ptr %i.jq, align 2, !tbaa !123 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0646, i64 6
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !123 ; 2 uses
  %i.ju = mul nsw i32 %.0412642, %2
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds i8, ptr %1, i64 %i.jv ; 2 uses
  %i.jx = mul nsw i32 %i.jk, %2
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %1, i64 %i.jy ; 2 uses
  %i.ka = insertelement <8 x i16> poison, i16 %.pre698, i64 0
  %i.kb = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kc = shufflevector <2 x i16> %i.jr, <2 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kd = shufflevector <2 x i16> %i.jr, <2 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ke = insertelement <8 x i16> poison, i16 %i.jt, i64 0
  %i.kf = shufflevector <8 x i16> %i.ke, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br i1 %i.dl, label %.lr.ph618, label %.preheader560

.preheader560:                                    ; preds = %.lr.ph618, %bb.ae
  %.0427.lcssa = phi ptr [ %.1407, %bb.ae ], [ %i.lm, %.lr.ph618 ] ; 2 uses
  %.0424.lcssa = phi ptr [ %.1409, %bb.ae ], [ %i.ln, %.lr.ph618 ] ; 2 uses
  %.0421.lcssa = phi ptr [ %i.jw, %bb.ae ], [ %i.lk, %.lr.ph618 ] ; 2 uses
  %.0418.lcssa = phi ptr [ %i.jz, %bb.ae ], [ %i.ll, %.lr.ph618 ] ; 2 uses
  %.0415.lcssa = phi i32 [ 0, %bb.ae ], [ %i.do, %.lr.ph618 ] ; 3 uses
  %i.kg = or disjoint i32 %.0415.lcssa, 7
  %i.kh = icmp slt i32 %i.kg, %2
  br i1 %i.kh, label %.lr.ph629, label %.preheader

.lr.ph618:                                        ; preds = %bb.ae, %.lr.ph618
  %.0415616 = phi i32 [ %i.lo, %.lr.ph618 ], [ 0, %bb.ae ]
  %.0418615 = phi ptr [ %i.ll, %.lr.ph618 ], [ %i.jz, %bb.ae ] ; 2 uses
  %.0421614 = phi ptr [ %i.lk, %.lr.ph618 ], [ %i.jw, %bb.ae ] ; 2 uses
  %.0424613 = phi ptr [ %i.ln, %.lr.ph618 ], [ %.1409, %bb.ae ] ; 3 uses
  %.0427612 = phi ptr [ %i.lm, %.lr.ph618 ], [ %.1407, %bb.ae ] ; 3 uses
  %i.ki = load <8 x i16>, ptr %.0427612, align 1, !tbaa !9 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0427612, i64 16
  %i.kk = load <8 x i16>, ptr %i.kj, align 1, !tbaa !9 ; 2 uses
  %i.kl = load <8 x i16>, ptr %.0424613, align 1, !tbaa !9 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0424613, i64 16
  %i.kn = load <8 x i16>, ptr %i.km, align 1, !tbaa !9 ; 2 uses
  %i.ko = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ki, <8 x i16> %i.kb)
  %i.kp = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kl, <8 x i16> %i.kc)
  %i.kq = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kk, <8 x i16> %i.kb)
  %i.kr = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kn, <8 x i16> %i.kc)
  %i.ks = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ki, <8 x i16> %i.kd)
  %i.kt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kl, <8 x i16> %i.kf)
  %i.ku = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kk, <8 x i16> %i.kd)
  %i.kv = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kn, <8 x i16> %i.kf)
  %i.kw = add <8 x i16> %i.ko, splat (i16 2)
  %i.kx = add <8 x i16> %i.kw, %i.kp
  %i.ky = ashr <8 x i16> %i.kx, splat (i16 2)
  %i.kz = add <8 x i16> %i.kq, splat (i16 2)
  %i.la = add <8 x i16> %i.kz, %i.kr
  %i.lb = ashr <8 x i16> %i.la, splat (i16 2)
  %i.lc = add <8 x i16> %i.ks, splat (i16 2)
  %i.ld = add <8 x i16> %i.lc, %i.kt
  %i.le = ashr <8 x i16> %i.ld, splat (i16 2)
  %i.lf = add <8 x i16> %i.ku, splat (i16 2)
  %i.lg = add <8 x i16> %i.lf, %i.kv
  %i.lh = ashr <8 x i16> %i.lg, splat (i16 2)
  %i.li = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ky, <8 x i16> %i.lb)
  %i.lj = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.le, <8 x i16> %i.lh)
  store <16 x i8> %i.li, ptr %.0421614, align 1, !tbaa !9
  store <16 x i8> %i.lj, ptr %.0418615, align 1, !tbaa !9
  %i.lk = getelementptr inbounds nuw i8, ptr %.0421614, i64 16 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0418615, i64 16 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0427612, i64 32 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.0424613, i64 32 ; 2 uses
  %i.lo = add nuw nsw i32 %.0415616, 16           ; 2 uses
  %i.lp = or disjoint i32 %i.lo, 15
  %i.lq = icmp slt i32 %i.lp, %2
  br i1 %i.lq, label %.lr.ph618, label %.preheader560, !llvm.loop !102

.preheader:                                       ; preds = %.lr.ph629, %.preheader560
  %.1428.lcssa = phi ptr [ %.0427.lcssa, %.preheader560 ], [ %i.nt, %.lr.ph629 ] ; 7 uses
  %.1425.lcssa = phi ptr [ %.0424.lcssa, %.preheader560 ], [ %i.nu, %.lr.ph629 ] ; 7 uses
  %.1422.lcssa = phi ptr [ %.0421.lcssa, %.preheader560 ], [ %i.nr, %.lr.ph629 ] ; 8 uses
  %.1419.lcssa = phi ptr [ %.0418.lcssa, %.preheader560 ], [ %i.ns, %.lr.ph629 ] ; 8 uses
  %.1416.lcssa = phi i32 [ %.0415.lcssa, %.preheader560 ], [ %i.nv, %.lr.ph629 ] ; 5 uses
  %i.lr = icmp slt i32 %.1416.lcssa, %2
  br i1 %i.lr, label %.lr.ph640.preheader, label %._crit_edge641

.lr.ph640.preheader:                              ; preds = %.preheader
  %i.ls = xor i32 %.1416.lcssa, -1
  %i.lt = add i32 %2, %i.ls                       ; 2 uses
  %i.lu = zext i32 %i.lt to i64                   ; 2 uses
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 4 uses
  %min.iters.check788 = icmp ult i32 %i.lt, 7
  br i1 %min.iters.check788, label %.lr.ph640.preheader887, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph640.preheader
  %i.lw = getelementptr i8, ptr %.1422.lcssa, i64 %i.lv ; 3 uses
  %i.lx = getelementptr i8, ptr %.1419.lcssa, i64 %i.lv ; 3 uses
  %i.ly = shl nuw nsw i64 %i.lu, 1
  %i.lz = add nuw nsw i64 %i.ly, 2                ; 2 uses
  %i.ma = getelementptr i8, ptr %.1425.lcssa, i64 %i.lz ; 2 uses
  %i.mb = getelementptr i8, ptr %.1428.lcssa, i64 %i.lz ; 2 uses
  %bound0 = icmp ult ptr %.1422.lcssa, %i.lx
  %bound1 = icmp ult ptr %.1419.lcssa, %i.lw
  %found.conflict = and i1 %bound0, %bound1
  %bound0789 = icmp ult ptr %.1422.lcssa, %i.ma
  %bound1790 = icmp ult ptr %.1425.lcssa, %i.lw
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx = or i1 %found.conflict, %found.conflict791
  %bound0792 = icmp ult ptr %.1422.lcssa, %i.mb
  %bound1793 = icmp ult ptr %.1428.lcssa, %i.lw
  %found.conflict794 = and i1 %bound0792, %bound1793
  %conflict.rdx795 = or i1 %conflict.rdx, %found.conflict794
  %bound0796 = icmp ult ptr %.1419.lcssa, %i.ma
  %bound1797 = icmp ult ptr %.1425.lcssa, %i.lx
  %found.conflict798 = and i1 %bound0796, %bound1797
  %conflict.rdx799 = or i1 %conflict.rdx795, %found.conflict798
  %bound0800 = icmp ult ptr %.1419.lcssa, %i.mb
  %bound1801 = icmp ult ptr %.1428.lcssa, %i.lx
  %found.conflict802 = and i1 %bound0800, %bound1801
  %conflict.rdx803 = or i1 %conflict.rdx799, %found.conflict802
  br i1 %conflict.rdx803, label %.lr.ph640.preheader887, label %vector.ph804

vector.ph804:                                     ; preds = %vector.memcheck
  %n.vec805 = and i64 %i.lv, 8589934584           ; 6 uses
  %i.mc = trunc i64 %n.vec805 to i32
  %i.md = add i32 %.1416.lcssa, %i.mc
  %i.me = getelementptr i8, ptr %.1419.lcssa, i64 %n.vec805
  %i.mf = getelementptr i8, ptr %.1422.lcssa, i64 %n.vec805
  %i.mg = shl nuw nsw i64 %n.vec805, 1            ; 2 uses
  %i.mh = getelementptr i8, ptr %.1425.lcssa, i64 %i.mg
  %i.mi = getelementptr i8, ptr %.1428.lcssa, i64 %i.mg
  br label %vector.body814

vector.body814:                                   ; preds = %vector.body814, %vector.ph804
  %index815 = phi i64 [ 0, %vector.ph804 ], [ %index.next820, %vector.body814 ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.1419.lcssa, i64 %index815
  %next.gep816 = getelementptr i8, ptr %.1422.lcssa, i64 %index815
  %i.mj = shl i64 %index815, 1                    ; 2 uses
  %next.gep817 = getelementptr i8, ptr %.1425.lcssa, i64 %i.mj
  %next.gep818 = getelementptr i8, ptr %.1428.lcssa, i64 %i.mj
  %wide.load = load <8 x i16>, ptr %next.gep818, align 2, !tbaa !123, !alias.scope !132 ; 2 uses
  %wide.load819 = load <8 x i16>, ptr %next.gep817, align 2, !tbaa !123, !alias.scope !133 ; 2 uses
  %i.mk = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kb, <8 x i16> %wide.load)
  %i.ml = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kc, <8 x i16> %wide.load819)
  %i.mm = add <8 x i16> %i.mk, splat (i16 2)
  %i.mn = add <8 x i16> %i.mm, %i.ml
  %i.mo = lshr <8 x i16> %i.mn, splat (i16 2)
  %i.mp = trunc <8 x i16> %i.mo to <8 x i8>
  store <8 x i8> %i.mp, ptr %next.gep816, align 1, !tbaa !9, !alias.scope !134, !noalias !135
  %i.mq = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kd, <8 x i16> %wide.load)
  %i.mr = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.kf, <8 x i16> %wide.load819)
  %i.ms = add <8 x i16> %i.mq, splat (i16 2)
  %i.mt = add <8 x i16> %i.ms, %i.mr
  %i.mu = lshr <8 x i16> %i.mt, splat (i16 2)
  %i.mv = trunc <8 x i16> %i.mu to <8 x i8>
  store <8 x i8> %i.mv, ptr %next.gep, align 1, !tbaa !9, !alias.scope !136, !noalias !137
  %index.next820 = add nuw i64 %index815, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next820, %n.vec805
  br i1 %i.mw, label %middle.block821, label %vector.body814, !llvm.loop !108

middle.block821:                                  ; preds = %vector.body814
  %cmp.n822 = icmp eq i64 %i.lv, %n.vec805
  br i1 %cmp.n822, label %._crit_edge641, label %.lr.ph640.preheader887

.lr.ph640.preheader887:                           ; preds = %vector.memcheck, %.lr.ph640.preheader, %middle.block821
  %.2417639.ph = phi i32 [ %.1416.lcssa, %vector.memcheck ], [ %.1416.lcssa, %.lr.ph640.preheader ], [ %i.md, %middle.block821 ]
  %.2420638.ph = phi ptr [ %.1419.lcssa, %vector.memcheck ], [ %.1419.lcssa, %.lr.ph640.preheader ], [ %i.me, %middle.block821 ]
  %.2423637.ph = phi ptr [ %.1422.lcssa, %vector.memcheck ], [ %.1422.lcssa, %.lr.ph640.preheader ], [ %i.mf, %middle.block821 ]
  %.2426636.ph = phi ptr [ %.1425.lcssa, %vector.memcheck ], [ %.1425.lcssa, %.lr.ph640.preheader ], [ %i.mh, %middle.block821 ]
  %.2429635.ph = phi ptr [ %.1428.lcssa, %vector.memcheck ], [ %.1428.lcssa, %.lr.ph640.preheader ], [ %i.mi, %middle.block821 ]
  %i.mx = insertelement <2 x i16> %i.jr, i16 %.pre698, i64 0
  %i.my = insertelement <2 x i16> %i.jr, i16 %i.jt, i64 1
  br label %.lr.ph640

.lr.ph629:                                        ; preds = %.preheader560, %.lr.ph629
  %.1416628 = phi i32 [ %i.nv, %.lr.ph629 ], [ %.0415.lcssa, %.preheader560 ]
  %.1419627 = phi ptr [ %i.ns, %.lr.ph629 ], [ %.0418.lcssa, %.preheader560 ] ; 2 uses
  %.1422626 = phi ptr [ %i.nr, %.lr.ph629 ], [ %.0421.lcssa, %.preheader560 ] ; 2 uses
  %.1425625 = phi ptr [ %i.nu, %.lr.ph629 ], [ %.0424.lcssa, %.preheader560 ] ; 2 uses
  %.1428624 = phi ptr [ %i.nt, %.lr.ph629 ], [ %.0427.lcssa, %.preheader560 ] ; 2 uses
  %i.mz = load <8 x i16>, ptr %.1428624, align 1, !tbaa !9 ; 2 uses
  %i.na = load <8 x i16>, ptr %.1425625, align 1, !tbaa !9 ; 2 uses
  %i.nb = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mz, <8 x i16> %i.kb)
  %i.nc = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.na, <8 x i16> %i.kc)
  %i.nd = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.mz, <8 x i16> %i.kd)
  %i.ne = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.na, <8 x i16> %i.kf)
  %i.nf = add <8 x i16> %i.nb, splat (i16 2)
  %i.ng = add <8 x i16> %i.nf, %i.nc
  %i.nh = ashr <8 x i16> %i.ng, splat (i16 2)
  %i.ni = add <8 x i16> %i.nd, splat (i16 2)
  %i.nj = add <8 x i16> %i.ni, %i.ne
  %i.nk = ashr <8 x i16> %i.nj, splat (i16 2)
  %i.nl = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.nh, <8 x i16> poison)
  %i.nm = bitcast <16 x i8> %i.nl to <2 x i64>
  %i.nn = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.nk, <8 x i16> poison)
  %i.no = bitcast <16 x i8> %i.nn to <2 x i64>
  %i.np = extractelement <2 x i64> %i.nm, i64 0
  store i64 %i.np, ptr %.1422626, align 1, !tbaa !9
  %i.nq = extractelement <2 x i64> %i.no, i64 0
  store i64 %i.nq, ptr %.1419627, align 1, !tbaa !9
  %i.nr = getelementptr inbounds nuw i8, ptr %.1422626, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.1419627, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.1428624, i64 16 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1425625, i64 16 ; 2 uses
  %i.nv = add nuw nsw i32 %.1416628, 8            ; 3 uses
  %i.nw = or disjoint i32 %i.nv, 7
  %i.nx = icmp slt i32 %i.nw, %2
  br i1 %i.nx, label %.lr.ph629, label %.preheader, !llvm.loop !109

.lr.ph640:                                        ; preds = %.lr.ph640.preheader887, %.lr.ph640
  %.2417639 = phi i32 [ %i.oq, %.lr.ph640 ], [ %.2417639.ph, %.lr.ph640.preheader887 ]
  %.2420638 = phi ptr [ %i.oo, %.lr.ph640 ], [ %.2420638.ph, %.lr.ph640.preheader887 ] ; 2 uses
  %.2423637 = phi ptr [ %i.oc, %.lr.ph640 ], [ %.2423637.ph, %.lr.ph640.preheader887 ] ; 2 uses
  %.2426636 = phi ptr [ %i.oa, %.lr.ph640 ], [ %.2426636.ph, %.lr.ph640.preheader887 ] ; 2 uses
  %.2429635 = phi ptr [ %i.ny, %.lr.ph640 ], [ %.2429635.ph, %.lr.ph640.preheader887 ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.2429635, i64 2
  %i.nz = load i16, ptr %.2429635, align 2, !tbaa !123
  %i.oa = getelementptr inbounds nuw i8, ptr %.2426636, i64 2
  %i.ob = load i16, ptr %.2426636, align 2, !tbaa !123
  %i.oc = getelementptr inbounds nuw i8, ptr %.2423637, i64 1
  %i.od = insertelement <2 x i16> poison, i16 %i.nz, i64 0
  %i.oe = shufflevector <2 x i16> %i.od, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.of = call <2 x i16> @llvm.smulh.v2i16(<2 x i16> %i.mx, <2 x i16> %i.oe)
  %i.og = insertelement <2 x i16> poison, i16 %i.ob, i64 0
  %i.oh = shufflevector <2 x i16> %i.og, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.oi = call <2 x i16> @llvm.smulh.v2i16(<2 x i16> %i.my, <2 x i16> %i.oh)
  %i.oj = add <2 x i16> %i.of, splat (i16 2)
  %i.ok = add <2 x i16> %i.oj, %i.oi
  %i.ol = lshr <2 x i16> %i.ok, splat (i16 2)
  %i.om = trunc <2 x i16> %i.ol to <2 x i8>       ; 2 uses
  %i.on = extractelement <2 x i8> %i.om, i64 0
  store i8 %i.on, ptr %.2423637, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.2420638, i64 1
  %i.op = extractelement <2 x i8> %i.om, i64 1
  store i8 %i.op, ptr %.2420638, align 1, !tbaa !9
  %i.oq = add nuw nsw i32 %.2417639, 1            ; 2 uses
  %exitcond697.not = icmp eq i32 %i.oq, %2
  br i1 %exitcond697.not, label %._crit_edge641, label %.lr.ph640, !llvm.loop !110

._crit_edge641:                                   ; preds = %.lr.ph640, %middle.block821, %.preheader
  %i.or = getelementptr inbounds nuw i8, ptr %.0646, i64 8
  %.pre699 = add nsw i32 %.0412642, 2
  br label %bb.ag

bb.af:                                            ; preds = %.loopexit._crit_edge, %bb.ad
  %i.os = phi i16 [ %.pre, %.loopexit._crit_edge ], [ %.pre698, %bb.ad ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.0646, i64 2
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !123 ; 4 uses
  %i.ov = mul nsw i32 %.0412642, %2
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %1, i64 %i.ow ; 2 uses
  %i.oy = insertelement <8 x i16> poison, i16 %i.os, i64 0
  %i.oz = shufflevector <8 x i16> %i.oy, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.pa = insertelement <8 x i16> poison, i16 %i.ou, i64 0
  %i.pb = shufflevector <8 x i16> %i.pa, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br i1 %i.dl, label %.lr.ph593, label %.preheader562

.preheader562:                                    ; preds = %.lr.ph593, %bb.af
  %.0390.lcssa = phi ptr [ %.1407, %bb.af ], [ %i.pw, %.lr.ph593 ] ; 2 uses
  %.0387.lcssa = phi ptr [ %.1409, %bb.af ], [ %i.px, %.lr.ph593 ] ; 2 uses
  %.0384.lcssa = phi ptr [ %i.ox, %bb.af ], [ %i.pv, %.lr.ph593 ] ; 2 uses
  %.0382.lcssa = phi i32 [ 0, %bb.af ], [ %i.do, %.lr.ph593 ] ; 3 uses
  %i.pc = or disjoint i32 %.0382.lcssa, 7
  %i.pd = icmp slt i32 %i.pc, %2
  br i1 %i.pd, label %.lr.ph601, label %.preheader561

.lr.ph593:                                        ; preds = %bb.af, %.lr.ph593
  %.0382591 = phi i32 [ %i.py, %.lr.ph593 ], [ 0, %bb.af ]
  %.0384590 = phi ptr [ %i.pv, %.lr.ph593 ], [ %i.ox, %bb.af ] ; 2 uses
  %.0387589 = phi ptr [ %i.px, %.lr.ph593 ], [ %.1409, %bb.af ] ; 3 uses
  %.0390588 = phi ptr [ %i.pw, %.lr.ph593 ], [ %.1407, %bb.af ] ; 3 uses
  %i.pe = load <8 x i16>, ptr %.0390588, align 1, !tbaa !9
  %i.pf = getelementptr inbounds nuw i8, ptr %.0390588, i64 16
  %i.pg = load <8 x i16>, ptr %i.pf, align 1, !tbaa !9
  %i.ph = load <8 x i16>, ptr %.0387589, align 1, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %.0387589, i64 16
  %i.pj = load <8 x i16>, ptr %i.pi, align 1, !tbaa !9
  %i.pk = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.pe, <8 x i16> %i.oz)
  %i.pl = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ph, <8 x i16> %i.pb)
  %i.pm = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.pg, <8 x i16> %i.oz)
  %i.pn = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.pj, <8 x i16> %i.pb)
  %i.po = add <8 x i16> %i.pk, splat (i16 2)
  %i.pp = add <8 x i16> %i.po, %i.pl
  %i.pq = ashr <8 x i16> %i.pp, splat (i16 2)
  %i.pr = add <8 x i16> %i.pm, splat (i16 2)
  %i.ps = add <8 x i16> %i.pr, %i.pn
  %i.pt = ashr <8 x i16> %i.ps, splat (i16 2)
  %i.pu = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.pq, <8 x i16> %i.pt)
  store <16 x i8> %i.pu, ptr %.0384590, align 1, !tbaa !9
  %i.pv = getelementptr inbounds nuw i8, ptr %.0384590, i64 16 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0390588, i64 32 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0387589, i64 32 ; 2 uses
  %i.py = add nuw nsw i32 %.0382591, 16           ; 2 uses
  %i.pz = or disjoint i32 %i.py, 15
  %i.qa = icmp slt i32 %i.pz, %2
  br i1 %i.qa, label %.lr.ph593, label %.preheader562, !llvm.loop !111

.preheader561:                                    ; preds = %.lr.ph601, %.preheader562
  %.1391.lcssa = phi ptr [ %.0390.lcssa, %.preheader562 ], [ %i.sk, %.lr.ph601 ] ; 8 uses
  %.1388.lcssa = phi ptr [ %.0387.lcssa, %.preheader562 ], [ %i.sl, %.lr.ph601 ] ; 8 uses
  %.1385.lcssa = phi ptr [ %.0384.lcssa, %.preheader562 ], [ %i.sj, %.lr.ph601 ] ; 9 uses
  %.1383.lcssa = phi i32 [ %.0382.lcssa, %.preheader562 ], [ %i.sm, %.lr.ph601 ] ; 7 uses
  %i.qb = icmp slt i32 %.1383.lcssa, %2
  br i1 %i.qb, label %iter.check, label %._crit_edge611

iter.check:                                       ; preds = %.preheader561
  %i.qc = xor i32 %.1383.lcssa, -1
  %i.qd = add i32 %2, %i.qc                       ; 3 uses
  %i.qe = zext i32 %i.qd to i64
  %i.qf = add nuw nsw i64 %i.qe, 1                ; 5 uses
  %min.iters.check842 = icmp ult i32 %i.qd, 3
  br i1 %min.iters.check842, label %.lr.ph610.preheader, label %vector.memcheck843

vector.memcheck843:                               ; preds = %iter.check
  %5 = xor i32 %.1383.lcssa, -1
  %6 = add i32 %2, %5
  %i.qg = zext i32 %6 to i64                      ; 2 uses
  %i.qh = getelementptr i8, ptr %.1385.lcssa, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 1      ; 2 uses
  %i.qj = shl nuw nsw i64 %i.qg, 1
  %i.qk = add nuw nsw i64 %i.qj, 2                ; 2 uses
  %i.ql = getelementptr i8, ptr %.1388.lcssa, i64 %i.qk
  %i.qm = getelementptr i8, ptr %.1391.lcssa, i64 %i.qk
  %bound0844 = icmp ult ptr %.1385.lcssa, %i.ql
  %bound1845 = icmp ult ptr %.1388.lcssa, %i.qi
  %found.conflict846 = and i1 %bound0844, %bound1845
  %bound0847 = icmp ult ptr %.1385.lcssa, %i.qm
  %bound1848 = icmp ult ptr %.1391.lcssa, %i.qi
  %found.conflict849 = and i1 %bound0847, %bound1848
  %conflict.rdx850 = or i1 %found.conflict846, %found.conflict849
  br i1 %conflict.rdx850, label %.lr.ph610.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck843
  %min.iters.check851 = icmp ult i32 %i.qd, 15
  br i1 %min.iters.check851, label %vec.epilog.ph, label %vector.ph852

vector.ph852:                                     ; preds = %vector.main.loop.iter.check
  %i.qn = and i64 %i.qf, 12
  %n.vec853 = and i64 %i.qf, 8589934576           ; 6 uses
  %i.qo = trunc i64 %n.vec853 to i32
  %i.qp = add i32 %.1383.lcssa, %i.qo
  %i.qq = getelementptr i8, ptr %.1385.lcssa, i64 %n.vec853
  %i.qr = shl nuw nsw i64 %n.vec853, 1            ; 2 uses
  %i.qs = getelementptr i8, ptr %.1388.lcssa, i64 %i.qr
  %i.qt = getelementptr i8, ptr %.1391.lcssa, i64 %i.qr
  %broadcast.splatinsert854 = insertelement <8 x i16> poison, i16 %i.os, i64 0
  %broadcast.splat855 = shufflevector <8 x i16> %broadcast.splatinsert854, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert856 = insertelement <8 x i16> poison, i16 %i.ou, i64 0
  %broadcast.splat857 = shufflevector <8 x i16> %broadcast.splatinsert856, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body858

vector.body858:                                   ; preds = %vector.ph852, %vector.body858
  %index859 = phi i64 [ 0, %vector.ph852 ], [ %index.next867, %vector.body858 ] ; 3 uses
  %next.gep860 = getelementptr i8, ptr %.1385.lcssa, i64 %index859 ; 2 uses
  %i.qu = shl i64 %index859, 1                    ; 2 uses
  %next.gep861 = getelementptr i8, ptr %.1388.lcssa, i64 %i.qu ; 2 uses
  %next.gep862 = getelementptr i8, ptr %.1391.lcssa, i64 %i.qu ; 2 uses
  %i.qv = getelementptr i8, ptr %next.gep862, i64 16
  %wide.load863 = load <8 x i16>, ptr %next.gep862, align 2, !tbaa !123, !alias.scope !138
  %wide.load864 = load <8 x i16>, ptr %i.qv, align 2, !tbaa !123, !alias.scope !138
  %i.qw = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load865 = load <8 x i16>, ptr %next.gep861, align 2, !tbaa !123, !alias.scope !139
  %wide.load866 = load <8 x i16>, ptr %i.qw, align 2, !tbaa !123, !alias.scope !139
  %i.qx = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %broadcast.splat855, <8 x i16> %wide.load863)
  %i.qy = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %broadcast.splat855, <8 x i16> %wide.load864)
  %i.qz = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %broadcast.splat857, <8 x i16> %wide.load865)
  %i.ra = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %broadcast.splat857, <8 x i16> %wide.load866)
  %i.rb = add <8 x i16> %i.qx, splat (i16 2)
  %i.rc = add <8 x i16> %i.qy, splat (i16 2)
  %i.rd = add <8 x i16> %i.rb, %i.qz
  %i.re = add <8 x i16> %i.rc, %i.ra
  %i.rf = lshr <8 x i16> %i.rd, splat (i16 2)
  %i.rg = lshr <8 x i16> %i.re, splat (i16 2)
  %i.rh = trunc <8 x i16> %i.rf to <8 x i8>
  %i.ri = trunc <8 x i16> %i.rg to <8 x i8>
  %i.rj = getelementptr i8, ptr %next.gep860, i64 8
  store <8 x i8> %i.rh, ptr %next.gep860, align 1, !tbaa !9, !alias.scope !140, !noalias !141
  store <8 x i8> %i.ri, ptr %i.rj, align 1, !tbaa !9, !alias.scope !140, !noalias !141
  %index.next867 = add nuw i64 %index859, 16      ; 2 uses
  %i.rk = icmp eq i64 %index.next867, %n.vec853
  br i1 %i.rk, label %middle.block868, label %vector.body858, !llvm.loop !116

middle.block868:                                  ; preds = %vector.body858
  %cmp.n869 = icmp eq i64 %i.qf, %n.vec853
  br i1 %cmp.n869, label %._crit_edge611, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block868
  %min.epilog.iters.check = icmp eq i64 %i.qn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph610.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec853, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec870 = and i64 %i.qf, 8589934588           ; 5 uses
  %i.rl = trunc i64 %n.vec870 to i32
  %i.rm = add i32 %.1383.lcssa, %i.rl
  %i.rn = getelementptr i8, ptr %.1385.lcssa, i64 %n.vec870
  %i.ro = shl nuw nsw i64 %n.vec870, 1            ; 2 uses
  %i.rp = getelementptr i8, ptr %.1388.lcssa, i64 %i.ro
  %i.rq = getelementptr i8, ptr %.1391.lcssa, i64 %i.ro
  %broadcast.splatinsert871 = insertelement <4 x i16> poison, i16 %i.os, i64 0
  %broadcast.splat872 = shufflevector <4 x i16> %broadcast.splatinsert871, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert873 = insertelement <4 x i16> poison, i16 %i.ou, i64 0
  %broadcast.splat874 = shufflevector <4 x i16> %broadcast.splatinsert873, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index875 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next881, %vec.epilog.vector.body ] ; 3 uses
  %next.gep876 = getelementptr i8, ptr %.1385.lcssa, i64 %index875
  %i.rr = shl i64 %index875, 1                    ; 2 uses
  %next.gep877 = getelementptr i8, ptr %.1388.lcssa, i64 %i.rr
  %next.gep878 = getelementptr i8, ptr %.1391.lcssa, i64 %i.rr
  %wide.load879 = load <4 x i16>, ptr %next.gep878, align 2, !tbaa !123, !alias.scope !138
  %wide.load880 = load <4 x i16>, ptr %next.gep877, align 2, !tbaa !123, !alias.scope !139
  %i.rs = call <4 x i16> @llvm.smulh.v4i16(<4 x i16> %broadcast.splat872, <4 x i16> %wide.load879)
  %i.rt = call <4 x i16> @llvm.smulh.v4i16(<4 x i16> %broadcast.splat874, <4 x i16> %wide.load880)
  %i.ru = add <4 x i16> %i.rs, splat (i16 2)
  %i.rv = add <4 x i16> %i.ru, %i.rt
  %i.rw = lshr <4 x i16> %i.rv, splat (i16 2)
  %i.rx = trunc <4 x i16> %i.rw to <4 x i8>
  store <4 x i8> %i.rx, ptr %next.gep876, align 1, !tbaa !9, !alias.scope !140, !noalias !141
  %index.next881 = add nuw i64 %index875, 4       ; 2 uses
  %i.ry = icmp eq i64 %index.next881, %n.vec870
  br i1 %i.ry, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n882 = icmp eq i64 %i.qf, %n.vec870
  br i1 %cmp.n882, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %iter.check, %vector.memcheck843, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2609.ph = phi i32 [ %.1383.lcssa, %iter.check ], [ %.1383.lcssa, %vector.memcheck843 ], [ %i.qp, %vec.epilog.iter.check ], [ %i.rm, %vec.epilog.middle.block ]
  %.2386608.ph = phi ptr [ %.1385.lcssa, %iter.check ], [ %.1385.lcssa, %vector.memcheck843 ], [ %i.qq, %vec.epilog.iter.check ], [ %i.rn, %vec.epilog.middle.block ]
  %.2389607.ph = phi ptr [ %.1388.lcssa, %iter.check ], [ %.1388.lcssa, %vector.memcheck843 ], [ %i.qs, %vec.epilog.iter.check ], [ %i.rp, %vec.epilog.middle.block ]
  %.2392606.ph = phi ptr [ %.1391.lcssa, %iter.check ], [ %.1391.lcssa, %vector.memcheck843 ], [ %i.qt, %vec.epilog.iter.check ], [ %i.rq, %vec.epilog.middle.block ]
  br label %.lr.ph610

.lr.ph601:                                        ; preds = %.preheader562, %.lr.ph601
  %.1383600 = phi i32 [ %i.sm, %.lr.ph601 ], [ %.0382.lcssa, %.preheader562 ]
  %.1385599 = phi ptr [ %i.sj, %.lr.ph601 ], [ %.0384.lcssa, %.preheader562 ] ; 2 uses
  %.1388598 = phi ptr [ %i.sl, %.lr.ph601 ], [ %.0387.lcssa, %.preheader562 ] ; 2 uses
  %.1391597 = phi ptr [ %i.sk, %.lr.ph601 ], [ %.0390.lcssa, %.preheader562 ] ; 2 uses
  %i.rz = load <8 x i16>, ptr %.1391597, align 1, !tbaa !9
  %i.sa = load <8 x i16>, ptr %.1388598, align 1, !tbaa !9
  %i.sb = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.rz, <8 x i16> %i.oz)
  %i.sc = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.sa, <8 x i16> %i.pb)
  %i.sd = add <8 x i16> %i.sb, splat (i16 2)
  %i.se = add <8 x i16> %i.sd, %i.sc
  %i.sf = ashr <8 x i16> %i.se, splat (i16 2)
  %i.sg = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.sf, <8 x i16> poison)
  %i.sh = bitcast <16 x i8> %i.sg to <2 x i64>
  %i.si = extractelement <2 x i64> %i.sh, i64 0
  store i64 %i.si, ptr %.1385599, align 1, !tbaa !9
  %i.sj = getelementptr inbounds nuw i8, ptr %.1385599, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1391597, i64 16 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.1388598, i64 16 ; 2 uses
  %i.sm = add nuw nsw i32 %.1383600, 8            ; 3 uses
  %i.sn = or disjoint i32 %i.sm, 7
  %i.so = icmp slt i32 %i.sn, %2
  br i1 %i.so, label %.lr.ph601, label %.preheader561, !llvm.loop !118

.lr.ph610:                                        ; preds = %.lr.ph610.preheader, %.lr.ph610
  %.2609 = phi i32 [ %i.ta, %.lr.ph610 ], [ %.2609.ph, %.lr.ph610.preheader ]
  %.2386608 = phi ptr [ %i.sz, %.lr.ph610 ], [ %.2386608.ph, %.lr.ph610.preheader ] ; 2 uses
  %.2389607 = phi ptr [ %i.sr, %.lr.ph610 ], [ %.2389607.ph, %.lr.ph610.preheader ] ; 2 uses
  %.2392606 = phi ptr [ %i.sp, %.lr.ph610 ], [ %.2392606.ph, %.lr.ph610.preheader ] ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.2392606, i64 2
  %i.sq = load i16, ptr %.2392606, align 2, !tbaa !123
  %i.sr = getelementptr inbounds nuw i8, ptr %.2389607, i64 2
  %i.ss = load i16, ptr %.2389607, align 2, !tbaa !123
  %i.st = call i16 @llvm.smulh.i16(i16 %i.os, i16 %i.sq)
  %i.su = call i16 @llvm.smulh.i16(i16 %i.ou, i16 %i.ss)
  %i.sv = add i16 %i.st, 2
  %i.sw = add i16 %i.sv, %i.su
  %i.sx = lshr i16 %i.sw, 2
  %i.sy = trunc i16 %i.sx to i8
  %i.sz = getelementptr inbounds nuw i8, ptr %.2386608, i64 1
  store i8 %i.sy, ptr %.2386608, align 1, !tbaa !9
  %i.ta = add nuw nsw i32 %.2609, 1               ; 2 uses
  %exitcond696.not = icmp eq i32 %i.ta, %2
  br i1 %exitcond696.not, label %._crit_edge611, label %.lr.ph610, !llvm.loop !119

._crit_edge611:                                   ; preds = %.lr.ph610, %middle.block868, %vec.epilog.middle.block, %.preheader561
  %i.tb = getelementptr inbounds nuw i8, ptr %.0646, i64 4
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge641, %._crit_edge611
  %.pre-phi = phi i32 [ %.pre699, %._crit_edge641 ], [ %i.jk, %._crit_edge611 ] ; 2 uses
  %.1 = phi ptr [ %i.or, %._crit_edge641 ], [ %i.tb, %._crit_edge611 ]
  %i.tc = icmp slt i32 %.pre-phi, %i.a
  br i1 %i.tc, label %bb.c, label %._crit_edge648, !llvm.loop !120

._crit_edge648:                                   ; preds = %bb.ag, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.i) #18
  %i.td = load ptr, ptr %i.ch, align 8, !tbaa !131 ; 2 uses
  %.not.i = icmp eq ptr %i.td, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit469, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge648
  %i.te = atomicrmw add ptr %i.td, i32 -1 acq_rel, align 4
  %i.tf = icmp eq i32 %i.te, 1
  br i1 %i.tf, label %bb.ai, label %_ZN4ncnn3MatD2Ev.exit469

bb.ai:                                            ; preds = %bb.ah
  %i.tg = load ptr, ptr %i.ci, align 8, !tbaa !142 ; 3 uses
  %.not3.i = icmp eq ptr %i.tg, null
  %i.th = load ptr, ptr %4, align 8, !tbaa !130   ; 3 uses
  br i1 %.not3.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ti = load ptr, ptr %i.tg, align 8, !tbaa !144
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8
  invoke void %i.tk(ptr noundef nonnull align 8 dereferenceable(8) %i.tg, ptr noundef %i.th)
          to label %_ZN4ncnn3MatD2Ev.exit469 unwind label %bb.am, !inline_history !121

bb.ak:                                            ; preds = %bb.ai
  %.not.i487 = icmp eq ptr %i.th, null
  br i1 %.not.i487, label %_ZN4ncnn3MatD2Ev.exit469, label %bb.al
end_hunk_0
