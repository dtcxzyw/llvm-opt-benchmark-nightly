inline.NumInlined: 103
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a
  %i.de = fadd fast <8 x float> %i.da, %i.cs
  %i.df = fadd fast <8 x float> %i.db, %i.ct
  %i.dg = fadd fast <8 x float> %i.dc, %i.cu
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %i.cm ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  store <8 x float> %i.dd, ptr %i.dh, align 4, !tbaa !70
  store <8 x float> %i.de, ptr %i.di, align 4, !tbaa !70
  store <8 x float> %i.df, ptr %i.dj, align 4, !tbaa !70
  store <8 x float> %i.dg, ptr %i.dk, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge82, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph81.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.cd, -4                   ; 3 uses
  %i.dm = add nsw i64 %n.vec138, %i.cb
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.aw, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = add nuw i64 %index143, %i.cb            ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dn
  %wide.load144 = load <4 x float>, ptr %i.do, align 4, !tbaa !70
  %i.dp = fmul fast <4 x float> %wide.load144, %broadcast.splat140
  %i.dq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dn
  %wide.load145 = load <4 x float>, ptr %i.dq, align 4, !tbaa !70
  %i.dr = fmul fast <4 x float> %wide.load145, %broadcast.splat142
  %i.ds = fadd fast <4 x float> %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %i.dn
  store <4 x float> %i.ds, ptr %i.dt, align 4, !tbaa !70
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next146, %n.vec138
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %i.cd, %n.vec138
  br i1 %cmp.n147, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv102.ph = phi i64 [ %i.cb, %iter.check ], [ %i.cb, %vector.memcheck ], [ %i.cl, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 7 uses
  %i.dv = sub nsw i64 %wide.trip.count, %indvars.iv102.ph
  %xtraiter = and i64 %i.dv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv102.ph
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !70
  %i.dy = fmul fast float %i.dx, %i.au
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv102.ph
  %i.dz = load float, ptr %gep.prol, align 4, !tbaa !70
  %i.ea = fmul fast float %i.dz, %i.aw
  %i.eb = fadd fast float %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %indvars.iv102.ph
  store float %i.eb, ptr %i.ec, align 4, !tbaa !70
  %indvars.iv.next103.prol = add nuw nsw i64 %indvars.iv102.ph, 1
  br label %.lr.ph81.prol.loopexit

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %indvars.iv102.unr = phi i64 [ %indvars.iv102.ph, %.lr.ph81.preheader ], [ %indvars.iv.next103.prol, %.lr.ph81.prol ]
  %i.ed = add nsw i64 %wide.trip.count, -1
  %i.ee = icmp eq i64 %indvars.iv102.ph, %i.ed
  br i1 %i.ee, label %._crit_edge82, label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %indvars.iv99 = phi i64 [ %i.bx, %.lr.ph77.preheader ], [ %indvars.iv.next100, %.lr.ph77 ] ; 3 uses
  %i.ef = phi i32 [ %i.bq, %.lr.ph77.preheader ], [ %i.ep, %.lr.ph77 ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv99 ; 2 uses
  %i.eh = load <4 x float>, ptr %i.eg, align 16, !tbaa !17
  %i.ei = sext i32 %i.ef to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !17
  %i.el = fmul fast <4 x float> %i.eh, %i.bs
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %indvars.iv99
  store <4 x float> %i.em, ptr %i.en, align 16, !tbaa !17
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 4 ; 3 uses
  %i.eo = or disjoint i64 %indvars.iv.next100, 3
  %i.ep = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %i.eo, %i.eq
  br i1 %i.er, label %.lr.ph77, label %.preheader.loopexit, !llvm.loop !123

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.1, %.lr.ph81 ], [ %indvars.iv102.unr, %.lr.ph81.prol.loopexit ] ; 5 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv102
  %i.et = load float, ptr %i.es, align 4, !tbaa !70
  %i.eu = fmul fast float %i.et, %i.au
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv102
  %i.ev = load float, ptr %gep, align 4, !tbaa !70
  %i.ew = fmul fast float %i.ev, %i.aw
  %i.ex = fadd fast float %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %indvars.iv102
  store float %i.ex, ptr %i.ey, align 4, !tbaa !70
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next103
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !70
  %i.fb = fmul fast float %i.fa, %i.au
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next103
  %i.fc = load float, ptr %gep.1, align 4, !tbaa !70
  %i.fd = fmul fast float %i.fc, %i.aw
  %i.fe = fadd fast float %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.06385, i64 %indvars.iv.next103
  store float %i.fe, ptr %i.ff, align 4, !tbaa !70
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next103.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge82, label %.lr.ph81, !llvm.loop !124

._crit_edge82:                                    ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge82_crit_edge
  %.pre-phi = phi i64 [ %.pre112, %.preheader.._crit_edge82_crit_edge ], [ %i.cc, %middle.block ], [ %i.cc, %vec.epilog.middle.block ], [ %i.cc, %.lr.ph81 ], [ %i.cc, %.lr.ph81.prol.loopexit ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.06484, i64 8
  %i.fh = getelementptr inbounds [4 x i8], ptr %.06385, i64 %.pre-phi
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.fi = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next106, %i.fj
  br i1 %i.fk, label %.lr.ph87, label %._crit_edge88, !llvm.loop !125

._crit_edge93:                                    ; preds = %._crit_edge88, %.lr.ph92, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge93, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #12 {
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
  %spec.select = select i1 %.not, double %i.q, double %i.r
  %.085 = fptrunc double %spec.select to float    ; 2 uses
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
  %5 = fmul fast float %i.x, 6.000000e+00
  %6 = fsub fast float 3.750000e+00, %i.aa
  %reass.mul.i = fmul fast float %i.z, %6
  %i.ab = fsub fast float 3.000000e+00, %5
  %i.ac = fadd fast float %reass.mul.i, %i.ab     ; 4 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !126
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
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
  %.not123 = icmp sgt i32 %i.k, %i.j
  br i1 %.not123, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph126.split.preheader, label %._crit_edge127

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph126.split

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.preheader, %._crit_edge122
  %i.t = phi i32 [ %i.p, %.lr.ph126.split.preheader ], [ %i.am, %._crit_edge122 ] ; 2 uses
  %indvars.iv142 = phi i64 [ %i.r, %.lr.ph126.split.preheader ], [ %indvars.iv.next143, %._crit_edge122 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv142, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph121.preheader, label %._crit_edge122

.lr.ph121.preheader:                              ; preds = %.lr.ph126.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv142, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph121

._crit_edge122:                                   ; preds = %._crit_edge116, %.lr.ph126.split
  %i.am = phi i32 [ %i.t, %.lr.ph126.split ], [ %i.fr, %._crit_edge116 ]
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next143 to i32
  %exitcond145.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond145.not, label %._crit_edge127, label %.lr.ph126.split, !llvm.loop !127

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %._crit_edge116
  %i.an = phi i32 [ %.pre, %.lr.ph121.preheader ], [ %i.cu, %._crit_edge116 ] ; 4 uses
  %indvars.iv139 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next140, %._crit_edge116 ] ; 2 uses
  %.083119 = phi ptr [ %i.ak, %.lr.ph121.preheader ], [ %i.fq, %._crit_edge116 ] ; 6 uses
  %.084118 = phi ptr [ %i.ad, %.lr.ph121.preheader ], [ %i.fp, %._crit_edge116 ] ; 5 uses
  %.083119162 = ptrtoaddr ptr %.083119 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv139
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 8 uses
  %i.au = load float, ptr %.084118, align 4, !tbaa !70 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.084118, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.084118, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.084118, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 4 uses
  %i.bb = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bd = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <8 x float> %i.bd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bf = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <8 x float> %i.bf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bh = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph121 ] ; 3 uses
  %i.bk = phi i32 [ %i.cd, %.lr.ph ], [ %i.an, %.lr.ph121 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !17
  %i.bq = load <8 x float>, ptr %i.bl, align 32, !tbaa !17
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <8 x float>, ptr %i.br, align 32, !tbaa !17
  %i.bt = shl nsw i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load <8 x float>, ptr %i.bv, align 32, !tbaa !17
  %i.bx = fmul fast <8 x float> %i.bp, %i.bc
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.083119, i64 %indvars.iv
  store <8 x float> %i.ca, ptr %i.cb, align 32, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next, 7
  %i.cd = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !128

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph121
  %i.ch = phi i32 [ %i.an, %.lr.ph121 ], [ %i.cd, %._crit_edge.loopexit ] ; 3 uses
  %.086.lcssa = phi i32 [ 0, %.lr.ph121 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ci = insertelement <4 x float> poison, float %i.au, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = or disjoint i32 %.086.lcssa, 3
  %i.cr = icmp slt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.lr.ph111.preheader, label %.preheader

.lr.ph111.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.086.lcssa to i64
  br label %.lr.ph111

.preheader.loopexit:                              ; preds = %.lr.ph111
  %i.ct = trunc nuw nsw i64 %indvars.iv.next134 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %i.cu = phi i32 [ %i.ch, %._crit_edge ], [ %i.ex, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.086.lcssa, %._crit_edge ], [ %i.ct, %.preheader.loopexit ] ; 2 uses
  %i.cv = icmp slt i32 %.1.lcssa, %i.cu
  br i1 %i.cv, label %.lr.ph115, label %.preheader.._crit_edge116_crit_edge

.preheader.._crit_edge116_crit_edge:              ; preds = %.preheader
  %.pre146 = sext i32 %i.cu to i64
  br label %._crit_edge116

.lr.ph115:                                        ; preds = %.preheader
  %i.cw = shl nsw i32 %i.cu, 1
  %i.cx = zext i32 %.1.lcssa to i64               ; 5 uses
  %i.cy = sext i32 %i.cu to i64                   ; 7 uses
  %i.cz = sext i32 %i.cw to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.cu to i64        ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.cy ; 2 uses
  %invariant.gep158 = getelementptr [4 x i8], ptr %i.at, i64 %i.cz ; 2 uses
  %i.da = sub nsw i64 %wide.trip.count, %i.cx     ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph115
  %i.db = sub i64 %.083119162, %i.al              ; 2 uses
  %i.dc = add nsw i64 %i.as, %i.cz
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = sub i64 %i.dd, %i.db
  %diff.check = icmp ugt i64 %i.de, -32
  %i.df = add nsw i64 %i.cy, %i.as
  %i.dg = shl nsw i64 %i.df, 2
  %i.dh = sub i64 %i.dg, %i.db
  %diff.check163 = icmp ugt i64 %i.dh, -32
  %conflict.rdx = or i1 %diff.check, %diff.check163
  %i.di = sub i64 %.083119162, %i.al              ; 2 uses
  %i.dj = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.dk = sub i64 %i.dj, %i.di
  %diff.check164 = icmp ugt i64 %i.dk, -32
  %conflict.rdx165 = or i1 %conflict.rdx, %diff.check164
  %i.dl = shl nsw i64 %i.cy, 2
  %i.dm = add i64 %i.di, %i.dl
  %i.dn = sub i64 %i.dj, %i.dm
  %diff.check166 = icmp ugt i64 %i.dn, -32
  %conflict.rdx167 = or i1 %conflict.rdx165, %diff.check166
  br i1 %conflict.rdx167, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, -8                      ; 3 uses
  %i.do = add nsw i64 %n.vec, %i.cx
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat169 = shufflevector <8 x float> %broadcast.splatinsert168, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx               ; 5 uses
  %i.dq = sub nsw i64 %i.dp, %i.cy
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.dq
  %wide.load = load <8 x float>, ptr %i.dr, align 4, !tbaa !70
  %i.ds = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dp
  %wide.load174 = load <8 x float>, ptr %i.dt, align 4, !tbaa !70
  %i.du = fmul fast <8 x float> %wide.load174, %broadcast.splat169
  %i.dv = fadd fast <8 x float> %i.du, %i.ds
  %i.dw = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dp
  %wide.load175 = load <8 x float>, ptr %i.dw, align 4, !tbaa !70
  %i.dx = fmul fast <8 x float> %wide.load175, %broadcast.splat171
  %i.dy = fadd fast <8 x float> %i.dv, %i.dx
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep158, i64 %i.dp
  %wide.load176 = load <8 x float>, ptr %i.dz, align 4, !tbaa !70
  %i.ea = fmul fast <8 x float> %wide.load176, %broadcast.splat173
  %i.eb = fadd fast <8 x float> %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.083119, i64 %i.dp
  store <8 x float> %i.eb, ptr %i.ec, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %._crit_edge116, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph115, %middle.block
  %indvars.iv136.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph115 ], [ %i.do, %middle.block ]
  br label %scalar.ph

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %indvars.iv133 = phi i64 [ %i.cs, %.lr.ph111.preheader ], [ %indvars.iv.next134, %.lr.ph111 ] ; 3 uses
  %i.ee = phi i32 [ %i.ch, %.lr.ph111.preheader ], [ %i.ex, %.lr.ph111 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv133 ; 4 uses
  %i.eg = sext i32 %i.ee to i64                   ; 2 uses
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !tbaa !17
  %i.ek = load <4 x float>, ptr %i.ef, align 16, !tbaa !17
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !17
  %i.en = shl nsw i32 %i.ee, 1
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eo
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !17
  %i.er = fmul fast <4 x float> %i.ej, %i.cj
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.cl, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.em, <4 x float> nofpclass(nan inf) %i.cn, <4 x float> nofpclass(nan inf) %i.es)
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.083119, i64 %indvars.iv133
  store <4 x float> %i.eu, ptr %i.ev, align 16, !tbaa !17
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 4 ; 3 uses
  %i.ew = or disjoint i64 %indvars.iv.next134, 3
  %i.ex = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %i.ew, %i.ey
  br i1 %i.ez, label %.lr.ph111, label %.preheader.loopexit, !llvm.loop !130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %scalar.ph ], [ %indvars.iv136.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fa = sub nsw i64 %indvars.iv136, %i.cy
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !70
  %i.fd = fmul fast float %i.fc, %i.au
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv136
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !70
  %i.fg = fmul fast float %i.ff, %i.aw
  %i.fh = fadd fast float %i.fg, %i.fd
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.fi = load float, ptr %gep, align 4, !tbaa !70
  %i.fj = fmul fast float %i.fi, %i.ay
  %i.fk = fadd fast float %i.fh, %i.fj
  %gep159 = getelementptr [4 x i8], ptr %invariant.gep158, i64 %indvars.iv136
  %i.fl = load float, ptr %gep159, align 4, !tbaa !70
  %i.fm = fmul fast float %i.fl, %i.ba
  %i.fn = fadd fast float %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.083119, i64 %indvars.iv136
  store float %i.fn, ptr %i.fo, align 4, !tbaa !70
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge116, label %scalar.ph, !llvm.loop !131

._crit_edge116:                                   ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge116_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %.preheader.._crit_edge116_crit_edge ], [ %i.cy, %middle.block ], [ %i.cy, %scalar.ph ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.084118, i64 16
  %i.fq = getelementptr inbounds [4 x i8], ptr %.083119, i64 %.pre-phi
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.fr = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next140, %i.fs
  br i1 %i.ft, label %.lr.ph121, label %._crit_edge122, !llvm.loop !132

._crit_edge127:                                   ; preds = %._crit_edge122, %.lr.ph126, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !133
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !133
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !133 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !136
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !136
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !136 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !136
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !133
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
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !139

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
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !140

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
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3
end_hunk_0
begin_hunk_1_@_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
  %i.om = getelementptr inbounds nuw i8, ptr %.0262445.i, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !70
  %i.oo = insertelement <8 x float> poison, float %i.on, i64 0
  %i.op = shufflevector <8 x float> %i.oo, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.0262445.i, i64 8
  %i.or = load float, ptr %i.oq, align 4, !tbaa !70
  %i.os = insertelement <8 x float> poison, float %i.or, i64 0
  %i.ot = shufflevector <8 x float> %i.os, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0262445.i, i64 12
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !70
  %i.ow = insertelement <8 x float> poison, float %i.ov, i64 0
  %i.ox = shufflevector <8 x float> %i.ow, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.oy = getelementptr inbounds i8, ptr %i.of, i64 -32
  %i.oz = load <8 x float>, ptr %i.oy, align 32, !tbaa !17
  %i.pa = load <8 x float>, ptr %i.of, align 32, !tbaa !17
  %i.pb = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.pc = load <8 x float>, ptr %i.pb, align 32, !tbaa !17
  %i.pd = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  %i.pe = load <8 x float>, ptr %i.pd, align 32, !tbaa !17
  %i.pf = getelementptr inbounds i8, ptr %i.og, i64 -32
  %i.pg = load <8 x float>, ptr %i.pf, align 32, !tbaa !17
  %i.ph = load <8 x float>, ptr %i.og, align 32, !tbaa !17
  %i.pi = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.pj = load <8 x float>, ptr %i.pi, align 32, !tbaa !17
  %i.pk = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.pl = load <8 x float>, ptr %i.pk, align 32, !tbaa !17
  %i.pm = getelementptr inbounds i8, ptr %i.oh, i64 -32
  %i.pn = load <8 x float>, ptr %i.pm, align 32, !tbaa !17
  %i.po = load <8 x float>, ptr %i.oh, align 32, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.pq = load <8 x float>, ptr %i.pp, align 32, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.ps = load <8 x float>, ptr %i.pr, align 32, !tbaa !17
  %i.pt = getelementptr inbounds i8, ptr %i.oi, i64 -32
  %i.pu = load <8 x float>, ptr %i.pt, align 32, !tbaa !17
  %i.pv = load <8 x float>, ptr %i.oi, align 32, !tbaa !17
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.px = load <8 x float>, ptr %i.pw, align 32, !tbaa !17
  %i.py = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  %i.pz = load <8 x float>, ptr %i.py, align 32, !tbaa !17
  %i.qa = fmul fast <8 x float> %i.oz, %i.ol
  %i.qb = fmul fast <8 x float> %i.pg, %i.ol
  %i.qc = fmul fast <8 x float> %i.pn, %i.ol
  %i.qd = fmul fast <8 x float> %i.pu, %i.ol
  %i.qe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pa, <8 x float> nofpclass(nan inf) %i.op, <8 x float> nofpclass(nan inf) %i.qa)
  %i.qf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ph, <8 x float> nofpclass(nan inf) %i.op, <8 x float> nofpclass(nan inf) %i.qb)
  %i.qg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.po, <8 x float> nofpclass(nan inf) %i.op, <8 x float> nofpclass(nan inf) %i.qc)
  %i.qh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pv, <8 x float> nofpclass(nan inf) %i.op, <8 x float> nofpclass(nan inf) %i.qd)
  %i.qi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pc, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.qe)
  %i.qj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pj, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.qf)
  %i.qk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pq, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.qg)
  %i.ql = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.px, <8 x float> nofpclass(nan inf) %i.ot, <8 x float> nofpclass(nan inf) %i.qh)
  %i.qm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pe, <8 x float> nofpclass(nan inf) %i.ox, <8 x float> nofpclass(nan inf) %i.qi)
  %i.qn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pl, <8 x float> nofpclass(nan inf) %i.ox, <8 x float> nofpclass(nan inf) %i.qj)
  %i.qo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ps, <8 x float> nofpclass(nan inf) %i.ox, <8 x float> nofpclass(nan inf) %i.qk)
  %i.qp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pz, <8 x float> nofpclass(nan inf) %i.ox, <8 x float> nofpclass(nan inf) %i.ql)
  %i.qq = shl nuw nsw i64 %indvars.iv.i, 3        ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.0246461.i, i64 %i.qq
  store <8 x float> %i.qm, ptr %i.qr, align 32, !tbaa !17
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.0248460.i, i64 %i.qq
  store <8 x float> %i.qn, ptr %i.qs, align 32, !tbaa !17
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.0250459.i, i64 %i.qq
  store <8 x float> %i.qo, ptr %i.qt, align 32, !tbaa !17
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.0252458.i, i64 %i.qq
  store <8 x float> %i.qp, ptr %i.qu, align 32, !tbaa !17
  %i.qv = getelementptr inbounds nuw i8, ptr %.0262445.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !183

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph449.i, %.lr.ph452.i, %.lr.ph455.i, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ah
  %.1253.i = phi ptr [ %.0252458.i, %bb.ah ], [ %.0246461.i, %bb.aj ], [ %.0248460.i, %bb.al ], [ %.0250459.i, %bb.an ], [ %.0252458.i, %bb.ao ], [ %.0250459.i, %.lr.ph449.i ], [ %.0246461.i, %.lr.ph455.i ], [ %.0248460.i, %.lr.ph452.i ], [ %.0252458.i, %.lr.ph.i ] ; 6 uses
  %.1251.i = phi ptr [ %.0250459.i, %bb.ah ], [ %.0252458.i, %bb.aj ], [ %.0246461.i, %bb.al ], [ %.0248460.i, %bb.an ], [ %.0250459.i, %bb.ao ], [ %.0248460.i, %.lr.ph449.i ], [ %.0252458.i, %.lr.ph455.i ], [ %.0246461.i, %.lr.ph452.i ], [ %.0250459.i, %.lr.ph.i ] ; 6 uses
  %.1249.i = phi ptr [ %.0248460.i, %bb.ah ], [ %.0250459.i, %bb.aj ], [ %.0252458.i, %bb.al ], [ %.0246461.i, %bb.an ], [ %.0248460.i, %bb.ao ], [ %.0246461.i, %.lr.ph449.i ], [ %.0250459.i, %.lr.ph455.i ], [ %.0252458.i, %.lr.ph452.i ], [ %.0248460.i, %.lr.ph.i ] ; 6 uses
  %.1247.i = phi ptr [ %.0246461.i, %bb.ah ], [ %.0248460.i, %bb.aj ], [ %.0250459.i, %bb.al ], [ %.0252458.i, %bb.an ], [ %.0246461.i, %bb.ao ], [ %.0252458.i, %.lr.ph449.i ], [ %.0248460.i, %.lr.ph455.i ], [ %.0250459.i, %.lr.ph452.i ], [ %.0246461.i, %.lr.ph.i ] ; 6 uses
  %.1253.i421 = ptrtoaddr ptr %.1253.i to i64
  %.1251.i423 = ptrtoaddr ptr %.1251.i to i64
  %.1249.i426 = ptrtoaddr ptr %.1249.i to i64
  %.1247.i429 = ptrtoaddr ptr %.1247.i to i64
  %i.qw = load ptr, ptr %23, align 8, !tbaa !45   ; 2 uses
  %i.qx = ptrtoaddr ptr %i.qw to i64              ; 2 uses
  %i.qy = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.qz = sext i32 %i.qy to i64
  %i.ra = mul i64 %indvars.iv483.i, %i.qz
  %i.rb = load i64, ptr %i.al, align 8, !tbaa !29
  %i.rc = mul i64 %i.ra, %i.rb                    ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.rc ; 4 uses
  %i.re = load float, ptr %.0462.i, align 4, !tbaa !70 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0462.i, i64 4
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !70 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0462.i, i64 8
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !70 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0462.i, i64 12
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !70 ; 4 uses
  %i.rl = insertelement <8 x float> poison, float %i.re, i64 0
  %i.rm = shufflevector <8 x float> %i.rl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rn = insertelement <8 x float> poison, float %i.rg, i64 0
  %i.ro = shufflevector <8 x float> %i.rn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rp = insertelement <8 x float> poison, float %i.ri, i64 0
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rr = insertelement <8 x float> poison, float %i.rk, i64 0
  %i.rs = shufflevector <8 x float> %i.rr, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.eh, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.1247.i, i64 %indvars.iv.i.i
  %i.ru = load <8 x float>, ptr %i.rt, align 1, !tbaa !17
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.1249.i, i64 %indvars.iv.i.i
  %i.rw = load <8 x float>, ptr %i.rv, align 1, !tbaa !17
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.1251.i, i64 %indvars.iv.i.i
  %i.ry = load <8 x float>, ptr %i.rx, align 1, !tbaa !17
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.1253.i, i64 %indvars.iv.i.i
  %i.sa = load <8 x float>, ptr %i.rz, align 1, !tbaa !17
  %i.sb = fmul fast <8 x float> %i.ru, %i.rm
  %i.sc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rw, <8 x float> nofpclass(nan inf) %i.ro, <8 x float> nofpclass(nan inf) %i.sb)
  %i.sd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ry, <8 x float> nofpclass(nan inf) %i.rq, <8 x float> nofpclass(nan inf) %i.sc)
  %i.se = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sa, <8 x float> nofpclass(nan inf) %i.rs, <8 x float> nofpclass(nan inf) %i.sd)
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i.i
  store <8 x float> %i.se, ptr %i.sf, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %i.sg = or disjoint i64 %indvars.iv.next.i.i, 7
  %i.sh = icmp samesign ult i64 %i.sg, %i.ej
  br i1 %i.sh, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !184

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.si = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.si, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.sj = insertelement <4 x float> poison, float %i.re, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sn = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sp = insertelement <4 x float> poison, float %i.rk, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = or disjoint i32 %.0.lcssa.i.i, 3
  %i.ss = icmp slt i32 %i.sr, %i.ei
  br i1 %i.ss, label %.lr.ph75.preheader.i.i, label %.preheader.i.i

.lr.ph75.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.st = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph75.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph75.i.i
  %i.su = trunc nuw nsw i64 %indvars.iv.next83.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.su, %.preheader.loopexit.i.i ] ; 2 uses
  %i.sv = icmp slt i32 %.1.lcssa.i.i, %i.ei
  br i1 %i.sv, label %.lr.ph78.preheader.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i

.lr.ph78.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.sw = zext i32 %.1.lcssa.i.i to i64           ; 5 uses
  %i.sx = sub nsw i64 %i.ej, %i.sw                ; 3 uses
  %min.iters.check433 = icmp ult i64 %i.sx, 8
  br i1 %min.iters.check433, label %.lr.ph78.i.i.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph78.preheader.i.i
  %i.sy = add i64 %i.rc, %i.qx                    ; 2 uses
  %i.sz = sub i64 %.1253.i421, %i.sy
  %diff.check422 = icmp ugt i64 %i.sz, -32
  %i.ta = sub i64 %.1251.i423, %i.sy
  %diff.check424 = icmp ugt i64 %i.ta, -32
  %conflict.rdx425 = or i1 %diff.check422, %diff.check424
  %i.tb = add i64 %i.rc, %i.qx                    ; 2 uses
  %i.tc = sub i64 %.1249.i426, %i.tb
  %diff.check427 = icmp ugt i64 %i.tc, -32
  %conflict.rdx428 = or i1 %conflict.rdx425, %diff.check427
  %i.td = sub i64 %.1247.i429, %i.tb
  %diff.check430 = icmp ugt i64 %i.td, -32
  %conflict.rdx431 = or i1 %conflict.rdx428, %diff.check430
  br i1 %conflict.rdx431, label %.lr.ph78.i.i.preheader, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck420
  %n.vec435 = and i64 %i.sx, -8                   ; 3 uses
  %i.te = add nsw i64 %n.vec435, %i.sw
  %broadcast.splatinsert436 = insertelement <8 x float> poison, float %i.re, i64 0
  %broadcast.splat437 = shufflevector <8 x float> %broadcast.splatinsert436, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.rg, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <8 x float> poison, float %i.ri, i64 0
  %broadcast.splat441 = shufflevector <8 x float> %broadcast.splatinsert440, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <8 x float> poison, float %i.rk, i64 0
  %broadcast.splat443 = shufflevector <8 x float> %broadcast.splatinsert442, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph434
  %index445 = phi i64 [ 0, %vector.ph434 ], [ %index.next450, %vector.body444 ] ; 2 uses
  %i.tf = add nuw i64 %index445, %i.sw            ; 5 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.1247.i, i64 %i.tf
  %wide.load446 = load <8 x float>, ptr %i.tg, align 4, !tbaa !70
  %i.th = fmul fast <8 x float> %wide.load446, %broadcast.splat437
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.1249.i, i64 %i.tf
  %wide.load447 = load <8 x float>, ptr %i.ti, align 4, !tbaa !70
  %i.tj = fmul fast <8 x float> %wide.load447, %broadcast.splat439
  %i.tk = fadd fast <8 x float> %i.tj, %i.th
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.1251.i, i64 %i.tf
  %wide.load448 = load <8 x float>, ptr %i.tl, align 4, !tbaa !70
  %i.tm = fmul fast <8 x float> %wide.load448, %broadcast.splat441
  %i.tn = fadd fast <8 x float> %i.tk, %i.tm
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.1253.i, i64 %i.tf
  %wide.load449 = load <8 x float>, ptr %i.to, align 4, !tbaa !70
  %i.tp = fmul fast <8 x float> %wide.load449, %broadcast.splat443
  %i.tq = fadd fast <8 x float> %i.tn, %i.tp
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %i.tf
  store <8 x float> %i.tq, ptr %i.tr, align 4, !tbaa !70
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.ts = icmp eq i64 %index.next450, %n.vec435
  br i1 %i.ts, label %middle.block451, label %vector.body444, !llvm.loop !185

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %i.sx, %n.vec435
  br i1 %cmp.n452, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph78.i.i.preheader

.lr.ph78.i.i.preheader:                           ; preds = %vector.memcheck420, %.lr.ph78.preheader.i.i, %middle.block451
  %indvars.iv85.i.i.ph = phi i64 [ %i.sw, %vector.memcheck420 ], [ %i.sw, %.lr.ph78.preheader.i.i ], [ %i.te, %middle.block451 ]
  br label %.lr.ph78.i.i

.lr.ph75.i.i:                                     ; preds = %.lr.ph75.i.i, %.lr.ph75.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.st, %.lr.ph75.preheader.i.i ], [ %indvars.iv.next83.i.i, %.lr.ph75.i.i ] ; 6 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.1247.i, i64 %indvars.iv82.i.i
  %i.tu = load <4 x float>, ptr %i.tt, align 1, !tbaa !17
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.1249.i, i64 %indvars.iv82.i.i
  %i.tw = load <4 x float>, ptr %i.tv, align 1, !tbaa !17
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.1251.i, i64 %indvars.iv82.i.i
  %i.ty = load <4 x float>, ptr %i.tx, align 1, !tbaa !17
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.1253.i, i64 %indvars.iv82.i.i
  %i.ua = load <4 x float>, ptr %i.tz, align 1, !tbaa !17
  %i.ub = fmul fast <4 x float> %i.tu, %i.sk
  %i.uc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.tw, <4 x float> nofpclass(nan inf) %i.sm, <4 x float> nofpclass(nan inf) %i.ub)
  %i.ud = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ty, <4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) %i.uc)
  %i.ue = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ua, <4 x float> nofpclass(nan inf) %i.sq, <4 x float> nofpclass(nan inf) %i.ud)
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv82.i.i
  store <4 x float> %i.ue, ptr %i.uf, align 1, !tbaa !17
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 4 ; 3 uses
  %i.ug = icmp slt i64 %indvars.iv.next83.i.i, %invariant.op.i.i
  br i1 %i.ug, label %.lr.ph75.i.i, label %.preheader.loopexit.i.i, !llvm.loop !186

.lr.ph78.i.i:                                     ; preds = %.lr.ph78.i.i.preheader, %.lr.ph78.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %.lr.ph78.i.i ], [ %indvars.iv85.i.i.ph, %.lr.ph78.i.i.preheader ] ; 6 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %.1247.i, i64 %indvars.iv85.i.i
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !70
  %i.uj = fmul fast float %i.ui, %i.re
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.1249.i, i64 %indvars.iv85.i.i
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !70
  %i.um = fmul fast float %i.ul, %i.rg
  %i.un = fadd fast float %i.um, %i.uj
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.1251.i, i64 %indvars.iv85.i.i
  %i.up = load float, ptr %i.uo, align 4, !tbaa !70
  %i.uq = fmul fast float %i.up, %i.ri
  %i.ur = fadd fast float %i.un, %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.1253.i, i64 %indvars.iv85.i.i
  %i.ut = load float, ptr %i.us, align 4, !tbaa !70
  %i.uu = fmul fast float %i.ut, %i.rk
  %i.uv = fadd fast float %i.ur, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv85.i.i
  store float %i.uv, ptr %i.uw, align 4, !tbaa !70
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next86.i.i, %i.ej
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph78.i.i, !llvm.loop !187

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i: ; preds = %.lr.ph78.i.i, %middle.block451, %.preheader.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.0462.i, i64 16
  %indvars.iv.next484.i = add nuw nsw i64 %indvars.iv483.i, 1 ; 2 uses
  %exitcond487.not.i = icmp eq i64 %indvars.iv.next484.i, %wide.trip.count486.i
  br i1 %exitcond487.not.i, label %._crit_edge.i, label %bb.ah, !llvm.loop !188

bb.ap:                                            ; preds = %bb.ag
  %i.uy = atomicrmw add ptr %i.gb, i32 -1 acq_rel, align 4
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.aq, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.aq:                                            ; preds = %bb.ap
  %i.va = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.va, null
  %i.vb = load ptr, ptr %20, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i313.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.vc = load ptr, ptr %i.va, align 8, !tbaa !9
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  invoke void %i.ve(ptr noundef nonnull align 8 dereferenceable(8) %i.va, ptr noundef %i.vb)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.au, !inline_history !46

bb.as:                                            ; preds = %bb.aq
  %.not.i327.i = icmp eq ptr %i.vb, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef nonnull %i.vb) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.au:                                            ; preds = %bb.ar
  %i.vf = landingpad { ptr, i32 }
          catch ptr null
  %i.vg = extractvalue { ptr, i32 } %i.vf, 0
  call void @__clang_call_terminate(ptr %i.vg) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ag, %bb.af
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.fz, %bb.af ], [ %i.ga, %bb.ap ], [ %i.ga, %bb.ag ], [ %i.ga, %bb.ar ], [ %i.ga, %bb.as ], [ %i.ga, %bb.at ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #6
  %i.vh = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %.not.i316.i = icmp eq ptr %i.vh, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.av

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.vi = atomicrmw add ptr %i.vh, i32 -1 acq_rel, align 4
  %i.vj = icmp eq i32 %i.vi, 1
  br i1 %i.vj, label %bb.aw, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.aw:                                            ; preds = %bb.av
  %i.vk = load ptr, ptr %i.az, align 8, !tbaa !44 ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.vk, null
  %i.vl = load ptr, ptr %19, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i317.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.vm = load ptr, ptr %i.vk, align 8, !tbaa !9
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  invoke void %i.vo(ptr noundef nonnull align 8 dereferenceable(8) %i.vk, ptr noundef %i.vl)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.ba, !inline_history !46

bb.ay:                                            ; preds = %bb.aw
  %.not.i325.i = icmp eq ptr %i.vl, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.vl) #6
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.ba:                                            ; preds = %bb.ax
  %i.vp = landingpad { ptr, i32 }
          catch ptr null
  %i.vq = extractvalue { ptr, i32 } %i.vp, 0
  call void @__clang_call_terminate(ptr %i.vq) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.ae
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.fy, %bb.ae ], [ %.pn284.pn.pn.i, %bb.av ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.ax ], [ %.pn284.pn.pn.i, %bb.ay ], [ %.pn284.pn.pn.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  %i.vr = load ptr, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.vr, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.vs = atomicrmw add ptr %i.vr, i32 -1 acq_rel, align 4
  %i.vt = icmp eq i32 %i.vs, 1
  br i1 %i.vt, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.vu = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.vu, null
  %i.vv = load ptr, ptr %18, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i321.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vw = load ptr, ptr %i.vu, align 8, !tbaa !9
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = load ptr, ptr %i.vx, align 8
  invoke void %i.vy(ptr noundef nonnull align 8 dereferenceable(8) %i.vu, ptr noundef %i.vv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bg, !inline_history !46

bb.be:                                            ; preds = %bb.bc
  %.not.i324.i = icmp eq ptr %i.vv, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.vv) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bg:                                            ; preds = %bb.bd
  %i.vz = landingpad { ptr, i32 }
          catch ptr null
  %i.wa = extractvalue { ptr, i32 } %i.vz, 0
  call void @__clang_call_terminate(ptr %i.wa) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.y, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZN4ncnn3Mat7channelEi.exit
  %i.wb = phi i32 [ %.pr, %_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.dw, %_ZN4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.wc = icmp eq i32 %i.wb, 4
  br i1 %i.wc, label %bb.bi, label %bb.dk

bb.bi:                                            ; preds = %bb.bh
  %i.wd = load ptr, ptr %6, align 8, !tbaa !72    ; 8 uses
  %i.we = load ptr, ptr %7, align 8, !tbaa !71    ; 8 uses
  %i.wf = load ptr, ptr %8, align 8, !tbaa !72
  %i.wg = load ptr, ptr %9, align 8, !tbaa !71
  %i.wh = load i32, ptr %i.ap, align 4, !tbaa !26 ; 12 uses
  %i.wi = load i32, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  store i64 0, ptr %i.bj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.wh, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc60 unwind label %bb.gf

.noexc60:                                         ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  store i64 0, ptr %i.bm, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bl, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.wh, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit771.i unwind label %bb.ch

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit771.i:      ; preds = %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  store i64 0, ptr %i.bp, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.wh, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit769.i unwind label %bb.ci

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit769.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit771.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  store i64 0, ptr %i.bs, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.wh, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31 unwind label %bb.cj

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit769.i
  %i.wj = icmp sgt i32 %i.wi, 0
  br i1 %i.wj, label %.lr.ph1092.i, label %._crit_edge.i32

.lr.ph1092.i:                                     ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31
  %i.wk = load ptr, ptr %17, align 8, !tbaa !45
  %i.wl = load ptr, ptr %16, align 8, !tbaa !45
  %i.wm = load ptr, ptr %15, align 8, !tbaa !45
  %i.wn = load ptr, ptr %14, align 8, !tbaa !45
  %i.wo = icmp sgt i32 %i.wh, 1                   ; 5 uses
  %i.wp = shl i32 %i.wh, 2                        ; 3 uses
  %i.wq = zext i32 %i.wp to i64                   ; 4 uses
  %invariant.op.i.i33 = add nsw i64 %i.wq, -3
  %i.wr = sext i32 %i.wh to i64
  %wide.trip.count1134.i = zext nneg i32 %i.wi to i64
end_hunk_1
begin_hunk_2_@_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
  %i.awr = getelementptr inbounds nuw i8, ptr %.16571059.i, i64 4
  %i.aws = load float, ptr %i.awr, align 4, !tbaa !70
  %i.awt = insertelement <4 x float> poison, float %i.aws, i64 0
  %i.awu = shufflevector <4 x float> %i.awt, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %.16571059.i, i64 8
  %i.aww = load float, ptr %i.awv, align 4, !tbaa !70
  %i.awx = insertelement <4 x float> poison, float %i.aww, i64 0
  %i.awy = shufflevector <4 x float> %i.awx, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %.16571059.i, i64 12
  %i.axa = load float, ptr %i.awz, align 4, !tbaa !70
  %i.axb = insertelement <4 x float> poison, float %i.axa, i64 0
  %i.axc = shufflevector <4 x float> %i.axb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.axd = getelementptr inbounds i8, ptr %i.awk, i64 -16
  %i.axe = load <4 x float>, ptr %i.axd, align 16, !tbaa !17
  %i.axf = load <4 x float>, ptr %i.awk, align 16, !tbaa !17
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.axh = load <4 x float>, ptr %i.axg, align 16, !tbaa !17
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.axj = load <4 x float>, ptr %i.axi, align 16, !tbaa !17
  %i.axk = getelementptr inbounds i8, ptr %i.awl, i64 -16
  %i.axl = load <4 x float>, ptr %i.axk, align 16, !tbaa !17
  %i.axm = load <4 x float>, ptr %i.awl, align 16, !tbaa !17
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awl, i64 16
  %i.axo = load <4 x float>, ptr %i.axn, align 16, !tbaa !17
  %i.axp = getelementptr inbounds nuw i8, ptr %i.awl, i64 32
  %i.axq = load <4 x float>, ptr %i.axp, align 16, !tbaa !17
  %i.axr = getelementptr inbounds i8, ptr %i.awm, i64 -16
  %i.axs = load <4 x float>, ptr %i.axr, align 16, !tbaa !17
  %i.axt = load <4 x float>, ptr %i.awm, align 16, !tbaa !17
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.axv = load <4 x float>, ptr %i.axu, align 16, !tbaa !17
  %i.axw = getelementptr inbounds nuw i8, ptr %i.awm, i64 32
  %i.axx = load <4 x float>, ptr %i.axw, align 16, !tbaa !17
  %i.axy = getelementptr inbounds i8, ptr %i.awn, i64 -16
  %i.axz = load <4 x float>, ptr %i.axy, align 16, !tbaa !17
  %i.aya = load <4 x float>, ptr %i.awn, align 16, !tbaa !17
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.ayc = load <4 x float>, ptr %i.ayb, align 16, !tbaa !17
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.awn, i64 32
  %i.aye = load <4 x float>, ptr %i.ayd, align 16, !tbaa !17
  %i.ayf = fmul fast <4 x float> %i.axe, %i.awq
  %i.ayg = fmul fast <4 x float> %i.axl, %i.awq
  %i.ayh = fmul fast <4 x float> %i.axs, %i.awq
  %i.ayi = fmul fast <4 x float> %i.axz, %i.awq
  %i.ayj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axf, <4 x float> nofpclass(nan inf) %i.awu, <4 x float> nofpclass(nan inf) %i.ayf)
  %i.ayk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axm, <4 x float> nofpclass(nan inf) %i.awu, <4 x float> nofpclass(nan inf) %i.ayg)
  %i.ayl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axt, <4 x float> nofpclass(nan inf) %i.awu, <4 x float> nofpclass(nan inf) %i.ayh)
  %i.aym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aya, <4 x float> nofpclass(nan inf) %i.awu, <4 x float> nofpclass(nan inf) %i.ayi)
  %i.ayn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axh, <4 x float> nofpclass(nan inf) %i.awy, <4 x float> nofpclass(nan inf) %i.ayj)
  %i.ayo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axo, <4 x float> nofpclass(nan inf) %i.awy, <4 x float> nofpclass(nan inf) %i.ayk)
  %i.ayp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axv, <4 x float> nofpclass(nan inf) %i.awy, <4 x float> nofpclass(nan inf) %i.ayl)
  %i.ayq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayc, <4 x float> nofpclass(nan inf) %i.awy, <4 x float> nofpclass(nan inf) %i.aym)
  %i.ayr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axj, <4 x float> nofpclass(nan inf) %i.axc, <4 x float> nofpclass(nan inf) %i.ayn)
  %i.ays = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axq, <4 x float> nofpclass(nan inf) %i.axc, <4 x float> nofpclass(nan inf) %i.ayo)
  %i.ayt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axx, <4 x float> nofpclass(nan inf) %i.axc, <4 x float> nofpclass(nan inf) %i.ayp)
  %i.ayu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aye, <4 x float> nofpclass(nan inf) %i.axc, <4 x float> nofpclass(nan inf) %i.ayq)
  %i.ayv = shl nuw nsw i64 %indvars.iv1104.i, 2   ; 4 uses
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %.06341090.i, i64 %i.ayv
  store <4 x float> %i.ayr, ptr %i.ayw, align 16, !tbaa !17
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %.06361089.i, i64 %i.ayv
  store <4 x float> %i.ays, ptr %i.ayx, align 16, !tbaa !17
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %.06381088.i, i64 %i.ayv
  store <4 x float> %i.ayt, ptr %i.ayy, align 16, !tbaa !17
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %.06401087.i, i64 %i.ayv
  store <4 x float> %i.ayu, ptr %i.ayz, align 16, !tbaa !17
  %i.aza = getelementptr inbounds nuw i8, ptr %.16571059.i, i64 16
  %indvars.iv.next1105.i = add nuw nsw i64 %indvars.iv1104.i, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next1105.i, %wide.trip.count.i34
  br i1 %exitcond.not.i55, label %.loopexit.i35, label %.lr.ph1060.i, !llvm.loop !196

.loopexit.i35:                                    ; preds = %.lr.ph1060.i, %.lr.ph1068.i, %.lr.ph1076.i, %.lr.ph1084.i, %.preheader1053.i, %.preheader1051.i, %.preheader1049.i, %.preheader.i, %bb.ck
  %.1641.i = phi ptr [ %.06401087.i, %bb.ck ], [ %.06341090.i, %.preheader.i ], [ %.06361089.i, %.preheader1049.i ], [ %.06381088.i, %.preheader1051.i ], [ %.06401087.i, %.preheader1053.i ], [ %.06381088.i, %.lr.ph1068.i ], [ %.06341090.i, %.lr.ph1084.i ], [ %.06361089.i, %.lr.ph1076.i ], [ %.06401087.i, %.lr.ph1060.i ] ; 6 uses
  %.1639.i = phi ptr [ %.06381088.i, %bb.ck ], [ %.06401087.i, %.preheader.i ], [ %.06341090.i, %.preheader1049.i ], [ %.06361089.i, %.preheader1051.i ], [ %.06381088.i, %.preheader1053.i ], [ %.06361089.i, %.lr.ph1068.i ], [ %.06401087.i, %.lr.ph1084.i ], [ %.06341090.i, %.lr.ph1076.i ], [ %.06381088.i, %.lr.ph1060.i ] ; 6 uses
  %.1637.i = phi ptr [ %.06361089.i, %bb.ck ], [ %.06381088.i, %.preheader.i ], [ %.06401087.i, %.preheader1049.i ], [ %.06341090.i, %.preheader1051.i ], [ %.06361089.i, %.preheader1053.i ], [ %.06341090.i, %.lr.ph1068.i ], [ %.06381088.i, %.lr.ph1084.i ], [ %.06401087.i, %.lr.ph1076.i ], [ %.06361089.i, %.lr.ph1060.i ] ; 6 uses
  %.1635.i = phi ptr [ %.06341090.i, %bb.ck ], [ %.06361089.i, %.preheader.i ], [ %.06381088.i, %.preheader1049.i ], [ %.06401087.i, %.preheader1051.i ], [ %.06341090.i, %.preheader1053.i ], [ %.06401087.i, %.lr.ph1068.i ], [ %.06361089.i, %.lr.ph1084.i ], [ %.06381088.i, %.lr.ph1076.i ], [ %.06341090.i, %.lr.ph1060.i ] ; 6 uses
  %.1641.i387 = ptrtoaddr ptr %.1641.i to i64
  %.1639.i389 = ptrtoaddr ptr %.1639.i to i64
  %.1637.i392 = ptrtoaddr ptr %.1637.i to i64
  %.1635.i395 = ptrtoaddr ptr %.1635.i to i64
  %i.azb = load ptr, ptr %23, align 8, !tbaa !45  ; 2 uses
  %i.azc = ptrtoaddr ptr %i.azb to i64            ; 2 uses
  %i.azd = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.aze = sext i32 %i.azd to i64
  %i.azf = mul i64 %indvars.iv1131.i, %i.aze
  %i.azg = load i64, ptr %i.al, align 8, !tbaa !29
  %i.azh = mul i64 %i.azf, %i.azg                 ; 3 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azb, i64 %i.azh ; 4 uses
  %i.azj = load float, ptr %.01091.i, align 4, !tbaa !70 ; 4 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %.01091.i, i64 4
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !70 ; 4 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %.01091.i, i64 8
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !70 ; 4 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %.01091.i, i64 12
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !70 ; 4 uses
  %i.azq = insertelement <8 x float> poison, float %i.azj, i64 0
  %i.azr = shufflevector <8 x float> %i.azq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.azs = insertelement <8 x float> poison, float %i.azl, i64 0
  %i.azt = shufflevector <8 x float> %i.azs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.azu = insertelement <8 x float> poison, float %i.azn, i64 0
  %i.azv = shufflevector <8 x float> %i.azu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.azw = insertelement <8 x float> poison, float %i.azp, i64 0
  %i.azx = shufflevector <8 x float> %i.azw, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.wo, label %.lr.ph.i.i51, label %._crit_edge.i.i36

.lr.ph.i.i51:                                     ; preds = %.loopexit.i35, %.lr.ph.i.i51
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i53, %.lr.ph.i.i51 ], [ 0, %.loopexit.i35 ] ; 6 uses
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %.1635.i, i64 %indvars.iv.i.i52
  %i.azz = load <8 x float>, ptr %i.azy, align 1, !tbaa !17
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %.1637.i, i64 %indvars.iv.i.i52
  %i.bab = load <8 x float>, ptr %i.baa, align 1, !tbaa !17
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %.1639.i, i64 %indvars.iv.i.i52
  %i.bad = load <8 x float>, ptr %i.bac, align 1, !tbaa !17
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %.1641.i, i64 %indvars.iv.i.i52
  %i.baf = load <8 x float>, ptr %i.bae, align 1, !tbaa !17
  %i.bag = fmul fast <8 x float> %i.azz, %i.azr
  %i.bah = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bab, <8 x float> nofpclass(nan inf) %i.azt, <8 x float> nofpclass(nan inf) %i.bag)
  %i.bai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bad, <8 x float> nofpclass(nan inf) %i.azv, <8 x float> nofpclass(nan inf) %i.bah)
  %i.baj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.baf, <8 x float> nofpclass(nan inf) %i.azx, <8 x float> nofpclass(nan inf) %i.bai)
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %indvars.iv.i.i52
  store <8 x float> %i.baj, ptr %i.bak, align 1, !tbaa !17
  %indvars.iv.next.i.i53 = add nuw nsw i64 %indvars.iv.i.i52, 8 ; 3 uses
  %i.bal = or disjoint i64 %indvars.iv.next.i.i53, 7
  %i.bam = icmp samesign ult i64 %i.bal, %i.wq
  br i1 %i.bam, label %.lr.ph.i.i51, label %._crit_edge.loopexit.i.i54, !llvm.loop !184

._crit_edge.loopexit.i.i54:                       ; preds = %.lr.ph.i.i51
  %i.ban = trunc nuw nsw i64 %indvars.iv.next.i.i53 to i32
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %._crit_edge.loopexit.i.i54, %.loopexit.i35
  %.0.lcssa.i.i37 = phi i32 [ 0, %.loopexit.i35 ], [ %i.ban, %._crit_edge.loopexit.i.i54 ] ; 3 uses
  %i.bao = insertelement <4 x float> poison, float %i.azj, i64 0
  %i.bap = shufflevector <4 x float> %i.bao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.baq = insertelement <4 x float> poison, float %i.azl, i64 0
  %i.bar = shufflevector <4 x float> %i.baq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bas = insertelement <4 x float> poison, float %i.azn, i64 0
  %i.bat = shufflevector <4 x float> %i.bas, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bau = insertelement <4 x float> poison, float %i.azp, i64 0
  %i.bav = shufflevector <4 x float> %i.bau, <4 x float> poison, <4 x i32> zeroinitializer
  %i.baw = or disjoint i32 %.0.lcssa.i.i37, 3
  %i.bax = icmp slt i32 %i.baw, %i.wp
  br i1 %i.bax, label %.lr.ph75.preheader.i.i46, label %.preheader.i.i38

.lr.ph75.preheader.i.i46:                         ; preds = %._crit_edge.i.i36
  %i.bay = zext nneg i32 %.0.lcssa.i.i37 to i64
  br label %.lr.ph75.i.i47

.preheader.loopexit.i.i50:                        ; preds = %.lr.ph75.i.i47
  %i.baz = trunc nuw nsw i64 %indvars.iv.next83.i.i49 to i32
  br label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.preheader.loopexit.i.i50, %._crit_edge.i.i36
  %.1.lcssa.i.i39 = phi i32 [ %.0.lcssa.i.i37, %._crit_edge.i.i36 ], [ %i.baz, %.preheader.loopexit.i.i50 ] ; 2 uses
  %i.bba = icmp slt i32 %.1.lcssa.i.i39, %i.wp
  br i1 %i.bba, label %.lr.ph78.preheader.i.i41, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i40

.lr.ph78.preheader.i.i41:                         ; preds = %.preheader.i.i38
  %i.bbb = zext i32 %.1.lcssa.i.i39 to i64        ; 5 uses
  %i.bbc = sub nsw i64 %i.wq, %i.bbb              ; 3 uses
  %min.iters.check399 = icmp ult i64 %i.bbc, 8
  br i1 %min.iters.check399, label %.lr.ph78.i.i42.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %.lr.ph78.preheader.i.i41
  %i.bbd = add i64 %i.azh, %i.azc                 ; 2 uses
  %i.bbe = sub i64 %.1641.i387, %i.bbd
  %diff.check388 = icmp ugt i64 %i.bbe, -32
  %i.bbf = sub i64 %.1639.i389, %i.bbd
  %diff.check390 = icmp ugt i64 %i.bbf, -32
  %conflict.rdx391 = or i1 %diff.check388, %diff.check390
  %i.bbg = add i64 %i.azh, %i.azc                 ; 2 uses
  %i.bbh = sub i64 %.1637.i392, %i.bbg
  %diff.check393 = icmp ugt i64 %i.bbh, -32
  %conflict.rdx394 = or i1 %conflict.rdx391, %diff.check393
  %i.bbi = sub i64 %.1635.i395, %i.bbg
  %diff.check396 = icmp ugt i64 %i.bbi, -32
  %conflict.rdx397 = or i1 %conflict.rdx394, %diff.check396
  br i1 %conflict.rdx397, label %.lr.ph78.i.i42.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %vector.memcheck386
  %n.vec401 = and i64 %i.bbc, -8                  ; 3 uses
  %i.bbj = add nsw i64 %n.vec401, %i.bbb
  %broadcast.splatinsert402 = insertelement <8 x float> poison, float %i.azj, i64 0
  %broadcast.splat403 = shufflevector <8 x float> %broadcast.splatinsert402, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert404 = insertelement <8 x float> poison, float %i.azl, i64 0
  %broadcast.splat405 = shufflevector <8 x float> %broadcast.splatinsert404, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <8 x float> poison, float %i.azn, i64 0
  %broadcast.splat407 = shufflevector <8 x float> %broadcast.splatinsert406, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <8 x float> poison, float %i.azp, i64 0
  %broadcast.splat409 = shufflevector <8 x float> %broadcast.splatinsert408, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph400
  %index411 = phi i64 [ 0, %vector.ph400 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.bbk = add nuw i64 %index411, %i.bbb          ; 5 uses
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %.1635.i, i64 %i.bbk
  %wide.load412 = load <8 x float>, ptr %i.bbl, align 4, !tbaa !70
  %i.bbm = fmul fast <8 x float> %wide.load412, %broadcast.splat403
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %.1637.i, i64 %i.bbk
  %wide.load413 = load <8 x float>, ptr %i.bbn, align 4, !tbaa !70
  %i.bbo = fmul fast <8 x float> %wide.load413, %broadcast.splat405
  %i.bbp = fadd fast <8 x float> %i.bbo, %i.bbm
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %.1639.i, i64 %i.bbk
  %wide.load414 = load <8 x float>, ptr %i.bbq, align 4, !tbaa !70
  %i.bbr = fmul fast <8 x float> %wide.load414, %broadcast.splat407
  %i.bbs = fadd fast <8 x float> %i.bbp, %i.bbr
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.1641.i, i64 %i.bbk
  %wide.load415 = load <8 x float>, ptr %i.bbt, align 4, !tbaa !70
  %i.bbu = fmul fast <8 x float> %wide.load415, %broadcast.splat409
  %i.bbv = fadd fast <8 x float> %i.bbs, %i.bbu
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %i.bbk
  store <8 x float> %i.bbv, ptr %i.bbw, align 4, !tbaa !70
  %index.next416 = add nuw i64 %index411, 8       ; 2 uses
  %i.bbx = icmp eq i64 %index.next416, %n.vec401
  br i1 %i.bbx, label %middle.block417, label %vector.body410, !llvm.loop !197

middle.block417:                                  ; preds = %vector.body410
  %cmp.n418 = icmp eq i64 %i.bbc, %n.vec401
  br i1 %cmp.n418, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i40, label %.lr.ph78.i.i42.preheader

.lr.ph78.i.i42.preheader:                         ; preds = %vector.memcheck386, %.lr.ph78.preheader.i.i41, %middle.block417
  %indvars.iv85.i.i43.ph = phi i64 [ %i.bbb, %vector.memcheck386 ], [ %i.bbb, %.lr.ph78.preheader.i.i41 ], [ %i.bbj, %middle.block417 ]
  br label %.lr.ph78.i.i42

.lr.ph75.i.i47:                                   ; preds = %.lr.ph75.i.i47, %.lr.ph75.preheader.i.i46
  %indvars.iv82.i.i48 = phi i64 [ %i.bay, %.lr.ph75.preheader.i.i46 ], [ %indvars.iv.next83.i.i49, %.lr.ph75.i.i47 ] ; 6 uses
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.1635.i, i64 %indvars.iv82.i.i48
  %i.bbz = load <4 x float>, ptr %i.bby, align 1, !tbaa !17
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %.1637.i, i64 %indvars.iv82.i.i48
  %i.bcb = load <4 x float>, ptr %i.bca, align 1, !tbaa !17
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.1639.i, i64 %indvars.iv82.i.i48
  %i.bcd = load <4 x float>, ptr %i.bcc, align 1, !tbaa !17
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.1641.i, i64 %indvars.iv82.i.i48
  %i.bcf = load <4 x float>, ptr %i.bce, align 1, !tbaa !17
  %i.bcg = fmul fast <4 x float> %i.bbz, %i.bap
  %i.bch = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcb, <4 x float> nofpclass(nan inf) %i.bar, <4 x float> nofpclass(nan inf) %i.bcg)
  %i.bci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcd, <4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.bch)
  %i.bcj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bcf, <4 x float> nofpclass(nan inf) %i.bav, <4 x float> nofpclass(nan inf) %i.bci)
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %indvars.iv82.i.i48
  store <4 x float> %i.bcj, ptr %i.bck, align 1, !tbaa !17
  %indvars.iv.next83.i.i49 = add nuw nsw i64 %indvars.iv82.i.i48, 4 ; 3 uses
  %i.bcl = icmp slt i64 %indvars.iv.next83.i.i49, %invariant.op.i.i33
  br i1 %i.bcl, label %.lr.ph75.i.i47, label %.preheader.loopexit.i.i50, !llvm.loop !186

.lr.ph78.i.i42:                                   ; preds = %.lr.ph78.i.i42.preheader, %.lr.ph78.i.i42
  %indvars.iv85.i.i43 = phi i64 [ %indvars.iv.next86.i.i44, %.lr.ph78.i.i42 ], [ %indvars.iv85.i.i43.ph, %.lr.ph78.i.i42.preheader ] ; 6 uses
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %.1635.i, i64 %indvars.iv85.i.i43
  %i.bcn = load float, ptr %i.bcm, align 4, !tbaa !70
  %i.bco = fmul fast float %i.bcn, %i.azj
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %.1637.i, i64 %indvars.iv85.i.i43
  %i.bcq = load float, ptr %i.bcp, align 4, !tbaa !70
  %i.bcr = fmul fast float %i.bcq, %i.azl
  %i.bcs = fadd fast float %i.bcr, %i.bco
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %.1639.i, i64 %indvars.iv85.i.i43
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !70
  %i.bcv = fmul fast float %i.bcu, %i.azn
  %i.bcw = fadd fast float %i.bcs, %i.bcv
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %.1641.i, i64 %indvars.iv85.i.i43
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !70
  %i.bcz = fmul fast float %i.bcy, %i.azp
  %i.bda = fadd fast float %i.bcw, %i.bcz
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.azi, i64 %indvars.iv85.i.i43
  store float %i.bda, ptr %i.bdb, align 4, !tbaa !70
  %indvars.iv.next86.i.i44 = add nuw nsw i64 %indvars.iv85.i.i43, 1 ; 2 uses
  %exitcond.not.i.i45 = icmp eq i64 %indvars.iv.next86.i.i44, %i.wq
  br i1 %exitcond.not.i.i45, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i40, label %.lr.ph78.i.i42, !llvm.loop !198

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i40: ; preds = %.lr.ph78.i.i42, %middle.block417, %.preheader.i.i38
  %i.bdc = getelementptr inbounds nuw i8, ptr %.01091.i, i64 16
  %indvars.iv.next1132.i = add nuw nsw i64 %indvars.iv1131.i, 1 ; 2 uses
  %exitcond1135.not.i = icmp eq i64 %indvars.iv.next1132.i, %wide.trip.count1134.i
  br i1 %exitcond1135.not.i, label %._crit_edge.i32, label %bb.ck, !llvm.loop !199

bb.cs:                                            ; preds = %bb.cj
  %i.bdd = atomicrmw add ptr %i.yj, i32 -1 acq_rel, align 4
  %i.bde = icmp eq i32 %i.bdd, 1
  br i1 %i.bde, label %bb.ct, label %_ZN4ncnn3MatD2Ev.exit718.i

bb.ct:                                            ; preds = %bb.cs
  %i.bdf = load ptr, ptr %i.bo, align 8, !tbaa !44 ; 3 uses
  %.not3.i741.i = icmp eq ptr %i.bdf, null
  %i.bdg = load ptr, ptr %16, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i741.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bdh = load ptr, ptr %i.bdf, align 8, !tbaa !9
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  %i.bdj = load ptr, ptr %i.bdi, align 8
  invoke void %i.bdj(ptr noundef nonnull align 8 dereferenceable(8) %i.bdf, ptr noundef %i.bdg)
          to label %_ZN4ncnn3MatD2Ev.exit718.i unwind label %bb.cx, !inline_history !46

bb.cv:                                            ; preds = %bb.ct
  %.not.i755.i = icmp eq ptr %i.bdg, null
  br i1 %.not.i755.i, label %_ZN4ncnn3MatD2Ev.exit718.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @free(ptr noundef nonnull %i.bdg) #6
  br label %_ZN4ncnn3MatD2Ev.exit718.i

bb.cx:                                            ; preds = %bb.cu
  %i.bdk = landingpad { ptr, i32 }
          catch ptr null
  %i.bdl = extractvalue { ptr, i32 } %i.bdk, 0
  call void @__clang_call_terminate(ptr %i.bdl) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit718.i:                       ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cs, %bb.cj, %bb.ci
  %.pn712.pn.pn.i = phi { ptr, i32 } [ %i.yh, %bb.ci ], [ %i.yi, %bb.cs ], [ %i.yi, %bb.cj ], [ %i.yi, %bb.cu ], [ %i.yi, %bb.cv ], [ %i.yi, %bb.cw ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.bdm = load ptr, ptr %i.bk, align 8, !tbaa !43 ; 2 uses
  %.not.i744.i = icmp eq ptr %i.bdm, null
  br i1 %.not.i744.i, label %_ZN4ncnn3MatD2Ev.exit717.i, label %bb.cy

bb.cy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit718.i
  %i.bdn = atomicrmw add ptr %i.bdm, i32 -1 acq_rel, align 4
  %i.bdo = icmp eq i32 %i.bdn, 1
  br i1 %i.bdo, label %bb.cz, label %_ZN4ncnn3MatD2Ev.exit717.i

bb.cz:                                            ; preds = %bb.cy
  %i.bdp = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 3 uses
  %.not3.i745.i = icmp eq ptr %i.bdp, null
  %i.bdq = load ptr, ptr %15, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i745.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bdr = load ptr, ptr %i.bdp, align 8, !tbaa !9
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 24
  %i.bdt = load ptr, ptr %i.bds, align 8
  invoke void %i.bdt(ptr noundef nonnull align 8 dereferenceable(8) %i.bdp, ptr noundef %i.bdq)
          to label %_ZN4ncnn3MatD2Ev.exit717.i unwind label %bb.dd, !inline_history !46

bb.db:                                            ; preds = %bb.cz
  %.not.i753.i = icmp eq ptr %i.bdq, null
  br i1 %.not.i753.i, label %_ZN4ncnn3MatD2Ev.exit717.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef nonnull %i.bdq) #6
  br label %_ZN4ncnn3MatD2Ev.exit717.i

bb.dd:                                            ; preds = %bb.da
  %i.bdu = landingpad { ptr, i32 }
          catch ptr null
  %i.bdv = extractvalue { ptr, i32 } %i.bdu, 0
  call void @__clang_call_terminate(ptr %i.bdv) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit717.i:                       ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy, %_ZN4ncnn3MatD2Ev.exit718.i, %bb.ch
  %.pn712.pn.pn.pn.i = phi { ptr, i32 } [ %i.yg, %bb.ch ], [ %.pn712.pn.pn.i, %bb.cy ], [ %.pn712.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit718.i ], [ %.pn712.pn.pn.i, %bb.da ], [ %.pn712.pn.pn.i, %bb.db ], [ %.pn712.pn.pn.i, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.bdw = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 2 uses
  %.not.i748.i = icmp eq ptr %i.bdw, null
  br i1 %.not.i748.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.de

bb.de:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit717.i
  %i.bdx = atomicrmw add ptr %i.bdw, i32 -1 acq_rel, align 4
  %i.bdy = icmp eq i32 %i.bdx, 1
  br i1 %i.bdy, label %bb.df, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.df:                                            ; preds = %bb.de
  %i.bdz = load ptr, ptr %i.bi, align 8, !tbaa !44 ; 3 uses
  %.not3.i749.i = icmp eq ptr %i.bdz, null
  %i.bea = load ptr, ptr %14, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i749.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.beb = load ptr, ptr %i.bdz, align 8, !tbaa !9
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 24
  %i.bed = load ptr, ptr %i.bec, align 8
  invoke void %i.bed(ptr noundef nonnull align 8 dereferenceable(8) %i.bdz, ptr noundef %i.bea)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.dj, !inline_history !46

bb.dh:                                            ; preds = %bb.df
  %.not.i752.i = icmp eq ptr %i.bea, null
  br i1 %.not.i752.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @free(ptr noundef nonnull %i.bea) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dj:                                            ; preds = %bb.dg
  %i.bee = landingpad { ptr, i32 }
          catch ptr null
  %i.bef = extractvalue { ptr, i32 } %i.bee, 0
  call void @__clang_call_terminate(ptr %i.bef) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.di, %bb.dh, %bb.dg, %bb.de, %_ZN4ncnn3MatD2Ev.exit717.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit720.i, %bb.cb, %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bh
  %i.beg = phi i32 [ %.pre, %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.wb, %bb.bh ]
  %i.beh = icmp eq i32 %i.beg, 1
  br i1 %i.beh, label %bb.dl, label %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit

bb.dl:                                            ; preds = %bb.dk
  %i.bei = load ptr, ptr %6, align 8, !tbaa !72   ; 9 uses
  %i.bej = load ptr, ptr %7, align 8, !tbaa !71   ; 11 uses
  %i.bek = load ptr, ptr %8, align 8, !tbaa !72   ; 2 uses
  %i.bel = load ptr, ptr %9, align 8, !tbaa !71   ; 2 uses
  %i.bem = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc97 unwind label %bb.gf

.noexc97:                                         ; preds = %bb.dl
  %.not.i63 = icmp eq i32 %i.bem, 0
  br i1 %.not.i63, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.noexc97
  invoke void @_ZN4ncnn25resize_bicubic_image_avx2ERKNS_3MatERS0_PfPiS4_S5_(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef %i.bei, ptr noundef %i.bej, ptr noundef %i.bek, ptr noundef %i.bel)
          to label %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.gf

bb.dn:                                            ; preds = %.noexc97
  %i.ben = load i32, ptr %i.ap, align 4, !tbaa !26 ; 13 uses
  %i.beo = load i32, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.bv, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bu, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ben, i64 noundef 4, ptr noundef null)
          to label %.noexc99 unwind label %bb.gf

.noexc99:                                         ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.by, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ben, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1022.i unwind label %bb.em

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1022.i:      ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.cb, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.ben, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1020.i unwind label %bb.en

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1020.i:      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1022.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.ce, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cd, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.ben, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.eo

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit1020.i
  %i.bep = icmp sgt i32 %i.beo, 0
  br i1 %i.bep, label %.lr.ph1114.i, label %._crit_edge.i65
end_hunk_2
begin_hunk_3_@_ZNK4ncnn14Interp_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.8:bb.a
  %i.dhl = getelementptr i8, ptr %i.dej, i64 8
  %i.dhm = load float, ptr %i.dhl, align 4, !tbaa !70
  %i.dhn = getelementptr i8, ptr %i.deo, i64 8
  %i.dho = load float, ptr %i.dhn, align 4, !tbaa !70
  %i.dhp = getelementptr i8, ptr %i.det, i64 8
  %i.dhq = load float, ptr %i.dhp, align 4, !tbaa !70
  %i.dhr = getelementptr i8, ptr %i.dey, i64 8
  %i.dhs = load float, ptr %i.dhr, align 4, !tbaa !70
  %i.dht = getelementptr i8, ptr %i.dfd, i64 8
  %i.dhu = load float, ptr %i.dht, align 4, !tbaa !70
  %i.dhv = getelementptr i8, ptr %i.dfi, i64 8
  %i.dhw = load float, ptr %i.dhv, align 4, !tbaa !70
  %i.dhx = insertelement <8 x float> poison, float %i.dhi, i64 0
  %i.dhy = insertelement <8 x float> %i.dhx, float %i.dhk, i64 1
  %i.dhz = insertelement <8 x float> %i.dhy, float %i.dhm, i64 2
  %i.dia = insertelement <8 x float> %i.dhz, float %i.dho, i64 3
  %i.dib = insertelement <8 x float> %i.dia, float %i.dhq, i64 4
  %i.dic = insertelement <8 x float> %i.dib, float %i.dhs, i64 5
  %i.did = insertelement <8 x float> %i.dic, float %i.dhu, i64 6
  %i.die = insertelement <8 x float> %i.did, float %i.dhw, i64 7
  %i.dif = fmul fast <8 x float> %i.dfs, %i.dan
  %i.dig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dgi, <8 x float> nofpclass(nan inf) %i.dbl, <8 x float> nofpclass(nan inf) %i.dif)
  %i.dih = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dhg, <8 x float> nofpclass(nan inf) %i.dcj, <8 x float> nofpclass(nan inf) %i.dig)
  %i.dii = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.die, <8 x float> nofpclass(nan inf) %i.ddh, <8 x float> nofpclass(nan inf) %i.dih)
  %i.dij = getelementptr inbounds nuw [4 x i8], ptr %i.ddw, i64 %indvars.iv.i91
  store <8 x float> %i.dii, ptr %i.dij, align 1, !tbaa !17
  %i.dik = add nuw nsw i32 %.09431075.i, 1        ; 2 uses
  %exitcond.not.i92 = icmp eq i32 %i.dik, 4
  br i1 %exitcond.not.i92, label %bb.ex, label %bb.ey, !llvm.loop !207

.lr.ph1081.i:                                     ; preds = %.lr.ph1081.i, %.lr.ph1081.preheader.i
  %indvars.iv1126.i88 = phi i64 [ %i.czq, %.lr.ph1081.preheader.i ], [ %indvars.iv.next1127.i89, %.lr.ph1081.i ] ; 6 uses
  %.19561079.i = phi ptr [ %.0955.lcssa.i, %.lr.ph1081.preheader.i ], [ %i.djn, %.lr.ph1081.i ] ; 2 uses
  %i.dil = getelementptr inbounds nuw [4 x i8], ptr %i.bej, i64 %indvars.iv1126.i88
  %i.dim = load i32, ptr %i.dil, align 4, !tbaa !25
  %i.din = sext i32 %i.dim to i64                 ; 4 uses
  %i.dio = getelementptr inbounds [4 x i8], ptr %i.czc, i64 %i.din
  %i.dip = getelementptr inbounds [4 x i8], ptr %i.czf, i64 %i.din
  %i.diq = getelementptr inbounds [4 x i8], ptr %i.czj, i64 %i.din
  %i.dir = getelementptr inbounds [4 x i8], ptr %i.czn, i64 %i.din
  %i.dis = getelementptr inbounds i8, ptr %i.dio, i64 -4
  %i.dit = load <4 x float>, ptr %.19561079.i, align 4, !tbaa !70 ; 4 uses
  %i.diu = load <4 x float>, ptr %i.dis, align 4, !tbaa !70
  %i.div = fmul fast <4 x float> %i.diu, %i.dit
  %i.diw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.div)
  %i.dix = getelementptr inbounds nuw [4 x i8], ptr %.09291112.i, i64 %indvars.iv1126.i88
  store float %i.diw, ptr %i.dix, align 4, !tbaa !70
  %i.diy = getelementptr inbounds i8, ptr %i.dip, i64 -4
  %i.diz = load <4 x float>, ptr %i.diy, align 4, !tbaa !70
  %i.dja = fmul fast <4 x float> %i.diz, %i.dit
  %i.djb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dja)
  %i.djc = getelementptr inbounds nuw [4 x i8], ptr %.09311111.i, i64 %indvars.iv1126.i88
  store float %i.djb, ptr %i.djc, align 4, !tbaa !70
  %i.djd = getelementptr inbounds i8, ptr %i.diq, i64 -4
  %i.dje = load <4 x float>, ptr %i.djd, align 4, !tbaa !70
  %i.djf = fmul fast <4 x float> %i.dje, %i.dit
  %i.djg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.djf)
  %i.djh = getelementptr inbounds nuw [4 x i8], ptr %.09331110.i, i64 %indvars.iv1126.i88
  store float %i.djg, ptr %i.djh, align 4, !tbaa !70
  %i.dji = getelementptr inbounds i8, ptr %i.dir, i64 -4
  %i.djj = load <4 x float>, ptr %i.dji, align 4, !tbaa !70
  %i.djk = fmul fast <4 x float> %i.djj, %i.dit
  %i.djl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.djk)
  %i.djm = getelementptr inbounds nuw [4 x i8], ptr %.09351109.i, i64 %indvars.iv1126.i88
  store float %i.djl, ptr %i.djm, align 4, !tbaa !70
  %i.djn = getelementptr inbounds nuw i8, ptr %.19561079.i, i64 16
  %indvars.iv.next1127.i89 = add nuw nsw i64 %indvars.iv1126.i88, 1 ; 2 uses
  %exitcond1129.not.i = icmp eq i64 %indvars.iv.next1127.i89, %i.bev
  br i1 %exitcond1129.not.i, label %.loopexit.i68, label %.lr.ph1081.i, !llvm.loop !208

.loopexit.i68:                                    ; preds = %.lr.ph1081.i, %.lr.ph1090.i, %.lr.ph1098.i, %.lr.ph1106.i.prol.loopexit, %.lr.ph1106.i, %.preheader1073.i, %.preheader1071.i, %.preheader1069.i, %.preheader.i95, %bb.ep
  %.1936.i = phi ptr [ %.09351109.i, %bb.ep ], [ %.09291112.i, %.preheader.i95 ], [ %.09311111.i, %.preheader1069.i ], [ %.09331110.i, %.preheader1071.i ], [ %.09351109.i, %.preheader1073.i ], [ %.09331110.i, %.lr.ph1090.i ], [ %.09291112.i, %.lr.ph1106.i.prol.loopexit ], [ %.09311111.i, %.lr.ph1098.i ], [ %.09291112.i, %.lr.ph1106.i ], [ %.09351109.i, %.lr.ph1081.i ] ; 6 uses
  %.1934.i = phi ptr [ %.09331110.i, %bb.ep ], [ %.09351109.i, %.preheader.i95 ], [ %.09291112.i, %.preheader1069.i ], [ %.09311111.i, %.preheader1071.i ], [ %.09331110.i, %.preheader1073.i ], [ %.09311111.i, %.lr.ph1090.i ], [ %.09351109.i, %.lr.ph1106.i.prol.loopexit ], [ %.09291112.i, %.lr.ph1098.i ], [ %.09351109.i, %.lr.ph1106.i ], [ %.09331110.i, %.lr.ph1081.i ] ; 6 uses
  %.1932.i = phi ptr [ %.09311111.i, %bb.ep ], [ %.09331110.i, %.preheader.i95 ], [ %.09351109.i, %.preheader1069.i ], [ %.09291112.i, %.preheader1071.i ], [ %.09311111.i, %.preheader1073.i ], [ %.09291112.i, %.lr.ph1090.i ], [ %.09331110.i, %.lr.ph1106.i.prol.loopexit ], [ %.09351109.i, %.lr.ph1098.i ], [ %.09331110.i, %.lr.ph1106.i ], [ %.09311111.i, %.lr.ph1081.i ] ; 6 uses
  %.1930.i = phi ptr [ %.09291112.i, %bb.ep ], [ %.09311111.i, %.preheader.i95 ], [ %.09331110.i, %.preheader1069.i ], [ %.09351109.i, %.preheader1071.i ], [ %.09291112.i, %.preheader1073.i ], [ %.09351109.i, %.lr.ph1090.i ], [ %.09311111.i, %.lr.ph1106.i.prol.loopexit ], [ %.09331110.i, %.lr.ph1098.i ], [ %.09311111.i, %.lr.ph1106.i ], [ %.09291112.i, %.lr.ph1081.i ] ; 6 uses
  %.1936.i368 = ptrtoaddr ptr %.1936.i to i64
  %.1934.i369 = ptrtoaddr ptr %.1934.i to i64
  %.1932.i371 = ptrtoaddr ptr %.1932.i to i64
  %.1930.i374 = ptrtoaddr ptr %.1930.i to i64
  %i.djo = load ptr, ptr %23, align 8, !tbaa !45  ; 2 uses
  %i.djp = ptrtoaddr ptr %i.djo to i64            ; 2 uses
  %i.djq = load i32, ptr %i.ap, align 4, !tbaa !26
  %i.djr = sext i32 %i.djq to i64
  %i.djs = mul i64 %indvars.iv1157.i, %i.djr
  %i.djt = load i64, ptr %i.al, align 8, !tbaa !29
  %i.dju = mul i64 %i.djs, %i.djt                 ; 3 uses
  %i.djv = getelementptr inbounds nuw i8, ptr %i.djo, i64 %i.dju ; 4 uses
  %i.djw = load float, ptr %.01113.i, align 4, !tbaa !70 ; 4 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %.01113.i, i64 4
  %i.djy = load float, ptr %i.djx, align 4, !tbaa !70 ; 4 uses
  %i.djz = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.dka = load float, ptr %i.djz, align 4, !tbaa !70 ; 4 uses
  %i.dkb = getelementptr inbounds nuw i8, ptr %.01113.i, i64 12
  %i.dkc = load float, ptr %i.dkb, align 4, !tbaa !70 ; 4 uses
  %i.dkd = insertelement <8 x float> poison, float %i.djw, i64 0
  %i.dke = shufflevector <8 x float> %i.dkd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dkf = insertelement <8 x float> poison, float %i.djy, i64 0
  %i.dkg = shufflevector <8 x float> %i.dkf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dkh = insertelement <8 x float> poison, float %i.dka, i64 0
  %i.dki = shufflevector <8 x float> %i.dkh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dkj = insertelement <8 x float> poison, float %i.dkc, i64 0
  %i.dkk = shufflevector <8 x float> %i.dkj, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.beu, label %.lr.ph.i.i84, label %._crit_edge.i.i69

.lr.ph.i.i84:                                     ; preds = %.loopexit.i68, %.lr.ph.i.i84
  %indvars.iv.i.i85 = phi i64 [ %indvars.iv.next.i.i86, %.lr.ph.i.i84 ], [ 0, %.loopexit.i68 ] ; 6 uses
  %i.dkl = getelementptr inbounds nuw [4 x i8], ptr %.1930.i, i64 %indvars.iv.i.i85
  %i.dkm = load <8 x float>, ptr %i.dkl, align 1, !tbaa !17
  %i.dkn = getelementptr inbounds nuw [4 x i8], ptr %.1932.i, i64 %indvars.iv.i.i85
  %i.dko = load <8 x float>, ptr %i.dkn, align 1, !tbaa !17
  %i.dkp = getelementptr inbounds nuw [4 x i8], ptr %.1934.i, i64 %indvars.iv.i.i85
  %i.dkq = load <8 x float>, ptr %i.dkp, align 1, !tbaa !17
  %i.dkr = getelementptr inbounds nuw [4 x i8], ptr %.1936.i, i64 %indvars.iv.i.i85
  %i.dks = load <8 x float>, ptr %i.dkr, align 1, !tbaa !17
  %i.dkt = fmul fast <8 x float> %i.dkm, %i.dke
  %i.dku = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dko, <8 x float> nofpclass(nan inf) %i.dkg, <8 x float> nofpclass(nan inf) %i.dkt)
  %i.dkv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dkq, <8 x float> nofpclass(nan inf) %i.dki, <8 x float> nofpclass(nan inf) %i.dku)
  %i.dkw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dks, <8 x float> nofpclass(nan inf) %i.dkk, <8 x float> nofpclass(nan inf) %i.dkv)
  %i.dkx = getelementptr inbounds nuw [4 x i8], ptr %i.djv, i64 %indvars.iv.i.i85
  store <8 x float> %i.dkw, ptr %i.dkx, align 1, !tbaa !17
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i85, 8 ; 3 uses
  %i.dky = or disjoint i64 %indvars.iv.next.i.i86, 7
  %i.dkz = icmp samesign ult i64 %i.dky, %i.bev
  br i1 %i.dkz, label %.lr.ph.i.i84, label %._crit_edge.loopexit.i.i87, !llvm.loop !184

._crit_edge.loopexit.i.i87:                       ; preds = %.lr.ph.i.i84
  %i.dla = trunc nuw nsw i64 %indvars.iv.next.i.i86 to i32
  br label %._crit_edge.i.i69

._crit_edge.i.i69:                                ; preds = %._crit_edge.loopexit.i.i87, %.loopexit.i68
  %.0.lcssa.i.i70 = phi i32 [ 0, %.loopexit.i68 ], [ %i.dla, %._crit_edge.loopexit.i.i87 ] ; 3 uses
  %i.dlb = insertelement <4 x float> poison, float %i.djw, i64 0
  %i.dlc = shufflevector <4 x float> %i.dlb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dld = insertelement <4 x float> poison, float %i.djy, i64 0
  %i.dle = shufflevector <4 x float> %i.dld, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlf = insertelement <4 x float> poison, float %i.dka, i64 0
  %i.dlg = shufflevector <4 x float> %i.dlf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlh = insertelement <4 x float> poison, float %i.dkc, i64 0
  %i.dli = shufflevector <4 x float> %i.dlh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dlj = or disjoint i32 %.0.lcssa.i.i70, 3
  %i.dlk = icmp slt i32 %i.dlj, %i.ben
  br i1 %i.dlk, label %.lr.ph75.preheader.i.i79, label %.preheader.i.i71

.lr.ph75.preheader.i.i79:                         ; preds = %._crit_edge.i.i69
  %i.dll = zext nneg i32 %.0.lcssa.i.i70 to i64
  br label %.lr.ph75.i.i80

.preheader.loopexit.i.i83:                        ; preds = %.lr.ph75.i.i80
  %i.dlm = trunc nuw nsw i64 %indvars.iv.next83.i.i82 to i32
  br label %.preheader.i.i71

.preheader.i.i71:                                 ; preds = %.preheader.loopexit.i.i83, %._crit_edge.i.i69
  %.1.lcssa.i.i72 = phi i32 [ %.0.lcssa.i.i70, %._crit_edge.i.i69 ], [ %i.dlm, %.preheader.loopexit.i.i83 ] ; 2 uses
  %i.dln = icmp slt i32 %.1.lcssa.i.i72, %i.ben
  br i1 %i.dln, label %.lr.ph78.preheader.i.i74, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i73

.lr.ph78.preheader.i.i74:                         ; preds = %.preheader.i.i71
  %i.dlo = zext i32 %.1.lcssa.i.i72 to i64        ; 5 uses
  %i.dlp = sub nsw i64 %i.bev, %i.dlo             ; 3 uses
  %min.iters.check = icmp ult i64 %i.dlp, 8
  br i1 %min.iters.check, label %.lr.ph78.i.i75.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph78.preheader.i.i74
  %i.dlq = add i64 %i.dju, %i.djp                 ; 2 uses
  %i.dlr = sub i64 %.1936.i368, %i.dlq
  %diff.check = icmp ugt i64 %i.dlr, -32
  %i.dls = sub i64 %.1934.i369, %i.dlq
  %diff.check370 = icmp ugt i64 %i.dls, -32
  %conflict.rdx = or i1 %diff.check, %diff.check370
  %i.dlt = add i64 %i.dju, %i.djp                 ; 2 uses
  %i.dlu = sub i64 %.1932.i371, %i.dlt
  %diff.check372 = icmp ugt i64 %i.dlu, -32
  %conflict.rdx373 = or i1 %conflict.rdx, %diff.check372
  %i.dlv = sub i64 %.1930.i374, %i.dlt
  %diff.check375 = icmp ugt i64 %i.dlv, -32
  %conflict.rdx376 = or i1 %conflict.rdx373, %diff.check375
  br i1 %conflict.rdx376, label %.lr.ph78.i.i75.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dlp, -8                     ; 3 uses
  %i.dlw = add nsw i64 %n.vec, %i.dlo
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.djw, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert377 = insertelement <8 x float> poison, float %i.djy, i64 0
  %broadcast.splat378 = shufflevector <8 x float> %broadcast.splatinsert377, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert379 = insertelement <8 x float> poison, float %i.dka, i64 0
  %broadcast.splat380 = shufflevector <8 x float> %broadcast.splatinsert379, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert381 = insertelement <8 x float> poison, float %i.dkc, i64 0
  %broadcast.splat382 = shufflevector <8 x float> %broadcast.splatinsert381, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dlx = add nuw i64 %index, %i.dlo             ; 5 uses
  %i.dly = getelementptr inbounds nuw [4 x i8], ptr %.1930.i, i64 %i.dlx
  %wide.load = load <8 x float>, ptr %i.dly, align 4, !tbaa !70
  %i.dlz = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.dma = getelementptr inbounds nuw [4 x i8], ptr %.1932.i, i64 %i.dlx
  %wide.load383 = load <8 x float>, ptr %i.dma, align 4, !tbaa !70
  %i.dmb = fmul fast <8 x float> %wide.load383, %broadcast.splat378
  %i.dmc = fadd fast <8 x float> %i.dmb, %i.dlz
  %i.dmd = getelementptr inbounds nuw [4 x i8], ptr %.1934.i, i64 %i.dlx
  %wide.load384 = load <8 x float>, ptr %i.dmd, align 4, !tbaa !70
  %i.dme = fmul fast <8 x float> %wide.load384, %broadcast.splat380
  %i.dmf = fadd fast <8 x float> %i.dmc, %i.dme
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %.1936.i, i64 %i.dlx
  %wide.load385 = load <8 x float>, ptr %i.dmg, align 4, !tbaa !70
  %i.dmh = fmul fast <8 x float> %wide.load385, %broadcast.splat382
  %i.dmi = fadd fast <8 x float> %i.dmf, %i.dmh
  %i.dmj = getelementptr inbounds nuw [4 x i8], ptr %i.djv, i64 %i.dlx
  store <8 x float> %i.dmi, ptr %i.dmj, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dmk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dmk, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dlp, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i73, label %.lr.ph78.i.i75.preheader

.lr.ph78.i.i75.preheader:                         ; preds = %vector.memcheck, %.lr.ph78.preheader.i.i74, %middle.block
  %indvars.iv85.i.i76.ph = phi i64 [ %i.dlo, %vector.memcheck ], [ %i.dlo, %.lr.ph78.preheader.i.i74 ], [ %i.dlw, %middle.block ]
  br label %.lr.ph78.i.i75

.lr.ph75.i.i80:                                   ; preds = %.lr.ph75.i.i80, %.lr.ph75.preheader.i.i79
  %indvars.iv82.i.i81 = phi i64 [ %i.dll, %.lr.ph75.preheader.i.i79 ], [ %indvars.iv.next83.i.i82, %.lr.ph75.i.i80 ] ; 6 uses
  %i.dml = getelementptr inbounds nuw [4 x i8], ptr %.1930.i, i64 %indvars.iv82.i.i81
  %i.dmm = load <4 x float>, ptr %i.dml, align 1, !tbaa !17
  %i.dmn = getelementptr inbounds nuw [4 x i8], ptr %.1932.i, i64 %indvars.iv82.i.i81
  %i.dmo = load <4 x float>, ptr %i.dmn, align 1, !tbaa !17
  %i.dmp = getelementptr inbounds nuw [4 x i8], ptr %.1934.i, i64 %indvars.iv82.i.i81
  %i.dmq = load <4 x float>, ptr %i.dmp, align 1, !tbaa !17
  %i.dmr = getelementptr inbounds nuw [4 x i8], ptr %.1936.i, i64 %indvars.iv82.i.i81
  %i.dms = load <4 x float>, ptr %i.dmr, align 1, !tbaa !17
  %i.dmt = fmul fast <4 x float> %i.dmm, %i.dlc
  %i.dmu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmo, <4 x float> nofpclass(nan inf) %i.dle, <4 x float> nofpclass(nan inf) %i.dmt)
  %i.dmv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dmq, <4 x float> nofpclass(nan inf) %i.dlg, <4 x float> nofpclass(nan inf) %i.dmu)
  %i.dmw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dms, <4 x float> nofpclass(nan inf) %i.dli, <4 x float> nofpclass(nan inf) %i.dmv)
  %i.dmx = getelementptr inbounds nuw [4 x i8], ptr %i.djv, i64 %indvars.iv82.i.i81
  store <4 x float> %i.dmw, ptr %i.dmx, align 1, !tbaa !17
  %indvars.iv.next83.i.i82 = add nuw nsw i64 %indvars.iv82.i.i81, 4 ; 3 uses
  %i.dmy = icmp slt i64 %indvars.iv.next83.i.i82, %invariant.op.i.i66
  br i1 %i.dmy, label %.lr.ph75.i.i80, label %.preheader.loopexit.i.i83, !llvm.loop !186

.lr.ph78.i.i75:                                   ; preds = %.lr.ph78.i.i75.preheader, %.lr.ph78.i.i75
  %indvars.iv85.i.i76 = phi i64 [ %indvars.iv.next86.i.i77, %.lr.ph78.i.i75 ], [ %indvars.iv85.i.i76.ph, %.lr.ph78.i.i75.preheader ] ; 6 uses
  %i.dmz = getelementptr inbounds nuw [4 x i8], ptr %.1930.i, i64 %indvars.iv85.i.i76
  %i.dna = load float, ptr %i.dmz, align 4, !tbaa !70
  %i.dnb = fmul fast float %i.dna, %i.djw
  %i.dnc = getelementptr inbounds nuw [4 x i8], ptr %.1932.i, i64 %indvars.iv85.i.i76
  %i.dnd = load float, ptr %i.dnc, align 4, !tbaa !70
  %i.dne = fmul fast float %i.dnd, %i.djy
  %i.dnf = fadd fast float %i.dne, %i.dnb
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %.1934.i, i64 %indvars.iv85.i.i76
  %i.dnh = load float, ptr %i.dng, align 4, !tbaa !70
  %i.dni = fmul fast float %i.dnh, %i.dka
  %i.dnj = fadd fast float %i.dnf, %i.dni
  %i.dnk = getelementptr inbounds nuw [4 x i8], ptr %.1936.i, i64 %indvars.iv85.i.i76
  %i.dnl = load float, ptr %i.dnk, align 4, !tbaa !70
  %i.dnm = fmul fast float %i.dnl, %i.dkc
  %i.dnn = fadd fast float %i.dnj, %i.dnm
  %i.dno = getelementptr inbounds nuw [4 x i8], ptr %i.djv, i64 %indvars.iv85.i.i76
  store float %i.dnn, ptr %i.dno, align 4, !tbaa !70
  %indvars.iv.next86.i.i77 = add nuw nsw i64 %indvars.iv85.i.i76, 1 ; 2 uses
  %exitcond.not.i.i78 = icmp eq i64 %indvars.iv.next86.i.i77, %i.bev
  br i1 %exitcond.not.i.i78, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i73, label %.lr.ph78.i.i75, !llvm.loop !210

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i73: ; preds = %.lr.ph78.i.i75, %middle.block, %.preheader.i.i71
  %i.dnp = getelementptr inbounds nuw i8, ptr %.01113.i, i64 16
  %indvars.iv.next1158.i = add nuw nsw i64 %indvars.iv1157.i, 1 ; 2 uses
  %exitcond1161.not.i = icmp eq i64 %indvars.iv.next1158.i, %wide.trip.count1160.i
  br i1 %exitcond1161.not.i, label %._crit_edge.i65, label %bb.ep, !llvm.loop !211

bb.fa:                                            ; preds = %bb.eo
  %i.dnq = atomicrmw add ptr %i.bgp, i32 -1 acq_rel, align 4
  %i.dnr = icmp eq i32 %i.dnq, 1
  br i1 %i.dnr, label %bb.fb, label %_ZN4ncnn3MatD2Ev.exit969.i

bb.fb:                                            ; preds = %bb.fa
  %i.dns = load ptr, ptr %i.ca, align 8, !tbaa !44 ; 3 uses
  %.not3.i992.i = icmp eq ptr %i.dns, null
  %i.dnt = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i992.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.dnu = load ptr, ptr %i.dns, align 8, !tbaa !9
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnu, i64 24
  %i.dnw = load ptr, ptr %i.dnv, align 8
  invoke void %i.dnw(ptr noundef nonnull align 8 dereferenceable(8) %i.dns, ptr noundef %i.dnt)
          to label %_ZN4ncnn3MatD2Ev.exit969.i unwind label %bb.ff, !inline_history !46

bb.fd:                                            ; preds = %bb.fb
  %.not.i1006.i = icmp eq ptr %i.dnt, null
  br i1 %.not.i1006.i, label %_ZN4ncnn3MatD2Ev.exit969.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.dnt) #6
  br label %_ZN4ncnn3MatD2Ev.exit969.i

bb.ff:                                            ; preds = %bb.fc
  %i.dnx = landingpad { ptr, i32 }
          catch ptr null
  %i.dny = extractvalue { ptr, i32 } %i.dnx, 0
  call void @__clang_call_terminate(ptr %i.dny) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit969.i:                       ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fa, %bb.eo, %bb.en
  %.pn963.pn.pn.i = phi { ptr, i32 } [ %i.bgn, %bb.en ], [ %i.bgo, %bb.fa ], [ %i.bgo, %bb.eo ], [ %i.bgo, %bb.fc ], [ %i.bgo, %bb.fd ], [ %i.bgo, %bb.fe ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.dnz = load ptr, ptr %i.bw, align 8, !tbaa !43 ; 2 uses
  %.not.i995.i = icmp eq ptr %i.dnz, null
  br i1 %.not.i995.i, label %_ZN4ncnn3MatD2Ev.exit968.i, label %bb.fg

bb.fg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit969.i
  %i.doa = atomicrmw add ptr %i.dnz, i32 -1 acq_rel, align 4
  %i.dob = icmp eq i32 %i.doa, 1
  br i1 %i.dob, label %bb.fh, label %_ZN4ncnn3MatD2Ev.exit968.i

bb.fh:                                            ; preds = %bb.fg
  %i.doc = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 3 uses
  %.not3.i996.i = icmp eq ptr %i.doc, null
  %i.dod = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i996.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.doe = load ptr, ptr %i.doc, align 8, !tbaa !9
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doe, i64 24
  %i.dog = load ptr, ptr %i.dof, align 8
  invoke void %i.dog(ptr noundef nonnull align 8 dereferenceable(8) %i.doc, ptr noundef %i.dod)
          to label %_ZN4ncnn3MatD2Ev.exit968.i unwind label %bb.fl, !inline_history !46

bb.fj:                                            ; preds = %bb.fh
  %.not.i1004.i = icmp eq ptr %i.dod, null
  br i1 %.not.i1004.i, label %_ZN4ncnn3MatD2Ev.exit968.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.dod) #6
  br label %_ZN4ncnn3MatD2Ev.exit968.i

bb.fl:                                            ; preds = %bb.fi
  %i.doh = landingpad { ptr, i32 }
          catch ptr null
  %i.doi = extractvalue { ptr, i32 } %i.doh, 0
  call void @__clang_call_terminate(ptr %i.doi) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit968.i:                       ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg, %_ZN4ncnn3MatD2Ev.exit969.i, %bb.em
  %.pn963.pn.pn.pn.i = phi { ptr, i32 } [ %i.bgm, %bb.em ], [ %.pn963.pn.pn.i, %bb.fg ], [ %.pn963.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit969.i ], [ %.pn963.pn.pn.i, %bb.fi ], [ %.pn963.pn.pn.i, %bb.fj ], [ %.pn963.pn.pn.i, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.doj = load ptr, ptr %i.bt, align 8, !tbaa !43 ; 2 uses
  %.not.i999.i = icmp eq ptr %i.doj, null
  br i1 %.not.i999.i, label %_ZN4ncnn3MatD2Ev.exit.i64, label %bb.fm

bb.fm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit968.i
  %i.dok = atomicrmw add ptr %i.doj, i32 -1 acq_rel, align 4
  %i.dol = icmp eq i32 %i.dok, 1
  br i1 %i.dol, label %bb.fn, label %_ZN4ncnn3MatD2Ev.exit.i64

bb.fn:                                            ; preds = %bb.fm
  %i.dom = load ptr, ptr %i.bu, align 8, !tbaa !44 ; 3 uses
  %.not3.i1000.i = icmp eq ptr %i.dom, null
  %i.don = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1000.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.doo = load ptr, ptr %i.dom, align 8, !tbaa !9
  %i.dop = getelementptr inbounds nuw i8, ptr %i.doo, i64 24
  %i.doq = load ptr, ptr %i.dop, align 8
  invoke void %i.doq(ptr noundef nonnull align 8 dereferenceable(8) %i.dom, ptr noundef %i.don)
          to label %_ZN4ncnn3MatD2Ev.exit.i64 unwind label %bb.fr, !inline_history !46

bb.fp:                                            ; preds = %bb.fn
  %.not.i1003.i = icmp eq ptr %i.don, null
  br i1 %.not.i1003.i, label %_ZN4ncnn3MatD2Ev.exit.i64, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @free(ptr noundef nonnull %i.don) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i64

bb.fr:                                            ; preds = %bb.fo
  %i.dor = landingpad { ptr, i32 }
          catch ptr null
  %i.dos = extractvalue { ptr, i32 } %i.dor, 0
  call void @__clang_call_terminate(ptr %i.dos) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i64:                        ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.fm, %_ZN4ncnn3MatD2Ev.exit968.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit970.i, %bb.dm, %bb.dk
  %i.dot = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %i.dot, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit21, label %bb.fs

bb.fs:                                            ; preds = %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit
  %i.dou = atomicrmw add ptr %i.dot, i32 -1 acq_rel, align 4
  %i.dov = icmp eq i32 %i.dou, 1
  br i1 %i.dov, label %bb.ft, label %_ZN4ncnn3MatD2Ev.exit21

bb.ft:                                            ; preds = %bb.fs
  %i.dow = load ptr, ptr %i.an, align 8, !tbaa !44 ; 3 uses
  %.not3.i = icmp eq ptr %i.dow, null
  %i.dox = load ptr, ptr %23, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.doy = load ptr, ptr %i.dow, align 8, !tbaa !9
  %i.doz = getelementptr inbounds nuw i8, ptr %i.doy, i64 24
  %i.dpa = load ptr, ptr %i.doz, align 8
  invoke void %i.dpa(ptr noundef nonnull align 8 dereferenceable(8) %i.dow, ptr noundef %i.dox)
          to label %_ZN4ncnn3MatD2Ev.exit21 unwind label %bb.fx, !inline_history !46

bb.fv:                                            ; preds = %bb.ft
  %.not.i27 = icmp eq ptr %i.dox, null
  br i1 %.not.i27, label %_ZN4ncnn3MatD2Ev.exit21, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @free(ptr noundef nonnull %i.dox) #6
  br label %_ZN4ncnn3MatD2Ev.exit21

bb.fx:                                            ; preds = %bb.fu
  %i.dpb = landingpad { ptr, i32 }
          catch ptr null
  %i.dpc = extractvalue { ptr, i32 } %i.dpb, 0
  call void @__clang_call_terminate(ptr %i.dpc) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit21:                          ; preds = %bb.fs, %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.fu, %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #6
  %i.dpd = load ptr, ptr %i.s, align 8, !tbaa !43 ; 2 uses
  %.not.i22 = icmp eq ptr %i.dpd, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fy

bb.fy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit21
  %i.dpe = atomicrmw add ptr %i.dpd, i32 -1 acq_rel, align 4
  %i.dpf = icmp eq i32 %i.dpe, 1
  br i1 %i.dpf, label %bb.fz, label %_ZN4ncnn3MatD2Ev.exit

bb.fz:                                            ; preds = %bb.fy
  %i.dpg = load ptr, ptr %i.v, align 8, !tbaa !44 ; 3 uses
  %.not3.i23 = icmp eq ptr %i.dpg, null
  %i.dph = load ptr, ptr %22, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i23, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.dpi = load ptr, ptr %i.dpg, align 8, !tbaa !9
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dpi, i64 24
  %i.dpk = load ptr, ptr %i.dpj, align 8
  invoke void %i.dpk(ptr noundef nonnull align 8 dereferenceable(8) %i.dpg, ptr noundef %i.dph)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.gd, !inline_history !46

bb.gb:                                            ; preds = %bb.fz
end_hunk_3
begin_hunk_4_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11:bb.a
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv154, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.lr.ph138.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv154, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph133

._crit_edge134:                                   ; preds = %._crit_edge, %.lr.ph138.split
  %i.am = phi i32 [ %i.t, %.lr.ph138.split ], [ %i.ix, %._crit_edge ]
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next155 to i32
  %exitcond157.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond157.not, label %._crit_edge139, label %.lr.ph138.split, !llvm.loop !228

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph133.preheader ], [ %i.dc, %._crit_edge ] ; 4 uses
  %indvars.iv151 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next152, %._crit_edge ] ; 2 uses
  %.083131 = phi ptr [ %i.ak, %.lr.ph133.preheader ], [ %i.iw, %._crit_edge ] ; 7 uses
  %.084130 = phi ptr [ %i.ad, %.lr.ph133.preheader ], [ %i.iv, %._crit_edge ] ; 2 uses
  %.083131175 = ptrtoaddr ptr %.083131 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv151
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 10 uses
  %i.au = load <4 x float>, ptr %.084130, align 4, !tbaa !70 ; 17 uses
  %i.av = icmp sgt i32 %i.an, 7
  br i1 %i.av, label %.lr.ph, label %.preheader121

.lr.ph:                                           ; preds = %.lr.ph133
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader121.loopexit:                           ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader121

.preheader121:                                    ; preds = %.preheader121.loopexit, %.lr.ph133
  %i.bb = phi i32 [ %i.an, %.lr.ph133 ], [ %i.cy, %.preheader121.loopexit ] ; 3 uses
  %.086.lcssa = phi i32 [ 0, %.lr.ph133 ], [ %i.ba, %.preheader121.loopexit ] ; 3 uses
  %i.bc = or disjoint i32 %.086.lcssa, 3
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph124, label %.preheader

.lr.ph124:                                        ; preds = %.preheader121
  %i.be = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bg = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bh = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bi = zext nneg i32 %.086.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bj = phi i32 [ %i.an, %.lr.ph ], [ %i.cy, %bb.c ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bl = sext i32 %i.bj to i64                   ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load <8 x i16>, ptr %i.bn, align 1, !tbaa !17 ; 2 uses
  %i.bp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.br = shufflevector <8 x i16> %i.bp, <8 x i16> %i.bq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = bitcast <16 x i16> %i.br to <8 x float>
  %i.bt = load <8 x i16>, ptr %i.bk, align 1, !tbaa !17 ; 2 uses
  %i.bu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bw = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = bitcast <16 x i16> %i.bw to <8 x float>
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bl
  %i.bz = load <8 x i16>, ptr %i.by, align 1, !tbaa !17 ; 2 uses
  %i.ca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cc = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i16> %i.cc to <8 x float>
  %i.ce = shl nsw i32 %i.bj, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cf
  %i.ch = load <8 x i16>, ptr %i.cg, align 1, !tbaa !17 ; 2 uses
  %i.ci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cl = bitcast <16 x i16> %i.ck to <8 x float>
  %i.cm = fmul fast <8 x float> %i.aw, %i.bs
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.cm)
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.cn)
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.az, <8 x float> nofpclass(nan inf) %i.co)
  %i.cq = bitcast <8 x float> %i.cp to <8 x i32>  ; 2 uses
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ct = lshr <4 x i32> %i.cr, splat (i32 16)
  %i.cu = lshr <4 x i32> %i.cs, splat (i32 16)
  %i.cv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.083131, i64 %indvars.iv
  store <8 x i16> %i.cv, ptr %i.cw, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.cx = or disjoint i64 %indvars.iv.next, 7
  %i.cy = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.c, label %.preheader121.loopexit, !llvm.loop !229

.preheader.loopexit:                              ; preds = %bb.d
  %i.db = trunc nuw nsw i64 %indvars.iv.next146 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader121
  %i.dc = phi i32 [ %i.bb, %.preheader121 ], [ %i.hu, %.preheader.loopexit ] ; 6 uses
  %.1.lcssa = phi i32 [ %.086.lcssa, %.preheader121 ], [ %i.db, %.preheader.loopexit ] ; 2 uses
  %i.dd = icmp slt i32 %.1.lcssa, %i.dc
  br i1 %i.dd, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre158 = sext i32 %i.dc to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.de = shl nsw i32 %i.dc, 1
  %i.df = zext i32 %.1.lcssa to i64               ; 7 uses
  %i.dg = sext i32 %i.dc to i64                   ; 9 uses
  %i.dh = sext i32 %i.de to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.dg ; 3 uses
  %invariant.gep171 = getelementptr [2 x i8], ptr %i.at, i64 %i.dh ; 3 uses
  %i.di = sub nsw i64 %wide.trip.count, %i.df     ; 7 uses
  %min.iters.check = icmp ult i64 %i.di, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dj = sub i64 %.083131175, %i.al              ; 2 uses
  %i.dk = add nsw i64 %i.as, %i.dh
  %i.dl = shl nsw i64 %i.dk, 1
  %i.dm = sub i64 %i.dl, %i.dj
  %diff.check = icmp ugt i64 %i.dm, -32
  %i.dn = add nsw i64 %i.dg, %i.as
  %i.do = shl nsw i64 %i.dn, 1
  %i.dp = sub i64 %i.do, %i.dj
  %diff.check176 = icmp ugt i64 %i.dp, -32
  %conflict.rdx = or i1 %diff.check, %diff.check176
  %i.dq = sub i64 %.083131175, %i.al              ; 2 uses
  %i.dr = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.ds = sub i64 %i.dr, %i.dq
  %diff.check177 = icmp ugt i64 %i.ds, -32
  %conflict.rdx178 = or i1 %conflict.rdx, %diff.check177
  %i.dt = shl nsw i64 %i.dg, 1
  %i.du = add i64 %i.dq, %i.dt
  %i.dv = sub i64 %i.dr, %i.du
  %diff.check179 = icmp ugt i64 %i.dv, -32
  %conflict.rdx180 = or i1 %conflict.rdx178, %diff.check179
  br i1 %conflict.rdx180, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check181 = icmp ult i64 %i.di, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.di, 12
  %n.vec = and i64 %i.di, -16                     ; 4 uses
  %i.dx = add nsw i64 %n.vec, %i.df
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat185 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat187 = shufflevector <4 x float> %i.au, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dy = add nuw i64 %index, %i.df               ; 5 uses
  %i.dz = sub nsw i64 %i.dy, %i.dg
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.dz
  %wide.load = load <16 x i16>, ptr %i.ea, align 2, !tbaa !220
  %i.eb = zext <16 x i16> %wide.load to <16 x i32>
  %i.ec = shl nuw <16 x i32> %i.eb, splat (i32 16)
  %i.ed = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ee = fmul fast <16 x float> %broadcast.splat, %i.ed
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dy
  %wide.load188 = load <16 x i16>, ptr %i.ef, align 2, !tbaa !220
  %i.eg = zext <16 x i16> %wide.load188 to <16 x i32>
  %i.eh = shl nuw <16 x i32> %i.eg, splat (i32 16)
  %i.ei = bitcast <16 x i32> %i.eh to <16 x float>
  %i.ej = fmul fast <16 x float> %broadcast.splat183, %i.ei
  %i.ek = fadd fast <16 x float> %i.ej, %i.ee
  %i.el = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.dy
  %wide.load189 = load <16 x i16>, ptr %i.el, align 2, !tbaa !220
  %i.em = zext <16 x i16> %wide.load189 to <16 x i32>
  %i.en = shl nuw <16 x i32> %i.em, splat (i32 16)
  %i.eo = bitcast <16 x i32> %i.en to <16 x float>
  %i.ep = fmul fast <16 x float> %broadcast.splat185, %i.eo
  %i.eq = fadd fast <16 x float> %i.ek, %i.ep
  %i.er = getelementptr [2 x i8], ptr %invariant.gep171, i64 %i.dy
  %wide.load190 = load <16 x i16>, ptr %i.er, align 2, !tbaa !220
  %i.es = zext <16 x i16> %wide.load190 to <16 x i32>
  %i.et = shl nuw <16 x i32> %i.es, splat (i32 16)
  %i.eu = bitcast <16 x i32> %i.et to <16 x float>
  %i.ev = fmul fast <16 x float> %broadcast.splat187, %i.eu
  %i.ew = fadd fast <16 x float> %i.eq, %i.ev
  %i.ex = bitcast <16 x float> %i.ew to <16 x i32>
  %i.ey = lshr <16 x i32> %i.ex, splat (i32 16)
  %i.ez = trunc nuw <16 x i32> %i.ey to <16 x i16>
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.083131, i64 %i.dy
  store <16 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !220
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !223

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.di, -4                   ; 3 uses
  %i.fc = add nsw i64 %n.vec191, %i.df
  %broadcast.splat193 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat195 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat197 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat199 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next205, %vec.epilog.vector.body ] ; 2 uses
  %i.fd = add nuw i64 %index200, %i.df            ; 5 uses
  %i.fe = sub nsw i64 %i.fd, %i.dg
  %i.ff = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fe
  %wide.load201 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !220
  %i.fg = zext <4 x i16> %wide.load201 to <4 x i32>
  %i.fh = shl nuw <4 x i32> %i.fg, splat (i32 16)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>
  %i.fj = fmul fast <4 x float> %broadcast.splat193, %i.fi
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fd
  %wide.load202 = load <4 x i16>, ptr %i.fk, align 2, !tbaa !220
  %i.fl = zext <4 x i16> %wide.load202 to <4 x i32>
  %i.fm = shl nuw <4 x i32> %i.fl, splat (i32 16)
  %i.fn = bitcast <4 x i32> %i.fm to <4 x float>
  %i.fo = fmul fast <4 x float> %broadcast.splat195, %i.fn
  %i.fp = fadd fast <4 x float> %i.fo, %i.fj
  %i.fq = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fd
  %wide.load203 = load <4 x i16>, ptr %i.fq, align 2, !tbaa !220
  %i.fr = zext <4 x i16> %wide.load203 to <4 x i32>
  %i.fs = shl nuw <4 x i32> %i.fr, splat (i32 16)
  %i.ft = bitcast <4 x i32> %i.fs to <4 x float>
  %i.fu = fmul fast <4 x float> %broadcast.splat197, %i.ft
  %i.fv = fadd fast <4 x float> %i.fp, %i.fu
  %i.fw = getelementptr [2 x i8], ptr %invariant.gep171, i64 %i.fd
  %wide.load204 = load <4 x i16>, ptr %i.fw, align 2, !tbaa !220
  %i.fx = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.fy = shl nuw <4 x i32> %i.fx, splat (i32 16)
  %i.fz = bitcast <4 x i32> %i.fy to <4 x float>
  %i.ga = fmul fast <4 x float> %broadcast.splat199, %i.fz
  %i.gb = fadd fast <4 x float> %i.fv, %i.ga
  %i.gc = bitcast <4 x float> %i.gb to <4 x i32>
  %i.gd = lshr <4 x i32> %i.gc, splat (i32 16)
  %i.ge = trunc nuw <4 x i32> %i.gd to <4 x i16>
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.083131, i64 %i.fd
  store <4 x i16> %i.ge, ptr %i.gf, align 2, !tbaa !220
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next205, %n.vec191
  br i1 %i.gg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n206 = icmp eq i64 %i.di, %n.vec191
  br i1 %cmp.n206, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv148.ph = phi i64 [ %i.df, %iter.check ], [ %i.df, %vector.memcheck ], [ %i.dx, %vec.epilog.iter.check ], [ %i.fc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph124, %bb.d
  %indvars.iv145 = phi i64 [ %i.bi, %.lr.ph124 ], [ %indvars.iv.next146, %bb.d ] ; 3 uses
  %i.gh = phi i32 [ %i.bb, %.lr.ph124 ], [ %i.hu, %bb.d ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv145 ; 4 uses
  %i.gj = sext i32 %i.gh to i64                   ; 2 uses
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 1, !tbaa !17
  %i.gn = insertelement <2 x i64> poison, i64 %i.gm, i64 0
  %i.go = bitcast <2 x i64> %i.gn to <8 x i16>
  %i.gp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.go, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gq = bitcast <8 x i16> %i.gp to <4 x float>
  %i.gr = load i64, ptr %i.gi, align 1, !tbaa !17
  %i.gs = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %i.gt = bitcast <2 x i64> %i.gs to <8 x i16>
  %i.gu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gv = bitcast <8 x i16> %i.gu to <4 x float>
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.gj
  %i.gx = load i64, ptr %i.gw, align 1, !tbaa !17
  %i.gy = insertelement <2 x i64> poison, i64 %i.gx, i64 0
  %i.gz = bitcast <2 x i64> %i.gy to <8 x i16>
  %i.ha = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hb = bitcast <8 x i16> %i.ha to <4 x float>
  %i.hc = shl nsw i32 %i.gh, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 1, !tbaa !17
  %i.hg = insertelement <2 x i64> poison, i64 %i.hf, i64 0
  %i.hh = bitcast <2 x i64> %i.hg to <8 x i16>
  %i.hi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hj = bitcast <8 x i16> %i.hi to <4 x float>
  %i.hk = fmul fast <4 x float> %i.be, %i.gq
  %i.hl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gv, <4 x float> nofpclass(nan inf) %i.bf, <4 x float> nofpclass(nan inf) %i.hk)
  %i.hm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hb, <4 x float> nofpclass(nan inf) %i.bg, <4 x float> nofpclass(nan inf) %i.hl)
  %i.hn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hj, <4 x float> nofpclass(nan inf) %i.bh, <4 x float> nofpclass(nan inf) %i.hm)
  %i.ho = bitcast <4 x float> %i.hn to <4 x i32>
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 16)
  %i.hq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hp, <4 x i32> poison)
  %i.hr = bitcast <8 x i16> %i.hq to <2 x i64>
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.083131, i64 %indvars.iv145
  %i.ht = extractelement <2 x i64> %i.hr, i64 0
  store i64 %i.ht, ptr %i.hs, align 1, !tbaa !17
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 4 ; 3 uses
  %i.hu = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.hv = trunc i64 %indvars.iv.next146 to i32
  %i.hw = or i32 %i.hv, 3
  %i.hx = icmp slt i32 %i.hw, %i.hu
  br i1 %i.hx, label %bb.d, label %.preheader.loopexit, !llvm.loop !232

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %vec.epilog.scalar.ph ], [ %indvars.iv148.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.hy = sub nsw i64 %indvars.iv148, %i.dg
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !220
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv148
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !220
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv148
  %i.id = load i16, ptr %gep, align 2, !tbaa !220
  %gep172 = getelementptr [2 x i8], ptr %invariant.gep171, i64 %indvars.iv148
  %i.ie = load i16, ptr %gep172, align 2, !tbaa !220
  %i.if = zext i16 %i.ie to i32
  %i.ig = zext i16 %i.id to i32
  %i.ih = zext i16 %i.ia to i32
  %i.ii = zext i16 %i.ic to i32
  %i.ij = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.ik = insertelement <4 x i32> %i.ij, i32 %i.ii, i64 1
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ig, i64 2
  %i.im = insertelement <4 x i32> %i.il, i32 %i.if, i64 3
  %i.in = shl nuw <4 x i32> %i.im, splat (i32 16)
  %i.io = bitcast <4 x i32> %i.in to <4 x float>
  %i.ip = fmul fast <4 x float> %i.au, %i.io
  %i.iq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ip)
  %i.ir = bitcast float %i.iq to i32
  %i.is = lshr i32 %i.ir, 16
  %i.it = trunc nuw i32 %i.is to i16
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.083131, i64 %indvars.iv148
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !220
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre158, %.preheader.._crit_edge_crit_edge ], [ %i.dg, %middle.block ], [ %i.dg, %vec.epilog.middle.block ], [ %i.dg, %vec.epilog.scalar.ph ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.084130, i64 16
  %i.iw = getelementptr inbounds [2 x i8], ptr %.083131, i64 %.pre-phi
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ix = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next152, %i.iy
  br i1 %i.iz, label %.lr.ph133, label %._crit_edge134, !llvm.loop !234

._crit_edge139:                                   ; preds = %._crit_edge134, %.lr.ph138, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge139, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #10 personality ptr @__gxx_personality_v0 {
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !235
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !235
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !235 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !238
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !238
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !238 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !238
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !235
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
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !241

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
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !242

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
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03881, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03881, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03782, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !243

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.14:bb.a
  %i.qf = shufflevector <8 x i16> %i.qd, <8 x i16> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = bitcast <16 x i16> %i.qf to <8 x float>
  %i.qh = load <8 x i16>, ptr %i.oh, align 1, !tbaa !17 ; 2 uses
  %i.qi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qk = shufflevector <8 x i16> %i.qi, <8 x i16> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ql = bitcast <16 x i16> %i.qk to <8 x float>
  %i.qm = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.qn = load <8 x i16>, ptr %i.qm, align 1, !tbaa !17 ; 2 uses
  %i.qo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qq = shufflevector <8 x i16> %i.qo, <8 x i16> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qr = bitcast <16 x i16> %i.qq to <8 x float>
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.qt = load <8 x i16>, ptr %i.qs, align 1, !tbaa !17 ; 2 uses
  %i.qu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qw = shufflevector <8 x i16> %i.qu, <8 x i16> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qx = bitcast <16 x i16> %i.qw to <8 x float>
  %i.qy = fmul fast <8 x float> %i.ok, %i.qg
  %i.qz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ql, <8 x float> nofpclass(nan inf) %i.oo, <8 x float> nofpclass(nan inf) %i.qy)
  %i.ra = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qr, <8 x float> nofpclass(nan inf) %i.os, <8 x float> nofpclass(nan inf) %i.qz)
  %i.rb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qx, <8 x float> nofpclass(nan inf) %i.ow, <8 x float> nofpclass(nan inf) %i.ra)
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.0257486.i, i64 %i.ox
  store <8 x float> %i.rb, ptr %i.rc, align 32, !tbaa !17
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.2.i ; 4 uses
  %i.rd = getelementptr inbounds i8, ptr %gep.2.i, i64 -16
  %i.re = load <8 x i16>, ptr %i.rd, align 1, !tbaa !17 ; 2 uses
  %i.rf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.re, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rh = shufflevector <8 x i16> %i.rf, <8 x i16> %i.rg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ri = bitcast <16 x i16> %i.rh to <8 x float>
  %i.rj = load <8 x i16>, ptr %gep.2.i, align 1, !tbaa !17 ; 2 uses
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rm = shufflevector <8 x i16> %i.rk, <8 x i16> %i.rl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = bitcast <16 x i16> %i.rm to <8 x float>
  %i.ro = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 16
  %i.rp = load <8 x i16>, ptr %i.ro, align 1, !tbaa !17 ; 2 uses
  %i.rq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rs = shufflevector <8 x i16> %i.rq, <8 x i16> %i.rr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rt = bitcast <16 x i16> %i.rs to <8 x float>
  %i.ru = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 32
  %i.rv = load <8 x i16>, ptr %i.ru, align 1, !tbaa !17 ; 2 uses
  %i.rw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ry = shufflevector <8 x i16> %i.rw, <8 x i16> %i.rx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rz = bitcast <16 x i16> %i.ry to <8 x float>
  %i.sa = fmul fast <8 x float> %i.ok, %i.ri
  %i.sb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %i.oo, <8 x float> nofpclass(nan inf) %i.sa)
  %i.sc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rt, <8 x float> nofpclass(nan inf) %i.os, <8 x float> nofpclass(nan inf) %i.sb)
  %i.sd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rz, <8 x float> nofpclass(nan inf) %i.ow, <8 x float> nofpclass(nan inf) %i.sc)
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0259485.i, i64 %i.ox
  store <8 x float> %i.sd, ptr %i.se, align 32, !tbaa !17
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.3.i ; 4 uses
  %i.sf = getelementptr inbounds i8, ptr %gep.3.i, i64 -16
  %i.sg = load <8 x i16>, ptr %i.sf, align 1, !tbaa !17 ; 2 uses
  %i.sh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.si = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sj = shufflevector <8 x i16> %i.sh, <8 x i16> %i.si, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sk = bitcast <16 x i16> %i.sj to <8 x float>
  %i.sl = load <8 x i16>, ptr %gep.3.i, align 1, !tbaa !17 ; 2 uses
  %i.sm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sn = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.so = shufflevector <8 x i16> %i.sm, <8 x i16> %i.sn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sp = bitcast <16 x i16> %i.so to <8 x float>
  %i.sq = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 16
  %i.sr = load <8 x i16>, ptr %i.sq, align 1, !tbaa !17 ; 2 uses
  %i.ss = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.st = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.su = shufflevector <8 x i16> %i.ss, <8 x i16> %i.st, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sv = bitcast <16 x i16> %i.su to <8 x float>
  %i.sw = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 32
  %i.sx = load <8 x i16>, ptr %i.sw, align 1, !tbaa !17 ; 2 uses
  %i.sy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ta = shufflevector <8 x i16> %i.sy, <8 x i16> %i.sz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tb = bitcast <16 x i16> %i.ta to <8 x float>
  %i.tc = fmul fast <8 x float> %i.ok, %i.sk
  %i.td = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sp, <8 x float> nofpclass(nan inf) %i.oo, <8 x float> nofpclass(nan inf) %i.tc)
  %i.te = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sv, <8 x float> nofpclass(nan inf) %i.os, <8 x float> nofpclass(nan inf) %i.td)
  %i.tf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tb, <8 x float> nofpclass(nan inf) %i.ow, <8 x float> nofpclass(nan inf) %i.te)
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.0261484.i, i64 %i.ox
  store <8 x float> %i.tf, ptr %i.tg, align 32, !tbaa !17
  %i.th = getelementptr inbounds nuw i8, ptr %.0269468.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread462.3.i, !llvm.loop !278

.loopexit.i:                                      ; preds = %.thread462.3.i, %bb.al, %.lr.ph478.i, %.lr.ph481.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1262.i = phi ptr [ %.0261484.i, %bb.ae ], [ %.0255487.i, %bb.ag ], [ %.0257486.i, %bb.ai ], [ %.0259485.i, %bb.ak ], [ %.0261484.i, %bb.am ], [ %.0259485.i, %bb.al ], [ %.0255487.i, %.lr.ph481.i ], [ %.0257486.i, %.lr.ph478.i ], [ %.0261484.i, %.thread462.3.i ] ; 5 uses
  %.1260.i = phi ptr [ %.0259485.i, %bb.ae ], [ %.0261484.i, %bb.ag ], [ %.0255487.i, %bb.ai ], [ %.0257486.i, %bb.ak ], [ %.0259485.i, %bb.am ], [ %.0257486.i, %bb.al ], [ %.0261484.i, %.lr.ph481.i ], [ %.0255487.i, %.lr.ph478.i ], [ %.0259485.i, %.thread462.3.i ] ; 5 uses
  %.1258.i = phi ptr [ %.0257486.i, %bb.ae ], [ %.0259485.i, %bb.ag ], [ %.0261484.i, %bb.ai ], [ %.0255487.i, %bb.ak ], [ %.0257486.i, %bb.am ], [ %.0255487.i, %bb.al ], [ %.0259485.i, %.lr.ph481.i ], [ %.0261484.i, %.lr.ph478.i ], [ %.0257486.i, %.thread462.3.i ] ; 5 uses
  %.1256.i = phi ptr [ %.0255487.i, %bb.ae ], [ %.0257486.i, %bb.ag ], [ %.0259485.i, %bb.ai ], [ %.0261484.i, %bb.ak ], [ %.0255487.i, %bb.am ], [ %.0261484.i, %bb.al ], [ %.0257486.i, %.lr.ph481.i ], [ %.0259485.i, %.lr.ph478.i ], [ %.0255487.i, %.thread462.3.i ] ; 5 uses
  %i.ti = mul i64 %i.ci, %indvars.iv510.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ti ; 4 uses
  %i.tk = load float, ptr %.0488.i, align 4, !tbaa !70 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0488.i, i64 4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !70 ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.0488.i, i64 8
  %i.to = load float, ptr %i.tn, align 4, !tbaa !70 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.0488.i, i64 12
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !70 ; 4 uses
  %i.tr = insertelement <8 x float> poison, float %i.tk, i64 0
  %i.ts = shufflevector <8 x float> %i.tr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tt = insertelement <8 x float> poison, float %i.tm, i64 0
  %i.tu = shufflevector <8 x float> %i.tt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tv = insertelement <8 x float> poison, float %i.to, i64 0
  %i.tw = shufflevector <8 x float> %i.tv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tx = insertelement <8 x float> poison, float %i.tq, i64 0
  %i.ty = shufflevector <8 x float> %i.tx, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.cf, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i
  %i.ua = load <8 x float>, ptr %i.tz, align 1, !tbaa !17
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv.i.i
  %i.uc = load <8 x float>, ptr %i.ub, align 1, !tbaa !17
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv.i.i
  %i.ue = load <8 x float>, ptr %i.ud, align 1, !tbaa !17
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv.i.i
  %i.ug = load <8 x float>, ptr %i.uf, align 1, !tbaa !17
  %i.uh = fmul fast <8 x float> %i.ua, %i.ts
  %i.ui = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.uc, <8 x float> nofpclass(nan inf) %i.tu, <8 x float> nofpclass(nan inf) %i.uh)
  %i.uj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ue, <8 x float> nofpclass(nan inf) %i.tw, <8 x float> nofpclass(nan inf) %i.ui)
  %i.uk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ug, <8 x float> nofpclass(nan inf) %i.ty, <8 x float> nofpclass(nan inf) %i.uj)
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %indvars.iv.i.i
  %i.um = bitcast <8 x float> %i.uk to <8 x i32>  ; 2 uses
  %i.un = shufflevector <8 x i32> %i.um, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uo = shufflevector <8 x i32> %i.um, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.up = lshr <4 x i32> %i.un, splat (i32 16)
  %i.uq = lshr <4 x i32> %i.uo, splat (i32 16)
  %i.ur = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.up, <4 x i32> %i.uq)
  store <8 x i16> %i.ur, ptr %i.ul, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %i.us = or disjoint i64 %indvars.iv.next.i.i, 7
  %i.ut = icmp samesign ult i64 %i.us, %i.ch
  br i1 %i.ut, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !279

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.uu = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.uu, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.uv = insertelement <4 x float> poison, float %i.tk, i64 0
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ux = insertelement <4 x float> poison, float %i.tm, i64 0
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uz = insertelement <4 x float> poison, float %i.to, i64 0
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vb = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vd = or disjoint i32 %.0.lcssa.i.i, 3
  %i.ve = icmp slt i32 %i.vd, %i.cg
  br i1 %i.ve, label %.lr.ph78.preheader.i.i, label %.preheader.i.i

.lr.ph78.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.vf = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph78.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph78.i.i
  %i.vg = trunc nuw nsw i64 %indvars.iv.next86.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.vg, %.preheader.loopexit.i.i ] ; 2 uses
  %i.vh = icmp slt i32 %.1.lcssa.i.i, %i.cg
  br i1 %i.vh, label %.lr.ph81.preheader.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

.lr.ph81.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.vi = zext i32 %.1.lcssa.i.i to i64           ; 4 uses
  %i.vj = sub nsw i64 %i.ch, %i.vi                ; 3 uses
  %min.iters.check425 = icmp ult i64 %i.vj, 8
  br i1 %min.iters.check425, label %.lr.ph81.i.i.preheader, label %vector.ph426

vector.ph426:                                     ; preds = %.lr.ph81.preheader.i.i
  %n.vec427 = and i64 %i.vj, -8                   ; 3 uses
  %i.vk = add nsw i64 %n.vec427, %i.vi
  %broadcast.splatinsert428 = insertelement <8 x float> poison, float %i.tk, i64 0
  %broadcast.splat429 = shufflevector <8 x float> %broadcast.splatinsert428, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert430 = insertelement <8 x float> poison, float %i.tm, i64 0
  %broadcast.splat431 = shufflevector <8 x float> %broadcast.splatinsert430, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.to, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert434 = insertelement <8 x float> poison, float %i.tq, i64 0
  %broadcast.splat435 = shufflevector <8 x float> %broadcast.splatinsert434, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph426
  %index437 = phi i64 [ 0, %vector.ph426 ], [ %index.next442, %vector.body436 ] ; 2 uses
  %i.vl = add nuw i64 %index437, %i.vi            ; 5 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.vl
  %wide.load438 = load <8 x float>, ptr %i.vm, align 4, !tbaa !70
  %i.vn = fmul fast <8 x float> %wide.load438, %broadcast.splat429
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %i.vl
  %wide.load439 = load <8 x float>, ptr %i.vo, align 4, !tbaa !70
  %i.vp = fmul fast <8 x float> %wide.load439, %broadcast.splat431
  %i.vq = fadd fast <8 x float> %i.vp, %i.vn
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %i.vl
  %wide.load440 = load <8 x float>, ptr %i.vr, align 4, !tbaa !70
  %i.vs = fmul fast <8 x float> %wide.load440, %broadcast.splat433
  %i.vt = fadd fast <8 x float> %i.vq, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %i.vl
  %wide.load441 = load <8 x float>, ptr %i.vu, align 4, !tbaa !70
  %i.vv = fmul fast <8 x float> %wide.load441, %broadcast.splat435
  %i.vw = fadd fast <8 x float> %i.vt, %i.vv
  %i.vx = bitcast <8 x float> %i.vw to <8 x i32>
  %i.vy = lshr <8 x i32> %i.vx, splat (i32 16)
  %i.vz = trunc nuw <8 x i32> %i.vy to <8 x i16>
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %i.vl
  store <8 x i16> %i.vz, ptr %i.wa, align 2, !tbaa !220
  %index.next442 = add nuw i64 %index437, 8       ; 2 uses
  %i.wb = icmp eq i64 %index.next442, %n.vec427
  br i1 %i.wb, label %middle.block443, label %vector.body436, !llvm.loop !280

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %i.vj, %n.vec427
  br i1 %cmp.n444, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph81.i.i.preheader

.lr.ph81.i.i.preheader:                           ; preds = %.lr.ph81.preheader.i.i, %middle.block443
  %indvars.iv88.i.i.ph = phi i64 [ %i.vi, %.lr.ph81.preheader.i.i ], [ %i.vk, %middle.block443 ]
  br label %.lr.ph81.i.i

.lr.ph78.i.i:                                     ; preds = %.lr.ph78.i.i, %.lr.ph78.preheader.i.i
  %indvars.iv85.i.i = phi i64 [ %i.vf, %.lr.ph78.preheader.i.i ], [ %indvars.iv.next86.i.i, %.lr.ph78.i.i ] ; 6 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv85.i.i
  %i.wd = load <4 x float>, ptr %i.wc, align 1, !tbaa !17
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv85.i.i
  %i.wf = load <4 x float>, ptr %i.we, align 1, !tbaa !17
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv85.i.i
  %i.wh = load <4 x float>, ptr %i.wg, align 1, !tbaa !17
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv85.i.i
  %i.wj = load <4 x float>, ptr %i.wi, align 1, !tbaa !17
  %i.wk = fmul fast <4 x float> %i.wd, %i.uw
  %i.wl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wf, <4 x float> nofpclass(nan inf) %i.uy, <4 x float> nofpclass(nan inf) %i.wk)
  %i.wm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wh, <4 x float> nofpclass(nan inf) %i.va, <4 x float> nofpclass(nan inf) %i.wl)
  %i.wn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.wm)
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %indvars.iv85.i.i
  %i.wp = bitcast <4 x float> %i.wn to <4 x i32>
  %i.wq = lshr <4 x i32> %i.wp, splat (i32 16)
  %i.wr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wq, <4 x i32> poison)
  %i.ws = bitcast <8 x i16> %i.wr to <2 x i64>
  %i.wt = extractelement <2 x i64> %i.ws, i64 0
  store i64 %i.wt, ptr %i.wo, align 1, !tbaa !17
  %indvars.iv.next86.i.i = add nuw nsw i64 %indvars.iv85.i.i, 4 ; 3 uses
  %i.wu = icmp slt i64 %indvars.iv.next86.i.i, %invariant.op.i.i
  br i1 %i.wu, label %.lr.ph78.i.i, label %.preheader.loopexit.i.i, !llvm.loop !281

.lr.ph81.i.i:                                     ; preds = %.lr.ph81.i.i.preheader, %.lr.ph81.i.i
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %.lr.ph81.i.i ], [ %indvars.iv88.i.i.ph, %.lr.ph81.i.i.preheader ] ; 6 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv88.i.i
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !70
  %i.wx = fmul fast float %i.ww, %i.tk
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv88.i.i
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !70
  %i.xa = fmul fast float %i.wz, %i.tm
  %i.xb = fadd fast float %i.xa, %i.wx
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv88.i.i
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !70
  %i.xe = fmul fast float %i.xd, %i.to
  %i.xf = fadd fast float %i.xb, %i.xe
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv88.i.i
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !70
  %i.xi = fmul fast float %i.xh, %i.tq
  %i.xj = fadd fast float %i.xf, %i.xi
  %i.xk = bitcast float %i.xj to i32
  %i.xl = lshr i32 %i.xk, 16
  %i.xm = trunc nuw i32 %i.xl to i16
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.tj, i64 %indvars.iv88.i.i
  store i16 %i.xm, ptr %i.xn, align 2, !tbaa !220
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next89.i.i, %i.ch
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph81.i.i, !llvm.loop !282

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph81.i.i, %middle.block443, %.preheader.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %.0488.i, i64 16
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %exitcond514.not.i = icmp eq i64 %indvars.iv.next511.i, %wide.trip.count513.i
  br i1 %exitcond514.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !283

bb.an:                                            ; preds = %bb.ad
  %i.xp = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.xq = icmp eq i32 %i.xp, 1
  br i1 %i.xq, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit322.i

bb.ao:                                            ; preds = %bb.an
  %i.xr = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i345.i = icmp eq ptr %i.xr, null
  %i.xs = load ptr, ptr %20, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i345.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !9
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8
  invoke void %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %i.xr, ptr noundef %i.xs)
          to label %_ZN4ncnn3MatD2Ev.exit322.i unwind label %bb.as, !inline_history !46

bb.aq:                                            ; preds = %bb.ao
  %.not.i359.i = icmp eq ptr %i.xs, null
  br i1 %.not.i359.i, label %_ZN4ncnn3MatD2Ev.exit322.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.xs) #6
  br label %_ZN4ncnn3MatD2Ev.exit322.i

bb.as:                                            ; preds = %bb.ap
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit322.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn316.pn.pn.i = phi { ptr, i32 } [ %i.dz, %bb.ac ], [ %i.ea, %bb.an ], [ %i.ea, %bb.ad ], [ %i.ea, %bb.ap ], [ %i.ea, %bb.aq ], [ %i.ea, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #6
  %i.xy = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i348.i = icmp eq ptr %i.xy, null
  br i1 %.not.i348.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit322.i
  %i.xz = atomicrmw add ptr %i.xy, i32 -1 acq_rel, align 4
  %i.ya = icmp eq i32 %i.xz, 1
  br i1 %i.ya, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit321.i

bb.au:                                            ; preds = %bb.at
  %i.yb = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i349.i = icmp eq ptr %i.yb, null
  %i.yc = load ptr, ptr %19, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i349.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yd = load ptr, ptr %i.yb, align 8, !tbaa !9
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8
  invoke void %i.yf(ptr noundef nonnull align 8 dereferenceable(8) %i.yb, ptr noundef %i.yc)
          to label %_ZN4ncnn3MatD2Ev.exit321.i unwind label %bb.ay, !inline_history !46

bb.aw:                                            ; preds = %bb.au
  %.not.i357.i = icmp eq ptr %i.yc, null
  br i1 %.not.i357.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.yc) #6
  br label %_ZN4ncnn3MatD2Ev.exit321.i

bb.ay:                                            ; preds = %bb.av
  %i.yg = landingpad { ptr, i32 }
          catch ptr null
  %i.yh = extractvalue { ptr, i32 } %i.yg, 0
  call void @__clang_call_terminate(ptr %i.yh) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit321.i:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %_ZN4ncnn3MatD2Ev.exit322.i, %bb.ab
  %.pn316.pn.pn.pn.i = phi { ptr, i32 } [ %i.dy, %bb.ab ], [ %.pn316.pn.pn.i, %bb.at ], [ %.pn316.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit322.i ], [ %.pn316.pn.pn.i, %bb.av ], [ %.pn316.pn.pn.i, %bb.aw ], [ %.pn316.pn.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  %i.yi = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i352.i = icmp eq ptr %i.yi, null
  br i1 %.not.i352.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit321.i
  %i.yj = atomicrmw add ptr %i.yi, i32 -1 acq_rel, align 4
  %i.yk = icmp eq i32 %i.yj, 1
  br i1 %i.yk, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.yl = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i353.i = icmp eq ptr %i.yl, null
  %i.ym = load ptr, ptr %18, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i353.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.yn = load ptr, ptr %i.yl, align 8, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 24
  %i.yp = load ptr, ptr %i.yo, align 8
  invoke void %i.yp(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, ptr noundef %i.ym)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.be, !inline_history !46

bb.bc:                                            ; preds = %bb.ba
  %.not.i356.i = icmp eq ptr %i.ym, null
  br i1 %.not.i356.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.ym) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.be:                                            ; preds = %bb.bb
  %i.yq = landingpad { ptr, i32 }
          catch ptr null
  %i.yr = extractvalue { ptr, i32 } %i.yq, 0
  call void @__clang_call_terminate(ptr %i.yr) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %_ZN4ncnn3MatD2Ev.exit321.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit324.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ys = phi i32 [ %.pr, %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bu, %_ZNK4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.yt = icmp eq i32 %i.ys, 4
  br i1 %i.yt, label %bb.bg, label %bb.dj

bb.bg:                                            ; preds = %bb.bf
  %i.yu = load ptr, ptr %6, align 8, !tbaa !72    ; 4 uses
  %i.yv = load ptr, ptr %7, align 8, !tbaa !71    ; 4 uses
  %i.yw = load ptr, ptr %8, align 8, !tbaa !72
  %i.yx = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bl, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc69 unwind label %bb.fn

.noexc69:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bl, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i unwind label %bb.cf

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i:      ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  store i64 0, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.bl, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i unwind label %bb.cg

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.bl, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31 unwind label %bb.ch

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i
  %i.yy = icmp sgt i32 %i.bm, 0
  br i1 %i.yy, label %.lr.ph437.i, label %._crit_edge.i32

.lr.ph437.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31
  %i.yz = load ptr, ptr %17, align 8, !tbaa !45
  %i.za = load ptr, ptr %16, align 8, !tbaa !45
  %i.zb = load ptr, ptr %15, align 8, !tbaa !45
  %i.zc = load ptr, ptr %14, align 8, !tbaa !45
  %i.zd = icmp sgt i32 %i.bl, 0                   ; 4 uses
  %i.ze = shl i32 %i.bl, 2                        ; 3 uses
  %i.zf = icmp sgt i32 %i.bl, 1
  %i.zg = zext i32 %i.ze to i64                   ; 4 uses
  %invariant.op.i.i33 = add nsw i64 %i.zg, -3
end_hunk_5
begin_hunk_6_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.14:bb.a
  %i.ane = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.and, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anf = bitcast <8 x i16> %i.ane to <4 x float>
  %i.ang = load i64, ptr %i.alg, align 1, !tbaa !17
  %i.anh = insertelement <2 x i64> poison, i64 %i.ang, i64 0
  %i.ani = bitcast <2 x i64> %i.anh to <8 x i16>
  %i.anj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ani, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ank = bitcast <8 x i16> %i.anj to <4 x float>
  %i.anl = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.anm = load i64, ptr %i.anl, align 1, !tbaa !17
  %i.ann = insertelement <2 x i64> poison, i64 %i.anm, i64 0
  %i.ano = bitcast <2 x i64> %i.ann to <8 x i16>
  %i.anp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ano, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anq = bitcast <8 x i16> %i.anp to <4 x float>
  %i.anr = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  %i.ans = load i64, ptr %i.anr, align 1, !tbaa !17
  %i.ant = insertelement <2 x i64> poison, i64 %i.ans, i64 0
  %i.anu = bitcast <2 x i64> %i.ant to <8 x i16>
  %i.anv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.anu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anw = bitcast <8 x i16> %i.anv to <4 x float>
  %i.anx = fmul fast <4 x float> %i.alj, %i.anf
  %i.any = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ank, <4 x float> nofpclass(nan inf) %i.aln, <4 x float> nofpclass(nan inf) %i.anx)
  %i.anz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anq, <4 x float> nofpclass(nan inf) %i.alr, <4 x float> nofpclass(nan inf) %i.any)
  %i.aoa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anw, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> nofpclass(nan inf) %i.anz)
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %.0241434.i, i64 %i.alw
  store <4 x float> %i.aoa, ptr %i.aob, align 16, !tbaa !17
  %gep.2.i64 = getelementptr i8, ptr %invariant.gep.i63, i64 %.v.v.2.i58 ; 4 uses
  %i.aoc = getelementptr inbounds i8, ptr %gep.2.i64, i64 -8
  %i.aod = load i64, ptr %i.aoc, align 1, !tbaa !17
  %i.aoe = insertelement <2 x i64> poison, i64 %i.aod, i64 0
  %i.aof = bitcast <2 x i64> %i.aoe to <8 x i16>
  %i.aog = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aof, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoh = bitcast <8 x i16> %i.aog to <4 x float>
  %i.aoi = load i64, ptr %gep.2.i64, align 1, !tbaa !17
  %i.aoj = insertelement <2 x i64> poison, i64 %i.aoi, i64 0
  %i.aok = bitcast <2 x i64> %i.aoj to <8 x i16>
  %i.aol = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aok, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aom = bitcast <8 x i16> %i.aol to <4 x float>
  %i.aon = getelementptr inbounds nuw i8, ptr %gep.2.i64, i64 8
  %i.aoo = load i64, ptr %i.aon, align 1, !tbaa !17
  %i.aop = insertelement <2 x i64> poison, i64 %i.aoo, i64 0
  %i.aoq = bitcast <2 x i64> %i.aop to <8 x i16>
  %i.aor = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aoq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aos = bitcast <8 x i16> %i.aor to <4 x float>
  %i.aot = getelementptr inbounds nuw i8, ptr %gep.2.i64, i64 16
  %i.aou = load i64, ptr %i.aot, align 1, !tbaa !17
  %i.aov = insertelement <2 x i64> poison, i64 %i.aou, i64 0
  %i.aow = bitcast <2 x i64> %i.aov to <8 x i16>
  %i.aox = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aow, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aoy = bitcast <8 x i16> %i.aox to <4 x float>
  %i.aoz = fmul fast <4 x float> %i.alj, %i.aoh
  %i.apa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aom, <4 x float> nofpclass(nan inf) %i.aln, <4 x float> nofpclass(nan inf) %i.aoz)
  %i.apb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aos, <4 x float> nofpclass(nan inf) %i.alr, <4 x float> nofpclass(nan inf) %i.apa)
  %i.apc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aoy, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> nofpclass(nan inf) %i.apb)
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %.0243433.i, i64 %i.alw
  store <4 x float> %i.apc, ptr %i.apd, align 16, !tbaa !17
  %gep.3.i65 = getelementptr i8, ptr %invariant.gep.i63, i64 %.v.v.3.i61 ; 4 uses
  %i.ape = getelementptr inbounds i8, ptr %gep.3.i65, i64 -8
  %i.apf = load i64, ptr %i.ape, align 1, !tbaa !17
  %i.apg = insertelement <2 x i64> poison, i64 %i.apf, i64 0
  %i.aph = bitcast <2 x i64> %i.apg to <8 x i16>
  %i.api = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aph, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apj = bitcast <8 x i16> %i.api to <4 x float>
  %i.apk = load i64, ptr %gep.3.i65, align 1, !tbaa !17
  %i.apl = insertelement <2 x i64> poison, i64 %i.apk, i64 0
  %i.apm = bitcast <2 x i64> %i.apl to <8 x i16>
  %i.apn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apo = bitcast <8 x i16> %i.apn to <4 x float>
  %i.app = getelementptr inbounds nuw i8, ptr %gep.3.i65, i64 8
  %i.apq = load i64, ptr %i.app, align 1, !tbaa !17
  %i.apr = insertelement <2 x i64> poison, i64 %i.apq, i64 0
  %i.aps = bitcast <2 x i64> %i.apr to <8 x i16>
  %i.apt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aps, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apu = bitcast <8 x i16> %i.apt to <4 x float>
  %i.apv = getelementptr inbounds nuw i8, ptr %gep.3.i65, i64 16
  %i.apw = load i64, ptr %i.apv, align 1, !tbaa !17
  %i.apx = insertelement <2 x i64> poison, i64 %i.apw, i64 0
  %i.apy = bitcast <2 x i64> %i.apx to <8 x i16>
  %i.apz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqa = bitcast <8 x i16> %i.apz to <4 x float>
  %i.aqb = fmul fast <4 x float> %i.alj, %i.apj
  %i.aqc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apo, <4 x float> nofpclass(nan inf) %i.aln, <4 x float> nofpclass(nan inf) %i.aqb)
  %i.aqd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.apu, <4 x float> nofpclass(nan inf) %i.alr, <4 x float> nofpclass(nan inf) %i.aqc)
  %i.aqe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aqa, <4 x float> nofpclass(nan inf) %i.alv, <4 x float> nofpclass(nan inf) %i.aqd)
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.0245432.i, i64 %i.alw
  store <4 x float> %i.aqe, ptr %i.aqf, align 16, !tbaa !17
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 16
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i34
  br i1 %exitcond.not.i67, label %.loopexit.i35, label %.thread410.3.i, !llvm.loop !287

.loopexit.i35:                                    ; preds = %.thread410.3.i, %bb.cp, %.lr.ph426.i, %.lr.ph429.i, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci
  %.1246.i = phi ptr [ %.0245432.i, %bb.ci ], [ %.0239435.i, %bb.ck ], [ %.0241434.i, %bb.cm ], [ %.0243433.i, %bb.co ], [ %.0245432.i, %bb.cq ], [ %.0243433.i, %bb.cp ], [ %.0239435.i, %.lr.ph429.i ], [ %.0241434.i, %.lr.ph426.i ], [ %.0245432.i, %.thread410.3.i ] ; 5 uses
  %.1244.i = phi ptr [ %.0243433.i, %bb.ci ], [ %.0245432.i, %bb.ck ], [ %.0239435.i, %bb.cm ], [ %.0241434.i, %bb.co ], [ %.0243433.i, %bb.cq ], [ %.0241434.i, %bb.cp ], [ %.0245432.i, %.lr.ph429.i ], [ %.0239435.i, %.lr.ph426.i ], [ %.0243433.i, %.thread410.3.i ] ; 5 uses
  %.1242.i = phi ptr [ %.0241434.i, %bb.ci ], [ %.0243433.i, %bb.ck ], [ %.0245432.i, %bb.cm ], [ %.0239435.i, %bb.co ], [ %.0241434.i, %bb.cq ], [ %.0239435.i, %bb.cp ], [ %.0243433.i, %.lr.ph429.i ], [ %.0245432.i, %.lr.ph426.i ], [ %.0241434.i, %.thread410.3.i ] ; 5 uses
  %.1240.i = phi ptr [ %.0239435.i, %bb.ci ], [ %.0241434.i, %bb.ck ], [ %.0243433.i, %bb.cm ], [ %.0245432.i, %bb.co ], [ %.0239435.i, %bb.cq ], [ %.0245432.i, %bb.cp ], [ %.0241434.i, %.lr.ph429.i ], [ %.0243433.i, %.lr.ph426.i ], [ %.0239435.i, %.thread410.3.i ] ; 5 uses
  %i.aqh = mul i64 %i.zh, %indvars.iv458.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.aqh ; 4 uses
  %i.aqj = load float, ptr %.0436.i, align 4, !tbaa !70 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %.0436.i, i64 4
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !70 ; 4 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %.0436.i, i64 8
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !70 ; 4 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0436.i, i64 12
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !70 ; 4 uses
  %i.aqq = insertelement <8 x float> poison, float %i.aqj, i64 0
  %i.aqr = shufflevector <8 x float> %i.aqq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqs = insertelement <8 x float> poison, float %i.aql, i64 0
  %i.aqt = shufflevector <8 x float> %i.aqs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqu = insertelement <8 x float> poison, float %i.aqn, i64 0
  %i.aqv = shufflevector <8 x float> %i.aqu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqw = insertelement <8 x float> poison, float %i.aqp, i64 0
  %i.aqx = shufflevector <8 x float> %i.aqw, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.zf, label %.lr.ph.i.i51, label %._crit_edge.i.i36

.lr.ph.i.i51:                                     ; preds = %.loopexit.i35, %.lr.ph.i.i51
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i53, %.lr.ph.i.i51 ], [ 0, %.loopexit.i35 ] ; 6 uses
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv.i.i52
  %i.aqz = load <8 x float>, ptr %i.aqy, align 1, !tbaa !17
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv.i.i52
  %i.arb = load <8 x float>, ptr %i.ara, align 1, !tbaa !17
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv.i.i52
  %i.ard = load <8 x float>, ptr %i.arc, align 1, !tbaa !17
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv.i.i52
  %i.arf = load <8 x float>, ptr %i.are, align 1, !tbaa !17
  %i.arg = fmul fast <8 x float> %i.aqz, %i.aqr
  %i.arh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arb, <8 x float> nofpclass(nan inf) %i.aqt, <8 x float> nofpclass(nan inf) %i.arg)
  %i.ari = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ard, <8 x float> nofpclass(nan inf) %i.aqv, <8 x float> nofpclass(nan inf) %i.arh)
  %i.arj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arf, <8 x float> nofpclass(nan inf) %i.aqx, <8 x float> nofpclass(nan inf) %i.ari)
  %i.ark = getelementptr inbounds nuw [2 x i8], ptr %i.aqi, i64 %indvars.iv.i.i52
  %i.arl = bitcast <8 x float> %i.arj to <8 x i32> ; 2 uses
  %i.arm = shufflevector <8 x i32> %i.arl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arn = shufflevector <8 x i32> %i.arl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aro = lshr <4 x i32> %i.arm, splat (i32 16)
  %i.arp = lshr <4 x i32> %i.arn, splat (i32 16)
  %i.arq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aro, <4 x i32> %i.arp)
  store <8 x i16> %i.arq, ptr %i.ark, align 1, !tbaa !17
  %indvars.iv.next.i.i53 = add nuw nsw i64 %indvars.iv.i.i52, 8 ; 3 uses
  %i.arr = or disjoint i64 %indvars.iv.next.i.i53, 7
  %i.ars = icmp samesign ult i64 %i.arr, %i.zg
  br i1 %i.ars, label %.lr.ph.i.i51, label %._crit_edge.loopexit.i.i54, !llvm.loop !279

._crit_edge.loopexit.i.i54:                       ; preds = %.lr.ph.i.i51
  %i.art = trunc nuw nsw i64 %indvars.iv.next.i.i53 to i32
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %._crit_edge.loopexit.i.i54, %.loopexit.i35
  %.0.lcssa.i.i37 = phi i32 [ 0, %.loopexit.i35 ], [ %i.art, %._crit_edge.loopexit.i.i54 ] ; 3 uses
  %i.aru = insertelement <4 x float> poison, float %i.aqj, i64 0
  %i.arv = shufflevector <4 x float> %i.aru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arw = insertelement <4 x float> poison, float %i.aql, i64 0
  %i.arx = shufflevector <4 x float> %i.arw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ary = insertelement <4 x float> poison, float %i.aqn, i64 0
  %i.arz = shufflevector <4 x float> %i.ary, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asa = insertelement <4 x float> poison, float %i.aqp, i64 0
  %i.asb = shufflevector <4 x float> %i.asa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asc = or disjoint i32 %.0.lcssa.i.i37, 3
  %i.asd = icmp slt i32 %i.asc, %i.ze
  br i1 %i.asd, label %.lr.ph78.preheader.i.i46, label %.preheader.i.i38

.lr.ph78.preheader.i.i46:                         ; preds = %._crit_edge.i.i36
  %i.ase = zext nneg i32 %.0.lcssa.i.i37 to i64
  br label %.lr.ph78.i.i47

.preheader.loopexit.i.i50:                        ; preds = %.lr.ph78.i.i47
  %i.asf = trunc nuw nsw i64 %indvars.iv.next86.i.i49 to i32
  br label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.preheader.loopexit.i.i50, %._crit_edge.i.i36
  %.1.lcssa.i.i39 = phi i32 [ %.0.lcssa.i.i37, %._crit_edge.i.i36 ], [ %i.asf, %.preheader.loopexit.i.i50 ] ; 2 uses
  %i.asg = icmp slt i32 %.1.lcssa.i.i39, %i.ze
  br i1 %i.asg, label %.lr.ph81.preheader.i.i41, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i40

.lr.ph81.preheader.i.i41:                         ; preds = %.preheader.i.i38
  %i.ash = zext i32 %.1.lcssa.i.i39 to i64        ; 4 uses
  %i.asi = sub nsw i64 %i.zg, %i.ash              ; 3 uses
  %min.iters.check403 = icmp ult i64 %i.asi, 8
  br i1 %min.iters.check403, label %.lr.ph81.i.i42.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %.lr.ph81.preheader.i.i41
  %n.vec405 = and i64 %i.asi, -8                  ; 3 uses
  %i.asj = add nsw i64 %n.vec405, %i.ash
  %broadcast.splatinsert406 = insertelement <8 x float> poison, float %i.aqj, i64 0
  %broadcast.splat407 = shufflevector <8 x float> %broadcast.splatinsert406, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <8 x float> poison, float %i.aql, i64 0
  %broadcast.splat409 = shufflevector <8 x float> %broadcast.splatinsert408, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <8 x float> poison, float %i.aqn, i64 0
  %broadcast.splat411 = shufflevector <8 x float> %broadcast.splatinsert410, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert412 = insertelement <8 x float> poison, float %i.aqp, i64 0
  %broadcast.splat413 = shufflevector <8 x float> %broadcast.splatinsert412, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph404
  %index415 = phi i64 [ 0, %vector.ph404 ], [ %index.next420, %vector.body414 ] ; 2 uses
  %i.ask = add nuw i64 %index415, %i.ash          ; 5 uses
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.ask
  %wide.load416 = load <8 x float>, ptr %i.asl, align 4, !tbaa !70
  %i.asm = fmul fast <8 x float> %wide.load416, %broadcast.splat407
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.ask
  %wide.load417 = load <8 x float>, ptr %i.asn, align 4, !tbaa !70
  %i.aso = fmul fast <8 x float> %wide.load417, %broadcast.splat409
  %i.asp = fadd fast <8 x float> %i.aso, %i.asm
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.ask
  %wide.load418 = load <8 x float>, ptr %i.asq, align 4, !tbaa !70
  %i.asr = fmul fast <8 x float> %wide.load418, %broadcast.splat411
  %i.ass = fadd fast <8 x float> %i.asp, %i.asr
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.ask
  %wide.load419 = load <8 x float>, ptr %i.ast, align 4, !tbaa !70
  %i.asu = fmul fast <8 x float> %wide.load419, %broadcast.splat413
  %i.asv = fadd fast <8 x float> %i.ass, %i.asu
  %i.asw = bitcast <8 x float> %i.asv to <8 x i32>
  %i.asx = lshr <8 x i32> %i.asw, splat (i32 16)
  %i.asy = trunc nuw <8 x i32> %i.asx to <8 x i16>
  %i.asz = getelementptr inbounds nuw [2 x i8], ptr %i.aqi, i64 %i.ask
  store <8 x i16> %i.asy, ptr %i.asz, align 2, !tbaa !220
  %index.next420 = add nuw i64 %index415, 8       ; 2 uses
  %i.ata = icmp eq i64 %index.next420, %n.vec405
  br i1 %i.ata, label %middle.block421, label %vector.body414, !llvm.loop !288

middle.block421:                                  ; preds = %vector.body414
  %cmp.n422 = icmp eq i64 %i.asi, %n.vec405
  br i1 %cmp.n422, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i40, label %.lr.ph81.i.i42.preheader

.lr.ph81.i.i42.preheader:                         ; preds = %.lr.ph81.preheader.i.i41, %middle.block421
  %indvars.iv88.i.i43.ph = phi i64 [ %i.ash, %.lr.ph81.preheader.i.i41 ], [ %i.asj, %middle.block421 ]
  br label %.lr.ph81.i.i42

.lr.ph78.i.i47:                                   ; preds = %.lr.ph78.i.i47, %.lr.ph78.preheader.i.i46
  %indvars.iv85.i.i48 = phi i64 [ %i.ase, %.lr.ph78.preheader.i.i46 ], [ %indvars.iv.next86.i.i49, %.lr.ph78.i.i47 ] ; 6 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv85.i.i48
  %i.atc = load <4 x float>, ptr %i.atb, align 1, !tbaa !17
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv85.i.i48
  %i.ate = load <4 x float>, ptr %i.atd, align 1, !tbaa !17
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv85.i.i48
  %i.atg = load <4 x float>, ptr %i.atf, align 1, !tbaa !17
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv85.i.i48
  %i.ati = load <4 x float>, ptr %i.ath, align 1, !tbaa !17
  %i.atj = fmul fast <4 x float> %i.atc, %i.arv
  %i.atk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ate, <4 x float> nofpclass(nan inf) %i.arx, <4 x float> nofpclass(nan inf) %i.atj)
  %i.atl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.atg, <4 x float> nofpclass(nan inf) %i.arz, <4 x float> nofpclass(nan inf) %i.atk)
  %i.atm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ati, <4 x float> nofpclass(nan inf) %i.asb, <4 x float> nofpclass(nan inf) %i.atl)
  %i.atn = getelementptr inbounds nuw [2 x i8], ptr %i.aqi, i64 %indvars.iv85.i.i48
  %i.ato = bitcast <4 x float> %i.atm to <4 x i32>
  %i.atp = lshr <4 x i32> %i.ato, splat (i32 16)
  %i.atq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.atp, <4 x i32> poison)
  %i.atr = bitcast <8 x i16> %i.atq to <2 x i64>
  %i.ats = extractelement <2 x i64> %i.atr, i64 0
  store i64 %i.ats, ptr %i.atn, align 1, !tbaa !17
  %indvars.iv.next86.i.i49 = add nuw nsw i64 %indvars.iv85.i.i48, 4 ; 3 uses
  %i.att = icmp slt i64 %indvars.iv.next86.i.i49, %invariant.op.i.i33
  br i1 %i.att, label %.lr.ph78.i.i47, label %.preheader.loopexit.i.i50, !llvm.loop !281

.lr.ph81.i.i42:                                   ; preds = %.lr.ph81.i.i42.preheader, %.lr.ph81.i.i42
  %indvars.iv88.i.i43 = phi i64 [ %indvars.iv.next89.i.i44, %.lr.ph81.i.i42 ], [ %indvars.iv88.i.i43.ph, %.lr.ph81.i.i42.preheader ] ; 6 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv88.i.i43
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !70
  %i.atw = fmul fast float %i.atv, %i.aqj
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv88.i.i43
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !70
  %i.atz = fmul fast float %i.aty, %i.aql
  %i.aua = fadd fast float %i.atz, %i.atw
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv88.i.i43
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !70
  %i.aud = fmul fast float %i.auc, %i.aqn
  %i.aue = fadd fast float %i.aua, %i.aud
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv88.i.i43
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !70
  %i.auh = fmul fast float %i.aug, %i.aqp
  %i.aui = fadd fast float %i.aue, %i.auh
  %i.auj = bitcast float %i.aui to i32
  %i.auk = lshr i32 %i.auj, 16
  %i.aul = trunc nuw i32 %i.auk to i16
  %i.aum = getelementptr inbounds nuw [2 x i8], ptr %i.aqi, i64 %indvars.iv88.i.i43
  store i16 %i.aul, ptr %i.aum, align 2, !tbaa !220
  %indvars.iv.next89.i.i44 = add nuw nsw i64 %indvars.iv88.i.i43, 1 ; 2 uses
  %exitcond.not.i.i45 = icmp eq i64 %indvars.iv.next89.i.i44, %i.zg
  br i1 %exitcond.not.i.i45, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i40, label %.lr.ph81.i.i42, !llvm.loop !289

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i40: ; preds = %.lr.ph81.i.i42, %middle.block421, %.preheader.i.i38
  %i.aun = getelementptr inbounds nuw i8, ptr %.0436.i, i64 16
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge.i32, label %bb.ci, !llvm.loop !290

bb.cr:                                            ; preds = %bb.ch
  %i.auo = atomicrmw add ptr %i.aba, i32 -1 acq_rel, align 4
  %i.aup = icmp eq i32 %i.auo, 1
  br i1 %i.aup, label %bb.cs, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.cs:                                            ; preds = %bb.cr
  %i.auq = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.auq, null
  %i.aur = load ptr, ptr %16, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i313.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aus = load ptr, ptr %i.auq, align 8, !tbaa !9
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 24
  %i.auu = load ptr, ptr %i.aut, align 8
  invoke void %i.auu(ptr noundef nonnull align 8 dereferenceable(8) %i.auq, ptr noundef %i.aur)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.cw, !inline_history !46

bb.cu:                                            ; preds = %bb.cs
  %.not.i327.i = icmp eq ptr %i.aur, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef nonnull %i.aur) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.cw:                                            ; preds = %bb.ct
  %i.auv = landingpad { ptr, i32 }
          catch ptr null
  %i.auw = extractvalue { ptr, i32 } %i.auv, 0
  call void @__clang_call_terminate(ptr %i.auw) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ch, %bb.cg
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.aay, %bb.cg ], [ %i.aaz, %bb.cr ], [ %i.aaz, %bb.ch ], [ %i.aaz, %bb.ct ], [ %i.aaz, %bb.cu ], [ %i.aaz, %bb.cv ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.aux = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not.i316.i = icmp eq ptr %i.aux, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.auy = atomicrmw add ptr %i.aux, i32 -1 acq_rel, align 4
  %i.auz = icmp eq i32 %i.auy, 1
  br i1 %i.auz, label %bb.cy, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.cy:                                            ; preds = %bb.cx
  %i.ava = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.ava, null
  %i.avb = load ptr, ptr %15, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i317.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.avc = load ptr, ptr %i.ava, align 8, !tbaa !9
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 24
  %i.ave = load ptr, ptr %i.avd, align 8
  invoke void %i.ave(ptr noundef nonnull align 8 dereferenceable(8) %i.ava, ptr noundef %i.avb)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.dc, !inline_history !46

bb.da:                                            ; preds = %bb.cy
  %.not.i325.i = icmp eq ptr %i.avb, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.avb) #6
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.dc:                                            ; preds = %bb.cz
  %i.avf = landingpad { ptr, i32 }
          catch ptr null
  %i.avg = extractvalue { ptr, i32 } %i.avf, 0
  call void @__clang_call_terminate(ptr %i.avg) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.cf
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.aax, %bb.cf ], [ %.pn284.pn.pn.i, %bb.cx ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.cz ], [ %.pn284.pn.pn.i, %bb.da ], [ %.pn284.pn.pn.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.avh = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.avh, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dd

bb.dd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.avi = atomicrmw add ptr %i.avh, i32 -1 acq_rel, align 4
  %i.avj = icmp eq i32 %i.avi, 1
  br i1 %i.avj, label %bb.de, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.de:                                            ; preds = %bb.dd
  %i.avk = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.avk, null
  %i.avl = load ptr, ptr %14, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i321.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.avm = load ptr, ptr %i.avk, align 8, !tbaa !9
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 24
  %i.avo = load ptr, ptr %i.avn, align 8
  invoke void %i.avo(ptr noundef nonnull align 8 dereferenceable(8) %i.avk, ptr noundef %i.avl)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.di, !inline_history !46

bb.dg:                                            ; preds = %bb.de
  %.not.i324.i = icmp eq ptr %i.avl, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef nonnull %i.avl) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.di:                                            ; preds = %bb.df
  %i.avp = landingpad { ptr, i32 }
          catch ptr null
  %i.avq = extractvalue { ptr, i32 } %i.avp, 0
  call void @__clang_call_terminate(ptr %i.avq) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bf
  %i.avr = phi i32 [ %.pre, %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ys, %bb.bf ]
  %i.avs = icmp eq i32 %i.avr, 1
  br i1 %i.avs, label %bb.dk, label %_ZN4ncnn3MatD2Ev.exit

bb.dk:                                            ; preds = %bb.dj
  %i.avt = load ptr, ptr %6, align 8, !tbaa !72   ; 5 uses
  %i.avu = load ptr, ptr %7, align 8, !tbaa !71   ; 6 uses
  %i.avv = load ptr, ptr %8, align 8, !tbaa !72
  %i.avw = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.as, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.bl, i64 noundef 4, ptr noundef null)
          to label %.noexc100 unwind label %bb.fn

.noexc100:                                        ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.av, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.bl, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.ej

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.ay, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bl, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.ek

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.bb, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bl, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.el

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.avx = icmp sgt i32 %i.bm, 0
  br i1 %i.avx, label %.lr.ph347.i, label %._crit_edge.i73

.lr.ph347.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.avy = load ptr, ptr %13, align 8, !tbaa !45
  %i.avz = load ptr, ptr %12, align 8, !tbaa !45
  %i.awa = load ptr, ptr %11, align 8, !tbaa !45
  %i.awb = load ptr, ptr %10, align 8, !tbaa !45
  %i.awc = icmp sgt i32 %i.bl, 0                  ; 4 uses
  %i.awd = icmp sgt i32 %i.bl, 7
  %i.awe = zext i32 %i.bl to i64                  ; 9 uses
  %invariant.op.i.i74 = add nsw i64 %i.awe, -3
  %wide.trip.count370.i = zext nneg i32 %i.bm to i64
end_hunk_6
begin_hunk_7_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.14:bb.a
  %i.bcn = mul i64 %i.awg, %i.bcm
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bcn
  %i.bcp = sext i32 %i.ayb to i64
  %i.bcq = mul i64 %i.awg, %i.bcp
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bcq
  %i.bcs = add nsw i32 %i.ayb, 1
  %i.bct = sext i32 %i.bcs to i64
  %i.bcu = mul i64 %i.awg, %i.bct
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bcu
  %i.bcw = add nsw i32 %i.ayb, 2
  %i.bcx = sext i32 %i.bcw to i64
  %i.bcy = mul i64 %i.awg, %i.bcx
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bcy
  br i1 %i.awc, label %.lr.ph.i96, label %.loopexit.i75

.lr.ph.i96:                                       ; preds = %bb.et, %.lr.ph.i96
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98, %.lr.ph.i96 ], [ 0, %bb.et ] ; 6 uses
  %.0264329.i = phi ptr [ %i.beo, %.lr.ph.i96 ], [ %i.avt, %bb.et ] ; 2 uses
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.avu, i64 %indvars.iv.i97
  %i.bdb = load i32, ptr %i.bda, align 4, !tbaa !25
  %i.bdc = sext i32 %i.bdb to i64                 ; 4 uses
  %i.bdd = getelementptr inbounds [2 x i8], ptr %i.bco, i64 %i.bdc
  %i.bde = getelementptr inbounds [2 x i8], ptr %i.bcr, i64 %i.bdc
  %i.bdf = getelementptr inbounds [2 x i8], ptr %i.bcv, i64 %i.bdc
  %i.bdg = getelementptr inbounds [2 x i8], ptr %i.bcz, i64 %i.bdc
  %i.bdh = getelementptr inbounds i8, ptr %i.bdd, i64 -2
  %i.bdi = load <4 x float>, ptr %.0264329.i, align 4, !tbaa !70 ; 4 uses
  %i.bdj = load <4 x i16>, ptr %i.bdh, align 2, !tbaa !220
  %i.bdk = zext <4 x i16> %i.bdj to <4 x i32>
  %i.bdl = shl nuw <4 x i32> %i.bdk, splat (i32 16)
  %i.bdm = bitcast <4 x i32> %i.bdl to <4 x float>
  %i.bdn = fmul fast <4 x float> %i.bdi, %i.bdm
  %i.bdo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bdn)
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i97
  store float %i.bdo, ptr %i.bdp, align 4, !tbaa !70
  %i.bdq = getelementptr inbounds i8, ptr %i.bde, i64 -2
  %i.bdr = load <4 x i16>, ptr %i.bdq, align 2, !tbaa !220
  %i.bds = zext <4 x i16> %i.bdr to <4 x i32>
  %i.bdt = shl nuw <4 x i32> %i.bds, splat (i32 16)
  %i.bdu = bitcast <4 x i32> %i.bdt to <4 x float>
  %i.bdv = fmul fast <4 x float> %i.bdi, %i.bdu
  %i.bdw = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bdv)
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i97
  store float %i.bdw, ptr %i.bdx, align 4, !tbaa !70
  %i.bdy = getelementptr inbounds i8, ptr %i.bdf, i64 -2
  %i.bdz = load <4 x i16>, ptr %i.bdy, align 2, !tbaa !220
  %i.bea = zext <4 x i16> %i.bdz to <4 x i32>
  %i.beb = shl nuw <4 x i32> %i.bea, splat (i32 16)
  %i.bec = bitcast <4 x i32> %i.beb to <4 x float>
  %i.bed = fmul fast <4 x float> %i.bdi, %i.bec
  %i.bee = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bed)
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i97
  store float %i.bee, ptr %i.bef, align 4, !tbaa !70
  %i.beg = getelementptr inbounds i8, ptr %i.bdg, i64 -2
  %i.beh = load <4 x i16>, ptr %i.beg, align 2, !tbaa !220
  %i.bei = zext <4 x i16> %i.beh to <4 x i32>
  %i.bej = shl nuw <4 x i32> %i.bei, splat (i32 16)
  %i.bek = bitcast <4 x i32> %i.bej to <4 x float>
  %i.bel = fmul fast <4 x float> %i.bdi, %i.bek
  %i.bem = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bel)
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i97
  store float %i.bem, ptr %i.ben, align 4, !tbaa !70
  %i.beo = getelementptr inbounds nuw i8, ptr %.0264329.i, i64 16
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next.i98, %i.awe
  br i1 %exitcond.not.i99, label %.loopexit.i75, label %.lr.ph.i96, !llvm.loop !294

.loopexit.i75.loopexit.unr-lcssa:                 ; preds = %.lr.ph339.i
  br i1 %lcmp.mod.not, label %.loopexit.i75, label %.lr.ph339.i.epil.preheader

.lr.ph339.i.epil.preheader:                       ; preds = %.loopexit.i75.loopexit.unr-lcssa, %.lr.ph339.i.preheader
  %indvars.iv362.i.epil.init = phi i64 [ 0, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.1, %.loopexit.i75.loopexit.unr-lcssa ] ; 2 uses
  %.0260338.i.epil.init = phi ptr [ %i.avt, %.lr.ph339.i.preheader ], [ %i.azk, %.loopexit.i75.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod455)
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.avu, i64 %indvars.iv362.i.epil.init
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !25
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr inbounds [2 x i8], ptr %i.ayi, i64 %i.ber
  %i.bet = getelementptr inbounds i8, ptr %i.bes, i64 -2
  %i.beu = load <4 x float>, ptr %.0260338.i.epil.init, align 4, !tbaa !70
  %i.bev = load <4 x i16>, ptr %i.bet, align 2, !tbaa !220
  %i.bew = zext <4 x i16> %i.bev to <4 x i32>
  %i.bex = shl nuw <4 x i32> %i.bew, splat (i32 16)
  %i.bey = bitcast <4 x i32> %i.bex to <4 x float>
  %i.bez = fmul fast <4 x float> %i.beu, %i.bey
  %i.bfa = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bez)
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.epil.init
  store float %i.bfa, ptr %i.bfb, align 4, !tbaa !70
  br label %.loopexit.i75

.loopexit.i75:                                    ; preds = %.lr.ph.i96, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.epil.preheader, %.loopexit.i75.loopexit.unr-lcssa, %bb.et, %bb.es, %bb.eq, %bb.eo, %bb.em
  %.1256.i76 = phi ptr [ %.0255342.i, %bb.em ], [ %.0249345.i, %bb.eo ], [ %.0251344.i, %bb.eq ], [ %.0253343.i, %bb.es ], [ %.0255342.i, %bb.et ], [ %.0253343.i, %.lr.ph333.i ], [ %.0249345.i, %.lr.ph339.i.epil.preheader ], [ %.0251344.i, %.lr.ph336.i ], [ %.0249345.i, %.loopexit.i75.loopexit.unr-lcssa ], [ %.0255342.i, %.lr.ph.i96 ] ; 5 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.em ], [ %.0255342.i, %bb.eo ], [ %.0249345.i, %bb.eq ], [ %.0251344.i, %bb.es ], [ %.0253343.i, %bb.et ], [ %.0251344.i, %.lr.ph333.i ], [ %.0255342.i, %.lr.ph339.i.epil.preheader ], [ %.0249345.i, %.lr.ph336.i ], [ %.0255342.i, %.loopexit.i75.loopexit.unr-lcssa ], [ %.0253343.i, %.lr.ph.i96 ] ; 5 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.em ], [ %.0253343.i, %bb.eo ], [ %.0255342.i, %bb.eq ], [ %.0249345.i, %bb.es ], [ %.0251344.i, %bb.et ], [ %.0249345.i, %.lr.ph333.i ], [ %.0253343.i, %.lr.ph339.i.epil.preheader ], [ %.0255342.i, %.lr.ph336.i ], [ %.0253343.i, %.loopexit.i75.loopexit.unr-lcssa ], [ %.0251344.i, %.lr.ph.i96 ] ; 5 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.em ], [ %.0251344.i, %bb.eo ], [ %.0253343.i, %bb.eq ], [ %.0255342.i, %bb.es ], [ %.0249345.i, %bb.et ], [ %.0255342.i, %.lr.ph333.i ], [ %.0251344.i, %.lr.ph339.i.epil.preheader ], [ %.0253343.i, %.lr.ph336.i ], [ %.0251344.i, %.loopexit.i75.loopexit.unr-lcssa ], [ %.0249345.i, %.lr.ph.i96 ] ; 5 uses
  %i.bfc = mul i64 %i.awf, %indvars.iv367.i
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bfc ; 4 uses
  %i.bfe = load float, ptr %.0346.i, align 4, !tbaa !70 ; 4 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.0346.i, i64 4
  %i.bfg = load float, ptr %i.bff, align 4, !tbaa !70 ; 4 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.0346.i, i64 8
  %i.bfi = load float, ptr %i.bfh, align 4, !tbaa !70 ; 4 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.0346.i, i64 12
  %i.bfk = load float, ptr %i.bfj, align 4, !tbaa !70 ; 4 uses
  %i.bfl = insertelement <8 x float> poison, float %i.bfe, i64 0
  %i.bfm = shufflevector <8 x float> %i.bfl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfn = insertelement <8 x float> poison, float %i.bfg, i64 0
  %i.bfo = shufflevector <8 x float> %i.bfn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfp = insertelement <8 x float> poison, float %i.bfi, i64 0
  %i.bfq = shufflevector <8 x float> %i.bfp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfr = insertelement <8 x float> poison, float %i.bfk, i64 0
  %i.bfs = shufflevector <8 x float> %i.bfr, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.awd, label %.lr.ph.i.i92, label %._crit_edge.i.i77

.lr.ph.i.i92:                                     ; preds = %.loopexit.i75, %.lr.ph.i.i92
  %indvars.iv.i.i93 = phi i64 [ %indvars.iv.next.i.i94, %.lr.ph.i.i92 ], [ 0, %.loopexit.i75 ] ; 6 uses
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i93
  %i.bfu = load <8 x float>, ptr %i.bft, align 1, !tbaa !17
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i93
  %i.bfw = load <8 x float>, ptr %i.bfv, align 1, !tbaa !17
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i93
  %i.bfy = load <8 x float>, ptr %i.bfx, align 1, !tbaa !17
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %.1256.i76, i64 %indvars.iv.i.i93
  %i.bga = load <8 x float>, ptr %i.bfz, align 1, !tbaa !17
  %i.bgb = fmul fast <8 x float> %i.bfu, %i.bfm
  %i.bgc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfw, <8 x float> nofpclass(nan inf) %i.bfo, <8 x float> nofpclass(nan inf) %i.bgb)
  %i.bgd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bfy, <8 x float> nofpclass(nan inf) %i.bfq, <8 x float> nofpclass(nan inf) %i.bgc)
  %i.bge = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bga, <8 x float> nofpclass(nan inf) %i.bfs, <8 x float> nofpclass(nan inf) %i.bgd)
  %i.bgf = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %indvars.iv.i.i93
  %i.bgg = bitcast <8 x float> %i.bge to <8 x i32> ; 2 uses
  %i.bgh = shufflevector <8 x i32> %i.bgg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bgi = shufflevector <8 x i32> %i.bgg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bgj = lshr <4 x i32> %i.bgh, splat (i32 16)
  %i.bgk = lshr <4 x i32> %i.bgi, splat (i32 16)
  %i.bgl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bgj, <4 x i32> %i.bgk)
  store <8 x i16> %i.bgl, ptr %i.bgf, align 1, !tbaa !17
  %indvars.iv.next.i.i94 = add nuw nsw i64 %indvars.iv.i.i93, 8 ; 3 uses
  %i.bgm = or disjoint i64 %indvars.iv.next.i.i94, 7
  %i.bgn = icmp samesign ult i64 %i.bgm, %i.awe
  br i1 %i.bgn, label %.lr.ph.i.i92, label %._crit_edge.loopexit.i.i95, !llvm.loop !279

._crit_edge.loopexit.i.i95:                       ; preds = %.lr.ph.i.i92
  %i.bgo = trunc nuw nsw i64 %indvars.iv.next.i.i94 to i32
  br label %._crit_edge.i.i77

._crit_edge.i.i77:                                ; preds = %._crit_edge.loopexit.i.i95, %.loopexit.i75
  %.0.lcssa.i.i78 = phi i32 [ 0, %.loopexit.i75 ], [ %i.bgo, %._crit_edge.loopexit.i.i95 ] ; 3 uses
  %i.bgp = insertelement <4 x float> poison, float %i.bfe, i64 0
  %i.bgq = shufflevector <4 x float> %i.bgp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgr = insertelement <4 x float> poison, float %i.bfg, i64 0
  %i.bgs = shufflevector <4 x float> %i.bgr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgt = insertelement <4 x float> poison, float %i.bfi, i64 0
  %i.bgu = shufflevector <4 x float> %i.bgt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgv = insertelement <4 x float> poison, float %i.bfk, i64 0
  %i.bgw = shufflevector <4 x float> %i.bgv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgx = or disjoint i32 %.0.lcssa.i.i78, 3
  %i.bgy = icmp slt i32 %i.bgx, %i.bl
  br i1 %i.bgy, label %.lr.ph78.preheader.i.i87, label %.preheader.i.i79

.lr.ph78.preheader.i.i87:                         ; preds = %._crit_edge.i.i77
  %i.bgz = zext nneg i32 %.0.lcssa.i.i78 to i64
  br label %.lr.ph78.i.i88

.preheader.loopexit.i.i91:                        ; preds = %.lr.ph78.i.i88
  %i.bha = trunc nuw nsw i64 %indvars.iv.next86.i.i90 to i32
  br label %.preheader.i.i79

.preheader.i.i79:                                 ; preds = %.preheader.loopexit.i.i91, %._crit_edge.i.i77
  %.1.lcssa.i.i80 = phi i32 [ %.0.lcssa.i.i78, %._crit_edge.i.i77 ], [ %i.bha, %.preheader.loopexit.i.i91 ] ; 2 uses
  %i.bhb = icmp slt i32 %.1.lcssa.i.i80, %i.bl
  br i1 %i.bhb, label %.lr.ph81.preheader.i.i82, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i81

.lr.ph81.preheader.i.i82:                         ; preds = %.preheader.i.i79
  %i.bhc = zext i32 %.1.lcssa.i.i80 to i64        ; 4 uses
  %i.bhd = sub nsw i64 %i.awe, %i.bhc             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bhd, 8
  br i1 %min.iters.check, label %.lr.ph81.i.i83.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph81.preheader.i.i82
  %n.vec = and i64 %i.bhd, -8                     ; 3 uses
  %i.bhe = add nsw i64 %n.vec, %i.bhc
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bfe, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert393 = insertelement <8 x float> poison, float %i.bfg, i64 0
  %broadcast.splat394 = shufflevector <8 x float> %broadcast.splatinsert393, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert395 = insertelement <8 x float> poison, float %i.bfi, i64 0
  %broadcast.splat396 = shufflevector <8 x float> %broadcast.splatinsert395, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert397 = insertelement <8 x float> poison, float %i.bfk, i64 0
  %broadcast.splat398 = shufflevector <8 x float> %broadcast.splatinsert397, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bhf = add nuw i64 %index, %i.bhc             ; 5 uses
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.bhf
  %wide.load = load <8 x float>, ptr %i.bhg, align 4, !tbaa !70
  %i.bhh = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.bhf
  %wide.load399 = load <8 x float>, ptr %i.bhi, align 4, !tbaa !70
  %i.bhj = fmul fast <8 x float> %wide.load399, %broadcast.splat394
  %i.bhk = fadd fast <8 x float> %i.bhj, %i.bhh
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.bhf
  %wide.load400 = load <8 x float>, ptr %i.bhl, align 4, !tbaa !70
  %i.bhm = fmul fast <8 x float> %wide.load400, %broadcast.splat396
  %i.bhn = fadd fast <8 x float> %i.bhk, %i.bhm
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.1256.i76, i64 %i.bhf
  %wide.load401 = load <8 x float>, ptr %i.bho, align 4, !tbaa !70
  %i.bhp = fmul fast <8 x float> %wide.load401, %broadcast.splat398
  %i.bhq = fadd fast <8 x float> %i.bhn, %i.bhp
  %i.bhr = bitcast <8 x float> %i.bhq to <8 x i32>
  %i.bhs = lshr <8 x i32> %i.bhr, splat (i32 16)
  %i.bht = trunc nuw <8 x i32> %i.bhs to <8 x i16>
  %i.bhu = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %i.bhf
  store <8 x i16> %i.bht, ptr %i.bhu, align 2, !tbaa !220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bhv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bhv, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bhd, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i81, label %.lr.ph81.i.i83.preheader

.lr.ph81.i.i83.preheader:                         ; preds = %.lr.ph81.preheader.i.i82, %middle.block
  %indvars.iv88.i.i84.ph = phi i64 [ %i.bhc, %.lr.ph81.preheader.i.i82 ], [ %i.bhe, %middle.block ]
  br label %.lr.ph81.i.i83

.lr.ph78.i.i88:                                   ; preds = %.lr.ph78.i.i88, %.lr.ph78.preheader.i.i87
  %indvars.iv85.i.i89 = phi i64 [ %i.bgz, %.lr.ph78.preheader.i.i87 ], [ %indvars.iv.next86.i.i90, %.lr.ph78.i.i88 ] ; 6 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv85.i.i89
  %i.bhx = load <4 x float>, ptr %i.bhw, align 1, !tbaa !17
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv85.i.i89
  %i.bhz = load <4 x float>, ptr %i.bhy, align 1, !tbaa !17
  %i.bia = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv85.i.i89
  %i.bib = load <4 x float>, ptr %i.bia, align 1, !tbaa !17
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %.1256.i76, i64 %indvars.iv85.i.i89
  %i.bid = load <4 x float>, ptr %i.bic, align 1, !tbaa !17
  %i.bie = fmul fast <4 x float> %i.bhx, %i.bgq
  %i.bif = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhz, <4 x float> nofpclass(nan inf) %i.bgs, <4 x float> nofpclass(nan inf) %i.bie)
  %i.big = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %i.bgu, <4 x float> nofpclass(nan inf) %i.bif)
  %i.bih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bid, <4 x float> nofpclass(nan inf) %i.bgw, <4 x float> nofpclass(nan inf) %i.big)
  %i.bii = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %indvars.iv85.i.i89
  %i.bij = bitcast <4 x float> %i.bih to <4 x i32>
  %i.bik = lshr <4 x i32> %i.bij, splat (i32 16)
  %i.bil = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bik, <4 x i32> poison)
  %i.bim = bitcast <8 x i16> %i.bil to <2 x i64>
  %i.bin = extractelement <2 x i64> %i.bim, i64 0
  store i64 %i.bin, ptr %i.bii, align 1, !tbaa !17
  %indvars.iv.next86.i.i90 = add nuw nsw i64 %indvars.iv85.i.i89, 4 ; 3 uses
  %i.bio = icmp slt i64 %indvars.iv.next86.i.i90, %invariant.op.i.i74
  br i1 %i.bio, label %.lr.ph78.i.i88, label %.preheader.loopexit.i.i91, !llvm.loop !281

.lr.ph81.i.i83:                                   ; preds = %.lr.ph81.i.i83.preheader, %.lr.ph81.i.i83
  %indvars.iv88.i.i84 = phi i64 [ %indvars.iv.next89.i.i85, %.lr.ph81.i.i83 ], [ %indvars.iv88.i.i84.ph, %.lr.ph81.i.i83.preheader ] ; 6 uses
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv88.i.i84
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !70
  %i.bir = fmul fast float %i.biq, %i.bfe
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv88.i.i84
  %i.bit = load float, ptr %i.bis, align 4, !tbaa !70
  %i.biu = fmul fast float %i.bit, %i.bfg
  %i.biv = fadd fast float %i.biu, %i.bir
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv88.i.i84
  %i.bix = load float, ptr %i.biw, align 4, !tbaa !70
  %i.biy = fmul fast float %i.bix, %i.bfi
  %i.biz = fadd fast float %i.biv, %i.biy
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %.1256.i76, i64 %indvars.iv88.i.i84
  %i.bjb = load float, ptr %i.bja, align 4, !tbaa !70
  %i.bjc = fmul fast float %i.bjb, %i.bfk
  %i.bjd = fadd fast float %i.biz, %i.bjc
  %i.bje = bitcast float %i.bjd to i32
  %i.bjf = lshr i32 %i.bje, 16
  %i.bjg = trunc nuw i32 %i.bjf to i16
  %i.bjh = getelementptr inbounds nuw [2 x i8], ptr %i.bfd, i64 %indvars.iv88.i.i84
  store i16 %i.bjg, ptr %i.bjh, align 2, !tbaa !220
  %indvars.iv.next89.i.i85 = add nuw nsw i64 %indvars.iv88.i.i84, 1 ; 2 uses
  %exitcond.not.i.i86 = icmp eq i64 %indvars.iv.next89.i.i85, %i.awe
  br i1 %exitcond.not.i.i86, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i81, label %.lr.ph81.i.i83, !llvm.loop !296

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i81: ; preds = %.lr.ph81.i.i83, %middle.block, %.preheader.i.i79
  %i.bji = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i73, label %bb.em, !llvm.loop !297

bb.eu:                                            ; preds = %bb.el
  %i.bjj = atomicrmw add ptr %i.axz, i32 -1 acq_rel, align 4
  %i.bjk = icmp eq i32 %i.bjj, 1
  br i1 %i.bjk, label %bb.ev, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.ev:                                            ; preds = %bb.eu
  %i.bjl = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.bjl, null
  %i.bjm = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i295.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bjn = load ptr, ptr %i.bjl, align 8, !tbaa !9
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 24
  %i.bjp = load ptr, ptr %i.bjo, align 8
  invoke void %i.bjp(ptr noundef nonnull align 8 dereferenceable(8) %i.bjl, ptr noundef %i.bjm)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.ez, !inline_history !46

bb.ex:                                            ; preds = %bb.ev
  %.not.i309.i = icmp eq ptr %i.bjm, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @free(ptr noundef nonnull %i.bjm) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.ez:                                            ; preds = %bb.ew
  %i.bjq = landingpad { ptr, i32 }
          catch ptr null
  %i.bjr = extractvalue { ptr, i32 } %i.bjq, 0
  call void @__clang_call_terminate(ptr %i.bjr) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu, %bb.el, %bb.ek
  %.pn.pn.i = phi { ptr, i32 } [ %i.axx, %bb.ek ], [ %i.axy, %bb.eu ], [ %i.axy, %bb.el ], [ %i.axy, %bb.ew ], [ %i.axy, %bb.ex ], [ %i.axy, %bb.ey ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.bjs = load ptr, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.bjs, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.fa

bb.fa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.bjt = atomicrmw add ptr %i.bjs, i32 -1 acq_rel, align 4
  %i.bju = icmp eq i32 %i.bjt, 1
  br i1 %i.bju, label %bb.fb, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.fb:                                            ; preds = %bb.fa
  %i.bjv = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.bjv, null
  %i.bjw = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i299.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bjx = load ptr, ptr %i.bjv, align 8, !tbaa !9
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 24
  %i.bjz = load ptr, ptr %i.bjy, align 8
  invoke void %i.bjz(ptr noundef nonnull align 8 dereferenceable(8) %i.bjv, ptr noundef %i.bjw)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.ff, !inline_history !46

bb.fd:                                            ; preds = %bb.fb
  %.not.i307.i = icmp eq ptr %i.bjw, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.bjw) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.ff:                                            ; preds = %bb.fc
  %i.bka = landingpad { ptr, i32 }
          catch ptr null
  %i.bkb = extractvalue { ptr, i32 } %i.bka, 0
  call void @__clang_call_terminate(ptr %i.bkb) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fa, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.ej
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.axw, %bb.ej ], [ %.pn.pn.i, %bb.fa ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.fc ], [ %.pn.pn.i, %bb.fd ], [ %.pn.pn.i, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.bkc = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.bkc, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i72, label %bb.fg

bb.fg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.bkd = atomicrmw add ptr %i.bkc, i32 -1 acq_rel, align 4
  %i.bke = icmp eq i32 %i.bkd, 1
  br i1 %i.bke, label %bb.fh, label %_ZN4ncnn3MatD2Ev.exit.i72

bb.fh:                                            ; preds = %bb.fg
  %i.bkf = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.bkf, null
  %i.bkg = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i303.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bkh = load ptr, ptr %i.bkf, align 8, !tbaa !9
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 24
  %i.bkj = load ptr, ptr %i.bki, align 8
  invoke void %i.bkj(ptr noundef nonnull align 8 dereferenceable(8) %i.bkf, ptr noundef %i.bkg)
          to label %_ZN4ncnn3MatD2Ev.exit.i72 unwind label %bb.fl, !inline_history !46

bb.fj:                                            ; preds = %bb.fh
  %.not.i306.i = icmp eq ptr %i.bkg, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i72, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @free(ptr noundef nonnull %i.bkg) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i72

bb.fl:                                            ; preds = %bb.fi
  %i.bkk = landingpad { ptr, i32 }
          catch ptr null
  %i.bkl = extractvalue { ptr, i32 } %i.bkk, 0
  call void @__clang_call_terminate(ptr %i.bkl) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i72:                        ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.ed, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.dj
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bkm = load i32, ptr %i.b, align 4, !tbaa !25
  %i.bkn = sext i32 %i.bkm to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bkn
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.fn:                                            ; preds = %bb.dk, %bb.bg, %bb.c
  %i.bko = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i30, %_ZN4ncnn3MatD2Ev.exit.i72, %bb.fn, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn316.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn284.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i30 ], [ %i.bko, %bb.fn ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i72 ]
  %i.bkp = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.bkp) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #17

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16
end_hunk_7
