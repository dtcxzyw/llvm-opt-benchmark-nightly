inline.NumInlined: 95
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3:bb.a
  br i1 %min.iters.check, label %.lr.ph62.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.preheader
  %i.ct = sub i64 %.05165113, %i.ao               ; 2 uses
  %i.cu = add nsw i64 %i.cd, %wide.trip.count90
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = sub i64 %i.cv, %i.ct
  %diff.check = icmp ugt i64 %i.cw, -32
  %i.cx = shl nsw i64 %i.cd, 2
  %i.cy = sub i64 %i.cx, %i.ct
  %diff.check114 = icmp ugt i64 %i.cy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check114
  br i1 %conflict.rdx, label %.lr.ph62.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, -8                      ; 3 uses
  %i.cz = add nsw i64 %n.vec, %i.cq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat116 = shufflevector <4 x float> %broadcast.splatinsert115, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add nuw i64 %index, %i.cq               ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !70
  %wide.load117 = load <4 x float>, ptr %i.dc, align 4, !tbaa !70
  %i.dd = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.de = fmul fast <4 x float> %wide.load117, %broadcast.splat
  %i.df = getelementptr [4 x i8], ptr %invariant.gep109, i64 %i.da ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %wide.load118 = load <4 x float>, ptr %i.df, align 4, !tbaa !70
  %wide.load119 = load <4 x float>, ptr %i.dg, align 4, !tbaa !70
  %i.dh = fmul fast <4 x float> %wide.load118, %broadcast.splat116
  %i.di = fmul fast <4 x float> %wide.load119, %broadcast.splat116
  %i.dj = fadd fast <4 x float> %i.dh, %i.dd
  %i.dk = fadd fast <4 x float> %i.di, %i.de
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.05165, i64 %i.da ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x float> %i.dj, ptr %i.dl, align 4, !tbaa !70
  store <4 x float> %i.dk, ptr %i.dm, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph62.preheader120

.lr.ph62.preheader120:                            ; preds = %vector.memcheck, %.lr.ph62.preheader, %middle.block
  %indvars.iv87.ph = phi i64 [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph62.preheader ], [ %i.cz, %middle.block ] ; 7 uses
  %i.do = sub nsw i64 %wide.trip.count90, %indvars.iv87.ph
  %xtraiter = and i64 %i.do, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph62.prol.loopexit, label %.lr.ph62.prol

.lr.ph62.prol:                                    ; preds = %.lr.ph62.preheader120
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv87.ph
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !70
  %i.dr = fmul fast float %i.dq, %i.cf
  %gep110.prol = getelementptr [4 x i8], ptr %invariant.gep109, i64 %indvars.iv87.ph
  %i.ds = load float, ptr %gep110.prol, align 4, !tbaa !70
  %i.dt = fmul fast float %i.ds, %i.ch
  %i.du = fadd fast float %i.dt, %i.dr
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.05165, i64 %indvars.iv87.ph
  store float %i.du, ptr %i.dv, align 4, !tbaa !70
  %indvars.iv.next88.prol = add nuw nsw i64 %indvars.iv87.ph, 1
  br label %.lr.ph62.prol.loopexit

.lr.ph62.prol.loopexit:                           ; preds = %.lr.ph62.prol, %.lr.ph62.preheader120
  %indvars.iv87.unr = phi i64 [ %indvars.iv87.ph, %.lr.ph62.preheader120 ], [ %indvars.iv.next88.prol, %.lr.ph62.prol ]
  %i.dw = add nsw i64 %wide.trip.count90, -1
  %i.dx = icmp eq i64 %indvars.iv87.ph, %i.dw
  br i1 %i.dx, label %._crit_edge, label %.lr.ph62

.lr.ph:                                           ; preds = %.lr.ph67.split, %.lr.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph ], [ 0, %.lr.ph67.split ] ; 3 uses
  %i.dy = phi i32 [ %i.ej, %.lr.ph ], [ %i.by, %.lr.ph67.split ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv84 ; 2 uses
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !tbaa !17
  %i.eb = sext i32 %i.dy to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !tbaa !17
  %i.ee = fmul fast <4 x float> %i.ea, %i.cj
  %i.ef = fmul fast <4 x float> %i.ed, %i.cl
  %i.eg = fadd fast <4 x float> %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.05165, i64 %indvars.iv84
  store <4 x float> %i.eg, ptr %i.eh, align 16, !tbaa !17
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 4 ; 3 uses
  %i.ei = or disjoint i64 %indvars.iv.next85, 3
  %i.ej = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %i.ei, %i.ek
  br i1 %i.el, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !113

.lr.ph62:                                         ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.1, %.lr.ph62 ], [ %indvars.iv87.unr, %.lr.ph62.prol.loopexit ] ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv87
  %i.en = load float, ptr %i.em, align 4, !tbaa !70
  %i.eo = fmul fast float %i.en, %i.cf
  %gep110 = getelementptr [4 x i8], ptr %invariant.gep109, i64 %indvars.iv87
  %i.ep = load float, ptr %gep110, align 4, !tbaa !70
  %i.eq = fmul fast float %i.ep, %i.ch
  %i.er = fadd fast float %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.05165, i64 %indvars.iv87
  store float %i.er, ptr %i.es, align 4, !tbaa !70
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next88
  %i.eu = load float, ptr %i.et, align 4, !tbaa !70
  %i.ev = fmul fast float %i.eu, %i.cf
  %gep110.1 = getelementptr [4 x i8], ptr %invariant.gep109, i64 %indvars.iv.next88
  %i.ew = load float, ptr %gep110.1, align 4, !tbaa !70
  %i.ex = fmul fast float %i.ew, %i.ch
  %i.ey = fadd fast float %i.ex, %i.ev
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.05165, i64 %indvars.iv.next88
  store float %i.ey, ptr %i.ez, align 4, !tbaa !70
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %exitcond91.not.1 = icmp eq i64 %indvars.iv.next88.1, %wide.trip.count90
  br i1 %exitcond91.not.1, label %._crit_edge, label %.lr.ph62, !llvm.loop !114

._crit_edge:                                      ; preds = %.lr.ph62.prol.loopexit, %.lr.ph62, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.cr, %middle.block ], [ %i.cr, %.lr.ph62 ], [ %i.cr, %.lr.ph62.prol.loopexit ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.05364, i64 8
  %i.fb = getelementptr inbounds [4 x i8], ptr %.05165, i64 %.pre-phi
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.fc = load i32, ptr %6, align 4, !tbaa !25    ; 3 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next93, %i.fd
  br i1 %i.fe, label %.lr.ph67.split, label %._crit_edge68, !llvm.loop !115

._crit_edge73:                                    ; preds = %._crit_edge68, %.lr.ph72, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge73, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = sitofp fast i32 %0 to double
  %i.b = sitofp fast i32 %1 to double
  %i.c = fdiv fast double %i.a, %i.b
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp fast i32 %i.f to double
  %i.h = fdiv fast double %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.087 = phi nsz double [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = add nsw i32 %0, -2
  %i.k = add nsw i32 %0, -1
  %i.l = add nsw i32 %0, -3
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = uitofp nneg i32 %i.m to double           ; 2 uses
  %i.o = fadd fast double %i.n, 5.000000e-01
  %i.p = fmul fast double %i.o, %.087
  %i.q = fadd fast double %i.p, -5.000000e-01
  %i.r = fmul fast double %.087, %i.n
  %.085.in = select i1 %.not, double %i.q, double %i.r
  %.085 = fptrunc double %.085.in to float        ; 2 uses
  %i.s = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %.085)
  %i.t = fptosi float %i.s to i32                 ; 4 uses
  %i.u = sitofp fast i32 %i.t to float
  %i.v = fsub fast float %.085, %i.u              ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 6 uses
  %i.x = fadd fast float %i.v, 1.000000e+00       ; 4 uses
  %i.y = fsub fast float 1.000000e+00, %i.v       ; 3 uses
  %i.z = fmul fast float %i.x, %i.x
  %i.aa = fmul fast float %i.x, 7.500000e-01
  %5 = fsub fast float 3.750000e+00, %i.aa
  %6 = fmul fast float %i.z, %5
  %reass.mul.i = fmul fast float %i.x, 6.000000e+00
  %i.ab = fsub fast float %6, %reass.mul.i
  %i.ac = fadd fast float %i.ab, 3.000000e+00     ; 4 uses
  store float %i.ac, ptr %i.w, align 4, !tbaa !70
  %i.ad = fmul fast float %i.v, %i.v
  %i.ae = fmul fast float %i.v, 1.250000e+00
  %i.af = fadd fast float %i.ae, -2.250000e+00
  %i.ag = fmul fast float %i.ad, %i.af
  %i.ah = fadd fast float %i.ag, 1.000000e+00     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store float %i.ah, ptr %i.ai, align 4, !tbaa !70
  %i.aj = fmul fast float %i.y, %i.y
  %i.ak = fmul fast float %i.y, 1.250000e+00
  %i.al = fadd fast float %i.ak, -2.250000e+00
  %i.am = fmul fast float %i.aj, %i.al            ; 2 uses
  %i.an = fadd fast float %i.am, 1.000000e+00     ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !70
  %i.ap = fadd fast float %i.am, %i.ah
  %i.aq = fadd fast float %i.ap, %i.ac            ; 2 uses
  %i.ar = fneg fast float %i.aq                   ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 3 uses
  store float %i.ar, ptr %i.as, align 4, !tbaa !70
  %i.at = icmp slt i32 %i.t, 0
  br i1 %i.at, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.au = fadd fast float %i.aq, 1.000000e+00
  br label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.av = icmp eq i32 %i.t, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = fadd fast float %i.ah, %i.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.thread
  %.sink100 = phi float [ %i.au, %.thread ], [ %i.aw, %bb.f ] ; 2 uses
  %.sink99 = phi float [ %i.ar, %.thread ], [ %i.an, %bb.f ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.ar, %bb.f ] ; 2 uses
  store float %.sink100, ptr %i.w, align 4, !tbaa !70
  store float %.sink99, ptr %i.ai, align 4, !tbaa !70
  store float %.sink, ptr %i.ao, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.ax = phi float [ %i.ah, %bb.e ], [ %.sink99, %.sink.split ]
  %i.ay = phi float [ %i.ar, %bb.e ], [ 0.000000e+00, %.sink.split ]
  %i.az = phi float [ %i.an, %bb.e ], [ %.sink, %.sink.split ]
  %i.ba = phi float [ %i.ac, %bb.e ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.t, %bb.e ], [ 1, %.sink.split ] ; 3 uses
  %i.bb = icmp eq i32 %.1, %i.j
  br i1 %i.bb, label %.thread91, label %bb.h

.thread91:                                        ; preds = %bb.g
  %i.bc = fadd fast float %i.ay, %i.az
  br label %.sink.split101

bb.h:                                             ; preds = %bb.g
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = fsub fast float 1.000000e+00, %i.ba
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.i, %.thread91
  %.sink104 = phi float [ %i.bc, %.thread91 ], [ %i.bd, %bb.i ]
  %.sink103 = phi float [ %i.ax, %.thread91 ], [ %i.ba, %bb.i ]
  %.sink102 = phi float [ %i.ba, %.thread91 ], [ 0.000000e+00, %bb.i ]
  store float %.sink104, ptr %i.as, align 4, !tbaa !70
  store float %.sink103, ptr %i.ao, align 4, !tbaa !70
  store float %.sink102, ptr %i.ai, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %.sink.split101, %bb.h
  %.3 = phi i32 [ %.1, %bb.h ], [ %i.l, %.sink.split101 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.be, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !116
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge89
  %i.t = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cq, %._crit_edge89 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cr, %._crit_edge89 ] ; 2 uses
  %indvars.iv116 = phi i64 [ %i.r, %.lr.ph93.split.preheader ], [ %indvars.iv.next117, %._crit_edge89 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !26
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv116, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !29
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !26
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv116, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !29
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.al = icmp sgt i32 %i.u, 0
  br i1 %i.al, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.lr.ph93.split
  %i.am = load i32, ptr %8, align 4, !tbaa !25    ; 8 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph88.split.preheader, label %.lr.ph88.split.us

.lr.ph88.split.preheader:                         ; preds = %.lr.ph88
  %i.ao = add i64 %i.ab, %i.w                     ; 2 uses
  br label %.lr.ph88.split

.lr.ph88.split.us:                                ; preds = %.lr.ph88
  %i.ap = load ptr, ptr %7, align 8, !tbaa !71
  %i.aq = icmp sgt i32 %i.am, 0
  %i.ar = sext i32 %i.am to i64                   ; 5 uses
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge89

.preheader.us.preheader:                          ; preds = %.lr.ph88.split.us
  %i.as = shl nuw nsw i32 %i.am, 1
  %i.at = zext nneg i32 %i.as to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %wide.trip.count103 = zext nneg i32 %smax to i64
  %i.au = sub nsw i64 0, %i.ar
  %exitcond.not = icmp eq i32 %i.am, 1
  %i.av = sub nsw i64 1, %i.ar
  %exitcond.not.1 = icmp eq i32 %i.am, 2
  %i.aw = sub nsw i64 2, %i.ar
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv100 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next101, %._crit_edge.us ] ; 2 uses
  %.06586.us = phi ptr [ %i.aj, %.preheader.us.preheader ], [ %i.cp, %._crit_edge.us ] ; 4 uses
  %.06785.us = phi ptr [ %i.ak, %.preheader.us.preheader ], [ %i.co, %._crit_edge.us ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !25
  %i.az = mul nsw i32 %i.am, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ba ; 8 uses
  %i.bc = load <4 x float>, ptr %.06785.us, align 4, !tbaa !70 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.ar ; 3 uses
  %invariant.gep130 = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.at ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.au
  %i.be = load float, ptr %i.bd, align 4, !tbaa !70
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !70
  %i.bg = load float, ptr %invariant.gep, align 4, !tbaa !70
  %i.bh = load float, ptr %invariant.gep130, align 4, !tbaa !70
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = fmul fast <4 x float> %i.bl, %i.bc
  %i.bn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bm)
  store float %i.bn, ptr %.06586.us, align 4, !tbaa !70
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.av
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !70
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !70
  %gep131.1 = getelementptr inbounds nuw i8, ptr %invariant.gep130, i64 4
  %i.bt = load float, ptr %gep131.1, align 4, !tbaa !70
  %i.bu = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = fmul fast <4 x float> %i.bx, %i.bc
  %i.bz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.06586.us, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aw
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !70
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.cf = load float, ptr %gep.2, align 4, !tbaa !70
  %gep131.2 = getelementptr inbounds nuw i8, ptr %invariant.gep130, i64 8
  %i.cg = load float, ptr %gep131.2, align 4, !tbaa !70
  %i.ch = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = fmul fast <4 x float> %i.ck, %i.bc
  %i.cm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %.06586.us, i64 8
  store float %i.cm, ptr %i.cn, align 4, !tbaa !70
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.co = getelementptr inbounds nuw i8, ptr %.06785.us, i64 16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.06586.us, i64 %i.ar
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge89, label %.preheader.us, !llvm.loop !117

._crit_edge89:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph88.split.us, %.lr.ph93.split
  %i.cq = phi i32 [ %i.gf, %._crit_edge ], [ %i.t, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %i.cr = phi i32 [ %i.gf, %._crit_edge ], [ %i.u, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond119.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond119.not, label %._crit_edge94, label %.lr.ph93.split, !llvm.loop !118

.lr.ph88.split:                                   ; preds = %.lr.ph88.split.preheader, %._crit_edge
  %i.cs = phi i32 [ %i.dg, %._crit_edge ], [ %i.am, %.lr.ph88.split.preheader ] ; 4 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge ], [ 0, %.lr.ph88.split.preheader ] ; 2 uses
  %.06586 = phi ptr [ %i.ge, %._crit_edge ], [ %i.aj, %.lr.ph88.split.preheader ] ; 5 uses
  %.06785 = phi ptr [ %i.gd, %._crit_edge ], [ %i.ak, %.lr.ph88.split.preheader ] ; 2 uses
  %.06586138 = ptrtoaddr ptr %.06586 to i64       ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !71
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv113
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.cw = mul i32 %i.cs, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 4 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cx ; 7 uses
  %i.cz = load <4 x float>, ptr %.06785, align 4, !tbaa !70 ; 5 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.de = icmp sgt i32 %i.cs, 3
  br i1 %i.de, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.df = trunc nuw nsw i64 %indvars.iv.next106 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph88.split
  %i.dg = phi i32 [ %i.cs, %.lr.ph88.split ], [ %i.fm, %.preheader.loopexit ] ; 6 uses
  %.066.lcssa = phi i32 [ 0, %.lr.ph88.split ], [ %i.df, %.preheader.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.066.lcssa, %i.dg
  br i1 %i.dh, label %.lr.ph83, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.dg to i64
  br label %._crit_edge

.lr.ph83:                                         ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.dg, 1
  %i.dj = zext i32 %.066.lcssa to i64             ; 5 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 5 uses
  %i.dl = zext nneg i32 %i.di to i64              ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.dg to i64 ; 4 uses
  %invariant.gep132 = getelementptr [4 x i8], ptr %i.cy, i64 %i.dk ; 2 uses
  %invariant.gep134 = getelementptr [4 x i8], ptr %i.cy, i64 %i.dl ; 2 uses
  %i.dm = sub nsw i64 %wide.trip.count111, %i.dj  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph83
  %i.dn = sub i64 %.06586138, %i.ao               ; 2 uses
  %i.do = add nsw i64 %i.cx, %i.dl
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = sub i64 %i.dp, %i.dn
  %diff.check = icmp ugt i64 %i.dq, -16
  %i.dr = add nsw i64 %i.cx, %wide.trip.count111
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = sub i64 %i.ds, %i.dn
  %diff.check139 = icmp ugt i64 %i.dt, -16
  %conflict.rdx = or i1 %diff.check, %diff.check139
  %i.du = sub i64 %.06586138, %i.ao               ; 2 uses
  %i.dv = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.dw = sub i64 %i.dv, %i.du
  %diff.check140 = icmp ugt i64 %i.dw, -16
  %conflict.rdx141 = or i1 %conflict.rdx, %diff.check140
  %i.dx = shl nuw nsw i64 %wide.trip.count111, 2
  %i.dy = add i64 %i.du, %i.dx
  %i.dz = sub i64 %i.dv, %i.dy
  %diff.check142 = icmp ugt i64 %i.dz, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  br i1 %conflict.rdx143, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, -4                      ; 3 uses
  %i.ea = add nsw i64 %n.vec, %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = add nuw i64 %index, %i.dj               ; 5 uses
  %i.ec = sub nsw i64 %i.eb, %i.dk
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ec
  %wide.load = load <4 x float>, ptr %i.ed, align 4, !tbaa !70
  %i.ee = fmul fast <4 x float> %wide.load, %i.da
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.eb
  %wide.load150 = load <4 x float>, ptr %i.ef, align 4, !tbaa !70
  %i.eg = fmul fast <4 x float> %wide.load150, %i.db
  %i.eh = fadd fast <4 x float> %i.ee, %i.eg
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep132, i64 %i.eb
  %wide.load151 = load <4 x float>, ptr %i.ei, align 4, !tbaa !70
  %i.ej = fmul fast <4 x float> %wide.load151, %i.dc
  %i.ek = fadd fast <4 x float> %i.eh, %i.ej
  %i.el = getelementptr [4 x i8], ptr %invariant.gep134, i64 %i.eb
  %wide.load152 = load <4 x float>, ptr %i.el, align 4, !tbaa !70
  %i.em = fmul fast <4 x float> %wide.load152, %i.dd
  %i.en = fadd fast <4 x float> %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.06586, i64 %i.eb
  store <4 x float> %i.en, ptr %i.eo, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph83, %middle.block
  %indvars.iv108.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph83 ], [ %i.ea, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph88.split, %.lr.ph
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph ], [ 0, %.lr.ph88.split ] ; 3 uses
  %i.eq = phi i32 [ %i.fm, %.lr.ph ], [ %i.cs, %.lr.ph88.split ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv105 ; 4 uses
  %i.es = sext i32 %i.eq to i64                   ; 2 uses
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.et
  %i.ev = load <4 x float>, ptr %i.eu, align 16, !tbaa !17
  %i.ew = load <4 x float>, ptr %i.er, align 16, !tbaa !17
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !17
  %i.ez = shl nsw i32 %i.eq, 1
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fa
  %i.fc = load <4 x float>, ptr %i.fb, align 16, !tbaa !17
  %i.fd = fmul fast <4 x float> %i.ev, %i.da
  %i.fe = fmul fast <4 x float> %i.ew, %i.db
  %i.ff = fadd fast <4 x float> %i.fd, %i.fe
  %i.fg = fmul fast <4 x float> %i.ey, %i.dc
  %i.fh = fadd fast <4 x float> %i.fg, %i.ff
  %i.fi = fmul fast <4 x float> %i.fc, %i.dd
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.06586, i64 %indvars.iv105
  store <4 x float> %i.fj, ptr %i.fk, align 16, !tbaa !17
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 4 ; 3 uses
  %i.fl = or disjoint i64 %indvars.iv.next106, 3
  %i.fm = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %i.fl, %i.fn
  br i1 %i.fo, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !120

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph ], [ %indvars.iv108.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fp = sub nsw i64 %indvars.iv108, %i.dk
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !70
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv108
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !70
  %gep133 = getelementptr [4 x i8], ptr %invariant.gep132, i64 %indvars.iv108
  %i.fu = load float, ptr %gep133, align 4, !tbaa !70
  %gep135 = getelementptr [4 x i8], ptr %invariant.gep134, i64 %indvars.iv108
  %i.fv = load float, ptr %gep135, align 4, !tbaa !70
  %i.fw = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3
  %i.ga = fmul fast <4 x float> %i.fz, %i.cz
  %i.gb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ga)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.06586, i64 %indvars.iv108
  store float %i.gb, ptr %i.gc, align 4, !tbaa !70
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %scalar.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dk, %middle.block ], [ %i.dk, %scalar.ph ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.06785, i64 16
  %i.ge = getelementptr inbounds [4 x i8], ptr %.06586, i64 %.pre-phi
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.gf = load i32, ptr %6, align 4, !tbaa !25    ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next114, %i.gg
  br i1 %i.gh, label %.lr.ph88.split, label %._crit_edge89, !llvm.loop !122

._crit_edge94:                                    ; preds = %._crit_edge89, %.lr.ph93, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge94, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !123
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !123
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !123 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !126
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !126
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !126 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !126
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !123
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !129

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03782 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03881 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03782 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.03881, ptr align 4 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.03881, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03782, 1              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7:bb.a
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit258.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !43  ; 2 uses
  %.not.i264.i = icmp eq ptr %i.cl, null
  br i1 %.not.i264.i, label %_ZN4ncnn3MatD2Ev.exit257.i, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit258.i
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit257.i

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i265.i = icmp eq ptr %i.co, null
  %i.cp = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i265.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cp)
          to label %_ZN4ncnn3MatD2Ev.exit257.i unwind label %bb.o, !inline_history !46

bb.m:                                             ; preds = %bb.k
  %.not.i297.i = icmp eq ptr %i.cp, null
  br i1 %.not.i297.i, label %_ZN4ncnn3MatD2Ev.exit257.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cp) #6
  br label %_ZN4ncnn3MatD2Ev.exit257.i

bb.o:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit257.i:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZN4ncnn3MatD2Ev.exit258.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.cv = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i268.i = icmp eq ptr %i.cv, null
  br i1 %.not.i268.i, label %_ZN4ncnn3MatD2Ev.exit256.i, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit257.i
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit256.i

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i269.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %15, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i269.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %_ZN4ncnn3MatD2Ev.exit256.i unwind label %bb.u, !inline_history !46

bb.s:                                             ; preds = %bb.q
  %.not.i295.i = icmp eq ptr %i.cz, null
  br i1 %.not.i295.i, label %_ZN4ncnn3MatD2Ev.exit256.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cz) #6
  br label %_ZN4ncnn3MatD2Ev.exit256.i

bb.u:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit256.i:                       ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %_ZN4ncnn3MatD2Ev.exit257.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i272.i = icmp eq ptr %i.df, null
  br i1 %.not.i272.i, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit256.i
  %i.dg = atomicrmw add ptr %i.df, i32 -1 acq_rel, align 4
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.w, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.w:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i273.i = icmp eq ptr %i.di, null
  %i.dj = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i273.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dj)
          to label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.aa, !inline_history !46

bb.y:                                             ; preds = %bb.w
  %.not.i293.i = icmp eq ptr %i.dj, null
  br i1 %.not.i293.i, label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.dj) #6
  br label %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit

bb.aa:                                            ; preds = %bb.x
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #22
  unreachable

bb.ab:                                            ; preds = %.noexc29
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit253.i

bb.ac:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit307.i
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit254.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit305.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !43  ; 2 uses
  %.not.i276.i = icmp eq ptr %i.ds, null
  br i1 %.not.i276.i, label %_ZN4ncnn3MatD2Ev.exit254.i, label %bb.am

bb.ae:                                            ; preds = %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, %.lr.ph427.i
  %indvars.iv447.i = phi i64 [ 0, %.lr.ph427.i ], [ %indvars.iv.next448.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 4 uses
  %.0426.i = phi ptr [ %i.bn, %.lr.ph427.i ], [ %i.rk, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 2 uses
  %.0230425.i = phi ptr [ %i.bt, %.lr.ph427.i ], [ %.1231.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 13 uses
  %.0232424.i = phi ptr [ %i.bs, %.lr.ph427.i ], [ %.1233.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 12 uses
  %.0234423.i = phi ptr [ %i.br, %.lr.ph427.i ], [ %.1235.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 11 uses
  %.0236422.i = phi ptr [ %i.bq, %.lr.ph427.i ], [ %.1237.i, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 10 uses
  %.0238421.i = phi i32 [ -3, %.lr.ph427.i ], [ %i.dw, %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i ] ; 4 uses
  %i.dt = mul i64 %i.ca, %indvars.iv447.i
  %i.du = add i64 %i.bz, %i.dt                    ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv447.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !25 ; 15 uses
  %i.dx = icmp eq i32 %i.dw, %.0238421.i
  br i1 %i.dx, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = add nsw i32 %.0238421.i, 1
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ea = add nsw i32 %i.dw, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.by, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ec
  br i1 %i.bu, label %.lr.ph419.i, label %.loopexit.i

.lr.ph419.i:                                      ; preds = %bb.ag, %.lr.ph419.i
  %indvars.iv442.i = phi i64 [ %indvars.iv.next443.i, %.lr.ph419.i ], [ 0, %bb.ag ] ; 3 uses
  %.0240418.i = phi ptr [ %i.fn, %.lr.ph419.i ], [ %i.bl, %bb.ag ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv442.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !25
  %i.eg = shl nsw i32 %i.ef, 2
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.eh ; 4 uses
  %i.ej = load float, ptr %.0240418.i, align 4, !tbaa !70
  %i.ek = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = getelementptr inbounds nuw i8, ptr %.0240418.i, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !70
  %i.eo = insertelement <4 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = getelementptr inbounds nuw i8, ptr %.0240418.i, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !70
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %.0240418.i, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !70
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = getelementptr inbounds i8, ptr %i.ei, i64 -16
  %i.ez = load <4 x float>, ptr %i.ey, align 16, !tbaa !17
  %i.fa = load <4 x float>, ptr %i.ei, align 16, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.fc = load <4 x float>, ptr %i.fb, align 16, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.fe = load <4 x float>, ptr %i.fd, align 16, !tbaa !17
  %i.ff = fmul fast <4 x float> %i.ez, %i.el
  %i.fg = fmul fast <4 x float> %i.fa, %i.ep
  %i.fh = fadd fast <4 x float> %i.ff, %i.fg
  %i.fi = fmul fast <4 x float> %i.fc, %i.et
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = fmul fast <4 x float> %i.fe, %i.ex
  %i.fl = fadd fast <4 x float> %i.fk, %i.fj
  %.idx.i = shl nuw nsw i64 %indvars.iv442.i, 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0230425.i, i64 %.idx.i
  store <4 x float> %i.fl, ptr %i.fm, align 16, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.0240418.i, i64 16
  %indvars.iv.next443.i = add nuw nsw i64 %indvars.iv442.i, 1 ; 2 uses
  %exitcond446.not.i = icmp eq i64 %indvars.iv.next443.i, %wide.trip.count.i
  br i1 %exitcond446.not.i, label %.loopexit.i, label %.lr.ph419.i, !llvm.loop !157

bb.ah:                                            ; preds = %bb.af
  %i.fo = add nsw i32 %.0238421.i, 2
  %i.fp = icmp eq i32 %i.dw, %i.fo
  br i1 %i.fp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fq = add nsw i32 %i.dw, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul i64 %i.by, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fs
  %i.fu = add nsw i32 %i.dw, 2
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.by, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fw
  br i1 %i.bu, label %.lr.ph416.i, label %.loopexit.i

.lr.ph416.i:                                      ; preds = %bb.ai, %.lr.ph416.i
  %indvars.iv437.i = phi i64 [ %indvars.iv.next438.i, %.lr.ph416.i ], [ 0, %bb.ai ] ; 3 uses
  %.0243415.i = phi ptr [ %i.hy, %.lr.ph416.i ], [ %i.bl, %bb.ai ] ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv437.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !25
  %i.ga = shl nsw i32 %i.fz, 2
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gb ; 4 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gb ; 4 uses
  %i.ge = load float, ptr %.0243415.i, align 4, !tbaa !70
  %i.gf = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0243415.i, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !70
  %i.gj = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0243415.i, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !70
  %i.gn = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0243415.i, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !70
  %i.gr = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gc, i64 -16
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !17
  %i.gv = load <4 x float>, ptr %i.gc, align 16, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gx = load <4 x float>, ptr %i.gw, align 16, !tbaa !17
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !17
  %i.ha = getelementptr inbounds i8, ptr %i.gd, i64 -16
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !17
  %i.hc = load <4 x float>, ptr %i.gd, align 16, !tbaa !17
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.he = load <4 x float>, ptr %i.hd, align 16, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !tbaa !17
  %i.hh = fmul fast <4 x float> %i.gu, %i.gg
  %i.hi = fmul fast <4 x float> %i.hb, %i.gg
  %i.hj = fmul fast <4 x float> %i.gv, %i.gk
  %i.hk = fadd fast <4 x float> %i.hh, %i.hj
  %i.hl = fmul fast <4 x float> %i.hc, %i.gk
  %i.hm = fadd fast <4 x float> %i.hi, %i.hl
  %i.hn = fmul fast <4 x float> %i.gx, %i.go
  %i.ho = fadd fast <4 x float> %i.hn, %i.hk
  %i.hp = fmul fast <4 x float> %i.he, %i.go
  %i.hq = fadd fast <4 x float> %i.hp, %i.hm
  %i.hr = fmul fast <4 x float> %i.gz, %i.gs
  %i.hs = fadd fast <4 x float> %i.hr, %i.ho
  %i.ht = fmul fast <4 x float> %i.hg, %i.gs
  %i.hu = fadd fast <4 x float> %i.ht, %i.hq
  %i.hv = shl nuw nsw i64 %indvars.iv437.i, 2     ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.0230425.i, i64 %i.hv
  store <4 x float> %i.hs, ptr %i.hw, align 16, !tbaa !17
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0232424.i, i64 %i.hv
  store <4 x float> %i.hu, ptr %i.hx, align 16, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %.0243415.i, i64 16
  %indvars.iv.next438.i = add nuw nsw i64 %indvars.iv437.i, 1 ; 2 uses
  %exitcond441.not.i = icmp eq i64 %indvars.iv.next438.i, %wide.trip.count.i
  br i1 %exitcond441.not.i, label %.loopexit.i, label %.lr.ph416.i, !llvm.loop !158

bb.aj:                                            ; preds = %bb.ah
  %i.hz = add nsw i32 %.0238421.i, 3
  %i.ia = icmp eq i32 %i.dw, %i.hz
  br i1 %i.ia, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ib = sext i32 %i.dw to i64
  %i.ic = mul i64 %i.by, %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ic
  %i.ie = add nsw i32 %i.dw, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = mul i64 %i.by, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ig
  %i.ii = add nsw i32 %i.dw, 2
  %i.ij = sext i32 %i.ii to i64
  %i.ik = mul i64 %i.by, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ik
  br i1 %i.bu, label %.lr.ph413.i, label %.loopexit.i

.lr.ph413.i:                                      ; preds = %bb.ak, %.lr.ph413.i
  %indvars.iv432.i = phi i64 [ %indvars.iv.next433.i, %.lr.ph413.i ], [ 0, %bb.ak ] ; 3 uses
  %.0245412.i = phi ptr [ %i.lc, %.lr.ph413.i ], [ %i.bl, %bb.ak ] ; 5 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv432.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !25
  %i.io = shl nsw i32 %i.in, 2
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ip ; 4 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ip ; 4 uses
  %i.it = load float, ptr %.0245412.i, align 4, !tbaa !70
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0245412.i, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !70
  %i.iy = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0245412.i, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !70
  %i.jc = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0245412.i, i64 12
  %i.jf = load float, ptr %i.je, align 4, !tbaa !70
  %i.jg = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ji = getelementptr inbounds i8, ptr %i.iq, i64 -16
  %i.jj = load <4 x float>, ptr %i.ji, align 16, !tbaa !17
  %i.jk = load <4 x float>, ptr %i.iq, align 16, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !17
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.jo = load <4 x float>, ptr %i.jn, align 16, !tbaa !17
  %i.jp = getelementptr inbounds i8, ptr %i.ir, i64 -16
  %i.jq = load <4 x float>, ptr %i.jp, align 16, !tbaa !17
  %i.jr = load <4 x float>, ptr %i.ir, align 16, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jt = load <4 x float>, ptr %i.js, align 16, !tbaa !17
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.jv = load <4 x float>, ptr %i.ju, align 16, !tbaa !17
  %i.jw = getelementptr inbounds i8, ptr %i.is, i64 -16
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !17
  %i.jy = load <4 x float>, ptr %i.is, align 16, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.ka = load <4 x float>, ptr %i.jz, align 16, !tbaa !17
  %i.kb = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !17
  %i.kd = fmul fast <4 x float> %i.jj, %i.iv
  %i.ke = fmul fast <4 x float> %i.jq, %i.iv
  %i.kf = fmul fast <4 x float> %i.jx, %i.iv
  %i.kg = fmul fast <4 x float> %i.jk, %i.iz
  %i.kh = fadd fast <4 x float> %i.kd, %i.kg
  %i.ki = fmul fast <4 x float> %i.jr, %i.iz
  %i.kj = fadd fast <4 x float> %i.ke, %i.ki
  %i.kk = fmul fast <4 x float> %i.jy, %i.iz
  %i.kl = fadd fast <4 x float> %i.kf, %i.kk
  %i.km = fmul fast <4 x float> %i.jm, %i.jd
  %i.kn = fadd fast <4 x float> %i.km, %i.kh
  %i.ko = fmul fast <4 x float> %i.jt, %i.jd
  %i.kp = fadd fast <4 x float> %i.ko, %i.kj
  %i.kq = fmul fast <4 x float> %i.ka, %i.jd
  %i.kr = fadd fast <4 x float> %i.kq, %i.kl
  %i.ks = fmul fast <4 x float> %i.jo, %i.jh
  %i.kt = fadd fast <4 x float> %i.ks, %i.kn
  %i.ku = fmul fast <4 x float> %i.jv, %i.jh
  %i.kv = fadd fast <4 x float> %i.ku, %i.kp
  %i.kw = fmul fast <4 x float> %i.kc, %i.jh
  %i.kx = fadd fast <4 x float> %i.kw, %i.kr
  %i.ky = shl nuw nsw i64 %indvars.iv432.i, 2     ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0230425.i, i64 %i.ky
  store <4 x float> %i.kt, ptr %i.kz, align 16, !tbaa !17
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0232424.i, i64 %i.ky
  store <4 x float> %i.kv, ptr %i.la, align 16, !tbaa !17
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.0234423.i, i64 %i.ky
  store <4 x float> %i.kx, ptr %i.lb, align 16, !tbaa !17
  %i.lc = getelementptr inbounds nuw i8, ptr %.0245412.i, i64 16
  %indvars.iv.next433.i = add nuw nsw i64 %indvars.iv432.i, 1 ; 2 uses
  %exitcond436.not.i = icmp eq i64 %indvars.iv.next433.i, %wide.trip.count.i
  br i1 %exitcond436.not.i, label %.loopexit.i, label %.lr.ph413.i, !llvm.loop !159

bb.al:                                            ; preds = %bb.aj
  %i.ld = add nsw i32 %i.dw, -1
  %i.le = sext i32 %i.ld to i64
  %i.lf = mul i64 %i.by, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lf
  %i.lh = sext i32 %i.dw to i64
  %i.li = mul i64 %i.by, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.li
  %i.lk = add nsw i32 %i.dw, 1
  %i.ll = sext i32 %i.lk to i64
  %i.lm = mul i64 %i.by, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lm
  %i.lo = add nsw i32 %i.dw, 2
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul i64 %i.by, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.lq
  br i1 %i.bu, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.al ] ; 3 uses
  %.0246409.i = phi ptr [ %i.oy, %.lr.ph.i ], [ %i.bl, %bb.al ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !25
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = sext i32 %i.lu to i64                   ; 4 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.lv ; 4 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lv ; 4 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lv ; 4 uses
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.lv ; 4 uses
  %i.ma = load float, ptr %.0246409.i, align 4, !tbaa !70
  %i.mb = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0246409.i, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !70
  %i.mf = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0246409.i, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !70
  %i.mj = insertelement <4 x float> poison, float %i.mi, i64 0
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0246409.i, i64 12
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !70
  %i.mn = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mp = getelementptr inbounds i8, ptr %i.lw, i64 -16
  %i.mq = load <4 x float>, ptr %i.mp, align 16, !tbaa !17
  %i.mr = load <4 x float>, ptr %i.lw, align 16, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mt = load <4 x float>, ptr %i.ms, align 16, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mv = load <4 x float>, ptr %i.mu, align 16, !tbaa !17
  %i.mw = getelementptr inbounds i8, ptr %i.lx, i64 -16
  %i.mx = load <4 x float>, ptr %i.mw, align 16, !tbaa !17
  %i.my = load <4 x float>, ptr %i.lx, align 16, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.na = load <4 x float>, ptr %i.mz, align 16, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.nc = load <4 x float>, ptr %i.nb, align 16, !tbaa !17
  %i.nd = getelementptr inbounds i8, ptr %i.ly, i64 -16
  %i.ne = load <4 x float>, ptr %i.nd, align 16, !tbaa !17
  %i.nf = load <4 x float>, ptr %i.ly, align 16, !tbaa !17
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.nh = load <4 x float>, ptr %i.ng, align 16, !tbaa !17
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.nj = load <4 x float>, ptr %i.ni, align 16, !tbaa !17
  %i.nk = getelementptr inbounds i8, ptr %i.lz, i64 -16
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !17
  %i.nm = load <4 x float>, ptr %i.lz, align 16, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !17
  %i.nr = fmul fast <4 x float> %i.mq, %i.mc
  %i.ns = fmul fast <4 x float> %i.mx, %i.mc
  %i.nt = fmul fast <4 x float> %i.ne, %i.mc
  %i.nu = fmul fast <4 x float> %i.nl, %i.mc
  %i.nv = fmul fast <4 x float> %i.mr, %i.mg
  %i.nw = fadd fast <4 x float> %i.nr, %i.nv
  %i.nx = fmul fast <4 x float> %i.my, %i.mg
  %i.ny = fadd fast <4 x float> %i.ns, %i.nx
  %i.nz = fmul fast <4 x float> %i.nf, %i.mg
  %i.oa = fadd fast <4 x float> %i.nt, %i.nz
  %i.ob = fmul fast <4 x float> %i.nm, %i.mg
  %i.oc = fadd fast <4 x float> %i.nu, %i.ob
  %i.od = fmul fast <4 x float> %i.mt, %i.mk
  %i.oe = fadd fast <4 x float> %i.od, %i.nw
  %i.of = fmul fast <4 x float> %i.na, %i.mk
  %i.og = fadd fast <4 x float> %i.of, %i.ny
  %i.oh = fmul fast <4 x float> %i.nh, %i.mk
  %i.oi = fadd fast <4 x float> %i.oh, %i.oa
  %i.oj = fmul fast <4 x float> %i.no, %i.mk
  %i.ok = fadd fast <4 x float> %i.oj, %i.oc
  %i.ol = fmul fast <4 x float> %i.mv, %i.mo
  %i.om = fadd fast <4 x float> %i.ol, %i.oe
  %i.on = fmul fast <4 x float> %i.nc, %i.mo
  %i.oo = fadd fast <4 x float> %i.on, %i.og
  %i.op = fmul fast <4 x float> %i.nj, %i.mo
  %i.oq = fadd fast <4 x float> %i.op, %i.oi
  %i.or = fmul fast <4 x float> %i.nq, %i.mo
  %i.os = fadd fast <4 x float> %i.or, %i.ok
  %i.ot = shl nuw nsw i64 %indvars.iv.i, 2        ; 4 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.0230425.i, i64 %i.ot
  store <4 x float> %i.om, ptr %i.ou, align 16, !tbaa !17
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.0232424.i, i64 %i.ot
  store <4 x float> %i.oo, ptr %i.ov, align 16, !tbaa !17
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.0234423.i, i64 %i.ot
  store <4 x float> %i.oq, ptr %i.ow, align 16, !tbaa !17
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.0236422.i, i64 %i.ot
  store <4 x float> %i.os, ptr %i.ox, align 16, !tbaa !17
  %i.oy = getelementptr inbounds nuw i8, ptr %.0246409.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !160

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph413.i, %.lr.ph416.i, %.lr.ph419.i, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1237.i = phi ptr [ %.0236422.i, %bb.ae ], [ %.0230425.i, %bb.ag ], [ %.0232424.i, %bb.ai ], [ %.0234423.i, %bb.ak ], [ %.0236422.i, %bb.al ], [ %.0234423.i, %.lr.ph413.i ], [ %.0230425.i, %.lr.ph419.i ], [ %.0232424.i, %.lr.ph416.i ], [ %.0236422.i, %.lr.ph.i ] ; 5 uses
  %.1235.i = phi ptr [ %.0234423.i, %bb.ae ], [ %.0236422.i, %bb.ag ], [ %.0230425.i, %bb.ai ], [ %.0232424.i, %bb.ak ], [ %.0234423.i, %bb.al ], [ %.0232424.i, %.lr.ph413.i ], [ %.0236422.i, %.lr.ph419.i ], [ %.0230425.i, %.lr.ph416.i ], [ %.0234423.i, %.lr.ph.i ] ; 5 uses
  %.1233.i = phi ptr [ %.0232424.i, %bb.ae ], [ %.0234423.i, %bb.ag ], [ %.0236422.i, %bb.ai ], [ %.0230425.i, %bb.ak ], [ %.0232424.i, %bb.al ], [ %.0230425.i, %.lr.ph413.i ], [ %.0234423.i, %.lr.ph419.i ], [ %.0236422.i, %.lr.ph416.i ], [ %.0232424.i, %.lr.ph.i ] ; 5 uses
  %.1231.i = phi ptr [ %.0230425.i, %bb.ae ], [ %.0232424.i, %bb.ag ], [ %.0234423.i, %bb.ai ], [ %.0236422.i, %bb.ak ], [ %.0230425.i, %bb.al ], [ %.0236422.i, %.lr.ph413.i ], [ %.0232424.i, %.lr.ph419.i ], [ %.0234423.i, %.lr.ph416.i ], [ %.0230425.i, %.lr.ph.i ] ; 5 uses
  %.1237.i271 = ptrtoaddr ptr %.1237.i to i64
  %.1235.i273 = ptrtoaddr ptr %.1235.i to i64
  %.1233.i276 = ptrtoaddr ptr %.1233.i to i64
  %.1231.i279 = ptrtoaddr ptr %.1231.i to i64
  %i.oz = mul i64 %i.bx, %indvars.iv447.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.oz ; 3 uses
  %i.pb = load <4 x float>, ptr %.0426.i, align 4, !tbaa !70 ; 5 uses
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pd = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.pe = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.pf = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.bu, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.pg = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.pg, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ph = icmp slt i32 %.0.lcssa.i.i, %i.bv
  br i1 %i.ph, label %.lr.ph45.preheader.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i

.lr.ph45.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.pi = zext i32 %.0.lcssa.i.i to i64           ; 5 uses
  %i.pj = sub nsw i64 %i.bw, %i.pi                ; 3 uses
  %min.iters.check283 = icmp ult i64 %i.pj, 4
  br i1 %min.iters.check283, label %.lr.ph45.i.i.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %.lr.ph45.preheader.i.i
  %i.pk = sub i64 %.1237.i271, %i.du
  %diff.check272 = icmp ugt i64 %i.pk, -16
  %i.pl = sub i64 %.1235.i273, %i.du
  %diff.check274 = icmp ugt i64 %i.pl, -16
  %conflict.rdx275 = or i1 %diff.check272, %diff.check274
  %i.pm = sub i64 %.1233.i276, %i.du
  %diff.check277 = icmp ugt i64 %i.pm, -16
  %conflict.rdx278 = or i1 %conflict.rdx275, %diff.check277
  %i.pn = sub i64 %.1231.i279, %i.du
  %diff.check280 = icmp ugt i64 %i.pn, -16
  %conflict.rdx281 = or i1 %conflict.rdx278, %diff.check280
  br i1 %conflict.rdx281, label %.lr.ph45.i.i.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck270
  %n.vec285 = and i64 %i.pj, -4                   ; 3 uses
  %i.po = add nsw i64 %n.vec285, %i.pi
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph284
  %index295 = phi i64 [ 0, %vector.ph284 ], [ %index.next300, %vector.body294 ] ; 2 uses
  %i.pp = add nuw i64 %index295, %i.pi            ; 5 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.1231.i, i64 %i.pp
  %wide.load296 = load <4 x float>, ptr %i.pq, align 4, !tbaa !70
  %i.pr = fmul fast <4 x float> %wide.load296, %i.pc
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.1233.i, i64 %i.pp
  %wide.load297 = load <4 x float>, ptr %i.ps, align 4, !tbaa !70
  %i.pt = fmul fast <4 x float> %wide.load297, %i.pd
  %i.pu = fadd fast <4 x float> %i.pr, %i.pt
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.1235.i, i64 %i.pp
  %wide.load298 = load <4 x float>, ptr %i.pv, align 4, !tbaa !70
  %i.pw = fmul fast <4 x float> %wide.load298, %i.pe
  %i.px = fadd fast <4 x float> %i.pu, %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.1237.i, i64 %i.pp
  %wide.load299 = load <4 x float>, ptr %i.py, align 4, !tbaa !70
  %i.pz = fmul fast <4 x float> %wide.load299, %i.pf
  %i.qa = fadd fast <4 x float> %i.px, %i.pz
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pp
  store <4 x float> %i.qa, ptr %i.qb, align 4, !tbaa !70
  %index.next300 = add nuw i64 %index295, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next300, %n.vec285
  br i1 %i.qc, label %middle.block301, label %vector.body294, !llvm.loop !161

middle.block301:                                  ; preds = %vector.body294
  %cmp.n302 = icmp eq i64 %i.pj, %n.vec285
  br i1 %cmp.n302, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph45.i.i.preheader

.lr.ph45.i.i.preheader:                           ; preds = %vector.memcheck270, %.lr.ph45.preheader.i.i, %middle.block301
  %indvars.iv47.i.i.ph = phi i64 [ %i.pi, %vector.memcheck270 ], [ %i.pi, %.lr.ph45.preheader.i.i ], [ %i.po, %middle.block301 ]
  br label %.lr.ph45.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.1231.i, i64 %indvars.iv.i.i
  %i.qe = load <4 x float>, ptr %i.qd, align 1, !tbaa !17
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.1233.i, i64 %indvars.iv.i.i
  %i.qg = load <4 x float>, ptr %i.qf, align 1, !tbaa !17
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.1235.i, i64 %indvars.iv.i.i
  %i.qi = load <4 x float>, ptr %i.qh, align 1, !tbaa !17
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.1237.i, i64 %indvars.iv.i.i
  %i.qk = load <4 x float>, ptr %i.qj, align 1, !tbaa !17
  %i.ql = fmul fast <4 x float> %i.qe, %i.pc
  %i.qm = fmul fast <4 x float> %i.qg, %i.pd
  %i.qn = fadd fast <4 x float> %i.ql, %i.qm
  %i.qo = fmul fast <4 x float> %i.qi, %i.pe
  %i.qp = fadd fast <4 x float> %i.qo, %i.qn
  %i.qq = fmul fast <4 x float> %i.qk, %i.pf
  %i.qr = fadd fast <4 x float> %i.qq, %i.qp
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv.i.i
  store <4 x float> %i.qr, ptr %i.qs, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.qt = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.qu = icmp samesign ult i64 %i.qt, %i.bw
  br i1 %i.qu, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !162

.lr.ph45.i.i:                                     ; preds = %.lr.ph45.i.i.preheader, %.lr.ph45.i.i
  %indvars.iv47.i.i = phi i64 [ %indvars.iv.next48.i.i, %.lr.ph45.i.i ], [ %indvars.iv47.i.i.ph, %.lr.ph45.i.i.preheader ] ; 6 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.1231.i, i64 %indvars.iv47.i.i
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !70
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.1233.i, i64 %indvars.iv47.i.i
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !70
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.1235.i, i64 %indvars.iv47.i.i
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !70
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.1237.i, i64 %indvars.iv47.i.i
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !70
  %i.rd = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.re = insertelement <4 x float> %i.rd, float %i.qy, i64 1
  %i.rf = insertelement <4 x float> %i.re, float %i.ra, i64 2
  %i.rg = insertelement <4 x float> %i.rf, float %i.rc, i64 3
  %i.rh = fmul fast <4 x float> %i.rg, %i.pb
  %i.ri = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.rh)
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv47.i.i
  store float %i.ri, ptr %i.rj, align 4, !tbaa !70
  %indvars.iv.next48.i.i = add nuw nsw i64 %indvars.iv47.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next48.i.i, %i.bw
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph45.i.i, !llvm.loop !163

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i: ; preds = %.lr.ph45.i.i, %middle.block301, %.preheader.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.0426.i, i64 16
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count450.i
  br i1 %exitcond451.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !164

bb.am:                                            ; preds = %bb.ad
  %i.rl = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %i.rm = icmp eq i32 %i.rl, 1
  br i1 %i.rm, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit254.i

bb.an:                                            ; preds = %bb.am
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i277.i = icmp eq ptr %i.rn, null
  %i.ro = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i277.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !9
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8
  invoke void %i.rr(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef %i.ro)
          to label %_ZN4ncnn3MatD2Ev.exit254.i unwind label %bb.ar, !inline_history !46

bb.ap:                                            ; preds = %bb.an
  %.not.i291.i = icmp eq ptr %i.ro, null
  br i1 %.not.i291.i, label %_ZN4ncnn3MatD2Ev.exit254.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.ro) #6
  br label %_ZN4ncnn3MatD2Ev.exit254.i

bb.ar:                                            ; preds = %bb.ao
  %i.rs = landingpad { ptr, i32 }
          catch ptr null
  %i.rt = extractvalue { ptr, i32 } %i.rs, 0
  call void @__clang_call_terminate(ptr %i.rt) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit254.i:                       ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ad, %bb.ac
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.dr, %bb.am ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.aq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.ru = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i280.i = icmp eq ptr %i.ru, null
  br i1 %.not.i280.i, label %_ZN4ncnn3MatD2Ev.exit253.i, label %bb.as

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit254.i
  %i.rv = atomicrmw add ptr %i.ru, i32 -1 acq_rel, align 4
  %i.rw = icmp eq i32 %i.rv, 1
  br i1 %i.rw, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit253.i

bb.at:                                            ; preds = %bb.as
  %i.rx = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i281.i = icmp eq ptr %i.rx, null
  %i.ry = load ptr, ptr %15, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i281.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rz = load ptr, ptr %i.rx, align 8, !tbaa !9
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8
  invoke void %i.sb(ptr noundef nonnull align 8 dereferenceable(8) %i.rx, ptr noundef %i.ry)
          to label %_ZN4ncnn3MatD2Ev.exit253.i unwind label %bb.ax, !inline_history !46

bb.av:                                            ; preds = %bb.at
  %.not.i289.i = icmp eq ptr %i.ry, null
  br i1 %.not.i289.i, label %_ZN4ncnn3MatD2Ev.exit253.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.ry) #6
  br label %_ZN4ncnn3MatD2Ev.exit253.i

bb.ax:                                            ; preds = %bb.au
  %i.sc = landingpad { ptr, i32 }
          catch ptr null
  %i.sd = extractvalue { ptr, i32 } %i.sc, 0
  call void @__clang_call_terminate(ptr %i.sd) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit253.i:                       ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %_ZN4ncnn3MatD2Ev.exit254.i, %bb.ab
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dp, %bb.ab ], [ %.pn.pn.pn.i, %bb.as ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit254.i ], [ %.pn.pn.pn.i, %bb.au ], [ %.pn.pn.pn.i, %bb.av ], [ %.pn.pn.pn.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.se = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i284.i = icmp eq ptr %i.se, null
  br i1 %.not.i284.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit253.i
  %i.sf = atomicrmw add ptr %i.se, i32 -1 acq_rel, align 4
  %i.sg = icmp eq i32 %i.sf, 1
  br i1 %i.sg, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.sh = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i285.i = icmp eq ptr %i.sh, null
  %i.si = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i285.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sj = load ptr, ptr %i.sh, align 8, !tbaa !9
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8
  invoke void %i.sl(ptr noundef nonnull align 8 dereferenceable(8) %i.sh, ptr noundef %i.si)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bd, !inline_history !46

bb.bb:                                            ; preds = %bb.az
  %.not.i288.i = icmp eq ptr %i.si, null
  br i1 %.not.i288.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.si) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.sm = landingpad { ptr, i32 }
          catch ptr null
  %i.sn = extractvalue { ptr, i32 } %i.sm, 0
  call void @__clang_call_terminate(ptr %i.sn) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay, %_ZN4ncnn3MatD2Ev.exit253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit256.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.be

bb.be:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.so = phi i32 [ %.pr, %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bj, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.sp = icmp eq i32 %i.so, 1
  br i1 %i.sp, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.sq = load ptr, ptr %6, align 8, !tbaa !72    ; 5 uses
  %i.sr = load ptr, ptr %7, align 8, !tbaa !71    ; 6 uses
  %i.ss = load ptr, ptr %8, align 8, !tbaa !72
  %i.st = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %.noexc50 unwind label %bb.di

.noexc50:                                         ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.ce

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc50
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.cf

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.cg

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.su = icmp sgt i32 %i.ba, 0
end_hunk_1
begin_hunk_2_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7:bb.a
  %i.xd = fmul fast <4 x float> %i.xc, %i.ww
  %i.xe = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.xd)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv357.i
  store float %i.xe, ptr %i.xf, align 4, !tbaa !70
  %i.xg = getelementptr inbounds nuw i8, ptr %.0262335.i, i64 16
  %indvars.iv.next358.i = add nuw nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %i.tb
  br i1 %exitcond361.not.i, label %.loopexit.i33, label %.lr.ph336.i, !llvm.loop !166

bb.cm:                                            ; preds = %bb.ck
  %i.xh = add nsw i32 %.0257341.i, 3
  %i.xi = icmp eq i32 %i.vc, %i.xh
  br i1 %i.xi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.xj = sext i32 %i.vc to i64
  %i.xk = mul i64 %i.td, %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.xk
  %i.xm = add nsw i32 %i.vc, 1
  %i.xn = sext i32 %i.xm to i64
  %i.xo = mul i64 %i.td, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.xo
  %i.xq = add nsw i32 %i.vc, 2
  %i.xr = sext i32 %i.xq to i64
  %i.xs = mul i64 %i.td, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.xs
  br i1 %i.sz, label %.lr.ph333.i, label %.loopexit.i33

.lr.ph333.i:                                      ; preds = %bb.cn, %.lr.ph333.i
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i, %.lr.ph333.i ], [ 0, %bb.cn ] ; 5 uses
  %.0265332.i = phi ptr [ %i.yq, %.lr.ph333.i ], [ %i.sq, %bb.cn ] ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv352.i
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !25
  %i.xw = sext i32 %i.xv to i64                   ; 3 uses
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xw
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.xw
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.xw
  %i.ya = getelementptr inbounds i8, ptr %i.xx, i64 -4
  %i.yb = load <4 x float>, ptr %.0265332.i, align 4, !tbaa !70 ; 3 uses
  %i.yc = load <4 x float>, ptr %i.ya, align 4, !tbaa !70
  %i.yd = fmul fast <4 x float> %i.yc, %i.yb
  %i.ye = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yd)
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.ye, ptr %i.yf, align 4, !tbaa !70
  %i.yg = getelementptr inbounds i8, ptr %i.xy, i64 -4
  %i.yh = load <4 x float>, ptr %i.yg, align 4, !tbaa !70
  %i.yi = fmul fast <4 x float> %i.yh, %i.yb
  %i.yj = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yi)
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.yj, ptr %i.yk, align 4, !tbaa !70
  %i.yl = getelementptr inbounds i8, ptr %i.xz, i64 -4
  %i.ym = load <4 x float>, ptr %i.yl, align 4, !tbaa !70
  %i.yn = fmul fast <4 x float> %i.ym, %i.yb
  %i.yo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.yn)
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.yo, ptr %i.yp, align 4, !tbaa !70
  %i.yq = getelementptr inbounds nuw i8, ptr %.0265332.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.tb
  br i1 %exitcond356.not.i, label %.loopexit.i33, label %.lr.ph333.i, !llvm.loop !167

bb.co:                                            ; preds = %bb.cm
  %i.yr = add nsw i32 %i.vc, -1
  %i.ys = sext i32 %i.yr to i64
  %i.yt = mul i64 %i.td, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.yt
  %i.yv = sext i32 %i.vc to i64
  %i.yw = mul i64 %i.td, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.yw
  %i.yy = add nsw i32 %i.vc, 1
  %i.yz = sext i32 %i.yy to i64
  %i.za = mul i64 %i.td, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.za
  %i.zc = add nsw i32 %i.vc, 2
  %i.zd = sext i32 %i.zc to i64
  %i.ze = mul i64 %i.td, %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ze
  br i1 %i.sz, label %.lr.ph.i46, label %.loopexit.i33

.lr.ph.i46:                                       ; preds = %bb.co, %.lr.ph.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i48, %.lr.ph.i46 ], [ 0, %bb.co ] ; 6 uses
  %.0264329.i = phi ptr [ %i.aai, %.lr.ph.i46 ], [ %i.sq, %bb.co ] ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv.i47
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !25
  %i.zi = sext i32 %i.zh to i64                   ; 4 uses
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.zi
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.yx, i64 %i.zi
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zb, i64 %i.zi
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zi
  %i.zn = getelementptr inbounds i8, ptr %i.zj, i64 -4
  %i.zo = load <4 x float>, ptr %.0264329.i, align 4, !tbaa !70 ; 4 uses
  %i.zp = load <4 x float>, ptr %i.zn, align 4, !tbaa !70
  %i.zq = fmul fast <4 x float> %i.zp, %i.zo
  %i.zr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zq)
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i47
  store float %i.zr, ptr %i.zs, align 4, !tbaa !70
  %i.zt = getelementptr inbounds i8, ptr %i.zk, i64 -4
  %i.zu = load <4 x float>, ptr %i.zt, align 4, !tbaa !70
  %i.zv = fmul fast <4 x float> %i.zu, %i.zo
  %i.zw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.zv)
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i47
  store float %i.zw, ptr %i.zx, align 4, !tbaa !70
  %i.zy = getelementptr inbounds i8, ptr %i.zl, i64 -4
  %i.zz = load <4 x float>, ptr %i.zy, align 4, !tbaa !70
  %i.aaa = fmul fast <4 x float> %i.zz, %i.zo
  %i.aab = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aaa)
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i47
  store float %i.aab, ptr %i.aac, align 4, !tbaa !70
  %i.aad = getelementptr inbounds i8, ptr %i.zm, i64 -4
  %i.aae = load <4 x float>, ptr %i.aad, align 4, !tbaa !70
  %i.aaf = fmul fast <4 x float> %i.aae, %i.zo
  %i.aag = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aaf)
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i47
  store float %i.aag, ptr %i.aah, align 4, !tbaa !70
  %i.aai = getelementptr inbounds nuw i8, ptr %.0264329.i, i64 16
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i49 = icmp eq i64 %indvars.iv.next.i48, %i.tb
  br i1 %exitcond.not.i49, label %.loopexit.i33, label %.lr.ph.i46, !llvm.loop !168

.loopexit.i33.loopexit.unr-lcssa:                 ; preds = %.lr.ph339.i
  br i1 %lcmp.mod.not, label %.loopexit.i33, label %.lr.ph339.i.epil.preheader

.lr.ph339.i.epil.preheader:                       ; preds = %.loopexit.i33.loopexit.unr-lcssa, %.lr.ph339.i.preheader
  %indvars.iv362.i.epil.init = phi i64 [ 0, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.1, %.loopexit.i33.loopexit.unr-lcssa ] ; 2 uses
  %.0260338.i.epil.init = phi ptr [ %i.sq, %.lr.ph339.i.preheader ], [ %i.wf, %.loopexit.i33.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod310)
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv362.i.epil.init
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !25
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.aal
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -4
  %i.aao = load <4 x float>, ptr %.0260338.i.epil.init, align 4, !tbaa !70
  %i.aap = load <4 x float>, ptr %i.aan, align 4, !tbaa !70
  %i.aaq = fmul fast <4 x float> %i.aap, %i.aao
  %i.aar = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aaq)
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.epil.init
  store float %i.aar, ptr %i.aas, align 4, !tbaa !70
  br label %.loopexit.i33

.loopexit.i33:                                    ; preds = %.lr.ph.i46, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.epil.preheader, %.loopexit.i33.loopexit.unr-lcssa, %bb.co, %bb.cn, %bb.cl, %bb.cj, %bb.ch
  %.1256.i = phi ptr [ %.0255342.i, %bb.ch ], [ %.0249345.i, %bb.cj ], [ %.0251344.i, %bb.cl ], [ %.0253343.i, %bb.cn ], [ %.0255342.i, %bb.co ], [ %.0253343.i, %.lr.ph333.i ], [ %.0249345.i, %.lr.ph339.i.epil.preheader ], [ %.0251344.i, %.lr.ph336.i ], [ %.0249345.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0255342.i, %.lr.ph.i46 ] ; 5 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.ch ], [ %.0255342.i, %bb.cj ], [ %.0249345.i, %bb.cl ], [ %.0251344.i, %bb.cn ], [ %.0253343.i, %bb.co ], [ %.0251344.i, %.lr.ph333.i ], [ %.0255342.i, %.lr.ph339.i.epil.preheader ], [ %.0249345.i, %.lr.ph336.i ], [ %.0255342.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0253343.i, %.lr.ph.i46 ] ; 5 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.ch ], [ %.0253343.i, %bb.cj ], [ %.0255342.i, %bb.cl ], [ %.0249345.i, %bb.cn ], [ %.0251344.i, %bb.co ], [ %.0249345.i, %.lr.ph333.i ], [ %.0253343.i, %.lr.ph339.i.epil.preheader ], [ %.0255342.i, %.lr.ph336.i ], [ %.0253343.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0251344.i, %.lr.ph.i46 ] ; 5 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.ch ], [ %.0251344.i, %bb.cj ], [ %.0253343.i, %bb.cl ], [ %.0255342.i, %bb.cn ], [ %.0249345.i, %bb.co ], [ %.0255342.i, %.lr.ph333.i ], [ %.0251344.i, %.lr.ph339.i.epil.preheader ], [ %.0253343.i, %.lr.ph336.i ], [ %.0251344.i, %.loopexit.i33.loopexit.unr-lcssa ], [ %.0249345.i, %.lr.ph.i46 ] ; 5 uses
  %.1256.i252 = ptrtoaddr ptr %.1256.i to i64
  %.1254.i253 = ptrtoaddr ptr %.1254.i to i64
  %.1252.i255 = ptrtoaddr ptr %.1252.i to i64
  %.1250.i258 = ptrtoaddr ptr %.1250.i to i64
  %i.aat = mul i64 %i.tc, %indvars.iv367.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.aat ; 3 uses
  %i.aav = load <4 x float>, ptr %.0346.i, align 4, !tbaa !70 ; 5 uses
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aax = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.aay = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.aaz = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.ta, label %.lr.ph.i.i42, label %.preheader.i.i34

.preheader.loopexit.i.i45:                        ; preds = %.lr.ph.i.i42
  %i.aba = trunc nuw nsw i64 %indvars.iv.next.i.i44 to i32
  br label %.preheader.i.i34

.preheader.i.i34:                                 ; preds = %.preheader.loopexit.i.i45, %.loopexit.i33
  %.0.lcssa.i.i35 = phi i32 [ 0, %.loopexit.i33 ], [ %i.aba, %.preheader.loopexit.i.i45 ] ; 2 uses
  %i.abb = icmp slt i32 %.0.lcssa.i.i35, %i.az
  br i1 %i.abb, label %.lr.ph45.preheader.i.i37, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36

.lr.ph45.preheader.i.i37:                         ; preds = %.preheader.i.i34
  %i.abc = zext i32 %.0.lcssa.i.i35 to i64        ; 5 uses
  %i.abd = sub nsw i64 %i.tb, %i.abc              ; 3 uses
  %min.iters.check = icmp ult i64 %i.abd, 4
  br i1 %min.iters.check, label %.lr.ph45.i.i38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph45.preheader.i.i37
  %i.abe = sub i64 %.1256.i252, %i.va
  %diff.check = icmp ugt i64 %i.abe, -16
  %i.abf = sub i64 %.1254.i253, %i.va
  %diff.check254 = icmp ugt i64 %i.abf, -16
  %conflict.rdx = or i1 %diff.check, %diff.check254
  %i.abg = sub i64 %.1252.i255, %i.va
  %diff.check256 = icmp ugt i64 %i.abg, -16
  %conflict.rdx257 = or i1 %conflict.rdx, %diff.check256
  %i.abh = sub i64 %.1250.i258, %i.va
  %diff.check259 = icmp ugt i64 %i.abh, -16
  %conflict.rdx260 = or i1 %conflict.rdx257, %diff.check259
  br i1 %conflict.rdx260, label %.lr.ph45.i.i38.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abd, -4                     ; 3 uses
  %i.abi = add nsw i64 %n.vec, %i.abc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abj = add nuw i64 %index, %i.abc             ; 5 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.abj
  %wide.load = load <4 x float>, ptr %i.abk, align 4, !tbaa !70
  %i.abl = fmul fast <4 x float> %wide.load, %i.aaw
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.abj
  %wide.load267 = load <4 x float>, ptr %i.abm, align 4, !tbaa !70
  %i.abn = fmul fast <4 x float> %wide.load267, %i.aax
  %i.abo = fadd fast <4 x float> %i.abl, %i.abn
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.abj
  %wide.load268 = load <4 x float>, ptr %i.abp, align 4, !tbaa !70
  %i.abq = fmul fast <4 x float> %wide.load268, %i.aay
  %i.abr = fadd fast <4 x float> %i.abo, %i.abq
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.abj
  %wide.load269 = load <4 x float>, ptr %i.abs, align 4, !tbaa !70
  %i.abt = fmul fast <4 x float> %wide.load269, %i.aaz
  %i.abu = fadd fast <4 x float> %i.abr, %i.abt
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.abj
  store <4 x float> %i.abu, ptr %i.abv, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abw = icmp eq i64 %index.next, %n.vec
  br i1 %i.abw, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abd, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36, label %.lr.ph45.i.i38.preheader

.lr.ph45.i.i38.preheader:                         ; preds = %vector.memcheck, %.lr.ph45.preheader.i.i37, %middle.block
  %indvars.iv47.i.i39.ph = phi i64 [ %i.abc, %vector.memcheck ], [ %i.abc, %.lr.ph45.preheader.i.i37 ], [ %i.abi, %middle.block ]
  br label %.lr.ph45.i.i38

.lr.ph.i.i42:                                     ; preds = %.loopexit.i33, %.lr.ph.i.i42
  %indvars.iv.i.i43 = phi i64 [ %indvars.iv.next.i.i44, %.lr.ph.i.i42 ], [ 0, %.loopexit.i33 ] ; 6 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i43
  %i.aby = load <4 x float>, ptr %i.abx, align 1, !tbaa !17
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i43
  %i.aca = load <4 x float>, ptr %i.abz, align 1, !tbaa !17
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i43
  %i.acc = load <4 x float>, ptr %i.acb, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i43
  %i.ace = load <4 x float>, ptr %i.acd, align 1, !tbaa !17
  %i.acf = fmul fast <4 x float> %i.aby, %i.aaw
  %i.acg = fmul fast <4 x float> %i.aca, %i.aax
  %i.ach = fadd fast <4 x float> %i.acf, %i.acg
  %i.aci = fmul fast <4 x float> %i.acc, %i.aay
  %i.acj = fadd fast <4 x float> %i.aci, %i.ach
  %i.ack = fmul fast <4 x float> %i.ace, %i.aaz
  %i.acl = fadd fast <4 x float> %i.ack, %i.acj
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv.i.i43
  store <4 x float> %i.acl, ptr %i.acm, align 1, !tbaa !17
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i43, 4 ; 3 uses
  %i.acn = or disjoint i64 %indvars.iv.next.i.i44, 3
  %i.aco = icmp samesign ult i64 %i.acn, %i.tb
  br i1 %i.aco, label %.lr.ph.i.i42, label %.preheader.loopexit.i.i45, !llvm.loop !162

.lr.ph45.i.i38:                                   ; preds = %.lr.ph45.i.i38.preheader, %.lr.ph45.i.i38
  %indvars.iv47.i.i39 = phi i64 [ %indvars.iv.next48.i.i40, %.lr.ph45.i.i38 ], [ %indvars.iv47.i.i39.ph, %.lr.ph45.i.i38.preheader ] ; 6 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv47.i.i39
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !70
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv47.i.i39
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !70
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv47.i.i39
  %i.acu = load float, ptr %i.act, align 4, !tbaa !70
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv47.i.i39
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !70
  %i.acx = insertelement <4 x float> poison, float %i.acq, i64 0
  %i.acy = insertelement <4 x float> %i.acx, float %i.acs, i64 1
  %i.acz = insertelement <4 x float> %i.acy, float %i.acu, i64 2
  %i.ada = insertelement <4 x float> %i.acz, float %i.acw, i64 3
  %i.adb = fmul fast <4 x float> %i.ada, %i.aav
  %i.adc = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.adb)
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv47.i.i39
  store float %i.adc, ptr %i.add, align 4, !tbaa !70
  %indvars.iv.next48.i.i40 = add nuw nsw i64 %indvars.iv47.i.i39, 1 ; 2 uses
  %exitcond.not.i.i41 = icmp eq i64 %indvars.iv.next48.i.i40, %i.tb
  br i1 %exitcond.not.i.i41, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36, label %.lr.ph45.i.i38, !llvm.loop !170

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i36: ; preds = %.lr.ph45.i.i38, %middle.block, %.preheader.i.i34
  %i.ade = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i32, label %bb.ch, !llvm.loop !171

bb.cp:                                            ; preds = %bb.cg
  %i.adf = atomicrmw add ptr %i.uy, i32 -1 acq_rel, align 4
  %i.adg = icmp eq i32 %i.adf, 1
  br i1 %i.adg, label %bb.cq, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cq:                                            ; preds = %bb.cp
  %i.adh = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.adh, null
  %i.adi = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i295.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.adj = load ptr, ptr %i.adh, align 8, !tbaa !9
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 24
  %i.adl = load ptr, ptr %i.adk, align 8
  invoke void %i.adl(ptr noundef nonnull align 8 dereferenceable(8) %i.adh, ptr noundef %i.adi)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.cu, !inline_history !46

bb.cs:                                            ; preds = %bb.cq
  %.not.i309.i = icmp eq ptr %i.adi, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef nonnull %i.adi) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cu:                                            ; preds = %bb.cr
  %i.adm = landingpad { ptr, i32 }
          catch ptr null
  %i.adn = extractvalue { ptr, i32 } %i.adm, 0
  call void @__clang_call_terminate(ptr %i.adn) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cg, %bb.cf
  %.pn.pn.i = phi { ptr, i32 } [ %i.uw, %bb.cf ], [ %i.ux, %bb.cp ], [ %i.ux, %bb.cg ], [ %i.ux, %bb.cr ], [ %i.ux, %bb.cs ], [ %i.ux, %bb.ct ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.ado = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.ado, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.adp = atomicrmw add ptr %i.ado, i32 -1 acq_rel, align 4
  %i.adq = icmp eq i32 %i.adp, 1
  br i1 %i.adq, label %bb.cw, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.cw:                                            ; preds = %bb.cv
  %i.adr = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.adr, null
  %i.ads = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i299.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.adt = load ptr, ptr %i.adr, align 8, !tbaa !9
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 24
  %i.adv = load ptr, ptr %i.adu, align 8
  invoke void %i.adv(ptr noundef nonnull align 8 dereferenceable(8) %i.adr, ptr noundef %i.ads)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.da, !inline_history !46

bb.cy:                                            ; preds = %bb.cw
  %.not.i307.i = icmp eq ptr %i.ads, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.ads) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.da:                                            ; preds = %bb.cx
  %i.adw = landingpad { ptr, i32 }
          catch ptr null
  %i.adx = extractvalue { ptr, i32 } %i.adw, 0
  call void @__clang_call_terminate(ptr %i.adx) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.ce
  %.pn.pn.pn.i30 = phi { ptr, i32 } [ %i.uv, %bb.ce ], [ %.pn.pn.i, %bb.cv ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.cx ], [ %.pn.pn.i, %bb.cy ], [ %.pn.pn.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.ady = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.ady, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i31, label %bb.db

bb.db:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.adz = atomicrmw add ptr %i.ady, i32 -1 acq_rel, align 4
  %i.aea = icmp eq i32 %i.adz, 1
  br i1 %i.aea, label %bb.dc, label %_ZN4ncnn3MatD2Ev.exit.i31

bb.dc:                                            ; preds = %bb.db
  %i.aeb = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.aeb, null
  %i.aec = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i303.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aed = load ptr, ptr %i.aeb, align 8, !tbaa !9
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aef = load ptr, ptr %i.aee, align 8
  invoke void %i.aef(ptr noundef nonnull align 8 dereferenceable(8) %i.aeb, ptr noundef %i.aec)
          to label %_ZN4ncnn3MatD2Ev.exit.i31 unwind label %bb.dg, !inline_history !46

bb.de:                                            ; preds = %bb.dc
  %.not.i306.i = icmp eq ptr %i.aec, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i31, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.aec) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i31

bb.dg:                                            ; preds = %bb.dd
  %i.aeg = landingpad { ptr, i32 }
          catch ptr null
  %i.aeh = extractvalue { ptr, i32 } %i.aeg, 0
  call void @__clang_call_terminate(ptr %i.aeh) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i31:                        ; preds = %bb.df, %bb.de, %bb.dd, %bb.db, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.by, %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.be
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aei = load i32, ptr %i.b, align 4, !tbaa !25
  %i.aej = sext i32 %i.aei to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aej
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.di:                                            ; preds = %bb.bf, %bb.c
  %i.aek = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.di, %_ZN4ncnn3MatD2Ev.exit.i31, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.aek, %bb.di ], [ %.pn.pn.pn.i30, %_ZN4ncnn3MatD2Ev.exit.i31 ]
  %i.ael = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ael) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.9:bb.a
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next91.1, %wide.trip.count93
  br i1 %exitcond94.not.1, label %._crit_edge, label %.lr.ph65, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dg, %middle.block ], [ %i.dg, %.lr.ph65 ], [ %i.dg, %.lr.ph65.prol.loopexit ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.05367, i64 8
  %i.hc = getelementptr inbounds [2 x i8], ptr %.05168, i64 %.pre-phi
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hd = load i32, ptr %6, align 4, !tbaa !25    ; 3 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next96, %i.he
  br i1 %i.hf, label %.lr.ph70.split, label %._crit_edge71, !llvm.loop !185

._crit_edge76:                                    ; preds = %._crit_edge71, %.lr.ph75, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph98.split.preheader, label %._crit_edge99

.lr.ph98.split.preheader:                         ; preds = %.lr.ph98
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98.split.preheader, %._crit_edge94
  %i.t = phi i32 [ %i.p, %.lr.ph98.split.preheader ], [ %i.am, %._crit_edge94 ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.r, %.lr.ph98.split.preheader ], [ %indvars.iv.next111, %._crit_edge94 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv110, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv110, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph93

._crit_edge94:                                    ; preds = %._crit_edge, %.lr.ph98.split
  %i.am = phi i32 [ %i.t, %.lr.ph98.split ], [ %i.fr, %._crit_edge ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond113.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond113.not, label %._crit_edge99, label %.lr.ph98.split, !llvm.loop !186

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %i.bb, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next108, %._crit_edge ] ; 2 uses
  %.06591 = phi ptr [ %i.ak, %.lr.ph93.preheader ], [ %i.fq, %._crit_edge ] ; 5 uses
  %.06790 = phi ptr [ %i.ad, %.lr.ph93.preheader ], [ %i.fp, %._crit_edge ] ; 2 uses
  %.06591126 = ptrtoaddr ptr %.06591 to i64       ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv107
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 7 uses
  %i.au = load <4 x float>, ptr %.06790, align 4, !tbaa !70 ; 9 uses
  %i.av = icmp sgt i32 %i.an, 3
  br i1 %i.av, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph93
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph93
  %i.bb = phi i32 [ %i.an, %.lr.ph93 ], [ %i.es, %.preheader.loopexit ] ; 6 uses
  %.066.lcssa = phi i32 [ 0, %.lr.ph93 ], [ %i.ba, %.preheader.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.066.lcssa, %i.bb
  br i1 %i.bc, label %.lr.ph88, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre114 = sext i32 %i.bb to i64
  br label %._crit_edge

.lr.ph88:                                         ; preds = %.preheader
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %i.be = zext i32 %.066.lcssa to i64             ; 5 uses
  %i.bf = zext nneg i32 %i.bb to i64              ; 5 uses
  %i.bg = zext nneg i32 %i.bd to i64              ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.bf ; 2 uses
  %invariant.gep123 = getelementptr [2 x i8], ptr %i.at, i64 %i.bg ; 2 uses
  %i.bh = sub nsw i64 %wide.trip.count, %i.be     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph88
  %i.bi = sub i64 %.06591126, %i.al               ; 2 uses
  %i.bj = add nsw i64 %i.as, %i.bg
  %i.bk = shl nsw i64 %i.bj, 1
  %i.bl = sub i64 %i.bk, %i.bi
  %diff.check = icmp ugt i64 %i.bl, -16
  %i.bm = add nsw i64 %i.as, %wide.trip.count
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = sub i64 %i.bn, %i.bi
  %diff.check127 = icmp ugt i64 %i.bo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check127
  %i.bp = sub i64 %.06591126, %i.al               ; 2 uses
  %i.bq = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %diff.check128 = icmp ugt i64 %i.br, -16
  %conflict.rdx129 = or i1 %conflict.rdx, %diff.check128
  %i.bs = shl nuw nsw i64 %wide.trip.count, 1
  %i.bt = add i64 %i.bp, %i.bs
  %i.bu = sub i64 %i.bq, %i.bt
  %diff.check130 = icmp ugt i64 %i.bu, -16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  br i1 %conflict.rdx131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -8                      ; 3 uses
  %i.bv = add nsw i64 %n.vec, %i.be
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat135 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat137 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = add nuw i64 %index, %i.be               ; 5 uses
  %i.bx = sub nsw i64 %i.bw, %i.bf
  %i.by = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bx
  %wide.load = load <8 x i16>, ptr %i.by, align 2, !tbaa !178
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = shl nuw <8 x i32> %i.bz, splat (i32 16)
  %i.cb = bitcast <8 x i32> %i.ca to <8 x float>
  %i.cc = fmul fast <8 x float> %broadcast.splat, %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bw
  %wide.load138 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !178
  %i.ce = zext <8 x i16> %wide.load138 to <8 x i32>
  %i.cf = shl nuw <8 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ch = fmul fast <8 x float> %broadcast.splat133, %i.cg
  %i.ci = fadd fast <8 x float> %i.cc, %i.ch
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  %wide.load139 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !178
  %i.ck = zext <8 x i16> %wide.load139 to <8 x i32>
  %i.cl = shl nuw <8 x i32> %i.ck, splat (i32 16)
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = fmul fast <8 x float> %broadcast.splat135, %i.cm
  %i.co = fadd fast <8 x float> %i.ci, %i.cn
  %i.cp = getelementptr [2 x i8], ptr %invariant.gep123, i64 %i.bw
  %wide.load140 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !178
  %i.cq = zext <8 x i16> %wide.load140 to <8 x i32>
  %i.cr = shl nuw <8 x i32> %i.cq, splat (i32 16)
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = fmul fast <8 x float> %broadcast.splat137, %i.cs
  %i.cu = fadd fast <8 x float> %i.co, %i.ct
  %i.cv = bitcast <8 x float> %i.cu to <8 x i32>
  %i.cw = lshr <8 x i32> %i.cv, splat (i32 16)
  %i.cx = trunc nuw <8 x i32> %i.cw to <8 x i16>
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.06591, i64 %i.bw
  store <8 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph88, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph88 ], [ %i.bv, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.da = phi i32 [ %i.an, %.lr.ph ], [ %i.es, %bb.c ] ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.dc = sext i32 %i.da to i64                   ; 2 uses
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 1, !tbaa !17
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = bitcast <2 x i64> %i.dg to <8 x i16>
  %i.di = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dj = bitcast <8 x i16> %i.di to <4 x float>
  %i.dk = load i64, ptr %i.db, align 1, !tbaa !17
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = bitcast <2 x i64> %i.dl to <8 x i16>
  %i.dn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.do = bitcast <8 x i16> %i.dn to <4 x float>
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dc
  %i.dq = load i64, ptr %i.dp, align 1, !tbaa !17
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = bitcast <2 x i64> %i.dr to <8 x i16>
  %i.dt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.du = bitcast <8 x i16> %i.dt to <4 x float>
  %i.dv = shl nsw i32 %i.da, 1
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 1, !tbaa !17
  %i.dz = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ea = bitcast <2 x i64> %i.dz to <8 x i16>
  %i.eb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ec = bitcast <8 x i16> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.aw, %i.dj
  %i.ee = fmul fast <4 x float> %i.ax, %i.do
  %i.ef = fadd fast <4 x float> %i.ed, %i.ee
  %i.eg = fmul fast <4 x float> %i.ay, %i.du
  %i.eh = fadd fast <4 x float> %i.eg, %i.ef
  %i.ei = fmul fast <4 x float> %i.az, %i.ec
  %i.ej = fadd fast <4 x float> %i.ei, %i.eh
  %i.ek = bitcast <4 x float> %i.ej to <8 x i16>
  %i.el = shufflevector <8 x i16> %i.ek, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.em = bitcast <8 x i16> %i.el to <4 x float>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eo = bitcast <4 x float> %i.en to <2 x i64>
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.06591, i64 %indvars.iv
  %i.eq = extractelement <2 x i64> %i.eo, i64 0
  store i64 %i.eq, ptr %i.ep, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.er = or disjoint i64 %indvars.iv.next, 3
  %i.es = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %i.er, %i.et
  br i1 %i.eu, label %bb.c, label %.preheader.loopexit, !llvm.loop !188

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ev = sub nsw i64 %indvars.iv104, %i.bf
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !178
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv104
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !178
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv104
  %i.fa = load i16, ptr %gep, align 2, !tbaa !178
  %gep124 = getelementptr [2 x i8], ptr %invariant.gep123, i64 %indvars.iv104
  %i.fb = load i16, ptr %gep124, align 2, !tbaa !178
  %i.fc = insertelement <4 x i16> poison, i16 %i.ex, i64 0
  %i.fd = insertelement <4 x i16> %i.fc, i16 %i.ez, i64 1
  %i.fe = insertelement <4 x i16> %i.fd, i16 %i.fa, i64 2
  %i.ff = insertelement <4 x i16> %i.fe, i16 %i.fb, i64 3
  %i.fg = zext <4 x i16> %i.ff to <4 x i32>
  %i.fh = shl nuw <4 x i32> %i.fg, splat (i32 16)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>
  %i.fj = fmul fast <4 x float> %i.au, %i.fi
  %i.fk = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fj)
  %i.fl = bitcast float %i.fk to i32
  %i.fm = lshr i32 %i.fl, 16
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.06591, i64 %indvars.iv104
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !178
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre114, %.preheader.._crit_edge_crit_edge ], [ %i.bf, %middle.block ], [ %i.bf, %scalar.ph ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.06790, i64 16
  %i.fq = getelementptr inbounds [2 x i8], ptr %.06591, i64 %.pre-phi
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.fr = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next108, %i.fs
  br i1 %i.ft, label %.lr.ph93, label %._crit_edge94, !llvm.loop !190

._crit_edge99:                                    ; preds = %._crit_edge94, %.lr.ph98, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !191
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !191
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !191 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !194
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !194
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !194 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !194
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !191
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !197

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !198

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03782 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03881 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03782 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
end_hunk_3
begin_hunk_4_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13:bb.a
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit293.i

bb.k:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i301.i = icmp eq ptr %i.cl, null
  %i.cm = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i301.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.cm)
          to label %_ZN4ncnn3MatD2Ev.exit293.i unwind label %bb.o, !inline_history !46

bb.m:                                             ; preds = %bb.k
  %.not.i333.i = icmp eq ptr %i.cm, null
  br i1 %.not.i333.i, label %_ZN4ncnn3MatD2Ev.exit293.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cm) #6
  br label %_ZN4ncnn3MatD2Ev.exit293.i

bb.o:                                             ; preds = %bb.l
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit293.i:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZN4ncnn3MatD2Ev.exit294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i304.i = icmp eq ptr %i.cs, null
  br i1 %.not.i304.i, label %_ZN4ncnn3MatD2Ev.exit292.i, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit293.i
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit292.i

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i305.i = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %15, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i305.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cw)
          to label %_ZN4ncnn3MatD2Ev.exit292.i unwind label %bb.u, !inline_history !46

bb.s:                                             ; preds = %bb.q
  %.not.i331.i = icmp eq ptr %i.cw, null
  br i1 %.not.i331.i, label %_ZN4ncnn3MatD2Ev.exit292.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cw) #6
  br label %_ZN4ncnn3MatD2Ev.exit292.i

bb.u:                                             ; preds = %bb.r
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit292.i:                       ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %_ZN4ncnn3MatD2Ev.exit293.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.dc = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i308.i = icmp eq ptr %i.dc, null
  br i1 %.not.i308.i, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit292.i
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.w, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i309.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i309.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dg)
          to label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.aa, !inline_history !46

bb.y:                                             ; preds = %bb.w
  %.not.i329.i = icmp eq ptr %i.dg, null
  br i1 %.not.i329.i, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.dg) #6
  br label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.aa:                                            ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #22
  unreachable

bb.ab:                                            ; preds = %.noexc29
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.ac:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i
  %i.do = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !43  ; 2 uses
  %.not.i312.i = icmp eq ptr %i.dp, null
  br i1 %.not.i312.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.an

bb.ae:                                            ; preds = %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, %.lr.ph437.i
  %indvars.iv458.i = phi i64 [ 0, %.lr.ph437.i ], [ %indvars.iv.next459.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 3 uses
  %.0436.i = phi ptr [ %i.bm, %.lr.ph437.i ], [ %i.wt, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 2 uses
  %.0239435.i = phi ptr [ %i.bs, %.lr.ph437.i ], [ %.1240.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 13 uses
  %.0241434.i = phi ptr [ %i.br, %.lr.ph437.i ], [ %.1242.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 12 uses
  %.0243433.i = phi ptr [ %i.bq, %.lr.ph437.i ], [ %.1244.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 11 uses
  %.0245432.i = phi ptr [ %i.bp, %.lr.ph437.i ], [ %.1246.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 10 uses
  %.0247431.i = phi i32 [ -3, %.lr.ph437.i ], [ %i.dr, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv458.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25 ; 15 uses
  %i.ds = icmp eq i32 %i.dr, %.0247431.i
  br i1 %i.ds, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = add nsw i32 %.0247431.i, 1
  %i.du = icmp eq i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = add nsw i32 %i.dr, 2
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.bx, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dx
  br i1 %i.bt, label %.lr.ph429.i, label %.loopexit.i

.lr.ph429.i:                                      ; preds = %bb.ag, %.lr.ph429.i
  %indvars.iv453.i = phi i64 [ %indvars.iv.next454.i, %.lr.ph429.i ], [ 0, %bb.ag ] ; 3 uses
  %.0250428.i = phi ptr [ %i.fy, %.lr.ph429.i ], [ %i.bk, %bb.ag ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv453.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !25
  %i.eb = shl nsw i32 %i.ea, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.ec ; 4 uses
  %i.ee = load float, ptr %.0250428.i, align 4, !tbaa !70
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = getelementptr inbounds nuw i8, ptr %.0250428.i, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !70
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = getelementptr inbounds nuw i8, ptr %.0250428.i, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !70
  %i.en = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = getelementptr inbounds nuw i8, ptr %.0250428.i, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !70
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.eu = load i64, ptr %i.et, align 1, !tbaa !17
  %i.ev = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %i.ew = bitcast <2 x i64> %i.ev to <8 x i16>
  %i.ex = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ey = bitcast <8 x i16> %i.ex to <4 x float>
  %i.ez = load i64, ptr %i.ed, align 1, !tbaa !17
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = bitcast <2 x i64> %i.fa to <8 x i16>
  %i.fc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fd = bitcast <8 x i16> %i.fc to <4 x float>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ff = load i64, ptr %i.fe, align 1, !tbaa !17
  %i.fg = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fh = bitcast <2 x i64> %i.fg to <8 x i16>
  %i.fi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = bitcast <8 x i16> %i.fi to <4 x float>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.fl = load i64, ptr %i.fk, align 1, !tbaa !17
  %i.fm = insertelement <2 x i64> poison, i64 %i.fl, i64 0
  %i.fn = bitcast <2 x i64> %i.fm to <8 x i16>
  %i.fo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fp = bitcast <8 x i16> %i.fo to <4 x float>
  %i.fq = fmul fast <4 x float> %i.eg, %i.ey
  %i.fr = fmul fast <4 x float> %i.ek, %i.fd
  %i.fs = fadd fast <4 x float> %i.fq, %i.fr
  %i.ft = fmul fast <4 x float> %i.eo, %i.fj
  %i.fu = fadd fast <4 x float> %i.ft, %i.fs
  %i.fv = fmul fast <4 x float> %i.es, %i.fp
  %i.fw = fadd fast <4 x float> %i.fv, %i.fu
  %.idx.i = shl nuw nsw i64 %indvars.iv453.i, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.0239435.i, i64 %.idx.i
  store <4 x float> %i.fw, ptr %i.fx, align 16, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %.0250428.i, i64 16
  %indvars.iv.next454.i = add nuw nsw i64 %indvars.iv453.i, 1 ; 2 uses
  %exitcond457.not.i = icmp eq i64 %indvars.iv.next454.i, %wide.trip.count.i
  br i1 %exitcond457.not.i, label %.loopexit.i, label %.lr.ph429.i, !llvm.loop !223

bb.ah:                                            ; preds = %bb.af
  %i.fz = add nsw i32 %.0247431.i, 2
  %i.ga = icmp eq i32 %i.dr, %i.fz
  br i1 %i.ga, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gb = add nsw i32 %i.dr, 1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul i64 %i.bx, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.gd
  %i.gf = add nsw i32 %i.dr, 2
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul i64 %i.bx, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.gh
  br i1 %i.bt, label %.lr.ph426.i, label %.loopexit.i

.lr.ph426.i:                                      ; preds = %bb.ai, %.lr.ph426.i
  %indvars.iv448.i = phi i64 [ %indvars.iv.next449.i, %.lr.ph426.i ], [ 0, %bb.ai ] ; 3 uses
  %.0252425.i = phi ptr [ %i.jp, %.lr.ph426.i ], [ %i.bk, %bb.ai ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv448.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !25
  %i.gl = shl nsw i32 %i.gk, 2
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.gm ; 4 uses
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.gm ; 4 uses
  %i.gp = load float, ptr %.0252425.i, align 4, !tbaa !70
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0252425.i, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !70
  %i.gu = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0252425.i, i64 8
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !70
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0252425.i, i64 12
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !70
  %i.hc = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %i.hf = load i64, ptr %i.he, align 1, !tbaa !17
  %i.hg = insertelement <2 x i64> poison, i64 %i.hf, i64 0
  %i.hh = bitcast <2 x i64> %i.hg to <8 x i16>
  %i.hi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hj = bitcast <8 x i16> %i.hi to <4 x float>
  %i.hk = load i64, ptr %i.gn, align 1, !tbaa !17
  %i.hl = insertelement <2 x i64> poison, i64 %i.hk, i64 0
  %i.hm = bitcast <2 x i64> %i.hl to <8 x i16>
  %i.hn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ho = bitcast <8 x i16> %i.hn to <4 x float>
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hq = load i64, ptr %i.hp, align 1, !tbaa !17
  %i.hr = insertelement <2 x i64> poison, i64 %i.hq, i64 0
  %i.hs = bitcast <2 x i64> %i.hr to <8 x i16>
  %i.ht = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hu = bitcast <8 x i16> %i.ht to <4 x float>
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hw = load i64, ptr %i.hv, align 1, !tbaa !17
  %i.hx = insertelement <2 x i64> poison, i64 %i.hw, i64 0
  %i.hy = bitcast <2 x i64> %i.hx to <8 x i16>
  %i.hz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ia = bitcast <8 x i16> %i.hz to <4 x float>
  %i.ib = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.ic = load i64, ptr %i.ib, align 1, !tbaa !17
  %i.id = insertelement <2 x i64> poison, i64 %i.ic, i64 0
  %i.ie = bitcast <2 x i64> %i.id to <8 x i16>
  %i.if = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ig = bitcast <8 x i16> %i.if to <4 x float>
  %i.ih = load i64, ptr %i.go, align 1, !tbaa !17
  %i.ii = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.ij = bitcast <2 x i64> %i.ii to <8 x i16>
  %i.ik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %i.ik to <4 x float>
  %i.im = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.in = load i64, ptr %i.im, align 1, !tbaa !17
  %i.io = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %i.ip = bitcast <2 x i64> %i.io to <8 x i16>
  %i.iq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ir = bitcast <8 x i16> %i.iq to <4 x float>
  %i.is = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.it = load i64, ptr %i.is, align 1, !tbaa !17
  %i.iu = insertelement <2 x i64> poison, i64 %i.it, i64 0
  %i.iv = bitcast <2 x i64> %i.iu to <8 x i16>
  %i.iw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ix = bitcast <8 x i16> %i.iw to <4 x float>
  %i.iy = fmul fast <4 x float> %i.gr, %i.hj
  %i.iz = fmul fast <4 x float> %i.gr, %i.ig
  %i.ja = fmul fast <4 x float> %i.gv, %i.ho
  %i.jb = fadd fast <4 x float> %i.iy, %i.ja
  %i.jc = fmul fast <4 x float> %i.gv, %i.il
  %i.jd = fadd fast <4 x float> %i.iz, %i.jc
  %i.je = fmul fast <4 x float> %i.gz, %i.hu
  %i.jf = fadd fast <4 x float> %i.je, %i.jb
  %i.jg = fmul fast <4 x float> %i.gz, %i.ir
  %i.jh = fadd fast <4 x float> %i.jg, %i.jd
  %i.ji = fmul fast <4 x float> %i.hd, %i.ia
  %i.jj = fadd fast <4 x float> %i.ji, %i.jf
  %i.jk = fmul fast <4 x float> %i.hd, %i.ix
  %i.jl = fadd fast <4 x float> %i.jk, %i.jh
  %i.jm = shl nuw nsw i64 %indvars.iv448.i, 2     ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0239435.i, i64 %i.jm
  store <4 x float> %i.jj, ptr %i.jn, align 16, !tbaa !17
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0241434.i, i64 %i.jm
  store <4 x float> %i.jl, ptr %i.jo, align 16, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.0252425.i, i64 16
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %exitcond452.not.i = icmp eq i64 %indvars.iv.next449.i, %wide.trip.count.i
  br i1 %exitcond452.not.i, label %.loopexit.i, label %.lr.ph426.i, !llvm.loop !224

bb.aj:                                            ; preds = %bb.ah
  %i.jq = add nsw i32 %.0247431.i, 3
  %i.jr = icmp eq i32 %i.dr, %i.jq
  br i1 %i.jr, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph423.i, label %.loopexit.i

.lr.ph423.i:                                      ; preds = %bb.ak
  %.pn264.v.v.v.i = sext i32 %i.dr to i64
  %.pn264.v.i = mul i64 %i.bx, %.pn264.v.v.v.i
  %.pn264.v.v.v.v.1.i = add nsw i32 %i.dr, 1
  %.pn264.v.v.v.1.i = sext i32 %.pn264.v.v.v.v.1.i to i64
  %.pn264.v.1.i = mul i64 %i.bx, %.pn264.v.v.v.1.i
  %.pn264.v.v.v.v.2.i = add nsw i32 %i.dr, 2
  %.pn264.v.v.v.2.i = sext i32 %.pn264.v.v.v.v.2.i to i64
  %.pn264.v.2.i = mul i64 %i.bx, %.pn264.v.v.v.2.i
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph423.i
  %indvars.iv443.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next444.i, %bb.al ] ; 3 uses
  %.0255422.i = phi ptr [ %i.bk, %.lr.ph423.i ], [ %i.ob, %bb.al ] ; 5 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv443.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !25
  %i.ju = shl nsw i32 %i.jt, 2
  %i.jv = sext i32 %i.ju to i64
  %i.jw = load float, ptr %.0255422.i, align 4, !tbaa !70
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0255422.i, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !70
  %i.kb = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0255422.i, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !70
  %i.kf = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0255422.i, i64 12
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !70
  %i.kj = insertelement <4 x float> poison, float %i.ki, i64 0
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.gep418.i = getelementptr [2 x i8], ptr %i.ax, i64 %i.jv ; 3 uses
  %i.kl = shl nuw nsw i64 %indvars.iv443.i, 2     ; 3 uses
  %gep419.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.i ; 4 uses
  %i.km = getelementptr inbounds i8, ptr %gep419.i, i64 -8
  %i.kn = load i64, ptr %i.km, align 1, !tbaa !17
  %i.ko = insertelement <2 x i64> poison, i64 %i.kn, i64 0
  %i.kp = bitcast <2 x i64> %i.ko to <8 x i16>
  %i.kq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kr = bitcast <8 x i16> %i.kq to <4 x float>
  %i.ks = load i64, ptr %gep419.i, align 1, !tbaa !17
  %i.kt = insertelement <2 x i64> poison, i64 %i.ks, i64 0
  %i.ku = bitcast <2 x i64> %i.kt to <8 x i16>
  %i.kv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ku, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kw = bitcast <8 x i16> %i.kv to <4 x float>
  %i.kx = getelementptr inbounds nuw i8, ptr %gep419.i, i64 8
  %i.ky = load i64, ptr %i.kx, align 1, !tbaa !17
  %i.kz = insertelement <2 x i64> poison, i64 %i.ky, i64 0
  %i.la = bitcast <2 x i64> %i.kz to <8 x i16>
  %i.lb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.la, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lc = bitcast <8 x i16> %i.lb to <4 x float>
  %i.ld = getelementptr inbounds nuw i8, ptr %gep419.i, i64 16
  %i.le = load i64, ptr %i.ld, align 1, !tbaa !17
  %i.lf = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %i.lg = bitcast <2 x i64> %i.lf to <8 x i16>
  %i.lh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.li = bitcast <8 x i16> %i.lh to <4 x float>
  %i.lj = fmul fast <4 x float> %i.jy, %i.kr
  %i.lk = fmul fast <4 x float> %i.kc, %i.kw
  %i.ll = fadd fast <4 x float> %i.lj, %i.lk
  %i.lm = fmul fast <4 x float> %i.kg, %i.lc
  %i.ln = fadd fast <4 x float> %i.lm, %i.ll
  %i.lo = fmul fast <4 x float> %i.kk, %i.li
  %i.lp = fadd fast <4 x float> %i.lo, %i.ln
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0239435.i, i64 %i.kl
  store <4 x float> %i.lp, ptr %i.lq, align 16, !tbaa !17
  %gep419.1.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.1.i ; 4 uses
  %i.lr = getelementptr inbounds i8, ptr %gep419.1.i, i64 -8
  %i.ls = load i64, ptr %i.lr, align 1, !tbaa !17
  %i.lt = insertelement <2 x i64> poison, i64 %i.ls, i64 0
  %i.lu = bitcast <2 x i64> %i.lt to <8 x i16>
  %i.lv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lw = bitcast <8 x i16> %i.lv to <4 x float>
  %i.lx = load i64, ptr %gep419.1.i, align 1, !tbaa !17
  %i.ly = insertelement <2 x i64> poison, i64 %i.lx, i64 0
  %i.lz = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.ma = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mb = bitcast <8 x i16> %i.ma to <4 x float>
  %i.mc = getelementptr inbounds nuw i8, ptr %gep419.1.i, i64 8
  %i.md = load i64, ptr %i.mc, align 1, !tbaa !17
  %i.me = insertelement <2 x i64> poison, i64 %i.md, i64 0
  %i.mf = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mh = bitcast <8 x i16> %i.mg to <4 x float>
  %i.mi = getelementptr inbounds nuw i8, ptr %gep419.1.i, i64 16
  %i.mj = load i64, ptr %i.mi, align 1, !tbaa !17
  %i.mk = insertelement <2 x i64> poison, i64 %i.mj, i64 0
  %i.ml = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mn = bitcast <8 x i16> %i.mm to <4 x float>
  %i.mo = fmul fast <4 x float> %i.jy, %i.lw
  %i.mp = fmul fast <4 x float> %i.kc, %i.mb
  %i.mq = fadd fast <4 x float> %i.mo, %i.mp
  %i.mr = fmul fast <4 x float> %i.kg, %i.mh
  %i.ms = fadd fast <4 x float> %i.mr, %i.mq
  %i.mt = fmul fast <4 x float> %i.kk, %i.mn
  %i.mu = fadd fast <4 x float> %i.mt, %i.ms
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0241434.i, i64 %i.kl
  store <4 x float> %i.mu, ptr %i.mv, align 16, !tbaa !17
  %gep419.2.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.2.i ; 4 uses
  %i.mw = getelementptr inbounds i8, ptr %gep419.2.i, i64 -8
  %i.mx = load i64, ptr %i.mw, align 1, !tbaa !17
  %i.my = insertelement <2 x i64> poison, i64 %i.mx, i64 0
  %i.mz = bitcast <2 x i64> %i.my to <8 x i16>
  %i.na = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nb = bitcast <8 x i16> %i.na to <4 x float>
  %i.nc = load i64, ptr %gep419.2.i, align 1, !tbaa !17
  %i.nd = insertelement <2 x i64> poison, i64 %i.nc, i64 0
  %i.ne = bitcast <2 x i64> %i.nd to <8 x i16>
  %i.nf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ne, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ng = bitcast <8 x i16> %i.nf to <4 x float>
  %i.nh = getelementptr inbounds nuw i8, ptr %gep419.2.i, i64 8
  %i.ni = load i64, ptr %i.nh, align 1, !tbaa !17
  %i.nj = insertelement <2 x i64> poison, i64 %i.ni, i64 0
  %i.nk = bitcast <2 x i64> %i.nj to <8 x i16>
  %i.nl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nm = bitcast <8 x i16> %i.nl to <4 x float>
  %i.nn = getelementptr inbounds nuw i8, ptr %gep419.2.i, i64 16
  %i.no = load i64, ptr %i.nn, align 1, !tbaa !17
  %i.np = insertelement <2 x i64> poison, i64 %i.no, i64 0
  %i.nq = bitcast <2 x i64> %i.np to <8 x i16>
  %i.nr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ns = bitcast <8 x i16> %i.nr to <4 x float>
  %i.nt = fmul fast <4 x float> %i.jy, %i.nb
  %i.nu = fmul fast <4 x float> %i.kc, %i.ng
  %i.nv = fadd fast <4 x float> %i.nt, %i.nu
  %i.nw = fmul fast <4 x float> %i.kg, %i.nm
  %i.nx = fadd fast <4 x float> %i.nw, %i.nv
  %i.ny = fmul fast <4 x float> %i.kk, %i.ns
  %i.nz = fadd fast <4 x float> %i.ny, %i.nx
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0243433.i, i64 %i.kl
  store <4 x float> %i.nz, ptr %i.oa, align 16, !tbaa !17
  %i.ob = getelementptr inbounds nuw i8, ptr %.0255422.i, i64 16
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1 ; 2 uses
  %exitcond447.not.i = icmp eq i64 %indvars.iv.next444.i, %wide.trip.count.i
  br i1 %exitcond447.not.i, label %.loopexit.i, label %bb.al, !llvm.loop !225

bb.am:                                            ; preds = %bb.aj
  %i.oc = add nsw i32 %i.dr, -1
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul i64 %i.bx, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.oe
  %i.og = sext i32 %i.dr to i64
  %i.oh = mul i64 %i.bx, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.oh
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.am
  %.v.v.v.v.v.2.i = add nsw i32 %i.dr, 1
  %.v.v.v.v.2.i = sext i32 %.v.v.v.v.v.2.i to i64
  %.v.v.2.i = mul i64 %i.bx, %.v.v.v.v.2.i
  %.v.v.v.v.v.3.i = add nsw i32 %i.dr, 2
  %.v.v.v.v.3.i = sext i32 %.v.v.v.v.v.3.i to i64
  %.v.v.3.i = mul i64 %i.bx, %.v.v.v.v.3.i
  br label %.thread410.3.i

.thread410.3.i:                                   ; preds = %.thread410.3.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread410.3.i ] ; 3 uses
  %.0253416.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.tz, %.thread410.3.i ] ; 5 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !25
  %i.ol = shl nsw i32 %i.ok, 2
  %i.om = sext i32 %i.ol to i64                   ; 3 uses
  %i.on = getelementptr inbounds [2 x i8], ptr %i.oi, i64 %i.om ; 4 uses
  %i.oo = load float, ptr %.0253416.i, align 4, !tbaa !70
  %i.op = insertelement <4 x float> poison, float %i.oo, i64 0
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 4
  %i.os = load float, ptr %i.or, align 4, !tbaa !70
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 8
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !70
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 12
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !70
  %i.pb = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ax, i64 %i.om ; 2 uses
  %i.pd = shl nuw nsw i64 %indvars.iv.i, 2        ; 4 uses
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.of, i64 %i.om ; 4 uses
  %i.pf = getelementptr inbounds i8, ptr %i.pe, i64 -8
  %i.pg = load i64, ptr %i.pf, align 1, !tbaa !17
  %i.ph = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %i.pi = bitcast <2 x i64> %i.ph to <8 x i16>
  %i.pj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pk = bitcast <8 x i16> %i.pj to <4 x float>
  %i.pl = load i64, ptr %i.pe, align 1, !tbaa !17
  %i.pm = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %i.pn = bitcast <2 x i64> %i.pm to <8 x i16>
  %i.po = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pp = bitcast <8 x i16> %i.po to <4 x float>
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pr = load i64, ptr %i.pq, align 1, !tbaa !17
  %i.ps = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %i.pt = bitcast <2 x i64> %i.ps to <8 x i16>
  %i.pu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pv = bitcast <8 x i16> %i.pu to <4 x float>
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.px = load i64, ptr %i.pw, align 1, !tbaa !17
  %i.py = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %i.pz = bitcast <2 x i64> %i.py to <8 x i16>
  %i.qa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qb = bitcast <8 x i16> %i.qa to <4 x float>
  %i.qc = fmul fast <4 x float> %i.oq, %i.pk
  %i.qd = fmul fast <4 x float> %i.ou, %i.pp
  %i.qe = fadd fast <4 x float> %i.qc, %i.qd
  %i.qf = fmul fast <4 x float> %i.oy, %i.pv
  %i.qg = fadd fast <4 x float> %i.qf, %i.qe
  %i.qh = fmul fast <4 x float> %i.pc, %i.qb
  %i.qi = fadd fast <4 x float> %i.qh, %i.qg
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.0239435.i, i64 %i.pd
  store <4 x float> %i.qi, ptr %i.qj, align 16, !tbaa !17
  %i.qk = getelementptr inbounds i8, ptr %i.on, i64 -8
  %i.ql = load i64, ptr %i.qk, align 1, !tbaa !17
  %i.qm = insertelement <2 x i64> poison, i64 %i.ql, i64 0
  %i.qn = bitcast <2 x i64> %i.qm to <8 x i16>
  %i.qo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qp = bitcast <8 x i16> %i.qo to <4 x float>
  %i.qq = load i64, ptr %i.on, align 1, !tbaa !17
  %i.qr = insertelement <2 x i64> poison, i64 %i.qq, i64 0
  %i.qs = bitcast <2 x i64> %i.qr to <8 x i16>
  %i.qt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qu = bitcast <8 x i16> %i.qt to <4 x float>
  %i.qv = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.qw = load i64, ptr %i.qv, align 1, !tbaa !17
  %i.qx = insertelement <2 x i64> poison, i64 %i.qw, i64 0
  %i.qy = bitcast <2 x i64> %i.qx to <8 x i16>
  %i.qz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ra = bitcast <8 x i16> %i.qz to <4 x float>
  %i.rb = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.rc = load i64, ptr %i.rb, align 1, !tbaa !17
  %i.rd = insertelement <2 x i64> poison, i64 %i.rc, i64 0
  %i.re = bitcast <2 x i64> %i.rd to <8 x i16>
  %i.rf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = bitcast <8 x i16> %i.rf to <4 x float>
  %i.rh = fmul fast <4 x float> %i.oq, %i.qp
  %i.ri = fmul fast <4 x float> %i.ou, %i.qu
  %i.rj = fadd fast <4 x float> %i.rh, %i.ri
  %i.rk = fmul fast <4 x float> %i.oy, %i.ra
  %i.rl = fadd fast <4 x float> %i.rk, %i.rj
  %i.rm = fmul fast <4 x float> %i.pc, %i.rg
  %i.rn = fadd fast <4 x float> %i.rm, %i.rl
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.0241434.i, i64 %i.pd
  store <4 x float> %i.rn, ptr %i.ro, align 16, !tbaa !17
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.2.i ; 4 uses
  %i.rp = getelementptr inbounds i8, ptr %gep.2.i, i64 -8
  %i.rq = load i64, ptr %i.rp, align 1, !tbaa !17
  %i.rr = insertelement <2 x i64> poison, i64 %i.rq, i64 0
  %i.rs = bitcast <2 x i64> %i.rr to <8 x i16>
  %i.rt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ru = bitcast <8 x i16> %i.rt to <4 x float>
  %i.rv = load i64, ptr %gep.2.i, align 1, !tbaa !17
  %i.rw = insertelement <2 x i64> poison, i64 %i.rv, i64 0
  %i.rx = bitcast <2 x i64> %i.rw to <8 x i16>
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = bitcast <8 x i16> %i.ry to <4 x float>
  %i.sa = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 8
  %i.sb = load i64, ptr %i.sa, align 1, !tbaa !17
  %i.sc = insertelement <2 x i64> poison, i64 %i.sb, i64 0
  %i.sd = bitcast <2 x i64> %i.sc to <8 x i16>
  %i.se = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sf = bitcast <8 x i16> %i.se to <4 x float>
  %i.sg = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 16
  %i.sh = load i64, ptr %i.sg, align 1, !tbaa !17
  %i.si = insertelement <2 x i64> poison, i64 %i.sh, i64 0
  %i.sj = bitcast <2 x i64> %i.si to <8 x i16>
  %i.sk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sl = bitcast <8 x i16> %i.sk to <4 x float>
  %i.sm = fmul fast <4 x float> %i.oq, %i.ru
  %i.sn = fmul fast <4 x float> %i.ou, %i.rz
  %i.so = fadd fast <4 x float> %i.sm, %i.sn
  %i.sp = fmul fast <4 x float> %i.oy, %i.sf
  %i.sq = fadd fast <4 x float> %i.sp, %i.so
  %i.sr = fmul fast <4 x float> %i.pc, %i.sl
  %i.ss = fadd fast <4 x float> %i.sr, %i.sq
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.0243433.i, i64 %i.pd
  store <4 x float> %i.ss, ptr %i.st, align 16, !tbaa !17
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.3.i ; 4 uses
  %i.su = getelementptr inbounds i8, ptr %gep.3.i, i64 -8
  %i.sv = load i64, ptr %i.su, align 1, !tbaa !17
  %i.sw = insertelement <2 x i64> poison, i64 %i.sv, i64 0
  %i.sx = bitcast <2 x i64> %i.sw to <8 x i16>
  %i.sy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sz = bitcast <8 x i16> %i.sy to <4 x float>
  %i.ta = load i64, ptr %gep.3.i, align 1, !tbaa !17
  %i.tb = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %i.tc = bitcast <2 x i64> %i.tb to <8 x i16>
  %i.td = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.te = bitcast <8 x i16> %i.td to <4 x float>
  %i.tf = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 8
  %i.tg = load i64, ptr %i.tf, align 1, !tbaa !17
  %i.th = insertelement <2 x i64> poison, i64 %i.tg, i64 0
  %i.ti = bitcast <2 x i64> %i.th to <8 x i16>
  %i.tj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ti, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tk = bitcast <8 x i16> %i.tj to <4 x float>
  %i.tl = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 16
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !17
  %i.tn = insertelement <2 x i64> poison, i64 %i.tm, i64 0
  %i.to = bitcast <2 x i64> %i.tn to <8 x i16>
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %i.tp to <4 x float>
  %i.tr = fmul fast <4 x float> %i.oq, %i.sz
  %i.ts = fmul fast <4 x float> %i.ou, %i.te
  %i.tt = fadd fast <4 x float> %i.tr, %i.ts
  %i.tu = fmul fast <4 x float> %i.oy, %i.tk
  %i.tv = fadd fast <4 x float> %i.tu, %i.tt
  %i.tw = fmul fast <4 x float> %i.pc, %i.tq
  %i.tx = fadd fast <4 x float> %i.tw, %i.tv
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.0245432.i, i64 %i.pd
  store <4 x float> %i.tx, ptr %i.ty, align 16, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread410.3.i, !llvm.loop !226

.loopexit.i:                                      ; preds = %.thread410.3.i, %bb.al, %.lr.ph426.i, %.lr.ph429.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1246.i = phi ptr [ %.0245432.i, %bb.ae ], [ %.0239435.i, %bb.ag ], [ %.0241434.i, %bb.ai ], [ %.0243433.i, %bb.ak ], [ %.0245432.i, %bb.am ], [ %.0243433.i, %bb.al ], [ %.0239435.i, %.lr.ph429.i ], [ %.0241434.i, %.lr.ph426.i ], [ %.0245432.i, %.thread410.3.i ] ; 4 uses
  %.1244.i = phi ptr [ %.0243433.i, %bb.ae ], [ %.0245432.i, %bb.ag ], [ %.0239435.i, %bb.ai ], [ %.0241434.i, %bb.ak ], [ %.0243433.i, %bb.am ], [ %.0241434.i, %bb.al ], [ %.0245432.i, %.lr.ph429.i ], [ %.0239435.i, %.lr.ph426.i ], [ %.0243433.i, %.thread410.3.i ] ; 4 uses
  %.1242.i = phi ptr [ %.0241434.i, %bb.ae ], [ %.0243433.i, %bb.ag ], [ %.0245432.i, %bb.ai ], [ %.0239435.i, %bb.ak ], [ %.0241434.i, %bb.am ], [ %.0239435.i, %bb.al ], [ %.0243433.i, %.lr.ph429.i ], [ %.0245432.i, %.lr.ph426.i ], [ %.0241434.i, %.thread410.3.i ] ; 4 uses
  %.1240.i = phi ptr [ %.0239435.i, %bb.ae ], [ %.0241434.i, %bb.ag ], [ %.0243433.i, %bb.ai ], [ %.0245432.i, %bb.ak ], [ %.0239435.i, %bb.am ], [ %.0245432.i, %bb.al ], [ %.0241434.i, %.lr.ph429.i ], [ %.0243433.i, %.lr.ph426.i ], [ %.0239435.i, %.thread410.3.i ] ; 4 uses
  %i.ua = mul i64 %i.bw, %indvars.iv458.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ua ; 3 uses
  %i.uc = load <4 x float>, ptr %.0436.i, align 4, !tbaa !70 ; 5 uses
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ue = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.uf = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ug = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.uh = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.uh, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ui = icmp slt i32 %.0.lcssa.i.i, %i.bu
  br i1 %i.ui, label %.lr.ph47.preheader.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

.lr.ph47.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.uj = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %i.uk = sub nsw i64 %i.bv, %i.uj                ; 3 uses
  %min.iters.check261 = icmp ult i64 %i.uk, 4
  br i1 %min.iters.check261, label %.lr.ph47.i.i.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph47.preheader.i.i
  %n.vec263 = and i64 %i.uk, -4                   ; 3 uses
  %i.ul = add nsw i64 %n.vec263, %i.uj
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph262
  %index273 = phi i64 [ 0, %vector.ph262 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.um = add nuw i64 %index273, %i.uj            ; 5 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.um
  %wide.load274 = load <4 x float>, ptr %i.un, align 4, !tbaa !70
  %i.uo = fmul fast <4 x float> %wide.load274, %i.ud
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.um
  %wide.load275 = load <4 x float>, ptr %i.up, align 4, !tbaa !70
  %i.uq = fmul fast <4 x float> %wide.load275, %i.ue
  %i.ur = fadd fast <4 x float> %i.uo, %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.um
  %wide.load276 = load <4 x float>, ptr %i.us, align 4, !tbaa !70
  %i.ut = fmul fast <4 x float> %wide.load276, %i.uf
  %i.uu = fadd fast <4 x float> %i.ur, %i.ut
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.um
  %wide.load277 = load <4 x float>, ptr %i.uv, align 4, !tbaa !70
  %i.uw = fmul fast <4 x float> %wide.load277, %i.ug
  %i.ux = fadd fast <4 x float> %i.uu, %i.uw
  %i.uy = bitcast <4 x float> %i.ux to <4 x i32>
  %i.uz = lshr <4 x i32> %i.uy, splat (i32 16)
  %i.va = trunc nuw <4 x i32> %i.uz to <4 x i16>
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %i.um
  store <4 x i16> %i.va, ptr %i.vb, align 2, !tbaa !178
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next278, %n.vec263
  br i1 %i.vc, label %middle.block279, label %vector.body272, !llvm.loop !227

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.uk, %n.vec263
  br i1 %cmp.n280, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %.lr.ph47.preheader.i.i, %middle.block279
  %indvars.iv49.i.i.ph = phi i64 [ %i.uj, %.lr.ph47.preheader.i.i ], [ %i.ul, %middle.block279 ]
  br label %.lr.ph47.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv.i.i
  %i.ve = load <4 x float>, ptr %i.vd, align 1, !tbaa !17
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv.i.i
  %i.vg = load <4 x float>, ptr %i.vf, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv.i.i
  %i.vi = load <4 x float>, ptr %i.vh, align 1, !tbaa !17
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv.i.i
  %i.vk = load <4 x float>, ptr %i.vj, align 1, !tbaa !17
  %i.vl = fmul fast <4 x float> %i.ve, %i.ud
  %i.vm = fmul fast <4 x float> %i.vg, %i.ue
  %i.vn = fadd fast <4 x float> %i.vl, %i.vm
  %i.vo = fmul fast <4 x float> %i.vi, %i.uf
  %i.vp = fadd fast <4 x float> %i.vo, %i.vn
  %i.vq = fmul fast <4 x float> %i.vk, %i.ug
  %i.vr = fadd fast <4 x float> %i.vq, %i.vp
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %indvars.iv.i.i
  %i.vt = bitcast <4 x float> %i.vr to <8 x i16>
  %i.vu = shufflevector <8 x i16> %i.vt, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.vv = bitcast <8 x i16> %i.vu to <4 x float>
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.vx = bitcast <4 x float> %i.vw to <2 x i64>
  %i.vy = extractelement <2 x i64> %i.vx, i64 0
  store i64 %i.vy, ptr %i.vs, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.vz = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.wa = icmp samesign ult i64 %i.vz, %i.bv
  br i1 %i.wa, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !228

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %.lr.ph47.i.i
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %.lr.ph47.i.i ], [ %indvars.iv49.i.i.ph, %.lr.ph47.i.i.preheader ] ; 6 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv49.i.i
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !70
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv49.i.i
  %i.we = load float, ptr %i.wd, align 4, !tbaa !70
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv49.i.i
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !70
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv49.i.i
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !70
  %i.wj = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.wk = insertelement <4 x float> %i.wj, float %i.we, i64 1
  %i.wl = insertelement <4 x float> %i.wk, float %i.wg, i64 2
  %i.wm = insertelement <4 x float> %i.wl, float %i.wi, i64 3
  %i.wn = fmul fast <4 x float> %i.wm, %i.uc
  %i.wo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.wn)
  %i.wp = bitcast float %i.wo to i32
  %i.wq = lshr i32 %i.wp, 16
  %i.wr = trunc nuw i32 %i.wq to i16
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ub, i64 %indvars.iv49.i.i
  store i16 %i.wr, ptr %i.ws, align 2, !tbaa !178
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %i.bv
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i, !llvm.loop !229

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph47.i.i, %middle.block279, %.preheader.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %.0436.i, i64 16
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !230

bb.an:                                            ; preds = %bb.ad
  %i.wu = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.wv = icmp eq i32 %i.wu, 1
  br i1 %i.wv, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ao:                                            ; preds = %bb.an
  %i.ww = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.ww, null
  %i.wx = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i313.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !9
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8
  invoke void %i.xa(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, ptr noundef %i.wx)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.as, !inline_history !46

bb.aq:                                            ; preds = %bb.ao
  %.not.i327.i = icmp eq ptr %i.wx, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.wx) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.as:                                            ; preds = %bb.ap
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %i.do, %bb.an ], [ %i.do, %bb.ad ], [ %i.do, %bb.ap ], [ %i.do, %bb.aq ], [ %i.do, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.xd = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i316.i = icmp eq ptr %i.xd, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.xe = atomicrmw add ptr %i.xd, i32 -1 acq_rel, align 4
  %i.xf = icmp eq i32 %i.xe, 1
  br i1 %i.xf, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.au:                                            ; preds = %bb.at
  %i.xg = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.xg, null
  %i.xh = load ptr, ptr %15, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i317.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.xi = load ptr, ptr %i.xg, align 8, !tbaa !9
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8
  invoke void %i.xk(ptr noundef nonnull align 8 dereferenceable(8) %i.xg, ptr noundef %i.xh)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.ay, !inline_history !46

bb.aw:                                            ; preds = %bb.au
  %.not.i325.i = icmp eq ptr %i.xh, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.xh) #6
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.ay:                                            ; preds = %bb.av
  %i.xl = landingpad { ptr, i32 }
          catch ptr null
  %i.xm = extractvalue { ptr, i32 } %i.xl, 0
  call void @__clang_call_terminate(ptr %i.xm) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.ab
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %.pn284.pn.pn.i, %bb.at ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.av ], [ %.pn284.pn.pn.i, %bb.aw ], [ %.pn284.pn.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.xn = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i320.i = icmp eq ptr %i.xn, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.xo = atomicrmw add ptr %i.xn, i32 -1 acq_rel, align 4
  %i.xp = icmp eq i32 %i.xo, 1
  br i1 %i.xp, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.xq = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.xq, null
  %i.xr = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i321.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xs = load ptr, ptr %i.xq, align 8, !tbaa !9
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8
  invoke void %i.xu(ptr noundef nonnull align 8 dereferenceable(8) %i.xq, ptr noundef %i.xr)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.be, !inline_history !46

bb.bc:                                            ; preds = %bb.ba
  %.not.i324.i = icmp eq ptr %i.xr, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.xr) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.be:                                            ; preds = %bb.bb
  %i.xv = landingpad { ptr, i32 }
          catch ptr null
  %i.xw = extractvalue { ptr, i32 } %i.xv, 0
  call void @__clang_call_terminate(ptr %i.xw) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.xx = phi i32 [ %.pr, %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bi, %_ZNK4ncnn3Mat7channelEi.exit ]
  %i.xy = icmp eq i32 %i.xx, 1
  br i1 %i.xy, label %bb.bg, label %_ZN4ncnn3MatD2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  %i.xz = load ptr, ptr %6, align 8, !tbaa !72    ; 5 uses
  %i.ya = load ptr, ptr %7, align 8, !tbaa !71    ; 6 uses
  %i.yb = load ptr, ptr %8, align 8, !tbaa !72
  %i.yc = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %.noexc49 unwind label %bb.dj

.noexc49:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.cf

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.az, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.cg

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13:bb.a
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %i.yk
  br i1 %exitcond361.not.i, label %.loopexit.i32, label %.lr.ph336.i, !llvm.loop !232

bb.cn:                                            ; preds = %bb.cl
  %i.acy = add nsw i32 %.0257341.i, 3
  %i.acz = icmp eq i32 %i.aah, %i.acy
  br i1 %i.acz, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ada = sext i32 %i.aah to i64
  %i.adb = mul i64 %i.ym, %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adb
  %i.add = add nsw i32 %i.aah, 1
  %i.ade = sext i32 %i.add to i64
  %i.adf = mul i64 %i.ym, %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adf
  %i.adh = add nsw i32 %i.aah, 2
  %i.adi = sext i32 %i.adh to i64
  %i.adj = mul i64 %i.ym, %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.adj
  br i1 %i.yi, label %.lr.ph333.i, label %.loopexit.i32

.lr.ph333.i:                                      ; preds = %bb.co, %.lr.ph333.i
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i, %.lr.ph333.i ], [ 0, %bb.co ] ; 5 uses
  %.0265332.i = phi ptr [ %i.aeq, %.lr.ph333.i ], [ %i.xz, %bb.co ] ; 2 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv352.i
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !25
  %i.adn = sext i32 %i.adm to i64                 ; 3 uses
  %i.ado = getelementptr inbounds [2 x i8], ptr %i.adc, i64 %i.adn
  %i.adp = getelementptr inbounds [2 x i8], ptr %i.adg, i64 %i.adn
  %i.adq = getelementptr inbounds [2 x i8], ptr %i.adk, i64 %i.adn
  %i.adr = getelementptr inbounds i8, ptr %i.ado, i64 -2
  %i.ads = load <4 x float>, ptr %.0265332.i, align 4, !tbaa !70 ; 3 uses
  %i.adt = load <4 x i16>, ptr %i.adr, align 2, !tbaa !178
  %i.adu = zext <4 x i16> %i.adt to <4 x i32>
  %i.adv = shl nuw <4 x i32> %i.adu, splat (i32 16)
  %i.adw = bitcast <4 x i32> %i.adv to <4 x float>
  %i.adx = fmul fast <4 x float> %i.ads, %i.adw
  %i.ady = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.adx)
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.ady, ptr %i.adz, align 4, !tbaa !70
  %i.aea = getelementptr inbounds i8, ptr %i.adp, i64 -2
  %i.aeb = load <4 x i16>, ptr %i.aea, align 2, !tbaa !178
  %i.aec = zext <4 x i16> %i.aeb to <4 x i32>
  %i.aed = shl nuw <4 x i32> %i.aec, splat (i32 16)
  %i.aee = bitcast <4 x i32> %i.aed to <4 x float>
  %i.aef = fmul fast <4 x float> %i.ads, %i.aee
  %i.aeg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aef)
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !70
  %i.aei = getelementptr inbounds i8, ptr %i.adq, i64 -2
  %i.aej = load <4 x i16>, ptr %i.aei, align 2, !tbaa !178
  %i.aek = zext <4 x i16> %i.aej to <4 x i32>
  %i.ael = shl nuw <4 x i32> %i.aek, splat (i32 16)
  %i.aem = bitcast <4 x i32> %i.ael to <4 x float>
  %i.aen = fmul fast <4 x float> %i.ads, %i.aem
  %i.aeo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aen)
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.aeo, ptr %i.aep, align 4, !tbaa !70
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0265332.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.yk
  br i1 %exitcond356.not.i, label %.loopexit.i32, label %.lr.ph333.i, !llvm.loop !233

bb.cp:                                            ; preds = %bb.cn
  %i.aer = add nsw i32 %i.aah, -1
  %i.aes = sext i32 %i.aer to i64
  %i.aet = mul i64 %i.ym, %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aet
  %i.aev = sext i32 %i.aah to i64
  %i.aew = mul i64 %i.ym, %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aew
  %i.aey = add nsw i32 %i.aah, 1
  %i.aez = sext i32 %i.aey to i64
  %i.afa = mul i64 %i.ym, %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.afa
  %i.afc = add nsw i32 %i.aah, 2
  %i.afd = sext i32 %i.afc to i64
  %i.afe = mul i64 %i.ym, %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.afe
  br i1 %i.yi, label %.lr.ph.i45, label %.loopexit.i32

.lr.ph.i45:                                       ; preds = %bb.cp, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %.lr.ph.i45 ], [ 0, %bb.cp ] ; 6 uses
  %.0264329.i = phi ptr [ %i.agu, %.lr.ph.i45 ], [ %i.xz, %bb.cp ] ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i46
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !25
  %i.afi = sext i32 %i.afh to i64                 ; 4 uses
  %i.afj = getelementptr inbounds [2 x i8], ptr %i.aeu, i64 %i.afi
  %i.afk = getelementptr inbounds [2 x i8], ptr %i.aex, i64 %i.afi
  %i.afl = getelementptr inbounds [2 x i8], ptr %i.afb, i64 %i.afi
  %i.afm = getelementptr inbounds [2 x i8], ptr %i.aff, i64 %i.afi
  %i.afn = getelementptr inbounds i8, ptr %i.afj, i64 -2
  %i.afo = load <4 x float>, ptr %.0264329.i, align 4, !tbaa !70 ; 4 uses
  %i.afp = load <4 x i16>, ptr %i.afn, align 2, !tbaa !178
  %i.afq = zext <4 x i16> %i.afp to <4 x i32>
  %i.afr = shl nuw <4 x i32> %i.afq, splat (i32 16)
  %i.afs = bitcast <4 x i32> %i.afr to <4 x float>
  %i.aft = fmul fast <4 x float> %i.afo, %i.afs
  %i.afu = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.aft)
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i46
  store float %i.afu, ptr %i.afv, align 4, !tbaa !70
  %i.afw = getelementptr inbounds i8, ptr %i.afk, i64 -2
  %i.afx = load <4 x i16>, ptr %i.afw, align 2, !tbaa !178
  %i.afy = zext <4 x i16> %i.afx to <4 x i32>
  %i.afz = shl nuw <4 x i32> %i.afy, splat (i32 16)
  %i.aga = bitcast <4 x i32> %i.afz to <4 x float>
  %i.agb = fmul fast <4 x float> %i.afo, %i.aga
  %i.agc = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agb)
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i46
  store float %i.agc, ptr %i.agd, align 4, !tbaa !70
  %i.age = getelementptr inbounds i8, ptr %i.afl, i64 -2
  %i.agf = load <4 x i16>, ptr %i.age, align 2, !tbaa !178
  %i.agg = zext <4 x i16> %i.agf to <4 x i32>
  %i.agh = shl nuw <4 x i32> %i.agg, splat (i32 16)
  %i.agi = bitcast <4 x i32> %i.agh to <4 x float>
  %i.agj = fmul fast <4 x float> %i.afo, %i.agi
  %i.agk = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agj)
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i46
  store float %i.agk, ptr %i.agl, align 4, !tbaa !70
  %i.agm = getelementptr inbounds i8, ptr %i.afm, i64 -2
  %i.agn = load <4 x i16>, ptr %i.agm, align 2, !tbaa !178
  %i.ago = zext <4 x i16> %i.agn to <4 x i32>
  %i.agp = shl nuw <4 x i32> %i.ago, splat (i32 16)
  %i.agq = bitcast <4 x i32> %i.agp to <4 x float>
  %i.agr = fmul fast <4 x float> %i.afo, %i.agq
  %i.ags = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.agr)
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i46
  store float %i.ags, ptr %i.agt, align 4, !tbaa !70
  %i.agu = getelementptr inbounds nuw i8, ptr %.0264329.i, i64 16
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %i.yk
  br i1 %exitcond.not.i48, label %.loopexit.i32, label %.lr.ph.i45, !llvm.loop !234

.loopexit.i32.loopexit.unr-lcssa:                 ; preds = %.lr.ph339.i
  br i1 %lcmp.mod.not, label %.loopexit.i32, label %.lr.ph339.i.epil.preheader

.lr.ph339.i.epil.preheader:                       ; preds = %.loopexit.i32.loopexit.unr-lcssa, %.lr.ph339.i.preheader
  %indvars.iv362.i.epil.init = phi i64 [ 0, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.1, %.loopexit.i32.loopexit.unr-lcssa ] ; 2 uses
  %.0260338.i.epil.init = phi ptr [ %i.xz, %.lr.ph339.i.preheader ], [ %i.abq, %.loopexit.i32.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv362.i.epil.init
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !25
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr inbounds [2 x i8], ptr %i.aao, i64 %i.agx
  %i.agz = getelementptr inbounds i8, ptr %i.agy, i64 -2
  %i.aha = load <4 x float>, ptr %.0260338.i.epil.init, align 4, !tbaa !70
  %i.ahb = load <4 x i16>, ptr %i.agz, align 2, !tbaa !178
  %i.ahc = zext <4 x i16> %i.ahb to <4 x i32>
  %i.ahd = shl nuw <4 x i32> %i.ahc, splat (i32 16)
  %i.ahe = bitcast <4 x i32> %i.ahd to <4 x float>
  %i.ahf = fmul fast <4 x float> %i.aha, %i.ahe
  %i.ahg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ahf)
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.epil.init
  store float %i.ahg, ptr %i.ahh, align 4, !tbaa !70
  br label %.loopexit.i32

.loopexit.i32:                                    ; preds = %.lr.ph.i45, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.epil.preheader, %.loopexit.i32.loopexit.unr-lcssa, %bb.cp, %bb.co, %bb.cm, %bb.ck, %bb.ci
  %.1256.i = phi ptr [ %.0255342.i, %bb.ci ], [ %.0249345.i, %bb.ck ], [ %.0251344.i, %bb.cm ], [ %.0253343.i, %bb.co ], [ %.0255342.i, %bb.cp ], [ %.0253343.i, %.lr.ph333.i ], [ %.0249345.i, %.lr.ph339.i.epil.preheader ], [ %.0251344.i, %.lr.ph336.i ], [ %.0249345.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0255342.i, %.lr.ph.i45 ] ; 4 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.ci ], [ %.0255342.i, %bb.ck ], [ %.0249345.i, %bb.cm ], [ %.0251344.i, %bb.co ], [ %.0253343.i, %bb.cp ], [ %.0251344.i, %.lr.ph333.i ], [ %.0255342.i, %.lr.ph339.i.epil.preheader ], [ %.0249345.i, %.lr.ph336.i ], [ %.0255342.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0253343.i, %.lr.ph.i45 ] ; 4 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.ci ], [ %.0253343.i, %bb.ck ], [ %.0255342.i, %bb.cm ], [ %.0249345.i, %bb.co ], [ %.0251344.i, %bb.cp ], [ %.0249345.i, %.lr.ph333.i ], [ %.0253343.i, %.lr.ph339.i.epil.preheader ], [ %.0255342.i, %.lr.ph336.i ], [ %.0253343.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0251344.i, %.lr.ph.i45 ] ; 4 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.ci ], [ %.0251344.i, %bb.ck ], [ %.0253343.i, %bb.cm ], [ %.0255342.i, %bb.co ], [ %.0249345.i, %bb.cp ], [ %.0255342.i, %.lr.ph333.i ], [ %.0251344.i, %.lr.ph339.i.epil.preheader ], [ %.0253343.i, %.lr.ph336.i ], [ %.0251344.i, %.loopexit.i32.loopexit.unr-lcssa ], [ %.0249345.i, %.lr.ph.i45 ] ; 4 uses
  %i.ahi = mul i64 %i.yl, %indvars.iv367.i
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ahi ; 3 uses
  %i.ahk = load <4 x float>, ptr %.0346.i, align 4, !tbaa !70 ; 5 uses
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahm = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ahn = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.aho = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.yj, label %.lr.ph.i.i41, label %.preheader.i.i33

.preheader.loopexit.i.i44:                        ; preds = %.lr.ph.i.i41
  %i.ahp = trunc nuw nsw i64 %indvars.iv.next.i.i43 to i32
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %.preheader.loopexit.i.i44, %.loopexit.i32
  %.0.lcssa.i.i34 = phi i32 [ 0, %.loopexit.i32 ], [ %i.ahp, %.preheader.loopexit.i.i44 ] ; 2 uses
  %i.ahq = icmp slt i32 %.0.lcssa.i.i34, %i.az
  br i1 %i.ahq, label %.lr.ph47.preheader.i.i36, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35

.lr.ph47.preheader.i.i36:                         ; preds = %.preheader.i.i33
  %i.ahr = zext i32 %.0.lcssa.i.i34 to i64        ; 4 uses
  %i.ahs = sub nsw i64 %i.yk, %i.ahr              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ahs, 4
  br i1 %min.iters.check, label %.lr.ph47.i.i37.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.preheader.i.i36
  %n.vec = and i64 %i.ahs, -4                     ; 3 uses
  %i.aht = add nsw i64 %n.vec, %i.ahr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ahu = add nuw i64 %index, %i.ahr             ; 5 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.ahu
  %wide.load = load <4 x float>, ptr %i.ahv, align 4, !tbaa !70
  %i.ahw = fmul fast <4 x float> %wide.load, %i.ahl
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.ahu
  %wide.load257 = load <4 x float>, ptr %i.ahx, align 4, !tbaa !70
  %i.ahy = fmul fast <4 x float> %wide.load257, %i.ahm
  %i.ahz = fadd fast <4 x float> %i.ahw, %i.ahy
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.ahu
  %wide.load258 = load <4 x float>, ptr %i.aia, align 4, !tbaa !70
  %i.aib = fmul fast <4 x float> %wide.load258, %i.ahn
  %i.aic = fadd fast <4 x float> %i.ahz, %i.aib
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.ahu
  %wide.load259 = load <4 x float>, ptr %i.aid, align 4, !tbaa !70
  %i.aie = fmul fast <4 x float> %wide.load259, %i.aho
  %i.aif = fadd fast <4 x float> %i.aic, %i.aie
  %i.aig = bitcast <4 x float> %i.aif to <4 x i32>
  %i.aih = lshr <4 x i32> %i.aig, splat (i32 16)
  %i.aii = trunc nuw <4 x i32> %i.aih to <4 x i16>
  %i.aij = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %i.ahu
  store <4 x i16> %i.aii, ptr %i.aij, align 2, !tbaa !178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aik = icmp eq i64 %index.next, %n.vec
  br i1 %i.aik, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ahs, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35, label %.lr.ph47.i.i37.preheader

.lr.ph47.i.i37.preheader:                         ; preds = %.lr.ph47.preheader.i.i36, %middle.block
  %indvars.iv49.i.i38.ph = phi i64 [ %i.ahr, %.lr.ph47.preheader.i.i36 ], [ %i.aht, %middle.block ]
  br label %.lr.ph47.i.i37

.lr.ph.i.i41:                                     ; preds = %.loopexit.i32, %.lr.ph.i.i41
  %indvars.iv.i.i42 = phi i64 [ %indvars.iv.next.i.i43, %.lr.ph.i.i41 ], [ 0, %.loopexit.i32 ] ; 6 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i42
  %i.aim = load <4 x float>, ptr %i.ail, align 1, !tbaa !17
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i42
  %i.aio = load <4 x float>, ptr %i.ain, align 1, !tbaa !17
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i42
  %i.aiq = load <4 x float>, ptr %i.aip, align 1, !tbaa !17
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i42
  %i.ais = load <4 x float>, ptr %i.air, align 1, !tbaa !17
  %i.ait = fmul fast <4 x float> %i.aim, %i.ahl
  %i.aiu = fmul fast <4 x float> %i.aio, %i.ahm
  %i.aiv = fadd fast <4 x float> %i.ait, %i.aiu
  %i.aiw = fmul fast <4 x float> %i.aiq, %i.ahn
  %i.aix = fadd fast <4 x float> %i.aiw, %i.aiv
  %i.aiy = fmul fast <4 x float> %i.ais, %i.aho
  %i.aiz = fadd fast <4 x float> %i.aiy, %i.aix
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %indvars.iv.i.i42
  %i.ajb = bitcast <4 x float> %i.aiz to <8 x i16>
  %i.ajc = shufflevector <8 x i16> %i.ajb, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ajd = bitcast <8 x i16> %i.ajc to <4 x float>
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ajf = bitcast <4 x float> %i.aje to <2 x i64>
  %i.ajg = extractelement <2 x i64> %i.ajf, i64 0
  store i64 %i.ajg, ptr %i.aja, align 1, !tbaa !17
  %indvars.iv.next.i.i43 = add nuw nsw i64 %indvars.iv.i.i42, 4 ; 3 uses
  %i.ajh = or disjoint i64 %indvars.iv.next.i.i43, 3
  %i.aji = icmp samesign ult i64 %i.ajh, %i.yk
  br i1 %i.aji, label %.lr.ph.i.i41, label %.preheader.loopexit.i.i44, !llvm.loop !228

.lr.ph47.i.i37:                                   ; preds = %.lr.ph47.i.i37.preheader, %.lr.ph47.i.i37
  %indvars.iv49.i.i38 = phi i64 [ %indvars.iv.next50.i.i39, %.lr.ph47.i.i37 ], [ %indvars.iv49.i.i38.ph, %.lr.ph47.i.i37.preheader ] ; 6 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv49.i.i38
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !70
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv49.i.i38
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !70
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv49.i.i38
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !70
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv49.i.i38
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !70
  %i.ajr = insertelement <4 x float> poison, float %i.ajk, i64 0
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ajm, i64 1
  %i.ajt = insertelement <4 x float> %i.ajs, float %i.ajo, i64 2
  %i.aju = insertelement <4 x float> %i.ajt, float %i.ajq, i64 3
  %i.ajv = fmul fast <4 x float> %i.aju, %i.ahk
  %i.ajw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ajv)
  %i.ajx = bitcast float %i.ajw to i32
  %i.ajy = lshr i32 %i.ajx, 16
  %i.ajz = trunc nuw i32 %i.ajy to i16
  %i.aka = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %indvars.iv49.i.i38
  store i16 %i.ajz, ptr %i.aka, align 2, !tbaa !178
  %indvars.iv.next50.i.i39 = add nuw nsw i64 %indvars.iv49.i.i38, 1 ; 2 uses
  %exitcond.not.i.i40 = icmp eq i64 %indvars.iv.next50.i.i39, %i.yk
  br i1 %exitcond.not.i.i40, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35, label %.lr.ph47.i.i37, !llvm.loop !236

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i35: ; preds = %.lr.ph47.i.i37, %middle.block, %.preheader.i.i33
  %i.akb = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i31, label %bb.ci, !llvm.loop !237

bb.cq:                                            ; preds = %bb.ch
  %i.akc = atomicrmw add ptr %i.aaf, i32 -1 acq_rel, align 4
  %i.akd = icmp eq i32 %i.akc, 1
  br i1 %i.akd, label %bb.cr, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cr:                                            ; preds = %bb.cq
  %i.ake = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.ake, null
  %i.akf = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i295.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.akg = load ptr, ptr %i.ake, align 8, !tbaa !9
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 24
  %i.aki = load ptr, ptr %i.akh, align 8
  invoke void %i.aki(ptr noundef nonnull align 8 dereferenceable(8) %i.ake, ptr noundef %i.akf)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.cv, !inline_history !46

bb.ct:                                            ; preds = %bb.cr
  %.not.i309.i = icmp eq ptr %i.akf, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef nonnull %i.akf) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.cv:                                            ; preds = %bb.cs
  %i.akj = landingpad { ptr, i32 }
          catch ptr null
  %i.akk = extractvalue { ptr, i32 } %i.akj, 0
  call void @__clang_call_terminate(ptr %i.akk) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.ch, %bb.cg
  %.pn.pn.i = phi { ptr, i32 } [ %i.aad, %bb.cg ], [ %i.aae, %bb.cq ], [ %i.aae, %bb.ch ], [ %i.aae, %bb.cs ], [ %i.aae, %bb.ct ], [ %i.aae, %bb.cu ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.akl = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.akl, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.akm = atomicrmw add ptr %i.akl, i32 -1 acq_rel, align 4
  %i.akn = icmp eq i32 %i.akm, 1
  br i1 %i.akn, label %bb.cx, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.cx:                                            ; preds = %bb.cw
  %i.ako = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.ako, null
  %i.akp = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i299.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.akq = load ptr, ptr %i.ako, align 8, !tbaa !9
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.aks = load ptr, ptr %i.akr, align 8
  invoke void %i.aks(ptr noundef nonnull align 8 dereferenceable(8) %i.ako, ptr noundef %i.akp)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.db, !inline_history !46

bb.cz:                                            ; preds = %bb.cx
  %.not.i307.i = icmp eq ptr %i.akp, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @free(ptr noundef nonnull %i.akp) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.db:                                            ; preds = %bb.cy
  %i.akt = landingpad { ptr, i32 }
          catch ptr null
  %i.aku = extractvalue { ptr, i32 } %i.akt, 0
  call void @__clang_call_terminate(ptr %i.aku) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.cf
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.aac, %bb.cf ], [ %.pn.pn.i, %bb.cw ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.cy ], [ %.pn.pn.i, %bb.cz ], [ %.pn.pn.i, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.akv = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.akv, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dc

bb.dc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.akw = atomicrmw add ptr %i.akv, i32 -1 acq_rel, align 4
  %i.akx = icmp eq i32 %i.akw, 1
  br i1 %i.akx, label %bb.dd, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dd:                                            ; preds = %bb.dc
  %i.aky = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.aky, null
  %i.akz = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i303.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ala = load ptr, ptr %i.aky, align 8, !tbaa !9
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 24
  %i.alc = load ptr, ptr %i.alb, align 8
  invoke void %i.alc(ptr noundef nonnull align 8 dereferenceable(8) %i.aky, ptr noundef %i.akz)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.dh, !inline_history !46

bb.df:                                            ; preds = %bb.dd
  %.not.i306.i = icmp eq ptr %i.akz, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @free(ptr noundef nonnull %i.akz) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dh:                                            ; preds = %bb.de
  %i.ald = landingpad { ptr, i32 }
          catch ptr null
  %i.ale = extractvalue { ptr, i32 } %i.ald, 0
  call void @__clang_call_terminate(ptr %i.ale) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.dg, %bb.df, %bb.de, %bb.dc, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bf
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.alf = load i32, ptr %i.b, align 4, !tbaa !25
  %i.alg = sext i32 %i.alf to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.alg
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.di

bb.di:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.dj:                                            ; preds = %bb.bg, %bb.c
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.dj, %_ZN4ncnn3MatD2Ev.exit.i30, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn284.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.alh, %bb.dj ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i30 ]
  %i.ali = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ali) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17
end_hunk_5
