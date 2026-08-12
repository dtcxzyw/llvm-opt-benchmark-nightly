inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5:bb.a
  br i1 %cmp.n, label %._crit_edge103, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph102.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec169 = and i64 %i.cz, -8                   ; 3 uses
  %i.ei = add nsw i64 %n.vec169, %i.cx
  %broadcast.splatinsert170 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat171 = shufflevector <8 x float> %broadcast.splatinsert170, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index174 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next177, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = add i64 %index174, %i.cx                ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ej
  %wide.load175 = load <8 x float>, ptr %i.ek, align 4, !tbaa !70
  %i.el = fmul fast <8 x float> %wide.load175, %broadcast.splat171
  %i.em = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ej
  %wide.load176 = load <8 x float>, ptr %i.em, align 4, !tbaa !70
  %i.en = fmul fast <8 x float> %wide.load176, %broadcast.splat173
  %i.eo = fadd fast <8 x float> %i.en, %i.el
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.079106, i64 %i.ej
  store <8 x float> %i.eo, ptr %i.ep, align 4, !tbaa !70
  %index.next177 = add nuw i64 %index174, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next177, %n.vec169
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n178 = icmp eq i64 %i.cz, %n.vec169
  br i1 %cmp.n178, label %._crit_edge103, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv127.ph = phi i64 [ %i.cx, %iter.check ], [ %i.cx, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 7 uses
  %i.er = sub nsw i64 %i.cy, %indvars.iv127.ph
  %xtraiter = and i64 %i.er, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol

.lr.ph102.prol:                                   ; preds = %.lr.ph102.preheader
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv127.ph
  %i.et = load float, ptr %i.es, align 4, !tbaa !70
  %i.eu = fmul fast float %i.et, %i.au
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv127.ph
  %i.ev = load float, ptr %gep.prol, align 4, !tbaa !70
  %i.ew = fmul fast float %i.ev, %i.aw
  %i.ex = fadd fast float %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.079106, i64 %indvars.iv127.ph
  store float %i.ex, ptr %i.ey, align 4, !tbaa !70
  %indvars.iv.next128.prol = add nsw i64 %indvars.iv127.ph, 1
  br label %.lr.ph102.prol.loopexit

.lr.ph102.prol.loopexit:                          ; preds = %.lr.ph102.prol, %.lr.ph102.preheader
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %.lr.ph102.preheader ], [ %indvars.iv.next128.prol, %.lr.ph102.prol ]
  %i.ez = add nsw i64 %i.cy, -1
  %i.fa = icmp eq i64 %indvars.iv127.ph, %i.ez
  br i1 %i.fa, label %._crit_edge103, label %.lr.ph102

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98
  %indvars.iv124 = phi i64 [ %i.ct, %.lr.ph98.preheader ], [ %indvars.iv.next125, %.lr.ph98 ] ; 3 uses
  %i.fb = phi i32 [ %i.cm, %.lr.ph98.preheader ], [ %i.fk, %.lr.ph98 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv124 ; 2 uses
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !17
  %i.fe = sext i32 %i.fb to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !17
  %i.fh = fmul fast <4 x float> %i.fd, %i.co
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.cq, <4 x float> nofpclass(nan inf) %i.fh)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.079106, i64 %indvars.iv124
  store <4 x float> %i.fi, ptr %i.fj, align 16, !tbaa !17
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 4 ; 3 uses
  %i.fk = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.fl = trunc i64 %indvars.iv.next125 to i32
  %i.fm = or i32 %i.fl, 3
  %i.fn = icmp slt i32 %i.fm, %i.fk
  br i1 %i.fn, label %.lr.ph98, label %.preheader.loopexit, !llvm.loop !131

.lr.ph102:                                        ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.lr.ph102 ], [ %indvars.iv127.unr, %.lr.ph102.prol.loopexit ] ; 5 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv127
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !70
  %i.fq = fmul fast float %i.fp, %i.au
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv127
  %i.fr = load float, ptr %gep, align 4, !tbaa !70
  %i.fs = fmul fast float %i.fr, %i.aw
  %i.ft = fadd fast float %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.079106, i64 %indvars.iv127
  store float %i.ft, ptr %i.fu, align 4, !tbaa !70
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next128
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !70
  %i.fx = fmul fast float %i.fw, %i.au
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next128
  %i.fy = load float, ptr %gep.1, align 4, !tbaa !70
  %i.fz = fmul fast float %i.fy, %i.aw
  %i.ga = fadd fast float %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.079106, i64 %indvars.iv.next128
  store float %i.ga, ptr %i.gb, align 4, !tbaa !70
  %indvars.iv.next128.1 = add nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next128.1, %i.cy
  br i1 %exitcond.not.1, label %._crit_edge103, label %.lr.ph102, !llvm.loop !132

._crit_edge103:                                   ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge103_crit_edge
  %.pre-phi = phi i64 [ %.pre137, %.preheader.._crit_edge103_crit_edge ], [ %i.cy, %middle.block ], [ %i.cy, %vec.epilog.middle.block ], [ %i.cy, %.lr.ph102 ], [ %i.cy, %.lr.ph102.prol.loopexit ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.080105, i64 8
  %i.gd = getelementptr inbounds [4 x i8], ptr %.079106, i64 %.pre-phi
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ge = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next131, %i.gf
  br i1 %i.gg, label %.lr.ph108, label %._crit_edge109, !llvm.loop !133

._crit_edge114:                                   ; preds = %._crit_edge109, %.lr.ph113, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge114, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = sitofp fast i32 %0 to double
  %i.b = sitofp fast i32 %1 to double
  %i.c = fdiv fast double %i.a, %i.b
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp fast i32 %i.f to double
  %i.h = fdiv fast double %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.087 = phi nsz double [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %i.j = add nsw i32 %0, -2                       ; 3 uses
  %i.k = add nsw i32 %0, -1                       ; 3 uses
  %i.l = add nsw i32 %0, -3                       ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i32 %1, 16
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <16 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat107 = shufflevector <16 x i32> %broadcast.splatinsert106, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <16 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat109 = shufflevector <16 x i32> %broadcast.splatinsert108, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <16 x double> poison, double %.087, i64 0
  %broadcast.splat111 = shufflevector <16 x double> %broadcast.splatinsert110, <16 x double> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind112 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next127, %vector.body ] ; 2 uses
  %i.n = uitofp nneg <16 x i32> %vec.ind112 to <16 x double> ; 2 uses
  %i.o = fadd fast <16 x double> %i.n, splat (double 5.000000e-01)
  %i.p = fmul fast <16 x double> %i.o, %broadcast.splat111
  %i.q = fadd fast <16 x double> %i.p, splat (double -5.000000e-01)
  %i.r = fmul fast <16 x double> %broadcast.splat111, %i.n
  %i.s = select i1 %.not, <16 x double> %i.q, <16 x double> %i.r
  %i.t = fptrunc <16 x double> %i.s to <16 x float> ; 2 uses
  %i.u = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.t)
  %i.v = fptosi <16 x float> %i.u to <16 x i32>   ; 5 uses
  %i.w = sitofp fast <16 x i32> %i.v to <16 x float>
  %i.x = fsub fast <16 x float> %i.t, %i.w        ; 5 uses
  %i.y = shl nuw nsw <16 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %3, <16 x i64> %i.y ; 6 uses
  %i.z = extractelement <16 x ptr> %wide.gep, i64 0
  %i.aa = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 4 uses
  %i.ab = fsub fast <16 x float> splat (float 1.000000e+00), %i.x ; 3 uses
  %i.ac = fmul fast <16 x float> %i.aa, %i.aa
  %i.ad = fmul fast <16 x float> %i.aa, splat (float 7.500000e-01)
  %5 = fsub fast <16 x float> splat (float 3.750000e+00), %i.ad
  %6 = fmul fast <16 x float> %i.ac, %5
  %i.ae = fmul fast <16 x float> %i.aa, splat (float 6.000000e+00)
  %i.af = fsub fast <16 x float> %6, %i.ae
  %i.ag = fadd fast <16 x float> %i.af, splat (float 3.000000e+00) ; 4 uses
  %i.ah = fmul fast <16 x float> %i.x, %i.x
  %i.ai = fmul fast <16 x float> %i.x, splat (float 1.250000e+00)
  %i.aj = fadd fast <16 x float> %i.ai, splat (float -2.250000e+00)
  %i.ak = fmul fast <16 x float> %i.ah, %i.aj
  %i.al = fadd fast <16 x float> %i.ak, splat (float 1.000000e+00) ; 4 uses
  %wide.gep113 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4 ; 2 uses
  %i.am = fmul fast <16 x float> %i.ab, %i.ab
  %i.an = fmul fast <16 x float> %i.ab, splat (float 1.250000e+00)
  %i.ao = fadd fast <16 x float> %i.an, splat (float -2.250000e+00)
  %i.ap = fmul fast <16 x float> %i.am, %i.ao     ; 2 uses
  %i.aq = fadd fast <16 x float> %i.ap, splat (float 1.000000e+00) ; 3 uses
  %wide.gep114 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8 ; 2 uses
  %i.ar = fadd fast <16 x float> %i.ap, %i.al
  %i.as = fadd fast <16 x float> %i.ar, %i.ag     ; 3 uses
  %i.at = fneg fast <16 x float> %i.as            ; 3 uses
  %wide.gep115 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 12 ; 2 uses
  %i.au = shufflevector <16 x float> %i.ag, <16 x float> %i.al, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.av = shufflevector <16 x float> %i.aq, <16 x float> %i.at, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.au, <32 x float> %i.av, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !70
  %i.aw = icmp sgt <16 x i32> %i.v, splat (i32 -1) ; 3 uses
  %i.ax = fadd fast <16 x float> %i.al, %i.ag
  %i.ay = fadd fast <16 x float> %i.as, splat (float 1.000000e+00)
  %i.az = icmp slt <16 x i32> %i.v, splat (i32 1) ; 4 uses
  %predphi = select <16 x i1> %i.aw, <16 x float> %i.ax, <16 x float> %i.ay ; 2 uses
  %predphi116 = select <16 x i1> %i.aw, <16 x float> %i.aq, <16 x float> %i.at ; 2 uses
  %predphi117 = select <16 x i1> %i.aw, <16 x float> %i.at, <16 x float> zeroinitializer ; 2 uses
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.az), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi116, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.az), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi117, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.az), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.az), !tbaa !70
  %i.ba = icmp sgt <16 x i32> %i.v, zeroinitializer ; 4 uses
  %predphi118 = select <16 x i1> %i.ba, <16 x float> %i.al, <16 x float> %predphi116
  %predphi121 = select <16 x i1> %i.ba, <16 x float> %i.ag, <16 x float> %predphi ; 3 uses
  %predphi122 = select <16 x i1> %i.ba, <16 x i32> %i.v, <16 x i32> splat (i32 1) ; 3 uses
  %i.bb = icmp eq <16 x i32> %predphi122, %broadcast.splat ; 4 uses
  %i.bc = icmp sge <16 x i32> %predphi122, %broadcast.splat107
  %i.bd = fsub fast <16 x float> splat (float 1.000000e+00), %predphi121
  %i.be = fsub fast <16 x float> %i.aq, %i.as
  %i.bf = select fast <16 x i1> %i.ba, <16 x float> %i.be, <16 x float> %predphi117
  %i.bg = select <16 x i1> %i.bb, <16 x i1> splat (i1 true), <16 x i1> %i.bc ; 5 uses
  %predphi123 = select <16 x i1> %i.bb, <16 x float> %i.bf, <16 x float> %i.bd
  %predphi124 = select <16 x i1> %i.bb, <16 x float> %predphi118, <16 x float> %predphi121
  %predphi125 = select <16 x i1> %i.bb, <16 x float> %predphi121, <16 x float> zeroinitializer
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi123, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.bg), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi124, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.bg), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi125, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.bg), !tbaa !70
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.bg), !tbaa !70
  %predphi126 = select <16 x i1> %i.bg, <16 x i32> %broadcast.splat109, <16 x i32> %predphi122
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <16 x i32> %predphi126, ptr %i.bh, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next127 = add <16 x i32> %vec.ind112, splat (i32 16)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %n.vec128 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x double> poison, double %.087, i64 0
  %broadcast.splat136 = shufflevector <4 x double> %broadcast.splatinsert135, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat138, <i64 0, i64 1, i64 2, i64 3>
  %i.bj = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction141 = or disjoint <4 x i32> %broadcast.splat140, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind143 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next163, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind144 = phi <4 x i32> [ %induction141, %vec.epilog.ph ], [ %vec.ind.next164, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = uitofp nneg <4 x i32> %vec.ind144 to <4 x double> ; 2 uses
  %i.bl = fadd fast <4 x double> %i.bk, splat (double 5.000000e-01)
  %i.bm = fmul fast <4 x double> %i.bl, %broadcast.splat136
  %i.bn = fadd fast <4 x double> %i.bm, splat (double -5.000000e-01)
  %i.bo = fmul fast <4 x double> %broadcast.splat136, %i.bk
  %i.bp = select i1 %.not, <4 x double> %i.bn, <4 x double> %i.bo
  %i.bq = fptrunc <4 x double> %i.bp to <4 x float> ; 2 uses
  %i.br = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.bq)
  %i.bs = fptosi <4 x float> %i.br to <4 x i32>   ; 5 uses
  %i.bt = sitofp fast <4 x i32> %i.bs to <4 x float>
  %i.bu = fsub fast <4 x float> %i.bq, %i.bt      ; 5 uses
  %i.bv = shl nuw nsw <4 x i64> %vec.ind143, splat (i64 4)
  %wide.gep145 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.bv ; 6 uses
  %i.bw = extractelement <4 x ptr> %wide.gep145, i64 0
  %i.bx = fadd fast <4 x float> %i.bu, splat (float 1.000000e+00) ; 4 uses
  %i.by = fsub fast <4 x float> splat (float 1.000000e+00), %i.bu ; 3 uses
  %i.bz = fmul fast <4 x float> %i.bx, %i.bx
  %i.ca = fmul fast <4 x float> %i.bx, splat (float 7.500000e-01)
  %7 = fsub fast <4 x float> splat (float 3.750000e+00), %i.ca
  %8 = fmul fast <4 x float> %i.bz, %7
  %i.cb = fmul fast <4 x float> %i.bx, splat (float 6.000000e+00)
  %i.cc = fsub fast <4 x float> %8, %i.cb
  %i.cd = fadd fast <4 x float> %i.cc, splat (float 3.000000e+00) ; 4 uses
  %i.ce = fmul fast <4 x float> %i.bu, %i.bu
  %i.cf = fmul fast <4 x float> %i.bu, splat (float 1.250000e+00)
  %i.cg = fadd fast <4 x float> %i.cf, splat (float -2.250000e+00)
  %i.ch = fmul fast <4 x float> %i.ce, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 1.000000e+00) ; 4 uses
  %wide.gep146 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep145, i64 4 ; 2 uses
  %i.cj = fmul fast <4 x float> %i.by, %i.by
  %i.ck = fmul fast <4 x float> %i.by, splat (float 1.250000e+00)
  %i.cl = fadd fast <4 x float> %i.ck, splat (float -2.250000e+00)
  %i.cm = fmul fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 1.000000e+00) ; 3 uses
  %wide.gep147 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep145, i64 8 ; 2 uses
  %i.co = fadd fast <4 x float> %i.cm, %i.ci
  %i.cp = fadd fast <4 x float> %i.co, %i.cd      ; 3 uses
  %i.cq = fneg fast <4 x float> %i.cp             ; 3 uses
  %wide.gep148 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep145, i64 12 ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cd, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cs = shufflevector <4 x float> %i.cn, <4 x float> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec149 = shufflevector <8 x float> %i.cr, <8 x float> %i.cs, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec149, ptr %i.bw, align 4, !tbaa !70
  %i.ct = icmp sgt <4 x i32> %i.bs, splat (i32 -1) ; 3 uses
  %i.cu = fadd fast <4 x float> %i.ci, %i.cd
  %i.cv = fadd fast <4 x float> %i.cp, splat (float 1.000000e+00)
  %i.cw = icmp slt <4 x i32> %i.bs, splat (i32 1) ; 4 uses
  %predphi150 = select <4 x i1> %i.ct, <4 x float> %i.cu, <4 x float> %i.cv ; 2 uses
  %predphi151 = select <4 x i1> %i.ct, <4 x float> %i.cn, <4 x float> %i.cq ; 2 uses
  %predphi152 = select <4 x i1> %i.ct, <4 x float> %i.cq, <4 x float> zeroinitializer ; 2 uses
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi150, <4 x ptr> align 4 %wide.gep145, <4 x i1> %i.cw), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi151, <4 x ptr> align 4 %wide.gep146, <4 x i1> %i.cw), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi152, <4 x ptr> align 4 %wide.gep147, <4 x i1> %i.cw), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep148, <4 x i1> %i.cw), !tbaa !70
  %i.cx = icmp sgt <4 x i32> %i.bs, zeroinitializer ; 4 uses
  %predphi153 = select <4 x i1> %i.cx, <4 x float> %i.ci, <4 x float> %predphi151
  %predphi156 = select <4 x i1> %i.cx, <4 x float> %i.cd, <4 x float> %predphi150 ; 3 uses
  %predphi157 = select <4 x i1> %i.cx, <4 x i32> %i.bs, <4 x i32> splat (i32 1) ; 3 uses
  %i.cy = icmp eq <4 x i32> %predphi157, %broadcast.splat130 ; 4 uses
  %i.cz = icmp sge <4 x i32> %predphi157, %broadcast.splat132
  %i.da = fsub fast <4 x float> splat (float 1.000000e+00), %predphi156
  %i.db = fsub fast <4 x float> %i.cn, %i.cp
  %i.dc = select fast <4 x i1> %i.cx, <4 x float> %i.db, <4 x float> %predphi152
  %i.dd = select <4 x i1> %i.cy, <4 x i1> splat (i1 true), <4 x i1> %i.cz ; 5 uses
  %predphi158 = select <4 x i1> %i.cy, <4 x float> %i.dc, <4 x float> %i.da
  %predphi159 = select <4 x i1> %i.cy, <4 x float> %predphi153, <4 x float> %predphi156
  %predphi160 = select <4 x i1> %i.cy, <4 x float> %predphi156, <4 x float> zeroinitializer
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi158, <4 x ptr> align 4 %wide.gep148, <4 x i1> %i.dd), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi159, <4 x ptr> align 4 %wide.gep147, <4 x i1> %i.dd), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %predphi160, <4 x ptr> align 4 %wide.gep146, <4 x i1> %i.dd), !tbaa !70
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep145, <4 x i1> %i.dd), !tbaa !70
  %predphi161 = select <4 x i1> %i.dd, <4 x i32> %broadcast.splat134, <4 x i32> %predphi157
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index142
  store <4 x i32> %predphi161, ptr %i.de, align 4, !tbaa !25
  %index.next162 = add nuw i64 %index142, 4       ; 2 uses
  %vec.ind.next163 = add nuw nsw <4 x i64> %vec.ind143, splat (i64 4)
  %vec.ind.next164 = add <4 x i32> %vec.ind144, splat (i32 4)
  %i.df = icmp eq i64 %index.next162, %n.vec128
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n165 = icmp eq i64 %n.vec128, %wide.trip.count
  br i1 %cmp.n165, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %bb.i, %middle.block, %vec.epilog.middle.block, %bb.c
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = uitofp nneg i32 %i.dg to double         ; 2 uses
  %i.di = fadd fast double %i.dh, 5.000000e-01
  %i.dj = fmul fast double %i.di, %.087
  %i.dk = fadd fast double %i.dj, -5.000000e-01
  %i.dl = fmul fast double %.087, %i.dh
  %spec.select = select i1 %.not, double %i.dk, double %i.dl
  %.085 = fptrunc double %spec.select to float    ; 2 uses
  %i.dm = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %.085)
  %i.dn = fptosi float %i.dm to i32               ; 4 uses
  %i.do = sitofp fast i32 %i.dn to float
  %i.dp = fsub fast float %.085, %i.do            ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 6 uses
  %i.dr = fadd fast float %i.dp, 1.000000e+00     ; 4 uses
  %i.ds = fsub fast float 1.000000e+00, %i.dp     ; 3 uses
  %i.dt = fmul fast float %i.dr, %i.dr
  %i.du = fmul fast float %i.dr, 7.500000e-01
  %9 = fsub fast float 3.750000e+00, %i.du
  %10 = fmul fast float %i.dt, %9
  %reass.mul.i = fmul fast float %i.dr, 6.000000e+00
  %i.dv = fsub fast float %10, %reass.mul.i
  %i.dw = fadd fast float %i.dv, 3.000000e+00     ; 4 uses
  store float %i.dw, ptr %i.dq, align 4, !tbaa !70
  %i.dx = fmul fast float %i.dp, %i.dp
  %i.dy = fmul fast float %i.dp, 1.250000e+00
  %i.dz = fadd fast float %i.dy, -2.250000e+00
  %i.ea = fmul fast float %i.dx, %i.dz
  %i.eb = fadd fast float %i.ea, 1.000000e+00     ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 3 uses
  store float %i.eb, ptr %i.ec, align 4, !tbaa !70
  %i.ed = fmul fast float %i.ds, %i.ds
  %i.ee = fmul fast float %i.ds, 1.250000e+00
  %i.ef = fadd fast float %i.ee, -2.250000e+00
  %i.eg = fmul fast float %i.ed, %i.ef            ; 2 uses
  %i.eh = fadd fast float %i.eg, 1.000000e+00     ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  store float %i.eh, ptr %i.ei, align 4, !tbaa !70
  %i.ej = fadd fast float %i.eg, %i.eb
  %i.ek = fadd fast float %i.ej, %i.dw            ; 2 uses
  %i.el = fneg fast float %i.ek                   ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 3 uses
  store float %i.el, ptr %i.em, align 4, !tbaa !70
  %i.en = icmp slt i32 %i.dn, 0
  br i1 %i.en, label %.thread, label %bb.d

.thread:                                          ; preds = %vec.epilog.scalar.ph
  %i.eo = fadd fast float %i.ek, 1.000000e+00
  br label %.sink.split

bb.d:                                             ; preds = %vec.epilog.scalar.ph
  %i.ep = icmp eq i32 %i.dn, 0
  br i1 %i.ep, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.eq = fadd fast float %i.eb, %i.dw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread
  %.sink100 = phi float [ %i.eo, %.thread ], [ %i.eq, %bb.e ] ; 2 uses
  %.sink99 = phi float [ %i.el, %.thread ], [ %i.eh, %bb.e ] ; 2 uses
  %.sink = phi float [ 0.000000e+00, %.thread ], [ %i.el, %bb.e ] ; 2 uses
  store float %.sink100, ptr %i.dq, align 4, !tbaa !70
  store float %.sink99, ptr %i.ec, align 4, !tbaa !70
  store float %.sink, ptr %i.ei, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.er = phi float [ %i.eb, %bb.d ], [ %.sink99, %.sink.split ]
  %i.es = phi float [ %i.el, %bb.d ], [ 0.000000e+00, %.sink.split ]
  %i.et = phi float [ %i.eh, %bb.d ], [ %.sink, %.sink.split ]
  %i.eu = phi float [ %i.dw, %bb.d ], [ %.sink100, %.sink.split ] ; 3 uses
  %.1 = phi i32 [ %i.dn, %bb.d ], [ 1, %.sink.split ] ; 3 uses
  %i.ev = icmp eq i32 %.1, %i.j
  br i1 %i.ev, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.ew = fadd fast float %i.es, %i.et
  br label %.sink.split101

bb.g:                                             ; preds = %bb.f
  %.not89 = icmp slt i32 %.1, %i.k
  br i1 %.not89, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ex = fsub fast float 1.000000e+00, %i.eu
  br label %.sink.split101

.sink.split101:                                   ; preds = %bb.h, %.thread91
  %.sink104 = phi float [ %i.ew, %.thread91 ], [ %i.ex, %bb.h ]
  %.sink103 = phi float [ %i.er, %.thread91 ], [ %i.eu, %bb.h ]
  %.sink102 = phi float [ %i.eu, %.thread91 ], [ 0.000000e+00, %bb.h ]
  store float %.sink104, ptr %i.em, align 4, !tbaa !70
  store float %.sink103, ptr %i.ei, align 4, !tbaa !70
  store float %.sink102, ptr %i.ec, align 4, !tbaa !70
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %.sink.split101, %bb.g
  %.3 = phi i32 [ %.1, %bb.g ], [ %i.l, %.sink.split101 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.3, ptr %i.ey, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !136
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
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
  %.not157 = icmp sgt i32 %i.k, %i.j
  br i1 %.not157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph160.split.preheader, label %._crit_edge161

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph160.split

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %._crit_edge156
  %i.t = phi i32 [ %i.p, %.lr.ph160.split.preheader ], [ %i.am, %._crit_edge156 ] ; 2 uses
  %indvars.iv180 = phi i64 [ %i.r, %.lr.ph160.split.preheader ], [ %indvars.iv.next181, %._crit_edge156 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv180, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %.lr.ph160.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv180, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph155

._crit_edge156:                                   ; preds = %._crit_edge150, %.lr.ph160.split
  %i.am = phi i32 [ %i.t, %.lr.ph160.split ], [ %i.jb, %._crit_edge150 ]
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge161, label %.lr.ph160.split, !llvm.loop !137

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %._crit_edge150
  %i.an = phi i32 [ %.pre, %.lr.ph155.preheader ], [ %i.ed, %._crit_edge150 ] ; 4 uses
  %indvars.iv177 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next178, %._crit_edge150 ] ; 2 uses
  %.0111153 = phi ptr [ %i.ak, %.lr.ph155.preheader ], [ %i.ja, %._crit_edge150 ] ; 8 uses
  %.0112152 = phi ptr [ %i.ad, %.lr.ph155.preheader ], [ %i.iz, %._crit_edge150 ] ; 5 uses
  %.0111153206 = ptrtoaddr ptr %.0111153 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv177
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0112152, align 4, !tbaa !70 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0112152, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0112152, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0112152, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 6 uses
  %i.bb = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <16 x float> %i.bb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bd = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <16 x float> %i.bd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bf = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <16 x float> %i.bf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bh = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <16 x float> %i.bh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 15
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph155, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph155 ] ; 3 uses
  %i.bk = phi i32 [ %i.cd, %.lr.ph ], [ %i.an, %.lr.ph155 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <16 x float>, ptr %i.bo, align 64, !tbaa !17
  %i.bq = load <16 x float>, ptr %i.bl, align 64, !tbaa !17
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !17
  %i.bt = shl nsw i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !17
  %i.bx = fmul fast <16 x float> %i.bp, %i.bc
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %indvars.iv
  store <16 x float> %i.ca, ptr %i.cb, align 64, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next, 15
  %i.cd = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !138

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph155
  %i.ch = phi i32 [ %i.an, %.lr.ph155 ], [ %i.cd, %._crit_edge.loopexit ] ; 3 uses
  %.0114.lcssa = phi i32 [ 0, %.lr.ph155 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ci = insertelement <8 x float> poison, float %i.au, i64 0
  %i.cj = shufflevector <8 x float> %i.ci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ck = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.cl = shufflevector <8 x float> %i.ck, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cm = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.co = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.cp = shufflevector <8 x float> %i.co, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cq = or disjoint i32 %.0114.lcssa, 7
  %i.cr = icmp slt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0114.lcssa to i64
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv168 = phi i64 [ %i.cs, %.lr.ph140.preheader ], [ %indvars.iv.next169, %.lr.ph140 ] ; 3 uses
  %i.ct = phi i32 [ %i.ch, %.lr.ph140.preheader ], [ %i.dm, %.lr.ph140 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv168 ; 4 uses
  %i.cv = sext i32 %i.ct to i64                   ; 2 uses
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load <8 x float>, ptr %i.cx, align 32, !tbaa !17
  %i.cz = load <8 x float>, ptr %i.cu, align 32, !tbaa !17
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %i.db = load <8 x float>, ptr %i.da, align 32, !tbaa !17
  %i.dc = shl nsw i32 %i.ct, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dd
  %i.df = load <8 x float>, ptr %i.de, align 32, !tbaa !17
  %i.dg = fmul fast <8 x float> %i.cy, %i.cj
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.dg)
  %i.di = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.dh)
  %i.dj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.di)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %indvars.iv168
  store <8 x float> %i.dj, ptr %i.dk, align 32, !tbaa !17
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 8 ; 3 uses
  %i.dl = or disjoint i64 %indvars.iv.next169, 7
  %i.dm = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %i.dl, %i.dn
  br i1 %i.do, label %.lr.ph140, label %._crit_edge141.loopexit, !llvm.loop !139

._crit_edge141.loopexit:                          ; preds = %.lr.ph140
  %i.dp = trunc nuw nsw i64 %indvars.iv.next169 to i32
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %._crit_edge141.loopexit, %._crit_edge
  %i.dq = phi i32 [ %i.ch, %._crit_edge ], [ %i.dm, %._crit_edge141.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0114.lcssa, %._crit_edge ], [ %i.dp, %._crit_edge141.loopexit ] ; 3 uses
  %i.dr = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = or disjoint i32 %.1.lcssa, 3
  %i.ea = icmp slt i32 %i.dz, %i.dq
  br i1 %i.ea, label %.lr.ph145.preheader, label %.preheader

.lr.ph145.preheader:                              ; preds = %._crit_edge141
  %i.eb = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph145

.preheader.loopexit:                              ; preds = %.lr.ph145
  %i.ec = trunc nuw i64 %indvars.iv.next172 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge141
  %i.ed = phi i32 [ %i.dq, %._crit_edge141 ], [ %i.ig, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge141 ], [ %i.ec, %.preheader.loopexit ] ; 2 uses
  %i.ee = icmp slt i32 %.2.lcssa, %i.ed
  br i1 %i.ee, label %iter.check, label %.preheader.._crit_edge150_crit_edge

.preheader.._crit_edge150_crit_edge:              ; preds = %.preheader
  %.pre184 = sext i32 %i.ed to i64
  br label %._crit_edge150

iter.check:                                       ; preds = %.preheader
  %i.ef = shl nsw i32 %i.ed, 1
  %i.eg = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.eh = sext i32 %i.ed to i64                   ; 11 uses
  %i.ei = sext i32 %i.ef to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.eh ; 3 uses
  %invariant.gep201 = getelementptr [4 x i8], ptr %i.at, i64 %i.ei ; 3 uses
  %i.ej = sub nsw i64 %i.eh, %i.eg                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ej, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ek = sub i64 %.0111153206, %i.al             ; 2 uses
  %i.el = add nsw i64 %i.as, %i.ei
  %i.em = shl nsw i64 %i.el, 2
  %i.en = sub i64 %i.em, %i.ek
  %diff.check = icmp ugt i64 %i.en, -256
  %i.eo = add nsw i64 %i.eh, %i.as
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = sub i64 %i.ep, %i.ek
  %diff.check207 = icmp ugt i64 %i.eq, -256
  %conflict.rdx = or i1 %diff.check, %diff.check207
  %i.er = sub i64 %.0111153206, %i.al             ; 2 uses
  %i.es = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.et = sub i64 %i.es, %i.er
  %diff.check208 = icmp ugt i64 %i.et, -256
  %conflict.rdx209 = or i1 %conflict.rdx, %diff.check208
  %i.eu = shl nsw i64 %i.eh, 2
  %i.ev = add i64 %i.er, %i.eu
  %i.ew = sub i64 %i.es, %i.ev
  %diff.check210 = icmp ugt i64 %i.ew, -256
  %conflict.rdx211 = or i1 %conflict.rdx209, %diff.check210
  br i1 %conflict.rdx211, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check212 = icmp ult i64 %i.ej, 64
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %i.ej, 56
  %n.vec = and i64 %i.ej, -64                     ; 4 uses
  %i.ey = add nsw i64 %n.vec, %i.eg
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <16 x float> poison, float %i.aw, i64 0
  %broadcast.splat214 = shufflevector <16 x float> %broadcast.splatinsert213, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert215 = insertelement <16 x float> poison, float %i.ay, i64 0
  %broadcast.splat216 = shufflevector <16 x float> %broadcast.splatinsert215, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert217 = insertelement <16 x float> poison, float %i.ba, i64 0
  %broadcast.splat218 = shufflevector <16 x float> %broadcast.splatinsert217, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = add i64 %index, %i.eg                   ; 5 uses
  %i.fa = sub nsw i64 %i.ez, %i.eh
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 128
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 192
  %wide.load = load <16 x float>, ptr %i.fb, align 4, !tbaa !70
  %wide.load219 = load <16 x float>, ptr %i.fc, align 4, !tbaa !70
  %wide.load220 = load <16 x float>, ptr %i.fd, align 4, !tbaa !70
  %wide.load221 = load <16 x float>, ptr %i.fe, align 4, !tbaa !70
  %i.ff = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.fg = fmul fast <16 x float> %wide.load219, %broadcast.splat
  %i.fh = fmul fast <16 x float> %wide.load220, %broadcast.splat
  %i.fi = fmul fast <16 x float> %wide.load221, %broadcast.splat
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ez ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 192
  %wide.load222 = load <16 x float>, ptr %i.fj, align 4, !tbaa !70
  %wide.load223 = load <16 x float>, ptr %i.fk, align 4, !tbaa !70
  %wide.load224 = load <16 x float>, ptr %i.fl, align 4, !tbaa !70
  %wide.load225 = load <16 x float>, ptr %i.fm, align 4, !tbaa !70
  %i.fn = fmul fast <16 x float> %wide.load222, %broadcast.splat214
  %i.fo = fmul fast <16 x float> %wide.load223, %broadcast.splat214
  %i.fp = fmul fast <16 x float> %wide.load224, %broadcast.splat214
  %i.fq = fmul fast <16 x float> %wide.load225, %broadcast.splat214
  %i.fr = fadd fast <16 x float> %i.ff, %i.fn
  %i.fs = fadd fast <16 x float> %i.fg, %i.fo
  %i.ft = fadd fast <16 x float> %i.fh, %i.fp
  %i.fu = fadd fast <16 x float> %i.fi, %i.fq
  %i.fv = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ez ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 64
  %i.fx = getelementptr i8, ptr %i.fv, i64 128
  %i.fy = getelementptr i8, ptr %i.fv, i64 192
  %wide.load226 = load <16 x float>, ptr %i.fv, align 4, !tbaa !70
  %wide.load227 = load <16 x float>, ptr %i.fw, align 4, !tbaa !70
  %wide.load228 = load <16 x float>, ptr %i.fx, align 4, !tbaa !70
  %wide.load229 = load <16 x float>, ptr %i.fy, align 4, !tbaa !70
  %i.fz = fmul fast <16 x float> %wide.load226, %broadcast.splat216
  %i.ga = fmul fast <16 x float> %wide.load227, %broadcast.splat216
  %i.gb = fmul fast <16 x float> %wide.load228, %broadcast.splat216
  %i.gc = fmul fast <16 x float> %wide.load229, %broadcast.splat216
  %i.gd = fadd fast <16 x float> %i.fr, %i.fz
  %i.ge = fadd fast <16 x float> %i.fs, %i.ga
  %i.gf = fadd fast <16 x float> %i.ft, %i.gb
  %i.gg = fadd fast <16 x float> %i.fu, %i.gc
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.ez ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 64
  %i.gj = getelementptr i8, ptr %i.gh, i64 128
  %i.gk = getelementptr i8, ptr %i.gh, i64 192
  %wide.load230 = load <16 x float>, ptr %i.gh, align 4, !tbaa !70
  %wide.load231 = load <16 x float>, ptr %i.gi, align 4, !tbaa !70
  %wide.load232 = load <16 x float>, ptr %i.gj, align 4, !tbaa !70
  %wide.load233 = load <16 x float>, ptr %i.gk, align 4, !tbaa !70
  %i.gl = fmul fast <16 x float> %wide.load230, %broadcast.splat218
  %i.gm = fmul fast <16 x float> %wide.load231, %broadcast.splat218
  %i.gn = fmul fast <16 x float> %wide.load232, %broadcast.splat218
  %i.go = fmul fast <16 x float> %wide.load233, %broadcast.splat218
  %i.gp = fadd fast <16 x float> %i.gd, %i.gl
  %i.gq = fadd fast <16 x float> %i.ge, %i.gm
  %i.gr = fadd fast <16 x float> %i.gf, %i.gn
  %i.gs = fadd fast <16 x float> %i.gg, %i.go
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %i.ez ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 192
  store <16 x float> %i.gp, ptr %i.gt, align 4, !tbaa !70
  store <16 x float> %i.gq, ptr %i.gu, align 4, !tbaa !70
  store <16 x float> %i.gr, ptr %i.gv, align 4, !tbaa !70
  store <16 x float> %i.gs, ptr %i.gw, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %._crit_edge150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.ej, -8                   ; 3 uses
  %i.gy = add nsw i64 %n.vec234, %i.eg
  %broadcast.splatinsert235 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat236 = shufflevector <8 x float> %broadcast.splatinsert235, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat238 = shufflevector <8 x float> %broadcast.splatinsert237, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index243 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 2 uses
  %i.gz = add i64 %index243, %i.eg                ; 5 uses
  %i.ha = sub nsw i64 %i.gz, %i.eh
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ha
  %wide.load244 = load <8 x float>, ptr %i.hb, align 4, !tbaa !70
  %i.hc = fmul fast <8 x float> %wide.load244, %broadcast.splat236
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gz
  %wide.load245 = load <8 x float>, ptr %i.hd, align 4, !tbaa !70
  %i.he = fmul fast <8 x float> %wide.load245, %broadcast.splat238
  %i.hf = fadd fast <8 x float> %i.hc, %i.he
  %i.hg = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gz
  %wide.load246 = load <8 x float>, ptr %i.hg, align 4, !tbaa !70
  %i.hh = fmul fast <8 x float> %wide.load246, %broadcast.splat240
  %i.hi = fadd fast <8 x float> %i.hf, %i.hh
  %i.hj = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.gz
  %wide.load247 = load <8 x float>, ptr %i.hj, align 4, !tbaa !70
  %i.hk = fmul fast <8 x float> %wide.load247, %broadcast.splat242
  %i.hl = fadd fast <8 x float> %i.hi, %i.hk
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %i.gz
  store <8 x float> %i.hl, ptr %i.hm, align 4, !tbaa !70
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next248, %n.vec234
  br i1 %i.hn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n249 = icmp eq i64 %i.ej, %n.vec234
  br i1 %cmp.n249, label %._crit_edge150, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv174.ph = phi i64 [ %i.eg, %iter.check ], [ %i.eg, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.gy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv171 = phi i64 [ %i.eb, %.lr.ph145.preheader ], [ %indvars.iv.next172, %.lr.ph145 ] ; 3 uses
  %i.ho = phi i32 [ %i.dq, %.lr.ph145.preheader ], [ %i.ig, %.lr.ph145 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv171 ; 4 uses
  %i.hq = sext i32 %i.ho to i64                   ; 2 uses
  %i.hr = sub nsw i64 0, %i.hq
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hr
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !17
  %i.hu = load <4 x float>, ptr %i.hp, align 16, !tbaa !17
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hw = load <4 x float>, ptr %i.hv, align 16, !tbaa !17
  %i.hx = shl nsw i32 %i.ho, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hy
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !17
  %i.ib = fmul fast <4 x float> %i.ht, %i.ds
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hu, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.ib)
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.ic)
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ia, <4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.id)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %indvars.iv171
  store <4 x float> %i.ie, ptr %i.if, align 16, !tbaa !17
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 4 ; 3 uses
  %i.ig = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ih = trunc i64 %indvars.iv.next172 to i32
  %i.ii = or i32 %i.ih, 3
  %i.ij = icmp slt i32 %i.ii, %i.ig
  br i1 %i.ij, label %.lr.ph145, label %.preheader.loopexit, !llvm.loop !142

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %vec.epilog.scalar.ph ], [ %indvars.iv174.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.ik = sub nsw i64 %indvars.iv174, %i.eh
  %i.il = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !70
  %i.in = fmul fast float %i.im, %i.au
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv174
  %i.ip = load float, ptr %i.io, align 4, !tbaa !70
  %i.iq = fmul fast float %i.ip, %i.aw
  %i.ir = fadd fast float %i.in, %i.iq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv174
  %i.is = load float, ptr %gep, align 4, !tbaa !70
  %i.it = fmul fast float %i.is, %i.ay
  %i.iu = fadd fast float %i.ir, %i.it
  %gep202 = getelementptr [4 x i8], ptr %invariant.gep201, i64 %indvars.iv174
  %i.iv = load float, ptr %gep202, align 4, !tbaa !70
  %i.iw = fmul fast float %i.iv, %i.ba
  %i.ix = fadd fast float %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0111153, i64 %indvars.iv174
  store float %i.ix, ptr %i.iy, align 4, !tbaa !70
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next175, %i.eh
  br i1 %exitcond.not, label %._crit_edge150, label %vec.epilog.scalar.ph, !llvm.loop !143

._crit_edge150:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge150_crit_edge
  %.pre-phi = phi i64 [ %.pre184, %.preheader.._crit_edge150_crit_edge ], [ %i.eh, %middle.block ], [ %i.eh, %vec.epilog.middle.block ], [ %i.eh, %vec.epilog.scalar.ph ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.0112152, i64 16
  %i.ja = getelementptr inbounds [4 x i8], ptr %.0111153, i64 %.pre-phi
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.jb = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next178, %i.jc
  br i1 %i.jd, label %.lr.ph155, label %._crit_edge156, !llvm.loop !144

._crit_edge161:                                   ; preds = %._crit_edge156, %.lr.ph160, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge161, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #11 personality ptr @__gxx_personality_v0 {
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !145
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !145
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !145 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !148
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !148
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !148 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !148
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !145
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
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !151

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
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !152

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
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !153

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
begin_hunk_1_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.on = shl nuw nsw i64 %indvars.iv.i, 4        ; 4 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.0329425.i, i64 %i.on
  store <16 x float> %i.oj, ptr %i.oo, align 64, !tbaa !17
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.0331424.i, i64 %i.on
  store <16 x float> %i.ok, ptr %i.op, align 64, !tbaa !17
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.0333423.i, i64 %i.on
  store <16 x float> %i.ol, ptr %i.oq, align 64, !tbaa !17
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.0335422.i, i64 %i.on
  store <16 x float> %i.om, ptr %i.or, align 64, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %.0345410.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !208

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph413.i, %.lr.ph416.i, %.lr.ph419.i, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1336.i = phi ptr [ %.0335422.i, %bb.ae ], [ %.0329425.i, %bb.ag ], [ %.0331424.i, %bb.ai ], [ %.0333423.i, %bb.ak ], [ %.0335422.i, %bb.al ], [ %.0333423.i, %.lr.ph413.i ], [ %.0329425.i, %.lr.ph419.i ], [ %.0331424.i, %.lr.ph416.i ], [ %.0335422.i, %.lr.ph.i ] ; 8 uses
  %.1334.i = phi ptr [ %.0333423.i, %bb.ae ], [ %.0335422.i, %bb.ag ], [ %.0329425.i, %bb.ai ], [ %.0331424.i, %bb.ak ], [ %.0333423.i, %bb.al ], [ %.0331424.i, %.lr.ph413.i ], [ %.0335422.i, %.lr.ph419.i ], [ %.0329425.i, %.lr.ph416.i ], [ %.0333423.i, %.lr.ph.i ] ; 8 uses
  %.1332.i = phi ptr [ %.0331424.i, %bb.ae ], [ %.0333423.i, %bb.ag ], [ %.0335422.i, %bb.ai ], [ %.0329425.i, %bb.ak ], [ %.0331424.i, %bb.al ], [ %.0329425.i, %.lr.ph413.i ], [ %.0333423.i, %.lr.ph419.i ], [ %.0335422.i, %.lr.ph416.i ], [ %.0331424.i, %.lr.ph.i ] ; 8 uses
  %.1330.i = phi ptr [ %.0329425.i, %bb.ae ], [ %.0331424.i, %bb.ag ], [ %.0333423.i, %bb.ai ], [ %.0335422.i, %bb.ak ], [ %.0329425.i, %bb.al ], [ %.0335422.i, %.lr.ph413.i ], [ %.0331424.i, %.lr.ph419.i ], [ %.0333423.i, %.lr.ph416.i ], [ %.0329425.i, %.lr.ph.i ] ; 8 uses
  %.1336.i821 = ptrtoaddr ptr %.1336.i to i64
  %.1334.i823 = ptrtoaddr ptr %.1334.i to i64
  %.1332.i826 = ptrtoaddr ptr %.1332.i to i64
  %.1330.i829 = ptrtoaddr ptr %.1330.i to i64
  %i.ot = mul i64 %i.cv, %indvars.iv447.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ot ; 6 uses
  %i.ov = load float, ptr %.0426.i, align 4, !tbaa !70 ; 6 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.0426.i, i64 4
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !70 ; 6 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.0426.i, i64 8
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !70 ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0426.i, i64 12
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !70 ; 6 uses
  %i.pc = insertelement <16 x float> poison, float %i.ov, i64 0
  %i.pd = shufflevector <16 x float> %i.pc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pe = insertelement <16 x float> poison, float %i.ox, i64 0
  %i.pf = shufflevector <16 x float> %i.pe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pg = insertelement <16 x float> poison, float %i.oz, i64 0
  %i.ph = shufflevector <16 x float> %i.pg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pi = insertelement <16 x float> poison, float %i.pb, i64 0
  %i.pj = shufflevector <16 x float> %i.pi, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %indvars.iv.i.i
  %i.pl = load <16 x float>, ptr %i.pk, align 1, !tbaa !17
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %indvars.iv.i.i
  %i.pn = load <16 x float>, ptr %i.pm, align 1, !tbaa !17
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv.i.i
  %i.pp = load <16 x float>, ptr %i.po, align 1, !tbaa !17
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv.i.i
  %i.pr = load <16 x float>, ptr %i.pq, align 1, !tbaa !17
  %i.ps = fmul fast <16 x float> %i.pl, %i.pd
  %i.pt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pn, <16 x float> nofpclass(nan inf) %i.pf, <16 x float> nofpclass(nan inf) %i.ps)
  %i.pu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pp, <16 x float> nofpclass(nan inf) %i.ph, <16 x float> nofpclass(nan inf) %i.pt)
  %i.pv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pr, <16 x float> nofpclass(nan inf) %i.pj, <16 x float> nofpclass(nan inf) %i.pu)
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.i.i
  store <16 x float> %i.pv, ptr %i.pw, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.px = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.py = icmp samesign ult i64 %i.px, %i.cu
  br i1 %i.py, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !209

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.pz = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.pz, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.qa = insertelement <8 x float> poison, float %i.ov, i64 0
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qc = insertelement <8 x float> poison, float %i.ox, i64 0
  %i.qd = shufflevector <8 x float> %i.qc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qe = insertelement <8 x float> poison, float %i.oz, i64 0
  %i.qf = shufflevector <8 x float> %i.qe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qg = insertelement <8 x float> poison, float %i.pb, i64 0
  %i.qh = shufflevector <8 x float> %i.qg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qi = or disjoint i32 %.0.lcssa.i.i, 7
  %i.qj = icmp slt i32 %i.qi, %i.ct
  br i1 %i.qj, label %.lr.ph104.preheader.i.i, label %._crit_edge105.i.i

.lr.ph104.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %i.qk = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.lr.ph104.i.i, %.lr.ph104.preheader.i.i
  %indvars.iv117.i.i = phi i64 [ %i.qk, %.lr.ph104.preheader.i.i ], [ %indvars.iv.next118.i.i, %.lr.ph104.i.i ] ; 6 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %indvars.iv117.i.i
  %i.qm = load <8 x float>, ptr %i.ql, align 1, !tbaa !17
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %indvars.iv117.i.i
  %i.qo = load <8 x float>, ptr %i.qn, align 1, !tbaa !17
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv117.i.i
  %i.qq = load <8 x float>, ptr %i.qp, align 1, !tbaa !17
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv117.i.i
  %i.qs = load <8 x float>, ptr %i.qr, align 1, !tbaa !17
  %i.qt = fmul fast <8 x float> %i.qm, %i.qb
  %i.qu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qo, <8 x float> nofpclass(nan inf) %i.qd, <8 x float> nofpclass(nan inf) %i.qt)
  %i.qv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qq, <8 x float> nofpclass(nan inf) %i.qf, <8 x float> nofpclass(nan inf) %i.qu)
  %i.qw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qs, <8 x float> nofpclass(nan inf) %i.qh, <8 x float> nofpclass(nan inf) %i.qv)
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv117.i.i
  store <8 x float> %i.qw, ptr %i.qx, align 1, !tbaa !17
  %indvars.iv.next118.i.i = add nuw nsw i64 %indvars.iv117.i.i, 8 ; 3 uses
  %i.qy = icmp slt i64 %indvars.iv.next118.i.i, %invariant.op.i.i
  br i1 %i.qy, label %.lr.ph104.i.i, label %._crit_edge105.loopexit.i.i, !llvm.loop !210

._crit_edge105.loopexit.i.i:                      ; preds = %.lr.ph104.i.i
  %i.qz = trunc nuw nsw i64 %indvars.iv.next118.i.i to i32
  br label %._crit_edge105.i.i

._crit_edge105.i.i:                               ; preds = %._crit_edge105.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.qz, %._crit_edge105.loopexit.i.i ] ; 3 uses
  %i.ra = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.rb = shufflevector <4 x float> %i.ra, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rc = insertelement <4 x float> poison, float %i.ox, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rg = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ri = or disjoint i32 %.1.lcssa.i.i, 3
  %i.rj = icmp slt i32 %i.ri, %i.ct
  br i1 %i.rj, label %.lr.ph109.preheader.i.i, label %.preheader.i.i

.lr.ph109.preheader.i.i:                          ; preds = %._crit_edge105.i.i
  %i.rk = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph109.i.i

.preheader.i.i:                                   ; preds = %.lr.ph109.i.i, %._crit_edge105.i.i
  %.2.lcssa.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge105.i.i ], [ %i.ux, %.lr.ph109.i.i ] ; 3 uses
  %i.rl = icmp slt i32 %.2.lcssa.i.i, %i.ct
  br i1 %i.rl, label %iter.check867, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i

iter.check867:                                    ; preds = %.preheader.i.i
  %i.rm = zext i32 %.2.lcssa.i.i to i64           ; 6 uses
  %i.rn = xor i32 %.2.lcssa.i.i, -1
  %i.ro = add i32 %i.ct, %i.rn                    ; 3 uses
  %i.rp = zext i32 %i.ro to i64
  %i.rq = add nuw nsw i64 %i.rp, 1                ; 5 uses
  %min.iters.check832 = icmp ult i32 %i.ro, 7
  br i1 %min.iters.check832, label %.lr.ph112.i.i.preheader, label %vector.memcheck820

vector.memcheck820:                               ; preds = %iter.check867
  %i.rr = sub i64 %.1336.i821, %i.es
  %diff.check822 = icmp ugt i64 %i.rr, -256
  %i.rs = sub i64 %.1334.i823, %i.es
  %diff.check824 = icmp ugt i64 %i.rs, -256
  %conflict.rdx825 = or i1 %diff.check822, %diff.check824
  %i.rt = sub i64 %.1332.i826, %i.es
  %diff.check827 = icmp ugt i64 %i.rt, -256
  %conflict.rdx828 = or i1 %conflict.rdx825, %diff.check827
  %i.ru = sub i64 %.1330.i829, %i.es
  %diff.check830 = icmp ugt i64 %i.ru, -256
  %conflict.rdx831 = or i1 %conflict.rdx828, %diff.check830
  br i1 %conflict.rdx831, label %.lr.ph112.i.i.preheader, label %vector.main.loop.iter.check833

vector.main.loop.iter.check833:                   ; preds = %vector.memcheck820
  %min.iters.check834 = icmp ult i32 %i.ro, 63
  br i1 %min.iters.check834, label %vec.epilog.ph871, label %vector.ph835

vector.ph835:                                     ; preds = %vector.main.loop.iter.check833
  %i.rv = and i64 %i.rq, 56
  %n.vec836 = and i64 %i.rq, 8589934528           ; 4 uses
  %i.rw = add nuw nsw i64 %n.vec836, %i.rm
  %broadcast.splatinsert837 = insertelement <16 x float> poison, float %i.ov, i64 0
  %broadcast.splat838 = shufflevector <16 x float> %broadcast.splatinsert837, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert839 = insertelement <16 x float> poison, float %i.ox, i64 0
  %broadcast.splat840 = shufflevector <16 x float> %broadcast.splatinsert839, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert841 = insertelement <16 x float> poison, float %i.oz, i64 0
  %broadcast.splat842 = shufflevector <16 x float> %broadcast.splatinsert841, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert843 = insertelement <16 x float> poison, float %i.pb, i64 0
  %broadcast.splat844 = shufflevector <16 x float> %broadcast.splatinsert843, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph835
  %index846 = phi i64 [ 0, %vector.ph835 ], [ %index.next863, %vector.body845 ] ; 2 uses
  %i.rx = add nuw i64 %index846, %i.rm            ; 5 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %i.rx ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 128
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 192
  %wide.load847 = load <16 x float>, ptr %i.ry, align 4, !tbaa !70
  %wide.load848 = load <16 x float>, ptr %i.rz, align 4, !tbaa !70
  %wide.load849 = load <16 x float>, ptr %i.sa, align 4, !tbaa !70
  %wide.load850 = load <16 x float>, ptr %i.sb, align 4, !tbaa !70
  %i.sc = fmul fast <16 x float> %wide.load847, %broadcast.splat838
  %i.sd = fmul fast <16 x float> %wide.load848, %broadcast.splat838
  %i.se = fmul fast <16 x float> %wide.load849, %broadcast.splat838
  %i.sf = fmul fast <16 x float> %wide.load850, %broadcast.splat838
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %i.rx ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 64
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 192
  %wide.load851 = load <16 x float>, ptr %i.sg, align 4, !tbaa !70
  %wide.load852 = load <16 x float>, ptr %i.sh, align 4, !tbaa !70
  %wide.load853 = load <16 x float>, ptr %i.si, align 4, !tbaa !70
  %wide.load854 = load <16 x float>, ptr %i.sj, align 4, !tbaa !70
  %i.sk = fmul fast <16 x float> %wide.load851, %broadcast.splat840
  %i.sl = fmul fast <16 x float> %wide.load852, %broadcast.splat840
  %i.sm = fmul fast <16 x float> %wide.load853, %broadcast.splat840
  %i.sn = fmul fast <16 x float> %wide.load854, %broadcast.splat840
  %i.so = fadd fast <16 x float> %i.sc, %i.sk
  %i.sp = fadd fast <16 x float> %i.sd, %i.sl
  %i.sq = fadd fast <16 x float> %i.se, %i.sm
  %i.sr = fadd fast <16 x float> %i.sf, %i.sn
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %i.rx ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 64
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 128
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 192
  %wide.load855 = load <16 x float>, ptr %i.ss, align 4, !tbaa !70
  %wide.load856 = load <16 x float>, ptr %i.st, align 4, !tbaa !70
  %wide.load857 = load <16 x float>, ptr %i.su, align 4, !tbaa !70
  %wide.load858 = load <16 x float>, ptr %i.sv, align 4, !tbaa !70
  %i.sw = fmul fast <16 x float> %wide.load855, %broadcast.splat842
  %i.sx = fmul fast <16 x float> %wide.load856, %broadcast.splat842
  %i.sy = fmul fast <16 x float> %wide.load857, %broadcast.splat842
  %i.sz = fmul fast <16 x float> %wide.load858, %broadcast.splat842
  %i.ta = fadd fast <16 x float> %i.so, %i.sw
  %i.tb = fadd fast <16 x float> %i.sp, %i.sx
  %i.tc = fadd fast <16 x float> %i.sq, %i.sy
  %i.td = fadd fast <16 x float> %i.sr, %i.sz
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %i.rx ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 128
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 192
  %wide.load859 = load <16 x float>, ptr %i.te, align 4, !tbaa !70
  %wide.load860 = load <16 x float>, ptr %i.tf, align 4, !tbaa !70
  %wide.load861 = load <16 x float>, ptr %i.tg, align 4, !tbaa !70
  %wide.load862 = load <16 x float>, ptr %i.th, align 4, !tbaa !70
  %i.ti = fmul fast <16 x float> %wide.load859, %broadcast.splat844
  %i.tj = fmul fast <16 x float> %wide.load860, %broadcast.splat844
  %i.tk = fmul fast <16 x float> %wide.load861, %broadcast.splat844
  %i.tl = fmul fast <16 x float> %wide.load862, %broadcast.splat844
  %i.tm = fadd fast <16 x float> %i.ta, %i.ti
  %i.tn = fadd fast <16 x float> %i.tb, %i.tj
  %i.to = fadd fast <16 x float> %i.tc, %i.tk
  %i.tp = fadd fast <16 x float> %i.td, %i.tl
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.rx ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 128
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 192
  store <16 x float> %i.tm, ptr %i.tq, align 4, !tbaa !70
  store <16 x float> %i.tn, ptr %i.tr, align 4, !tbaa !70
  store <16 x float> %i.to, ptr %i.ts, align 4, !tbaa !70
  store <16 x float> %i.tp, ptr %i.tt, align 4, !tbaa !70
  %index.next863 = add nuw i64 %index846, 64      ; 2 uses
  %i.tu = icmp eq i64 %index.next863, %n.vec836
  br i1 %i.tu, label %middle.block864, label %vector.body845, !llvm.loop !211

middle.block864:                                  ; preds = %vector.body845
  %cmp.n865 = icmp eq i64 %i.rq, %n.vec836
  br i1 %cmp.n865, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %vec.epilog.iter.check869

vec.epilog.iter.check869:                         ; preds = %middle.block864
  %min.epilog.iters.check870 = icmp eq i64 %i.rv, 0
  br i1 %min.epilog.iters.check870, label %.lr.ph112.i.i.preheader, label %vec.epilog.ph871, !prof !107

vec.epilog.ph871:                                 ; preds = %vector.main.loop.iter.check833, %vec.epilog.iter.check869
  %vec.epilog.resume.val866 = phi i64 [ %n.vec836, %vec.epilog.iter.check869 ], [ 0, %vector.main.loop.iter.check833 ]
  %n.vec872 = and i64 %i.rq, 8589934584           ; 3 uses
  %i.tv = add nuw nsw i64 %n.vec872, %i.rm
  %broadcast.splatinsert873 = insertelement <8 x float> poison, float %i.ov, i64 0
  %broadcast.splat874 = shufflevector <8 x float> %broadcast.splatinsert873, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert875 = insertelement <8 x float> poison, float %i.ox, i64 0
  %broadcast.splat876 = shufflevector <8 x float> %broadcast.splatinsert875, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert877 = insertelement <8 x float> poison, float %i.oz, i64 0
  %broadcast.splat878 = shufflevector <8 x float> %broadcast.splatinsert877, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert879 = insertelement <8 x float> poison, float %i.pb, i64 0
  %broadcast.splat880 = shufflevector <8 x float> %broadcast.splatinsert879, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body881

vec.epilog.vector.body881:                        ; preds = %vec.epilog.vector.body881, %vec.epilog.ph871
  %index882 = phi i64 [ %vec.epilog.resume.val866, %vec.epilog.ph871 ], [ %index.next887, %vec.epilog.vector.body881 ] ; 2 uses
  %i.tw = add nuw i64 %index882, %i.rm            ; 5 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %i.tw
  %wide.load883 = load <8 x float>, ptr %i.tx, align 4, !tbaa !70
  %i.ty = fmul fast <8 x float> %wide.load883, %broadcast.splat874
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %i.tw
  %wide.load884 = load <8 x float>, ptr %i.tz, align 4, !tbaa !70
  %i.ua = fmul fast <8 x float> %wide.load884, %broadcast.splat876
  %i.ub = fadd fast <8 x float> %i.ty, %i.ua
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %i.tw
  %wide.load885 = load <8 x float>, ptr %i.uc, align 4, !tbaa !70
  %i.ud = fmul fast <8 x float> %wide.load885, %broadcast.splat878
  %i.ue = fadd fast <8 x float> %i.ub, %i.ud
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %i.tw
  %wide.load886 = load <8 x float>, ptr %i.uf, align 4, !tbaa !70
  %i.ug = fmul fast <8 x float> %wide.load886, %broadcast.splat880
  %i.uh = fadd fast <8 x float> %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.tw
  store <8 x float> %i.uh, ptr %i.ui, align 4, !tbaa !70
  %index.next887 = add nuw i64 %index882, 8       ; 2 uses
  %i.uj = icmp eq i64 %index.next887, %n.vec872
  br i1 %i.uj, label %vec.epilog.middle.block888, label %vec.epilog.vector.body881, !llvm.loop !212

vec.epilog.middle.block888:                       ; preds = %vec.epilog.vector.body881
  %cmp.n889 = icmp eq i64 %i.rq, %n.vec872
  br i1 %cmp.n889, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, label %.lr.ph112.i.i.preheader

.lr.ph112.i.i.preheader:                          ; preds = %vector.memcheck820, %iter.check867, %vec.epilog.iter.check869, %vec.epilog.middle.block888
  %indvars.iv123.i.i.ph = phi i64 [ %i.rm, %iter.check867 ], [ %i.rm, %vector.memcheck820 ], [ %i.rw, %vec.epilog.iter.check869 ], [ %i.tv, %vec.epilog.middle.block888 ]
  br label %.lr.ph112.i.i

.lr.ph109.i.i:                                    ; preds = %.lr.ph109.i.i, %.lr.ph109.preheader.i.i
  %indvars.iv120.i.i = phi i64 [ %i.rk, %.lr.ph109.preheader.i.i ], [ %indvars.iv.next121.i.i, %.lr.ph109.i.i ] ; 6 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %indvars.iv120.i.i
  %i.ul = load <4 x float>, ptr %i.uk, align 1, !tbaa !17
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %indvars.iv120.i.i
  %i.un = load <4 x float>, ptr %i.um, align 1, !tbaa !17
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv120.i.i
  %i.up = load <4 x float>, ptr %i.uo, align 1, !tbaa !17
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv120.i.i
  %i.ur = load <4 x float>, ptr %i.uq, align 1, !tbaa !17
  %i.us = fmul fast <4 x float> %i.ul, %i.rb
  %i.ut = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.un, <4 x float> nofpclass(nan inf) %i.rd, <4 x float> nofpclass(nan inf) %i.us)
  %i.uu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.up, <4 x float> nofpclass(nan inf) %i.rf, <4 x float> nofpclass(nan inf) %i.ut)
  %i.uv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ur, <4 x float> nofpclass(nan inf) %i.rh, <4 x float> nofpclass(nan inf) %i.uu)
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv120.i.i
  store <4 x float> %i.uv, ptr %i.uw, align 1, !tbaa !17
  %indvars.iv.next121.i.i = add nuw nsw i64 %indvars.iv120.i.i, 4 ; 2 uses
  %i.ux = trunc i64 %indvars.iv.next121.i.i to i32 ; 2 uses
  %i.uy = or i32 %i.ux, 3
  %i.uz = icmp slt i32 %i.uy, %i.ct
  br i1 %i.uz, label %.lr.ph109.i.i, label %.preheader.i.i, !llvm.loop !213

.lr.ph112.i.i:                                    ; preds = %.lr.ph112.i.i.preheader, %.lr.ph112.i.i
  %indvars.iv123.i.i = phi i64 [ %indvars.iv.next124.i.i, %.lr.ph112.i.i ], [ %indvars.iv123.i.i.ph, %.lr.ph112.i.i.preheader ] ; 6 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1330.i, i64 %indvars.iv123.i.i
  %i.vb = load float, ptr %i.va, align 4, !tbaa !70
  %i.vc = fmul fast float %i.vb, %i.ov
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.1332.i, i64 %indvars.iv123.i.i
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !70
  %i.vf = fmul fast float %i.ve, %i.ox
  %i.vg = fadd fast float %i.vc, %i.vf
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1334.i, i64 %indvars.iv123.i.i
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !70
  %i.vj = fmul fast float %i.vi, %i.oz
  %i.vk = fadd fast float %i.vg, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.1336.i, i64 %indvars.iv123.i.i
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !70
  %i.vn = fmul fast float %i.vm, %i.pb
  %i.vo = fadd fast float %i.vk, %i.vn
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv123.i.i
  store float %i.vo, ptr %i.vp, align 4, !tbaa !70
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %i.vq = trunc nuw i64 %indvars.iv.next124.i.i to i32
  %i.vr = icmp sgt i32 %i.ct, %i.vq
  br i1 %i.vr, label %.lr.ph112.i.i, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i, !llvm.loop !214

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i: ; preds = %.lr.ph112.i.i, %middle.block864, %vec.epilog.middle.block888, %.preheader.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.0426.i, i64 16
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %wide.trip.count450.i
  br i1 %exitcond451.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !215

bb.am:                                            ; preds = %bb.ad
  %i.vt = atomicrmw add ptr %i.eq, i32 -1 acq_rel, align 4
  %i.vu = icmp eq i32 %i.vt, 1
  br i1 %i.vu, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit352.i

bb.an:                                            ; preds = %bb.am
  %i.vv = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %.not3.i375.i = icmp eq ptr %i.vv, null
  %i.vw = load ptr, ptr %24, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i375.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vx = load ptr, ptr %i.vv, align 8, !tbaa !9
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8
  invoke void %i.vz(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef %i.vw)
          to label %_ZN4ncnn3MatD2Ev.exit352.i unwind label %bb.ar, !inline_history !46

bb.ap:                                            ; preds = %bb.an
  %.not.i389.i = icmp eq ptr %i.vw, null
  br i1 %.not.i389.i, label %_ZN4ncnn3MatD2Ev.exit352.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.vw) #6
  br label %_ZN4ncnn3MatD2Ev.exit352.i

bb.ar:                                            ; preds = %bb.ao
  %i.wa = landingpad { ptr, i32 }
          catch ptr null
  %i.wb = extractvalue { ptr, i32 } %i.wa, 0
  call void @__clang_call_terminate(ptr %i.wb) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit352.i:                       ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ad, %bb.ac
  %.pn.pn.i = phi { ptr, i32 } [ %i.eo, %bb.ac ], [ %i.ep, %bb.am ], [ %i.ep, %bb.ad ], [ %i.ep, %bb.ao ], [ %i.ep, %bb.ap ], [ %i.ep, %bb.aq ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #6
  %i.wc = load ptr, ptr %i.v, align 8, !tbaa !43  ; 2 uses
  %.not.i378.i = icmp eq ptr %i.wc, null
  br i1 %.not.i378.i, label %_ZN4ncnn3MatD2Ev.exit351.i, label %bb.as

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit352.i
  %i.wd = atomicrmw add ptr %i.wc, i32 -1 acq_rel, align 4
  %i.we = icmp eq i32 %i.wd, 1
  br i1 %i.we, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit351.i

bb.at:                                            ; preds = %bb.as
  %i.wf = load ptr, ptr %i.w, align 8, !tbaa !44  ; 3 uses
  %.not3.i379.i = icmp eq ptr %i.wf, null
  %i.wg = load ptr, ptr %23, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i379.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.wh = load ptr, ptr %i.wf, align 8, !tbaa !9
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8
  invoke void %i.wj(ptr noundef nonnull align 8 dereferenceable(8) %i.wf, ptr noundef %i.wg)
          to label %_ZN4ncnn3MatD2Ev.exit351.i unwind label %bb.ax, !inline_history !46

bb.av:                                            ; preds = %bb.at
  %.not.i387.i = icmp eq ptr %i.wg, null
  br i1 %.not.i387.i, label %_ZN4ncnn3MatD2Ev.exit351.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.wg) #6
  br label %_ZN4ncnn3MatD2Ev.exit351.i

bb.ax:                                            ; preds = %bb.au
  %i.wk = landingpad { ptr, i32 }
          catch ptr null
  %i.wl = extractvalue { ptr, i32 } %i.wk, 0
  call void @__clang_call_terminate(ptr %i.wl) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit351.i:                       ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %_ZN4ncnn3MatD2Ev.exit352.i, %bb.ab
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.en, %bb.ab ], [ %.pn.pn.i, %bb.as ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit352.i ], [ %.pn.pn.i, %bb.au ], [ %.pn.pn.i, %bb.av ], [ %.pn.pn.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #6
  %i.wm = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %.not.i382.i = icmp eq ptr %i.wm, null
  br i1 %.not.i382.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit351.i
  %i.wn = atomicrmw add ptr %i.wm, i32 -1 acq_rel, align 4
  %i.wo = icmp eq i32 %i.wn, 1
  br i1 %i.wo, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.wp = load ptr, ptr %i.t, align 8, !tbaa !44  ; 3 uses
  %.not3.i383.i = icmp eq ptr %i.wp, null
  %i.wq = load ptr, ptr %22, align 8, !tbaa !45   ; 3 uses
  br i1 %.not3.i383.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !9
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8
  invoke void %i.wt(ptr noundef nonnull align 8 dereferenceable(8) %i.wp, ptr noundef %i.wq)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bd, !inline_history !46

bb.bb:                                            ; preds = %bb.az
  %.not.i386.i = icmp eq ptr %i.wq, null
  br i1 %.not.i386.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.wq) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bd:                                            ; preds = %bb.ba
  %i.wu = landingpad { ptr, i32 }
          catch ptr null
  %i.wv = extractvalue { ptr, i32 } %i.wu, 0
  call void @__clang_call_terminate(ptr %i.wv) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay, %_ZN4ncnn3MatD2Ev.exit351.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #6
  br label %.body

_ZN4ncnnL27resize_bicubic_image_pack16ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit354.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.be

bb.be:                                            ; preds = %_ZN4ncnnL27resize_bicubic_image_pack16ERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ww = phi i32 [ %.pr, %_ZN4ncnnL27resize_bicubic_image_pack16ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ch, %_ZNK4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.wx = icmp eq i32 %i.ww, 8
  br i1 %i.wx, label %bb.bf, label %bb.dh

bb.bf:                                            ; preds = %bb.be
  %i.wy = load ptr, ptr %6, align 8, !tbaa !72    ; 8 uses
  %i.wz = load ptr, ptr %7, align 8, !tbaa !71    ; 8 uses
  %i.xa = load ptr, ptr %8, align 8, !tbaa !72
  %i.xb = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %.noexc65 unwind label %bb.ho

.noexc65:                                         ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %19, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %19, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1059.i unwind label %bb.ce

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1059.i:     ; preds = %.noexc65
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #6
  store i64 0, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %20, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %20, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1057.i unwind label %bb.cf

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1057.i:     ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1059.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %21, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31 unwind label %bb.cg

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1057.i
  %i.xc = icmp sgt i32 %i.by, 0
  br i1 %i.xc, label %.lr.ph1281.i, label %._crit_edge.i32

.lr.ph1281.i:                                     ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31
  %i.xd = load ptr, ptr %21, align 8, !tbaa !45
  %i.xe = load ptr, ptr %20, align 8, !tbaa !45
  %i.xf = load ptr, ptr %19, align 8, !tbaa !45
  %i.xg = load ptr, ptr %18, align 8, !tbaa !45
  %i.xh = icmp sgt i32 %i.bx, 1                   ; 5 uses
  %i.xi = shl i32 %i.bx, 3                        ; 7 uses
  %i.xj = zext nneg i32 %i.xi to i64              ; 2 uses
  %invariant.op.i.i33 = add nsw i64 %i.xj, -7
  %wide.trip.count1324.i = zext nneg i32 %i.by to i64
  %invariant.op.i = add nsw i64 %i.cg, -1         ; 4 uses
  %wide.trip.count.i34 = zext i32 %i.bx to i64    ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.ayz = shl nuw nsw i64 %indvars.iv1294.i, 3   ; 4 uses
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %.08901279.i, i64 %i.ayz
  store <8 x float> %i.ayv, ptr %i.aza, align 32, !tbaa !17
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %.08921278.i, i64 %i.ayz
  store <8 x float> %i.ayw, ptr %i.azb, align 32, !tbaa !17
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %.08941277.i, i64 %i.ayz
  store <8 x float> %i.ayx, ptr %i.azc, align 32, !tbaa !17
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %.08961276.i, i64 %i.ayz
  store <8 x float> %i.ayy, ptr %i.azd, align 32, !tbaa !17
  %i.aze = getelementptr inbounds nuw i8, ptr %.19131248.i, i64 16
  %indvars.iv.next1295.i = add nuw nsw i64 %indvars.iv1294.i, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next1295.i, %wide.trip.count.i34
  br i1 %exitcond.not.i60, label %.loopexit.i35, label %.lr.ph1249.i, !llvm.loop !223

.loopexit.i35:                                    ; preds = %.lr.ph1249.i, %.lr.ph1257.i, %.lr.ph1265.i, %.lr.ph1273.i, %.preheader1242.i, %.preheader1240.i, %.preheader1238.i, %.preheader.i, %bb.ch
  %.1897.i = phi ptr [ %.08961276.i, %bb.ch ], [ %.08901279.i, %.preheader.i ], [ %.08921278.i, %.preheader1238.i ], [ %.08941277.i, %.preheader1240.i ], [ %.08961276.i, %.preheader1242.i ], [ %.08941277.i, %.lr.ph1257.i ], [ %.08901279.i, %.lr.ph1273.i ], [ %.08921278.i, %.lr.ph1265.i ], [ %.08961276.i, %.lr.ph1249.i ] ; 8 uses
  %.1895.i = phi ptr [ %.08941277.i, %bb.ch ], [ %.08961276.i, %.preheader.i ], [ %.08901279.i, %.preheader1238.i ], [ %.08921278.i, %.preheader1240.i ], [ %.08941277.i, %.preheader1242.i ], [ %.08921278.i, %.lr.ph1257.i ], [ %.08961276.i, %.lr.ph1273.i ], [ %.08901279.i, %.lr.ph1265.i ], [ %.08941277.i, %.lr.ph1249.i ] ; 8 uses
  %.1893.i = phi ptr [ %.08921278.i, %bb.ch ], [ %.08941277.i, %.preheader.i ], [ %.08961276.i, %.preheader1238.i ], [ %.08901279.i, %.preheader1240.i ], [ %.08921278.i, %.preheader1242.i ], [ %.08901279.i, %.lr.ph1257.i ], [ %.08941277.i, %.lr.ph1273.i ], [ %.08961276.i, %.lr.ph1265.i ], [ %.08921278.i, %.lr.ph1249.i ] ; 8 uses
  %.1891.i = phi ptr [ %.08901279.i, %bb.ch ], [ %.08921278.i, %.preheader.i ], [ %.08941277.i, %.preheader1238.i ], [ %.08961276.i, %.preheader1240.i ], [ %.08901279.i, %.preheader1242.i ], [ %.08961276.i, %.lr.ph1257.i ], [ %.08921278.i, %.lr.ph1273.i ], [ %.08941277.i, %.lr.ph1265.i ], [ %.08901279.i, %.lr.ph1249.i ] ; 8 uses
  %.1897.i750 = ptrtoaddr ptr %.1897.i to i64
  %.1895.i752 = ptrtoaddr ptr %.1895.i to i64
  %.1893.i755 = ptrtoaddr ptr %.1893.i to i64
  %.1891.i758 = ptrtoaddr ptr %.1891.i to i64
  %i.azf = mul i64 %i.xk, %indvars.iv1321.i
  %i.azg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.azf ; 6 uses
  %i.azh = load float, ptr %.01280.i, align 4, !tbaa !70 ; 6 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %.01280.i, i64 4
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !70 ; 6 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %.01280.i, i64 8
  %i.azl = load float, ptr %i.azk, align 4, !tbaa !70 ; 6 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %.01280.i, i64 12
  %i.azn = load float, ptr %i.azm, align 4, !tbaa !70 ; 6 uses
  %i.azo = insertelement <16 x float> poison, float %i.azh, i64 0
  %i.azp = shufflevector <16 x float> %i.azo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.azq = insertelement <16 x float> poison, float %i.azj, i64 0
  %i.azr = shufflevector <16 x float> %i.azq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.azs = insertelement <16 x float> poison, float %i.azl, i64 0
  %i.azt = shufflevector <16 x float> %i.azs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.azu = insertelement <16 x float> poison, float %i.azn, i64 0
  %i.azv = shufflevector <16 x float> %i.azu, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.xh, label %.lr.ph.i.i56, label %._crit_edge.i.i36

.lr.ph.i.i56:                                     ; preds = %.loopexit.i35, %.lr.ph.i.i56
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i58, %.lr.ph.i.i56 ], [ 0, %.loopexit.i35 ] ; 6 uses
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %indvars.iv.i.i57
  %i.azx = load <16 x float>, ptr %i.azw, align 1, !tbaa !17
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %indvars.iv.i.i57
  %i.azz = load <16 x float>, ptr %i.azy, align 1, !tbaa !17
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %indvars.iv.i.i57
  %i.bab = load <16 x float>, ptr %i.baa, align 1, !tbaa !17
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %indvars.iv.i.i57
  %i.bad = load <16 x float>, ptr %i.bac, align 1, !tbaa !17
  %i.bae = fmul fast <16 x float> %i.azx, %i.azp
  %i.baf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azz, <16 x float> nofpclass(nan inf) %i.azr, <16 x float> nofpclass(nan inf) %i.bae)
  %i.bag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bab, <16 x float> nofpclass(nan inf) %i.azt, <16 x float> nofpclass(nan inf) %i.baf)
  %i.bah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bad, <16 x float> nofpclass(nan inf) %i.azv, <16 x float> nofpclass(nan inf) %i.bag)
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %indvars.iv.i.i57
  store <16 x float> %i.bah, ptr %i.bai, align 1, !tbaa !17
  %indvars.iv.next.i.i58 = add nuw nsw i64 %indvars.iv.i.i57, 16 ; 3 uses
  %i.baj = or disjoint i64 %indvars.iv.next.i.i58, 15
  %i.bak = icmp samesign ult i64 %i.baj, %i.xj
  br i1 %i.bak, label %.lr.ph.i.i56, label %._crit_edge.loopexit.i.i59, !llvm.loop !209

._crit_edge.loopexit.i.i59:                       ; preds = %.lr.ph.i.i56
  %i.bal = trunc nuw nsw i64 %indvars.iv.next.i.i58 to i32
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %._crit_edge.loopexit.i.i59, %.loopexit.i35
  %.0.lcssa.i.i37 = phi i32 [ 0, %.loopexit.i35 ], [ %i.bal, %._crit_edge.loopexit.i.i59 ] ; 3 uses
  %i.bam = insertelement <8 x float> poison, float %i.azh, i64 0
  %i.ban = shufflevector <8 x float> %i.bam, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bao = insertelement <8 x float> poison, float %i.azj, i64 0
  %i.bap = shufflevector <8 x float> %i.bao, <8 x float> poison, <8 x i32> zeroinitializer
  %i.baq = insertelement <8 x float> poison, float %i.azl, i64 0
  %i.bar = shufflevector <8 x float> %i.baq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bas = insertelement <8 x float> poison, float %i.azn, i64 0
  %i.bat = shufflevector <8 x float> %i.bas, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bau = or disjoint i32 %.0.lcssa.i.i37, 7
  %i.bav = icmp slt i32 %i.bau, %i.xi
  br i1 %i.bav, label %.lr.ph104.preheader.i.i51, label %._crit_edge105.i.i38

.lr.ph104.preheader.i.i51:                        ; preds = %._crit_edge.i.i36
  %i.baw = zext nneg i32 %.0.lcssa.i.i37 to i64
  br label %.lr.ph104.i.i52

.lr.ph104.i.i52:                                  ; preds = %.lr.ph104.i.i52, %.lr.ph104.preheader.i.i51
  %indvars.iv117.i.i53 = phi i64 [ %i.baw, %.lr.ph104.preheader.i.i51 ], [ %indvars.iv.next118.i.i54, %.lr.ph104.i.i52 ] ; 6 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %indvars.iv117.i.i53
  %i.bay = load <8 x float>, ptr %i.bax, align 1, !tbaa !17
  %i.baz = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %indvars.iv117.i.i53
  %i.bba = load <8 x float>, ptr %i.baz, align 1, !tbaa !17
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %indvars.iv117.i.i53
  %i.bbc = load <8 x float>, ptr %i.bbb, align 1, !tbaa !17
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %indvars.iv117.i.i53
  %i.bbe = load <8 x float>, ptr %i.bbd, align 1, !tbaa !17
  %i.bbf = fmul fast <8 x float> %i.bay, %i.ban
  %i.bbg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bba, <8 x float> nofpclass(nan inf) %i.bap, <8 x float> nofpclass(nan inf) %i.bbf)
  %i.bbh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbc, <8 x float> nofpclass(nan inf) %i.bar, <8 x float> nofpclass(nan inf) %i.bbg)
  %i.bbi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbe, <8 x float> nofpclass(nan inf) %i.bat, <8 x float> nofpclass(nan inf) %i.bbh)
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %indvars.iv117.i.i53
  store <8 x float> %i.bbi, ptr %i.bbj, align 1, !tbaa !17
  %indvars.iv.next118.i.i54 = add nuw nsw i64 %indvars.iv117.i.i53, 8 ; 3 uses
  %i.bbk = icmp slt i64 %indvars.iv.next118.i.i54, %invariant.op.i.i33
  br i1 %i.bbk, label %.lr.ph104.i.i52, label %._crit_edge105.loopexit.i.i55, !llvm.loop !210

._crit_edge105.loopexit.i.i55:                    ; preds = %.lr.ph104.i.i52
  %i.bbl = trunc nuw nsw i64 %indvars.iv.next118.i.i54 to i32
  br label %._crit_edge105.i.i38

._crit_edge105.i.i38:                             ; preds = %._crit_edge105.loopexit.i.i55, %._crit_edge.i.i36
  %.1.lcssa.i.i39 = phi i32 [ %.0.lcssa.i.i37, %._crit_edge.i.i36 ], [ %i.bbl, %._crit_edge105.loopexit.i.i55 ] ; 3 uses
  %i.bbm = insertelement <4 x float> poison, float %i.azh, i64 0
  %i.bbn = shufflevector <4 x float> %i.bbm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbo = insertelement <4 x float> poison, float %i.azj, i64 0
  %i.bbp = shufflevector <4 x float> %i.bbo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbq = insertelement <4 x float> poison, float %i.azl, i64 0
  %i.bbr = shufflevector <4 x float> %i.bbq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbs = insertelement <4 x float> poison, float %i.azn, i64 0
  %i.bbt = shufflevector <4 x float> %i.bbs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bbu = or disjoint i32 %.1.lcssa.i.i39, 3
  %i.bbv = icmp slt i32 %i.bbu, %i.xi
  br i1 %i.bbv, label %.lr.ph109.preheader.i.i47, label %.preheader.i.i40

.lr.ph109.preheader.i.i47:                        ; preds = %._crit_edge105.i.i38
  %i.bbw = zext nneg i32 %.1.lcssa.i.i39 to i64
  br label %.lr.ph109.i.i48

.preheader.i.i40:                                 ; preds = %.lr.ph109.i.i48, %._crit_edge105.i.i38
  %.2.lcssa.i.i41 = phi i32 [ %.1.lcssa.i.i39, %._crit_edge105.i.i38 ], [ %i.bfj, %.lr.ph109.i.i48 ] ; 3 uses
  %i.bbx = icmp slt i32 %.2.lcssa.i.i41, %i.xi
  br i1 %i.bbx, label %iter.check796, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i42

iter.check796:                                    ; preds = %.preheader.i.i40
  %i.bby = zext i32 %.2.lcssa.i.i41 to i64        ; 6 uses
  %i.bbz = xor i32 %.2.lcssa.i.i41, -1
  %i.bca = add i32 %i.xi, %i.bbz                  ; 3 uses
  %i.bcb = zext i32 %i.bca to i64
  %i.bcc = add nuw nsw i64 %i.bcb, 1              ; 5 uses
  %min.iters.check761 = icmp ult i32 %i.bca, 7
  br i1 %min.iters.check761, label %.lr.ph112.i.i44.preheader, label %vector.memcheck749

vector.memcheck749:                               ; preds = %iter.check796
  %i.bcd = sub i64 %.1897.i750, %i.zh
  %diff.check751 = icmp ugt i64 %i.bcd, -256
  %i.bce = sub i64 %.1895.i752, %i.zh
  %diff.check753 = icmp ugt i64 %i.bce, -256
  %conflict.rdx754 = or i1 %diff.check751, %diff.check753
  %i.bcf = sub i64 %.1893.i755, %i.zh
  %diff.check756 = icmp ugt i64 %i.bcf, -256
  %conflict.rdx757 = or i1 %conflict.rdx754, %diff.check756
  %i.bcg = sub i64 %.1891.i758, %i.zh
  %diff.check759 = icmp ugt i64 %i.bcg, -256
  %conflict.rdx760 = or i1 %conflict.rdx757, %diff.check759
  br i1 %conflict.rdx760, label %.lr.ph112.i.i44.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck749
  %min.iters.check763 = icmp ult i32 %i.bca, 63
  br i1 %min.iters.check763, label %vec.epilog.ph800, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.bch = and i64 %i.bcc, 56
  %n.vec765 = and i64 %i.bcc, 8589934528          ; 4 uses
  %i.bci = add nuw nsw i64 %n.vec765, %i.bby
  %broadcast.splatinsert766 = insertelement <16 x float> poison, float %i.azh, i64 0
  %broadcast.splat767 = shufflevector <16 x float> %broadcast.splatinsert766, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert768 = insertelement <16 x float> poison, float %i.azj, i64 0
  %broadcast.splat769 = shufflevector <16 x float> %broadcast.splatinsert768, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert770 = insertelement <16 x float> poison, float %i.azl, i64 0
  %broadcast.splat771 = shufflevector <16 x float> %broadcast.splatinsert770, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert772 = insertelement <16 x float> poison, float %i.azn, i64 0
  %broadcast.splat773 = shufflevector <16 x float> %broadcast.splatinsert772, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body774

vector.body774:                                   ; preds = %vector.body774, %vector.ph764
  %index775 = phi i64 [ 0, %vector.ph764 ], [ %index.next792, %vector.body774 ] ; 2 uses
  %i.bcj = add nuw i64 %index775, %i.bby          ; 5 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %i.bcj ; 4 uses
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 64
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bck, i64 128
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bck, i64 192
  %wide.load776 = load <16 x float>, ptr %i.bck, align 4, !tbaa !70
  %wide.load777 = load <16 x float>, ptr %i.bcl, align 4, !tbaa !70
  %wide.load778 = load <16 x float>, ptr %i.bcm, align 4, !tbaa !70
  %wide.load779 = load <16 x float>, ptr %i.bcn, align 4, !tbaa !70
  %i.bco = fmul fast <16 x float> %wide.load776, %broadcast.splat767
  %i.bcp = fmul fast <16 x float> %wide.load777, %broadcast.splat767
  %i.bcq = fmul fast <16 x float> %wide.load778, %broadcast.splat767
  %i.bcr = fmul fast <16 x float> %wide.load779, %broadcast.splat767
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %i.bcj ; 4 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 64
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcs, i64 128
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcs, i64 192
  %wide.load780 = load <16 x float>, ptr %i.bcs, align 4, !tbaa !70
  %wide.load781 = load <16 x float>, ptr %i.bct, align 4, !tbaa !70
  %wide.load782 = load <16 x float>, ptr %i.bcu, align 4, !tbaa !70
  %wide.load783 = load <16 x float>, ptr %i.bcv, align 4, !tbaa !70
  %i.bcw = fmul fast <16 x float> %wide.load780, %broadcast.splat769
  %i.bcx = fmul fast <16 x float> %wide.load781, %broadcast.splat769
  %i.bcy = fmul fast <16 x float> %wide.load782, %broadcast.splat769
  %i.bcz = fmul fast <16 x float> %wide.load783, %broadcast.splat769
  %i.bda = fadd fast <16 x float> %i.bco, %i.bcw
  %i.bdb = fadd fast <16 x float> %i.bcp, %i.bcx
  %i.bdc = fadd fast <16 x float> %i.bcq, %i.bcy
  %i.bdd = fadd fast <16 x float> %i.bcr, %i.bcz
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %i.bcj ; 4 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 64
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bde, i64 128
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bde, i64 192
  %wide.load784 = load <16 x float>, ptr %i.bde, align 4, !tbaa !70
  %wide.load785 = load <16 x float>, ptr %i.bdf, align 4, !tbaa !70
  %wide.load786 = load <16 x float>, ptr %i.bdg, align 4, !tbaa !70
  %wide.load787 = load <16 x float>, ptr %i.bdh, align 4, !tbaa !70
  %i.bdi = fmul fast <16 x float> %wide.load784, %broadcast.splat771
  %i.bdj = fmul fast <16 x float> %wide.load785, %broadcast.splat771
  %i.bdk = fmul fast <16 x float> %wide.load786, %broadcast.splat771
  %i.bdl = fmul fast <16 x float> %wide.load787, %broadcast.splat771
  %i.bdm = fadd fast <16 x float> %i.bda, %i.bdi
  %i.bdn = fadd fast <16 x float> %i.bdb, %i.bdj
  %i.bdo = fadd fast <16 x float> %i.bdc, %i.bdk
  %i.bdp = fadd fast <16 x float> %i.bdd, %i.bdl
  %i.bdq = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %i.bcj ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 64
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 128
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdq, i64 192
  %wide.load788 = load <16 x float>, ptr %i.bdq, align 4, !tbaa !70
  %wide.load789 = load <16 x float>, ptr %i.bdr, align 4, !tbaa !70
  %wide.load790 = load <16 x float>, ptr %i.bds, align 4, !tbaa !70
  %wide.load791 = load <16 x float>, ptr %i.bdt, align 4, !tbaa !70
  %i.bdu = fmul fast <16 x float> %wide.load788, %broadcast.splat773
  %i.bdv = fmul fast <16 x float> %wide.load789, %broadcast.splat773
  %i.bdw = fmul fast <16 x float> %wide.load790, %broadcast.splat773
  %i.bdx = fmul fast <16 x float> %wide.load791, %broadcast.splat773
  %i.bdy = fadd fast <16 x float> %i.bdm, %i.bdu
  %i.bdz = fadd fast <16 x float> %i.bdn, %i.bdv
  %i.bea = fadd fast <16 x float> %i.bdo, %i.bdw
  %i.beb = fadd fast <16 x float> %i.bdp, %i.bdx
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %i.bcj ; 4 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 64
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 128
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bec, i64 192
  store <16 x float> %i.bdy, ptr %i.bec, align 4, !tbaa !70
  store <16 x float> %i.bdz, ptr %i.bed, align 4, !tbaa !70
  store <16 x float> %i.bea, ptr %i.bee, align 4, !tbaa !70
  store <16 x float> %i.beb, ptr %i.bef, align 4, !tbaa !70
  %index.next792 = add nuw i64 %index775, 64      ; 2 uses
  %i.beg = icmp eq i64 %index.next792, %n.vec765
  br i1 %i.beg, label %middle.block793, label %vector.body774, !llvm.loop !224

middle.block793:                                  ; preds = %vector.body774
  %cmp.n794 = icmp eq i64 %i.bcc, %n.vec765
  br i1 %cmp.n794, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i42, label %vec.epilog.iter.check798

vec.epilog.iter.check798:                         ; preds = %middle.block793
  %min.epilog.iters.check799 = icmp eq i64 %i.bch, 0
  br i1 %min.epilog.iters.check799, label %.lr.ph112.i.i44.preheader, label %vec.epilog.ph800, !prof !107

vec.epilog.ph800:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check798
  %vec.epilog.resume.val795 = phi i64 [ %n.vec765, %vec.epilog.iter.check798 ], [ 0, %vector.main.loop.iter.check762 ]
  %n.vec801 = and i64 %i.bcc, 8589934584          ; 3 uses
  %i.beh = add nuw nsw i64 %n.vec801, %i.bby
  %broadcast.splatinsert802 = insertelement <8 x float> poison, float %i.azh, i64 0
  %broadcast.splat803 = shufflevector <8 x float> %broadcast.splatinsert802, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert804 = insertelement <8 x float> poison, float %i.azj, i64 0
  %broadcast.splat805 = shufflevector <8 x float> %broadcast.splatinsert804, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert806 = insertelement <8 x float> poison, float %i.azl, i64 0
  %broadcast.splat807 = shufflevector <8 x float> %broadcast.splatinsert806, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert808 = insertelement <8 x float> poison, float %i.azn, i64 0
  %broadcast.splat809 = shufflevector <8 x float> %broadcast.splatinsert808, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body810

vec.epilog.vector.body810:                        ; preds = %vec.epilog.vector.body810, %vec.epilog.ph800
  %index811 = phi i64 [ %vec.epilog.resume.val795, %vec.epilog.ph800 ], [ %index.next816, %vec.epilog.vector.body810 ] ; 2 uses
  %i.bei = add nuw i64 %index811, %i.bby          ; 5 uses
  %i.bej = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %i.bei
  %wide.load812 = load <8 x float>, ptr %i.bej, align 4, !tbaa !70
  %i.bek = fmul fast <8 x float> %wide.load812, %broadcast.splat803
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %i.bei
  %wide.load813 = load <8 x float>, ptr %i.bel, align 4, !tbaa !70
  %i.bem = fmul fast <8 x float> %wide.load813, %broadcast.splat805
  %i.ben = fadd fast <8 x float> %i.bek, %i.bem
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %i.bei
  %wide.load814 = load <8 x float>, ptr %i.beo, align 4, !tbaa !70
  %i.bep = fmul fast <8 x float> %wide.load814, %broadcast.splat807
  %i.beq = fadd fast <8 x float> %i.ben, %i.bep
  %i.ber = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %i.bei
  %wide.load815 = load <8 x float>, ptr %i.ber, align 4, !tbaa !70
  %i.bes = fmul fast <8 x float> %wide.load815, %broadcast.splat809
  %i.bet = fadd fast <8 x float> %i.beq, %i.bes
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %i.bei
  store <8 x float> %i.bet, ptr %i.beu, align 4, !tbaa !70
  %index.next816 = add nuw i64 %index811, 8       ; 2 uses
  %i.bev = icmp eq i64 %index.next816, %n.vec801
  br i1 %i.bev, label %vec.epilog.middle.block817, label %vec.epilog.vector.body810, !llvm.loop !225

vec.epilog.middle.block817:                       ; preds = %vec.epilog.vector.body810
  %cmp.n818 = icmp eq i64 %i.bcc, %n.vec801
  br i1 %cmp.n818, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i42, label %.lr.ph112.i.i44.preheader

.lr.ph112.i.i44.preheader:                        ; preds = %vector.memcheck749, %iter.check796, %vec.epilog.iter.check798, %vec.epilog.middle.block817
  %indvars.iv123.i.i45.ph = phi i64 [ %i.bby, %iter.check796 ], [ %i.bby, %vector.memcheck749 ], [ %i.bci, %vec.epilog.iter.check798 ], [ %i.beh, %vec.epilog.middle.block817 ]
  br label %.lr.ph112.i.i44

.lr.ph109.i.i48:                                  ; preds = %.lr.ph109.i.i48, %.lr.ph109.preheader.i.i47
  %indvars.iv120.i.i49 = phi i64 [ %i.bbw, %.lr.ph109.preheader.i.i47 ], [ %indvars.iv.next121.i.i50, %.lr.ph109.i.i48 ] ; 6 uses
  %i.bew = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %indvars.iv120.i.i49
  %i.bex = load <4 x float>, ptr %i.bew, align 1, !tbaa !17
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %indvars.iv120.i.i49
  %i.bez = load <4 x float>, ptr %i.bey, align 1, !tbaa !17
  %i.bfa = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %indvars.iv120.i.i49
  %i.bfb = load <4 x float>, ptr %i.bfa, align 1, !tbaa !17
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %indvars.iv120.i.i49
  %i.bfd = load <4 x float>, ptr %i.bfc, align 1, !tbaa !17
  %i.bfe = fmul fast <4 x float> %i.bex, %i.bbn
  %i.bff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bez, <4 x float> nofpclass(nan inf) %i.bbp, <4 x float> nofpclass(nan inf) %i.bfe)
  %i.bfg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfb, <4 x float> nofpclass(nan inf) %i.bbr, <4 x float> nofpclass(nan inf) %i.bff)
  %i.bfh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfd, <4 x float> nofpclass(nan inf) %i.bbt, <4 x float> nofpclass(nan inf) %i.bfg)
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %indvars.iv120.i.i49
  store <4 x float> %i.bfh, ptr %i.bfi, align 1, !tbaa !17
  %indvars.iv.next121.i.i50 = add nuw nsw i64 %indvars.iv120.i.i49, 4 ; 2 uses
  %i.bfj = trunc i64 %indvars.iv.next121.i.i50 to i32 ; 2 uses
  %i.bfk = or i32 %i.bfj, 3
  %i.bfl = icmp slt i32 %i.bfk, %i.xi
  br i1 %i.bfl, label %.lr.ph109.i.i48, label %.preheader.i.i40, !llvm.loop !213

.lr.ph112.i.i44:                                  ; preds = %.lr.ph112.i.i44.preheader, %.lr.ph112.i.i44
  %indvars.iv123.i.i45 = phi i64 [ %indvars.iv.next124.i.i46, %.lr.ph112.i.i44 ], [ %indvars.iv123.i.i45.ph, %.lr.ph112.i.i44.preheader ] ; 6 uses
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %.1891.i, i64 %indvars.iv123.i.i45
  %i.bfn = load float, ptr %i.bfm, align 4, !tbaa !70
  %i.bfo = fmul fast float %i.bfn, %i.azh
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %.1893.i, i64 %indvars.iv123.i.i45
  %i.bfq = load float, ptr %i.bfp, align 4, !tbaa !70
  %i.bfr = fmul fast float %i.bfq, %i.azj
  %i.bfs = fadd fast float %i.bfo, %i.bfr
  %i.bft = getelementptr inbounds nuw [4 x i8], ptr %.1895.i, i64 %indvars.iv123.i.i45
  %i.bfu = load float, ptr %i.bft, align 4, !tbaa !70
  %i.bfv = fmul fast float %i.bfu, %i.azl
  %i.bfw = fadd fast float %i.bfs, %i.bfv
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %.1897.i, i64 %indvars.iv123.i.i45
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !70
  %i.bfz = fmul fast float %i.bfy, %i.azn
  %i.bga = fadd fast float %i.bfw, %i.bfz
  %i.bgb = getelementptr inbounds nuw [4 x i8], ptr %i.azg, i64 %indvars.iv123.i.i45
  store float %i.bga, ptr %i.bgb, align 4, !tbaa !70
  %indvars.iv.next124.i.i46 = add nuw nsw i64 %indvars.iv123.i.i45, 1 ; 2 uses
  %i.bgc = trunc nuw i64 %indvars.iv.next124.i.i46 to i32
  %i.bgd = icmp sgt i32 %i.xi, %i.bgc
  br i1 %i.bgd, label %.lr.ph112.i.i44, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i42, !llvm.loop !226

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i42: ; preds = %.lr.ph112.i.i44, %middle.block793, %vec.epilog.middle.block817, %.preheader.i.i40
  %i.bge = getelementptr inbounds nuw i8, ptr %.01280.i, i64 16
  %indvars.iv.next1322.i = add nuw nsw i64 %indvars.iv1321.i, 1 ; 2 uses
  %exitcond1325.not.i = icmp eq i64 %indvars.iv.next1322.i, %wide.trip.count1324.i
  br i1 %exitcond1325.not.i, label %._crit_edge.i32, label %bb.ch, !llvm.loop !227

bb.cp:                                            ; preds = %bb.cg
  %i.bgf = atomicrmw add ptr %i.zf, i32 -1 acq_rel, align 4
  %i.bgg = icmp eq i32 %i.bgf, 1
  br i1 %i.bgg, label %bb.cq, label %_ZN4ncnn3MatD2Ev.exit1006.i

bb.cq:                                            ; preds = %bb.cp
  %i.bgh = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %.not3.i1029.i = icmp eq ptr %i.bgh, null
  %i.bgi = load ptr, ptr %20, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1029.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bgj = load ptr, ptr %i.bgh, align 8, !tbaa !9
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 24
  %i.bgl = load ptr, ptr %i.bgk, align 8
  invoke void %i.bgl(ptr noundef nonnull align 8 dereferenceable(8) %i.bgh, ptr noundef %i.bgi)
          to label %_ZN4ncnn3MatD2Ev.exit1006.i unwind label %bb.cu, !inline_history !46

bb.cs:                                            ; preds = %bb.cq
  %.not.i1043.i = icmp eq ptr %i.bgi, null
  br i1 %.not.i1043.i, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef nonnull %i.bgi) #6
  br label %_ZN4ncnn3MatD2Ev.exit1006.i

bb.cu:                                            ; preds = %bb.cr
  %i.bgm = landingpad { ptr, i32 }
          catch ptr null
  %i.bgn = extractvalue { ptr, i32 } %i.bgm, 0
  call void @__clang_call_terminate(ptr %i.bgn) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1006.i:                      ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.cg, %bb.cf
  %.pn1000.pn.pn.i = phi { ptr, i32 } [ %i.zd, %bb.cf ], [ %i.ze, %bb.cp ], [ %i.ze, %bb.cg ], [ %i.ze, %bb.cr ], [ %i.ze, %bb.cs ], [ %i.ze, %bb.ct ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #6
  %i.bgo = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not.i1032.i = icmp eq ptr %i.bgo, null
  br i1 %.not.i1032.i, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  %i.bgp = atomicrmw add ptr %i.bgo, i32 -1 acq_rel, align 4
  %i.bgq = icmp eq i32 %i.bgp, 1
  br i1 %i.bgq, label %bb.cw, label %_ZN4ncnn3MatD2Ev.exit1005.i

bb.cw:                                            ; preds = %bb.cv
  %i.bgr = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not3.i1033.i = icmp eq ptr %i.bgr, null
  %i.bgs = load ptr, ptr %19, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1033.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bgt = load ptr, ptr %i.bgr, align 8, !tbaa !9
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 24
  %i.bgv = load ptr, ptr %i.bgu, align 8
  invoke void %i.bgv(ptr noundef nonnull align 8 dereferenceable(8) %i.bgr, ptr noundef %i.bgs)
          to label %_ZN4ncnn3MatD2Ev.exit1005.i unwind label %bb.da, !inline_history !46

bb.cy:                                            ; preds = %bb.cw
  %.not.i1041.i = icmp eq ptr %i.bgs, null
  br i1 %.not.i1041.i, label %_ZN4ncnn3MatD2Ev.exit1005.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.bgs) #6
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

bb.da:                                            ; preds = %bb.cx
  %i.bgw = landingpad { ptr, i32 }
          catch ptr null
  %i.bgx = extractvalue { ptr, i32 } %i.bgw, 0
  call void @__clang_call_terminate(ptr %i.bgx) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv, %_ZN4ncnn3MatD2Ev.exit1006.i, %bb.ce
  %.pn1000.pn.pn.pn.i = phi { ptr, i32 } [ %i.zc, %bb.ce ], [ %.pn1000.pn.pn.i, %bb.cv ], [ %.pn1000.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit1006.i ], [ %.pn1000.pn.pn.i, %bb.cx ], [ %.pn1000.pn.pn.i, %bb.cy ], [ %.pn1000.pn.pn.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  %i.bgy = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %.not.i1036.i = icmp eq ptr %i.bgy, null
  br i1 %.not.i1036.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.db

bb.db:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  %i.bgz = atomicrmw add ptr %i.bgy, i32 -1 acq_rel, align 4
  %i.bha = icmp eq i32 %i.bgz, 1
  br i1 %i.bha, label %bb.dc, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dc:                                            ; preds = %bb.db
  %i.bhb = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %.not3.i1037.i = icmp eq ptr %i.bhb, null
  %i.bhc = load ptr, ptr %18, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1037.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bhd = load ptr, ptr %i.bhb, align 8, !tbaa !9
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 24
  %i.bhf = load ptr, ptr %i.bhe, align 8
  invoke void %i.bhf(ptr noundef nonnull align 8 dereferenceable(8) %i.bhb, ptr noundef %i.bhc)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.dg, !inline_history !46

bb.de:                                            ; preds = %bb.dc
  %.not.i1040.i = icmp eq ptr %i.bhc, null
  br i1 %.not.i1040.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.bhc) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.dg:                                            ; preds = %bb.dd
  %i.bhg = landingpad { ptr, i32 }
          catch ptr null
  %i.bhh = extractvalue { ptr, i32 } %i.bhg, 0
  call void @__clang_call_terminate(ptr %i.bhh) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.df, %bb.de, %bb.dd, %bb.db, %_ZN4ncnn3MatD2Ev.exit1005.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit1008.i, %bb.by, %bb.ca, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.be
  %i.bhi = phi i32 [ %.pre, %_ZN4ncnnL26resize_bicubic_image_pack8ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ww, %bb.be ] ; 2 uses
  %i.bhj = icmp eq i32 %i.bhi, 4
  br i1 %i.bhj, label %bb.di, label %bb.fk

bb.di:                                            ; preds = %bb.dh
  %i.bhk = load ptr, ptr %6, align 8, !tbaa !72   ; 8 uses
  %i.bhl = load ptr, ptr %7, align 8, !tbaa !71   ; 16 uses
  %i.bhm = load ptr, ptr %8, align 8, !tbaa !72
  %i.bhn = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  store i64 0, ptr %i.as, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc106 unwind label %bb.ho

.noexc106:                                        ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  store i64 0, ptr %i.av, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1655.i unwind label %bb.eh

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1655.i:     ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  store i64 0, ptr %i.ay, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1653.i unwind label %bb.ei

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1653.i:     ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1655.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  store i64 0, ptr %i.bb, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69 unwind label %bb.ej

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit1653.i
  %i.bho = icmp sgt i32 %i.by, 0
  br i1 %i.bho, label %.lr.ph2359.i, label %._crit_edge.i70

.lr.ph2359.i:                                     ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i69
  %i.bhp = load ptr, ptr %17, align 8, !tbaa !45
  %i.bhq = load ptr, ptr %16, align 8, !tbaa !45
  %i.bhr = load ptr, ptr %15, align 8, !tbaa !45
  %i.bhs = load ptr, ptr %14, align 8, !tbaa !45
  %i.bht = icmp sgt i32 %i.bx, 3                  ; 5 uses
  %i.bhu = shl i32 %i.bx, 2                       ; 7 uses
  %i.bhv = zext nneg i32 %i.bhu to i64            ; 2 uses
  %invariant.op.i.i71 = add nsw i64 %i.bhv, -7
  %wide.trip.count2438.i = zext nneg i32 %i.by to i64
  %invariant.op.i72 = add nsw i64 %i.cg, -3       ; 4 uses
  %invariant.op2478.i = add nsw i64 %i.cg, -1     ; 4 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.dli = shl nuw nsw i64 %indvars.iv2387.i, 2   ; 4 uses
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %.014502357.i, i64 %i.dli
  store <4 x float> %i.dle, ptr %i.dlj, align 16, !tbaa !17
  %i.dlk = getelementptr inbounds nuw [4 x i8], ptr %.014522356.i, i64 %i.dli
  store <4 x float> %i.dlf, ptr %i.dlk, align 16, !tbaa !17
  %i.dll = getelementptr inbounds nuw [4 x i8], ptr %.014542355.i, i64 %i.dli
  store <4 x float> %i.dlg, ptr %i.dll, align 16, !tbaa !17
  %i.dlm = getelementptr inbounds nuw [4 x i8], ptr %.014562354.i, i64 %i.dli
  store <4 x float> %i.dlh, ptr %i.dlm, align 16, !tbaa !17
  %i.dln = getelementptr inbounds nuw i8, ptr %.214802311.i, i64 16
  %indvars.iv.next2388.i = add nuw nsw i64 %indvars.iv2387.i, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next2388.i, %wide.trip.count.i73
  br i1 %exitcond.not.i99, label %.loopexit.i74, label %.lr.ph2312.i, !llvm.loop !239

.loopexit.i74:                                    ; preds = %.lr.ph2312.i, %.lr.ph2325.i, %.lr.ph2338.i, %.lr.ph2351.i, %.preheader2299.i, %.preheader2296.i, %.preheader2293.i, %.preheader.i103, %bb.ek
  %.11457.i = phi ptr [ %.014562354.i, %bb.ek ], [ %.014502357.i, %.preheader.i103 ], [ %.014522356.i, %.preheader2293.i ], [ %.014542355.i, %.preheader2296.i ], [ %.014562354.i, %.preheader2299.i ], [ %.014542355.i, %.lr.ph2325.i ], [ %.014502357.i, %.lr.ph2351.i ], [ %.014522356.i, %.lr.ph2338.i ], [ %.014562354.i, %.lr.ph2312.i ] ; 8 uses
  %.11455.i = phi ptr [ %.014542355.i, %bb.ek ], [ %.014562354.i, %.preheader.i103 ], [ %.014502357.i, %.preheader2293.i ], [ %.014522356.i, %.preheader2296.i ], [ %.014542355.i, %.preheader2299.i ], [ %.014522356.i, %.lr.ph2325.i ], [ %.014562354.i, %.lr.ph2351.i ], [ %.014502357.i, %.lr.ph2338.i ], [ %.014542355.i, %.lr.ph2312.i ] ; 8 uses
  %.11453.i = phi ptr [ %.014522356.i, %bb.ek ], [ %.014542355.i, %.preheader.i103 ], [ %.014562354.i, %.preheader2293.i ], [ %.014502357.i, %.preheader2296.i ], [ %.014522356.i, %.preheader2299.i ], [ %.014502357.i, %.lr.ph2325.i ], [ %.014542355.i, %.lr.ph2351.i ], [ %.014562354.i, %.lr.ph2338.i ], [ %.014522356.i, %.lr.ph2312.i ] ; 8 uses
  %.11451.i = phi ptr [ %.014502357.i, %bb.ek ], [ %.014522356.i, %.preheader.i103 ], [ %.014542355.i, %.preheader2293.i ], [ %.014562354.i, %.preheader2296.i ], [ %.014502357.i, %.preheader2299.i ], [ %.014562354.i, %.lr.ph2325.i ], [ %.014522356.i, %.lr.ph2351.i ], [ %.014542355.i, %.lr.ph2338.i ], [ %.014502357.i, %.lr.ph2312.i ] ; 8 uses
  %.11457.i679 = ptrtoaddr ptr %.11457.i to i64
  %.11455.i681 = ptrtoaddr ptr %.11455.i to i64
  %.11453.i684 = ptrtoaddr ptr %.11453.i to i64
  %.11451.i687 = ptrtoaddr ptr %.11451.i to i64
  %i.dlo = mul i64 %i.bhw, %indvars.iv2435.i
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dlo ; 6 uses
  %i.dlq = load float, ptr %.02358.i, align 4, !tbaa !70 ; 6 uses
  %i.dlr = getelementptr inbounds nuw i8, ptr %.02358.i, i64 4
  %i.dls = load float, ptr %i.dlr, align 4, !tbaa !70 ; 6 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %.02358.i, i64 8
  %i.dlu = load float, ptr %i.dlt, align 4, !tbaa !70 ; 6 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %.02358.i, i64 12
  %i.dlw = load float, ptr %i.dlv, align 4, !tbaa !70 ; 6 uses
  %i.dlx = insertelement <16 x float> poison, float %i.dlq, i64 0
  %i.dly = shufflevector <16 x float> %i.dlx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dlz = insertelement <16 x float> poison, float %i.dls, i64 0
  %i.dma = shufflevector <16 x float> %i.dlz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dmb = insertelement <16 x float> poison, float %i.dlu, i64 0
  %i.dmc = shufflevector <16 x float> %i.dmb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dmd = insertelement <16 x float> poison, float %i.dlw, i64 0
  %i.dme = shufflevector <16 x float> %i.dmd, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.bht, label %.lr.ph.i.i95, label %._crit_edge.i.i75

.lr.ph.i.i95:                                     ; preds = %.loopexit.i74, %.lr.ph.i.i95
  %indvars.iv.i.i96 = phi i64 [ %indvars.iv.next.i.i97, %.lr.ph.i.i95 ], [ 0, %.loopexit.i74 ] ; 6 uses
  %i.dmf = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %indvars.iv.i.i96
  %i.dmg = load <16 x float>, ptr %i.dmf, align 1, !tbaa !17
  %i.dmh = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %indvars.iv.i.i96
  %i.dmi = load <16 x float>, ptr %i.dmh, align 1, !tbaa !17
  %i.dmj = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %indvars.iv.i.i96
  %i.dmk = load <16 x float>, ptr %i.dmj, align 1, !tbaa !17
  %i.dml = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %indvars.iv.i.i96
  %i.dmm = load <16 x float>, ptr %i.dml, align 1, !tbaa !17
  %i.dmn = fmul fast <16 x float> %i.dmg, %i.dly
  %i.dmo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmi, <16 x float> nofpclass(nan inf) %i.dma, <16 x float> nofpclass(nan inf) %i.dmn)
  %i.dmp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmk, <16 x float> nofpclass(nan inf) %i.dmc, <16 x float> nofpclass(nan inf) %i.dmo)
  %i.dmq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmm, <16 x float> nofpclass(nan inf) %i.dme, <16 x float> nofpclass(nan inf) %i.dmp)
  %i.dmr = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %indvars.iv.i.i96
  store <16 x float> %i.dmq, ptr %i.dmr, align 1, !tbaa !17
  %indvars.iv.next.i.i97 = add nuw nsw i64 %indvars.iv.i.i96, 16 ; 3 uses
  %i.dms = or disjoint i64 %indvars.iv.next.i.i97, 15
  %i.dmt = icmp samesign ult i64 %i.dms, %i.bhv
  br i1 %i.dmt, label %.lr.ph.i.i95, label %._crit_edge.loopexit.i.i98, !llvm.loop !209

._crit_edge.loopexit.i.i98:                       ; preds = %.lr.ph.i.i95
  %i.dmu = trunc nuw nsw i64 %indvars.iv.next.i.i97 to i32
  br label %._crit_edge.i.i75

._crit_edge.i.i75:                                ; preds = %._crit_edge.loopexit.i.i98, %.loopexit.i74
  %.0.lcssa.i.i76 = phi i32 [ 0, %.loopexit.i74 ], [ %i.dmu, %._crit_edge.loopexit.i.i98 ] ; 3 uses
  %i.dmv = insertelement <8 x float> poison, float %i.dlq, i64 0
  %i.dmw = shufflevector <8 x float> %i.dmv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dmx = insertelement <8 x float> poison, float %i.dls, i64 0
  %i.dmy = shufflevector <8 x float> %i.dmx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dmz = insertelement <8 x float> poison, float %i.dlu, i64 0
  %i.dna = shufflevector <8 x float> %i.dmz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dnb = insertelement <8 x float> poison, float %i.dlw, i64 0
  %i.dnc = shufflevector <8 x float> %i.dnb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dnd = or disjoint i32 %.0.lcssa.i.i76, 7
  %i.dne = icmp slt i32 %i.dnd, %i.bhu
  br i1 %i.dne, label %.lr.ph104.preheader.i.i90, label %._crit_edge105.i.i77

.lr.ph104.preheader.i.i90:                        ; preds = %._crit_edge.i.i75
  %i.dnf = zext nneg i32 %.0.lcssa.i.i76 to i64
  br label %.lr.ph104.i.i91

.lr.ph104.i.i91:                                  ; preds = %.lr.ph104.i.i91, %.lr.ph104.preheader.i.i90
  %indvars.iv117.i.i92 = phi i64 [ %i.dnf, %.lr.ph104.preheader.i.i90 ], [ %indvars.iv.next118.i.i93, %.lr.ph104.i.i91 ] ; 6 uses
  %i.dng = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %indvars.iv117.i.i92
  %i.dnh = load <8 x float>, ptr %i.dng, align 1, !tbaa !17
  %i.dni = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %indvars.iv117.i.i92
  %i.dnj = load <8 x float>, ptr %i.dni, align 1, !tbaa !17
  %i.dnk = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %indvars.iv117.i.i92
  %i.dnl = load <8 x float>, ptr %i.dnk, align 1, !tbaa !17
  %i.dnm = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %indvars.iv117.i.i92
  %i.dnn = load <8 x float>, ptr %i.dnm, align 1, !tbaa !17
  %i.dno = fmul fast <8 x float> %i.dnh, %i.dmw
  %i.dnp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dnj, <8 x float> nofpclass(nan inf) %i.dmy, <8 x float> nofpclass(nan inf) %i.dno)
  %i.dnq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dnl, <8 x float> nofpclass(nan inf) %i.dna, <8 x float> nofpclass(nan inf) %i.dnp)
  %i.dnr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dnn, <8 x float> nofpclass(nan inf) %i.dnc, <8 x float> nofpclass(nan inf) %i.dnq)
  %i.dns = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %indvars.iv117.i.i92
  store <8 x float> %i.dnr, ptr %i.dns, align 1, !tbaa !17
  %indvars.iv.next118.i.i93 = add nuw nsw i64 %indvars.iv117.i.i92, 8 ; 3 uses
  %i.dnt = icmp slt i64 %indvars.iv.next118.i.i93, %invariant.op.i.i71
  br i1 %i.dnt, label %.lr.ph104.i.i91, label %._crit_edge105.loopexit.i.i94, !llvm.loop !210

._crit_edge105.loopexit.i.i94:                    ; preds = %.lr.ph104.i.i91
  %i.dnu = trunc nuw nsw i64 %indvars.iv.next118.i.i93 to i32
  br label %._crit_edge105.i.i77

._crit_edge105.i.i77:                             ; preds = %._crit_edge105.loopexit.i.i94, %._crit_edge.i.i75
  %.1.lcssa.i.i78 = phi i32 [ %.0.lcssa.i.i76, %._crit_edge.i.i75 ], [ %i.dnu, %._crit_edge105.loopexit.i.i94 ] ; 3 uses
  %i.dnv = insertelement <4 x float> poison, float %i.dlq, i64 0
  %i.dnw = shufflevector <4 x float> %i.dnv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnx = insertelement <4 x float> poison, float %i.dls, i64 0
  %i.dny = shufflevector <4 x float> %i.dnx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnz = insertelement <4 x float> poison, float %i.dlu, i64 0
  %i.doa = shufflevector <4 x float> %i.dnz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dob = insertelement <4 x float> poison, float %i.dlw, i64 0
  %i.doc = shufflevector <4 x float> %i.dob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dod = or disjoint i32 %.1.lcssa.i.i78, 3
  %i.doe = icmp slt i32 %i.dod, %i.bhu
  br i1 %i.doe, label %.lr.ph109.preheader.i.i86, label %.preheader.i.i79

.lr.ph109.preheader.i.i86:                        ; preds = %._crit_edge105.i.i77
  %i.dof = zext nneg i32 %.1.lcssa.i.i78 to i64
  br label %.lr.ph109.i.i87

.preheader.i.i79:                                 ; preds = %.lr.ph109.i.i87, %._crit_edge105.i.i77
  %.2.lcssa.i.i80 = phi i32 [ %.1.lcssa.i.i78, %._crit_edge105.i.i77 ], [ %i.drs, %.lr.ph109.i.i87 ] ; 3 uses
  %i.dog = icmp slt i32 %.2.lcssa.i.i80, %i.bhu
  br i1 %i.dog, label %iter.check725, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81

iter.check725:                                    ; preds = %.preheader.i.i79
  %i.doh = zext i32 %.2.lcssa.i.i80 to i64        ; 6 uses
  %i.doi = xor i32 %.2.lcssa.i.i80, -1
  %i.doj = add i32 %i.bhu, %i.doi                 ; 3 uses
  %i.dok = zext i32 %i.doj to i64
  %i.dol = add nuw nsw i64 %i.dok, 1              ; 5 uses
  %min.iters.check690 = icmp ult i32 %i.doj, 7
  br i1 %min.iters.check690, label %.lr.ph112.i.i83.preheader, label %vector.memcheck678

vector.memcheck678:                               ; preds = %iter.check725
  %i.dom = sub i64 %.11457.i679, %i.bjt
  %diff.check680 = icmp ugt i64 %i.dom, -256
  %i.don = sub i64 %.11455.i681, %i.bjt
  %diff.check682 = icmp ugt i64 %i.don, -256
  %conflict.rdx683 = or i1 %diff.check680, %diff.check682
  %i.doo = sub i64 %.11453.i684, %i.bjt
  %diff.check685 = icmp ugt i64 %i.doo, -256
  %conflict.rdx686 = or i1 %conflict.rdx683, %diff.check685
  %i.dop = sub i64 %.11451.i687, %i.bjt
  %diff.check688 = icmp ugt i64 %i.dop, -256
  %conflict.rdx689 = or i1 %conflict.rdx686, %diff.check688
  br i1 %conflict.rdx689, label %.lr.ph112.i.i83.preheader, label %vector.main.loop.iter.check691

vector.main.loop.iter.check691:                   ; preds = %vector.memcheck678
  %min.iters.check692 = icmp ult i32 %i.doj, 63
  br i1 %min.iters.check692, label %vec.epilog.ph729, label %vector.ph693

vector.ph693:                                     ; preds = %vector.main.loop.iter.check691
  %i.doq = and i64 %i.dol, 56
  %n.vec694 = and i64 %i.dol, 8589934528          ; 4 uses
  %i.dor = add nuw nsw i64 %n.vec694, %i.doh
  %broadcast.splatinsert695 = insertelement <16 x float> poison, float %i.dlq, i64 0
  %broadcast.splat696 = shufflevector <16 x float> %broadcast.splatinsert695, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert697 = insertelement <16 x float> poison, float %i.dls, i64 0
  %broadcast.splat698 = shufflevector <16 x float> %broadcast.splatinsert697, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert699 = insertelement <16 x float> poison, float %i.dlu, i64 0
  %broadcast.splat700 = shufflevector <16 x float> %broadcast.splatinsert699, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert701 = insertelement <16 x float> poison, float %i.dlw, i64 0
  %broadcast.splat702 = shufflevector <16 x float> %broadcast.splatinsert701, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph693
  %index704 = phi i64 [ 0, %vector.ph693 ], [ %index.next721, %vector.body703 ] ; 2 uses
  %i.dos = add nuw i64 %index704, %i.doh          ; 5 uses
  %i.dot = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %i.dos ; 4 uses
  %i.dou = getelementptr inbounds nuw i8, ptr %i.dot, i64 64
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dot, i64 128
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dot, i64 192
  %wide.load705 = load <16 x float>, ptr %i.dot, align 4, !tbaa !70
  %wide.load706 = load <16 x float>, ptr %i.dou, align 4, !tbaa !70
  %wide.load707 = load <16 x float>, ptr %i.dov, align 4, !tbaa !70
  %wide.load708 = load <16 x float>, ptr %i.dow, align 4, !tbaa !70
  %i.dox = fmul fast <16 x float> %wide.load705, %broadcast.splat696
  %i.doy = fmul fast <16 x float> %wide.load706, %broadcast.splat696
  %i.doz = fmul fast <16 x float> %wide.load707, %broadcast.splat696
  %i.dpa = fmul fast <16 x float> %wide.load708, %broadcast.splat696
  %i.dpb = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %i.dos ; 4 uses
  %i.dpc = getelementptr inbounds nuw i8, ptr %i.dpb, i64 64
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.dpb, i64 128
  %i.dpe = getelementptr inbounds nuw i8, ptr %i.dpb, i64 192
  %wide.load709 = load <16 x float>, ptr %i.dpb, align 4, !tbaa !70
  %wide.load710 = load <16 x float>, ptr %i.dpc, align 4, !tbaa !70
  %wide.load711 = load <16 x float>, ptr %i.dpd, align 4, !tbaa !70
  %wide.load712 = load <16 x float>, ptr %i.dpe, align 4, !tbaa !70
  %i.dpf = fmul fast <16 x float> %wide.load709, %broadcast.splat698
  %i.dpg = fmul fast <16 x float> %wide.load710, %broadcast.splat698
  %i.dph = fmul fast <16 x float> %wide.load711, %broadcast.splat698
  %i.dpi = fmul fast <16 x float> %wide.load712, %broadcast.splat698
  %i.dpj = fadd fast <16 x float> %i.dox, %i.dpf
  %i.dpk = fadd fast <16 x float> %i.doy, %i.dpg
  %i.dpl = fadd fast <16 x float> %i.doz, %i.dph
  %i.dpm = fadd fast <16 x float> %i.dpa, %i.dpi
  %i.dpn = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %i.dos ; 4 uses
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dpn, i64 64
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpn, i64 128
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpn, i64 192
  %wide.load713 = load <16 x float>, ptr %i.dpn, align 4, !tbaa !70
  %wide.load714 = load <16 x float>, ptr %i.dpo, align 4, !tbaa !70
  %wide.load715 = load <16 x float>, ptr %i.dpp, align 4, !tbaa !70
  %wide.load716 = load <16 x float>, ptr %i.dpq, align 4, !tbaa !70
  %i.dpr = fmul fast <16 x float> %wide.load713, %broadcast.splat700
  %i.dps = fmul fast <16 x float> %wide.load714, %broadcast.splat700
  %i.dpt = fmul fast <16 x float> %wide.load715, %broadcast.splat700
  %i.dpu = fmul fast <16 x float> %wide.load716, %broadcast.splat700
  %i.dpv = fadd fast <16 x float> %i.dpj, %i.dpr
  %i.dpw = fadd fast <16 x float> %i.dpk, %i.dps
  %i.dpx = fadd fast <16 x float> %i.dpl, %i.dpt
  %i.dpy = fadd fast <16 x float> %i.dpm, %i.dpu
  %i.dpz = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %i.dos ; 4 uses
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dpz, i64 64
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dpz, i64 128
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dpz, i64 192
  %wide.load717 = load <16 x float>, ptr %i.dpz, align 4, !tbaa !70
  %wide.load718 = load <16 x float>, ptr %i.dqa, align 4, !tbaa !70
  %wide.load719 = load <16 x float>, ptr %i.dqb, align 4, !tbaa !70
  %wide.load720 = load <16 x float>, ptr %i.dqc, align 4, !tbaa !70
  %i.dqd = fmul fast <16 x float> %wide.load717, %broadcast.splat702
  %i.dqe = fmul fast <16 x float> %wide.load718, %broadcast.splat702
  %i.dqf = fmul fast <16 x float> %wide.load719, %broadcast.splat702
  %i.dqg = fmul fast <16 x float> %wide.load720, %broadcast.splat702
  %i.dqh = fadd fast <16 x float> %i.dpv, %i.dqd
  %i.dqi = fadd fast <16 x float> %i.dpw, %i.dqe
  %i.dqj = fadd fast <16 x float> %i.dpx, %i.dqf
  %i.dqk = fadd fast <16 x float> %i.dpy, %i.dqg
  %i.dql = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %i.dos ; 4 uses
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dql, i64 64
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dql, i64 128
  %i.dqo = getelementptr inbounds nuw i8, ptr %i.dql, i64 192
  store <16 x float> %i.dqh, ptr %i.dql, align 4, !tbaa !70
  store <16 x float> %i.dqi, ptr %i.dqm, align 4, !tbaa !70
  store <16 x float> %i.dqj, ptr %i.dqn, align 4, !tbaa !70
  store <16 x float> %i.dqk, ptr %i.dqo, align 4, !tbaa !70
  %index.next721 = add nuw i64 %index704, 64      ; 2 uses
  %i.dqp = icmp eq i64 %index.next721, %n.vec694
  br i1 %i.dqp, label %middle.block722, label %vector.body703, !llvm.loop !240

middle.block722:                                  ; preds = %vector.body703
  %cmp.n723 = icmp eq i64 %i.dol, %n.vec694
  br i1 %cmp.n723, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81, label %vec.epilog.iter.check727

vec.epilog.iter.check727:                         ; preds = %middle.block722
  %min.epilog.iters.check728 = icmp eq i64 %i.doq, 0
  br i1 %min.epilog.iters.check728, label %.lr.ph112.i.i83.preheader, label %vec.epilog.ph729, !prof !107

vec.epilog.ph729:                                 ; preds = %vector.main.loop.iter.check691, %vec.epilog.iter.check727
  %vec.epilog.resume.val724 = phi i64 [ %n.vec694, %vec.epilog.iter.check727 ], [ 0, %vector.main.loop.iter.check691 ]
  %n.vec730 = and i64 %i.dol, 8589934584          ; 3 uses
  %i.dqq = add nuw nsw i64 %n.vec730, %i.doh
  %broadcast.splatinsert731 = insertelement <8 x float> poison, float %i.dlq, i64 0
  %broadcast.splat732 = shufflevector <8 x float> %broadcast.splatinsert731, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert733 = insertelement <8 x float> poison, float %i.dls, i64 0
  %broadcast.splat734 = shufflevector <8 x float> %broadcast.splatinsert733, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert735 = insertelement <8 x float> poison, float %i.dlu, i64 0
  %broadcast.splat736 = shufflevector <8 x float> %broadcast.splatinsert735, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert737 = insertelement <8 x float> poison, float %i.dlw, i64 0
  %broadcast.splat738 = shufflevector <8 x float> %broadcast.splatinsert737, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body739

vec.epilog.vector.body739:                        ; preds = %vec.epilog.vector.body739, %vec.epilog.ph729
  %index740 = phi i64 [ %vec.epilog.resume.val724, %vec.epilog.ph729 ], [ %index.next745, %vec.epilog.vector.body739 ] ; 2 uses
  %i.dqr = add nuw i64 %index740, %i.doh          ; 5 uses
  %i.dqs = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %i.dqr
  %wide.load741 = load <8 x float>, ptr %i.dqs, align 4, !tbaa !70
  %i.dqt = fmul fast <8 x float> %wide.load741, %broadcast.splat732
  %i.dqu = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %i.dqr
  %wide.load742 = load <8 x float>, ptr %i.dqu, align 4, !tbaa !70
  %i.dqv = fmul fast <8 x float> %wide.load742, %broadcast.splat734
  %i.dqw = fadd fast <8 x float> %i.dqt, %i.dqv
  %i.dqx = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %i.dqr
  %wide.load743 = load <8 x float>, ptr %i.dqx, align 4, !tbaa !70
  %i.dqy = fmul fast <8 x float> %wide.load743, %broadcast.splat736
  %i.dqz = fadd fast <8 x float> %i.dqw, %i.dqy
  %i.dra = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %i.dqr
  %wide.load744 = load <8 x float>, ptr %i.dra, align 4, !tbaa !70
  %i.drb = fmul fast <8 x float> %wide.load744, %broadcast.splat738
  %i.drc = fadd fast <8 x float> %i.dqz, %i.drb
  %i.drd = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %i.dqr
  store <8 x float> %i.drc, ptr %i.drd, align 4, !tbaa !70
  %index.next745 = add nuw i64 %index740, 8       ; 2 uses
  %i.dre = icmp eq i64 %index.next745, %n.vec730
  br i1 %i.dre, label %vec.epilog.middle.block746, label %vec.epilog.vector.body739, !llvm.loop !241

vec.epilog.middle.block746:                       ; preds = %vec.epilog.vector.body739
  %cmp.n747 = icmp eq i64 %i.dol, %n.vec730
  br i1 %cmp.n747, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81, label %.lr.ph112.i.i83.preheader

.lr.ph112.i.i83.preheader:                        ; preds = %vector.memcheck678, %iter.check725, %vec.epilog.iter.check727, %vec.epilog.middle.block746
  %indvars.iv123.i.i84.ph = phi i64 [ %i.doh, %iter.check725 ], [ %i.doh, %vector.memcheck678 ], [ %i.dor, %vec.epilog.iter.check727 ], [ %i.dqq, %vec.epilog.middle.block746 ]
  br label %.lr.ph112.i.i83

.lr.ph109.i.i87:                                  ; preds = %.lr.ph109.i.i87, %.lr.ph109.preheader.i.i86
  %indvars.iv120.i.i88 = phi i64 [ %i.dof, %.lr.ph109.preheader.i.i86 ], [ %indvars.iv.next121.i.i89, %.lr.ph109.i.i87 ] ; 6 uses
  %i.drf = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %indvars.iv120.i.i88
  %i.drg = load <4 x float>, ptr %i.drf, align 1, !tbaa !17
  %i.drh = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %indvars.iv120.i.i88
  %i.dri = load <4 x float>, ptr %i.drh, align 1, !tbaa !17
  %i.drj = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %indvars.iv120.i.i88
  %i.drk = load <4 x float>, ptr %i.drj, align 1, !tbaa !17
  %i.drl = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %indvars.iv120.i.i88
  %i.drm = load <4 x float>, ptr %i.drl, align 1, !tbaa !17
  %i.drn = fmul fast <4 x float> %i.drg, %i.dnw
  %i.dro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dri, <4 x float> nofpclass(nan inf) %i.dny, <4 x float> nofpclass(nan inf) %i.drn)
  %i.drp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.drk, <4 x float> nofpclass(nan inf) %i.doa, <4 x float> nofpclass(nan inf) %i.dro)
  %i.drq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.drm, <4 x float> nofpclass(nan inf) %i.doc, <4 x float> nofpclass(nan inf) %i.drp)
  %i.drr = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %indvars.iv120.i.i88
  store <4 x float> %i.drq, ptr %i.drr, align 1, !tbaa !17
  %indvars.iv.next121.i.i89 = add nuw nsw i64 %indvars.iv120.i.i88, 4 ; 2 uses
  %i.drs = trunc i64 %indvars.iv.next121.i.i89 to i32 ; 2 uses
  %i.drt = or i32 %i.drs, 3
  %i.dru = icmp slt i32 %i.drt, %i.bhu
  br i1 %i.dru, label %.lr.ph109.i.i87, label %.preheader.i.i79, !llvm.loop !213

.lr.ph112.i.i83:                                  ; preds = %.lr.ph112.i.i83.preheader, %.lr.ph112.i.i83
  %indvars.iv123.i.i84 = phi i64 [ %indvars.iv.next124.i.i85, %.lr.ph112.i.i83 ], [ %indvars.iv123.i.i84.ph, %.lr.ph112.i.i83.preheader ] ; 6 uses
  %i.drv = getelementptr inbounds nuw [4 x i8], ptr %.11451.i, i64 %indvars.iv123.i.i84
  %i.drw = load float, ptr %i.drv, align 4, !tbaa !70
  %i.drx = fmul fast float %i.drw, %i.dlq
  %i.dry = getelementptr inbounds nuw [4 x i8], ptr %.11453.i, i64 %indvars.iv123.i.i84
  %i.drz = load float, ptr %i.dry, align 4, !tbaa !70
  %i.dsa = fmul fast float %i.drz, %i.dls
  %i.dsb = fadd fast float %i.drx, %i.dsa
  %i.dsc = getelementptr inbounds nuw [4 x i8], ptr %.11455.i, i64 %indvars.iv123.i.i84
  %i.dsd = load float, ptr %i.dsc, align 4, !tbaa !70
  %i.dse = fmul fast float %i.dsd, %i.dlu
  %i.dsf = fadd fast float %i.dsb, %i.dse
  %i.dsg = getelementptr inbounds nuw [4 x i8], ptr %.11457.i, i64 %indvars.iv123.i.i84
  %i.dsh = load float, ptr %i.dsg, align 4, !tbaa !70
  %i.dsi = fmul fast float %i.dsh, %i.dlw
  %i.dsj = fadd fast float %i.dsf, %i.dsi
  %i.dsk = getelementptr inbounds nuw [4 x i8], ptr %i.dlp, i64 %indvars.iv123.i.i84
  store float %i.dsj, ptr %i.dsk, align 4, !tbaa !70
  %indvars.iv.next124.i.i85 = add nuw nsw i64 %indvars.iv123.i.i84, 1 ; 2 uses
  %i.dsl = trunc nuw i64 %indvars.iv.next124.i.i85 to i32
  %i.dsm = icmp sgt i32 %i.bhu, %i.dsl
  br i1 %i.dsm, label %.lr.ph112.i.i83, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81, !llvm.loop !242

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i81: ; preds = %.lr.ph112.i.i83, %middle.block722, %vec.epilog.middle.block746, %.preheader.i.i79
  %i.dsn = getelementptr inbounds nuw i8, ptr %.02358.i, i64 16
  %indvars.iv.next2436.i = add nuw nsw i64 %indvars.iv2435.i, 1 ; 2 uses
  %exitcond2439.not.i = icmp eq i64 %indvars.iv.next2436.i, %wide.trip.count2438.i
  br i1 %exitcond2439.not.i, label %._crit_edge.i70, label %bb.ek, !llvm.loop !243

bb.es:                                            ; preds = %bb.ej
  %i.dso = atomicrmw add ptr %i.bjr, i32 -1 acq_rel, align 4
  %i.dsp = icmp eq i32 %i.dso, 1
  br i1 %i.dsp, label %bb.et, label %_ZN4ncnn3MatD2Ev.exit1602.i

bb.et:                                            ; preds = %bb.es
  %i.dsq = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 3 uses
  %.not3.i1625.i = icmp eq ptr %i.dsq, null
  %i.dsr = load ptr, ptr %16, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1625.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.dss = load ptr, ptr %i.dsq, align 8, !tbaa !9
  %i.dst = getelementptr inbounds nuw i8, ptr %i.dss, i64 24
  %i.dsu = load ptr, ptr %i.dst, align 8
  invoke void %i.dsu(ptr noundef nonnull align 8 dereferenceable(8) %i.dsq, ptr noundef %i.dsr)
          to label %_ZN4ncnn3MatD2Ev.exit1602.i unwind label %bb.ex, !inline_history !46

bb.ev:                                            ; preds = %bb.et
  %.not.i1639.i = icmp eq ptr %i.dsr, null
  br i1 %.not.i1639.i, label %_ZN4ncnn3MatD2Ev.exit1602.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @free(ptr noundef nonnull %i.dsr) #6
  br label %_ZN4ncnn3MatD2Ev.exit1602.i

bb.ex:                                            ; preds = %bb.eu
  %i.dsv = landingpad { ptr, i32 }
          catch ptr null
  %i.dsw = extractvalue { ptr, i32 } %i.dsv, 0
  call void @__clang_call_terminate(ptr %i.dsw) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1602.i:                      ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.es, %bb.ej, %bb.ei
  %.pn1596.pn.pn.i = phi { ptr, i32 } [ %i.bjp, %bb.ei ], [ %i.bjq, %bb.es ], [ %i.bjq, %bb.ej ], [ %i.bjq, %bb.eu ], [ %i.bjq, %bb.ev ], [ %i.bjq, %bb.ew ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.dsx = load ptr, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %.not.i1628.i = icmp eq ptr %i.dsx, null
  br i1 %.not.i1628.i, label %_ZN4ncnn3MatD2Ev.exit1601.i, label %bb.ey

bb.ey:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1602.i
  %i.dsy = atomicrmw add ptr %i.dsx, i32 -1 acq_rel, align 4
  %i.dsz = icmp eq i32 %i.dsy, 1
  br i1 %i.dsz, label %bb.ez, label %_ZN4ncnn3MatD2Ev.exit1601.i

bb.ez:                                            ; preds = %bb.ey
  %i.dta = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %.not3.i1629.i = icmp eq ptr %i.dta, null
  %i.dtb = load ptr, ptr %15, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1629.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.dtc = load ptr, ptr %i.dta, align 8, !tbaa !9
  %i.dtd = getelementptr inbounds nuw i8, ptr %i.dtc, i64 24
  %i.dte = load ptr, ptr %i.dtd, align 8
  invoke void %i.dte(ptr noundef nonnull align 8 dereferenceable(8) %i.dta, ptr noundef %i.dtb)
          to label %_ZN4ncnn3MatD2Ev.exit1601.i unwind label %bb.fd, !inline_history !46

bb.fb:                                            ; preds = %bb.ez
  %.not.i1637.i = icmp eq ptr %i.dtb, null
  br i1 %.not.i1637.i, label %_ZN4ncnn3MatD2Ev.exit1601.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @free(ptr noundef nonnull %i.dtb) #6
  br label %_ZN4ncnn3MatD2Ev.exit1601.i

bb.fd:                                            ; preds = %bb.fa
  %i.dtf = landingpad { ptr, i32 }
          catch ptr null
  %i.dtg = extractvalue { ptr, i32 } %i.dtf, 0
  call void @__clang_call_terminate(ptr %i.dtg) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit1601.i:                      ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ey, %_ZN4ncnn3MatD2Ev.exit1602.i, %bb.eh
  %.pn1596.pn.pn.pn.i = phi { ptr, i32 } [ %i.bjo, %bb.eh ], [ %.pn1596.pn.pn.i, %bb.ey ], [ %.pn1596.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit1602.i ], [ %.pn1596.pn.pn.i, %bb.fa ], [ %.pn1596.pn.pn.i, %bb.fb ], [ %.pn1596.pn.pn.i, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.dth = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not.i1632.i = icmp eq ptr %i.dth, null
  br i1 %.not.i1632.i, label %_ZN4ncnn3MatD2Ev.exit.i68, label %bb.fe

bb.fe:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1601.i
  %i.dti = atomicrmw add ptr %i.dth, i32 -1 acq_rel, align 4
  %i.dtj = icmp eq i32 %i.dti, 1
  br i1 %i.dtj, label %bb.ff, label %_ZN4ncnn3MatD2Ev.exit.i68

bb.ff:                                            ; preds = %bb.fe
  %i.dtk = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not3.i1633.i = icmp eq ptr %i.dtk, null
  %i.dtl = load ptr, ptr %14, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i1633.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.dtm = load ptr, ptr %i.dtk, align 8, !tbaa !9
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtm, i64 24
  %i.dto = load ptr, ptr %i.dtn, align 8
  invoke void %i.dto(ptr noundef nonnull align 8 dereferenceable(8) %i.dtk, ptr noundef %i.dtl)
          to label %_ZN4ncnn3MatD2Ev.exit.i68 unwind label %bb.fj, !inline_history !46

bb.fh:                                            ; preds = %bb.ff
  %.not.i1636.i = icmp eq ptr %i.dtl, null
  br i1 %.not.i1636.i, label %_ZN4ncnn3MatD2Ev.exit.i68, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @free(ptr noundef nonnull %i.dtl) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i68

bb.fj:                                            ; preds = %bb.fg
  %i.dtp = landingpad { ptr, i32 }
          catch ptr null
  %i.dtq = extractvalue { ptr, i32 } %i.dtp, 0
  call void @__clang_call_terminate(ptr %i.dtq) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i68:                        ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.fe, %_ZN4ncnn3MatD2Ev.exit1601.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit1604.i, %bb.eb, %bb.ed, %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr225 = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.fk

bb.fk:                                            ; preds = %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.dh
  %i.dtr = phi i32 [ %.pr225, %_ZN4ncnnL26resize_bicubic_image_pack4ERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bhi, %bb.dh ]
  %i.dts = icmp eq i32 %i.dtr, 1
  br i1 %i.dts, label %bb.fl, label %_ZN4ncnn3MatD2Ev.exit

bb.fl:                                            ; preds = %bb.fk
  %i.dtt = load ptr, ptr %6, align 8, !tbaa !72   ; 8 uses
  %i.dtu = load ptr, ptr %7, align 8, !tbaa !71   ; 14 uses
  %i.dtv = load ptr, ptr %8, align 8, !tbaa !72
  %i.dtw = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.be, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.noexc144 unwind label %bb.ho

.noexc144:                                        ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.bh, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit855.i unwind label %bb.gk

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit855.i:       ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.bk, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit853.i unwind label %bb.gl

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit853.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit855.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.bn, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.gm

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit853.i
  %i.dtx = icmp sgt i32 %i.by, 0
  br i1 %i.dtx, label %.lr.ph971.i, label %._crit_edge.i110

.lr.ph971.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.dty = load ptr, ptr %13, align 8, !tbaa !45
  %i.dtz = load ptr, ptr %12, align 8, !tbaa !45
  %i.dua = load ptr, ptr %11, align 8, !tbaa !45
  %i.dub = load ptr, ptr %10, align 8, !tbaa !45
  %i.duc = icmp sgt i32 %i.bx, 15                 ; 5 uses
  %i.dud = zext i32 %i.bx to i64                  ; 8 uses
  %invariant.op.i.i111 = add nsw i64 %i.dud, -7
  %wide.trip.count1035.i = zext nneg i32 %i.by to i64
  %invariant.op.i112 = add nsw i64 %i.cg, -15     ; 4 uses
  %invariant.op1071.i = add nsw i64 %i.cg, -7     ; 4 uses
  %i.due = mul i64 %i.cd, %i.cg
end_hunk_3
begin_hunk_4_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.ena = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.emz)
  %i.enb = getelementptr inbounds nuw [4 x i8], ptr %.0727967.i, i64 %indvars.iv995.i
  store float %i.ena, ptr %i.enb, align 4, !tbaa !70
  %i.enc = getelementptr inbounds i8, ptr %i.eml, i64 -4
  %i.end = load <4 x float>, ptr %i.enc, align 4, !tbaa !70
  %i.ene = fmul fast <4 x float> %i.end, %i.emn
  %i.enf = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ene)
  %i.eng = getelementptr inbounds nuw [4 x i8], ptr %.0729966.i, i64 %indvars.iv995.i
  store float %i.enf, ptr %i.eng, align 4, !tbaa !70
  %i.enh = getelementptr inbounds nuw i8, ptr %.2755922.i, i64 16
  %indvars.iv.next996.i = add nuw nsw i64 %indvars.iv995.i, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next996.i, %i.dud
  br i1 %exitcond.not.i138, label %.loopexit.i113, label %.lr.ph923.i, !llvm.loop !255

.loopexit.i113:                                   ; preds = %.lr.ph923.i, %.lr.ph937.i, %.lr.ph950.i, %.lr.ph963.i.prol.loopexit, %.lr.ph963.i, %.preheader909.i, %.preheader906.i, %.preheader903.i, %.preheader.i142, %bb.gn
  %.1730.i = phi ptr [ %.0729966.i, %bb.gn ], [ %.0723969.i, %.preheader.i142 ], [ %.0725968.i, %.preheader903.i ], [ %.0727967.i, %.preheader906.i ], [ %.0729966.i, %.preheader909.i ], [ %.0727967.i, %.lr.ph937.i ], [ %.0723969.i, %.lr.ph963.i.prol.loopexit ], [ %.0725968.i, %.lr.ph950.i ], [ %.0723969.i, %.lr.ph963.i ], [ %.0729966.i, %.lr.ph923.i ] ; 8 uses
  %.1728.i = phi ptr [ %.0727967.i, %bb.gn ], [ %.0729966.i, %.preheader.i142 ], [ %.0723969.i, %.preheader903.i ], [ %.0725968.i, %.preheader906.i ], [ %.0727967.i, %.preheader909.i ], [ %.0725968.i, %.lr.ph937.i ], [ %.0729966.i, %.lr.ph963.i.prol.loopexit ], [ %.0723969.i, %.lr.ph950.i ], [ %.0729966.i, %.lr.ph963.i ], [ %.0727967.i, %.lr.ph923.i ] ; 8 uses
  %.1726.i = phi ptr [ %.0725968.i, %bb.gn ], [ %.0727967.i, %.preheader.i142 ], [ %.0729966.i, %.preheader903.i ], [ %.0723969.i, %.preheader906.i ], [ %.0725968.i, %.preheader909.i ], [ %.0723969.i, %.lr.ph937.i ], [ %.0727967.i, %.lr.ph963.i.prol.loopexit ], [ %.0729966.i, %.lr.ph950.i ], [ %.0727967.i, %.lr.ph963.i ], [ %.0725968.i, %.lr.ph923.i ] ; 8 uses
  %.1724.i = phi ptr [ %.0723969.i, %bb.gn ], [ %.0725968.i, %.preheader.i142 ], [ %.0727967.i, %.preheader903.i ], [ %.0729966.i, %.preheader906.i ], [ %.0723969.i, %.preheader909.i ], [ %.0729966.i, %.lr.ph937.i ], [ %.0725968.i, %.lr.ph963.i.prol.loopexit ], [ %.0727967.i, %.lr.ph950.i ], [ %.0725968.i, %.lr.ph963.i ], [ %.0723969.i, %.lr.ph923.i ] ; 8 uses
  %.1730.i630 = ptrtoaddr ptr %.1730.i to i64
  %.1728.i631 = ptrtoaddr ptr %.1728.i to i64
  %.1726.i633 = ptrtoaddr ptr %.1726.i to i64
  %.1724.i636 = ptrtoaddr ptr %.1724.i to i64
  %i.eni = mul i64 %i.due, %indvars.iv1032.i
  %i.enj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.eni ; 6 uses
  %i.enk = load float, ptr %.0970.i, align 4, !tbaa !70 ; 6 uses
  %i.enl = getelementptr inbounds nuw i8, ptr %.0970.i, i64 4
  %i.enm = load float, ptr %i.enl, align 4, !tbaa !70 ; 6 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %.0970.i, i64 8
  %i.eno = load float, ptr %i.enn, align 4, !tbaa !70 ; 6 uses
  %i.enp = getelementptr inbounds nuw i8, ptr %.0970.i, i64 12
  %i.enq = load float, ptr %i.enp, align 4, !tbaa !70 ; 6 uses
  %i.enr = insertelement <16 x float> poison, float %i.enk, i64 0
  %i.ens = shufflevector <16 x float> %i.enr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ent = insertelement <16 x float> poison, float %i.enm, i64 0
  %i.enu = shufflevector <16 x float> %i.ent, <16 x float> poison, <16 x i32> zeroinitializer
  %i.env = insertelement <16 x float> poison, float %i.eno, i64 0
  %i.enw = shufflevector <16 x float> %i.env, <16 x float> poison, <16 x i32> zeroinitializer
  %i.enx = insertelement <16 x float> poison, float %i.enq, i64 0
  %i.eny = shufflevector <16 x float> %i.enx, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.duc, label %.lr.ph.i.i134, label %._crit_edge.i.i114

.lr.ph.i.i134:                                    ; preds = %.loopexit.i113, %.lr.ph.i.i134
  %indvars.iv.i.i135 = phi i64 [ %indvars.iv.next.i.i136, %.lr.ph.i.i134 ], [ 0, %.loopexit.i113 ] ; 6 uses
  %i.enz = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %indvars.iv.i.i135
  %i.eoa = load <16 x float>, ptr %i.enz, align 1, !tbaa !17
  %i.eob = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %indvars.iv.i.i135
  %i.eoc = load <16 x float>, ptr %i.eob, align 1, !tbaa !17
  %i.eod = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %indvars.iv.i.i135
  %i.eoe = load <16 x float>, ptr %i.eod, align 1, !tbaa !17
  %i.eof = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %indvars.iv.i.i135
  %i.eog = load <16 x float>, ptr %i.eof, align 1, !tbaa !17
  %i.eoh = fmul fast <16 x float> %i.eoa, %i.ens
  %i.eoi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eoc, <16 x float> nofpclass(nan inf) %i.enu, <16 x float> nofpclass(nan inf) %i.eoh)
  %i.eoj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eoe, <16 x float> nofpclass(nan inf) %i.enw, <16 x float> nofpclass(nan inf) %i.eoi)
  %i.eok = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eog, <16 x float> nofpclass(nan inf) %i.eny, <16 x float> nofpclass(nan inf) %i.eoj)
  %i.eol = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %indvars.iv.i.i135
  store <16 x float> %i.eok, ptr %i.eol, align 1, !tbaa !17
  %indvars.iv.next.i.i136 = add nuw nsw i64 %indvars.iv.i.i135, 16 ; 3 uses
  %i.eom = or disjoint i64 %indvars.iv.next.i.i136, 15
  %i.eon = icmp samesign ult i64 %i.eom, %i.dud
  br i1 %i.eon, label %.lr.ph.i.i134, label %._crit_edge.loopexit.i.i137, !llvm.loop !209

._crit_edge.loopexit.i.i137:                      ; preds = %.lr.ph.i.i134
  %i.eoo = trunc nuw nsw i64 %indvars.iv.next.i.i136 to i32
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %._crit_edge.loopexit.i.i137, %.loopexit.i113
  %.0.lcssa.i.i115 = phi i32 [ 0, %.loopexit.i113 ], [ %i.eoo, %._crit_edge.loopexit.i.i137 ] ; 3 uses
  %i.eop = insertelement <8 x float> poison, float %i.enk, i64 0
  %i.eoq = shufflevector <8 x float> %i.eop, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eor = insertelement <8 x float> poison, float %i.enm, i64 0
  %i.eos = shufflevector <8 x float> %i.eor, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eot = insertelement <8 x float> poison, float %i.eno, i64 0
  %i.eou = shufflevector <8 x float> %i.eot, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eov = insertelement <8 x float> poison, float %i.enq, i64 0
  %i.eow = shufflevector <8 x float> %i.eov, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eox = or disjoint i32 %.0.lcssa.i.i115, 7
  %i.eoy = icmp slt i32 %i.eox, %i.bx
  br i1 %i.eoy, label %.lr.ph104.preheader.i.i129, label %._crit_edge105.i.i116

.lr.ph104.preheader.i.i129:                       ; preds = %._crit_edge.i.i114
  %i.eoz = zext nneg i32 %.0.lcssa.i.i115 to i64
  br label %.lr.ph104.i.i130

.lr.ph104.i.i130:                                 ; preds = %.lr.ph104.i.i130, %.lr.ph104.preheader.i.i129
  %indvars.iv117.i.i131 = phi i64 [ %i.eoz, %.lr.ph104.preheader.i.i129 ], [ %indvars.iv.next118.i.i132, %.lr.ph104.i.i130 ] ; 6 uses
  %i.epa = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %indvars.iv117.i.i131
  %i.epb = load <8 x float>, ptr %i.epa, align 1, !tbaa !17
  %i.epc = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %indvars.iv117.i.i131
  %i.epd = load <8 x float>, ptr %i.epc, align 1, !tbaa !17
  %i.epe = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %indvars.iv117.i.i131
  %i.epf = load <8 x float>, ptr %i.epe, align 1, !tbaa !17
  %i.epg = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %indvars.iv117.i.i131
  %i.eph = load <8 x float>, ptr %i.epg, align 1, !tbaa !17
  %i.epi = fmul fast <8 x float> %i.epb, %i.eoq
  %i.epj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.epd, <8 x float> nofpclass(nan inf) %i.eos, <8 x float> nofpclass(nan inf) %i.epi)
  %i.epk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.epf, <8 x float> nofpclass(nan inf) %i.eou, <8 x float> nofpclass(nan inf) %i.epj)
  %i.epl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eph, <8 x float> nofpclass(nan inf) %i.eow, <8 x float> nofpclass(nan inf) %i.epk)
  %i.epm = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %indvars.iv117.i.i131
  store <8 x float> %i.epl, ptr %i.epm, align 1, !tbaa !17
  %indvars.iv.next118.i.i132 = add nuw nsw i64 %indvars.iv117.i.i131, 8 ; 3 uses
  %i.epn = icmp slt i64 %indvars.iv.next118.i.i132, %invariant.op.i.i111
  br i1 %i.epn, label %.lr.ph104.i.i130, label %._crit_edge105.loopexit.i.i133, !llvm.loop !210

._crit_edge105.loopexit.i.i133:                   ; preds = %.lr.ph104.i.i130
  %i.epo = trunc nuw nsw i64 %indvars.iv.next118.i.i132 to i32
  br label %._crit_edge105.i.i116

._crit_edge105.i.i116:                            ; preds = %._crit_edge105.loopexit.i.i133, %._crit_edge.i.i114
  %.1.lcssa.i.i117 = phi i32 [ %.0.lcssa.i.i115, %._crit_edge.i.i114 ], [ %i.epo, %._crit_edge105.loopexit.i.i133 ] ; 3 uses
  %i.epp = insertelement <4 x float> poison, float %i.enk, i64 0
  %i.epq = shufflevector <4 x float> %i.epp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epr = insertelement <4 x float> poison, float %i.enm, i64 0
  %i.eps = shufflevector <4 x float> %i.epr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ept = insertelement <4 x float> poison, float %i.eno, i64 0
  %i.epu = shufflevector <4 x float> %i.ept, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epv = insertelement <4 x float> poison, float %i.enq, i64 0
  %i.epw = shufflevector <4 x float> %i.epv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epx = or disjoint i32 %.1.lcssa.i.i117, 3
  %i.epy = icmp slt i32 %i.epx, %i.bx
  br i1 %i.epy, label %.lr.ph109.preheader.i.i125, label %.preheader.i.i118

.lr.ph109.preheader.i.i125:                       ; preds = %._crit_edge105.i.i116
  %i.epz = zext nneg i32 %.1.lcssa.i.i117 to i64
  br label %.lr.ph109.i.i126

.preheader.i.i118:                                ; preds = %.lr.ph109.i.i126, %._crit_edge105.i.i116
  %.2.lcssa.i.i119 = phi i32 [ %.1.lcssa.i.i117, %._crit_edge105.i.i116 ], [ %i.etm, %.lr.ph109.i.i126 ] ; 3 uses
  %i.eqa = icmp slt i32 %.2.lcssa.i.i119, %i.bx
  br i1 %i.eqa, label %iter.check, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i120

iter.check:                                       ; preds = %.preheader.i.i118
  %i.eqb = zext i32 %.2.lcssa.i.i119 to i64       ; 6 uses
  %i.eqc = xor i32 %.2.lcssa.i.i119, -1
  %i.eqd = add i32 %i.bx, %i.eqc                  ; 3 uses
  %i.eqe = zext i32 %i.eqd to i64
  %i.eqf = add nuw nsw i64 %i.eqe, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.eqd, 7
  br i1 %min.iters.check, label %.lr.ph112.i.i122.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eqg = sub i64 %.1730.i630, %i.dwc
  %diff.check = icmp ugt i64 %i.eqg, -256
  %i.eqh = sub i64 %.1728.i631, %i.dwc
  %diff.check632 = icmp ugt i64 %i.eqh, -256
  %conflict.rdx = or i1 %diff.check, %diff.check632
  %i.eqi = sub i64 %.1726.i633, %i.dwc
  %diff.check634 = icmp ugt i64 %i.eqi, -256
  %conflict.rdx635 = or i1 %conflict.rdx, %diff.check634
  %i.eqj = sub i64 %.1724.i636, %i.dwc
  %diff.check637 = icmp ugt i64 %i.eqj, -256
  %conflict.rdx638 = or i1 %conflict.rdx635, %diff.check637
  br i1 %conflict.rdx638, label %.lr.ph112.i.i122.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check639 = icmp ult i32 %i.eqd, 63
  br i1 %min.iters.check639, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eqk = and i64 %i.eqf, 56
  %n.vec = and i64 %i.eqf, 8589934528             ; 4 uses
  %i.eql = add nuw nsw i64 %n.vec, %i.eqb
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.enk, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert640 = insertelement <16 x float> poison, float %i.enm, i64 0
  %broadcast.splat641 = shufflevector <16 x float> %broadcast.splatinsert640, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert642 = insertelement <16 x float> poison, float %i.eno, i64 0
  %broadcast.splat643 = shufflevector <16 x float> %broadcast.splatinsert642, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert644 = insertelement <16 x float> poison, float %i.enq, i64 0
  %broadcast.splat645 = shufflevector <16 x float> %broadcast.splatinsert644, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eqm = add nuw i64 %index, %i.eqb             ; 5 uses
  %i.eqn = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %i.eqm ; 4 uses
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.eqn, i64 64
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.eqn, i64 128
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqn, i64 192
  %wide.load = load <16 x float>, ptr %i.eqn, align 4, !tbaa !70
  %wide.load646 = load <16 x float>, ptr %i.eqo, align 4, !tbaa !70
  %wide.load647 = load <16 x float>, ptr %i.eqp, align 4, !tbaa !70
  %wide.load648 = load <16 x float>, ptr %i.eqq, align 4, !tbaa !70
  %i.eqr = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.eqs = fmul fast <16 x float> %wide.load646, %broadcast.splat
  %i.eqt = fmul fast <16 x float> %wide.load647, %broadcast.splat
  %i.equ = fmul fast <16 x float> %wide.load648, %broadcast.splat
  %i.eqv = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %i.eqm ; 4 uses
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.eqv, i64 64
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.eqv, i64 128
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.eqv, i64 192
  %wide.load649 = load <16 x float>, ptr %i.eqv, align 4, !tbaa !70
  %wide.load650 = load <16 x float>, ptr %i.eqw, align 4, !tbaa !70
  %wide.load651 = load <16 x float>, ptr %i.eqx, align 4, !tbaa !70
  %wide.load652 = load <16 x float>, ptr %i.eqy, align 4, !tbaa !70
  %i.eqz = fmul fast <16 x float> %wide.load649, %broadcast.splat641
  %i.era = fmul fast <16 x float> %wide.load650, %broadcast.splat641
  %i.erb = fmul fast <16 x float> %wide.load651, %broadcast.splat641
  %i.erc = fmul fast <16 x float> %wide.load652, %broadcast.splat641
  %i.erd = fadd fast <16 x float> %i.eqr, %i.eqz
  %i.ere = fadd fast <16 x float> %i.eqs, %i.era
  %i.erf = fadd fast <16 x float> %i.eqt, %i.erb
  %i.erg = fadd fast <16 x float> %i.equ, %i.erc
  %i.erh = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %i.eqm ; 4 uses
  %i.eri = getelementptr inbounds nuw i8, ptr %i.erh, i64 64
  %i.erj = getelementptr inbounds nuw i8, ptr %i.erh, i64 128
  %i.erk = getelementptr inbounds nuw i8, ptr %i.erh, i64 192
  %wide.load653 = load <16 x float>, ptr %i.erh, align 4, !tbaa !70
  %wide.load654 = load <16 x float>, ptr %i.eri, align 4, !tbaa !70
  %wide.load655 = load <16 x float>, ptr %i.erj, align 4, !tbaa !70
  %wide.load656 = load <16 x float>, ptr %i.erk, align 4, !tbaa !70
  %i.erl = fmul fast <16 x float> %wide.load653, %broadcast.splat643
  %i.erm = fmul fast <16 x float> %wide.load654, %broadcast.splat643
  %i.ern = fmul fast <16 x float> %wide.load655, %broadcast.splat643
  %i.ero = fmul fast <16 x float> %wide.load656, %broadcast.splat643
  %i.erp = fadd fast <16 x float> %i.erd, %i.erl
  %i.erq = fadd fast <16 x float> %i.ere, %i.erm
  %i.err = fadd fast <16 x float> %i.erf, %i.ern
  %i.ers = fadd fast <16 x float> %i.erg, %i.ero
  %i.ert = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %i.eqm ; 4 uses
  %i.eru = getelementptr inbounds nuw i8, ptr %i.ert, i64 64
  %i.erv = getelementptr inbounds nuw i8, ptr %i.ert, i64 128
  %i.erw = getelementptr inbounds nuw i8, ptr %i.ert, i64 192
  %wide.load657 = load <16 x float>, ptr %i.ert, align 4, !tbaa !70
  %wide.load658 = load <16 x float>, ptr %i.eru, align 4, !tbaa !70
  %wide.load659 = load <16 x float>, ptr %i.erv, align 4, !tbaa !70
  %wide.load660 = load <16 x float>, ptr %i.erw, align 4, !tbaa !70
  %i.erx = fmul fast <16 x float> %wide.load657, %broadcast.splat645
  %i.ery = fmul fast <16 x float> %wide.load658, %broadcast.splat645
  %i.erz = fmul fast <16 x float> %wide.load659, %broadcast.splat645
  %i.esa = fmul fast <16 x float> %wide.load660, %broadcast.splat645
  %i.esb = fadd fast <16 x float> %i.erp, %i.erx
  %i.esc = fadd fast <16 x float> %i.erq, %i.ery
  %i.esd = fadd fast <16 x float> %i.err, %i.erz
  %i.ese = fadd fast <16 x float> %i.ers, %i.esa
  %i.esf = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %i.eqm ; 4 uses
  %i.esg = getelementptr inbounds nuw i8, ptr %i.esf, i64 64
  %i.esh = getelementptr inbounds nuw i8, ptr %i.esf, i64 128
  %i.esi = getelementptr inbounds nuw i8, ptr %i.esf, i64 192
  store <16 x float> %i.esb, ptr %i.esf, align 4, !tbaa !70
  store <16 x float> %i.esc, ptr %i.esg, align 4, !tbaa !70
  store <16 x float> %i.esd, ptr %i.esh, align 4, !tbaa !70
  store <16 x float> %i.ese, ptr %i.esi, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.esj = icmp eq i64 %index.next, %n.vec
  br i1 %i.esj, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eqf, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i120, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eqk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.i.i122.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec661 = and i64 %i.eqf, 8589934584          ; 3 uses
  %i.esk = add nuw nsw i64 %n.vec661, %i.eqb
  %broadcast.splatinsert662 = insertelement <8 x float> poison, float %i.enk, i64 0
  %broadcast.splat663 = shufflevector <8 x float> %broadcast.splatinsert662, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert664 = insertelement <8 x float> poison, float %i.enm, i64 0
  %broadcast.splat665 = shufflevector <8 x float> %broadcast.splatinsert664, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert666 = insertelement <8 x float> poison, float %i.eno, i64 0
  %broadcast.splat667 = shufflevector <8 x float> %broadcast.splatinsert666, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert668 = insertelement <8 x float> poison, float %i.enq, i64 0
  %broadcast.splat669 = shufflevector <8 x float> %broadcast.splatinsert668, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index670 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next675, %vec.epilog.vector.body ] ; 2 uses
  %i.esl = add nuw i64 %index670, %i.eqb          ; 5 uses
  %i.esm = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %i.esl
  %wide.load671 = load <8 x float>, ptr %i.esm, align 4, !tbaa !70
  %i.esn = fmul fast <8 x float> %wide.load671, %broadcast.splat663
  %i.eso = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %i.esl
  %wide.load672 = load <8 x float>, ptr %i.eso, align 4, !tbaa !70
  %i.esp = fmul fast <8 x float> %wide.load672, %broadcast.splat665
  %i.esq = fadd fast <8 x float> %i.esn, %i.esp
  %i.esr = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %i.esl
  %wide.load673 = load <8 x float>, ptr %i.esr, align 4, !tbaa !70
  %i.ess = fmul fast <8 x float> %wide.load673, %broadcast.splat667
  %i.est = fadd fast <8 x float> %i.esq, %i.ess
  %i.esu = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %i.esl
  %wide.load674 = load <8 x float>, ptr %i.esu, align 4, !tbaa !70
  %i.esv = fmul fast <8 x float> %wide.load674, %broadcast.splat669
  %i.esw = fadd fast <8 x float> %i.est, %i.esv
  %i.esx = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %i.esl
  store <8 x float> %i.esw, ptr %i.esx, align 4, !tbaa !70
  %index.next675 = add nuw i64 %index670, 8       ; 2 uses
  %i.esy = icmp eq i64 %index.next675, %n.vec661
  br i1 %i.esy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !257

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n676 = icmp eq i64 %i.eqf, %n.vec661
  br i1 %cmp.n676, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i120, label %.lr.ph112.i.i122.preheader

.lr.ph112.i.i122.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv123.i.i123.ph = phi i64 [ %i.eqb, %iter.check ], [ %i.eqb, %vector.memcheck ], [ %i.eql, %vec.epilog.iter.check ], [ %i.esk, %vec.epilog.middle.block ]
  br label %.lr.ph112.i.i122

.lr.ph109.i.i126:                                 ; preds = %.lr.ph109.i.i126, %.lr.ph109.preheader.i.i125
  %indvars.iv120.i.i127 = phi i64 [ %i.epz, %.lr.ph109.preheader.i.i125 ], [ %indvars.iv.next121.i.i128, %.lr.ph109.i.i126 ] ; 6 uses
  %i.esz = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %indvars.iv120.i.i127
  %i.eta = load <4 x float>, ptr %i.esz, align 1, !tbaa !17
  %i.etb = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %indvars.iv120.i.i127
  %i.etc = load <4 x float>, ptr %i.etb, align 1, !tbaa !17
  %i.etd = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %indvars.iv120.i.i127
  %i.ete = load <4 x float>, ptr %i.etd, align 1, !tbaa !17
  %i.etf = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %indvars.iv120.i.i127
  %i.etg = load <4 x float>, ptr %i.etf, align 1, !tbaa !17
  %i.eth = fmul fast <4 x float> %i.eta, %i.epq
  %i.eti = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.etc, <4 x float> nofpclass(nan inf) %i.eps, <4 x float> nofpclass(nan inf) %i.eth)
  %i.etj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ete, <4 x float> nofpclass(nan inf) %i.epu, <4 x float> nofpclass(nan inf) %i.eti)
  %i.etk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.etg, <4 x float> nofpclass(nan inf) %i.epw, <4 x float> nofpclass(nan inf) %i.etj)
  %i.etl = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %indvars.iv120.i.i127
  store <4 x float> %i.etk, ptr %i.etl, align 1, !tbaa !17
  %indvars.iv.next121.i.i128 = add nuw nsw i64 %indvars.iv120.i.i127, 4 ; 2 uses
  %i.etm = trunc i64 %indvars.iv.next121.i.i128 to i32 ; 2 uses
  %i.etn = or i32 %i.etm, 3
  %i.eto = icmp slt i32 %i.etn, %i.bx
  br i1 %i.eto, label %.lr.ph109.i.i126, label %.preheader.i.i118, !llvm.loop !213

.lr.ph112.i.i122:                                 ; preds = %.lr.ph112.i.i122.preheader, %.lr.ph112.i.i122
  %indvars.iv123.i.i123 = phi i64 [ %indvars.iv.next124.i.i124, %.lr.ph112.i.i122 ], [ %indvars.iv123.i.i123.ph, %.lr.ph112.i.i122.preheader ] ; 6 uses
  %i.etp = getelementptr inbounds nuw [4 x i8], ptr %.1724.i, i64 %indvars.iv123.i.i123
  %i.etq = load float, ptr %i.etp, align 4, !tbaa !70
  %i.etr = fmul fast float %i.etq, %i.enk
  %i.ets = getelementptr inbounds nuw [4 x i8], ptr %.1726.i, i64 %indvars.iv123.i.i123
  %i.ett = load float, ptr %i.ets, align 4, !tbaa !70
  %i.etu = fmul fast float %i.ett, %i.enm
  %i.etv = fadd fast float %i.etr, %i.etu
  %i.etw = getelementptr inbounds nuw [4 x i8], ptr %.1728.i, i64 %indvars.iv123.i.i123
  %i.etx = load float, ptr %i.etw, align 4, !tbaa !70
  %i.ety = fmul fast float %i.etx, %i.eno
  %i.etz = fadd fast float %i.etv, %i.ety
  %i.eua = getelementptr inbounds nuw [4 x i8], ptr %.1730.i, i64 %indvars.iv123.i.i123
  %i.eub = load float, ptr %i.eua, align 4, !tbaa !70
  %i.euc = fmul fast float %i.eub, %i.enq
  %i.eud = fadd fast float %i.etz, %i.euc
  %i.eue = getelementptr inbounds nuw [4 x i8], ptr %i.enj, i64 %indvars.iv123.i.i123
  store float %i.eud, ptr %i.eue, align 4, !tbaa !70
  %indvars.iv.next124.i.i124 = add nuw nsw i64 %indvars.iv123.i.i123, 1 ; 2 uses
  %i.euf = trunc nuw i64 %indvars.iv.next124.i.i124 to i32
  %i.eug = icmp sgt i32 %i.bx, %i.euf
  br i1 %i.eug, label %.lr.ph112.i.i122, label %_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i120, !llvm.loop !258

_ZN4ncnnL15vresize_bicubicEPKfS1_S1_S1_Pfiffff.exit.i120: ; preds = %.lr.ph112.i.i122, %middle.block, %vec.epilog.middle.block, %.preheader.i.i118
  %i.euh = getelementptr inbounds nuw i8, ptr %.0970.i, i64 16
  %indvars.iv.next1033.i = add nuw nsw i64 %indvars.iv1032.i, 1 ; 2 uses
  %exitcond1036.not.i = icmp eq i64 %indvars.iv.next1033.i, %wide.trip.count1035.i
  br i1 %exitcond1036.not.i, label %._crit_edge.i110, label %bb.gn, !llvm.loop !259

bb.gv:                                            ; preds = %bb.gm
  %i.eui = atomicrmw add ptr %i.dwa, i32 -1 acq_rel, align 4
  %i.euj = icmp eq i32 %i.eui, 1
  br i1 %i.euj, label %bb.gw, label %_ZN4ncnn3MatD2Ev.exit802.i

bb.gw:                                            ; preds = %bb.gv
  %i.euk = load ptr, ptr %i.bj, align 8, !tbaa !44 ; 3 uses
  %.not3.i825.i = icmp eq ptr %i.euk, null
  %i.eul = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i825.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.eum = load ptr, ptr %i.euk, align 8, !tbaa !9
  %i.eun = getelementptr inbounds nuw i8, ptr %i.eum, i64 24
  %i.euo = load ptr, ptr %i.eun, align 8
  invoke void %i.euo(ptr noundef nonnull align 8 dereferenceable(8) %i.euk, ptr noundef %i.eul)
          to label %_ZN4ncnn3MatD2Ev.exit802.i unwind label %bb.ha, !inline_history !46

bb.gy:                                            ; preds = %bb.gw
  %.not.i839.i = icmp eq ptr %i.eul, null
  br i1 %.not.i839.i, label %_ZN4ncnn3MatD2Ev.exit802.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @free(ptr noundef nonnull %i.eul) #6
  br label %_ZN4ncnn3MatD2Ev.exit802.i

bb.ha:                                            ; preds = %bb.gx
  %i.eup = landingpad { ptr, i32 }
          catch ptr null
  %i.euq = extractvalue { ptr, i32 } %i.eup, 0
  call void @__clang_call_terminate(ptr %i.euq) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit802.i:                       ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gv, %bb.gm, %bb.gl
  %.pn796.pn.pn.i = phi { ptr, i32 } [ %i.dvy, %bb.gl ], [ %i.dvz, %bb.gv ], [ %i.dvz, %bb.gm ], [ %i.dvz, %bb.gx ], [ %i.dvz, %bb.gy ], [ %i.dvz, %bb.gz ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.eur = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not.i828.i = icmp eq ptr %i.eur, null
  br i1 %.not.i828.i, label %_ZN4ncnn3MatD2Ev.exit801.i, label %bb.hb

bb.hb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit802.i
  %i.eus = atomicrmw add ptr %i.eur, i32 -1 acq_rel, align 4
  %i.eut = icmp eq i32 %i.eus, 1
  br i1 %i.eut, label %bb.hc, label %_ZN4ncnn3MatD2Ev.exit801.i

bb.hc:                                            ; preds = %bb.hb
  %i.euu = load ptr, ptr %i.bg, align 8, !tbaa !44 ; 3 uses
  %.not3.i829.i = icmp eq ptr %i.euu, null
  %i.euv = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i829.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.euw = load ptr, ptr %i.euu, align 8, !tbaa !9
  %i.eux = getelementptr inbounds nuw i8, ptr %i.euw, i64 24
  %i.euy = load ptr, ptr %i.eux, align 8
  invoke void %i.euy(ptr noundef nonnull align 8 dereferenceable(8) %i.euu, ptr noundef %i.euv)
          to label %_ZN4ncnn3MatD2Ev.exit801.i unwind label %bb.hg, !inline_history !46

bb.he:                                            ; preds = %bb.hc
  %.not.i837.i = icmp eq ptr %i.euv, null
  br i1 %.not.i837.i, label %_ZN4ncnn3MatD2Ev.exit801.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @free(ptr noundef nonnull %i.euv) #6
  br label %_ZN4ncnn3MatD2Ev.exit801.i

bb.hg:                                            ; preds = %bb.hd
  %i.euz = landingpad { ptr, i32 }
          catch ptr null
  %i.eva = extractvalue { ptr, i32 } %i.euz, 0
  call void @__clang_call_terminate(ptr %i.eva) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit801.i:                       ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hb, %_ZN4ncnn3MatD2Ev.exit802.i, %bb.gk
  %.pn796.pn.pn.pn.i = phi { ptr, i32 } [ %i.dvx, %bb.gk ], [ %.pn796.pn.pn.i, %bb.hb ], [ %.pn796.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit802.i ], [ %.pn796.pn.pn.i, %bb.hd ], [ %.pn796.pn.pn.i, %bb.he ], [ %.pn796.pn.pn.i, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.evb = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 2 uses
  %.not.i832.i = icmp eq ptr %i.evb, null
  br i1 %.not.i832.i, label %_ZN4ncnn3MatD2Ev.exit.i109, label %bb.hh

bb.hh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit801.i
  %i.evc = atomicrmw add ptr %i.evb, i32 -1 acq_rel, align 4
  %i.evd = icmp eq i32 %i.evc, 1
  br i1 %i.evd, label %bb.hi, label %_ZN4ncnn3MatD2Ev.exit.i109

bb.hi:                                            ; preds = %bb.hh
  %i.eve = load ptr, ptr %i.bd, align 8, !tbaa !44 ; 3 uses
  %.not3.i833.i = icmp eq ptr %i.eve, null
  %i.evf = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i833.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.evg = load ptr, ptr %i.eve, align 8, !tbaa !9
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 24
  %i.evi = load ptr, ptr %i.evh, align 8
  invoke void %i.evi(ptr noundef nonnull align 8 dereferenceable(8) %i.eve, ptr noundef %i.evf)
          to label %_ZN4ncnn3MatD2Ev.exit.i109 unwind label %bb.hm, !inline_history !46

bb.hk:                                            ; preds = %bb.hi
  %.not.i836.i = icmp eq ptr %i.evf, null
  br i1 %.not.i836.i, label %_ZN4ncnn3MatD2Ev.exit.i109, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @free(ptr noundef nonnull %i.evf) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i109

bb.hm:                                            ; preds = %bb.hj
  %i.evj = landingpad { ptr, i32 }
          catch ptr null
  %i.evk = extractvalue { ptr, i32 } %i.evj, 0
  call void @__clang_call_terminate(ptr %i.evk) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i109:                       ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.hh, %_ZN4ncnn3MatD2Ev.exit801.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit804.i, %bb.ge, %bb.gg, %bb.gh, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL20resize_bicubic_imageERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.fk
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.evl = load i32, ptr %i.b, align 4, !tbaa !25
  %i.evm = sext i32 %i.evl to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.evm
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.hn

bb.hn:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.ho:                                            ; preds = %bb.fl, %bb.di, %bb.bf, %bb.c
  %i.evn = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i30, %bb.ho, %_ZN4ncnn3MatD2Ev.exit.i109, %_ZN4ncnn3MatD2Ev.exit.i68, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn1000.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i30 ], [ %.pn1596.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i68 ], [ %i.evn, %bb.ho ], [ %.pn796.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i109 ]
  %i.evo = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.evo) #27
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #18
end_hunk_4
begin_hunk_5_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12:bb.a
  %i.cq = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cr = bitcast <16 x i16> %i.cp to <8 x i32>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i32> %i.cs to <16 x float>
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.cv = load <16 x i16>, ptr %i.cu, align 1, !tbaa !17 ; 2 uses
  %i.cw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cz = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.da = bitcast <16 x i16> %i.cy to <8 x i32>
  %i.db = bitcast <16 x i16> %i.cz to <8 x i32>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = shl nsw i32 %i.bx, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.df
  %i.dh = load <16 x i16>, ptr %i.dg, align 1, !tbaa !17 ; 2 uses
  %i.di = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dl = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dm = bitcast <16 x i16> %i.dk to <8 x i32>
  %i.dn = bitcast <16 x i16> %i.dl to <8 x i32>
  %i.do = shufflevector <8 x i32> %i.dm, <8 x i32> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = bitcast <16 x i32> %i.do to <16 x float>
  %i.dq = fmul fast <16 x float> %i.bd, %i.ck
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.dq)
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.dr)
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.ds)
  %i.du = bitcast <16 x float> %i.dt to <16 x i32>
  %i.dv = lshr <16 x i32> %i.du, splat (i32 16)   ; 2 uses
  %i.dw = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dx = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dw, <8 x i32> %i.dx)
  %i.dz = bitcast <16 x i16> %i.dy to <4 x i64>
  %i.ea = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %indvars.iv
  store <4 x i64> %i.ea, ptr %i.eb, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.ec = or disjoint i64 %indvars.iv.next, 15
  %i.ed = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.c, label %.preheader155.loopexit, !llvm.loop !278

.preheader154.loopexit:                           ; preds = %bb.d
  %i.eg = trunc nuw nsw i64 %indvars.iv.next184 to i32
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.loopexit, %.preheader155
  %i.eh = phi i32 [ %i.bl, %.preheader155 ], [ %i.gg, %.preheader154.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0110.lcssa, %.preheader155 ], [ %i.eg, %.preheader154.loopexit ] ; 3 uses
  %i.ei = or disjoint i32 %.1.lcssa, 3
  %i.ej = icmp slt i32 %i.ei, %i.eh
  br i1 %i.ej, label %.lr.ph161, label %.preheader

.lr.ph161:                                        ; preds = %.preheader154
  %i.ek = insertelement <4 x float> poison, float %i.au, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph158, %bb.d
  %indvars.iv183 = phi i64 [ %i.bw, %.lr.ph158 ], [ %indvars.iv.next184, %bb.d ] ; 3 uses
  %i.et = phi i32 [ %i.bl, %.lr.ph158 ], [ %i.gg, %bb.d ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv183 ; 4 uses
  %i.ev = sext i32 %i.et to i64                   ; 2 uses
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load <8 x i16>, ptr %i.ex, align 1, !tbaa !17 ; 2 uses
  %i.ez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ey, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fb = shufflevector <8 x i16> %i.ez, <8 x i16> %i.fa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fc = bitcast <16 x i16> %i.fb to <8 x float>
  %i.fd = load <8 x i16>, ptr %i.eu, align 1, !tbaa !17 ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fg = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fh = bitcast <16 x i16> %i.fg to <8 x float>
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ev
  %i.fj = load <8 x i16>, ptr %i.fi, align 1, !tbaa !17 ; 2 uses
  %i.fk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fm = shufflevector <8 x i16> %i.fk, <8 x i16> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = bitcast <16 x i16> %i.fm to <8 x float>
  %i.fo = shl nsw i32 %i.et, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.fp
  %i.fr = load <8 x i16>, ptr %i.fq, align 1, !tbaa !17 ; 2 uses
  %i.fs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ft = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fu = shufflevector <8 x i16> %i.fs, <8 x i16> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = bitcast <16 x i16> %i.fu to <8 x float>
  %i.fw = fmul fast <8 x float> %i.bp, %i.fc
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.fw)
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.fx)
  %i.fz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.fy)
  %i.ga = bitcast <8 x float> %i.fz to <8 x i32>
  %i.gb = lshr <8 x i32> %i.ga, splat (i32 16)    ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.gb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gd = shufflevector <8 x i32> %i.gb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ge = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gc, <4 x i32> %i.gd)
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %indvars.iv183
  store <8 x i16> %i.ge, ptr %i.gf, align 1, !tbaa !17
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 8 ; 3 uses
  %i.gg = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.gh = trunc i64 %indvars.iv.next184 to i32
  %i.gi = or i32 %i.gh, 7
  %i.gj = icmp slt i32 %i.gi, %i.gg
  br i1 %i.gj, label %bb.d, label %.preheader154.loopexit, !llvm.loop !279

.preheader.loopexit:                              ; preds = %bb.e
  %i.gk = trunc nuw i64 %indvars.iv.next187 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader154
  %i.gl = phi i32 [ %i.eh, %.preheader154 ], [ %i.ld, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader154 ], [ %i.gk, %.preheader.loopexit ] ; 2 uses
  %i.gm = icmp slt i32 %.2.lcssa, %i.gl
  br i1 %i.gm, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre199 = sext i32 %i.gl to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.gn = shl nsw i32 %i.gl, 1
  %i.go = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.gp = sext i32 %i.gl to i64                   ; 11 uses
  %i.gq = sext i32 %i.gn to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.gp ; 3 uses
  %invariant.gep217 = getelementptr [2 x i8], ptr %i.at, i64 %i.gq ; 3 uses
  %i.gr = sub nsw i64 %i.gp, %i.go                ; 7 uses
  %min.iters.check = icmp ult i64 %i.gr, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gs = sub i64 %.0107168222, %i.al             ; 2 uses
  %i.gt = add nsw i64 %i.as, %i.gq
  %i.gu = shl nsw i64 %i.gt, 1
  %i.gv = sub i64 %i.gu, %i.gs
  %diff.check = icmp ugt i64 %i.gv, -64
  %i.gw = add nsw i64 %i.gp, %i.as
  %i.gx = shl nsw i64 %i.gw, 1
  %i.gy = sub i64 %i.gx, %i.gs
  %diff.check223 = icmp ugt i64 %i.gy, -64
  %conflict.rdx = or i1 %diff.check, %diff.check223
  %i.gz = sub i64 %.0107168222, %i.al             ; 2 uses
  %i.ha = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.hb = sub i64 %i.ha, %i.gz
  %diff.check224 = icmp ugt i64 %i.hb, -64
  %conflict.rdx225 = or i1 %conflict.rdx, %diff.check224
  %i.hc = shl nsw i64 %i.gp, 1
  %i.hd = add i64 %i.gz, %i.hc
  %i.he = sub i64 %i.ha, %i.hd
  %diff.check226 = icmp ugt i64 %i.he, -64
  %conflict.rdx227 = or i1 %conflict.rdx225, %diff.check226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %i.gr, 32
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hf = and i64 %i.gr, 24
  %n.vec = and i64 %i.gr, -32                     ; 4 uses
  %i.hg = add nsw i64 %n.vec, %i.go
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat230 = shufflevector <32 x float> %broadcast.splatinsert229, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat232 = shufflevector <32 x float> %broadcast.splatinsert231, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat234 = shufflevector <32 x float> %broadcast.splatinsert233, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hh = add i64 %index, %i.go                   ; 5 uses
  %i.hi = sub nsw i64 %i.hh, %i.gp
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hi
  %wide.load = load <32 x i16>, ptr %i.hj, align 2, !tbaa !269
  %i.hk = zext <32 x i16> %wide.load to <32 x i32>
  %i.hl = shl nuw <32 x i32> %i.hk, splat (i32 16)
  %i.hm = bitcast <32 x i32> %i.hl to <32 x float>
  %i.hn = fmul fast <32 x float> %broadcast.splat, %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hh
  %wide.load235 = load <32 x i16>, ptr %i.ho, align 2, !tbaa !269
  %i.hp = zext <32 x i16> %wide.load235 to <32 x i32>
  %i.hq = shl nuw <32 x i32> %i.hp, splat (i32 16)
  %i.hr = bitcast <32 x i32> %i.hq to <32 x float>
  %i.hs = fmul fast <32 x float> %broadcast.splat230, %i.hr
  %i.ht = fadd fast <32 x float> %i.hn, %i.hs
  %i.hu = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hh
  %wide.load236 = load <32 x i16>, ptr %i.hu, align 2, !tbaa !269
  %i.hv = zext <32 x i16> %wide.load236 to <32 x i32>
  %i.hw = shl nuw <32 x i32> %i.hv, splat (i32 16)
  %i.hx = bitcast <32 x i32> %i.hw to <32 x float>
  %i.hy = fmul fast <32 x float> %broadcast.splat232, %i.hx
  %i.hz = fadd fast <32 x float> %i.ht, %i.hy
  %i.ia = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.hh
  %wide.load237 = load <32 x i16>, ptr %i.ia, align 2, !tbaa !269
  %i.ib = zext <32 x i16> %wide.load237 to <32 x i32>
  %i.ic = shl nuw <32 x i32> %i.ib, splat (i32 16)
  %i.id = bitcast <32 x i32> %i.ic to <32 x float>
  %i.ie = fmul fast <32 x float> %broadcast.splat234, %i.id
  %i.if = fadd fast <32 x float> %i.hz, %i.ie
  %i.ig = bitcast <32 x float> %i.if to <32 x i32>
  %i.ih = lshr <32 x i32> %i.ig, splat (i32 16)
  %i.ii = trunc nuw <32 x i32> %i.ih to <32 x i16>
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %i.hh
  store <32 x i16> %i.ii, ptr %i.ij, align 2, !tbaa !269
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !272

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %i.gr, -8                   ; 3 uses
  %i.il = add nsw i64 %n.vec238, %i.go
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat246 = shufflevector <8 x float> %broadcast.splatinsert245, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next252, %vec.epilog.vector.body ] ; 2 uses
  %i.im = add i64 %index247, %i.go                ; 5 uses
  %i.in = sub nsw i64 %i.im, %i.gp
  %i.io = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.in
  %wide.load248 = load <8 x i16>, ptr %i.io, align 2, !tbaa !269
  %i.ip = zext <8 x i16> %wide.load248 to <8 x i32>
  %i.iq = shl nuw <8 x i32> %i.ip, splat (i32 16)
  %i.ir = bitcast <8 x i32> %i.iq to <8 x float>
  %i.is = fmul fast <8 x float> %broadcast.splat240, %i.ir
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.im
  %wide.load249 = load <8 x i16>, ptr %i.it, align 2, !tbaa !269
  %i.iu = zext <8 x i16> %wide.load249 to <8 x i32>
  %i.iv = shl nuw <8 x i32> %i.iu, splat (i32 16)
  %i.iw = bitcast <8 x i32> %i.iv to <8 x float>
  %i.ix = fmul fast <8 x float> %broadcast.splat242, %i.iw
  %i.iy = fadd fast <8 x float> %i.is, %i.ix
  %i.iz = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.im
  %wide.load250 = load <8 x i16>, ptr %i.iz, align 2, !tbaa !269
  %i.ja = zext <8 x i16> %wide.load250 to <8 x i32>
  %i.jb = shl nuw <8 x i32> %i.ja, splat (i32 16)
  %i.jc = bitcast <8 x i32> %i.jb to <8 x float>
  %i.jd = fmul fast <8 x float> %broadcast.splat244, %i.jc
  %i.je = fadd fast <8 x float> %i.iy, %i.jd
  %i.jf = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.im
  %wide.load251 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !269
  %i.jg = zext <8 x i16> %wide.load251 to <8 x i32>
  %i.jh = shl nuw <8 x i32> %i.jg, splat (i32 16)
  %i.ji = bitcast <8 x i32> %i.jh to <8 x float>
  %i.jj = fmul fast <8 x float> %broadcast.splat246, %i.ji
  %i.jk = fadd fast <8 x float> %i.je, %i.jj
  %i.jl = bitcast <8 x float> %i.jk to <8 x i32>
  %i.jm = lshr <8 x i32> %i.jl, splat (i32 16)
  %i.jn = trunc nuw <8 x i32> %i.jm to <8 x i16>
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %i.im
  store <8 x i16> %i.jn, ptr %i.jo, align 2, !tbaa !269
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next252, %n.vec238
  br i1 %i.jp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n253 = icmp eq i64 %i.gr, %n.vec238
  br i1 %cmp.n253, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.go, %iter.check ], [ %i.go, %vector.memcheck ], [ %i.hg, %vec.epilog.iter.check ], [ %i.il, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph161, %bb.e
  %indvars.iv186 = phi i64 [ %i.es, %.lr.ph161 ], [ %indvars.iv.next187, %bb.e ] ; 3 uses
  %i.jq = phi i32 [ %i.eh, %.lr.ph161 ], [ %i.ld, %bb.e ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv186 ; 4 uses
  %i.js = sext i32 %i.jq to i64                   ; 2 uses
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = load i64, ptr %i.ju, align 1, !tbaa !17
  %i.jw = insertelement <2 x i64> poison, i64 %i.jv, i64 0
  %i.jx = bitcast <2 x i64> %i.jw to <8 x i16>
  %i.jy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jz = bitcast <8 x i16> %i.jy to <4 x float>
  %i.ka = load i64, ptr %i.jr, align 1, !tbaa !17
  %i.kb = insertelement <2 x i64> poison, i64 %i.ka, i64 0
  %i.kc = bitcast <2 x i64> %i.kb to <8 x i16>
  %i.kd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ke = bitcast <8 x i16> %i.kd to <4 x float>
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.js
  %i.kg = load i64, ptr %i.kf, align 1, !tbaa !17
  %i.kh = insertelement <2 x i64> poison, i64 %i.kg, i64 0
  %i.ki = bitcast <2 x i64> %i.kh to <8 x i16>
  %i.kj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ki, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kk = bitcast <8 x i16> %i.kj to <4 x float>
  %i.kl = shl nsw i32 %i.jq, 1
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 1, !tbaa !17
  %i.kp = insertelement <2 x i64> poison, i64 %i.ko, i64 0
  %i.kq = bitcast <2 x i64> %i.kp to <8 x i16>
  %i.kr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ks = bitcast <8 x i16> %i.kr to <4 x float>
  %i.kt = fmul fast <4 x float> %i.el, %i.jz
  %i.ku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.kt)
  %i.kv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kk, <4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.ku)
  %i.kw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ks, <4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.kv)
  %i.kx = bitcast <4 x float> %i.kw to <4 x i32>
  %i.ky = lshr <4 x i32> %i.kx, splat (i32 16)
  %i.kz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ky, <4 x i32> poison)
  %i.la = bitcast <8 x i16> %i.kz to <2 x i64>
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %indvars.iv186
  %i.lc = extractelement <2 x i64> %i.la, i64 0
  store i64 %i.lc, ptr %i.lb, align 1, !tbaa !17
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 4 ; 3 uses
  %i.ld = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.le = trunc i64 %indvars.iv.next187 to i32
  %i.lf = or i32 %i.le, 3
  %i.lg = icmp slt i32 %i.lf, %i.ld
  br i1 %i.lg, label %bb.e, label %.preheader.loopexit, !llvm.loop !282

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %vec.epilog.scalar.ph ], [ %indvars.iv189.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.lh = sub nsw i64 %indvars.iv189, %i.gp
  %i.li = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !269
  %i.lk = zext i16 %i.lj to i32
  %i.ll = shl nuw i32 %i.lk, 16
  %i.lm = bitcast i32 %i.ll to float
  %i.ln = fmul fast float %i.au, %i.lm
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv189
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !269
  %i.lq = zext i16 %i.lp to i32
  %i.lr = shl nuw i32 %i.lq, 16
  %i.ls = bitcast i32 %i.lr to float
  %i.lt = fmul fast float %i.aw, %i.ls
  %i.lu = fadd fast float %i.ln, %i.lt
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv189
  %i.lv = load i16, ptr %gep, align 2, !tbaa !269
  %i.lw = zext i16 %i.lv to i32
  %i.lx = shl nuw i32 %i.lw, 16
  %i.ly = bitcast i32 %i.lx to float
  %i.lz = fmul fast float %i.ay, %i.ly
  %i.ma = fadd fast float %i.lu, %i.lz
  %gep218 = getelementptr [2 x i8], ptr %invariant.gep217, i64 %indvars.iv189
  %i.mb = load i16, ptr %gep218, align 2, !tbaa !269
  %i.mc = zext i16 %i.mb to i32
  %i.md = shl nuw i32 %i.mc, 16
  %i.me = bitcast i32 %i.md to float
  %i.mf = fmul fast float %i.ba, %i.me
  %i.mg = fadd fast float %i.ma, %i.mf
  %i.mh = bitcast float %i.mg to i32
  %i.mi = lshr i32 %i.mh, 16
  %i.mj = trunc nuw i32 %i.mi to i16
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %.0107168, i64 %indvars.iv189
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !269
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next190, %i.gp
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !283

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre199, %.preheader.._crit_edge_crit_edge ], [ %i.gp, %middle.block ], [ %i.gp, %vec.epilog.middle.block ], [ %i.gp, %vec.epilog.scalar.ph ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.0108167, i64 16
  %i.mm = getelementptr inbounds [2 x i8], ptr %.0107168, i64 %.pre-phi
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.mn = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next193, %i.mo
  br i1 %i.mp, label %.lr.ph170, label %._crit_edge171, !llvm.loop !284

._crit_edge176:                                   ; preds = %._crit_edge171, %.lr.ph175, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge176, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #11 personality ptr @__gxx_personality_v0 {
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !285
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !285
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !285 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !288
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !288
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !288 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !288
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !285
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
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !291

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
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !292

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
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !293

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
end_hunk_5
begin_hunk_6_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.15:bb.a
  %i.zj = load <16 x i16>, ptr %i.zi, align 1, !tbaa !17 ; 2 uses
  %i.zk = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.zj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.zl = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.zj, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.zm = shufflevector <16 x i16> %i.zk, <16 x i16> %i.zl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.zn = shufflevector <16 x i16> %i.zk, <16 x i16> %i.zl, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zo = bitcast <16 x i16> %i.zm to <8 x i32>
  %i.zp = bitcast <16 x i16> %i.zn to <8 x i32>
  %i.zq = shufflevector <8 x i32> %i.zo, <8 x i32> %i.zp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zr = bitcast <16 x i32> %i.zq to <16 x float>
  %i.zs = fmul fast <16 x float> %i.so, %i.yo
  %i.zt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.yx, <16 x float> nofpclass(nan inf) %i.ss, <16 x float> nofpclass(nan inf) %i.zs)
  %i.zu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zh, <16 x float> nofpclass(nan inf) %i.sw, <16 x float> nofpclass(nan inf) %i.zt)
  %i.zv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zr, <16 x float> nofpclass(nan inf) %i.ta, <16 x float> nofpclass(nan inf) %i.zu)
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.0290447.i, i64 %i.tb
  store <16 x float> %i.zv, ptr %i.zw, align 64, !tbaa !17
  %i.zx = getelementptr inbounds nuw i8, ptr %.0303431.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread425.3.i, !llvm.loop !357

.loopexit.i:                                      ; preds = %.thread425.3.i, %bb.al, %.lr.ph441.i, %.lr.ph444.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1291.i = phi ptr [ %.0290447.i, %bb.ae ], [ %.0284450.i, %bb.ag ], [ %.0286449.i, %bb.ai ], [ %.0288448.i, %bb.ak ], [ %.0290447.i, %bb.am ], [ %.0288448.i, %bb.al ], [ %.0284450.i, %.lr.ph444.i ], [ %.0286449.i, %.lr.ph441.i ], [ %.0290447.i, %.thread425.3.i ] ; 7 uses
  %.1289.i = phi ptr [ %.0288448.i, %bb.ae ], [ %.0290447.i, %bb.ag ], [ %.0284450.i, %bb.ai ], [ %.0286449.i, %bb.ak ], [ %.0288448.i, %bb.am ], [ %.0286449.i, %bb.al ], [ %.0290447.i, %.lr.ph444.i ], [ %.0284450.i, %.lr.ph441.i ], [ %.0288448.i, %.thread425.3.i ] ; 7 uses
  %.1287.i = phi ptr [ %.0286449.i, %bb.ae ], [ %.0288448.i, %bb.ag ], [ %.0290447.i, %bb.ai ], [ %.0284450.i, %bb.ak ], [ %.0286449.i, %bb.am ], [ %.0284450.i, %bb.al ], [ %.0288448.i, %.lr.ph444.i ], [ %.0290447.i, %.lr.ph441.i ], [ %.0286449.i, %.thread425.3.i ] ; 7 uses
  %.1285.i = phi ptr [ %.0284450.i, %bb.ae ], [ %.0286449.i, %bb.ag ], [ %.0288448.i, %bb.ai ], [ %.0290447.i, %bb.ak ], [ %.0284450.i, %bb.am ], [ %.0290447.i, %bb.al ], [ %.0286449.i, %.lr.ph444.i ], [ %.0288448.i, %.lr.ph441.i ], [ %.0284450.i, %.thread425.3.i ] ; 7 uses
  %i.zy = mul i64 %i.cu, %indvars.iv473.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.zy ; 6 uses
  %i.aaa = load float, ptr %.0451.i, align 4, !tbaa !70 ; 6 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.0451.i, i64 4
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !70 ; 6 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0451.i, i64 8
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !70 ; 6 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0451.i, i64 12
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !70 ; 6 uses
  %i.aah = insertelement <16 x float> poison, float %i.aaa, i64 0
  %i.aai = shufflevector <16 x float> %i.aah, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aaj = insertelement <16 x float> poison, float %i.aac, i64 0
  %i.aak = shufflevector <16 x float> %i.aaj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aal = insertelement <16 x float> poison, float %i.aae, i64 0
  %i.aam = shufflevector <16 x float> %i.aal, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aan = insertelement <16 x float> poison, float %i.aag, i64 0
  %i.aao = shufflevector <16 x float> %i.aan, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv.i.i
  %i.aaq = load <16 x float>, ptr %i.aap, align 1, !tbaa !17
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv.i.i
  %i.aas = load <16 x float>, ptr %i.aar, align 1, !tbaa !17
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv.i.i
  %i.aau = load <16 x float>, ptr %i.aat, align 1, !tbaa !17
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv.i.i
  %i.aaw = load <16 x float>, ptr %i.aav, align 1, !tbaa !17
  %i.aax = fmul fast <16 x float> %i.aaq, %i.aai
  %i.aay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aas, <16 x float> nofpclass(nan inf) %i.aak, <16 x float> nofpclass(nan inf) %i.aax)
  %i.aaz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aau, <16 x float> nofpclass(nan inf) %i.aam, <16 x float> nofpclass(nan inf) %i.aay)
  %i.aba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aaw, <16 x float> nofpclass(nan inf) %i.aao, <16 x float> nofpclass(nan inf) %i.aaz)
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %indvars.iv.i.i
  %i.abc = bitcast <16 x float> %i.aba to <16 x i32>
  %i.abd = lshr <16 x i32> %i.abc, splat (i32 16) ; 2 uses
  %i.abe = shufflevector <16 x i32> %i.abd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abf = shufflevector <16 x i32> %i.abd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abg = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.abe, <8 x i32> %i.abf)
  %i.abh = bitcast <16 x i16> %i.abg to <4 x i64>
  %i.abi = shufflevector <4 x i64> %i.abh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.abi, ptr %i.abb, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 16 ; 3 uses
  %i.abj = or disjoint i64 %indvars.iv.next.i.i, 15
  %i.abk = icmp samesign ult i64 %i.abj, %i.ct
  br i1 %i.abk, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !358

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.abl = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.abl, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.abm = insertelement <8 x float> poison, float %i.aaa, i64 0
  %i.abn = shufflevector <8 x float> %i.abm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abo = insertelement <8 x float> poison, float %i.aac, i64 0
  %i.abp = shufflevector <8 x float> %i.abo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abq = insertelement <8 x float> poison, float %i.aae, i64 0
  %i.abr = shufflevector <8 x float> %i.abq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abs = insertelement <8 x float> poison, float %i.aag, i64 0
  %i.abt = shufflevector <8 x float> %i.abs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abu = or disjoint i32 %.0.lcssa.i.i, 7
  %i.abv = icmp slt i32 %i.abu, %i.cs
  br i1 %i.abv, label %.lr.ph104.preheader.i.i, label %._crit_edge105.i.i

.lr.ph104.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %i.abw = zext nneg i32 %.0.lcssa.i.i to i64
  br label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.lr.ph104.i.i, %.lr.ph104.preheader.i.i
  %indvars.iv117.i.i = phi i64 [ %i.abw, %.lr.ph104.preheader.i.i ], [ %indvars.iv.next118.i.i, %.lr.ph104.i.i ] ; 6 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv117.i.i
  %i.aby = load <8 x float>, ptr %i.abx, align 1, !tbaa !17
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv117.i.i
  %i.aca = load <8 x float>, ptr %i.abz, align 1, !tbaa !17
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv117.i.i
  %i.acc = load <8 x float>, ptr %i.acb, align 1, !tbaa !17
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv117.i.i
  %i.ace = load <8 x float>, ptr %i.acd, align 1, !tbaa !17
  %i.acf = fmul fast <8 x float> %i.aby, %i.abn
  %i.acg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aca, <8 x float> nofpclass(nan inf) %i.abp, <8 x float> nofpclass(nan inf) %i.acf)
  %i.ach = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acc, <8 x float> nofpclass(nan inf) %i.abr, <8 x float> nofpclass(nan inf) %i.acg)
  %i.aci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ace, <8 x float> nofpclass(nan inf) %i.abt, <8 x float> nofpclass(nan inf) %i.ach)
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %indvars.iv117.i.i
  %i.ack = bitcast <8 x float> %i.aci to <8 x i32>
  %i.acl = lshr <8 x i32> %i.ack, splat (i32 16)  ; 2 uses
  %i.acm = shufflevector <8 x i32> %i.acl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.acn = shufflevector <8 x i32> %i.acl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aco = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.acm, <4 x i32> %i.acn)
  store <8 x i16> %i.aco, ptr %i.acj, align 1, !tbaa !17
  %indvars.iv.next118.i.i = add nuw nsw i64 %indvars.iv117.i.i, 8 ; 3 uses
  %i.acp = icmp slt i64 %indvars.iv.next118.i.i, %invariant.op.i.i
  br i1 %i.acp, label %.lr.ph104.i.i, label %._crit_edge105.loopexit.i.i, !llvm.loop !359

._crit_edge105.loopexit.i.i:                      ; preds = %.lr.ph104.i.i
  %i.acq = trunc nuw nsw i64 %indvars.iv.next118.i.i to i32
  br label %._crit_edge105.i.i

._crit_edge105.i.i:                               ; preds = %._crit_edge105.loopexit.i.i, %._crit_edge.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.acq, %._crit_edge105.loopexit.i.i ] ; 3 uses
  %i.acr = insertelement <4 x float> poison, float %i.aaa, i64 0
  %i.acs = shufflevector <4 x float> %i.acr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.act = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.acu = shufflevector <4 x float> %i.act, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acv = insertelement <4 x float> poison, float %i.aae, i64 0
  %i.acw = shufflevector <4 x float> %i.acv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acx = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.acy = shufflevector <4 x float> %i.acx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acz = or disjoint i32 %.1.lcssa.i.i, 3
  %i.ada = icmp slt i32 %i.acz, %i.cs
  br i1 %i.ada, label %.lr.ph109.preheader.i.i, label %.preheader.i.i

.lr.ph109.preheader.i.i:                          ; preds = %._crit_edge105.i.i
  %i.adb = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph109.i.i

.preheader.i.i:                                   ; preds = %.lr.ph109.i.i, %._crit_edge105.i.i
  %.2.lcssa.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge105.i.i ], [ %i.ahe, %.lr.ph109.i.i ] ; 3 uses
  %i.adc = icmp slt i32 %.2.lcssa.i.i, %i.cs
  br i1 %i.adc, label %iter.check994, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

iter.check994:                                    ; preds = %.preheader.i.i
  %i.add = zext i32 %.2.lcssa.i.i to i64          ; 5 uses
  %i.ade = xor i32 %.2.lcssa.i.i, -1
  %i.adf = add i32 %i.cs, %i.ade                  ; 3 uses
  %i.adg = zext i32 %i.adf to i64
  %i.adh = add nuw nsw i64 %i.adg, 1              ; 5 uses
  %min.iters.check959 = icmp ult i32 %i.adf, 7
  br i1 %min.iters.check959, label %.lr.ph112.i.i.preheader, label %vector.main.loop.iter.check960

vector.main.loop.iter.check960:                   ; preds = %iter.check994
  %min.iters.check961 = icmp ult i32 %i.adf, 63
  br i1 %min.iters.check961, label %vec.epilog.ph998, label %vector.ph962

vector.ph962:                                     ; preds = %vector.main.loop.iter.check960
  %i.adi = and i64 %i.adh, 56
  %n.vec963 = and i64 %i.adh, 8589934528          ; 4 uses
  %i.adj = add nuw nsw i64 %n.vec963, %i.add
  %broadcast.splatinsert964 = insertelement <16 x float> poison, float %i.aaa, i64 0
  %broadcast.splat965 = shufflevector <16 x float> %broadcast.splatinsert964, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert966 = insertelement <16 x float> poison, float %i.aac, i64 0
  %broadcast.splat967 = shufflevector <16 x float> %broadcast.splatinsert966, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert968 = insertelement <16 x float> poison, float %i.aae, i64 0
  %broadcast.splat969 = shufflevector <16 x float> %broadcast.splatinsert968, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert970 = insertelement <16 x float> poison, float %i.aag, i64 0
  %broadcast.splat971 = shufflevector <16 x float> %broadcast.splatinsert970, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph962
  %index973 = phi i64 [ 0, %vector.ph962 ], [ %index.next990, %vector.body972 ] ; 2 uses
  %i.adk = add nuw i64 %index973, %i.add          ; 5 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %i.adk ; 4 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 64
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 128
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 192
  %wide.load974 = load <16 x float>, ptr %i.adl, align 4, !tbaa !70
  %wide.load975 = load <16 x float>, ptr %i.adm, align 4, !tbaa !70
  %wide.load976 = load <16 x float>, ptr %i.adn, align 4, !tbaa !70
  %wide.load977 = load <16 x float>, ptr %i.ado, align 4, !tbaa !70
  %i.adp = fmul fast <16 x float> %wide.load974, %broadcast.splat965
  %i.adq = fmul fast <16 x float> %wide.load975, %broadcast.splat965
  %i.adr = fmul fast <16 x float> %wide.load976, %broadcast.splat965
  %i.ads = fmul fast <16 x float> %wide.load977, %broadcast.splat965
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %i.adk ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 64
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 128
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adt, i64 192
  %wide.load978 = load <16 x float>, ptr %i.adt, align 4, !tbaa !70
  %wide.load979 = load <16 x float>, ptr %i.adu, align 4, !tbaa !70
  %wide.load980 = load <16 x float>, ptr %i.adv, align 4, !tbaa !70
  %wide.load981 = load <16 x float>, ptr %i.adw, align 4, !tbaa !70
  %i.adx = fmul fast <16 x float> %wide.load978, %broadcast.splat967
  %i.ady = fmul fast <16 x float> %wide.load979, %broadcast.splat967
  %i.adz = fmul fast <16 x float> %wide.load980, %broadcast.splat967
  %i.aea = fmul fast <16 x float> %wide.load981, %broadcast.splat967
  %i.aeb = fadd fast <16 x float> %i.adp, %i.adx
  %i.aec = fadd fast <16 x float> %i.adq, %i.ady
  %i.aed = fadd fast <16 x float> %i.adr, %i.adz
  %i.aee = fadd fast <16 x float> %i.ads, %i.aea
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %i.adk ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 64
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 128
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 192
  %wide.load982 = load <16 x float>, ptr %i.aef, align 4, !tbaa !70
  %wide.load983 = load <16 x float>, ptr %i.aeg, align 4, !tbaa !70
  %wide.load984 = load <16 x float>, ptr %i.aeh, align 4, !tbaa !70
  %wide.load985 = load <16 x float>, ptr %i.aei, align 4, !tbaa !70
  %i.aej = fmul fast <16 x float> %wide.load982, %broadcast.splat969
  %i.aek = fmul fast <16 x float> %wide.load983, %broadcast.splat969
  %i.ael = fmul fast <16 x float> %wide.load984, %broadcast.splat969
  %i.aem = fmul fast <16 x float> %wide.load985, %broadcast.splat969
  %i.aen = fadd fast <16 x float> %i.aeb, %i.aej
  %i.aeo = fadd fast <16 x float> %i.aec, %i.aek
  %i.aep = fadd fast <16 x float> %i.aed, %i.ael
  %i.aeq = fadd fast <16 x float> %i.aee, %i.aem
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %i.adk ; 4 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 64
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 128
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 192
  %wide.load986 = load <16 x float>, ptr %i.aer, align 4, !tbaa !70
  %wide.load987 = load <16 x float>, ptr %i.aes, align 4, !tbaa !70
  %wide.load988 = load <16 x float>, ptr %i.aet, align 4, !tbaa !70
  %wide.load989 = load <16 x float>, ptr %i.aeu, align 4, !tbaa !70
  %i.aev = fmul fast <16 x float> %wide.load986, %broadcast.splat971
  %i.aew = fmul fast <16 x float> %wide.load987, %broadcast.splat971
  %i.aex = fmul fast <16 x float> %wide.load988, %broadcast.splat971
  %i.aey = fmul fast <16 x float> %wide.load989, %broadcast.splat971
  %i.aez = fadd fast <16 x float> %i.aen, %i.aev
  %i.afa = fadd fast <16 x float> %i.aeo, %i.aew
  %i.afb = fadd fast <16 x float> %i.aep, %i.aex
  %i.afc = fadd fast <16 x float> %i.aeq, %i.aey
  %i.afd = bitcast <16 x float> %i.aez to <16 x i32>
  %i.afe = bitcast <16 x float> %i.afa to <16 x i32>
  %i.aff = bitcast <16 x float> %i.afb to <16 x i32>
  %i.afg = bitcast <16 x float> %i.afc to <16 x i32>
  %i.afh = lshr <16 x i32> %i.afd, splat (i32 16)
  %i.afi = lshr <16 x i32> %i.afe, splat (i32 16)
  %i.afj = lshr <16 x i32> %i.aff, splat (i32 16)
  %i.afk = lshr <16 x i32> %i.afg, splat (i32 16)
  %i.afl = trunc nuw <16 x i32> %i.afh to <16 x i16>
  %i.afm = trunc nuw <16 x i32> %i.afi to <16 x i16>
  %i.afn = trunc nuw <16 x i32> %i.afj to <16 x i16>
  %i.afo = trunc nuw <16 x i32> %i.afk to <16 x i16>
  %i.afp = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %i.adk ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 64
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 96
  store <16 x i16> %i.afl, ptr %i.afp, align 2, !tbaa !269
  store <16 x i16> %i.afm, ptr %i.afq, align 2, !tbaa !269
  store <16 x i16> %i.afn, ptr %i.afr, align 2, !tbaa !269
  store <16 x i16> %i.afo, ptr %i.afs, align 2, !tbaa !269
  %index.next990 = add nuw i64 %index973, 64      ; 2 uses
  %i.aft = icmp eq i64 %index.next990, %n.vec963
  br i1 %i.aft, label %middle.block991, label %vector.body972, !llvm.loop !360

middle.block991:                                  ; preds = %vector.body972
  %cmp.n992 = icmp eq i64 %i.adh, %n.vec963
  br i1 %cmp.n992, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %vec.epilog.iter.check996

vec.epilog.iter.check996:                         ; preds = %middle.block991
  %min.epilog.iters.check997 = icmp eq i64 %i.adi, 0
  br i1 %min.epilog.iters.check997, label %.lr.ph112.i.i.preheader, label %vec.epilog.ph998, !prof !107

vec.epilog.ph998:                                 ; preds = %vector.main.loop.iter.check960, %vec.epilog.iter.check996
  %vec.epilog.resume.val993 = phi i64 [ %n.vec963, %vec.epilog.iter.check996 ], [ 0, %vector.main.loop.iter.check960 ]
  %n.vec999 = and i64 %i.adh, 8589934584          ; 3 uses
  %i.afu = add nuw nsw i64 %n.vec999, %i.add
  %broadcast.splatinsert1000 = insertelement <8 x float> poison, float %i.aaa, i64 0
  %broadcast.splat1001 = shufflevector <8 x float> %broadcast.splatinsert1000, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1002 = insertelement <8 x float> poison, float %i.aac, i64 0
  %broadcast.splat1003 = shufflevector <8 x float> %broadcast.splatinsert1002, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1004 = insertelement <8 x float> poison, float %i.aae, i64 0
  %broadcast.splat1005 = shufflevector <8 x float> %broadcast.splatinsert1004, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1006 = insertelement <8 x float> poison, float %i.aag, i64 0
  %broadcast.splat1007 = shufflevector <8 x float> %broadcast.splatinsert1006, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1008

vec.epilog.vector.body1008:                       ; preds = %vec.epilog.vector.body1008, %vec.epilog.ph998
  %index1009 = phi i64 [ %vec.epilog.resume.val993, %vec.epilog.ph998 ], [ %index.next1014, %vec.epilog.vector.body1008 ] ; 2 uses
  %i.afv = add nuw i64 %index1009, %i.add         ; 5 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %i.afv
  %wide.load1010 = load <8 x float>, ptr %i.afw, align 4, !tbaa !70
  %i.afx = fmul fast <8 x float> %wide.load1010, %broadcast.splat1001
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %i.afv
  %wide.load1011 = load <8 x float>, ptr %i.afy, align 4, !tbaa !70
  %i.afz = fmul fast <8 x float> %wide.load1011, %broadcast.splat1003
  %i.aga = fadd fast <8 x float> %i.afx, %i.afz
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %i.afv
  %wide.load1012 = load <8 x float>, ptr %i.agb, align 4, !tbaa !70
  %i.agc = fmul fast <8 x float> %wide.load1012, %broadcast.splat1005
  %i.agd = fadd fast <8 x float> %i.aga, %i.agc
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %i.afv
  %wide.load1013 = load <8 x float>, ptr %i.age, align 4, !tbaa !70
  %i.agf = fmul fast <8 x float> %wide.load1013, %broadcast.splat1007
  %i.agg = fadd fast <8 x float> %i.agd, %i.agf
  %i.agh = bitcast <8 x float> %i.agg to <8 x i32>
  %i.agi = lshr <8 x i32> %i.agh, splat (i32 16)
  %i.agj = trunc nuw <8 x i32> %i.agi to <8 x i16>
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %i.afv
  store <8 x i16> %i.agj, ptr %i.agk, align 2, !tbaa !269
  %index.next1014 = add nuw i64 %index1009, 8     ; 2 uses
  %i.agl = icmp eq i64 %index.next1014, %n.vec999
  br i1 %i.agl, label %vec.epilog.middle.block1015, label %vec.epilog.vector.body1008, !llvm.loop !361

vec.epilog.middle.block1015:                      ; preds = %vec.epilog.vector.body1008
  %cmp.n1016 = icmp eq i64 %i.adh, %n.vec999
  br i1 %cmp.n1016, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph112.i.i.preheader

.lr.ph112.i.i.preheader:                          ; preds = %iter.check994, %vec.epilog.iter.check996, %vec.epilog.middle.block1015
  %indvars.iv123.i.i.ph = phi i64 [ %i.add, %iter.check994 ], [ %i.adj, %vec.epilog.iter.check996 ], [ %i.afu, %vec.epilog.middle.block1015 ]
  br label %.lr.ph112.i.i

.lr.ph109.i.i:                                    ; preds = %.lr.ph109.i.i, %.lr.ph109.preheader.i.i
  %indvars.iv120.i.i = phi i64 [ %i.adb, %.lr.ph109.preheader.i.i ], [ %indvars.iv.next121.i.i, %.lr.ph109.i.i ] ; 6 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv120.i.i
  %i.agn = load <4 x float>, ptr %i.agm, align 1, !tbaa !17
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv120.i.i
  %i.agp = load <4 x float>, ptr %i.ago, align 1, !tbaa !17
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv120.i.i
  %i.agr = load <4 x float>, ptr %i.agq, align 1, !tbaa !17
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv120.i.i
  %i.agt = load <4 x float>, ptr %i.ags, align 1, !tbaa !17
  %i.agu = fmul fast <4 x float> %i.agn, %i.acs
  %i.agv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agp, <4 x float> nofpclass(nan inf) %i.acu, <4 x float> nofpclass(nan inf) %i.agu)
  %i.agw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> nofpclass(nan inf) %i.acw, <4 x float> nofpclass(nan inf) %i.agv)
  %i.agx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agt, <4 x float> nofpclass(nan inf) %i.acy, <4 x float> nofpclass(nan inf) %i.agw)
  %i.agy = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %indvars.iv120.i.i
  %i.agz = bitcast <4 x float> %i.agx to <4 x i32>
  %i.aha = lshr <4 x i32> %i.agz, splat (i32 16)
  %i.ahb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aha, <4 x i32> poison)
  %i.ahc = bitcast <8 x i16> %i.ahb to <2 x i64>
  %i.ahd = extractelement <2 x i64> %i.ahc, i64 0
  store i64 %i.ahd, ptr %i.agy, align 1, !tbaa !17
  %indvars.iv.next121.i.i = add nuw nsw i64 %indvars.iv120.i.i, 4 ; 2 uses
  %i.ahe = trunc i64 %indvars.iv.next121.i.i to i32 ; 2 uses
  %i.ahf = or i32 %i.ahe, 3
  %i.ahg = icmp slt i32 %i.ahf, %i.cs
  br i1 %i.ahg, label %.lr.ph109.i.i, label %.preheader.i.i, !llvm.loop !362

.lr.ph112.i.i:                                    ; preds = %.lr.ph112.i.i.preheader, %.lr.ph112.i.i
  %indvars.iv123.i.i = phi i64 [ %indvars.iv.next124.i.i, %.lr.ph112.i.i ], [ %indvars.iv123.i.i.ph, %.lr.ph112.i.i.preheader ] ; 6 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %.1285.i, i64 %indvars.iv123.i.i
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !70
  %i.ahj = fmul fast float %i.ahi, %i.aaa
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %.1287.i, i64 %indvars.iv123.i.i
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !70
  %i.ahm = fmul fast float %i.ahl, %i.aac
  %i.ahn = fadd fast float %i.ahj, %i.ahm
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %.1289.i, i64 %indvars.iv123.i.i
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !70
  %i.ahq = fmul fast float %i.ahp, %i.aae
  %i.ahr = fadd fast float %i.ahn, %i.ahq
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.1291.i, i64 %indvars.iv123.i.i
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !70
  %i.ahu = fmul fast float %i.aht, %i.aag
  %i.ahv = fadd fast float %i.ahr, %i.ahu
  %i.ahw = bitcast float %i.ahv to i32
  %i.ahx = lshr i32 %i.ahw, 16
  %i.ahy = trunc nuw i32 %i.ahx to i16
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %indvars.iv123.i.i
  store i16 %i.ahy, ptr %i.ahz, align 2, !tbaa !269
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %i.aia = trunc nuw i64 %indvars.iv.next124.i.i to i32
  %i.aib = icmp sgt i32 %i.cs, %i.aia
  br i1 %i.aib, label %.lr.ph112.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, !llvm.loop !363

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph112.i.i, %middle.block991, %vec.epilog.middle.block1015, %.preheader.i.i
  %i.aic = getelementptr inbounds nuw i8, ptr %.0451.i, i64 16
  %indvars.iv.next474.i = add nuw nsw i64 %indvars.iv473.i, 1 ; 2 uses
  %exitcond477.not.i = icmp eq i64 %indvars.iv.next474.i, %wide.trip.count476.i
  br i1 %exitcond477.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !364

bb.an:                                            ; preds = %bb.ad
  %i.aid = atomicrmw add ptr %i.en, i32 -1 acq_rel, align 4
  %i.aie = icmp eq i32 %i.aid, 1
  br i1 %i.aie, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit332.i

bb.ao:                                            ; preds = %bb.an
  %i.aif = load ptr, ptr %i.z, align 8, !tbaa !44 ; 3 uses
  %.not3.i355.i = icmp eq ptr %i.aif, null
  %i.aig = load ptr, ptr %24, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i355.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.aih = load ptr, ptr %i.aif, align 8, !tbaa !9
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 24
  %i.aij = load ptr, ptr %i.aii, align 8
  invoke void %i.aij(ptr noundef nonnull align 8 dereferenceable(8) %i.aif, ptr noundef %i.aig)
          to label %_ZN4ncnn3MatD2Ev.exit332.i unwind label %bb.as, !inline_history !46

bb.aq:                                            ; preds = %bb.ao
  %.not.i369.i = icmp eq ptr %i.aig, null
  br i1 %.not.i369.i, label %_ZN4ncnn3MatD2Ev.exit332.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.aig) #6
  br label %_ZN4ncnn3MatD2Ev.exit332.i

bb.as:                                            ; preds = %bb.ap
  %i.aik = landingpad { ptr, i32 }
          catch ptr null
  %i.ail = extractvalue { ptr, i32 } %i.aik, 0
  call void @__clang_call_terminate(ptr %i.ail) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit332.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn326.pn.pn.i = phi { ptr, i32 } [ %i.el, %bb.ac ], [ %i.em, %bb.an ], [ %i.em, %bb.ad ], [ %i.em, %bb.ap ], [ %i.em, %bb.aq ], [ %i.em, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #6
  %i.aim = load ptr, ptr %i.v, align 8, !tbaa !43 ; 2 uses
  %.not.i358.i = icmp eq ptr %i.aim, null
  br i1 %.not.i358.i, label %_ZN4ncnn3MatD2Ev.exit331.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit332.i
  %i.ain = atomicrmw add ptr %i.aim, i32 -1 acq_rel, align 4
  %i.aio = icmp eq i32 %i.ain, 1
  br i1 %i.aio, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit331.i

bb.au:                                            ; preds = %bb.at
  %i.aip = load ptr, ptr %i.w, align 8, !tbaa !44 ; 3 uses
  %.not3.i359.i = icmp eq ptr %i.aip, null
  %i.aiq = load ptr, ptr %23, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i359.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.air = load ptr, ptr %i.aip, align 8, !tbaa !9
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 24
  %i.ait = load ptr, ptr %i.ais, align 8
  invoke void %i.ait(ptr noundef nonnull align 8 dereferenceable(8) %i.aip, ptr noundef %i.aiq)
          to label %_ZN4ncnn3MatD2Ev.exit331.i unwind label %bb.ay, !inline_history !46

bb.aw:                                            ; preds = %bb.au
  %.not.i367.i = icmp eq ptr %i.aiq, null
  br i1 %.not.i367.i, label %_ZN4ncnn3MatD2Ev.exit331.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %i.aiq) #6
  br label %_ZN4ncnn3MatD2Ev.exit331.i

bb.ay:                                            ; preds = %bb.av
  %i.aiu = landingpad { ptr, i32 }
          catch ptr null
  %i.aiv = extractvalue { ptr, i32 } %i.aiu, 0
  call void @__clang_call_terminate(ptr %i.aiv) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit331.i:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at, %_ZN4ncnn3MatD2Ev.exit332.i, %bb.ab
  %.pn326.pn.pn.pn.i = phi { ptr, i32 } [ %i.ek, %bb.ab ], [ %.pn326.pn.pn.i, %bb.at ], [ %.pn326.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit332.i ], [ %.pn326.pn.pn.i, %bb.av ], [ %.pn326.pn.pn.i, %bb.aw ], [ %.pn326.pn.pn.i, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #6
  %i.aiw = load ptr, ptr %i.s, align 8, !tbaa !43 ; 2 uses
  %.not.i362.i = icmp eq ptr %i.aiw, null
  br i1 %.not.i362.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit331.i
  %i.aix = atomicrmw add ptr %i.aiw, i32 -1 acq_rel, align 4
  %i.aiy = icmp eq i32 %i.aix, 1
  br i1 %i.aiy, label %bb.ba, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.aiz = load ptr, ptr %i.t, align 8, !tbaa !44 ; 3 uses
  %.not3.i363.i = icmp eq ptr %i.aiz, null
  %i.aja = load ptr, ptr %22, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i363.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ajb = load ptr, ptr %i.aiz, align 8, !tbaa !9
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  %i.ajd = load ptr, ptr %i.ajc, align 8
  invoke void %i.ajd(ptr noundef nonnull align 8 dereferenceable(8) %i.aiz, ptr noundef %i.aja)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.be, !inline_history !46

bb.bc:                                            ; preds = %bb.ba
  %.not.i366.i = icmp eq ptr %i.aja, null
  br i1 %.not.i366.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.aja) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.be:                                            ; preds = %bb.bb
  %i.aje = landingpad { ptr, i32 }
          catch ptr null
  %i.ajf = extractvalue { ptr, i32 } %i.aje, 0
  call void @__clang_call_terminate(ptr %i.ajf) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %_ZN4ncnn3MatD2Ev.exit331.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #6
  br label %.body

_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit334.i, %bb.v, %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #6
  %.pr = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ajg = phi i32 [ %.pr, %_ZN4ncnnL33resize_bicubic_image_pack16_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.cg, %_ZNK4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.ajh = icmp eq i32 %i.ajg, 8
  br i1 %i.ajh, label %bb.bg, label %bb.dj

bb.bg:                                            ; preds = %bb.bf
  %i.aji = load ptr, ptr %6, align 8, !tbaa !72   ; 4 uses
  %i.ajj = load ptr, ptr %7, align 8, !tbaa !71   ; 4 uses
  %i.ajk = load ptr, ptr %8, align 8, !tbaa !72
  %i.ajl = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  store i64 0, ptr %i.ag, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.af, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %18, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %.noexc75 unwind label %bb.hr

.noexc75:                                         ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #6
  store i64 0, ptr %i.aj, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %19, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %19, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i unwind label %bb.cf

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i:      ; preds = %.noexc75
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #6
  store i64 0, ptr %i.am, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %20, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %20, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i unwind label %bb.cg

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit375.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #6
  store i64 0, ptr %i.ap, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %21, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %21, i32 noundef %i.bx, i64 noundef 32, i32 noundef 8, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31 unwind label %bb.ch

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit373.i
  %i.ajm = icmp sgt i32 %i.by, 0
  br i1 %i.ajm, label %.lr.ph489.i, label %._crit_edge.i32

.lr.ph489.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i31
  %i.ajn = load ptr, ptr %21, align 8, !tbaa !45
  %i.ajo = load ptr, ptr %20, align 8, !tbaa !45
  %i.ajp = load ptr, ptr %19, align 8, !tbaa !45
  %i.ajq = load ptr, ptr %18, align 8, !tbaa !45
  %i.ajr = icmp sgt i32 %i.bx, 0                  ; 4 uses
  %i.ajs = shl i32 %i.bx, 3                       ; 7 uses
  %i.ajt = icmp sgt i32 %i.bx, 1
  %i.aju = zext nneg i32 %i.ajs to i64            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.15:bb.a
  %i.bag = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bae, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bah = shufflevector <8 x i16> %i.baf, <8 x i16> %i.bag, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bai = bitcast <16 x i16> %i.bah to <8 x float>
  %i.baj = getelementptr inbounds nuw i8, ptr %gep.3.i71, i64 32
  %i.bak = load <8 x i16>, ptr %i.baj, align 1, !tbaa !17 ; 2 uses
  %i.bal = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bam = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ban = shufflevector <8 x i16> %i.bal, <8 x i16> %i.bam, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bao = bitcast <16 x i16> %i.ban to <8 x float>
  %i.bap = fmul fast <8 x float> %i.avx, %i.azx
  %i.baq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bac, <8 x float> nofpclass(nan inf) %i.awb, <8 x float> nofpclass(nan inf) %i.bap)
  %i.bar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bai, <8 x float> nofpclass(nan inf) %i.awf, <8 x float> nofpclass(nan inf) %i.baq)
  %i.bas = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bao, <8 x float> nofpclass(nan inf) %i.awj, <8 x float> nofpclass(nan inf) %i.bar)
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %.0261484.i, i64 %i.awk
  store <8 x float> %i.bas, ptr %i.bat, align 32, !tbaa !17
  %i.bau = getelementptr inbounds nuw i8, ptr %.0269468.i, i64 16
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i35
  br i1 %exitcond.not.i73, label %.loopexit.i36, label %.thread462.3.i, !llvm.loop !368

.loopexit.i36:                                    ; preds = %.thread462.3.i, %bb.cp, %.lr.ph478.i, %.lr.ph481.i, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci
  %.1262.i = phi ptr [ %.0261484.i, %bb.ci ], [ %.0255487.i, %bb.ck ], [ %.0257486.i, %bb.cm ], [ %.0259485.i, %bb.co ], [ %.0261484.i, %bb.cq ], [ %.0259485.i, %bb.cp ], [ %.0255487.i, %.lr.ph481.i ], [ %.0257486.i, %.lr.ph478.i ], [ %.0261484.i, %.thread462.3.i ] ; 7 uses
  %.1260.i = phi ptr [ %.0259485.i, %bb.ci ], [ %.0261484.i, %bb.ck ], [ %.0255487.i, %bb.cm ], [ %.0257486.i, %bb.co ], [ %.0259485.i, %bb.cq ], [ %.0257486.i, %bb.cp ], [ %.0261484.i, %.lr.ph481.i ], [ %.0255487.i, %.lr.ph478.i ], [ %.0259485.i, %.thread462.3.i ] ; 7 uses
  %.1258.i = phi ptr [ %.0257486.i, %bb.ci ], [ %.0259485.i, %bb.ck ], [ %.0261484.i, %bb.cm ], [ %.0255487.i, %bb.co ], [ %.0257486.i, %bb.cq ], [ %.0255487.i, %bb.cp ], [ %.0259485.i, %.lr.ph481.i ], [ %.0261484.i, %.lr.ph478.i ], [ %.0257486.i, %.thread462.3.i ] ; 7 uses
  %.1256.i = phi ptr [ %.0255487.i, %bb.ci ], [ %.0257486.i, %bb.ck ], [ %.0259485.i, %bb.cm ], [ %.0261484.i, %bb.co ], [ %.0255487.i, %bb.cq ], [ %.0261484.i, %bb.cp ], [ %.0257486.i, %.lr.ph481.i ], [ %.0259485.i, %.lr.ph478.i ], [ %.0255487.i, %.thread462.3.i ] ; 7 uses
  %i.bav = mul i64 %i.ajv, %indvars.iv510.i
  %i.baw = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bav ; 6 uses
  %i.bax = load float, ptr %.0488.i, align 4, !tbaa !70 ; 6 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %.0488.i, i64 4
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !70 ; 6 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.0488.i, i64 8
  %i.bbb = load float, ptr %i.bba, align 4, !tbaa !70 ; 6 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.0488.i, i64 12
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !70 ; 6 uses
  %i.bbe = insertelement <16 x float> poison, float %i.bax, i64 0
  %i.bbf = shufflevector <16 x float> %i.bbe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bbg = insertelement <16 x float> poison, float %i.baz, i64 0
  %i.bbh = shufflevector <16 x float> %i.bbg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bbi = insertelement <16 x float> poison, float %i.bbb, i64 0
  %i.bbj = shufflevector <16 x float> %i.bbi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bbk = insertelement <16 x float> poison, float %i.bbd, i64 0
  %i.bbl = shufflevector <16 x float> %i.bbk, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.ajt, label %.lr.ph.i.i57, label %._crit_edge.i.i37

.lr.ph.i.i57:                                     ; preds = %.loopexit.i36, %.lr.ph.i.i57
  %indvars.iv.i.i58 = phi i64 [ %indvars.iv.next.i.i59, %.lr.ph.i.i57 ], [ 0, %.loopexit.i36 ] ; 6 uses
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv.i.i58
  %i.bbn = load <16 x float>, ptr %i.bbm, align 1, !tbaa !17
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv.i.i58
  %i.bbp = load <16 x float>, ptr %i.bbo, align 1, !tbaa !17
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv.i.i58
  %i.bbr = load <16 x float>, ptr %i.bbq, align 1, !tbaa !17
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv.i.i58
  %i.bbt = load <16 x float>, ptr %i.bbs, align 1, !tbaa !17
  %i.bbu = fmul fast <16 x float> %i.bbn, %i.bbf
  %i.bbv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbp, <16 x float> nofpclass(nan inf) %i.bbh, <16 x float> nofpclass(nan inf) %i.bbu)
  %i.bbw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbr, <16 x float> nofpclass(nan inf) %i.bbj, <16 x float> nofpclass(nan inf) %i.bbv)
  %i.bbx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bbt, <16 x float> nofpclass(nan inf) %i.bbl, <16 x float> nofpclass(nan inf) %i.bbw)
  %i.bby = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %indvars.iv.i.i58
  %i.bbz = bitcast <16 x float> %i.bbx to <16 x i32>
  %i.bca = lshr <16 x i32> %i.bbz, splat (i32 16) ; 2 uses
  %i.bcb = shufflevector <16 x i32> %i.bca, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bcc = shufflevector <16 x i32> %i.bca, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcd = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bcb, <8 x i32> %i.bcc)
  %i.bce = bitcast <16 x i16> %i.bcd to <4 x i64>
  %i.bcf = shufflevector <4 x i64> %i.bce, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bcf, ptr %i.bby, align 1, !tbaa !17
  %indvars.iv.next.i.i59 = add nuw nsw i64 %indvars.iv.i.i58, 16 ; 3 uses
  %i.bcg = or disjoint i64 %indvars.iv.next.i.i59, 15
  %i.bch = icmp samesign ult i64 %i.bcg, %i.aju
  br i1 %i.bch, label %.lr.ph.i.i57, label %._crit_edge.loopexit.i.i60, !llvm.loop !358

._crit_edge.loopexit.i.i60:                       ; preds = %.lr.ph.i.i57
  %i.bci = trunc nuw nsw i64 %indvars.iv.next.i.i59 to i32
  br label %._crit_edge.i.i37

._crit_edge.i.i37:                                ; preds = %._crit_edge.loopexit.i.i60, %.loopexit.i36
  %.0.lcssa.i.i38 = phi i32 [ 0, %.loopexit.i36 ], [ %i.bci, %._crit_edge.loopexit.i.i60 ] ; 3 uses
  %i.bcj = insertelement <8 x float> poison, float %i.bax, i64 0
  %i.bck = shufflevector <8 x float> %i.bcj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcl = insertelement <8 x float> poison, float %i.baz, i64 0
  %i.bcm = shufflevector <8 x float> %i.bcl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcn = insertelement <8 x float> poison, float %i.bbb, i64 0
  %i.bco = shufflevector <8 x float> %i.bcn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcp = insertelement <8 x float> poison, float %i.bbd, i64 0
  %i.bcq = shufflevector <8 x float> %i.bcp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bcr = or disjoint i32 %.0.lcssa.i.i38, 7
  %i.bcs = icmp slt i32 %i.bcr, %i.ajs
  br i1 %i.bcs, label %.lr.ph104.preheader.i.i52, label %._crit_edge105.i.i39

.lr.ph104.preheader.i.i52:                        ; preds = %._crit_edge.i.i37
  %i.bct = zext nneg i32 %.0.lcssa.i.i38 to i64
  br label %.lr.ph104.i.i53

.lr.ph104.i.i53:                                  ; preds = %.lr.ph104.i.i53, %.lr.ph104.preheader.i.i52
  %indvars.iv117.i.i54 = phi i64 [ %i.bct, %.lr.ph104.preheader.i.i52 ], [ %indvars.iv.next118.i.i55, %.lr.ph104.i.i53 ] ; 6 uses
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv117.i.i54
  %i.bcv = load <8 x float>, ptr %i.bcu, align 1, !tbaa !17
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv117.i.i54
  %i.bcx = load <8 x float>, ptr %i.bcw, align 1, !tbaa !17
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv117.i.i54
  %i.bcz = load <8 x float>, ptr %i.bcy, align 1, !tbaa !17
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv117.i.i54
  %i.bdb = load <8 x float>, ptr %i.bda, align 1, !tbaa !17
  %i.bdc = fmul fast <8 x float> %i.bcv, %i.bck
  %i.bdd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcx, <8 x float> nofpclass(nan inf) %i.bcm, <8 x float> nofpclass(nan inf) %i.bdc)
  %i.bde = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcz, <8 x float> nofpclass(nan inf) %i.bco, <8 x float> nofpclass(nan inf) %i.bdd)
  %i.bdf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdb, <8 x float> nofpclass(nan inf) %i.bcq, <8 x float> nofpclass(nan inf) %i.bde)
  %i.bdg = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %indvars.iv117.i.i54
  %i.bdh = bitcast <8 x float> %i.bdf to <8 x i32>
  %i.bdi = lshr <8 x i32> %i.bdh, splat (i32 16)  ; 2 uses
  %i.bdj = shufflevector <8 x i32> %i.bdi, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdk = shufflevector <8 x i32> %i.bdi, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bdj, <4 x i32> %i.bdk)
  store <8 x i16> %i.bdl, ptr %i.bdg, align 1, !tbaa !17
  %indvars.iv.next118.i.i55 = add nuw nsw i64 %indvars.iv117.i.i54, 8 ; 3 uses
  %i.bdm = icmp slt i64 %indvars.iv.next118.i.i55, %invariant.op.i.i34
  br i1 %i.bdm, label %.lr.ph104.i.i53, label %._crit_edge105.loopexit.i.i56, !llvm.loop !359

._crit_edge105.loopexit.i.i56:                    ; preds = %.lr.ph104.i.i53
  %i.bdn = trunc nuw nsw i64 %indvars.iv.next118.i.i55 to i32
  br label %._crit_edge105.i.i39

._crit_edge105.i.i39:                             ; preds = %._crit_edge105.loopexit.i.i56, %._crit_edge.i.i37
  %.1.lcssa.i.i40 = phi i32 [ %.0.lcssa.i.i38, %._crit_edge.i.i37 ], [ %i.bdn, %._crit_edge105.loopexit.i.i56 ] ; 3 uses
  %i.bdo = insertelement <4 x float> poison, float %i.bax, i64 0
  %i.bdp = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdq = insertelement <4 x float> poison, float %i.baz, i64 0
  %i.bdr = shufflevector <4 x float> %i.bdq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bds = insertelement <4 x float> poison, float %i.bbb, i64 0
  %i.bdt = shufflevector <4 x float> %i.bds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdu = insertelement <4 x float> poison, float %i.bbd, i64 0
  %i.bdv = shufflevector <4 x float> %i.bdu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdw = or disjoint i32 %.1.lcssa.i.i40, 3
  %i.bdx = icmp slt i32 %i.bdw, %i.ajs
  br i1 %i.bdx, label %.lr.ph109.preheader.i.i48, label %.preheader.i.i41

.lr.ph109.preheader.i.i48:                        ; preds = %._crit_edge105.i.i39
  %i.bdy = zext nneg i32 %.1.lcssa.i.i40 to i64
  br label %.lr.ph109.i.i49

.preheader.i.i41:                                 ; preds = %.lr.ph109.i.i49, %._crit_edge105.i.i39
  %.2.lcssa.i.i42 = phi i32 [ %.1.lcssa.i.i40, %._crit_edge105.i.i39 ], [ %i.bib, %.lr.ph109.i.i49 ] ; 3 uses
  %i.bdz = icmp slt i32 %.2.lcssa.i.i42, %i.ajs
  br i1 %i.bdz, label %iter.check935, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i43

iter.check935:                                    ; preds = %.preheader.i.i41
  %i.bea = zext i32 %.2.lcssa.i.i42 to i64        ; 5 uses
  %i.beb = xor i32 %.2.lcssa.i.i42, -1
  %i.bec = add i32 %i.ajs, %i.beb                 ; 3 uses
  %i.bed = zext i32 %i.bec to i64
  %i.bee = add nuw nsw i64 %i.bed, 1              ; 5 uses
  %min.iters.check900 = icmp ult i32 %i.bec, 7
  br i1 %min.iters.check900, label %.lr.ph112.i.i45.preheader, label %vector.main.loop.iter.check901

vector.main.loop.iter.check901:                   ; preds = %iter.check935
  %min.iters.check902 = icmp ult i32 %i.bec, 63
  br i1 %min.iters.check902, label %vec.epilog.ph939, label %vector.ph903

vector.ph903:                                     ; preds = %vector.main.loop.iter.check901
  %i.bef = and i64 %i.bee, 56
  %n.vec904 = and i64 %i.bee, 8589934528          ; 4 uses
  %i.beg = add nuw nsw i64 %n.vec904, %i.bea
  %broadcast.splatinsert905 = insertelement <16 x float> poison, float %i.bax, i64 0
  %broadcast.splat906 = shufflevector <16 x float> %broadcast.splatinsert905, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert907 = insertelement <16 x float> poison, float %i.baz, i64 0
  %broadcast.splat908 = shufflevector <16 x float> %broadcast.splatinsert907, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert909 = insertelement <16 x float> poison, float %i.bbb, i64 0
  %broadcast.splat910 = shufflevector <16 x float> %broadcast.splatinsert909, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert911 = insertelement <16 x float> poison, float %i.bbd, i64 0
  %broadcast.splat912 = shufflevector <16 x float> %broadcast.splatinsert911, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph903
  %index914 = phi i64 [ 0, %vector.ph903 ], [ %index.next931, %vector.body913 ] ; 2 uses
  %i.beh = add nuw i64 %index914, %i.bea          ; 5 uses
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.beh ; 4 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 64
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 128
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 192
  %wide.load915 = load <16 x float>, ptr %i.bei, align 4, !tbaa !70
  %wide.load916 = load <16 x float>, ptr %i.bej, align 4, !tbaa !70
  %wide.load917 = load <16 x float>, ptr %i.bek, align 4, !tbaa !70
  %wide.load918 = load <16 x float>, ptr %i.bel, align 4, !tbaa !70
  %i.bem = fmul fast <16 x float> %wide.load915, %broadcast.splat906
  %i.ben = fmul fast <16 x float> %wide.load916, %broadcast.splat906
  %i.beo = fmul fast <16 x float> %wide.load917, %broadcast.splat906
  %i.bep = fmul fast <16 x float> %wide.load918, %broadcast.splat906
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %i.beh ; 4 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 64
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beq, i64 128
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beq, i64 192
  %wide.load919 = load <16 x float>, ptr %i.beq, align 4, !tbaa !70
  %wide.load920 = load <16 x float>, ptr %i.ber, align 4, !tbaa !70
  %wide.load921 = load <16 x float>, ptr %i.bes, align 4, !tbaa !70
  %wide.load922 = load <16 x float>, ptr %i.bet, align 4, !tbaa !70
  %i.beu = fmul fast <16 x float> %wide.load919, %broadcast.splat908
  %i.bev = fmul fast <16 x float> %wide.load920, %broadcast.splat908
  %i.bew = fmul fast <16 x float> %wide.load921, %broadcast.splat908
  %i.bex = fmul fast <16 x float> %wide.load922, %broadcast.splat908
  %i.bey = fadd fast <16 x float> %i.bem, %i.beu
  %i.bez = fadd fast <16 x float> %i.ben, %i.bev
  %i.bfa = fadd fast <16 x float> %i.beo, %i.bew
  %i.bfb = fadd fast <16 x float> %i.bep, %i.bex
  %i.bfc = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %i.beh ; 4 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 64
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 128
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfc, i64 192
  %wide.load923 = load <16 x float>, ptr %i.bfc, align 4, !tbaa !70
  %wide.load924 = load <16 x float>, ptr %i.bfd, align 4, !tbaa !70
  %wide.load925 = load <16 x float>, ptr %i.bfe, align 4, !tbaa !70
  %wide.load926 = load <16 x float>, ptr %i.bff, align 4, !tbaa !70
  %i.bfg = fmul fast <16 x float> %wide.load923, %broadcast.splat910
  %i.bfh = fmul fast <16 x float> %wide.load924, %broadcast.splat910
  %i.bfi = fmul fast <16 x float> %wide.load925, %broadcast.splat910
  %i.bfj = fmul fast <16 x float> %wide.load926, %broadcast.splat910
  %i.bfk = fadd fast <16 x float> %i.bey, %i.bfg
  %i.bfl = fadd fast <16 x float> %i.bez, %i.bfh
  %i.bfm = fadd fast <16 x float> %i.bfa, %i.bfi
  %i.bfn = fadd fast <16 x float> %i.bfb, %i.bfj
  %i.bfo = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %i.beh ; 4 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 64
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 128
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfo, i64 192
  %wide.load927 = load <16 x float>, ptr %i.bfo, align 4, !tbaa !70
  %wide.load928 = load <16 x float>, ptr %i.bfp, align 4, !tbaa !70
  %wide.load929 = load <16 x float>, ptr %i.bfq, align 4, !tbaa !70
  %wide.load930 = load <16 x float>, ptr %i.bfr, align 4, !tbaa !70
  %i.bfs = fmul fast <16 x float> %wide.load927, %broadcast.splat912
  %i.bft = fmul fast <16 x float> %wide.load928, %broadcast.splat912
  %i.bfu = fmul fast <16 x float> %wide.load929, %broadcast.splat912
  %i.bfv = fmul fast <16 x float> %wide.load930, %broadcast.splat912
  %i.bfw = fadd fast <16 x float> %i.bfk, %i.bfs
  %i.bfx = fadd fast <16 x float> %i.bfl, %i.bft
  %i.bfy = fadd fast <16 x float> %i.bfm, %i.bfu
  %i.bfz = fadd fast <16 x float> %i.bfn, %i.bfv
  %i.bga = bitcast <16 x float> %i.bfw to <16 x i32>
  %i.bgb = bitcast <16 x float> %i.bfx to <16 x i32>
  %i.bgc = bitcast <16 x float> %i.bfy to <16 x i32>
  %i.bgd = bitcast <16 x float> %i.bfz to <16 x i32>
  %i.bge = lshr <16 x i32> %i.bga, splat (i32 16)
  %i.bgf = lshr <16 x i32> %i.bgb, splat (i32 16)
  %i.bgg = lshr <16 x i32> %i.bgc, splat (i32 16)
  %i.bgh = lshr <16 x i32> %i.bgd, splat (i32 16)
  %i.bgi = trunc nuw <16 x i32> %i.bge to <16 x i16>
  %i.bgj = trunc nuw <16 x i32> %i.bgf to <16 x i16>
  %i.bgk = trunc nuw <16 x i32> %i.bgg to <16 x i16>
  %i.bgl = trunc nuw <16 x i32> %i.bgh to <16 x i16>
  %i.bgm = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %i.beh ; 4 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 32
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 64
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgm, i64 96
  store <16 x i16> %i.bgi, ptr %i.bgm, align 2, !tbaa !269
  store <16 x i16> %i.bgj, ptr %i.bgn, align 2, !tbaa !269
  store <16 x i16> %i.bgk, ptr %i.bgo, align 2, !tbaa !269
  store <16 x i16> %i.bgl, ptr %i.bgp, align 2, !tbaa !269
  %index.next931 = add nuw i64 %index914, 64      ; 2 uses
  %i.bgq = icmp eq i64 %index.next931, %n.vec904
  br i1 %i.bgq, label %middle.block932, label %vector.body913, !llvm.loop !369

middle.block932:                                  ; preds = %vector.body913
  %cmp.n933 = icmp eq i64 %i.bee, %n.vec904
  br i1 %cmp.n933, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i43, label %vec.epilog.iter.check937

vec.epilog.iter.check937:                         ; preds = %middle.block932
  %min.epilog.iters.check938 = icmp eq i64 %i.bef, 0
  br i1 %min.epilog.iters.check938, label %.lr.ph112.i.i45.preheader, label %vec.epilog.ph939, !prof !107

vec.epilog.ph939:                                 ; preds = %vector.main.loop.iter.check901, %vec.epilog.iter.check937
  %vec.epilog.resume.val934 = phi i64 [ %n.vec904, %vec.epilog.iter.check937 ], [ 0, %vector.main.loop.iter.check901 ]
  %n.vec940 = and i64 %i.bee, 8589934584          ; 3 uses
  %i.bgr = add nuw nsw i64 %n.vec940, %i.bea
  %broadcast.splatinsert941 = insertelement <8 x float> poison, float %i.bax, i64 0
  %broadcast.splat942 = shufflevector <8 x float> %broadcast.splatinsert941, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert943 = insertelement <8 x float> poison, float %i.baz, i64 0
  %broadcast.splat944 = shufflevector <8 x float> %broadcast.splatinsert943, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert945 = insertelement <8 x float> poison, float %i.bbb, i64 0
  %broadcast.splat946 = shufflevector <8 x float> %broadcast.splatinsert945, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert947 = insertelement <8 x float> poison, float %i.bbd, i64 0
  %broadcast.splat948 = shufflevector <8 x float> %broadcast.splatinsert947, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body949

vec.epilog.vector.body949:                        ; preds = %vec.epilog.vector.body949, %vec.epilog.ph939
  %index950 = phi i64 [ %vec.epilog.resume.val934, %vec.epilog.ph939 ], [ %index.next955, %vec.epilog.vector.body949 ] ; 2 uses
  %i.bgs = add nuw i64 %index950, %i.bea          ; 5 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %i.bgs
  %wide.load951 = load <8 x float>, ptr %i.bgt, align 4, !tbaa !70
  %i.bgu = fmul fast <8 x float> %wide.load951, %broadcast.splat942
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %i.bgs
  %wide.load952 = load <8 x float>, ptr %i.bgv, align 4, !tbaa !70
  %i.bgw = fmul fast <8 x float> %wide.load952, %broadcast.splat944
  %i.bgx = fadd fast <8 x float> %i.bgu, %i.bgw
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %i.bgs
  %wide.load953 = load <8 x float>, ptr %i.bgy, align 4, !tbaa !70
  %i.bgz = fmul fast <8 x float> %wide.load953, %broadcast.splat946
  %i.bha = fadd fast <8 x float> %i.bgx, %i.bgz
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %i.bgs
  %wide.load954 = load <8 x float>, ptr %i.bhb, align 4, !tbaa !70
  %i.bhc = fmul fast <8 x float> %wide.load954, %broadcast.splat948
  %i.bhd = fadd fast <8 x float> %i.bha, %i.bhc
  %i.bhe = bitcast <8 x float> %i.bhd to <8 x i32>
  %i.bhf = lshr <8 x i32> %i.bhe, splat (i32 16)
  %i.bhg = trunc nuw <8 x i32> %i.bhf to <8 x i16>
  %i.bhh = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %i.bgs
  store <8 x i16> %i.bhg, ptr %i.bhh, align 2, !tbaa !269
  %index.next955 = add nuw i64 %index950, 8       ; 2 uses
  %i.bhi = icmp eq i64 %index.next955, %n.vec940
  br i1 %i.bhi, label %vec.epilog.middle.block956, label %vec.epilog.vector.body949, !llvm.loop !370

vec.epilog.middle.block956:                       ; preds = %vec.epilog.vector.body949
  %cmp.n957 = icmp eq i64 %i.bee, %n.vec940
  br i1 %cmp.n957, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i43, label %.lr.ph112.i.i45.preheader

.lr.ph112.i.i45.preheader:                        ; preds = %iter.check935, %vec.epilog.iter.check937, %vec.epilog.middle.block956
  %indvars.iv123.i.i46.ph = phi i64 [ %i.bea, %iter.check935 ], [ %i.beg, %vec.epilog.iter.check937 ], [ %i.bgr, %vec.epilog.middle.block956 ]
  br label %.lr.ph112.i.i45

.lr.ph109.i.i49:                                  ; preds = %.lr.ph109.i.i49, %.lr.ph109.preheader.i.i48
  %indvars.iv120.i.i50 = phi i64 [ %i.bdy, %.lr.ph109.preheader.i.i48 ], [ %indvars.iv.next121.i.i51, %.lr.ph109.i.i49 ] ; 6 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv120.i.i50
  %i.bhk = load <4 x float>, ptr %i.bhj, align 1, !tbaa !17
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv120.i.i50
  %i.bhm = load <4 x float>, ptr %i.bhl, align 1, !tbaa !17
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv120.i.i50
  %i.bho = load <4 x float>, ptr %i.bhn, align 1, !tbaa !17
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv120.i.i50
  %i.bhq = load <4 x float>, ptr %i.bhp, align 1, !tbaa !17
  %i.bhr = fmul fast <4 x float> %i.bhk, %i.bdp
  %i.bhs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhm, <4 x float> nofpclass(nan inf) %i.bdr, <4 x float> nofpclass(nan inf) %i.bhr)
  %i.bht = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bho, <4 x float> nofpclass(nan inf) %i.bdt, <4 x float> nofpclass(nan inf) %i.bhs)
  %i.bhu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhq, <4 x float> nofpclass(nan inf) %i.bdv, <4 x float> nofpclass(nan inf) %i.bht)
  %i.bhv = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %indvars.iv120.i.i50
  %i.bhw = bitcast <4 x float> %i.bhu to <4 x i32>
  %i.bhx = lshr <4 x i32> %i.bhw, splat (i32 16)
  %i.bhy = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bhx, <4 x i32> poison)
  %i.bhz = bitcast <8 x i16> %i.bhy to <2 x i64>
  %i.bia = extractelement <2 x i64> %i.bhz, i64 0
  store i64 %i.bia, ptr %i.bhv, align 1, !tbaa !17
  %indvars.iv.next121.i.i51 = add nuw nsw i64 %indvars.iv120.i.i50, 4 ; 2 uses
  %i.bib = trunc i64 %indvars.iv.next121.i.i51 to i32 ; 2 uses
  %i.bic = or i32 %i.bib, 3
  %i.bid = icmp slt i32 %i.bic, %i.ajs
  br i1 %i.bid, label %.lr.ph109.i.i49, label %.preheader.i.i41, !llvm.loop !362

.lr.ph112.i.i45:                                  ; preds = %.lr.ph112.i.i45.preheader, %.lr.ph112.i.i45
  %indvars.iv123.i.i46 = phi i64 [ %indvars.iv.next124.i.i47, %.lr.ph112.i.i45 ], [ %indvars.iv123.i.i46.ph, %.lr.ph112.i.i45.preheader ] ; 6 uses
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %.1256.i, i64 %indvars.iv123.i.i46
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !70
  %i.big = fmul fast float %i.bif, %i.bax
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %.1258.i, i64 %indvars.iv123.i.i46
  %i.bii = load float, ptr %i.bih, align 4, !tbaa !70
  %i.bij = fmul fast float %i.bii, %i.baz
  %i.bik = fadd fast float %i.big, %i.bij
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %.1260.i, i64 %indvars.iv123.i.i46
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !70
  %i.bin = fmul fast float %i.bim, %i.bbb
  %i.bio = fadd fast float %i.bik, %i.bin
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.1262.i, i64 %indvars.iv123.i.i46
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !70
  %i.bir = fmul fast float %i.biq, %i.bbd
  %i.bis = fadd fast float %i.bio, %i.bir
  %i.bit = bitcast float %i.bis to i32
  %i.biu = lshr i32 %i.bit, 16
  %i.biv = trunc nuw i32 %i.biu to i16
  %i.biw = getelementptr inbounds nuw [2 x i8], ptr %i.baw, i64 %indvars.iv123.i.i46
  store i16 %i.biv, ptr %i.biw, align 2, !tbaa !269
  %indvars.iv.next124.i.i47 = add nuw nsw i64 %indvars.iv123.i.i46, 1 ; 2 uses
  %i.bix = trunc nuw i64 %indvars.iv.next124.i.i47 to i32
  %i.biy = icmp sgt i32 %i.ajs, %i.bix
  br i1 %i.biy, label %.lr.ph112.i.i45, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i43, !llvm.loop !371

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i43: ; preds = %.lr.ph112.i.i45, %middle.block932, %vec.epilog.middle.block956, %.preheader.i.i41
  %i.biz = getelementptr inbounds nuw i8, ptr %.0488.i, i64 16
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %exitcond514.not.i = icmp eq i64 %indvars.iv.next511.i, %wide.trip.count513.i
  br i1 %exitcond514.not.i, label %._crit_edge.i32, label %bb.ci, !llvm.loop !372

bb.cr:                                            ; preds = %bb.ch
  %i.bja = atomicrmw add ptr %i.alo, i32 -1 acq_rel, align 4
  %i.bjb = icmp eq i32 %i.bja, 1
  br i1 %i.bjb, label %bb.cs, label %_ZN4ncnn3MatD2Ev.exit322.i

bb.cs:                                            ; preds = %bb.cr
  %i.bjc = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %.not3.i345.i = icmp eq ptr %i.bjc, null
  %i.bjd = load ptr, ptr %20, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i345.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bje = load ptr, ptr %i.bjc, align 8, !tbaa !9
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 24
  %i.bjg = load ptr, ptr %i.bjf, align 8
  invoke void %i.bjg(ptr noundef nonnull align 8 dereferenceable(8) %i.bjc, ptr noundef %i.bjd)
          to label %_ZN4ncnn3MatD2Ev.exit322.i unwind label %bb.cw, !inline_history !46

bb.cu:                                            ; preds = %bb.cs
  %.not.i359.i = icmp eq ptr %i.bjd, null
  br i1 %.not.i359.i, label %_ZN4ncnn3MatD2Ev.exit322.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef nonnull %i.bjd) #6
  br label %_ZN4ncnn3MatD2Ev.exit322.i

bb.cw:                                            ; preds = %bb.ct
  %i.bjh = landingpad { ptr, i32 }
          catch ptr null
  %i.bji = extractvalue { ptr, i32 } %i.bjh, 0
  call void @__clang_call_terminate(ptr %i.bji) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit322.i:                       ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.ch, %bb.cg
  %.pn316.pn.pn.i = phi { ptr, i32 } [ %i.alm, %bb.cg ], [ %i.aln, %bb.cr ], [ %i.aln, %bb.ch ], [ %i.aln, %bb.ct ], [ %i.aln, %bb.cu ], [ %i.aln, %bb.cv ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #6
  %i.bjj = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.not.i348.i = icmp eq ptr %i.bjj, null
  br i1 %.not.i348.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit322.i
  %i.bjk = atomicrmw add ptr %i.bjj, i32 -1 acq_rel, align 4
  %i.bjl = icmp eq i32 %i.bjk, 1
  br i1 %i.bjl, label %bb.cy, label %_ZN4ncnn3MatD2Ev.exit321.i

bb.cy:                                            ; preds = %bb.cx
  %i.bjm = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %.not3.i349.i = icmp eq ptr %i.bjm, null
  %i.bjn = load ptr, ptr %19, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i349.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bjo = load ptr, ptr %i.bjm, align 8, !tbaa !9
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 24
  %i.bjq = load ptr, ptr %i.bjp, align 8
  invoke void %i.bjq(ptr noundef nonnull align 8 dereferenceable(8) %i.bjm, ptr noundef %i.bjn)
          to label %_ZN4ncnn3MatD2Ev.exit321.i unwind label %bb.dc, !inline_history !46

bb.da:                                            ; preds = %bb.cy
  %.not.i357.i = icmp eq ptr %i.bjn, null
  br i1 %.not.i357.i, label %_ZN4ncnn3MatD2Ev.exit321.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.bjn) #6
  br label %_ZN4ncnn3MatD2Ev.exit321.i

bb.dc:                                            ; preds = %bb.cz
  %i.bjr = landingpad { ptr, i32 }
          catch ptr null
  %i.bjs = extractvalue { ptr, i32 } %i.bjr, 0
  call void @__clang_call_terminate(ptr %i.bjs) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit321.i:                       ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx, %_ZN4ncnn3MatD2Ev.exit322.i, %bb.cf
  %.pn316.pn.pn.pn.i = phi { ptr, i32 } [ %i.all, %bb.cf ], [ %.pn316.pn.pn.i, %bb.cx ], [ %.pn316.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit322.i ], [ %.pn316.pn.pn.i, %bb.cz ], [ %.pn316.pn.pn.i, %bb.da ], [ %.pn316.pn.pn.i, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  %i.bjt = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %.not.i352.i = icmp eq ptr %i.bjt, null
  br i1 %.not.i352.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dd

bb.dd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit321.i
  %i.bju = atomicrmw add ptr %i.bjt, i32 -1 acq_rel, align 4
  %i.bjv = icmp eq i32 %i.bju, 1
  br i1 %i.bjv, label %bb.de, label %_ZN4ncnn3MatD2Ev.exit.i30

bb.de:                                            ; preds = %bb.dd
  %i.bjw = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %.not3.i353.i = icmp eq ptr %i.bjw, null
  %i.bjx = load ptr, ptr %18, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i353.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bjy = load ptr, ptr %i.bjw, align 8, !tbaa !9
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 24
  %i.bka = load ptr, ptr %i.bjz, align 8
  invoke void %i.bka(ptr noundef nonnull align 8 dereferenceable(8) %i.bjw, ptr noundef %i.bjx)
          to label %_ZN4ncnn3MatD2Ev.exit.i30 unwind label %bb.di, !inline_history !46

bb.dg:                                            ; preds = %bb.de
  %.not.i356.i = icmp eq ptr %i.bjx, null
  br i1 %.not.i356.i, label %_ZN4ncnn3MatD2Ev.exit.i30, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef nonnull %i.bjx) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i30

bb.di:                                            ; preds = %bb.df
  %i.bkb = landingpad { ptr, i32 }
          catch ptr null
  %i.bkc = extractvalue { ptr, i32 } %i.bkb, 0
  call void @__clang_call_terminate(ptr %i.bkc) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i30:                        ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %_ZN4ncnn3MatD2Ev.exit321.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit324.i, %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.bf
  %i.bkd = phi i32 [ %.pre, %_ZN4ncnnL32resize_bicubic_image_pack8_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.ajg, %bb.bf ] ; 2 uses
  %i.bke = icmp eq i32 %i.bkd, 4
  br i1 %i.bke, label %bb.dk, label %bb.fn

bb.dk:                                            ; preds = %bb.dj
  %i.bkf = load ptr, ptr %6, align 8, !tbaa !72   ; 4 uses
  %i.bkg = load ptr, ptr %7, align 8, !tbaa !71   ; 4 uses
  %i.bkh = load ptr, ptr %8, align 8, !tbaa !72
  %i.bki = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  store i64 0, ptr %i.as, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc126 unwind label %bb.hr

.noexc126:                                        ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #6
  store i64 0, ptr %i.av, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %15, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %15, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i unwind label %bb.ej

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i:      ; preds = %.noexc126
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  store i64 0, ptr %i.ay, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i unwind label %bb.ek

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i:      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  store i64 0, ptr %i.bb, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %17, i32 noundef %i.bx, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i79 unwind label %bb.el

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i79:       ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i
  %i.bkj = icmp sgt i32 %i.by, 0
  br i1 %i.bkj, label %.lr.ph437.i, label %._crit_edge.i80

.lr.ph437.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i79
  %i.bkk = load ptr, ptr %17, align 8, !tbaa !45
  %i.bkl = load ptr, ptr %16, align 8, !tbaa !45
  %i.bkm = load ptr, ptr %15, align 8, !tbaa !45
  %i.bkn = load ptr, ptr %14, align 8, !tbaa !45
  %i.bko = icmp sgt i32 %i.bx, 0                  ; 4 uses
  %i.bkp = shl i32 %i.bx, 2                       ; 7 uses
  %i.bkq = icmp sgt i32 %i.bx, 3
  %i.bkr = zext nneg i32 %i.bkp to i64            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.15:bb.a
  %i.cbd = bitcast <2 x i64> %i.cbc to <8 x i16>
  %i.cbe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cbd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cbf = bitcast <8 x i16> %i.cbe to <4 x float>
  %i.cbg = getelementptr inbounds nuw i8, ptr %gep.3.i122, i64 16
  %i.cbh = load i64, ptr %i.cbg, align 1, !tbaa !17
  %i.cbi = insertelement <2 x i64> poison, i64 %i.cbh, i64 0
  %i.cbj = bitcast <2 x i64> %i.cbi to <8 x i16>
  %i.cbk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cbj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cbl = bitcast <8 x i16> %i.cbk to <4 x float>
  %i.cbm = fmul fast <4 x float> %i.bwu, %i.cau
  %i.cbn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.caz, <4 x float> nofpclass(nan inf) %i.bwy, <4 x float> nofpclass(nan inf) %i.cbm)
  %i.cbo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cbf, <4 x float> nofpclass(nan inf) %i.bxc, <4 x float> nofpclass(nan inf) %i.cbn)
  %i.cbp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cbl, <4 x float> nofpclass(nan inf) %i.bxg, <4 x float> nofpclass(nan inf) %i.cbo)
  %i.cbq = getelementptr inbounds nuw [4 x i8], ptr %.0245432.i, i64 %i.bxh
  store <4 x float> %i.cbp, ptr %i.cbq, align 16, !tbaa !17
  %i.cbr = getelementptr inbounds nuw i8, ptr %.0253416.i, i64 16
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i83
  br i1 %exitcond.not.i124, label %.loopexit.i85, label %.thread410.3.i, !llvm.loop !376

.loopexit.i85:                                    ; preds = %.thread410.3.i, %bb.et, %.lr.ph426.i, %.lr.ph429.i, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em
  %.1246.i = phi ptr [ %.0245432.i, %bb.em ], [ %.0239435.i, %bb.eo ], [ %.0241434.i, %bb.eq ], [ %.0243433.i, %bb.es ], [ %.0245432.i, %bb.eu ], [ %.0243433.i, %bb.et ], [ %.0239435.i, %.lr.ph429.i ], [ %.0241434.i, %.lr.ph426.i ], [ %.0245432.i, %.thread410.3.i ] ; 7 uses
  %.1244.i = phi ptr [ %.0243433.i, %bb.em ], [ %.0245432.i, %bb.eo ], [ %.0239435.i, %bb.eq ], [ %.0241434.i, %bb.es ], [ %.0243433.i, %bb.eu ], [ %.0241434.i, %bb.et ], [ %.0245432.i, %.lr.ph429.i ], [ %.0239435.i, %.lr.ph426.i ], [ %.0243433.i, %.thread410.3.i ] ; 7 uses
  %.1242.i = phi ptr [ %.0241434.i, %bb.em ], [ %.0243433.i, %bb.eo ], [ %.0245432.i, %bb.eq ], [ %.0239435.i, %bb.es ], [ %.0241434.i, %bb.eu ], [ %.0239435.i, %bb.et ], [ %.0243433.i, %.lr.ph429.i ], [ %.0245432.i, %.lr.ph426.i ], [ %.0241434.i, %.thread410.3.i ] ; 7 uses
  %.1240.i = phi ptr [ %.0239435.i, %bb.em ], [ %.0241434.i, %bb.eo ], [ %.0243433.i, %bb.eq ], [ %.0245432.i, %bb.es ], [ %.0239435.i, %bb.eu ], [ %.0245432.i, %bb.et ], [ %.0241434.i, %.lr.ph429.i ], [ %.0243433.i, %.lr.ph426.i ], [ %.0239435.i, %.thread410.3.i ] ; 7 uses
  %i.cbs = mul i64 %i.bks, %indvars.iv458.i84
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cbs ; 6 uses
  %i.cbu = load float, ptr %.0436.i, align 4, !tbaa !70 ; 6 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %.0436.i, i64 4
  %i.cbw = load float, ptr %i.cbv, align 4, !tbaa !70 ; 6 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %.0436.i, i64 8
  %i.cby = load float, ptr %i.cbx, align 4, !tbaa !70 ; 6 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0436.i, i64 12
  %i.cca = load float, ptr %i.cbz, align 4, !tbaa !70 ; 6 uses
  %i.ccb = insertelement <16 x float> poison, float %i.cbu, i64 0
  %i.ccc = shufflevector <16 x float> %i.ccb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ccd = insertelement <16 x float> poison, float %i.cbw, i64 0
  %i.cce = shufflevector <16 x float> %i.ccd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ccf = insertelement <16 x float> poison, float %i.cby, i64 0
  %i.ccg = shufflevector <16 x float> %i.ccf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cch = insertelement <16 x float> poison, float %i.cca, i64 0
  %i.cci = shufflevector <16 x float> %i.cch, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.bkq, label %.lr.ph.i.i108, label %._crit_edge.i.i86

.lr.ph.i.i108:                                    ; preds = %.loopexit.i85, %.lr.ph.i.i108
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110, %.lr.ph.i.i108 ], [ 0, %.loopexit.i85 ] ; 6 uses
  %i.ccj = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv.i.i109
  %i.cck = load <16 x float>, ptr %i.ccj, align 1, !tbaa !17
  %i.ccl = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv.i.i109
  %i.ccm = load <16 x float>, ptr %i.ccl, align 1, !tbaa !17
  %i.ccn = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv.i.i109
  %i.cco = load <16 x float>, ptr %i.ccn, align 1, !tbaa !17
  %i.ccp = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv.i.i109
  %i.ccq = load <16 x float>, ptr %i.ccp, align 1, !tbaa !17
  %i.ccr = fmul fast <16 x float> %i.cck, %i.ccc
  %i.ccs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccm, <16 x float> nofpclass(nan inf) %i.cce, <16 x float> nofpclass(nan inf) %i.ccr)
  %i.cct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cco, <16 x float> nofpclass(nan inf) %i.ccg, <16 x float> nofpclass(nan inf) %i.ccs)
  %i.ccu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ccq, <16 x float> nofpclass(nan inf) %i.cci, <16 x float> nofpclass(nan inf) %i.cct)
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %indvars.iv.i.i109
  %i.ccw = bitcast <16 x float> %i.ccu to <16 x i32>
  %i.ccx = lshr <16 x i32> %i.ccw, splat (i32 16) ; 2 uses
  %i.ccy = shufflevector <16 x i32> %i.ccx, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ccz = shufflevector <16 x i32> %i.ccx, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cda = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ccy, <8 x i32> %i.ccz)
  %i.cdb = bitcast <16 x i16> %i.cda to <4 x i64>
  %i.cdc = shufflevector <4 x i64> %i.cdb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cdc, ptr %i.ccv, align 1, !tbaa !17
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 16 ; 3 uses
  %i.cdd = or disjoint i64 %indvars.iv.next.i.i110, 15
  %i.cde = icmp samesign ult i64 %i.cdd, %i.bkr
  br i1 %i.cde, label %.lr.ph.i.i108, label %._crit_edge.loopexit.i.i111, !llvm.loop !358

._crit_edge.loopexit.i.i111:                      ; preds = %.lr.ph.i.i108
  %i.cdf = trunc nuw nsw i64 %indvars.iv.next.i.i110 to i32
  br label %._crit_edge.i.i86

._crit_edge.i.i86:                                ; preds = %._crit_edge.loopexit.i.i111, %.loopexit.i85
  %.0.lcssa.i.i87 = phi i32 [ 0, %.loopexit.i85 ], [ %i.cdf, %._crit_edge.loopexit.i.i111 ] ; 3 uses
  %i.cdg = insertelement <8 x float> poison, float %i.cbu, i64 0
  %i.cdh = shufflevector <8 x float> %i.cdg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cdi = insertelement <8 x float> poison, float %i.cbw, i64 0
  %i.cdj = shufflevector <8 x float> %i.cdi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cdk = insertelement <8 x float> poison, float %i.cby, i64 0
  %i.cdl = shufflevector <8 x float> %i.cdk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cdm = insertelement <8 x float> poison, float %i.cca, i64 0
  %i.cdn = shufflevector <8 x float> %i.cdm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cdo = or disjoint i32 %.0.lcssa.i.i87, 7
  %i.cdp = icmp slt i32 %i.cdo, %i.bkp
  br i1 %i.cdp, label %.lr.ph104.preheader.i.i103, label %._crit_edge105.i.i88

.lr.ph104.preheader.i.i103:                       ; preds = %._crit_edge.i.i86
  %i.cdq = zext nneg i32 %.0.lcssa.i.i87 to i64
  br label %.lr.ph104.i.i104

.lr.ph104.i.i104:                                 ; preds = %.lr.ph104.i.i104, %.lr.ph104.preheader.i.i103
  %indvars.iv117.i.i105 = phi i64 [ %i.cdq, %.lr.ph104.preheader.i.i103 ], [ %indvars.iv.next118.i.i106, %.lr.ph104.i.i104 ] ; 6 uses
  %i.cdr = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv117.i.i105
  %i.cds = load <8 x float>, ptr %i.cdr, align 1, !tbaa !17
  %i.cdt = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv117.i.i105
  %i.cdu = load <8 x float>, ptr %i.cdt, align 1, !tbaa !17
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv117.i.i105
  %i.cdw = load <8 x float>, ptr %i.cdv, align 1, !tbaa !17
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv117.i.i105
  %i.cdy = load <8 x float>, ptr %i.cdx, align 1, !tbaa !17
  %i.cdz = fmul fast <8 x float> %i.cds, %i.cdh
  %i.cea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cdu, <8 x float> nofpclass(nan inf) %i.cdj, <8 x float> nofpclass(nan inf) %i.cdz)
  %i.ceb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cdw, <8 x float> nofpclass(nan inf) %i.cdl, <8 x float> nofpclass(nan inf) %i.cea)
  %i.cec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cdy, <8 x float> nofpclass(nan inf) %i.cdn, <8 x float> nofpclass(nan inf) %i.ceb)
  %i.ced = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %indvars.iv117.i.i105
  %i.cee = bitcast <8 x float> %i.cec to <8 x i32>
  %i.cef = lshr <8 x i32> %i.cee, splat (i32 16)  ; 2 uses
  %i.ceg = shufflevector <8 x i32> %i.cef, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ceh = shufflevector <8 x i32> %i.cef, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cei = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ceg, <4 x i32> %i.ceh)
  store <8 x i16> %i.cei, ptr %i.ced, align 1, !tbaa !17
  %indvars.iv.next118.i.i106 = add nuw nsw i64 %indvars.iv117.i.i105, 8 ; 3 uses
  %i.cej = icmp slt i64 %indvars.iv.next118.i.i106, %invariant.op.i.i81
  br i1 %i.cej, label %.lr.ph104.i.i104, label %._crit_edge105.loopexit.i.i107, !llvm.loop !359

._crit_edge105.loopexit.i.i107:                   ; preds = %.lr.ph104.i.i104
  %i.cek = trunc nuw nsw i64 %indvars.iv.next118.i.i106 to i32
  br label %._crit_edge105.i.i88

._crit_edge105.i.i88:                             ; preds = %._crit_edge105.loopexit.i.i107, %._crit_edge.i.i86
  %.1.lcssa.i.i89 = phi i32 [ %.0.lcssa.i.i87, %._crit_edge.i.i86 ], [ %i.cek, %._crit_edge105.loopexit.i.i107 ] ; 3 uses
  %i.cel = insertelement <4 x float> poison, float %i.cbu, i64 0
  %i.cem = shufflevector <4 x float> %i.cel, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cen = insertelement <4 x float> poison, float %i.cbw, i64 0
  %i.ceo = shufflevector <4 x float> %i.cen, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cep = insertelement <4 x float> poison, float %i.cby, i64 0
  %i.ceq = shufflevector <4 x float> %i.cep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cer = insertelement <4 x float> poison, float %i.cca, i64 0
  %i.ces = shufflevector <4 x float> %i.cer, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cet = or disjoint i32 %.1.lcssa.i.i89, 3
  %i.ceu = icmp slt i32 %i.cet, %i.bkp
  br i1 %i.ceu, label %.lr.ph109.preheader.i.i99, label %.preheader.i.i90

.lr.ph109.preheader.i.i99:                        ; preds = %._crit_edge105.i.i88
  %i.cev = zext nneg i32 %.1.lcssa.i.i89 to i64
  br label %.lr.ph109.i.i100

.preheader.i.i90:                                 ; preds = %.lr.ph109.i.i100, %._crit_edge105.i.i88
  %.2.lcssa.i.i91 = phi i32 [ %.1.lcssa.i.i89, %._crit_edge105.i.i88 ], [ %i.ciy, %.lr.ph109.i.i100 ] ; 3 uses
  %i.cew = icmp slt i32 %.2.lcssa.i.i91, %i.bkp
  br i1 %i.cew, label %iter.check876, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i92

iter.check876:                                    ; preds = %.preheader.i.i90
  %i.cex = zext i32 %.2.lcssa.i.i91 to i64        ; 5 uses
  %i.cey = xor i32 %.2.lcssa.i.i91, -1
  %i.cez = add i32 %i.bkp, %i.cey                 ; 3 uses
  %i.cfa = zext i32 %i.cez to i64
  %i.cfb = add nuw nsw i64 %i.cfa, 1              ; 5 uses
  %min.iters.check841 = icmp ult i32 %i.cez, 7
  br i1 %min.iters.check841, label %.lr.ph112.i.i96.preheader, label %vector.main.loop.iter.check842

vector.main.loop.iter.check842:                   ; preds = %iter.check876
  %min.iters.check843 = icmp ult i32 %i.cez, 63
  br i1 %min.iters.check843, label %vec.epilog.ph880, label %vector.ph844

vector.ph844:                                     ; preds = %vector.main.loop.iter.check842
  %i.cfc = and i64 %i.cfb, 56
  %n.vec845 = and i64 %i.cfb, 8589934528          ; 4 uses
  %i.cfd = add nuw nsw i64 %n.vec845, %i.cex
  %broadcast.splatinsert846 = insertelement <16 x float> poison, float %i.cbu, i64 0
  %broadcast.splat847 = shufflevector <16 x float> %broadcast.splatinsert846, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert848 = insertelement <16 x float> poison, float %i.cbw, i64 0
  %broadcast.splat849 = shufflevector <16 x float> %broadcast.splatinsert848, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert850 = insertelement <16 x float> poison, float %i.cby, i64 0
  %broadcast.splat851 = shufflevector <16 x float> %broadcast.splatinsert850, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert852 = insertelement <16 x float> poison, float %i.cca, i64 0
  %broadcast.splat853 = shufflevector <16 x float> %broadcast.splatinsert852, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body854

vector.body854:                                   ; preds = %vector.body854, %vector.ph844
  %index855 = phi i64 [ 0, %vector.ph844 ], [ %index.next872, %vector.body854 ] ; 2 uses
  %i.cfe = add nuw i64 %index855, %i.cex          ; 5 uses
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.cfe ; 4 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 64
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cff, i64 128
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cff, i64 192
  %wide.load856 = load <16 x float>, ptr %i.cff, align 4, !tbaa !70
  %wide.load857 = load <16 x float>, ptr %i.cfg, align 4, !tbaa !70
  %wide.load858 = load <16 x float>, ptr %i.cfh, align 4, !tbaa !70
  %wide.load859 = load <16 x float>, ptr %i.cfi, align 4, !tbaa !70
  %i.cfj = fmul fast <16 x float> %wide.load856, %broadcast.splat847
  %i.cfk = fmul fast <16 x float> %wide.load857, %broadcast.splat847
  %i.cfl = fmul fast <16 x float> %wide.load858, %broadcast.splat847
  %i.cfm = fmul fast <16 x float> %wide.load859, %broadcast.splat847
  %i.cfn = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.cfe ; 4 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 64
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfn, i64 128
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfn, i64 192
  %wide.load860 = load <16 x float>, ptr %i.cfn, align 4, !tbaa !70
  %wide.load861 = load <16 x float>, ptr %i.cfo, align 4, !tbaa !70
  %wide.load862 = load <16 x float>, ptr %i.cfp, align 4, !tbaa !70
  %wide.load863 = load <16 x float>, ptr %i.cfq, align 4, !tbaa !70
  %i.cfr = fmul fast <16 x float> %wide.load860, %broadcast.splat849
  %i.cfs = fmul fast <16 x float> %wide.load861, %broadcast.splat849
  %i.cft = fmul fast <16 x float> %wide.load862, %broadcast.splat849
  %i.cfu = fmul fast <16 x float> %wide.load863, %broadcast.splat849
  %i.cfv = fadd fast <16 x float> %i.cfj, %i.cfr
  %i.cfw = fadd fast <16 x float> %i.cfk, %i.cfs
  %i.cfx = fadd fast <16 x float> %i.cfl, %i.cft
  %i.cfy = fadd fast <16 x float> %i.cfm, %i.cfu
  %i.cfz = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.cfe ; 4 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 64
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfz, i64 128
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfz, i64 192
  %wide.load864 = load <16 x float>, ptr %i.cfz, align 4, !tbaa !70
  %wide.load865 = load <16 x float>, ptr %i.cga, align 4, !tbaa !70
  %wide.load866 = load <16 x float>, ptr %i.cgb, align 4, !tbaa !70
  %wide.load867 = load <16 x float>, ptr %i.cgc, align 4, !tbaa !70
  %i.cgd = fmul fast <16 x float> %wide.load864, %broadcast.splat851
  %i.cge = fmul fast <16 x float> %wide.load865, %broadcast.splat851
  %i.cgf = fmul fast <16 x float> %wide.load866, %broadcast.splat851
  %i.cgg = fmul fast <16 x float> %wide.load867, %broadcast.splat851
  %i.cgh = fadd fast <16 x float> %i.cfv, %i.cgd
  %i.cgi = fadd fast <16 x float> %i.cfw, %i.cge
  %i.cgj = fadd fast <16 x float> %i.cfx, %i.cgf
  %i.cgk = fadd fast <16 x float> %i.cfy, %i.cgg
  %i.cgl = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.cfe ; 4 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 64
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgl, i64 128
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgl, i64 192
  %wide.load868 = load <16 x float>, ptr %i.cgl, align 4, !tbaa !70
  %wide.load869 = load <16 x float>, ptr %i.cgm, align 4, !tbaa !70
  %wide.load870 = load <16 x float>, ptr %i.cgn, align 4, !tbaa !70
  %wide.load871 = load <16 x float>, ptr %i.cgo, align 4, !tbaa !70
  %i.cgp = fmul fast <16 x float> %wide.load868, %broadcast.splat853
  %i.cgq = fmul fast <16 x float> %wide.load869, %broadcast.splat853
  %i.cgr = fmul fast <16 x float> %wide.load870, %broadcast.splat853
  %i.cgs = fmul fast <16 x float> %wide.load871, %broadcast.splat853
  %i.cgt = fadd fast <16 x float> %i.cgh, %i.cgp
  %i.cgu = fadd fast <16 x float> %i.cgi, %i.cgq
  %i.cgv = fadd fast <16 x float> %i.cgj, %i.cgr
  %i.cgw = fadd fast <16 x float> %i.cgk, %i.cgs
  %i.cgx = bitcast <16 x float> %i.cgt to <16 x i32>
  %i.cgy = bitcast <16 x float> %i.cgu to <16 x i32>
  %i.cgz = bitcast <16 x float> %i.cgv to <16 x i32>
  %i.cha = bitcast <16 x float> %i.cgw to <16 x i32>
  %i.chb = lshr <16 x i32> %i.cgx, splat (i32 16)
  %i.chc = lshr <16 x i32> %i.cgy, splat (i32 16)
  %i.chd = lshr <16 x i32> %i.cgz, splat (i32 16)
  %i.che = lshr <16 x i32> %i.cha, splat (i32 16)
  %i.chf = trunc nuw <16 x i32> %i.chb to <16 x i16>
  %i.chg = trunc nuw <16 x i32> %i.chc to <16 x i16>
  %i.chh = trunc nuw <16 x i32> %i.chd to <16 x i16>
  %i.chi = trunc nuw <16 x i32> %i.che to <16 x i16>
  %i.chj = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %i.cfe ; 4 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 32
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chj, i64 64
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chj, i64 96
  store <16 x i16> %i.chf, ptr %i.chj, align 2, !tbaa !269
  store <16 x i16> %i.chg, ptr %i.chk, align 2, !tbaa !269
  store <16 x i16> %i.chh, ptr %i.chl, align 2, !tbaa !269
  store <16 x i16> %i.chi, ptr %i.chm, align 2, !tbaa !269
  %index.next872 = add nuw i64 %index855, 64      ; 2 uses
  %i.chn = icmp eq i64 %index.next872, %n.vec845
  br i1 %i.chn, label %middle.block873, label %vector.body854, !llvm.loop !377

middle.block873:                                  ; preds = %vector.body854
  %cmp.n874 = icmp eq i64 %i.cfb, %n.vec845
  br i1 %cmp.n874, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i92, label %vec.epilog.iter.check878

vec.epilog.iter.check878:                         ; preds = %middle.block873
  %min.epilog.iters.check879 = icmp eq i64 %i.cfc, 0
  br i1 %min.epilog.iters.check879, label %.lr.ph112.i.i96.preheader, label %vec.epilog.ph880, !prof !107

vec.epilog.ph880:                                 ; preds = %vector.main.loop.iter.check842, %vec.epilog.iter.check878
  %vec.epilog.resume.val875 = phi i64 [ %n.vec845, %vec.epilog.iter.check878 ], [ 0, %vector.main.loop.iter.check842 ]
  %n.vec881 = and i64 %i.cfb, 8589934584          ; 3 uses
  %i.cho = add nuw nsw i64 %n.vec881, %i.cex
  %broadcast.splatinsert882 = insertelement <8 x float> poison, float %i.cbu, i64 0
  %broadcast.splat883 = shufflevector <8 x float> %broadcast.splatinsert882, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert884 = insertelement <8 x float> poison, float %i.cbw, i64 0
  %broadcast.splat885 = shufflevector <8 x float> %broadcast.splatinsert884, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert886 = insertelement <8 x float> poison, float %i.cby, i64 0
  %broadcast.splat887 = shufflevector <8 x float> %broadcast.splatinsert886, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert888 = insertelement <8 x float> poison, float %i.cca, i64 0
  %broadcast.splat889 = shufflevector <8 x float> %broadcast.splatinsert888, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body890

vec.epilog.vector.body890:                        ; preds = %vec.epilog.vector.body890, %vec.epilog.ph880
  %index891 = phi i64 [ %vec.epilog.resume.val875, %vec.epilog.ph880 ], [ %index.next896, %vec.epilog.vector.body890 ] ; 2 uses
  %i.chp = add nuw i64 %index891, %i.cex          ; 5 uses
  %i.chq = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %i.chp
  %wide.load892 = load <8 x float>, ptr %i.chq, align 4, !tbaa !70
  %i.chr = fmul fast <8 x float> %wide.load892, %broadcast.splat883
  %i.chs = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %i.chp
  %wide.load893 = load <8 x float>, ptr %i.chs, align 4, !tbaa !70
  %i.cht = fmul fast <8 x float> %wide.load893, %broadcast.splat885
  %i.chu = fadd fast <8 x float> %i.chr, %i.cht
  %i.chv = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %i.chp
  %wide.load894 = load <8 x float>, ptr %i.chv, align 4, !tbaa !70
  %i.chw = fmul fast <8 x float> %wide.load894, %broadcast.splat887
  %i.chx = fadd fast <8 x float> %i.chu, %i.chw
  %i.chy = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %i.chp
  %wide.load895 = load <8 x float>, ptr %i.chy, align 4, !tbaa !70
  %i.chz = fmul fast <8 x float> %wide.load895, %broadcast.splat889
  %i.cia = fadd fast <8 x float> %i.chx, %i.chz
  %i.cib = bitcast <8 x float> %i.cia to <8 x i32>
  %i.cic = lshr <8 x i32> %i.cib, splat (i32 16)
  %i.cid = trunc nuw <8 x i32> %i.cic to <8 x i16>
  %i.cie = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %i.chp
  store <8 x i16> %i.cid, ptr %i.cie, align 2, !tbaa !269
  %index.next896 = add nuw i64 %index891, 8       ; 2 uses
  %i.cif = icmp eq i64 %index.next896, %n.vec881
  br i1 %i.cif, label %vec.epilog.middle.block897, label %vec.epilog.vector.body890, !llvm.loop !378

vec.epilog.middle.block897:                       ; preds = %vec.epilog.vector.body890
  %cmp.n898 = icmp eq i64 %i.cfb, %n.vec881
  br i1 %cmp.n898, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i92, label %.lr.ph112.i.i96.preheader

.lr.ph112.i.i96.preheader:                        ; preds = %iter.check876, %vec.epilog.iter.check878, %vec.epilog.middle.block897
  %indvars.iv123.i.i97.ph = phi i64 [ %i.cex, %iter.check876 ], [ %i.cfd, %vec.epilog.iter.check878 ], [ %i.cho, %vec.epilog.middle.block897 ]
  br label %.lr.ph112.i.i96

.lr.ph109.i.i100:                                 ; preds = %.lr.ph109.i.i100, %.lr.ph109.preheader.i.i99
  %indvars.iv120.i.i101 = phi i64 [ %i.cev, %.lr.ph109.preheader.i.i99 ], [ %indvars.iv.next121.i.i102, %.lr.ph109.i.i100 ] ; 6 uses
  %i.cig = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv120.i.i101
  %i.cih = load <4 x float>, ptr %i.cig, align 1, !tbaa !17
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv120.i.i101
  %i.cij = load <4 x float>, ptr %i.cii, align 1, !tbaa !17
  %i.cik = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv120.i.i101
  %i.cil = load <4 x float>, ptr %i.cik, align 1, !tbaa !17
  %i.cim = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv120.i.i101
  %i.cin = load <4 x float>, ptr %i.cim, align 1, !tbaa !17
  %i.cio = fmul fast <4 x float> %i.cih, %i.cem
  %i.cip = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cij, <4 x float> nofpclass(nan inf) %i.ceo, <4 x float> nofpclass(nan inf) %i.cio)
  %i.ciq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cil, <4 x float> nofpclass(nan inf) %i.ceq, <4 x float> nofpclass(nan inf) %i.cip)
  %i.cir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cin, <4 x float> nofpclass(nan inf) %i.ces, <4 x float> nofpclass(nan inf) %i.ciq)
  %i.cis = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %indvars.iv120.i.i101
  %i.cit = bitcast <4 x float> %i.cir to <4 x i32>
  %i.ciu = lshr <4 x i32> %i.cit, splat (i32 16)
  %i.civ = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ciu, <4 x i32> poison)
  %i.ciw = bitcast <8 x i16> %i.civ to <2 x i64>
  %i.cix = extractelement <2 x i64> %i.ciw, i64 0
  store i64 %i.cix, ptr %i.cis, align 1, !tbaa !17
  %indvars.iv.next121.i.i102 = add nuw nsw i64 %indvars.iv120.i.i101, 4 ; 2 uses
  %i.ciy = trunc i64 %indvars.iv.next121.i.i102 to i32 ; 2 uses
  %i.ciz = or i32 %i.ciy, 3
  %i.cja = icmp slt i32 %i.ciz, %i.bkp
  br i1 %i.cja, label %.lr.ph109.i.i100, label %.preheader.i.i90, !llvm.loop !362

.lr.ph112.i.i96:                                  ; preds = %.lr.ph112.i.i96.preheader, %.lr.ph112.i.i96
  %indvars.iv123.i.i97 = phi i64 [ %indvars.iv.next124.i.i98, %.lr.ph112.i.i96 ], [ %indvars.iv123.i.i97.ph, %.lr.ph112.i.i96.preheader ] ; 6 uses
  %i.cjb = getelementptr inbounds nuw [4 x i8], ptr %.1240.i, i64 %indvars.iv123.i.i97
  %i.cjc = load float, ptr %i.cjb, align 4, !tbaa !70
  %i.cjd = fmul fast float %i.cjc, %i.cbu
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %.1242.i, i64 %indvars.iv123.i.i97
  %i.cjf = load float, ptr %i.cje, align 4, !tbaa !70
  %i.cjg = fmul fast float %i.cjf, %i.cbw
  %i.cjh = fadd fast float %i.cjd, %i.cjg
  %i.cji = getelementptr inbounds nuw [4 x i8], ptr %.1244.i, i64 %indvars.iv123.i.i97
  %i.cjj = load float, ptr %i.cji, align 4, !tbaa !70
  %i.cjk = fmul fast float %i.cjj, %i.cby
  %i.cjl = fadd fast float %i.cjh, %i.cjk
  %i.cjm = getelementptr inbounds nuw [4 x i8], ptr %.1246.i, i64 %indvars.iv123.i.i97
  %i.cjn = load float, ptr %i.cjm, align 4, !tbaa !70
  %i.cjo = fmul fast float %i.cjn, %i.cca
  %i.cjp = fadd fast float %i.cjl, %i.cjo
  %i.cjq = bitcast float %i.cjp to i32
  %i.cjr = lshr i32 %i.cjq, 16
  %i.cjs = trunc nuw i32 %i.cjr to i16
  %i.cjt = getelementptr inbounds nuw [2 x i8], ptr %i.cbt, i64 %indvars.iv123.i.i97
  store i16 %i.cjs, ptr %i.cjt, align 2, !tbaa !269
  %indvars.iv.next124.i.i98 = add nuw nsw i64 %indvars.iv123.i.i97, 1 ; 2 uses
  %i.cju = trunc nuw i64 %indvars.iv.next124.i.i98 to i32
  %i.cjv = icmp sgt i32 %i.bkp, %i.cju
  br i1 %i.cjv, label %.lr.ph112.i.i96, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i92, !llvm.loop !379

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i92: ; preds = %.lr.ph112.i.i96, %middle.block873, %vec.epilog.middle.block897, %.preheader.i.i90
  %i.cjw = getelementptr inbounds nuw i8, ptr %.0436.i, i64 16
  %indvars.iv.next459.i93 = add nuw nsw i64 %indvars.iv458.i84, 1 ; 2 uses
  %exitcond462.not.i94 = icmp eq i64 %indvars.iv.next459.i93, %wide.trip.count461.i82
  br i1 %exitcond462.not.i94, label %._crit_edge.i80, label %bb.em, !llvm.loop !380

bb.ev:                                            ; preds = %bb.el
  %i.cjx = atomicrmw add ptr %i.bml, i32 -1 acq_rel, align 4
  %i.cjy = icmp eq i32 %i.cjx, 1
  br i1 %i.cjy, label %bb.ew, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ew:                                            ; preds = %bb.ev
  %i.cjz = load ptr, ptr %i.ax, align 8, !tbaa !44 ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.cjz, null
  %i.cka = load ptr, ptr %16, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i313.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ckb = load ptr, ptr %i.cjz, align 8, !tbaa !9
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 24
  %i.ckd = load ptr, ptr %i.ckc, align 8
  invoke void %i.ckd(ptr noundef nonnull align 8 dereferenceable(8) %i.cjz, ptr noundef %i.cka)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.fa, !inline_history !46

bb.ey:                                            ; preds = %bb.ew
  %.not.i327.i = icmp eq ptr %i.cka, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @free(ptr noundef nonnull %i.cka) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.fa:                                            ; preds = %bb.ex
  %i.cke = landingpad { ptr, i32 }
          catch ptr null
  %i.ckf = extractvalue { ptr, i32 } %i.cke, 0
  call void @__clang_call_terminate(ptr %i.ckf) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev, %bb.el, %bb.ek
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.bmj, %bb.ek ], [ %i.bmk, %bb.ev ], [ %i.bmk, %bb.el ], [ %i.bmk, %bb.ex ], [ %i.bmk, %bb.ey ], [ %i.bmk, %bb.ez ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.ckg = load ptr, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %.not.i316.i = icmp eq ptr %i.ckg, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.fb

bb.fb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.ckh = atomicrmw add ptr %i.ckg, i32 -1 acq_rel, align 4
  %i.cki = icmp eq i32 %i.ckh, 1
  br i1 %i.cki, label %bb.fc, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.fc:                                            ; preds = %bb.fb
  %i.ckj = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.ckj, null
  %i.ckk = load ptr, ptr %15, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i317.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ckl = load ptr, ptr %i.ckj, align 8, !tbaa !9
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 24
  %i.ckn = load ptr, ptr %i.ckm, align 8
  invoke void %i.ckn(ptr noundef nonnull align 8 dereferenceable(8) %i.ckj, ptr noundef %i.ckk)
          to label %_ZN4ncnn3MatD2Ev.exit289.i unwind label %bb.fg, !inline_history !46

bb.fe:                                            ; preds = %bb.fc
  %.not.i325.i = icmp eq ptr %i.ckk, null
  br i1 %.not.i325.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef nonnull %i.ckk) #6
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.fg:                                            ; preds = %bb.fd
  %i.cko = landingpad { ptr, i32 }
          catch ptr null
  %i.ckp = extractvalue { ptr, i32 } %i.cko, 0
  call void @__clang_call_terminate(ptr %i.ckp) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit289.i:                       ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fb, %_ZN4ncnn3MatD2Ev.exit290.i, %bb.ej
  %.pn284.pn.pn.pn.i = phi { ptr, i32 } [ %i.bmi, %bb.ej ], [ %.pn284.pn.pn.i, %bb.fb ], [ %.pn284.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit290.i ], [ %.pn284.pn.pn.i, %bb.fd ], [ %.pn284.pn.pn.i, %bb.fe ], [ %.pn284.pn.pn.i, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.ckq = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.not.i320.i = icmp eq ptr %i.ckq, null
  br i1 %.not.i320.i, label %_ZN4ncnn3MatD2Ev.exit.i78, label %bb.fh

bb.fh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289.i
  %i.ckr = atomicrmw add ptr %i.ckq, i32 -1 acq_rel, align 4
  %i.cks = icmp eq i32 %i.ckr, 1
  br i1 %i.cks, label %bb.fi, label %_ZN4ncnn3MatD2Ev.exit.i78

bb.fi:                                            ; preds = %bb.fh
  %i.ckt = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 3 uses
  %.not3.i321.i = icmp eq ptr %i.ckt, null
  %i.cku = load ptr, ptr %14, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i321.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ckv = load ptr, ptr %i.ckt, align 8, !tbaa !9
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 24
  %i.ckx = load ptr, ptr %i.ckw, align 8
  invoke void %i.ckx(ptr noundef nonnull align 8 dereferenceable(8) %i.ckt, ptr noundef %i.cku)
          to label %_ZN4ncnn3MatD2Ev.exit.i78 unwind label %bb.fm, !inline_history !46

bb.fk:                                            ; preds = %bb.fi
  %.not.i324.i = icmp eq ptr %i.cku, null
  br i1 %.not.i324.i, label %_ZN4ncnn3MatD2Ev.exit.i78, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @free(ptr noundef nonnull %i.cku) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i78

bb.fm:                                            ; preds = %bb.fj
  %i.cky = landingpad { ptr, i32 }
          catch ptr null
  %i.ckz = extractvalue { ptr, i32 } %i.cky, 0
  call void @__clang_call_terminate(ptr %i.ckz) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i78:                        ; preds = %bb.fl, %bb.fk, %bb.fj, %bb.fh, %_ZN4ncnn3MatD2Ev.exit289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  br label %.body

_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit292.i, %bb.ed, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  %.pr243 = load i32, ptr %5, align 4, !tbaa !25
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.dj
  %i.cla = phi i32 [ %.pr243, %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit ], [ %i.bkd, %bb.dj ]
  %i.clb = icmp eq i32 %i.cla, 1
  br i1 %i.clb, label %bb.fo, label %_ZN4ncnn3MatD2Ev.exit

bb.fo:                                            ; preds = %bb.fn
  %i.clc = load ptr, ptr %6, align 8, !tbaa !72   ; 35 uses
  %i.cld = load ptr, ptr %7, align 8, !tbaa !71   ; 14 uses
  %i.cle = load ptr, ptr %8, align 8, !tbaa !72
  %i.clf = load ptr, ptr %9, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  store i64 0, ptr %i.be, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %.noexc162 unwind label %bb.hr

.noexc162:                                        ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store i64 0, ptr %i.bh, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i unwind label %bb.gn

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i:       ; preds = %.noexc162
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.bk, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i unwind label %bb.go

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i:       ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.bn, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.bx, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.gp

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.clg = icmp sgt i32 %i.by, 0
  br i1 %i.clg, label %.lr.ph347.i, label %._crit_edge.i130

.lr.ph347.i:                                      ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.clh = load ptr, ptr %13, align 8, !tbaa !45
  %i.cli = load ptr, ptr %12, align 8, !tbaa !45
  %i.clj = load ptr, ptr %11, align 8, !tbaa !45
  %i.clk = load ptr, ptr %10, align 8, !tbaa !45
  %i.cll = icmp sgt i32 %i.bx, 0                  ; 4 uses
  %i.clm = icmp sgt i32 %i.bx, 15
  %i.cln = zext i32 %i.bx to i64                  ; 30 uses
  %invariant.op.i.i131 = add nsw i64 %i.cln, -7
end_hunk_8
begin_hunk_9_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.15:bb.a

bb.gl:                                            ; preds = %bb.gk
  call void @free(ptr noundef nonnull %i.cnv) #6
  br label %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.gm:                                            ; preds = %bb.gj
  %i.cnz = landingpad { ptr, i32 }
          catch ptr null
  %i.coa = extractvalue { ptr, i32 } %i.cnz, 0
  call void @__clang_call_terminate(ptr %i.coa) #27
  unreachable

bb.gn:                                            ; preds = %.noexc162
  %i.cob = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.go:                                            ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit325.i
  %i.coc = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.gp:                                            ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit323.i
  %i.cod = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.coe = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %.not.i294.i = icmp eq ptr %i.coe, null
  br i1 %.not.i294.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.gy

bb.gq:                                            ; preds = %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140, %.lr.ph347.i
  %indvars.iv367.i = phi i64 [ 0, %.lr.ph347.i ], [ %indvars.iv.next368.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 3 uses
  %.0346.i = phi ptr [ %i.cle, %.lr.ph347.i ], [ %i.hln, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 5 uses
  %.0249345.i = phi ptr [ %i.clk, %.lr.ph347.i ], [ %.1250.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 46 uses
  %.0251344.i = phi ptr [ %i.clj, %.lr.ph347.i ], [ %.1252.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 39 uses
  %.0253343.i = phi ptr [ %i.cli, %.lr.ph347.i ], [ %.1254.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 33 uses
  %.0255342.i = phi ptr [ %i.clh, %.lr.ph347.i ], [ %.1256.i133, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 26 uses
  %.0257341.i = phi i32 [ -3, %.lr.ph347.i ], [ %i.cog, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140 ] ; 4 uses
  %i.cof = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %indvars.iv367.i
  %i.cog = load i32, ptr %i.cof, align 4, !tbaa !25 ; 15 uses
  %i.coh = icmp eq i32 %i.cog, %.0257341.i
  br i1 %i.coh, label %.loopexit.i132, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.coi = add nsw i32 %.0257341.i, 1
  %i.coj = icmp eq i32 %i.cog, %i.coi
  br i1 %i.coj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.cok = add nsw i32 %i.cog, 2
  %i.col = sext i32 %i.cok to i64
  %i.com = mul i64 %i.clp, %i.col
  %i.con = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.com ; 23 uses
  br i1 %i.cll, label %iter.check623, label %.loopexit.i132

iter.check623:                                    ; preds = %bb.gs
  br i1 %min.iters.check608, label %.lr.ph339.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check623
  %scevgep = getelementptr i8, ptr %.0249345.i, i64 %i.clq
  %bound0 = icmp ult ptr %.0249345.i, %scevgep607
  %bound1 = icmp ult ptr %i.clc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph339.i.preheader, label %vector.main.loop.iter.check609

vector.main.loop.iter.check609:                   ; preds = %vector.memcheck
  br i1 %min.iters.check610, label %vec.epilog.ph627, label %vector.body613

vector.body613:                                   ; preds = %vector.main.loop.iter.check609, %vector.body613
  %index614 = phi i64 [ %index.next619, %vector.body613 ], [ 0, %vector.main.loop.iter.check609 ] ; 4 uses
  %i.coo = shl i64 %index614, 4
  %next.gep = getelementptr i8, ptr %i.clc, i64 %i.coo
  %i.cop = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index614
  %wide.load615 = load <16 x i32>, ptr %i.cop, align 4, !tbaa !25
  %i.coq = sext <16 x i32> %wide.load615 to <16 x i64> ; 16 uses
  %i.cor = extractelement <16 x i64> %i.coq, i64 0
  %i.cos = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cor ; 4 uses
  %i.cot = extractelement <16 x i64> %i.coq, i64 1
  %i.cou = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cot ; 4 uses
  %i.cov = extractelement <16 x i64> %i.coq, i64 2
  %i.cow = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cov ; 4 uses
  %i.cox = extractelement <16 x i64> %i.coq, i64 3
  %i.coy = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cox ; 4 uses
  %i.coz = extractelement <16 x i64> %i.coq, i64 4
  %i.cpa = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.coz ; 4 uses
  %i.cpb = extractelement <16 x i64> %i.coq, i64 5
  %i.cpc = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpb ; 4 uses
  %i.cpd = extractelement <16 x i64> %i.coq, i64 6
  %i.cpe = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpd ; 4 uses
  %i.cpf = extractelement <16 x i64> %i.coq, i64 7
  %i.cpg = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpf ; 4 uses
  %i.cph = extractelement <16 x i64> %i.coq, i64 8
  %i.cpi = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cph ; 4 uses
  %i.cpj = extractelement <16 x i64> %i.coq, i64 9
  %i.cpk = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpj ; 4 uses
  %i.cpl = extractelement <16 x i64> %i.coq, i64 10
  %i.cpm = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpl ; 4 uses
  %i.cpn = extractelement <16 x i64> %i.coq, i64 11
  %i.cpo = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpn ; 4 uses
  %i.cpp = extractelement <16 x i64> %i.coq, i64 12
  %i.cpq = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpp ; 4 uses
  %i.cpr = extractelement <16 x i64> %i.coq, i64 13
  %i.cps = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpr ; 4 uses
  %i.cpt = extractelement <16 x i64> %i.coq, i64 14
  %i.cpu = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpt ; 4 uses
  %i.cpv = extractelement <16 x i64> %i.coq, i64 15
  %i.cpw = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cpv ; 4 uses
  %wide.vec = load <64 x float>, ptr %next.gep, align 4, !tbaa !70, !alias.scope !381 ; 4 uses
  %strided.vec = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec616 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec617 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec618 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.cpx = getelementptr inbounds i8, ptr %i.cos, i64 -2
  %i.cpy = getelementptr inbounds i8, ptr %i.cou, i64 -2
  %i.cpz = getelementptr inbounds i8, ptr %i.cow, i64 -2
  %i.cqa = getelementptr inbounds i8, ptr %i.coy, i64 -2
  %i.cqb = getelementptr inbounds i8, ptr %i.cpa, i64 -2
  %i.cqc = getelementptr inbounds i8, ptr %i.cpc, i64 -2
  %i.cqd = getelementptr inbounds i8, ptr %i.cpe, i64 -2
  %i.cqe = getelementptr inbounds i8, ptr %i.cpg, i64 -2
  %i.cqf = getelementptr inbounds i8, ptr %i.cpi, i64 -2
  %i.cqg = getelementptr inbounds i8, ptr %i.cpk, i64 -2
  %i.cqh = getelementptr inbounds i8, ptr %i.cpm, i64 -2
  %i.cqi = getelementptr inbounds i8, ptr %i.cpo, i64 -2
  %i.cqj = getelementptr inbounds i8, ptr %i.cpq, i64 -2
  %i.cqk = getelementptr inbounds i8, ptr %i.cps, i64 -2
  %i.cql = getelementptr inbounds i8, ptr %i.cpu, i64 -2
  %i.cqm = getelementptr inbounds i8, ptr %i.cpw, i64 -2
  %i.cqn = load i16, ptr %i.cpx, align 2, !tbaa !269
  %i.cqo = load i16, ptr %i.cpy, align 2, !tbaa !269
  %i.cqp = load i16, ptr %i.cpz, align 2, !tbaa !269
  %i.cqq = load i16, ptr %i.cqa, align 2, !tbaa !269
  %i.cqr = load i16, ptr %i.cqb, align 2, !tbaa !269
  %i.cqs = load i16, ptr %i.cqc, align 2, !tbaa !269
  %i.cqt = load i16, ptr %i.cqd, align 2, !tbaa !269
  %i.cqu = load i16, ptr %i.cqe, align 2, !tbaa !269
  %i.cqv = load i16, ptr %i.cqf, align 2, !tbaa !269
  %i.cqw = load i16, ptr %i.cqg, align 2, !tbaa !269
  %i.cqx = load i16, ptr %i.cqh, align 2, !tbaa !269
  %i.cqy = load i16, ptr %i.cqi, align 2, !tbaa !269
  %i.cqz = load i16, ptr %i.cqj, align 2, !tbaa !269
  %i.cra = load i16, ptr %i.cqk, align 2, !tbaa !269
  %i.crb = load i16, ptr %i.cql, align 2, !tbaa !269
  %i.crc = load i16, ptr %i.cqm, align 2, !tbaa !269
  %i.crd = insertelement <16 x i16> poison, i16 %i.cqn, i64 0
  %i.cre = insertelement <16 x i16> %i.crd, i16 %i.cqo, i64 1
  %i.crf = insertelement <16 x i16> %i.cre, i16 %i.cqp, i64 2
  %i.crg = insertelement <16 x i16> %i.crf, i16 %i.cqq, i64 3
  %i.crh = insertelement <16 x i16> %i.crg, i16 %i.cqr, i64 4
  %i.cri = insertelement <16 x i16> %i.crh, i16 %i.cqs, i64 5
  %i.crj = insertelement <16 x i16> %i.cri, i16 %i.cqt, i64 6
  %i.crk = insertelement <16 x i16> %i.crj, i16 %i.cqu, i64 7
  %i.crl = insertelement <16 x i16> %i.crk, i16 %i.cqv, i64 8
  %i.crm = insertelement <16 x i16> %i.crl, i16 %i.cqw, i64 9
  %i.crn = insertelement <16 x i16> %i.crm, i16 %i.cqx, i64 10
  %i.cro = insertelement <16 x i16> %i.crn, i16 %i.cqy, i64 11
  %i.crp = insertelement <16 x i16> %i.cro, i16 %i.cqz, i64 12
  %i.crq = insertelement <16 x i16> %i.crp, i16 %i.cra, i64 13
  %i.crr = insertelement <16 x i16> %i.crq, i16 %i.crb, i64 14
  %i.crs = insertelement <16 x i16> %i.crr, i16 %i.crc, i64 15
  %i.crt = zext <16 x i16> %i.crs to <16 x i32>
  %i.cru = shl nuw <16 x i32> %i.crt, splat (i32 16)
  %i.crv = bitcast <16 x i32> %i.cru to <16 x float>
  %i.crw = fmul fast <16 x float> %strided.vec, %i.crv
  %i.crx = load i16, ptr %i.cos, align 2, !tbaa !269
  %i.cry = load i16, ptr %i.cou, align 2, !tbaa !269
  %i.crz = load i16, ptr %i.cow, align 2, !tbaa !269
  %i.csa = load i16, ptr %i.coy, align 2, !tbaa !269
  %i.csb = load i16, ptr %i.cpa, align 2, !tbaa !269
  %i.csc = load i16, ptr %i.cpc, align 2, !tbaa !269
  %i.csd = load i16, ptr %i.cpe, align 2, !tbaa !269
  %i.cse = load i16, ptr %i.cpg, align 2, !tbaa !269
  %i.csf = load i16, ptr %i.cpi, align 2, !tbaa !269
  %i.csg = load i16, ptr %i.cpk, align 2, !tbaa !269
  %i.csh = load i16, ptr %i.cpm, align 2, !tbaa !269
  %i.csi = load i16, ptr %i.cpo, align 2, !tbaa !269
  %i.csj = load i16, ptr %i.cpq, align 2, !tbaa !269
  %i.csk = load i16, ptr %i.cps, align 2, !tbaa !269
  %i.csl = load i16, ptr %i.cpu, align 2, !tbaa !269
  %i.csm = load i16, ptr %i.cpw, align 2, !tbaa !269
  %i.csn = insertelement <16 x i16> poison, i16 %i.crx, i64 0
  %i.cso = insertelement <16 x i16> %i.csn, i16 %i.cry, i64 1
  %i.csp = insertelement <16 x i16> %i.cso, i16 %i.crz, i64 2
  %i.csq = insertelement <16 x i16> %i.csp, i16 %i.csa, i64 3
  %i.csr = insertelement <16 x i16> %i.csq, i16 %i.csb, i64 4
  %i.css = insertelement <16 x i16> %i.csr, i16 %i.csc, i64 5
  %i.cst = insertelement <16 x i16> %i.css, i16 %i.csd, i64 6
  %i.csu = insertelement <16 x i16> %i.cst, i16 %i.cse, i64 7
  %i.csv = insertelement <16 x i16> %i.csu, i16 %i.csf, i64 8
  %i.csw = insertelement <16 x i16> %i.csv, i16 %i.csg, i64 9
  %i.csx = insertelement <16 x i16> %i.csw, i16 %i.csh, i64 10
  %i.csy = insertelement <16 x i16> %i.csx, i16 %i.csi, i64 11
  %i.csz = insertelement <16 x i16> %i.csy, i16 %i.csj, i64 12
  %i.cta = insertelement <16 x i16> %i.csz, i16 %i.csk, i64 13
  %i.ctb = insertelement <16 x i16> %i.cta, i16 %i.csl, i64 14
  %i.ctc = insertelement <16 x i16> %i.ctb, i16 %i.csm, i64 15
  %i.ctd = zext <16 x i16> %i.ctc to <16 x i32>
  %i.cte = shl nuw <16 x i32> %i.ctd, splat (i32 16)
  %i.ctf = bitcast <16 x i32> %i.cte to <16 x float>
  %i.ctg = fmul fast <16 x float> %strided.vec616, %i.ctf
  %i.cth = fadd fast <16 x float> %i.crw, %i.ctg
  %i.cti = getelementptr inbounds nuw i8, ptr %i.cos, i64 2
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cou, i64 2
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.cow, i64 2
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.coy, i64 2
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cpa, i64 2
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.cpc, i64 2
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cpe, i64 2
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cpg, i64 2
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cpi, i64 2
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cpk, i64 2
  %i.cts = getelementptr inbounds nuw i8, ptr %i.cpm, i64 2
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cpo, i64 2
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cpq, i64 2
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.cps, i64 2
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.cpu, i64 2
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 2
  %i.cty = load i16, ptr %i.cti, align 2, !tbaa !269
  %i.ctz = load i16, ptr %i.ctj, align 2, !tbaa !269
  %i.cua = load i16, ptr %i.ctk, align 2, !tbaa !269
  %i.cub = load i16, ptr %i.ctl, align 2, !tbaa !269
  %i.cuc = load i16, ptr %i.ctm, align 2, !tbaa !269
  %i.cud = load i16, ptr %i.ctn, align 2, !tbaa !269
  %i.cue = load i16, ptr %i.cto, align 2, !tbaa !269
  %i.cuf = load i16, ptr %i.ctp, align 2, !tbaa !269
  %i.cug = load i16, ptr %i.ctq, align 2, !tbaa !269
  %i.cuh = load i16, ptr %i.ctr, align 2, !tbaa !269
  %i.cui = load i16, ptr %i.cts, align 2, !tbaa !269
  %i.cuj = load i16, ptr %i.ctt, align 2, !tbaa !269
  %i.cuk = load i16, ptr %i.ctu, align 2, !tbaa !269
  %i.cul = load i16, ptr %i.ctv, align 2, !tbaa !269
  %i.cum = load i16, ptr %i.ctw, align 2, !tbaa !269
  %i.cun = load i16, ptr %i.ctx, align 2, !tbaa !269
  %i.cuo = insertelement <16 x i16> poison, i16 %i.cty, i64 0
  %i.cup = insertelement <16 x i16> %i.cuo, i16 %i.ctz, i64 1
  %i.cuq = insertelement <16 x i16> %i.cup, i16 %i.cua, i64 2
  %i.cur = insertelement <16 x i16> %i.cuq, i16 %i.cub, i64 3
  %i.cus = insertelement <16 x i16> %i.cur, i16 %i.cuc, i64 4
  %i.cut = insertelement <16 x i16> %i.cus, i16 %i.cud, i64 5
  %i.cuu = insertelement <16 x i16> %i.cut, i16 %i.cue, i64 6
  %i.cuv = insertelement <16 x i16> %i.cuu, i16 %i.cuf, i64 7
  %i.cuw = insertelement <16 x i16> %i.cuv, i16 %i.cug, i64 8
  %i.cux = insertelement <16 x i16> %i.cuw, i16 %i.cuh, i64 9
  %i.cuy = insertelement <16 x i16> %i.cux, i16 %i.cui, i64 10
  %i.cuz = insertelement <16 x i16> %i.cuy, i16 %i.cuj, i64 11
  %i.cva = insertelement <16 x i16> %i.cuz, i16 %i.cuk, i64 12
  %i.cvb = insertelement <16 x i16> %i.cva, i16 %i.cul, i64 13
  %i.cvc = insertelement <16 x i16> %i.cvb, i16 %i.cum, i64 14
  %i.cvd = insertelement <16 x i16> %i.cvc, i16 %i.cun, i64 15
  %i.cve = zext <16 x i16> %i.cvd to <16 x i32>
  %i.cvf = shl nuw <16 x i32> %i.cve, splat (i32 16)
  %i.cvg = bitcast <16 x i32> %i.cvf to <16 x float>
  %i.cvh = fmul fast <16 x float> %strided.vec617, %i.cvg
  %i.cvi = fadd fast <16 x float> %i.cth, %i.cvh
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cos, i64 4
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cou, i64 4
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cow, i64 4
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.coy, i64 4
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cpa, i64 4
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cpc, i64 4
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cpe, i64 4
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cpg, i64 4
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cpi, i64 4
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cpk, i64 4
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cpm, i64 4
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cpo, i64 4
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cpq, i64 4
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cps, i64 4
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cpu, i64 4
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cpw, i64 4
  %i.cvz = load i16, ptr %i.cvj, align 2, !tbaa !269
  %i.cwa = load i16, ptr %i.cvk, align 2, !tbaa !269
  %i.cwb = load i16, ptr %i.cvl, align 2, !tbaa !269
  %i.cwc = load i16, ptr %i.cvm, align 2, !tbaa !269
  %i.cwd = load i16, ptr %i.cvn, align 2, !tbaa !269
  %i.cwe = load i16, ptr %i.cvo, align 2, !tbaa !269
  %i.cwf = load i16, ptr %i.cvp, align 2, !tbaa !269
  %i.cwg = load i16, ptr %i.cvq, align 2, !tbaa !269
  %i.cwh = load i16, ptr %i.cvr, align 2, !tbaa !269
  %i.cwi = load i16, ptr %i.cvs, align 2, !tbaa !269
  %i.cwj = load i16, ptr %i.cvt, align 2, !tbaa !269
  %i.cwk = load i16, ptr %i.cvu, align 2, !tbaa !269
  %i.cwl = load i16, ptr %i.cvv, align 2, !tbaa !269
  %i.cwm = load i16, ptr %i.cvw, align 2, !tbaa !269
  %i.cwn = load i16, ptr %i.cvx, align 2, !tbaa !269
  %i.cwo = load i16, ptr %i.cvy, align 2, !tbaa !269
  %i.cwp = insertelement <16 x i16> poison, i16 %i.cvz, i64 0
  %i.cwq = insertelement <16 x i16> %i.cwp, i16 %i.cwa, i64 1
  %i.cwr = insertelement <16 x i16> %i.cwq, i16 %i.cwb, i64 2
  %i.cws = insertelement <16 x i16> %i.cwr, i16 %i.cwc, i64 3
  %i.cwt = insertelement <16 x i16> %i.cws, i16 %i.cwd, i64 4
  %i.cwu = insertelement <16 x i16> %i.cwt, i16 %i.cwe, i64 5
  %i.cwv = insertelement <16 x i16> %i.cwu, i16 %i.cwf, i64 6
  %i.cww = insertelement <16 x i16> %i.cwv, i16 %i.cwg, i64 7
  %i.cwx = insertelement <16 x i16> %i.cww, i16 %i.cwh, i64 8
  %i.cwy = insertelement <16 x i16> %i.cwx, i16 %i.cwi, i64 9
  %i.cwz = insertelement <16 x i16> %i.cwy, i16 %i.cwj, i64 10
  %i.cxa = insertelement <16 x i16> %i.cwz, i16 %i.cwk, i64 11
  %i.cxb = insertelement <16 x i16> %i.cxa, i16 %i.cwl, i64 12
  %i.cxc = insertelement <16 x i16> %i.cxb, i16 %i.cwm, i64 13
  %i.cxd = insertelement <16 x i16> %i.cxc, i16 %i.cwn, i64 14
  %i.cxe = insertelement <16 x i16> %i.cxd, i16 %i.cwo, i64 15
  %i.cxf = zext <16 x i16> %i.cxe to <16 x i32>
  %i.cxg = shl nuw <16 x i32> %i.cxf, splat (i32 16)
  %i.cxh = bitcast <16 x i32> %i.cxg to <16 x float>
  %i.cxi = fmul fast <16 x float> %strided.vec618, %i.cxh
  %i.cxj = fadd fast <16 x float> %i.cvi, %i.cxi
  %i.cxk = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index614
  store <16 x float> %i.cxj, ptr %i.cxk, align 4, !tbaa !70, !alias.scope !384, !noalias !381
  %index.next619 = add nuw i64 %index614, 16      ; 2 uses
  %i.cxl = icmp eq i64 %index.next619, %n.vec612
  br i1 %i.cxl, label %middle.block620, label %vector.body613, !llvm.loop !386

middle.block620:                                  ; preds = %vector.body613
  br i1 %cmp.n621, label %.loopexit.i132, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block620
  br i1 %min.epilog.iters.check626, label %.lr.ph339.i.preheader, label %vec.epilog.ph627, !prof !120

vec.epilog.ph627:                                 ; preds = %vector.main.loop.iter.check609, %vec.epilog.iter.check625
  %vec.epilog.resume.val622 = phi i64 [ %n.vec612, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check609 ]
  br label %vec.epilog.vector.body629

vec.epilog.vector.body629:                        ; preds = %vec.epilog.vector.body629, %vec.epilog.ph627
  %index630 = phi i64 [ %vec.epilog.resume.val622, %vec.epilog.ph627 ], [ %index.next638, %vec.epilog.vector.body629 ] ; 4 uses
  %i.cxm = shl i64 %index630, 4
  %next.gep631 = getelementptr i8, ptr %i.clc, i64 %i.cxm
  %i.cxn = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index630
  %wide.load632 = load <4 x i32>, ptr %i.cxn, align 4, !tbaa !25
  %i.cxo = sext <4 x i32> %wide.load632 to <4 x i64> ; 4 uses
  %i.cxp = extractelement <4 x i64> %i.cxo, i64 0
  %i.cxq = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cxp ; 4 uses
  %i.cxr = extractelement <4 x i64> %i.cxo, i64 1
  %i.cxs = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cxr ; 4 uses
  %i.cxt = extractelement <4 x i64> %i.cxo, i64 2
  %i.cxu = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cxt ; 4 uses
  %i.cxv = extractelement <4 x i64> %i.cxo, i64 3
  %i.cxw = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.cxv ; 4 uses
  %wide.vec633 = load <16 x float>, ptr %next.gep631, align 4, !tbaa !70, !alias.scope !381 ; 4 uses
  %strided.vec634 = shufflevector <16 x float> %wide.vec633, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec635 = shufflevector <16 x float> %wide.vec633, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec636 = shufflevector <16 x float> %wide.vec633, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec637 = shufflevector <16 x float> %wide.vec633, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cxx = getelementptr inbounds i8, ptr %i.cxq, i64 -2
  %i.cxy = getelementptr inbounds i8, ptr %i.cxs, i64 -2
  %i.cxz = getelementptr inbounds i8, ptr %i.cxu, i64 -2
  %i.cya = getelementptr inbounds i8, ptr %i.cxw, i64 -2
  %i.cyb = load i16, ptr %i.cxx, align 2, !tbaa !269
  %i.cyc = load i16, ptr %i.cxy, align 2, !tbaa !269
  %i.cyd = load i16, ptr %i.cxz, align 2, !tbaa !269
  %i.cye = load i16, ptr %i.cya, align 2, !tbaa !269
  %i.cyf = insertelement <4 x i16> poison, i16 %i.cyb, i64 0
  %i.cyg = insertelement <4 x i16> %i.cyf, i16 %i.cyc, i64 1
  %i.cyh = insertelement <4 x i16> %i.cyg, i16 %i.cyd, i64 2
  %i.cyi = insertelement <4 x i16> %i.cyh, i16 %i.cye, i64 3
  %i.cyj = zext <4 x i16> %i.cyi to <4 x i32>
  %i.cyk = shl nuw <4 x i32> %i.cyj, splat (i32 16)
  %i.cyl = bitcast <4 x i32> %i.cyk to <4 x float>
  %i.cym = fmul fast <4 x float> %strided.vec634, %i.cyl
  %i.cyn = load i16, ptr %i.cxq, align 2, !tbaa !269
  %i.cyo = load i16, ptr %i.cxs, align 2, !tbaa !269
  %i.cyp = load i16, ptr %i.cxu, align 2, !tbaa !269
  %i.cyq = load i16, ptr %i.cxw, align 2, !tbaa !269
  %i.cyr = insertelement <4 x i16> poison, i16 %i.cyn, i64 0
  %i.cys = insertelement <4 x i16> %i.cyr, i16 %i.cyo, i64 1
  %i.cyt = insertelement <4 x i16> %i.cys, i16 %i.cyp, i64 2
  %i.cyu = insertelement <4 x i16> %i.cyt, i16 %i.cyq, i64 3
  %i.cyv = zext <4 x i16> %i.cyu to <4 x i32>
  %i.cyw = shl nuw <4 x i32> %i.cyv, splat (i32 16)
  %i.cyx = bitcast <4 x i32> %i.cyw to <4 x float>
  %i.cyy = fmul fast <4 x float> %strided.vec635, %i.cyx
  %i.cyz = fadd fast <4 x float> %i.cym, %i.cyy
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cxq, i64 2
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cxs, i64 2
  %i.czc = getelementptr inbounds nuw i8, ptr %i.cxu, i64 2
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cxw, i64 2
  %i.cze = load i16, ptr %i.cza, align 2, !tbaa !269
  %i.czf = load i16, ptr %i.czb, align 2, !tbaa !269
  %i.czg = load i16, ptr %i.czc, align 2, !tbaa !269
  %i.czh = load i16, ptr %i.czd, align 2, !tbaa !269
  %i.czi = insertelement <4 x i16> poison, i16 %i.cze, i64 0
  %i.czj = insertelement <4 x i16> %i.czi, i16 %i.czf, i64 1
  %i.czk = insertelement <4 x i16> %i.czj, i16 %i.czg, i64 2
  %i.czl = insertelement <4 x i16> %i.czk, i16 %i.czh, i64 3
  %i.czm = zext <4 x i16> %i.czl to <4 x i32>
  %i.czn = shl nuw <4 x i32> %i.czm, splat (i32 16)
  %i.czo = bitcast <4 x i32> %i.czn to <4 x float>
  %i.czp = fmul fast <4 x float> %strided.vec636, %i.czo
  %i.czq = fadd fast <4 x float> %i.cyz, %i.czp
  %i.czr = getelementptr inbounds nuw i8, ptr %i.cxq, i64 4
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cxs, i64 4
  %i.czt = getelementptr inbounds nuw i8, ptr %i.cxu, i64 4
  %i.czu = getelementptr inbounds nuw i8, ptr %i.cxw, i64 4
  %i.czv = load i16, ptr %i.czr, align 2, !tbaa !269
  %i.czw = load i16, ptr %i.czs, align 2, !tbaa !269
  %i.czx = load i16, ptr %i.czt, align 2, !tbaa !269
  %i.czy = load i16, ptr %i.czu, align 2, !tbaa !269
  %i.czz = insertelement <4 x i16> poison, i16 %i.czv, i64 0
  %i.daa = insertelement <4 x i16> %i.czz, i16 %i.czw, i64 1
  %i.dab = insertelement <4 x i16> %i.daa, i16 %i.czx, i64 2
  %i.dac = insertelement <4 x i16> %i.dab, i16 %i.czy, i64 3
  %i.dad = zext <4 x i16> %i.dac to <4 x i32>
  %i.dae = shl nuw <4 x i32> %i.dad, splat (i32 16)
  %i.daf = bitcast <4 x i32> %i.dae to <4 x float>
  %i.dag = fmul fast <4 x float> %strided.vec637, %i.daf
  %i.dah = fadd fast <4 x float> %i.czq, %i.dag
  %i.dai = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index630
  store <4 x float> %i.dah, ptr %i.dai, align 4, !tbaa !70, !alias.scope !384, !noalias !381
  %index.next638 = add nuw i64 %index630, 4       ; 2 uses
  %i.daj = icmp eq i64 %index.next638, %n.vec628
  br i1 %i.daj, label %vec.epilog.middle.block639, label %vec.epilog.vector.body629, !llvm.loop !387

vec.epilog.middle.block639:                       ; preds = %vec.epilog.vector.body629
  br i1 %cmp.n640, label %.loopexit.i132, label %.lr.ph339.i.preheader

.lr.ph339.i.preheader:                            ; preds = %vector.memcheck, %iter.check623, %vec.epilog.iter.check625, %vec.epilog.middle.block639
  %indvars.iv362.i.ph = phi i64 [ 0, %iter.check623 ], [ 0, %vector.memcheck ], [ %n.vec612, %vec.epilog.iter.check625 ], [ %n.vec628, %vec.epilog.middle.block639 ] ; 5 uses
  %.0260338.i.ph = phi ptr [ %i.clc, %iter.check623 ], [ %i.clc, %vector.memcheck ], [ %i.cmj, %vec.epilog.iter.check625 ], [ %i.cml, %vec.epilog.middle.block639 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph339.i.prol.loopexit, label %.lr.ph339.i.prol

.lr.ph339.i.prol:                                 ; preds = %.lr.ph339.i.preheader
  %i.dak = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv362.i.ph
  %i.dal = load i32, ptr %i.dak, align 4, !tbaa !25
  %i.dam = sext i32 %i.dal to i64
  %i.dan = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.dam
  %i.dao = getelementptr inbounds i8, ptr %i.dan, i64 -2
  %i.dap = load <4 x float>, ptr %.0260338.i.ph, align 4, !tbaa !70
  %i.daq = load <4 x i16>, ptr %i.dao, align 2, !tbaa !269
  %i.dar = zext <4 x i16> %i.daq to <4 x i32>
  %i.das = shl nuw <4 x i32> %i.dar, splat (i32 16)
  %i.dat = bitcast <4 x i32> %i.das to <4 x float>
  %i.dau = fmul fast <4 x float> %i.dap, %i.dat
  %i.dav = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dau)
  %i.daw = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i.ph
  store float %i.dav, ptr %i.daw, align 4, !tbaa !70
  %i.dax = getelementptr inbounds nuw i8, ptr %.0260338.i.ph, i64 16
  %indvars.iv.next363.i.prol = or disjoint i64 %indvars.iv362.i.ph, 1
  br label %.lr.ph339.i.prol.loopexit

.lr.ph339.i.prol.loopexit:                        ; preds = %.lr.ph339.i.prol, %.lr.ph339.i.preheader
  %indvars.iv362.i.unr = phi i64 [ %indvars.iv362.i.ph, %.lr.ph339.i.preheader ], [ %indvars.iv.next363.i.prol, %.lr.ph339.i.prol ]
  %.0260338.i.unr = phi ptr [ %.0260338.i.ph, %.lr.ph339.i.preheader ], [ %i.dax, %.lr.ph339.i.prol ]
  %i.day = icmp eq i64 %indvars.iv362.i.ph, %i.cmm
  br i1 %i.day, label %.loopexit.i132, label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %.lr.ph339.i.prol.loopexit, %.lr.ph339.i
  %indvars.iv362.i = phi i64 [ %indvars.iv.next363.i.1, %.lr.ph339.i ], [ %indvars.iv362.i.unr, %.lr.ph339.i.prol.loopexit ] ; 4 uses
  %.0260338.i = phi ptr [ %i.dca, %.lr.ph339.i ], [ %.0260338.i.unr, %.lr.ph339.i.prol.loopexit ] ; 3 uses
  %i.daz = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv362.i
  %i.dba = load i32, ptr %i.daz, align 4, !tbaa !25
  %i.dbb = sext i32 %i.dba to i64
  %i.dbc = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.dbb
  %i.dbd = getelementptr inbounds i8, ptr %i.dbc, i64 -2
  %i.dbe = load <4 x float>, ptr %.0260338.i, align 4, !tbaa !70
  %i.dbf = load <4 x i16>, ptr %i.dbd, align 2, !tbaa !269
  %i.dbg = zext <4 x i16> %i.dbf to <4 x i32>
  %i.dbh = shl nuw <4 x i32> %i.dbg, splat (i32 16)
  %i.dbi = bitcast <4 x i32> %i.dbh to <4 x float>
  %i.dbj = fmul fast <4 x float> %i.dbe, %i.dbi
  %i.dbk = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dbj)
  %i.dbl = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv362.i
  store float %i.dbk, ptr %i.dbl, align 4, !tbaa !70
  %i.dbm = getelementptr inbounds nuw i8, ptr %.0260338.i, i64 16
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1 ; 2 uses
  %i.dbn = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv.next363.i
  %i.dbo = load i32, ptr %i.dbn, align 4, !tbaa !25
  %i.dbp = sext i32 %i.dbo to i64
  %i.dbq = getelementptr inbounds [2 x i8], ptr %i.con, i64 %i.dbp
  %i.dbr = getelementptr inbounds i8, ptr %i.dbq, i64 -2
  %i.dbs = load <4 x float>, ptr %i.dbm, align 4, !tbaa !70
  %i.dbt = load <4 x i16>, ptr %i.dbr, align 2, !tbaa !269
  %i.dbu = zext <4 x i16> %i.dbt to <4 x i32>
  %i.dbv = shl nuw <4 x i32> %i.dbu, splat (i32 16)
  %i.dbw = bitcast <4 x i32> %i.dbv to <4 x float>
  %i.dbx = fmul fast <4 x float> %i.dbs, %i.dbw
  %i.dby = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dbx)
  %i.dbz = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.next363.i
  store float %i.dby, ptr %i.dbz, align 4, !tbaa !70
  %i.dca = getelementptr inbounds nuw i8, ptr %.0260338.i, i64 32
  %indvars.iv.next363.i.1 = add nuw nsw i64 %indvars.iv362.i, 2 ; 2 uses
  %exitcond366.not.i.1 = icmp eq i64 %indvars.iv.next363.i.1, %i.cln
  br i1 %exitcond366.not.i.1, label %.loopexit.i132, label %.lr.ph339.i, !llvm.loop !388

bb.gt:                                            ; preds = %bb.gr
  %i.dcb = add nsw i32 %.0257341.i, 2
  %i.dcc = icmp eq i32 %i.cog, %i.dcb
  br i1 %i.dcc, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.dcd = add nsw i32 %i.cog, 1
  %i.dce = sext i32 %i.dcd to i64
  %i.dcf = mul i64 %i.clp, %i.dce
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dcf ; 21 uses
  %i.dch = add nsw i32 %i.cog, 2
  %i.dci = sext i32 %i.dch to i64
  %i.dcj = mul i64 %i.clp, %i.dci
  %i.dck = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dcj ; 21 uses
  br i1 %i.cll, label %iter.check674, label %.loopexit.i132

iter.check674:                                    ; preds = %bb.gu
  br i1 %min.iters.check656, label %.lr.ph336.i.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %iter.check674
  %scevgep644 = getelementptr i8, ptr %.0249345.i, i64 %i.clq ; 2 uses
  %scevgep645 = getelementptr i8, ptr %.0251344.i, i64 %i.clq ; 2 uses
  %bound0646 = icmp ult ptr %.0249345.i, %scevgep645
  %bound1647 = icmp ult ptr %.0251344.i, %scevgep644
  %found.conflict648 = and i1 %bound0646, %bound1647
  %bound0649 = icmp ult ptr %.0249345.i, %scevgep607
  %bound1650 = icmp ult ptr %i.clc, %scevgep644
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx = or i1 %found.conflict648, %found.conflict651
  %bound0652 = icmp ult ptr %.0251344.i, %scevgep607
  %bound1653 = icmp ult ptr %i.clc, %scevgep645
  %found.conflict654 = and i1 %bound0652, %bound1653
  %conflict.rdx655 = or i1 %conflict.rdx, %found.conflict654
  br i1 %conflict.rdx655, label %.lr.ph336.i.preheader, label %vector.main.loop.iter.check657

vector.main.loop.iter.check657:                   ; preds = %vector.memcheck643
  br i1 %min.iters.check658, label %vec.epilog.ph678, label %vector.body661

vector.body661:                                   ; preds = %vector.main.loop.iter.check657, %vector.body661
  %index662 = phi i64 [ %index.next670, %vector.body661 ], [ 0, %vector.main.loop.iter.check657 ] ; 5 uses
  %i.dcl = shl i64 %index662, 4
  %next.gep663 = getelementptr i8, ptr %i.clc, i64 %i.dcl
  %i.dcm = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index662
  %wide.load664 = load <16 x i32>, ptr %i.dcm, align 4, !tbaa !25
  %i.dcn = sext <16 x i32> %wide.load664 to <16 x i64> ; 16 uses
  %i.dco = extractelement <16 x i64> %i.dcn, i64 0 ; 2 uses
  %i.dcp = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dco ; 4 uses
  %i.dcq = extractelement <16 x i64> %i.dcn, i64 1 ; 2 uses
  %i.dcr = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dcq ; 4 uses
  %i.dcs = extractelement <16 x i64> %i.dcn, i64 2 ; 2 uses
  %i.dct = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dcs ; 4 uses
  %i.dcu = extractelement <16 x i64> %i.dcn, i64 3 ; 2 uses
  %i.dcv = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dcu ; 4 uses
  %i.dcw = extractelement <16 x i64> %i.dcn, i64 4 ; 2 uses
  %i.dcx = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dcw ; 4 uses
  %i.dcy = extractelement <16 x i64> %i.dcn, i64 5 ; 2 uses
  %i.dcz = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dcy ; 4 uses
  %i.dda = extractelement <16 x i64> %i.dcn, i64 6 ; 2 uses
  %i.ddb = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dda ; 4 uses
  %i.ddc = extractelement <16 x i64> %i.dcn, i64 7 ; 2 uses
  %i.ddd = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddc ; 4 uses
  %i.dde = extractelement <16 x i64> %i.dcn, i64 8 ; 2 uses
  %i.ddf = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dde ; 4 uses
  %i.ddg = extractelement <16 x i64> %i.dcn, i64 9 ; 2 uses
  %i.ddh = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddg ; 4 uses
  %i.ddi = extractelement <16 x i64> %i.dcn, i64 10 ; 2 uses
  %i.ddj = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddi ; 4 uses
  %i.ddk = extractelement <16 x i64> %i.dcn, i64 11 ; 2 uses
  %i.ddl = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddk ; 4 uses
  %i.ddm = extractelement <16 x i64> %i.dcn, i64 12 ; 2 uses
  %i.ddn = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddm ; 4 uses
  %i.ddo = extractelement <16 x i64> %i.dcn, i64 13 ; 2 uses
  %i.ddp = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddo ; 4 uses
  %i.ddq = extractelement <16 x i64> %i.dcn, i64 14 ; 2 uses
  %i.ddr = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.ddq ; 4 uses
  %i.dds = extractelement <16 x i64> %i.dcn, i64 15 ; 2 uses
  %i.ddt = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dds ; 4 uses
  %i.ddu = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dco ; 4 uses
  %i.ddv = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dcq ; 4 uses
  %i.ddw = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dcs ; 4 uses
  %i.ddx = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dcu ; 4 uses
  %i.ddy = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dcw ; 4 uses
  %i.ddz = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dcy ; 4 uses
  %i.dea = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dda ; 4 uses
  %i.deb = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddc ; 4 uses
  %i.dec = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dde ; 4 uses
  %i.ded = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddg ; 4 uses
  %i.dee = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddi ; 4 uses
  %i.def = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddk ; 4 uses
  %i.deg = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddm ; 4 uses
  %i.deh = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddo ; 4 uses
  %i.dei = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.ddq ; 4 uses
  %i.dej = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dds ; 4 uses
  %wide.vec665 = load <64 x float>, ptr %next.gep663, align 4, !tbaa !70, !alias.scope !389 ; 4 uses
  %strided.vec666 = shufflevector <64 x float> %wide.vec665, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 2 uses
  %strided.vec667 = shufflevector <64 x float> %wide.vec665, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %strided.vec668 = shufflevector <64 x float> %wide.vec665, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 2 uses
  %strided.vec669 = shufflevector <64 x float> %wide.vec665, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.dek = getelementptr inbounds i8, ptr %i.dcp, i64 -2
  %i.del = getelementptr inbounds i8, ptr %i.dcr, i64 -2
  %i.dem = getelementptr inbounds i8, ptr %i.dct, i64 -2
  %i.den = getelementptr inbounds i8, ptr %i.dcv, i64 -2
  %i.deo = getelementptr inbounds i8, ptr %i.dcx, i64 -2
  %i.dep = getelementptr inbounds i8, ptr %i.dcz, i64 -2
  %i.deq = getelementptr inbounds i8, ptr %i.ddb, i64 -2
  %i.der = getelementptr inbounds i8, ptr %i.ddd, i64 -2
  %i.des = getelementptr inbounds i8, ptr %i.ddf, i64 -2
  %i.det = getelementptr inbounds i8, ptr %i.ddh, i64 -2
  %i.deu = getelementptr inbounds i8, ptr %i.ddj, i64 -2
  %i.dev = getelementptr inbounds i8, ptr %i.ddl, i64 -2
  %i.dew = getelementptr inbounds i8, ptr %i.ddn, i64 -2
  %i.dex = getelementptr inbounds i8, ptr %i.ddp, i64 -2
  %i.dey = getelementptr inbounds i8, ptr %i.ddr, i64 -2
  %i.dez = getelementptr inbounds i8, ptr %i.ddt, i64 -2
  %i.dfa = load i16, ptr %i.dek, align 2, !tbaa !269
  %i.dfb = load i16, ptr %i.del, align 2, !tbaa !269
  %i.dfc = load i16, ptr %i.dem, align 2, !tbaa !269
  %i.dfd = load i16, ptr %i.den, align 2, !tbaa !269
  %i.dfe = load i16, ptr %i.deo, align 2, !tbaa !269
  %i.dff = load i16, ptr %i.dep, align 2, !tbaa !269
  %i.dfg = load i16, ptr %i.deq, align 2, !tbaa !269
  %i.dfh = load i16, ptr %i.der, align 2, !tbaa !269
  %i.dfi = load i16, ptr %i.des, align 2, !tbaa !269
  %i.dfj = load i16, ptr %i.det, align 2, !tbaa !269
  %i.dfk = load i16, ptr %i.deu, align 2, !tbaa !269
  %i.dfl = load i16, ptr %i.dev, align 2, !tbaa !269
  %i.dfm = load i16, ptr %i.dew, align 2, !tbaa !269
  %i.dfn = load i16, ptr %i.dex, align 2, !tbaa !269
  %i.dfo = load i16, ptr %i.dey, align 2, !tbaa !269
  %i.dfp = load i16, ptr %i.dez, align 2, !tbaa !269
  %i.dfq = insertelement <16 x i16> poison, i16 %i.dfa, i64 0
  %i.dfr = insertelement <16 x i16> %i.dfq, i16 %i.dfb, i64 1
  %i.dfs = insertelement <16 x i16> %i.dfr, i16 %i.dfc, i64 2
  %i.dft = insertelement <16 x i16> %i.dfs, i16 %i.dfd, i64 3
  %i.dfu = insertelement <16 x i16> %i.dft, i16 %i.dfe, i64 4
  %i.dfv = insertelement <16 x i16> %i.dfu, i16 %i.dff, i64 5
  %i.dfw = insertelement <16 x i16> %i.dfv, i16 %i.dfg, i64 6
  %i.dfx = insertelement <16 x i16> %i.dfw, i16 %i.dfh, i64 7
  %i.dfy = insertelement <16 x i16> %i.dfx, i16 %i.dfi, i64 8
  %i.dfz = insertelement <16 x i16> %i.dfy, i16 %i.dfj, i64 9
  %i.dga = insertelement <16 x i16> %i.dfz, i16 %i.dfk, i64 10
  %i.dgb = insertelement <16 x i16> %i.dga, i16 %i.dfl, i64 11
  %i.dgc = insertelement <16 x i16> %i.dgb, i16 %i.dfm, i64 12
  %i.dgd = insertelement <16 x i16> %i.dgc, i16 %i.dfn, i64 13
  %i.dge = insertelement <16 x i16> %i.dgd, i16 %i.dfo, i64 14
  %i.dgf = insertelement <16 x i16> %i.dge, i16 %i.dfp, i64 15
  %i.dgg = zext <16 x i16> %i.dgf to <16 x i32>
  %i.dgh = shl nuw <16 x i32> %i.dgg, splat (i32 16)
  %i.dgi = bitcast <16 x i32> %i.dgh to <16 x float>
  %i.dgj = fmul fast <16 x float> %strided.vec666, %i.dgi
  %i.dgk = load i16, ptr %i.dcp, align 2, !tbaa !269
  %i.dgl = load i16, ptr %i.dcr, align 2, !tbaa !269
  %i.dgm = load i16, ptr %i.dct, align 2, !tbaa !269
  %i.dgn = load i16, ptr %i.dcv, align 2, !tbaa !269
  %i.dgo = load i16, ptr %i.dcx, align 2, !tbaa !269
  %i.dgp = load i16, ptr %i.dcz, align 2, !tbaa !269
  %i.dgq = load i16, ptr %i.ddb, align 2, !tbaa !269
  %i.dgr = load i16, ptr %i.ddd, align 2, !tbaa !269
  %i.dgs = load i16, ptr %i.ddf, align 2, !tbaa !269
  %i.dgt = load i16, ptr %i.ddh, align 2, !tbaa !269
  %i.dgu = load i16, ptr %i.ddj, align 2, !tbaa !269
  %i.dgv = load i16, ptr %i.ddl, align 2, !tbaa !269
  %i.dgw = load i16, ptr %i.ddn, align 2, !tbaa !269
  %i.dgx = load i16, ptr %i.ddp, align 2, !tbaa !269
  %i.dgy = load i16, ptr %i.ddr, align 2, !tbaa !269
  %i.dgz = load i16, ptr %i.ddt, align 2, !tbaa !269
  %i.dha = insertelement <16 x i16> poison, i16 %i.dgk, i64 0
  %i.dhb = insertelement <16 x i16> %i.dha, i16 %i.dgl, i64 1
  %i.dhc = insertelement <16 x i16> %i.dhb, i16 %i.dgm, i64 2
  %i.dhd = insertelement <16 x i16> %i.dhc, i16 %i.dgn, i64 3
  %i.dhe = insertelement <16 x i16> %i.dhd, i16 %i.dgo, i64 4
  %i.dhf = insertelement <16 x i16> %i.dhe, i16 %i.dgp, i64 5
  %i.dhg = insertelement <16 x i16> %i.dhf, i16 %i.dgq, i64 6
  %i.dhh = insertelement <16 x i16> %i.dhg, i16 %i.dgr, i64 7
  %i.dhi = insertelement <16 x i16> %i.dhh, i16 %i.dgs, i64 8
  %i.dhj = insertelement <16 x i16> %i.dhi, i16 %i.dgt, i64 9
  %i.dhk = insertelement <16 x i16> %i.dhj, i16 %i.dgu, i64 10
  %i.dhl = insertelement <16 x i16> %i.dhk, i16 %i.dgv, i64 11
  %i.dhm = insertelement <16 x i16> %i.dhl, i16 %i.dgw, i64 12
  %i.dhn = insertelement <16 x i16> %i.dhm, i16 %i.dgx, i64 13
  %i.dho = insertelement <16 x i16> %i.dhn, i16 %i.dgy, i64 14
  %i.dhp = insertelement <16 x i16> %i.dho, i16 %i.dgz, i64 15
  %i.dhq = zext <16 x i16> %i.dhp to <16 x i32>
  %i.dhr = shl nuw <16 x i32> %i.dhq, splat (i32 16)
  %i.dhs = bitcast <16 x i32> %i.dhr to <16 x float>
  %i.dht = fmul fast <16 x float> %strided.vec667, %i.dhs
  %i.dhu = fadd fast <16 x float> %i.dgj, %i.dht
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dcp, i64 2
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dcr, i64 2
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dct, i64 2
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dcv, i64 2
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dcx, i64 2
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dcz, i64 2
  %i.dib = getelementptr inbounds nuw i8, ptr %i.ddb, i64 2
  %i.dic = getelementptr inbounds nuw i8, ptr %i.ddd, i64 2
  %i.did = getelementptr inbounds nuw i8, ptr %i.ddf, i64 2
  %i.die = getelementptr inbounds nuw i8, ptr %i.ddh, i64 2
  %i.dif = getelementptr inbounds nuw i8, ptr %i.ddj, i64 2
  %i.dig = getelementptr inbounds nuw i8, ptr %i.ddl, i64 2
  %i.dih = getelementptr inbounds nuw i8, ptr %i.ddn, i64 2
  %i.dii = getelementptr inbounds nuw i8, ptr %i.ddp, i64 2
  %i.dij = getelementptr inbounds nuw i8, ptr %i.ddr, i64 2
  %i.dik = getelementptr inbounds nuw i8, ptr %i.ddt, i64 2
  %i.dil = load i16, ptr %i.dhv, align 2, !tbaa !269
  %i.dim = load i16, ptr %i.dhw, align 2, !tbaa !269
  %i.din = load i16, ptr %i.dhx, align 2, !tbaa !269
  %i.dio = load i16, ptr %i.dhy, align 2, !tbaa !269
  %i.dip = load i16, ptr %i.dhz, align 2, !tbaa !269
  %i.diq = load i16, ptr %i.dia, align 2, !tbaa !269
  %i.dir = load i16, ptr %i.dib, align 2, !tbaa !269
  %i.dis = load i16, ptr %i.dic, align 2, !tbaa !269
  %i.dit = load i16, ptr %i.did, align 2, !tbaa !269
  %i.diu = load i16, ptr %i.die, align 2, !tbaa !269
  %i.div = load i16, ptr %i.dif, align 2, !tbaa !269
  %i.diw = load i16, ptr %i.dig, align 2, !tbaa !269
  %i.dix = load i16, ptr %i.dih, align 2, !tbaa !269
  %i.diy = load i16, ptr %i.dii, align 2, !tbaa !269
  %i.diz = load i16, ptr %i.dij, align 2, !tbaa !269
  %i.dja = load i16, ptr %i.dik, align 2, !tbaa !269
  %i.djb = insertelement <16 x i16> poison, i16 %i.dil, i64 0
  %i.djc = insertelement <16 x i16> %i.djb, i16 %i.dim, i64 1
  %i.djd = insertelement <16 x i16> %i.djc, i16 %i.din, i64 2
  %i.dje = insertelement <16 x i16> %i.djd, i16 %i.dio, i64 3
  %i.djf = insertelement <16 x i16> %i.dje, i16 %i.dip, i64 4
  %i.djg = insertelement <16 x i16> %i.djf, i16 %i.diq, i64 5
  %i.djh = insertelement <16 x i16> %i.djg, i16 %i.dir, i64 6
  %i.dji = insertelement <16 x i16> %i.djh, i16 %i.dis, i64 7
  %i.djj = insertelement <16 x i16> %i.dji, i16 %i.dit, i64 8
  %i.djk = insertelement <16 x i16> %i.djj, i16 %i.diu, i64 9
  %i.djl = insertelement <16 x i16> %i.djk, i16 %i.div, i64 10
  %i.djm = insertelement <16 x i16> %i.djl, i16 %i.diw, i64 11
  %i.djn = insertelement <16 x i16> %i.djm, i16 %i.dix, i64 12
  %i.djo = insertelement <16 x i16> %i.djn, i16 %i.diy, i64 13
  %i.djp = insertelement <16 x i16> %i.djo, i16 %i.diz, i64 14
  %i.djq = insertelement <16 x i16> %i.djp, i16 %i.dja, i64 15
  %i.djr = zext <16 x i16> %i.djq to <16 x i32>
  %i.djs = shl nuw <16 x i32> %i.djr, splat (i32 16)
  %i.djt = bitcast <16 x i32> %i.djs to <16 x float>
  %i.dju = fmul fast <16 x float> %strided.vec668, %i.djt
  %i.djv = fadd fast <16 x float> %i.dhu, %i.dju
  %i.djw = getelementptr inbounds nuw i8, ptr %i.dcp, i64 4
  %i.djx = getelementptr inbounds nuw i8, ptr %i.dcr, i64 4
  %i.djy = getelementptr inbounds nuw i8, ptr %i.dct, i64 4
  %i.djz = getelementptr inbounds nuw i8, ptr %i.dcv, i64 4
  %i.dka = getelementptr inbounds nuw i8, ptr %i.dcx, i64 4
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.dcz, i64 4
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 4
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.ddd, i64 4
  %i.dke = getelementptr inbounds nuw i8, ptr %i.ddf, i64 4
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.ddh, i64 4
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.ddj, i64 4
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.ddl, i64 4
  %i.dki = getelementptr inbounds nuw i8, ptr %i.ddn, i64 4
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.ddp, i64 4
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.ddr, i64 4
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.ddt, i64 4
  %i.dkm = load i16, ptr %i.djw, align 2, !tbaa !269
  %i.dkn = load i16, ptr %i.djx, align 2, !tbaa !269
  %i.dko = load i16, ptr %i.djy, align 2, !tbaa !269
  %i.dkp = load i16, ptr %i.djz, align 2, !tbaa !269
  %i.dkq = load i16, ptr %i.dka, align 2, !tbaa !269
  %i.dkr = load i16, ptr %i.dkb, align 2, !tbaa !269
  %i.dks = load i16, ptr %i.dkc, align 2, !tbaa !269
  %i.dkt = load i16, ptr %i.dkd, align 2, !tbaa !269
  %i.dku = load i16, ptr %i.dke, align 2, !tbaa !269
  %i.dkv = load i16, ptr %i.dkf, align 2, !tbaa !269
  %i.dkw = load i16, ptr %i.dkg, align 2, !tbaa !269
  %i.dkx = load i16, ptr %i.dkh, align 2, !tbaa !269
  %i.dky = load i16, ptr %i.dki, align 2, !tbaa !269
  %i.dkz = load i16, ptr %i.dkj, align 2, !tbaa !269
  %i.dla = load i16, ptr %i.dkk, align 2, !tbaa !269
  %i.dlb = load i16, ptr %i.dkl, align 2, !tbaa !269
  %i.dlc = insertelement <16 x i16> poison, i16 %i.dkm, i64 0
  %i.dld = insertelement <16 x i16> %i.dlc, i16 %i.dkn, i64 1
  %i.dle = insertelement <16 x i16> %i.dld, i16 %i.dko, i64 2
  %i.dlf = insertelement <16 x i16> %i.dle, i16 %i.dkp, i64 3
  %i.dlg = insertelement <16 x i16> %i.dlf, i16 %i.dkq, i64 4
  %i.dlh = insertelement <16 x i16> %i.dlg, i16 %i.dkr, i64 5
  %i.dli = insertelement <16 x i16> %i.dlh, i16 %i.dks, i64 6
  %i.dlj = insertelement <16 x i16> %i.dli, i16 %i.dkt, i64 7
  %i.dlk = insertelement <16 x i16> %i.dlj, i16 %i.dku, i64 8
  %i.dll = insertelement <16 x i16> %i.dlk, i16 %i.dkv, i64 9
  %i.dlm = insertelement <16 x i16> %i.dll, i16 %i.dkw, i64 10
  %i.dln = insertelement <16 x i16> %i.dlm, i16 %i.dkx, i64 11
  %i.dlo = insertelement <16 x i16> %i.dln, i16 %i.dky, i64 12
  %i.dlp = insertelement <16 x i16> %i.dlo, i16 %i.dkz, i64 13
  %i.dlq = insertelement <16 x i16> %i.dlp, i16 %i.dla, i64 14
  %i.dlr = insertelement <16 x i16> %i.dlq, i16 %i.dlb, i64 15
  %i.dls = zext <16 x i16> %i.dlr to <16 x i32>
  %i.dlt = shl nuw <16 x i32> %i.dls, splat (i32 16)
  %i.dlu = bitcast <16 x i32> %i.dlt to <16 x float>
  %i.dlv = fmul fast <16 x float> %strided.vec669, %i.dlu
  %i.dlw = fadd fast <16 x float> %i.djv, %i.dlv
  %i.dlx = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index662
  store <16 x float> %i.dlw, ptr %i.dlx, align 4, !tbaa !70, !alias.scope !392, !noalias !394
  %i.dly = getelementptr inbounds i8, ptr %i.ddu, i64 -2
  %i.dlz = getelementptr inbounds i8, ptr %i.ddv, i64 -2
  %i.dma = getelementptr inbounds i8, ptr %i.ddw, i64 -2
  %i.dmb = getelementptr inbounds i8, ptr %i.ddx, i64 -2
  %i.dmc = getelementptr inbounds i8, ptr %i.ddy, i64 -2
  %i.dmd = getelementptr inbounds i8, ptr %i.ddz, i64 -2
  %i.dme = getelementptr inbounds i8, ptr %i.dea, i64 -2
  %i.dmf = getelementptr inbounds i8, ptr %i.deb, i64 -2
  %i.dmg = getelementptr inbounds i8, ptr %i.dec, i64 -2
  %i.dmh = getelementptr inbounds i8, ptr %i.ded, i64 -2
  %i.dmi = getelementptr inbounds i8, ptr %i.dee, i64 -2
  %i.dmj = getelementptr inbounds i8, ptr %i.def, i64 -2
  %i.dmk = getelementptr inbounds i8, ptr %i.deg, i64 -2
  %i.dml = getelementptr inbounds i8, ptr %i.deh, i64 -2
  %i.dmm = getelementptr inbounds i8, ptr %i.dei, i64 -2
  %i.dmn = getelementptr inbounds i8, ptr %i.dej, i64 -2
  %i.dmo = load i16, ptr %i.dly, align 2, !tbaa !269
  %i.dmp = load i16, ptr %i.dlz, align 2, !tbaa !269
  %i.dmq = load i16, ptr %i.dma, align 2, !tbaa !269
  %i.dmr = load i16, ptr %i.dmb, align 2, !tbaa !269
  %i.dms = load i16, ptr %i.dmc, align 2, !tbaa !269
  %i.dmt = load i16, ptr %i.dmd, align 2, !tbaa !269
  %i.dmu = load i16, ptr %i.dme, align 2, !tbaa !269
  %i.dmv = load i16, ptr %i.dmf, align 2, !tbaa !269
  %i.dmw = load i16, ptr %i.dmg, align 2, !tbaa !269
  %i.dmx = load i16, ptr %i.dmh, align 2, !tbaa !269
  %i.dmy = load i16, ptr %i.dmi, align 2, !tbaa !269
  %i.dmz = load i16, ptr %i.dmj, align 2, !tbaa !269
  %i.dna = load i16, ptr %i.dmk, align 2, !tbaa !269
  %i.dnb = load i16, ptr %i.dml, align 2, !tbaa !269
  %i.dnc = load i16, ptr %i.dmm, align 2, !tbaa !269
  %i.dnd = load i16, ptr %i.dmn, align 2, !tbaa !269
  %i.dne = insertelement <16 x i16> poison, i16 %i.dmo, i64 0
  %i.dnf = insertelement <16 x i16> %i.dne, i16 %i.dmp, i64 1
  %i.dng = insertelement <16 x i16> %i.dnf, i16 %i.dmq, i64 2
  %i.dnh = insertelement <16 x i16> %i.dng, i16 %i.dmr, i64 3
  %i.dni = insertelement <16 x i16> %i.dnh, i16 %i.dms, i64 4
  %i.dnj = insertelement <16 x i16> %i.dni, i16 %i.dmt, i64 5
  %i.dnk = insertelement <16 x i16> %i.dnj, i16 %i.dmu, i64 6
  %i.dnl = insertelement <16 x i16> %i.dnk, i16 %i.dmv, i64 7
  %i.dnm = insertelement <16 x i16> %i.dnl, i16 %i.dmw, i64 8
  %i.dnn = insertelement <16 x i16> %i.dnm, i16 %i.dmx, i64 9
  %i.dno = insertelement <16 x i16> %i.dnn, i16 %i.dmy, i64 10
  %i.dnp = insertelement <16 x i16> %i.dno, i16 %i.dmz, i64 11
  %i.dnq = insertelement <16 x i16> %i.dnp, i16 %i.dna, i64 12
  %i.dnr = insertelement <16 x i16> %i.dnq, i16 %i.dnb, i64 13
  %i.dns = insertelement <16 x i16> %i.dnr, i16 %i.dnc, i64 14
  %i.dnt = insertelement <16 x i16> %i.dns, i16 %i.dnd, i64 15
  %i.dnu = zext <16 x i16> %i.dnt to <16 x i32>
  %i.dnv = shl nuw <16 x i32> %i.dnu, splat (i32 16)
  %i.dnw = bitcast <16 x i32> %i.dnv to <16 x float>
  %i.dnx = fmul fast <16 x float> %strided.vec666, %i.dnw
  %i.dny = load i16, ptr %i.ddu, align 2, !tbaa !269
  %i.dnz = load i16, ptr %i.ddv, align 2, !tbaa !269
  %i.doa = load i16, ptr %i.ddw, align 2, !tbaa !269
  %i.dob = load i16, ptr %i.ddx, align 2, !tbaa !269
  %i.doc = load i16, ptr %i.ddy, align 2, !tbaa !269
  %i.dod = load i16, ptr %i.ddz, align 2, !tbaa !269
  %i.doe = load i16, ptr %i.dea, align 2, !tbaa !269
  %i.dof = load i16, ptr %i.deb, align 2, !tbaa !269
  %i.dog = load i16, ptr %i.dec, align 2, !tbaa !269
  %i.doh = load i16, ptr %i.ded, align 2, !tbaa !269
  %i.doi = load i16, ptr %i.dee, align 2, !tbaa !269
  %i.doj = load i16, ptr %i.def, align 2, !tbaa !269
  %i.dok = load i16, ptr %i.deg, align 2, !tbaa !269
  %i.dol = load i16, ptr %i.deh, align 2, !tbaa !269
  %i.dom = load i16, ptr %i.dei, align 2, !tbaa !269
  %i.don = load i16, ptr %i.dej, align 2, !tbaa !269
  %i.doo = insertelement <16 x i16> poison, i16 %i.dny, i64 0
  %i.dop = insertelement <16 x i16> %i.doo, i16 %i.dnz, i64 1
  %i.doq = insertelement <16 x i16> %i.dop, i16 %i.doa, i64 2
  %i.dor = insertelement <16 x i16> %i.doq, i16 %i.dob, i64 3
  %i.dos = insertelement <16 x i16> %i.dor, i16 %i.doc, i64 4
  %i.dot = insertelement <16 x i16> %i.dos, i16 %i.dod, i64 5
  %i.dou = insertelement <16 x i16> %i.dot, i16 %i.doe, i64 6
  %i.dov = insertelement <16 x i16> %i.dou, i16 %i.dof, i64 7
  %i.dow = insertelement <16 x i16> %i.dov, i16 %i.dog, i64 8
  %i.dox = insertelement <16 x i16> %i.dow, i16 %i.doh, i64 9
  %i.doy = insertelement <16 x i16> %i.dox, i16 %i.doi, i64 10
  %i.doz = insertelement <16 x i16> %i.doy, i16 %i.doj, i64 11
  %i.dpa = insertelement <16 x i16> %i.doz, i16 %i.dok, i64 12
  %i.dpb = insertelement <16 x i16> %i.dpa, i16 %i.dol, i64 13
  %i.dpc = insertelement <16 x i16> %i.dpb, i16 %i.dom, i64 14
  %i.dpd = insertelement <16 x i16> %i.dpc, i16 %i.don, i64 15
  %i.dpe = zext <16 x i16> %i.dpd to <16 x i32>
  %i.dpf = shl nuw <16 x i32> %i.dpe, splat (i32 16)
  %i.dpg = bitcast <16 x i32> %i.dpf to <16 x float>
  %i.dph = fmul fast <16 x float> %strided.vec667, %i.dpg
  %i.dpi = fadd fast <16 x float> %i.dnx, %i.dph
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.ddu, i64 2
  %i.dpk = getelementptr inbounds nuw i8, ptr %i.ddv, i64 2
  %i.dpl = getelementptr inbounds nuw i8, ptr %i.ddw, i64 2
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.ddx, i64 2
  %i.dpn = getelementptr inbounds nuw i8, ptr %i.ddy, i64 2
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.ddz, i64 2
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dea, i64 2
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.deb, i64 2
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dec, i64 2
  %i.dps = getelementptr inbounds nuw i8, ptr %i.ded, i64 2
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dee, i64 2
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.def, i64 2
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.deg, i64 2
  %i.dpw = getelementptr inbounds nuw i8, ptr %i.deh, i64 2
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dei, i64 2
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dej, i64 2
  %i.dpz = load i16, ptr %i.dpj, align 2, !tbaa !269
  %i.dqa = load i16, ptr %i.dpk, align 2, !tbaa !269
  %i.dqb = load i16, ptr %i.dpl, align 2, !tbaa !269
  %i.dqc = load i16, ptr %i.dpm, align 2, !tbaa !269
  %i.dqd = load i16, ptr %i.dpn, align 2, !tbaa !269
  %i.dqe = load i16, ptr %i.dpo, align 2, !tbaa !269
  %i.dqf = load i16, ptr %i.dpp, align 2, !tbaa !269
  %i.dqg = load i16, ptr %i.dpq, align 2, !tbaa !269
  %i.dqh = load i16, ptr %i.dpr, align 2, !tbaa !269
  %i.dqi = load i16, ptr %i.dps, align 2, !tbaa !269
  %i.dqj = load i16, ptr %i.dpt, align 2, !tbaa !269
  %i.dqk = load i16, ptr %i.dpu, align 2, !tbaa !269
  %i.dql = load i16, ptr %i.dpv, align 2, !tbaa !269
  %i.dqm = load i16, ptr %i.dpw, align 2, !tbaa !269
  %i.dqn = load i16, ptr %i.dpx, align 2, !tbaa !269
  %i.dqo = load i16, ptr %i.dpy, align 2, !tbaa !269
  %i.dqp = insertelement <16 x i16> poison, i16 %i.dpz, i64 0
  %i.dqq = insertelement <16 x i16> %i.dqp, i16 %i.dqa, i64 1
  %i.dqr = insertelement <16 x i16> %i.dqq, i16 %i.dqb, i64 2
  %i.dqs = insertelement <16 x i16> %i.dqr, i16 %i.dqc, i64 3
  %i.dqt = insertelement <16 x i16> %i.dqs, i16 %i.dqd, i64 4
  %i.dqu = insertelement <16 x i16> %i.dqt, i16 %i.dqe, i64 5
  %i.dqv = insertelement <16 x i16> %i.dqu, i16 %i.dqf, i64 6
  %i.dqw = insertelement <16 x i16> %i.dqv, i16 %i.dqg, i64 7
  %i.dqx = insertelement <16 x i16> %i.dqw, i16 %i.dqh, i64 8
  %i.dqy = insertelement <16 x i16> %i.dqx, i16 %i.dqi, i64 9
  %i.dqz = insertelement <16 x i16> %i.dqy, i16 %i.dqj, i64 10
  %i.dra = insertelement <16 x i16> %i.dqz, i16 %i.dqk, i64 11
  %i.drb = insertelement <16 x i16> %i.dra, i16 %i.dql, i64 12
  %i.drc = insertelement <16 x i16> %i.drb, i16 %i.dqm, i64 13
  %i.drd = insertelement <16 x i16> %i.drc, i16 %i.dqn, i64 14
  %i.dre = insertelement <16 x i16> %i.drd, i16 %i.dqo, i64 15
  %i.drf = zext <16 x i16> %i.dre to <16 x i32>
  %i.drg = shl nuw <16 x i32> %i.drf, splat (i32 16)
  %i.drh = bitcast <16 x i32> %i.drg to <16 x float>
  %i.dri = fmul fast <16 x float> %strided.vec668, %i.drh
  %i.drj = fadd fast <16 x float> %i.dpi, %i.dri
  %i.drk = getelementptr inbounds nuw i8, ptr %i.ddu, i64 4
  %i.drl = getelementptr inbounds nuw i8, ptr %i.ddv, i64 4
  %i.drm = getelementptr inbounds nuw i8, ptr %i.ddw, i64 4
  %i.drn = getelementptr inbounds nuw i8, ptr %i.ddx, i64 4
  %i.dro = getelementptr inbounds nuw i8, ptr %i.ddy, i64 4
  %i.drp = getelementptr inbounds nuw i8, ptr %i.ddz, i64 4
  %i.drq = getelementptr inbounds nuw i8, ptr %i.dea, i64 4
  %i.drr = getelementptr inbounds nuw i8, ptr %i.deb, i64 4
  %i.drs = getelementptr inbounds nuw i8, ptr %i.dec, i64 4
  %i.drt = getelementptr inbounds nuw i8, ptr %i.ded, i64 4
  %i.dru = getelementptr inbounds nuw i8, ptr %i.dee, i64 4
  %i.drv = getelementptr inbounds nuw i8, ptr %i.def, i64 4
  %i.drw = getelementptr inbounds nuw i8, ptr %i.deg, i64 4
  %i.drx = getelementptr inbounds nuw i8, ptr %i.deh, i64 4
  %i.dry = getelementptr inbounds nuw i8, ptr %i.dei, i64 4
  %i.drz = getelementptr inbounds nuw i8, ptr %i.dej, i64 4
  %i.dsa = load i16, ptr %i.drk, align 2, !tbaa !269
  %i.dsb = load i16, ptr %i.drl, align 2, !tbaa !269
  %i.dsc = load i16, ptr %i.drm, align 2, !tbaa !269
  %i.dsd = load i16, ptr %i.drn, align 2, !tbaa !269
  %i.dse = load i16, ptr %i.dro, align 2, !tbaa !269
  %i.dsf = load i16, ptr %i.drp, align 2, !tbaa !269
  %i.dsg = load i16, ptr %i.drq, align 2, !tbaa !269
  %i.dsh = load i16, ptr %i.drr, align 2, !tbaa !269
  %i.dsi = load i16, ptr %i.drs, align 2, !tbaa !269
  %i.dsj = load i16, ptr %i.drt, align 2, !tbaa !269
  %i.dsk = load i16, ptr %i.dru, align 2, !tbaa !269
  %i.dsl = load i16, ptr %i.drv, align 2, !tbaa !269
  %i.dsm = load i16, ptr %i.drw, align 2, !tbaa !269
  %i.dsn = load i16, ptr %i.drx, align 2, !tbaa !269
  %i.dso = load i16, ptr %i.dry, align 2, !tbaa !269
  %i.dsp = load i16, ptr %i.drz, align 2, !tbaa !269
  %i.dsq = insertelement <16 x i16> poison, i16 %i.dsa, i64 0
  %i.dsr = insertelement <16 x i16> %i.dsq, i16 %i.dsb, i64 1
  %i.dss = insertelement <16 x i16> %i.dsr, i16 %i.dsc, i64 2
  %i.dst = insertelement <16 x i16> %i.dss, i16 %i.dsd, i64 3
  %i.dsu = insertelement <16 x i16> %i.dst, i16 %i.dse, i64 4
  %i.dsv = insertelement <16 x i16> %i.dsu, i16 %i.dsf, i64 5
  %i.dsw = insertelement <16 x i16> %i.dsv, i16 %i.dsg, i64 6
  %i.dsx = insertelement <16 x i16> %i.dsw, i16 %i.dsh, i64 7
  %i.dsy = insertelement <16 x i16> %i.dsx, i16 %i.dsi, i64 8
  %i.dsz = insertelement <16 x i16> %i.dsy, i16 %i.dsj, i64 9
  %i.dta = insertelement <16 x i16> %i.dsz, i16 %i.dsk, i64 10
  %i.dtb = insertelement <16 x i16> %i.dta, i16 %i.dsl, i64 11
  %i.dtc = insertelement <16 x i16> %i.dtb, i16 %i.dsm, i64 12
  %i.dtd = insertelement <16 x i16> %i.dtc, i16 %i.dsn, i64 13
  %i.dte = insertelement <16 x i16> %i.dtd, i16 %i.dso, i64 14
  %i.dtf = insertelement <16 x i16> %i.dte, i16 %i.dsp, i64 15
  %i.dtg = zext <16 x i16> %i.dtf to <16 x i32>
  %i.dth = shl nuw <16 x i32> %i.dtg, splat (i32 16)
  %i.dti = bitcast <16 x i32> %i.dth to <16 x float>
  %i.dtj = fmul fast <16 x float> %strided.vec669, %i.dti
  %i.dtk = fadd fast <16 x float> %i.drj, %i.dtj
  %i.dtl = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index662
  store <16 x float> %i.dtk, ptr %i.dtl, align 4, !tbaa !70, !alias.scope !396, !noalias !389
  %index.next670 = add nuw i64 %index662, 16      ; 2 uses
  %i.dtm = icmp eq i64 %index.next670, %n.vec660
  br i1 %i.dtm, label %middle.block671, label %vector.body661, !llvm.loop !397

middle.block671:                                  ; preds = %vector.body661
  br i1 %cmp.n672, label %.loopexit.i132, label %vec.epilog.iter.check676

vec.epilog.iter.check676:                         ; preds = %middle.block671
  br i1 %min.epilog.iters.check677, label %.lr.ph336.i.preheader, label %vec.epilog.ph678, !prof !120

vec.epilog.ph678:                                 ; preds = %vector.main.loop.iter.check657, %vec.epilog.iter.check676
  %vec.epilog.resume.val673 = phi i64 [ %n.vec660, %vec.epilog.iter.check676 ], [ 0, %vector.main.loop.iter.check657 ]
  br label %vec.epilog.vector.body680

vec.epilog.vector.body680:                        ; preds = %vec.epilog.vector.body680, %vec.epilog.ph678
  %index681 = phi i64 [ %vec.epilog.resume.val673, %vec.epilog.ph678 ], [ %index.next689, %vec.epilog.vector.body680 ] ; 5 uses
  %i.dtn = shl i64 %index681, 4
  %next.gep682 = getelementptr i8, ptr %i.clc, i64 %i.dtn
  %i.dto = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index681
  %wide.load683 = load <4 x i32>, ptr %i.dto, align 4, !tbaa !25
  %i.dtp = sext <4 x i32> %wide.load683 to <4 x i64> ; 4 uses
  %i.dtq = extractelement <4 x i64> %i.dtp, i64 0 ; 2 uses
  %i.dtr = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dtq ; 4 uses
  %i.dts = extractelement <4 x i64> %i.dtp, i64 1 ; 2 uses
  %i.dtt = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dts ; 4 uses
  %i.dtu = extractelement <4 x i64> %i.dtp, i64 2 ; 2 uses
  %i.dtv = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dtu ; 4 uses
  %i.dtw = extractelement <4 x i64> %i.dtp, i64 3 ; 2 uses
  %i.dtx = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dtw ; 4 uses
  %i.dty = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dtq ; 4 uses
  %i.dtz = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dts ; 4 uses
  %i.dua = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dtu ; 4 uses
  %i.dub = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dtw ; 4 uses
  %wide.vec684 = load <16 x float>, ptr %next.gep682, align 4, !tbaa !70, !alias.scope !389 ; 4 uses
  %strided.vec685 = shufflevector <16 x float> %wide.vec684, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec686 = shufflevector <16 x float> %wide.vec684, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec687 = shufflevector <16 x float> %wide.vec684, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %strided.vec688 = shufflevector <16 x float> %wide.vec684, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.duc = getelementptr inbounds i8, ptr %i.dtr, i64 -2
  %i.dud = getelementptr inbounds i8, ptr %i.dtt, i64 -2
  %i.due = getelementptr inbounds i8, ptr %i.dtv, i64 -2
  %i.duf = getelementptr inbounds i8, ptr %i.dtx, i64 -2
  %i.dug = load i16, ptr %i.duc, align 2, !tbaa !269
  %i.duh = load i16, ptr %i.dud, align 2, !tbaa !269
  %i.dui = load i16, ptr %i.due, align 2, !tbaa !269
  %i.duj = load i16, ptr %i.duf, align 2, !tbaa !269
  %i.duk = insertelement <4 x i16> poison, i16 %i.dug, i64 0
  %i.dul = insertelement <4 x i16> %i.duk, i16 %i.duh, i64 1
  %i.dum = insertelement <4 x i16> %i.dul, i16 %i.dui, i64 2
  %i.dun = insertelement <4 x i16> %i.dum, i16 %i.duj, i64 3
  %i.duo = zext <4 x i16> %i.dun to <4 x i32>
  %i.dup = shl nuw <4 x i32> %i.duo, splat (i32 16)
  %i.duq = bitcast <4 x i32> %i.dup to <4 x float>
  %i.dur = fmul fast <4 x float> %strided.vec685, %i.duq
  %i.dus = load i16, ptr %i.dtr, align 2, !tbaa !269
  %i.dut = load i16, ptr %i.dtt, align 2, !tbaa !269
  %i.duu = load i16, ptr %i.dtv, align 2, !tbaa !269
  %i.duv = load i16, ptr %i.dtx, align 2, !tbaa !269
  %i.duw = insertelement <4 x i16> poison, i16 %i.dus, i64 0
  %i.dux = insertelement <4 x i16> %i.duw, i16 %i.dut, i64 1
  %i.duy = insertelement <4 x i16> %i.dux, i16 %i.duu, i64 2
  %i.duz = insertelement <4 x i16> %i.duy, i16 %i.duv, i64 3
  %i.dva = zext <4 x i16> %i.duz to <4 x i32>
  %i.dvb = shl nuw <4 x i32> %i.dva, splat (i32 16)
  %i.dvc = bitcast <4 x i32> %i.dvb to <4 x float>
  %i.dvd = fmul fast <4 x float> %strided.vec686, %i.dvc
  %i.dve = fadd fast <4 x float> %i.dur, %i.dvd
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dtr, i64 2
  %i.dvg = getelementptr inbounds nuw i8, ptr %i.dtt, i64 2
  %i.dvh = getelementptr inbounds nuw i8, ptr %i.dtv, i64 2
  %i.dvi = getelementptr inbounds nuw i8, ptr %i.dtx, i64 2
  %i.dvj = load i16, ptr %i.dvf, align 2, !tbaa !269
  %i.dvk = load i16, ptr %i.dvg, align 2, !tbaa !269
  %i.dvl = load i16, ptr %i.dvh, align 2, !tbaa !269
  %i.dvm = load i16, ptr %i.dvi, align 2, !tbaa !269
  %i.dvn = insertelement <4 x i16> poison, i16 %i.dvj, i64 0
  %i.dvo = insertelement <4 x i16> %i.dvn, i16 %i.dvk, i64 1
  %i.dvp = insertelement <4 x i16> %i.dvo, i16 %i.dvl, i64 2
  %i.dvq = insertelement <4 x i16> %i.dvp, i16 %i.dvm, i64 3
  %i.dvr = zext <4 x i16> %i.dvq to <4 x i32>
  %i.dvs = shl nuw <4 x i32> %i.dvr, splat (i32 16)
  %i.dvt = bitcast <4 x i32> %i.dvs to <4 x float>
  %i.dvu = fmul fast <4 x float> %strided.vec687, %i.dvt
  %i.dvv = fadd fast <4 x float> %i.dve, %i.dvu
  %i.dvw = getelementptr inbounds nuw i8, ptr %i.dtr, i64 4
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dtt, i64 4
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dtv, i64 4
  %i.dvz = getelementptr inbounds nuw i8, ptr %i.dtx, i64 4
  %i.dwa = load i16, ptr %i.dvw, align 2, !tbaa !269
  %i.dwb = load i16, ptr %i.dvx, align 2, !tbaa !269
  %i.dwc = load i16, ptr %i.dvy, align 2, !tbaa !269
  %i.dwd = load i16, ptr %i.dvz, align 2, !tbaa !269
  %i.dwe = insertelement <4 x i16> poison, i16 %i.dwa, i64 0
  %i.dwf = insertelement <4 x i16> %i.dwe, i16 %i.dwb, i64 1
  %i.dwg = insertelement <4 x i16> %i.dwf, i16 %i.dwc, i64 2
  %i.dwh = insertelement <4 x i16> %i.dwg, i16 %i.dwd, i64 3
  %i.dwi = zext <4 x i16> %i.dwh to <4 x i32>
  %i.dwj = shl nuw <4 x i32> %i.dwi, splat (i32 16)
  %i.dwk = bitcast <4 x i32> %i.dwj to <4 x float>
  %i.dwl = fmul fast <4 x float> %strided.vec688, %i.dwk
  %i.dwm = fadd fast <4 x float> %i.dvv, %i.dwl
  %i.dwn = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index681
  store <4 x float> %i.dwm, ptr %i.dwn, align 4, !tbaa !70, !alias.scope !392, !noalias !394
  %i.dwo = getelementptr inbounds i8, ptr %i.dty, i64 -2
  %i.dwp = getelementptr inbounds i8, ptr %i.dtz, i64 -2
  %i.dwq = getelementptr inbounds i8, ptr %i.dua, i64 -2
  %i.dwr = getelementptr inbounds i8, ptr %i.dub, i64 -2
  %i.dws = load i16, ptr %i.dwo, align 2, !tbaa !269
  %i.dwt = load i16, ptr %i.dwp, align 2, !tbaa !269
  %i.dwu = load i16, ptr %i.dwq, align 2, !tbaa !269
  %i.dwv = load i16, ptr %i.dwr, align 2, !tbaa !269
  %i.dww = insertelement <4 x i16> poison, i16 %i.dws, i64 0
  %i.dwx = insertelement <4 x i16> %i.dww, i16 %i.dwt, i64 1
  %i.dwy = insertelement <4 x i16> %i.dwx, i16 %i.dwu, i64 2
  %i.dwz = insertelement <4 x i16> %i.dwy, i16 %i.dwv, i64 3
  %i.dxa = zext <4 x i16> %i.dwz to <4 x i32>
  %i.dxb = shl nuw <4 x i32> %i.dxa, splat (i32 16)
  %i.dxc = bitcast <4 x i32> %i.dxb to <4 x float>
  %i.dxd = fmul fast <4 x float> %strided.vec685, %i.dxc
  %i.dxe = load i16, ptr %i.dty, align 2, !tbaa !269
  %i.dxf = load i16, ptr %i.dtz, align 2, !tbaa !269
  %i.dxg = load i16, ptr %i.dua, align 2, !tbaa !269
  %i.dxh = load i16, ptr %i.dub, align 2, !tbaa !269
  %i.dxi = insertelement <4 x i16> poison, i16 %i.dxe, i64 0
  %i.dxj = insertelement <4 x i16> %i.dxi, i16 %i.dxf, i64 1
  %i.dxk = insertelement <4 x i16> %i.dxj, i16 %i.dxg, i64 2
  %i.dxl = insertelement <4 x i16> %i.dxk, i16 %i.dxh, i64 3
  %i.dxm = zext <4 x i16> %i.dxl to <4 x i32>
  %i.dxn = shl nuw <4 x i32> %i.dxm, splat (i32 16)
  %i.dxo = bitcast <4 x i32> %i.dxn to <4 x float>
  %i.dxp = fmul fast <4 x float> %strided.vec686, %i.dxo
  %i.dxq = fadd fast <4 x float> %i.dxd, %i.dxp
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dty, i64 2
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dtz, i64 2
  %i.dxt = getelementptr inbounds nuw i8, ptr %i.dua, i64 2
  %i.dxu = getelementptr inbounds nuw i8, ptr %i.dub, i64 2
  %i.dxv = load i16, ptr %i.dxr, align 2, !tbaa !269
  %i.dxw = load i16, ptr %i.dxs, align 2, !tbaa !269
  %i.dxx = load i16, ptr %i.dxt, align 2, !tbaa !269
  %i.dxy = load i16, ptr %i.dxu, align 2, !tbaa !269
  %i.dxz = insertelement <4 x i16> poison, i16 %i.dxv, i64 0
  %i.dya = insertelement <4 x i16> %i.dxz, i16 %i.dxw, i64 1
  %i.dyb = insertelement <4 x i16> %i.dya, i16 %i.dxx, i64 2
  %i.dyc = insertelement <4 x i16> %i.dyb, i16 %i.dxy, i64 3
  %i.dyd = zext <4 x i16> %i.dyc to <4 x i32>
  %i.dye = shl nuw <4 x i32> %i.dyd, splat (i32 16)
  %i.dyf = bitcast <4 x i32> %i.dye to <4 x float>
  %i.dyg = fmul fast <4 x float> %strided.vec687, %i.dyf
  %i.dyh = fadd fast <4 x float> %i.dxq, %i.dyg
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dty, i64 4
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dtz, i64 4
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dua, i64 4
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dub, i64 4
  %i.dym = load i16, ptr %i.dyi, align 2, !tbaa !269
  %i.dyn = load i16, ptr %i.dyj, align 2, !tbaa !269
  %i.dyo = load i16, ptr %i.dyk, align 2, !tbaa !269
  %i.dyp = load i16, ptr %i.dyl, align 2, !tbaa !269
  %i.dyq = insertelement <4 x i16> poison, i16 %i.dym, i64 0
  %i.dyr = insertelement <4 x i16> %i.dyq, i16 %i.dyn, i64 1
  %i.dys = insertelement <4 x i16> %i.dyr, i16 %i.dyo, i64 2
  %i.dyt = insertelement <4 x i16> %i.dys, i16 %i.dyp, i64 3
  %i.dyu = zext <4 x i16> %i.dyt to <4 x i32>
  %i.dyv = shl nuw <4 x i32> %i.dyu, splat (i32 16)
  %i.dyw = bitcast <4 x i32> %i.dyv to <4 x float>
  %i.dyx = fmul fast <4 x float> %strided.vec688, %i.dyw
  %i.dyy = fadd fast <4 x float> %i.dyh, %i.dyx
  %i.dyz = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index681
  store <4 x float> %i.dyy, ptr %i.dyz, align 4, !tbaa !70, !alias.scope !396, !noalias !389
  %index.next689 = add nuw i64 %index681, 4       ; 2 uses
  %i.dza = icmp eq i64 %index.next689, %n.vec679
  br i1 %i.dza, label %vec.epilog.middle.block690, label %vec.epilog.vector.body680, !llvm.loop !398

vec.epilog.middle.block690:                       ; preds = %vec.epilog.vector.body680
  br i1 %cmp.n691, label %.loopexit.i132, label %.lr.ph336.i.preheader

.lr.ph336.i.preheader:                            ; preds = %vector.memcheck643, %iter.check674, %vec.epilog.iter.check676, %vec.epilog.middle.block690
  %indvars.iv357.i.ph = phi i64 [ 0, %iter.check674 ], [ 0, %vector.memcheck643 ], [ %n.vec660, %vec.epilog.iter.check676 ], [ %n.vec679, %vec.epilog.middle.block690 ]
  %.0262335.i.ph = phi ptr [ %i.clc, %iter.check674 ], [ %i.clc, %vector.memcheck643 ], [ %i.cme, %vec.epilog.iter.check676 ], [ %i.cmg, %vec.epilog.middle.block690 ]
  br label %.lr.ph336.i

.lr.ph336.i:                                      ; preds = %.lr.ph336.i.preheader, %.lr.ph336.i
  %indvars.iv357.i = phi i64 [ %indvars.iv.next358.i, %.lr.ph336.i ], [ %indvars.iv357.i.ph, %.lr.ph336.i.preheader ] ; 4 uses
  %.0262335.i = phi ptr [ %i.dzx, %.lr.ph336.i ], [ %.0262335.i.ph, %.lr.ph336.i.preheader ] ; 2 uses
  %i.dzb = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv357.i
  %i.dzc = load i32, ptr %i.dzb, align 4, !tbaa !25
  %i.dzd = sext i32 %i.dzc to i64                 ; 2 uses
  %i.dze = getelementptr inbounds [2 x i8], ptr %i.dcg, i64 %i.dzd
  %i.dzf = getelementptr inbounds [2 x i8], ptr %i.dck, i64 %i.dzd
  %i.dzg = getelementptr inbounds i8, ptr %i.dze, i64 -2
  %i.dzh = load <4 x float>, ptr %.0262335.i, align 4, !tbaa !70 ; 2 uses
  %i.dzi = load <4 x i16>, ptr %i.dzg, align 2, !tbaa !269
  %i.dzj = zext <4 x i16> %i.dzi to <4 x i32>
  %i.dzk = shl nuw <4 x i32> %i.dzj, splat (i32 16)
  %i.dzl = bitcast <4 x i32> %i.dzk to <4 x float>
  %i.dzm = fmul fast <4 x float> %i.dzh, %i.dzl
  %i.dzn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dzm)
  %i.dzo = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv357.i
  store float %i.dzn, ptr %i.dzo, align 4, !tbaa !70
  %i.dzp = getelementptr inbounds i8, ptr %i.dzf, i64 -2
  %i.dzq = load <4 x i16>, ptr %i.dzp, align 2, !tbaa !269
  %i.dzr = zext <4 x i16> %i.dzq to <4 x i32>
  %i.dzs = shl nuw <4 x i32> %i.dzr, splat (i32 16)
  %i.dzt = bitcast <4 x i32> %i.dzs to <4 x float>
  %i.dzu = fmul fast <4 x float> %i.dzh, %i.dzt
  %i.dzv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dzu)
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv357.i
  store float %i.dzv, ptr %i.dzw, align 4, !tbaa !70
  %i.dzx = getelementptr inbounds nuw i8, ptr %.0262335.i, i64 16
  %indvars.iv.next358.i = add nuw nsw i64 %indvars.iv357.i, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next358.i, %i.cln
  br i1 %exitcond361.not.i, label %.loopexit.i132, label %.lr.ph336.i, !llvm.loop !399

bb.gv:                                            ; preds = %bb.gt
  %i.dzy = add nsw i32 %.0257341.i, 3
  %i.dzz = icmp eq i32 %i.cog, %i.dzy
  br i1 %i.dzz, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.eaa = sext i32 %i.cog to i64
  %i.eab = mul i64 %i.clp, %i.eaa
  %i.eac = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eab ; 21 uses
  %i.ead = add nsw i32 %i.cog, 1
  %i.eae = sext i32 %i.ead to i64
  %i.eaf = mul i64 %i.clp, %i.eae
  %i.eag = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eaf ; 21 uses
  %i.eah = add nsw i32 %i.cog, 2
  %i.eai = sext i32 %i.eah to i64
  %i.eaj = mul i64 %i.clp, %i.eai
  %i.eak = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eaj ; 21 uses
  br i1 %i.cll, label %iter.check739, label %.loopexit.i132

iter.check739:                                    ; preds = %bb.gw
  br i1 %min.iters.check721, label %.lr.ph333.i.preheader, label %vector.memcheck694

vector.memcheck694:                               ; preds = %iter.check739
  %scevgep695 = getelementptr i8, ptr %.0249345.i, i64 %i.clq ; 3 uses
  %scevgep696 = getelementptr i8, ptr %.0251344.i, i64 %i.clq ; 3 uses
  %scevgep697 = getelementptr i8, ptr %.0253343.i, i64 %i.clq ; 3 uses
  %bound0698 = icmp ult ptr %.0249345.i, %scevgep696
  %bound1699 = icmp ult ptr %.0251344.i, %scevgep695
  %found.conflict700 = and i1 %bound0698, %bound1699
  %bound0701 = icmp ult ptr %.0249345.i, %scevgep697
  %bound1702 = icmp ult ptr %.0253343.i, %scevgep695
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx704 = or i1 %found.conflict700, %found.conflict703
  %bound0705 = icmp ult ptr %.0249345.i, %scevgep607
  %bound1706 = icmp ult ptr %i.clc, %scevgep695
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx708 = or i1 %conflict.rdx704, %found.conflict707
  %bound0709 = icmp ult ptr %.0251344.i, %scevgep697
  %bound1710 = icmp ult ptr %.0253343.i, %scevgep696
  %found.conflict711 = and i1 %bound0709, %bound1710
  %conflict.rdx712 = or i1 %conflict.rdx708, %found.conflict711
  %bound0713 = icmp ult ptr %.0251344.i, %scevgep607
  %bound1714 = icmp ult ptr %i.clc, %scevgep696
  %found.conflict715 = and i1 %bound0713, %bound1714
  %conflict.rdx716 = or i1 %conflict.rdx712, %found.conflict715
  %bound0717 = icmp ult ptr %.0253343.i, %scevgep607
  %bound1718 = icmp ult ptr %i.clc, %scevgep697
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx720 = or i1 %conflict.rdx716, %found.conflict719
  br i1 %conflict.rdx720, label %.lr.ph333.i.preheader, label %vector.main.loop.iter.check722

vector.main.loop.iter.check722:                   ; preds = %vector.memcheck694
  br i1 %min.iters.check723, label %vec.epilog.ph743, label %vector.body726

vector.body726:                                   ; preds = %vector.main.loop.iter.check722, %vector.body726
  %index727 = phi i64 [ %index.next735, %vector.body726 ], [ 0, %vector.main.loop.iter.check722 ] ; 6 uses
  %i.eal = shl i64 %index727, 4
  %next.gep728 = getelementptr i8, ptr %i.clc, i64 %i.eal
  %i.eam = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index727
  %wide.load729 = load <16 x i32>, ptr %i.eam, align 4, !tbaa !25
  %i.ean = sext <16 x i32> %wide.load729 to <16 x i64> ; 16 uses
  %i.eao = extractelement <16 x i64> %i.ean, i64 0 ; 3 uses
  %i.eap = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eao ; 4 uses
  %i.eaq = extractelement <16 x i64> %i.ean, i64 1 ; 3 uses
  %i.ear = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eaq ; 4 uses
  %i.eas = extractelement <16 x i64> %i.ean, i64 2 ; 3 uses
  %i.eat = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eas ; 4 uses
  %i.eau = extractelement <16 x i64> %i.ean, i64 3 ; 3 uses
  %i.eav = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eau ; 4 uses
  %i.eaw = extractelement <16 x i64> %i.ean, i64 4 ; 3 uses
  %i.eax = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eaw ; 4 uses
  %i.eay = extractelement <16 x i64> %i.ean, i64 5 ; 3 uses
  %i.eaz = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eay ; 4 uses
  %i.eba = extractelement <16 x i64> %i.ean, i64 6 ; 3 uses
  %i.ebb = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.eba ; 4 uses
  %i.ebc = extractelement <16 x i64> %i.ean, i64 7 ; 3 uses
  %i.ebd = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebc ; 4 uses
  %i.ebe = extractelement <16 x i64> %i.ean, i64 8 ; 3 uses
  %i.ebf = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebe ; 4 uses
  %i.ebg = extractelement <16 x i64> %i.ean, i64 9 ; 3 uses
  %i.ebh = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebg ; 4 uses
  %i.ebi = extractelement <16 x i64> %i.ean, i64 10 ; 3 uses
  %i.ebj = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebi ; 4 uses
  %i.ebk = extractelement <16 x i64> %i.ean, i64 11 ; 3 uses
  %i.ebl = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebk ; 4 uses
  %i.ebm = extractelement <16 x i64> %i.ean, i64 12 ; 3 uses
  %i.ebn = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebm ; 4 uses
  %i.ebo = extractelement <16 x i64> %i.ean, i64 13 ; 3 uses
  %i.ebp = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebo ; 4 uses
  %i.ebq = extractelement <16 x i64> %i.ean, i64 14 ; 3 uses
  %i.ebr = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebq ; 4 uses
  %i.ebs = extractelement <16 x i64> %i.ean, i64 15 ; 3 uses
  %i.ebt = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ebs ; 4 uses
  %i.ebu = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eao ; 4 uses
  %i.ebv = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eaq ; 4 uses
  %i.ebw = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eas ; 4 uses
  %i.ebx = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eau ; 4 uses
  %i.eby = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eaw ; 4 uses
  %i.ebz = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eay ; 4 uses
  %i.eca = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.eba ; 4 uses
  %i.ecb = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebc ; 4 uses
  %i.ecc = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebe ; 4 uses
  %i.ecd = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebg ; 4 uses
  %i.ece = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebi ; 4 uses
  %i.ecf = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebk ; 4 uses
  %i.ecg = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebm ; 4 uses
  %i.ech = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebo ; 4 uses
  %i.eci = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebq ; 4 uses
  %i.ecj = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ebs ; 4 uses
  %i.eck = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eao ; 4 uses
  %i.ecl = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eaq ; 4 uses
  %i.ecm = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eas ; 4 uses
  %i.ecn = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eau ; 4 uses
  %i.eco = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eaw ; 4 uses
  %i.ecp = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eay ; 4 uses
  %i.ecq = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.eba ; 4 uses
  %i.ecr = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebc ; 4 uses
  %i.ecs = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebe ; 4 uses
  %i.ect = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebg ; 4 uses
  %i.ecu = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebi ; 4 uses
  %i.ecv = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebk ; 4 uses
  %i.ecw = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebm ; 4 uses
  %i.ecx = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebo ; 4 uses
  %i.ecy = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebq ; 4 uses
  %i.ecz = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ebs ; 4 uses
  %wide.vec730 = load <64 x float>, ptr %next.gep728, align 4, !tbaa !70, !alias.scope !400 ; 4 uses
  %strided.vec731 = shufflevector <64 x float> %wide.vec730, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 3 uses
  %strided.vec732 = shufflevector <64 x float> %wide.vec730, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 3 uses
  %strided.vec733 = shufflevector <64 x float> %wide.vec730, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 3 uses
  %strided.vec734 = shufflevector <64 x float> %wide.vec730, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 3 uses
  %i.eda = getelementptr inbounds i8, ptr %i.eap, i64 -2
  %i.edb = getelementptr inbounds i8, ptr %i.ear, i64 -2
  %i.edc = getelementptr inbounds i8, ptr %i.eat, i64 -2
  %i.edd = getelementptr inbounds i8, ptr %i.eav, i64 -2
  %i.ede = getelementptr inbounds i8, ptr %i.eax, i64 -2
  %i.edf = getelementptr inbounds i8, ptr %i.eaz, i64 -2
  %i.edg = getelementptr inbounds i8, ptr %i.ebb, i64 -2
  %i.edh = getelementptr inbounds i8, ptr %i.ebd, i64 -2
  %i.edi = getelementptr inbounds i8, ptr %i.ebf, i64 -2
  %i.edj = getelementptr inbounds i8, ptr %i.ebh, i64 -2
  %i.edk = getelementptr inbounds i8, ptr %i.ebj, i64 -2
  %i.edl = getelementptr inbounds i8, ptr %i.ebl, i64 -2
  %i.edm = getelementptr inbounds i8, ptr %i.ebn, i64 -2
  %i.edn = getelementptr inbounds i8, ptr %i.ebp, i64 -2
  %i.edo = getelementptr inbounds i8, ptr %i.ebr, i64 -2
  %i.edp = getelementptr inbounds i8, ptr %i.ebt, i64 -2
  %i.edq = load i16, ptr %i.eda, align 2, !tbaa !269
  %i.edr = load i16, ptr %i.edb, align 2, !tbaa !269
  %i.eds = load i16, ptr %i.edc, align 2, !tbaa !269
  %i.edt = load i16, ptr %i.edd, align 2, !tbaa !269
  %i.edu = load i16, ptr %i.ede, align 2, !tbaa !269
  %i.edv = load i16, ptr %i.edf, align 2, !tbaa !269
  %i.edw = load i16, ptr %i.edg, align 2, !tbaa !269
  %i.edx = load i16, ptr %i.edh, align 2, !tbaa !269
  %i.edy = load i16, ptr %i.edi, align 2, !tbaa !269
  %i.edz = load i16, ptr %i.edj, align 2, !tbaa !269
  %i.eea = load i16, ptr %i.edk, align 2, !tbaa !269
  %i.eeb = load i16, ptr %i.edl, align 2, !tbaa !269
  %i.eec = load i16, ptr %i.edm, align 2, !tbaa !269
  %i.eed = load i16, ptr %i.edn, align 2, !tbaa !269
  %i.eee = load i16, ptr %i.edo, align 2, !tbaa !269
  %i.eef = load i16, ptr %i.edp, align 2, !tbaa !269
  %i.eeg = insertelement <16 x i16> poison, i16 %i.edq, i64 0
  %i.eeh = insertelement <16 x i16> %i.eeg, i16 %i.edr, i64 1
  %i.eei = insertelement <16 x i16> %i.eeh, i16 %i.eds, i64 2
  %i.eej = insertelement <16 x i16> %i.eei, i16 %i.edt, i64 3
  %i.eek = insertelement <16 x i16> %i.eej, i16 %i.edu, i64 4
  %i.eel = insertelement <16 x i16> %i.eek, i16 %i.edv, i64 5
  %i.eem = insertelement <16 x i16> %i.eel, i16 %i.edw, i64 6
  %i.een = insertelement <16 x i16> %i.eem, i16 %i.edx, i64 7
  %i.eeo = insertelement <16 x i16> %i.een, i16 %i.edy, i64 8
  %i.eep = insertelement <16 x i16> %i.eeo, i16 %i.edz, i64 9
  %i.eeq = insertelement <16 x i16> %i.eep, i16 %i.eea, i64 10
  %i.eer = insertelement <16 x i16> %i.eeq, i16 %i.eeb, i64 11
  %i.ees = insertelement <16 x i16> %i.eer, i16 %i.eec, i64 12
  %i.eet = insertelement <16 x i16> %i.ees, i16 %i.eed, i64 13
  %i.eeu = insertelement <16 x i16> %i.eet, i16 %i.eee, i64 14
  %i.eev = insertelement <16 x i16> %i.eeu, i16 %i.eef, i64 15
  %i.eew = zext <16 x i16> %i.eev to <16 x i32>
  %i.eex = shl nuw <16 x i32> %i.eew, splat (i32 16)
  %i.eey = bitcast <16 x i32> %i.eex to <16 x float>
  %i.eez = fmul fast <16 x float> %strided.vec731, %i.eey
  %i.efa = load i16, ptr %i.eap, align 2, !tbaa !269
  %i.efb = load i16, ptr %i.ear, align 2, !tbaa !269
  %i.efc = load i16, ptr %i.eat, align 2, !tbaa !269
  %i.efd = load i16, ptr %i.eav, align 2, !tbaa !269
  %i.efe = load i16, ptr %i.eax, align 2, !tbaa !269
  %i.eff = load i16, ptr %i.eaz, align 2, !tbaa !269
  %i.efg = load i16, ptr %i.ebb, align 2, !tbaa !269
  %i.efh = load i16, ptr %i.ebd, align 2, !tbaa !269
  %i.efi = load i16, ptr %i.ebf, align 2, !tbaa !269
  %i.efj = load i16, ptr %i.ebh, align 2, !tbaa !269
  %i.efk = load i16, ptr %i.ebj, align 2, !tbaa !269
  %i.efl = load i16, ptr %i.ebl, align 2, !tbaa !269
  %i.efm = load i16, ptr %i.ebn, align 2, !tbaa !269
  %i.efn = load i16, ptr %i.ebp, align 2, !tbaa !269
  %i.efo = load i16, ptr %i.ebr, align 2, !tbaa !269
  %i.efp = load i16, ptr %i.ebt, align 2, !tbaa !269
  %i.efq = insertelement <16 x i16> poison, i16 %i.efa, i64 0
  %i.efr = insertelement <16 x i16> %i.efq, i16 %i.efb, i64 1
  %i.efs = insertelement <16 x i16> %i.efr, i16 %i.efc, i64 2
  %i.eft = insertelement <16 x i16> %i.efs, i16 %i.efd, i64 3
  %i.efu = insertelement <16 x i16> %i.eft, i16 %i.efe, i64 4
  %i.efv = insertelement <16 x i16> %i.efu, i16 %i.eff, i64 5
  %i.efw = insertelement <16 x i16> %i.efv, i16 %i.efg, i64 6
  %i.efx = insertelement <16 x i16> %i.efw, i16 %i.efh, i64 7
  %i.efy = insertelement <16 x i16> %i.efx, i16 %i.efi, i64 8
  %i.efz = insertelement <16 x i16> %i.efy, i16 %i.efj, i64 9
  %i.ega = insertelement <16 x i16> %i.efz, i16 %i.efk, i64 10
  %i.egb = insertelement <16 x i16> %i.ega, i16 %i.efl, i64 11
  %i.egc = insertelement <16 x i16> %i.egb, i16 %i.efm, i64 12
  %i.egd = insertelement <16 x i16> %i.egc, i16 %i.efn, i64 13
  %i.ege = insertelement <16 x i16> %i.egd, i16 %i.efo, i64 14
  %i.egf = insertelement <16 x i16> %i.ege, i16 %i.efp, i64 15
  %i.egg = zext <16 x i16> %i.egf to <16 x i32>
  %i.egh = shl nuw <16 x i32> %i.egg, splat (i32 16)
  %i.egi = bitcast <16 x i32> %i.egh to <16 x float>
  %i.egj = fmul fast <16 x float> %strided.vec732, %i.egi
  %i.egk = fadd fast <16 x float> %i.eez, %i.egj
  %i.egl = getelementptr inbounds nuw i8, ptr %i.eap, i64 2
  %i.egm = getelementptr inbounds nuw i8, ptr %i.ear, i64 2
  %i.egn = getelementptr inbounds nuw i8, ptr %i.eat, i64 2
  %i.ego = getelementptr inbounds nuw i8, ptr %i.eav, i64 2
  %i.egp = getelementptr inbounds nuw i8, ptr %i.eax, i64 2
  %i.egq = getelementptr inbounds nuw i8, ptr %i.eaz, i64 2
  %i.egr = getelementptr inbounds nuw i8, ptr %i.ebb, i64 2
  %i.egs = getelementptr inbounds nuw i8, ptr %i.ebd, i64 2
  %i.egt = getelementptr inbounds nuw i8, ptr %i.ebf, i64 2
  %i.egu = getelementptr inbounds nuw i8, ptr %i.ebh, i64 2
  %i.egv = getelementptr inbounds nuw i8, ptr %i.ebj, i64 2
  %i.egw = getelementptr inbounds nuw i8, ptr %i.ebl, i64 2
  %i.egx = getelementptr inbounds nuw i8, ptr %i.ebn, i64 2
  %i.egy = getelementptr inbounds nuw i8, ptr %i.ebp, i64 2
  %i.egz = getelementptr inbounds nuw i8, ptr %i.ebr, i64 2
  %i.eha = getelementptr inbounds nuw i8, ptr %i.ebt, i64 2
  %i.ehb = load i16, ptr %i.egl, align 2, !tbaa !269
  %i.ehc = load i16, ptr %i.egm, align 2, !tbaa !269
  %i.ehd = load i16, ptr %i.egn, align 2, !tbaa !269
  %i.ehe = load i16, ptr %i.ego, align 2, !tbaa !269
  %i.ehf = load i16, ptr %i.egp, align 2, !tbaa !269
  %i.ehg = load i16, ptr %i.egq, align 2, !tbaa !269
  %i.ehh = load i16, ptr %i.egr, align 2, !tbaa !269
  %i.ehi = load i16, ptr %i.egs, align 2, !tbaa !269
  %i.ehj = load i16, ptr %i.egt, align 2, !tbaa !269
  %i.ehk = load i16, ptr %i.egu, align 2, !tbaa !269
  %i.ehl = load i16, ptr %i.egv, align 2, !tbaa !269
  %i.ehm = load i16, ptr %i.egw, align 2, !tbaa !269
  %i.ehn = load i16, ptr %i.egx, align 2, !tbaa !269
  %i.eho = load i16, ptr %i.egy, align 2, !tbaa !269
  %i.ehp = load i16, ptr %i.egz, align 2, !tbaa !269
  %i.ehq = load i16, ptr %i.eha, align 2, !tbaa !269
  %i.ehr = insertelement <16 x i16> poison, i16 %i.ehb, i64 0
  %i.ehs = insertelement <16 x i16> %i.ehr, i16 %i.ehc, i64 1
  %i.eht = insertelement <16 x i16> %i.ehs, i16 %i.ehd, i64 2
  %i.ehu = insertelement <16 x i16> %i.eht, i16 %i.ehe, i64 3
  %i.ehv = insertelement <16 x i16> %i.ehu, i16 %i.ehf, i64 4
  %i.ehw = insertelement <16 x i16> %i.ehv, i16 %i.ehg, i64 5
  %i.ehx = insertelement <16 x i16> %i.ehw, i16 %i.ehh, i64 6
  %i.ehy = insertelement <16 x i16> %i.ehx, i16 %i.ehi, i64 7
  %i.ehz = insertelement <16 x i16> %i.ehy, i16 %i.ehj, i64 8
  %i.eia = insertelement <16 x i16> %i.ehz, i16 %i.ehk, i64 9
  %i.eib = insertelement <16 x i16> %i.eia, i16 %i.ehl, i64 10
  %i.eic = insertelement <16 x i16> %i.eib, i16 %i.ehm, i64 11
  %i.eid = insertelement <16 x i16> %i.eic, i16 %i.ehn, i64 12
  %i.eie = insertelement <16 x i16> %i.eid, i16 %i.eho, i64 13
  %i.eif = insertelement <16 x i16> %i.eie, i16 %i.ehp, i64 14
  %i.eig = insertelement <16 x i16> %i.eif, i16 %i.ehq, i64 15
  %i.eih = zext <16 x i16> %i.eig to <16 x i32>
  %i.eii = shl nuw <16 x i32> %i.eih, splat (i32 16)
  %i.eij = bitcast <16 x i32> %i.eii to <16 x float>
  %i.eik = fmul fast <16 x float> %strided.vec733, %i.eij
  %i.eil = fadd fast <16 x float> %i.egk, %i.eik
  %i.eim = getelementptr inbounds nuw i8, ptr %i.eap, i64 4
  %i.ein = getelementptr inbounds nuw i8, ptr %i.ear, i64 4
  %i.eio = getelementptr inbounds nuw i8, ptr %i.eat, i64 4
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eav, i64 4
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.eax, i64 4
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eaz, i64 4
  %i.eis = getelementptr inbounds nuw i8, ptr %i.ebb, i64 4
  %i.eit = getelementptr inbounds nuw i8, ptr %i.ebd, i64 4
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.ebf, i64 4
  %i.eiv = getelementptr inbounds nuw i8, ptr %i.ebh, i64 4
  %i.eiw = getelementptr inbounds nuw i8, ptr %i.ebj, i64 4
  %i.eix = getelementptr inbounds nuw i8, ptr %i.ebl, i64 4
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.ebp, i64 4
  %i.eja = getelementptr inbounds nuw i8, ptr %i.ebr, i64 4
  %i.ejb = getelementptr inbounds nuw i8, ptr %i.ebt, i64 4
  %i.ejc = load i16, ptr %i.eim, align 2, !tbaa !269
  %i.ejd = load i16, ptr %i.ein, align 2, !tbaa !269
  %i.eje = load i16, ptr %i.eio, align 2, !tbaa !269
  %i.ejf = load i16, ptr %i.eip, align 2, !tbaa !269
  %i.ejg = load i16, ptr %i.eiq, align 2, !tbaa !269
  %i.ejh = load i16, ptr %i.eir, align 2, !tbaa !269
  %i.eji = load i16, ptr %i.eis, align 2, !tbaa !269
  %i.ejj = load i16, ptr %i.eit, align 2, !tbaa !269
  %i.ejk = load i16, ptr %i.eiu, align 2, !tbaa !269
  %i.ejl = load i16, ptr %i.eiv, align 2, !tbaa !269
  %i.ejm = load i16, ptr %i.eiw, align 2, !tbaa !269
  %i.ejn = load i16, ptr %i.eix, align 2, !tbaa !269
  %i.ejo = load i16, ptr %i.eiy, align 2, !tbaa !269
  %i.ejp = load i16, ptr %i.eiz, align 2, !tbaa !269
  %i.ejq = load i16, ptr %i.eja, align 2, !tbaa !269
  %i.ejr = load i16, ptr %i.ejb, align 2, !tbaa !269
  %i.ejs = insertelement <16 x i16> poison, i16 %i.ejc, i64 0
  %i.ejt = insertelement <16 x i16> %i.ejs, i16 %i.ejd, i64 1
  %i.eju = insertelement <16 x i16> %i.ejt, i16 %i.eje, i64 2
  %i.ejv = insertelement <16 x i16> %i.eju, i16 %i.ejf, i64 3
  %i.ejw = insertelement <16 x i16> %i.ejv, i16 %i.ejg, i64 4
  %i.ejx = insertelement <16 x i16> %i.ejw, i16 %i.ejh, i64 5
  %i.ejy = insertelement <16 x i16> %i.ejx, i16 %i.eji, i64 6
  %i.ejz = insertelement <16 x i16> %i.ejy, i16 %i.ejj, i64 7
  %i.eka = insertelement <16 x i16> %i.ejz, i16 %i.ejk, i64 8
  %i.ekb = insertelement <16 x i16> %i.eka, i16 %i.ejl, i64 9
  %i.ekc = insertelement <16 x i16> %i.ekb, i16 %i.ejm, i64 10
  %i.ekd = insertelement <16 x i16> %i.ekc, i16 %i.ejn, i64 11
  %i.eke = insertelement <16 x i16> %i.ekd, i16 %i.ejo, i64 12
  %i.ekf = insertelement <16 x i16> %i.eke, i16 %i.ejp, i64 13
  %i.ekg = insertelement <16 x i16> %i.ekf, i16 %i.ejq, i64 14
  %i.ekh = insertelement <16 x i16> %i.ekg, i16 %i.ejr, i64 15
  %i.eki = zext <16 x i16> %i.ekh to <16 x i32>
  %i.ekj = shl nuw <16 x i32> %i.eki, splat (i32 16)
  %i.ekk = bitcast <16 x i32> %i.ekj to <16 x float>
  %i.ekl = fmul fast <16 x float> %strided.vec734, %i.ekk
  %i.ekm = fadd fast <16 x float> %i.eil, %i.ekl
  %i.ekn = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index727
  store <16 x float> %i.ekm, ptr %i.ekn, align 4, !tbaa !70, !alias.scope !403, !noalias !405
  %i.eko = getelementptr inbounds i8, ptr %i.ebu, i64 -2
  %i.ekp = getelementptr inbounds i8, ptr %i.ebv, i64 -2
  %i.ekq = getelementptr inbounds i8, ptr %i.ebw, i64 -2
  %i.ekr = getelementptr inbounds i8, ptr %i.ebx, i64 -2
  %i.eks = getelementptr inbounds i8, ptr %i.eby, i64 -2
  %i.ekt = getelementptr inbounds i8, ptr %i.ebz, i64 -2
  %i.eku = getelementptr inbounds i8, ptr %i.eca, i64 -2
  %i.ekv = getelementptr inbounds i8, ptr %i.ecb, i64 -2
  %i.ekw = getelementptr inbounds i8, ptr %i.ecc, i64 -2
  %i.ekx = getelementptr inbounds i8, ptr %i.ecd, i64 -2
  %i.eky = getelementptr inbounds i8, ptr %i.ece, i64 -2
  %i.ekz = getelementptr inbounds i8, ptr %i.ecf, i64 -2
  %i.ela = getelementptr inbounds i8, ptr %i.ecg, i64 -2
  %i.elb = getelementptr inbounds i8, ptr %i.ech, i64 -2
  %i.elc = getelementptr inbounds i8, ptr %i.eci, i64 -2
  %i.eld = getelementptr inbounds i8, ptr %i.ecj, i64 -2
  %i.ele = load i16, ptr %i.eko, align 2, !tbaa !269
  %i.elf = load i16, ptr %i.ekp, align 2, !tbaa !269
  %i.elg = load i16, ptr %i.ekq, align 2, !tbaa !269
  %i.elh = load i16, ptr %i.ekr, align 2, !tbaa !269
  %i.eli = load i16, ptr %i.eks, align 2, !tbaa !269
  %i.elj = load i16, ptr %i.ekt, align 2, !tbaa !269
  %i.elk = load i16, ptr %i.eku, align 2, !tbaa !269
  %i.ell = load i16, ptr %i.ekv, align 2, !tbaa !269
  %i.elm = load i16, ptr %i.ekw, align 2, !tbaa !269
  %i.eln = load i16, ptr %i.ekx, align 2, !tbaa !269
  %i.elo = load i16, ptr %i.eky, align 2, !tbaa !269
  %i.elp = load i16, ptr %i.ekz, align 2, !tbaa !269
  %i.elq = load i16, ptr %i.ela, align 2, !tbaa !269
  %i.elr = load i16, ptr %i.elb, align 2, !tbaa !269
  %i.els = load i16, ptr %i.elc, align 2, !tbaa !269
  %i.elt = load i16, ptr %i.eld, align 2, !tbaa !269
  %i.elu = insertelement <16 x i16> poison, i16 %i.ele, i64 0
  %i.elv = insertelement <16 x i16> %i.elu, i16 %i.elf, i64 1
  %i.elw = insertelement <16 x i16> %i.elv, i16 %i.elg, i64 2
  %i.elx = insertelement <16 x i16> %i.elw, i16 %i.elh, i64 3
  %i.ely = insertelement <16 x i16> %i.elx, i16 %i.eli, i64 4
  %i.elz = insertelement <16 x i16> %i.ely, i16 %i.elj, i64 5
  %i.ema = insertelement <16 x i16> %i.elz, i16 %i.elk, i64 6
  %i.emb = insertelement <16 x i16> %i.ema, i16 %i.ell, i64 7
  %i.emc = insertelement <16 x i16> %i.emb, i16 %i.elm, i64 8
  %i.emd = insertelement <16 x i16> %i.emc, i16 %i.eln, i64 9
  %i.eme = insertelement <16 x i16> %i.emd, i16 %i.elo, i64 10
  %i.emf = insertelement <16 x i16> %i.eme, i16 %i.elp, i64 11
  %i.emg = insertelement <16 x i16> %i.emf, i16 %i.elq, i64 12
  %i.emh = insertelement <16 x i16> %i.emg, i16 %i.elr, i64 13
  %i.emi = insertelement <16 x i16> %i.emh, i16 %i.els, i64 14
  %i.emj = insertelement <16 x i16> %i.emi, i16 %i.elt, i64 15
  %i.emk = zext <16 x i16> %i.emj to <16 x i32>
  %i.eml = shl nuw <16 x i32> %i.emk, splat (i32 16)
  %i.emm = bitcast <16 x i32> %i.eml to <16 x float>
  %i.emn = fmul fast <16 x float> %strided.vec731, %i.emm
  %i.emo = load i16, ptr %i.ebu, align 2, !tbaa !269
  %i.emp = load i16, ptr %i.ebv, align 2, !tbaa !269
  %i.emq = load i16, ptr %i.ebw, align 2, !tbaa !269
  %i.emr = load i16, ptr %i.ebx, align 2, !tbaa !269
  %i.ems = load i16, ptr %i.eby, align 2, !tbaa !269
  %i.emt = load i16, ptr %i.ebz, align 2, !tbaa !269
  %i.emu = load i16, ptr %i.eca, align 2, !tbaa !269
  %i.emv = load i16, ptr %i.ecb, align 2, !tbaa !269
  %i.emw = load i16, ptr %i.ecc, align 2, !tbaa !269
  %i.emx = load i16, ptr %i.ecd, align 2, !tbaa !269
  %i.emy = load i16, ptr %i.ece, align 2, !tbaa !269
  %i.emz = load i16, ptr %i.ecf, align 2, !tbaa !269
  %i.ena = load i16, ptr %i.ecg, align 2, !tbaa !269
  %i.enb = load i16, ptr %i.ech, align 2, !tbaa !269
  %i.enc = load i16, ptr %i.eci, align 2, !tbaa !269
  %i.end = load i16, ptr %i.ecj, align 2, !tbaa !269
  %i.ene = insertelement <16 x i16> poison, i16 %i.emo, i64 0
  %i.enf = insertelement <16 x i16> %i.ene, i16 %i.emp, i64 1
  %i.eng = insertelement <16 x i16> %i.enf, i16 %i.emq, i64 2
  %i.enh = insertelement <16 x i16> %i.eng, i16 %i.emr, i64 3
  %i.eni = insertelement <16 x i16> %i.enh, i16 %i.ems, i64 4
  %i.enj = insertelement <16 x i16> %i.eni, i16 %i.emt, i64 5
  %i.enk = insertelement <16 x i16> %i.enj, i16 %i.emu, i64 6
  %i.enl = insertelement <16 x i16> %i.enk, i16 %i.emv, i64 7
  %i.enm = insertelement <16 x i16> %i.enl, i16 %i.emw, i64 8
  %i.enn = insertelement <16 x i16> %i.enm, i16 %i.emx, i64 9
  %i.eno = insertelement <16 x i16> %i.enn, i16 %i.emy, i64 10
  %i.enp = insertelement <16 x i16> %i.eno, i16 %i.emz, i64 11
  %i.enq = insertelement <16 x i16> %i.enp, i16 %i.ena, i64 12
  %i.enr = insertelement <16 x i16> %i.enq, i16 %i.enb, i64 13
  %i.ens = insertelement <16 x i16> %i.enr, i16 %i.enc, i64 14
  %i.ent = insertelement <16 x i16> %i.ens, i16 %i.end, i64 15
  %i.enu = zext <16 x i16> %i.ent to <16 x i32>
  %i.env = shl nuw <16 x i32> %i.enu, splat (i32 16)
  %i.enw = bitcast <16 x i32> %i.env to <16 x float>
  %i.enx = fmul fast <16 x float> %strided.vec732, %i.enw
  %i.eny = fadd fast <16 x float> %i.emn, %i.enx
  %i.enz = getelementptr inbounds nuw i8, ptr %i.ebu, i64 2
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.ebv, i64 2
  %i.eob = getelementptr inbounds nuw i8, ptr %i.ebw, i64 2
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.ebx, i64 2
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eby, i64 2
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.ebz, i64 2
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eca, i64 2
  %i.eog = getelementptr inbounds nuw i8, ptr %i.ecb, i64 2
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.ecc, i64 2
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.ecd, i64 2
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.ece, i64 2
  %i.eok = getelementptr inbounds nuw i8, ptr %i.ecf, i64 2
  %i.eol = getelementptr inbounds nuw i8, ptr %i.ecg, i64 2
  %i.eom = getelementptr inbounds nuw i8, ptr %i.ech, i64 2
  %i.eon = getelementptr inbounds nuw i8, ptr %i.eci, i64 2
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.ecj, i64 2
  %i.eop = load i16, ptr %i.enz, align 2, !tbaa !269
  %i.eoq = load i16, ptr %i.eoa, align 2, !tbaa !269
  %i.eor = load i16, ptr %i.eob, align 2, !tbaa !269
  %i.eos = load i16, ptr %i.eoc, align 2, !tbaa !269
  %i.eot = load i16, ptr %i.eod, align 2, !tbaa !269
  %i.eou = load i16, ptr %i.eoe, align 2, !tbaa !269
  %i.eov = load i16, ptr %i.eof, align 2, !tbaa !269
  %i.eow = load i16, ptr %i.eog, align 2, !tbaa !269
  %i.eox = load i16, ptr %i.eoh, align 2, !tbaa !269
  %i.eoy = load i16, ptr %i.eoi, align 2, !tbaa !269
  %i.eoz = load i16, ptr %i.eoj, align 2, !tbaa !269
  %i.epa = load i16, ptr %i.eok, align 2, !tbaa !269
  %i.epb = load i16, ptr %i.eol, align 2, !tbaa !269
  %i.epc = load i16, ptr %i.eom, align 2, !tbaa !269
  %i.epd = load i16, ptr %i.eon, align 2, !tbaa !269
  %i.epe = load i16, ptr %i.eoo, align 2, !tbaa !269
  %i.epf = insertelement <16 x i16> poison, i16 %i.eop, i64 0
  %i.epg = insertelement <16 x i16> %i.epf, i16 %i.eoq, i64 1
  %i.eph = insertelement <16 x i16> %i.epg, i16 %i.eor, i64 2
  %i.epi = insertelement <16 x i16> %i.eph, i16 %i.eos, i64 3
  %i.epj = insertelement <16 x i16> %i.epi, i16 %i.eot, i64 4
  %i.epk = insertelement <16 x i16> %i.epj, i16 %i.eou, i64 5
  %i.epl = insertelement <16 x i16> %i.epk, i16 %i.eov, i64 6
  %i.epm = insertelement <16 x i16> %i.epl, i16 %i.eow, i64 7
  %i.epn = insertelement <16 x i16> %i.epm, i16 %i.eox, i64 8
  %i.epo = insertelement <16 x i16> %i.epn, i16 %i.eoy, i64 9
  %i.epp = insertelement <16 x i16> %i.epo, i16 %i.eoz, i64 10
  %i.epq = insertelement <16 x i16> %i.epp, i16 %i.epa, i64 11
  %i.epr = insertelement <16 x i16> %i.epq, i16 %i.epb, i64 12
  %i.eps = insertelement <16 x i16> %i.epr, i16 %i.epc, i64 13
  %i.ept = insertelement <16 x i16> %i.eps, i16 %i.epd, i64 14
  %i.epu = insertelement <16 x i16> %i.ept, i16 %i.epe, i64 15
  %i.epv = zext <16 x i16> %i.epu to <16 x i32>
  %i.epw = shl nuw <16 x i32> %i.epv, splat (i32 16)
  %i.epx = bitcast <16 x i32> %i.epw to <16 x float>
  %i.epy = fmul fast <16 x float> %strided.vec733, %i.epx
  %i.epz = fadd fast <16 x float> %i.eny, %i.epy
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.ebu, i64 4
  %i.eqb = getelementptr inbounds nuw i8, ptr %i.ebv, i64 4
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.ebw, i64 4
  %i.eqd = getelementptr inbounds nuw i8, ptr %i.ebx, i64 4
  %i.eqe = getelementptr inbounds nuw i8, ptr %i.eby, i64 4
  %i.eqf = getelementptr inbounds nuw i8, ptr %i.ebz, i64 4
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.eca, i64 4
  %i.eqh = getelementptr inbounds nuw i8, ptr %i.ecb, i64 4
  %i.eqi = getelementptr inbounds nuw i8, ptr %i.ecc, i64 4
  %i.eqj = getelementptr inbounds nuw i8, ptr %i.ecd, i64 4
  %i.eqk = getelementptr inbounds nuw i8, ptr %i.ece, i64 4
  %i.eql = getelementptr inbounds nuw i8, ptr %i.ecf, i64 4
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.ecg, i64 4
  %i.eqn = getelementptr inbounds nuw i8, ptr %i.ech, i64 4
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.eci, i64 4
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.ecj, i64 4
  %i.eqq = load i16, ptr %i.eqa, align 2, !tbaa !269
  %i.eqr = load i16, ptr %i.eqb, align 2, !tbaa !269
  %i.eqs = load i16, ptr %i.eqc, align 2, !tbaa !269
  %i.eqt = load i16, ptr %i.eqd, align 2, !tbaa !269
  %i.equ = load i16, ptr %i.eqe, align 2, !tbaa !269
  %i.eqv = load i16, ptr %i.eqf, align 2, !tbaa !269
  %i.eqw = load i16, ptr %i.eqg, align 2, !tbaa !269
  %i.eqx = load i16, ptr %i.eqh, align 2, !tbaa !269
  %i.eqy = load i16, ptr %i.eqi, align 2, !tbaa !269
  %i.eqz = load i16, ptr %i.eqj, align 2, !tbaa !269
  %i.era = load i16, ptr %i.eqk, align 2, !tbaa !269
  %i.erb = load i16, ptr %i.eql, align 2, !tbaa !269
  %i.erc = load i16, ptr %i.eqm, align 2, !tbaa !269
  %i.erd = load i16, ptr %i.eqn, align 2, !tbaa !269
  %i.ere = load i16, ptr %i.eqo, align 2, !tbaa !269
  %i.erf = load i16, ptr %i.eqp, align 2, !tbaa !269
  %i.erg = insertelement <16 x i16> poison, i16 %i.eqq, i64 0
  %i.erh = insertelement <16 x i16> %i.erg, i16 %i.eqr, i64 1
  %i.eri = insertelement <16 x i16> %i.erh, i16 %i.eqs, i64 2
  %i.erj = insertelement <16 x i16> %i.eri, i16 %i.eqt, i64 3
  %i.erk = insertelement <16 x i16> %i.erj, i16 %i.equ, i64 4
  %i.erl = insertelement <16 x i16> %i.erk, i16 %i.eqv, i64 5
  %i.erm = insertelement <16 x i16> %i.erl, i16 %i.eqw, i64 6
  %i.ern = insertelement <16 x i16> %i.erm, i16 %i.eqx, i64 7
  %i.ero = insertelement <16 x i16> %i.ern, i16 %i.eqy, i64 8
  %i.erp = insertelement <16 x i16> %i.ero, i16 %i.eqz, i64 9
  %i.erq = insertelement <16 x i16> %i.erp, i16 %i.era, i64 10
  %i.err = insertelement <16 x i16> %i.erq, i16 %i.erb, i64 11
  %i.ers = insertelement <16 x i16> %i.err, i16 %i.erc, i64 12
  %i.ert = insertelement <16 x i16> %i.ers, i16 %i.erd, i64 13
  %i.eru = insertelement <16 x i16> %i.ert, i16 %i.ere, i64 14
  %i.erv = insertelement <16 x i16> %i.eru, i16 %i.erf, i64 15
  %i.erw = zext <16 x i16> %i.erv to <16 x i32>
  %i.erx = shl nuw <16 x i32> %i.erw, splat (i32 16)
  %i.ery = bitcast <16 x i32> %i.erx to <16 x float>
  %i.erz = fmul fast <16 x float> %strided.vec734, %i.ery
  %i.esa = fadd fast <16 x float> %i.epz, %i.erz
  %i.esb = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index727
  store <16 x float> %i.esa, ptr %i.esb, align 4, !tbaa !70, !alias.scope !408, !noalias !409
  %i.esc = getelementptr inbounds i8, ptr %i.eck, i64 -2
  %i.esd = getelementptr inbounds i8, ptr %i.ecl, i64 -2
  %i.ese = getelementptr inbounds i8, ptr %i.ecm, i64 -2
  %i.esf = getelementptr inbounds i8, ptr %i.ecn, i64 -2
  %i.esg = getelementptr inbounds i8, ptr %i.eco, i64 -2
  %i.esh = getelementptr inbounds i8, ptr %i.ecp, i64 -2
  %i.esi = getelementptr inbounds i8, ptr %i.ecq, i64 -2
  %i.esj = getelementptr inbounds i8, ptr %i.ecr, i64 -2
  %i.esk = getelementptr inbounds i8, ptr %i.ecs, i64 -2
  %i.esl = getelementptr inbounds i8, ptr %i.ect, i64 -2
  %i.esm = getelementptr inbounds i8, ptr %i.ecu, i64 -2
  %i.esn = getelementptr inbounds i8, ptr %i.ecv, i64 -2
  %i.eso = getelementptr inbounds i8, ptr %i.ecw, i64 -2
  %i.esp = getelementptr inbounds i8, ptr %i.ecx, i64 -2
  %i.esq = getelementptr inbounds i8, ptr %i.ecy, i64 -2
  %i.esr = getelementptr inbounds i8, ptr %i.ecz, i64 -2
  %i.ess = load i16, ptr %i.esc, align 2, !tbaa !269
  %i.est = load i16, ptr %i.esd, align 2, !tbaa !269
  %i.esu = load i16, ptr %i.ese, align 2, !tbaa !269
  %i.esv = load i16, ptr %i.esf, align 2, !tbaa !269
  %i.esw = load i16, ptr %i.esg, align 2, !tbaa !269
  %i.esx = load i16, ptr %i.esh, align 2, !tbaa !269
  %i.esy = load i16, ptr %i.esi, align 2, !tbaa !269
  %i.esz = load i16, ptr %i.esj, align 2, !tbaa !269
  %i.eta = load i16, ptr %i.esk, align 2, !tbaa !269
  %i.etb = load i16, ptr %i.esl, align 2, !tbaa !269
  %i.etc = load i16, ptr %i.esm, align 2, !tbaa !269
  %i.etd = load i16, ptr %i.esn, align 2, !tbaa !269
  %i.ete = load i16, ptr %i.eso, align 2, !tbaa !269
  %i.etf = load i16, ptr %i.esp, align 2, !tbaa !269
  %i.etg = load i16, ptr %i.esq, align 2, !tbaa !269
  %i.eth = load i16, ptr %i.esr, align 2, !tbaa !269
  %i.eti = insertelement <16 x i16> poison, i16 %i.ess, i64 0
  %i.etj = insertelement <16 x i16> %i.eti, i16 %i.est, i64 1
  %i.etk = insertelement <16 x i16> %i.etj, i16 %i.esu, i64 2
  %i.etl = insertelement <16 x i16> %i.etk, i16 %i.esv, i64 3
  %i.etm = insertelement <16 x i16> %i.etl, i16 %i.esw, i64 4
  %i.etn = insertelement <16 x i16> %i.etm, i16 %i.esx, i64 5
  %i.eto = insertelement <16 x i16> %i.etn, i16 %i.esy, i64 6
  %i.etp = insertelement <16 x i16> %i.eto, i16 %i.esz, i64 7
  %i.etq = insertelement <16 x i16> %i.etp, i16 %i.eta, i64 8
  %i.etr = insertelement <16 x i16> %i.etq, i16 %i.etb, i64 9
  %i.ets = insertelement <16 x i16> %i.etr, i16 %i.etc, i64 10
  %i.ett = insertelement <16 x i16> %i.ets, i16 %i.etd, i64 11
  %i.etu = insertelement <16 x i16> %i.ett, i16 %i.ete, i64 12
  %i.etv = insertelement <16 x i16> %i.etu, i16 %i.etf, i64 13
  %i.etw = insertelement <16 x i16> %i.etv, i16 %i.etg, i64 14
  %i.etx = insertelement <16 x i16> %i.etw, i16 %i.eth, i64 15
  %i.ety = zext <16 x i16> %i.etx to <16 x i32>
  %i.etz = shl nuw <16 x i32> %i.ety, splat (i32 16)
  %i.eua = bitcast <16 x i32> %i.etz to <16 x float>
  %i.eub = fmul fast <16 x float> %strided.vec731, %i.eua
  %i.euc = load i16, ptr %i.eck, align 2, !tbaa !269
  %i.eud = load i16, ptr %i.ecl, align 2, !tbaa !269
  %i.eue = load i16, ptr %i.ecm, align 2, !tbaa !269
  %i.euf = load i16, ptr %i.ecn, align 2, !tbaa !269
  %i.eug = load i16, ptr %i.eco, align 2, !tbaa !269
  %i.euh = load i16, ptr %i.ecp, align 2, !tbaa !269
  %i.eui = load i16, ptr %i.ecq, align 2, !tbaa !269
  %i.euj = load i16, ptr %i.ecr, align 2, !tbaa !269
  %i.euk = load i16, ptr %i.ecs, align 2, !tbaa !269
  %i.eul = load i16, ptr %i.ect, align 2, !tbaa !269
  %i.eum = load i16, ptr %i.ecu, align 2, !tbaa !269
  %i.eun = load i16, ptr %i.ecv, align 2, !tbaa !269
  %i.euo = load i16, ptr %i.ecw, align 2, !tbaa !269
  %i.eup = load i16, ptr %i.ecx, align 2, !tbaa !269
  %i.euq = load i16, ptr %i.ecy, align 2, !tbaa !269
  %i.eur = load i16, ptr %i.ecz, align 2, !tbaa !269
  %i.eus = insertelement <16 x i16> poison, i16 %i.euc, i64 0
  %i.eut = insertelement <16 x i16> %i.eus, i16 %i.eud, i64 1
  %i.euu = insertelement <16 x i16> %i.eut, i16 %i.eue, i64 2
  %i.euv = insertelement <16 x i16> %i.euu, i16 %i.euf, i64 3
  %i.euw = insertelement <16 x i16> %i.euv, i16 %i.eug, i64 4
  %i.eux = insertelement <16 x i16> %i.euw, i16 %i.euh, i64 5
  %i.euy = insertelement <16 x i16> %i.eux, i16 %i.eui, i64 6
  %i.euz = insertelement <16 x i16> %i.euy, i16 %i.euj, i64 7
  %i.eva = insertelement <16 x i16> %i.euz, i16 %i.euk, i64 8
  %i.evb = insertelement <16 x i16> %i.eva, i16 %i.eul, i64 9
  %i.evc = insertelement <16 x i16> %i.evb, i16 %i.eum, i64 10
  %i.evd = insertelement <16 x i16> %i.evc, i16 %i.eun, i64 11
  %i.eve = insertelement <16 x i16> %i.evd, i16 %i.euo, i64 12
  %i.evf = insertelement <16 x i16> %i.eve, i16 %i.eup, i64 13
  %i.evg = insertelement <16 x i16> %i.evf, i16 %i.euq, i64 14
  %i.evh = insertelement <16 x i16> %i.evg, i16 %i.eur, i64 15
  %i.evi = zext <16 x i16> %i.evh to <16 x i32>
  %i.evj = shl nuw <16 x i32> %i.evi, splat (i32 16)
  %i.evk = bitcast <16 x i32> %i.evj to <16 x float>
  %i.evl = fmul fast <16 x float> %strided.vec732, %i.evk
  %i.evm = fadd fast <16 x float> %i.eub, %i.evl
  %i.evn = getelementptr inbounds nuw i8, ptr %i.eck, i64 2
  %i.evo = getelementptr inbounds nuw i8, ptr %i.ecl, i64 2
  %i.evp = getelementptr inbounds nuw i8, ptr %i.ecm, i64 2
  %i.evq = getelementptr inbounds nuw i8, ptr %i.ecn, i64 2
  %i.evr = getelementptr inbounds nuw i8, ptr %i.eco, i64 2
  %i.evs = getelementptr inbounds nuw i8, ptr %i.ecp, i64 2
  %i.evt = getelementptr inbounds nuw i8, ptr %i.ecq, i64 2
  %i.evu = getelementptr inbounds nuw i8, ptr %i.ecr, i64 2
  %i.evv = getelementptr inbounds nuw i8, ptr %i.ecs, i64 2
  %i.evw = getelementptr inbounds nuw i8, ptr %i.ect, i64 2
  %i.evx = getelementptr inbounds nuw i8, ptr %i.ecu, i64 2
  %i.evy = getelementptr inbounds nuw i8, ptr %i.ecv, i64 2
  %i.evz = getelementptr inbounds nuw i8, ptr %i.ecw, i64 2
  %i.ewa = getelementptr inbounds nuw i8, ptr %i.ecx, i64 2
  %i.ewb = getelementptr inbounds nuw i8, ptr %i.ecy, i64 2
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ecz, i64 2
  %i.ewd = load i16, ptr %i.evn, align 2, !tbaa !269
  %i.ewe = load i16, ptr %i.evo, align 2, !tbaa !269
  %i.ewf = load i16, ptr %i.evp, align 2, !tbaa !269
  %i.ewg = load i16, ptr %i.evq, align 2, !tbaa !269
  %i.ewh = load i16, ptr %i.evr, align 2, !tbaa !269
  %i.ewi = load i16, ptr %i.evs, align 2, !tbaa !269
  %i.ewj = load i16, ptr %i.evt, align 2, !tbaa !269
  %i.ewk = load i16, ptr %i.evu, align 2, !tbaa !269
  %i.ewl = load i16, ptr %i.evv, align 2, !tbaa !269
  %i.ewm = load i16, ptr %i.evw, align 2, !tbaa !269
  %i.ewn = load i16, ptr %i.evx, align 2, !tbaa !269
  %i.ewo = load i16, ptr %i.evy, align 2, !tbaa !269
  %i.ewp = load i16, ptr %i.evz, align 2, !tbaa !269
  %i.ewq = load i16, ptr %i.ewa, align 2, !tbaa !269
  %i.ewr = load i16, ptr %i.ewb, align 2, !tbaa !269
  %i.ews = load i16, ptr %i.ewc, align 2, !tbaa !269
  %i.ewt = insertelement <16 x i16> poison, i16 %i.ewd, i64 0
  %i.ewu = insertelement <16 x i16> %i.ewt, i16 %i.ewe, i64 1
  %i.ewv = insertelement <16 x i16> %i.ewu, i16 %i.ewf, i64 2
  %i.eww = insertelement <16 x i16> %i.ewv, i16 %i.ewg, i64 3
  %i.ewx = insertelement <16 x i16> %i.eww, i16 %i.ewh, i64 4
  %i.ewy = insertelement <16 x i16> %i.ewx, i16 %i.ewi, i64 5
  %i.ewz = insertelement <16 x i16> %i.ewy, i16 %i.ewj, i64 6
  %i.exa = insertelement <16 x i16> %i.ewz, i16 %i.ewk, i64 7
  %i.exb = insertelement <16 x i16> %i.exa, i16 %i.ewl, i64 8
  %i.exc = insertelement <16 x i16> %i.exb, i16 %i.ewm, i64 9
  %i.exd = insertelement <16 x i16> %i.exc, i16 %i.ewn, i64 10
  %i.exe = insertelement <16 x i16> %i.exd, i16 %i.ewo, i64 11
  %i.exf = insertelement <16 x i16> %i.exe, i16 %i.ewp, i64 12
  %i.exg = insertelement <16 x i16> %i.exf, i16 %i.ewq, i64 13
  %i.exh = insertelement <16 x i16> %i.exg, i16 %i.ewr, i64 14
  %i.exi = insertelement <16 x i16> %i.exh, i16 %i.ews, i64 15
  %i.exj = zext <16 x i16> %i.exi to <16 x i32>
  %i.exk = shl nuw <16 x i32> %i.exj, splat (i32 16)
  %i.exl = bitcast <16 x i32> %i.exk to <16 x float>
  %i.exm = fmul fast <16 x float> %strided.vec733, %i.exl
  %i.exn = fadd fast <16 x float> %i.evm, %i.exm
  %i.exo = getelementptr inbounds nuw i8, ptr %i.eck, i64 4
  %i.exp = getelementptr inbounds nuw i8, ptr %i.ecl, i64 4
  %i.exq = getelementptr inbounds nuw i8, ptr %i.ecm, i64 4
  %i.exr = getelementptr inbounds nuw i8, ptr %i.ecn, i64 4
  %i.exs = getelementptr inbounds nuw i8, ptr %i.eco, i64 4
  %i.ext = getelementptr inbounds nuw i8, ptr %i.ecp, i64 4
  %i.exu = getelementptr inbounds nuw i8, ptr %i.ecq, i64 4
  %i.exv = getelementptr inbounds nuw i8, ptr %i.ecr, i64 4
  %i.exw = getelementptr inbounds nuw i8, ptr %i.ecs, i64 4
  %i.exx = getelementptr inbounds nuw i8, ptr %i.ect, i64 4
  %i.exy = getelementptr inbounds nuw i8, ptr %i.ecu, i64 4
  %i.exz = getelementptr inbounds nuw i8, ptr %i.ecv, i64 4
  %i.eya = getelementptr inbounds nuw i8, ptr %i.ecw, i64 4
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.ecx, i64 4
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.ecy, i64 4
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.ecz, i64 4
  %i.eye = load i16, ptr %i.exo, align 2, !tbaa !269
  %i.eyf = load i16, ptr %i.exp, align 2, !tbaa !269
  %i.eyg = load i16, ptr %i.exq, align 2, !tbaa !269
  %i.eyh = load i16, ptr %i.exr, align 2, !tbaa !269
  %i.eyi = load i16, ptr %i.exs, align 2, !tbaa !269
  %i.eyj = load i16, ptr %i.ext, align 2, !tbaa !269
  %i.eyk = load i16, ptr %i.exu, align 2, !tbaa !269
  %i.eyl = load i16, ptr %i.exv, align 2, !tbaa !269
  %i.eym = load i16, ptr %i.exw, align 2, !tbaa !269
  %i.eyn = load i16, ptr %i.exx, align 2, !tbaa !269
  %i.eyo = load i16, ptr %i.exy, align 2, !tbaa !269
  %i.eyp = load i16, ptr %i.exz, align 2, !tbaa !269
  %i.eyq = load i16, ptr %i.eya, align 2, !tbaa !269
  %i.eyr = load i16, ptr %i.eyb, align 2, !tbaa !269
  %i.eys = load i16, ptr %i.eyc, align 2, !tbaa !269
  %i.eyt = load i16, ptr %i.eyd, align 2, !tbaa !269
  %i.eyu = insertelement <16 x i16> poison, i16 %i.eye, i64 0
  %i.eyv = insertelement <16 x i16> %i.eyu, i16 %i.eyf, i64 1
  %i.eyw = insertelement <16 x i16> %i.eyv, i16 %i.eyg, i64 2
  %i.eyx = insertelement <16 x i16> %i.eyw, i16 %i.eyh, i64 3
  %i.eyy = insertelement <16 x i16> %i.eyx, i16 %i.eyi, i64 4
  %i.eyz = insertelement <16 x i16> %i.eyy, i16 %i.eyj, i64 5
  %i.eza = insertelement <16 x i16> %i.eyz, i16 %i.eyk, i64 6
  %i.ezb = insertelement <16 x i16> %i.eza, i16 %i.eyl, i64 7
  %i.ezc = insertelement <16 x i16> %i.ezb, i16 %i.eym, i64 8
  %i.ezd = insertelement <16 x i16> %i.ezc, i16 %i.eyn, i64 9
  %i.eze = insertelement <16 x i16> %i.ezd, i16 %i.eyo, i64 10
  %i.ezf = insertelement <16 x i16> %i.eze, i16 %i.eyp, i64 11
  %i.ezg = insertelement <16 x i16> %i.ezf, i16 %i.eyq, i64 12
  %i.ezh = insertelement <16 x i16> %i.ezg, i16 %i.eyr, i64 13
  %i.ezi = insertelement <16 x i16> %i.ezh, i16 %i.eys, i64 14
  %i.ezj = insertelement <16 x i16> %i.ezi, i16 %i.eyt, i64 15
  %i.ezk = zext <16 x i16> %i.ezj to <16 x i32>
  %i.ezl = shl nuw <16 x i32> %i.ezk, splat (i32 16)
  %i.ezm = bitcast <16 x i32> %i.ezl to <16 x float>
  %i.ezn = fmul fast <16 x float> %strided.vec734, %i.ezm
  %i.ezo = fadd fast <16 x float> %i.exn, %i.ezn
  %i.ezp = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index727
  store <16 x float> %i.ezo, ptr %i.ezp, align 4, !tbaa !70, !alias.scope !410, !noalias !400
  %index.next735 = add nuw i64 %index727, 16      ; 2 uses
  %i.ezq = icmp eq i64 %index.next735, %n.vec725
  br i1 %i.ezq, label %middle.block736, label %vector.body726, !llvm.loop !411

middle.block736:                                  ; preds = %vector.body726
  br i1 %cmp.n737, label %.loopexit.i132, label %vec.epilog.iter.check741

vec.epilog.iter.check741:                         ; preds = %middle.block736
  br i1 %min.epilog.iters.check742, label %.lr.ph333.i.preheader, label %vec.epilog.ph743, !prof !120

vec.epilog.ph743:                                 ; preds = %vector.main.loop.iter.check722, %vec.epilog.iter.check741
  %vec.epilog.resume.val738 = phi i64 [ %n.vec725, %vec.epilog.iter.check741 ], [ 0, %vector.main.loop.iter.check722 ]
  br label %vec.epilog.vector.body745

vec.epilog.vector.body745:                        ; preds = %vec.epilog.vector.body745, %vec.epilog.ph743
  %index746 = phi i64 [ %vec.epilog.resume.val738, %vec.epilog.ph743 ], [ %index.next754, %vec.epilog.vector.body745 ] ; 6 uses
  %i.ezr = shl i64 %index746, 4
  %next.gep747 = getelementptr i8, ptr %i.clc, i64 %i.ezr
  %i.ezs = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index746
  %wide.load748 = load <4 x i32>, ptr %i.ezs, align 4, !tbaa !25
  %i.ezt = sext <4 x i32> %wide.load748 to <4 x i64> ; 4 uses
  %i.ezu = extractelement <4 x i64> %i.ezt, i64 0 ; 3 uses
  %i.ezv = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ezu ; 4 uses
  %i.ezw = extractelement <4 x i64> %i.ezt, i64 1 ; 3 uses
  %i.ezx = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ezw ; 4 uses
  %i.ezy = extractelement <4 x i64> %i.ezt, i64 2 ; 3 uses
  %i.ezz = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.ezy ; 4 uses
  %i.faa = extractelement <4 x i64> %i.ezt, i64 3 ; 3 uses
  %i.fab = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.faa ; 4 uses
  %i.fac = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ezu ; 4 uses
  %i.fad = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ezw ; 4 uses
  %i.fae = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.ezy ; 4 uses
  %i.faf = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.faa ; 4 uses
  %i.fag = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ezu ; 4 uses
  %i.fah = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ezw ; 4 uses
  %i.fai = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.ezy ; 4 uses
  %i.faj = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.faa ; 4 uses
  %wide.vec749 = load <16 x float>, ptr %next.gep747, align 4, !tbaa !70, !alias.scope !400 ; 4 uses
  %strided.vec750 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 3 uses
  %strided.vec751 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 3 uses
  %strided.vec752 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 3 uses
  %strided.vec753 = shufflevector <16 x float> %wide.vec749, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 3 uses
  %i.fak = getelementptr inbounds i8, ptr %i.ezv, i64 -2
  %i.fal = getelementptr inbounds i8, ptr %i.ezx, i64 -2
  %i.fam = getelementptr inbounds i8, ptr %i.ezz, i64 -2
  %i.fan = getelementptr inbounds i8, ptr %i.fab, i64 -2
  %i.fao = load i16, ptr %i.fak, align 2, !tbaa !269
  %i.fap = load i16, ptr %i.fal, align 2, !tbaa !269
  %i.faq = load i16, ptr %i.fam, align 2, !tbaa !269
  %i.far = load i16, ptr %i.fan, align 2, !tbaa !269
  %i.fas = insertelement <4 x i16> poison, i16 %i.fao, i64 0
  %i.fat = insertelement <4 x i16> %i.fas, i16 %i.fap, i64 1
  %i.fau = insertelement <4 x i16> %i.fat, i16 %i.faq, i64 2
  %i.fav = insertelement <4 x i16> %i.fau, i16 %i.far, i64 3
  %i.faw = zext <4 x i16> %i.fav to <4 x i32>
  %i.fax = shl nuw <4 x i32> %i.faw, splat (i32 16)
  %i.fay = bitcast <4 x i32> %i.fax to <4 x float>
  %i.faz = fmul fast <4 x float> %strided.vec750, %i.fay
  %i.fba = load i16, ptr %i.ezv, align 2, !tbaa !269
  %i.fbb = load i16, ptr %i.ezx, align 2, !tbaa !269
  %i.fbc = load i16, ptr %i.ezz, align 2, !tbaa !269
  %i.fbd = load i16, ptr %i.fab, align 2, !tbaa !269
  %i.fbe = insertelement <4 x i16> poison, i16 %i.fba, i64 0
  %i.fbf = insertelement <4 x i16> %i.fbe, i16 %i.fbb, i64 1
  %i.fbg = insertelement <4 x i16> %i.fbf, i16 %i.fbc, i64 2
  %i.fbh = insertelement <4 x i16> %i.fbg, i16 %i.fbd, i64 3
  %i.fbi = zext <4 x i16> %i.fbh to <4 x i32>
  %i.fbj = shl nuw <4 x i32> %i.fbi, splat (i32 16)
  %i.fbk = bitcast <4 x i32> %i.fbj to <4 x float>
  %i.fbl = fmul fast <4 x float> %strided.vec751, %i.fbk
  %i.fbm = fadd fast <4 x float> %i.faz, %i.fbl
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.ezv, i64 2
  %i.fbo = getelementptr inbounds nuw i8, ptr %i.ezx, i64 2
  %i.fbp = getelementptr inbounds nuw i8, ptr %i.ezz, i64 2
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.fab, i64 2
  %i.fbr = load i16, ptr %i.fbn, align 2, !tbaa !269
  %i.fbs = load i16, ptr %i.fbo, align 2, !tbaa !269
  %i.fbt = load i16, ptr %i.fbp, align 2, !tbaa !269
  %i.fbu = load i16, ptr %i.fbq, align 2, !tbaa !269
  %i.fbv = insertelement <4 x i16> poison, i16 %i.fbr, i64 0
  %i.fbw = insertelement <4 x i16> %i.fbv, i16 %i.fbs, i64 1
  %i.fbx = insertelement <4 x i16> %i.fbw, i16 %i.fbt, i64 2
  %i.fby = insertelement <4 x i16> %i.fbx, i16 %i.fbu, i64 3
  %i.fbz = zext <4 x i16> %i.fby to <4 x i32>
  %i.fca = shl nuw <4 x i32> %i.fbz, splat (i32 16)
  %i.fcb = bitcast <4 x i32> %i.fca to <4 x float>
  %i.fcc = fmul fast <4 x float> %strided.vec752, %i.fcb
  %i.fcd = fadd fast <4 x float> %i.fbm, %i.fcc
  %i.fce = getelementptr inbounds nuw i8, ptr %i.ezv, i64 4
  %i.fcf = getelementptr inbounds nuw i8, ptr %i.ezx, i64 4
  %i.fcg = getelementptr inbounds nuw i8, ptr %i.ezz, i64 4
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fab, i64 4
  %i.fci = load i16, ptr %i.fce, align 2, !tbaa !269
  %i.fcj = load i16, ptr %i.fcf, align 2, !tbaa !269
  %i.fck = load i16, ptr %i.fcg, align 2, !tbaa !269
  %i.fcl = load i16, ptr %i.fch, align 2, !tbaa !269
  %i.fcm = insertelement <4 x i16> poison, i16 %i.fci, i64 0
  %i.fcn = insertelement <4 x i16> %i.fcm, i16 %i.fcj, i64 1
  %i.fco = insertelement <4 x i16> %i.fcn, i16 %i.fck, i64 2
  %i.fcp = insertelement <4 x i16> %i.fco, i16 %i.fcl, i64 3
  %i.fcq = zext <4 x i16> %i.fcp to <4 x i32>
  %i.fcr = shl nuw <4 x i32> %i.fcq, splat (i32 16)
  %i.fcs = bitcast <4 x i32> %i.fcr to <4 x float>
  %i.fct = fmul fast <4 x float> %strided.vec753, %i.fcs
  %i.fcu = fadd fast <4 x float> %i.fcd, %i.fct
  %i.fcv = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index746
  store <4 x float> %i.fcu, ptr %i.fcv, align 4, !tbaa !70, !alias.scope !403, !noalias !405
  %i.fcw = getelementptr inbounds i8, ptr %i.fac, i64 -2
  %i.fcx = getelementptr inbounds i8, ptr %i.fad, i64 -2
  %i.fcy = getelementptr inbounds i8, ptr %i.fae, i64 -2
  %i.fcz = getelementptr inbounds i8, ptr %i.faf, i64 -2
  %i.fda = load i16, ptr %i.fcw, align 2, !tbaa !269
  %i.fdb = load i16, ptr %i.fcx, align 2, !tbaa !269
  %i.fdc = load i16, ptr %i.fcy, align 2, !tbaa !269
  %i.fdd = load i16, ptr %i.fcz, align 2, !tbaa !269
  %i.fde = insertelement <4 x i16> poison, i16 %i.fda, i64 0
  %i.fdf = insertelement <4 x i16> %i.fde, i16 %i.fdb, i64 1
  %i.fdg = insertelement <4 x i16> %i.fdf, i16 %i.fdc, i64 2
  %i.fdh = insertelement <4 x i16> %i.fdg, i16 %i.fdd, i64 3
  %i.fdi = zext <4 x i16> %i.fdh to <4 x i32>
  %i.fdj = shl nuw <4 x i32> %i.fdi, splat (i32 16)
  %i.fdk = bitcast <4 x i32> %i.fdj to <4 x float>
  %i.fdl = fmul fast <4 x float> %strided.vec750, %i.fdk
  %i.fdm = load i16, ptr %i.fac, align 2, !tbaa !269
  %i.fdn = load i16, ptr %i.fad, align 2, !tbaa !269
  %i.fdo = load i16, ptr %i.fae, align 2, !tbaa !269
  %i.fdp = load i16, ptr %i.faf, align 2, !tbaa !269
  %i.fdq = insertelement <4 x i16> poison, i16 %i.fdm, i64 0
  %i.fdr = insertelement <4 x i16> %i.fdq, i16 %i.fdn, i64 1
  %i.fds = insertelement <4 x i16> %i.fdr, i16 %i.fdo, i64 2
  %i.fdt = insertelement <4 x i16> %i.fds, i16 %i.fdp, i64 3
  %i.fdu = zext <4 x i16> %i.fdt to <4 x i32>
  %i.fdv = shl nuw <4 x i32> %i.fdu, splat (i32 16)
  %i.fdw = bitcast <4 x i32> %i.fdv to <4 x float>
  %i.fdx = fmul fast <4 x float> %strided.vec751, %i.fdw
  %i.fdy = fadd fast <4 x float> %i.fdl, %i.fdx
  %i.fdz = getelementptr inbounds nuw i8, ptr %i.fac, i64 2
  %i.fea = getelementptr inbounds nuw i8, ptr %i.fad, i64 2
  %i.feb = getelementptr inbounds nuw i8, ptr %i.fae, i64 2
  %i.fec = getelementptr inbounds nuw i8, ptr %i.faf, i64 2
  %i.fed = load i16, ptr %i.fdz, align 2, !tbaa !269
  %i.fee = load i16, ptr %i.fea, align 2, !tbaa !269
  %i.fef = load i16, ptr %i.feb, align 2, !tbaa !269
  %i.feg = load i16, ptr %i.fec, align 2, !tbaa !269
  %i.feh = insertelement <4 x i16> poison, i16 %i.fed, i64 0
  %i.fei = insertelement <4 x i16> %i.feh, i16 %i.fee, i64 1
  %i.fej = insertelement <4 x i16> %i.fei, i16 %i.fef, i64 2
  %i.fek = insertelement <4 x i16> %i.fej, i16 %i.feg, i64 3
  %i.fel = zext <4 x i16> %i.fek to <4 x i32>
  %i.fem = shl nuw <4 x i32> %i.fel, splat (i32 16)
  %i.fen = bitcast <4 x i32> %i.fem to <4 x float>
  %i.feo = fmul fast <4 x float> %strided.vec752, %i.fen
  %i.fep = fadd fast <4 x float> %i.fdy, %i.feo
  %i.feq = getelementptr inbounds nuw i8, ptr %i.fac, i64 4
  %i.fer = getelementptr inbounds nuw i8, ptr %i.fad, i64 4
  %i.fes = getelementptr inbounds nuw i8, ptr %i.fae, i64 4
  %i.fet = getelementptr inbounds nuw i8, ptr %i.faf, i64 4
  %i.feu = load i16, ptr %i.feq, align 2, !tbaa !269
  %i.fev = load i16, ptr %i.fer, align 2, !tbaa !269
  %i.few = load i16, ptr %i.fes, align 2, !tbaa !269
  %i.fex = load i16, ptr %i.fet, align 2, !tbaa !269
  %i.fey = insertelement <4 x i16> poison, i16 %i.feu, i64 0
  %i.fez = insertelement <4 x i16> %i.fey, i16 %i.fev, i64 1
  %i.ffa = insertelement <4 x i16> %i.fez, i16 %i.few, i64 2
  %i.ffb = insertelement <4 x i16> %i.ffa, i16 %i.fex, i64 3
  %i.ffc = zext <4 x i16> %i.ffb to <4 x i32>
  %i.ffd = shl nuw <4 x i32> %i.ffc, splat (i32 16)
  %i.ffe = bitcast <4 x i32> %i.ffd to <4 x float>
  %i.fff = fmul fast <4 x float> %strided.vec753, %i.ffe
  %i.ffg = fadd fast <4 x float> %i.fep, %i.fff
  %i.ffh = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index746
  store <4 x float> %i.ffg, ptr %i.ffh, align 4, !tbaa !70, !alias.scope !408, !noalias !409
  %i.ffi = getelementptr inbounds i8, ptr %i.fag, i64 -2
  %i.ffj = getelementptr inbounds i8, ptr %i.fah, i64 -2
  %i.ffk = getelementptr inbounds i8, ptr %i.fai, i64 -2
  %i.ffl = getelementptr inbounds i8, ptr %i.faj, i64 -2
  %i.ffm = load i16, ptr %i.ffi, align 2, !tbaa !269
  %i.ffn = load i16, ptr %i.ffj, align 2, !tbaa !269
  %i.ffo = load i16, ptr %i.ffk, align 2, !tbaa !269
  %i.ffp = load i16, ptr %i.ffl, align 2, !tbaa !269
  %i.ffq = insertelement <4 x i16> poison, i16 %i.ffm, i64 0
  %i.ffr = insertelement <4 x i16> %i.ffq, i16 %i.ffn, i64 1
  %i.ffs = insertelement <4 x i16> %i.ffr, i16 %i.ffo, i64 2
  %i.fft = insertelement <4 x i16> %i.ffs, i16 %i.ffp, i64 3
  %i.ffu = zext <4 x i16> %i.fft to <4 x i32>
  %i.ffv = shl nuw <4 x i32> %i.ffu, splat (i32 16)
  %i.ffw = bitcast <4 x i32> %i.ffv to <4 x float>
  %i.ffx = fmul fast <4 x float> %strided.vec750, %i.ffw
  %i.ffy = load i16, ptr %i.fag, align 2, !tbaa !269
  %i.ffz = load i16, ptr %i.fah, align 2, !tbaa !269
  %i.fga = load i16, ptr %i.fai, align 2, !tbaa !269
  %i.fgb = load i16, ptr %i.faj, align 2, !tbaa !269
  %i.fgc = insertelement <4 x i16> poison, i16 %i.ffy, i64 0
  %i.fgd = insertelement <4 x i16> %i.fgc, i16 %i.ffz, i64 1
  %i.fge = insertelement <4 x i16> %i.fgd, i16 %i.fga, i64 2
  %i.fgf = insertelement <4 x i16> %i.fge, i16 %i.fgb, i64 3
  %i.fgg = zext <4 x i16> %i.fgf to <4 x i32>
  %i.fgh = shl nuw <4 x i32> %i.fgg, splat (i32 16)
  %i.fgi = bitcast <4 x i32> %i.fgh to <4 x float>
  %i.fgj = fmul fast <4 x float> %strided.vec751, %i.fgi
  %i.fgk = fadd fast <4 x float> %i.ffx, %i.fgj
  %i.fgl = getelementptr inbounds nuw i8, ptr %i.fag, i64 2
  %i.fgm = getelementptr inbounds nuw i8, ptr %i.fah, i64 2
  %i.fgn = getelementptr inbounds nuw i8, ptr %i.fai, i64 2
  %i.fgo = getelementptr inbounds nuw i8, ptr %i.faj, i64 2
  %i.fgp = load i16, ptr %i.fgl, align 2, !tbaa !269
  %i.fgq = load i16, ptr %i.fgm, align 2, !tbaa !269
  %i.fgr = load i16, ptr %i.fgn, align 2, !tbaa !269
  %i.fgs = load i16, ptr %i.fgo, align 2, !tbaa !269
  %i.fgt = insertelement <4 x i16> poison, i16 %i.fgp, i64 0
  %i.fgu = insertelement <4 x i16> %i.fgt, i16 %i.fgq, i64 1
  %i.fgv = insertelement <4 x i16> %i.fgu, i16 %i.fgr, i64 2
  %i.fgw = insertelement <4 x i16> %i.fgv, i16 %i.fgs, i64 3
  %i.fgx = zext <4 x i16> %i.fgw to <4 x i32>
  %i.fgy = shl nuw <4 x i32> %i.fgx, splat (i32 16)
  %i.fgz = bitcast <4 x i32> %i.fgy to <4 x float>
  %i.fha = fmul fast <4 x float> %strided.vec752, %i.fgz
  %i.fhb = fadd fast <4 x float> %i.fgk, %i.fha
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.fag, i64 4
  %i.fhd = getelementptr inbounds nuw i8, ptr %i.fah, i64 4
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.fai, i64 4
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.faj, i64 4
  %i.fhg = load i16, ptr %i.fhc, align 2, !tbaa !269
  %i.fhh = load i16, ptr %i.fhd, align 2, !tbaa !269
  %i.fhi = load i16, ptr %i.fhe, align 2, !tbaa !269
  %i.fhj = load i16, ptr %i.fhf, align 2, !tbaa !269
  %i.fhk = insertelement <4 x i16> poison, i16 %i.fhg, i64 0
  %i.fhl = insertelement <4 x i16> %i.fhk, i16 %i.fhh, i64 1
  %i.fhm = insertelement <4 x i16> %i.fhl, i16 %i.fhi, i64 2
  %i.fhn = insertelement <4 x i16> %i.fhm, i16 %i.fhj, i64 3
  %i.fho = zext <4 x i16> %i.fhn to <4 x i32>
  %i.fhp = shl nuw <4 x i32> %i.fho, splat (i32 16)
  %i.fhq = bitcast <4 x i32> %i.fhp to <4 x float>
  %i.fhr = fmul fast <4 x float> %strided.vec753, %i.fhq
  %i.fhs = fadd fast <4 x float> %i.fhb, %i.fhr
  %i.fht = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index746
  store <4 x float> %i.fhs, ptr %i.fht, align 4, !tbaa !70, !alias.scope !410, !noalias !400
  %index.next754 = add nuw i64 %index746, 4       ; 2 uses
  %i.fhu = icmp eq i64 %index.next754, %n.vec744
  br i1 %i.fhu, label %vec.epilog.middle.block755, label %vec.epilog.vector.body745, !llvm.loop !412

vec.epilog.middle.block755:                       ; preds = %vec.epilog.vector.body745
  br i1 %cmp.n756, label %.loopexit.i132, label %.lr.ph333.i.preheader

.lr.ph333.i.preheader:                            ; preds = %vector.memcheck694, %iter.check739, %vec.epilog.iter.check741, %vec.epilog.middle.block755
  %indvars.iv352.i.ph = phi i64 [ 0, %iter.check739 ], [ 0, %vector.memcheck694 ], [ %n.vec725, %vec.epilog.iter.check741 ], [ %n.vec744, %vec.epilog.middle.block755 ]
  %.0265332.i.ph = phi ptr [ %i.clc, %iter.check739 ], [ %i.clc, %vector.memcheck694 ], [ %i.clz, %vec.epilog.iter.check741 ], [ %i.cmb, %vec.epilog.middle.block755 ]
  br label %.lr.ph333.i

.lr.ph333.i:                                      ; preds = %.lr.ph333.i.preheader, %.lr.ph333.i
  %indvars.iv352.i = phi i64 [ %indvars.iv.next353.i, %.lr.ph333.i ], [ %indvars.iv352.i.ph, %.lr.ph333.i.preheader ] ; 5 uses
  %.0265332.i = phi ptr [ %i.fja, %.lr.ph333.i ], [ %.0265332.i.ph, %.lr.ph333.i.preheader ] ; 2 uses
  %i.fhv = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv352.i
  %i.fhw = load i32, ptr %i.fhv, align 4, !tbaa !25
  %i.fhx = sext i32 %i.fhw to i64                 ; 3 uses
  %i.fhy = getelementptr inbounds [2 x i8], ptr %i.eac, i64 %i.fhx
  %i.fhz = getelementptr inbounds [2 x i8], ptr %i.eag, i64 %i.fhx
  %i.fia = getelementptr inbounds [2 x i8], ptr %i.eak, i64 %i.fhx
  %i.fib = getelementptr inbounds i8, ptr %i.fhy, i64 -2
  %i.fic = load <4 x float>, ptr %.0265332.i, align 4, !tbaa !70 ; 3 uses
  %i.fid = load <4 x i16>, ptr %i.fib, align 2, !tbaa !269
  %i.fie = zext <4 x i16> %i.fid to <4 x i32>
  %i.fif = shl nuw <4 x i32> %i.fie, splat (i32 16)
  %i.fig = bitcast <4 x i32> %i.fif to <4 x float>
  %i.fih = fmul fast <4 x float> %i.fic, %i.fig
  %i.fii = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fih)
  %i.fij = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv352.i
  store float %i.fii, ptr %i.fij, align 4, !tbaa !70
  %i.fik = getelementptr inbounds i8, ptr %i.fhz, i64 -2
  %i.fil = load <4 x i16>, ptr %i.fik, align 2, !tbaa !269
  %i.fim = zext <4 x i16> %i.fil to <4 x i32>
  %i.fin = shl nuw <4 x i32> %i.fim, splat (i32 16)
  %i.fio = bitcast <4 x i32> %i.fin to <4 x float>
  %i.fip = fmul fast <4 x float> %i.fic, %i.fio
  %i.fiq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fip)
  %i.fir = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv352.i
  store float %i.fiq, ptr %i.fir, align 4, !tbaa !70
  %i.fis = getelementptr inbounds i8, ptr %i.fia, i64 -2
  %i.fit = load <4 x i16>, ptr %i.fis, align 2, !tbaa !269
  %i.fiu = zext <4 x i16> %i.fit to <4 x i32>
  %i.fiv = shl nuw <4 x i32> %i.fiu, splat (i32 16)
  %i.fiw = bitcast <4 x i32> %i.fiv to <4 x float>
  %i.fix = fmul fast <4 x float> %i.fic, %i.fiw
  %i.fiy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fix)
  %i.fiz = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv352.i
  store float %i.fiy, ptr %i.fiz, align 4, !tbaa !70
  %i.fja = getelementptr inbounds nuw i8, ptr %.0265332.i, i64 16
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %i.cln
  br i1 %exitcond356.not.i, label %.loopexit.i132, label %.lr.ph333.i, !llvm.loop !413

bb.gx:                                            ; preds = %bb.gv
  %i.fjb = add nsw i32 %i.cog, -1
  %i.fjc = sext i32 %i.fjb to i64
  %i.fjd = mul i64 %i.clp, %i.fjc
  %i.fje = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fjd ; 21 uses
  %i.fjf = sext i32 %i.cog to i64
  %i.fjg = mul i64 %i.clp, %i.fjf
  %i.fjh = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fjg ; 21 uses
  %i.fji = add nsw i32 %i.cog, 1
  %i.fjj = sext i32 %i.fji to i64
  %i.fjk = mul i64 %i.clp, %i.fjj
  %i.fjl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fjk ; 21 uses
  %i.fjm = add nsw i32 %i.cog, 2
  %i.fjn = sext i32 %i.fjm to i64
  %i.fjo = mul i64 %i.clp, %i.fjn
  %i.fjp = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fjo ; 21 uses
  br i1 %i.cll, label %iter.check821, label %.loopexit.i132

iter.check821:                                    ; preds = %bb.gx
  br i1 %min.iters.check803, label %.lr.ph.i158.preheader, label %vector.memcheck759

vector.memcheck759:                               ; preds = %iter.check821
  %scevgep760 = getelementptr i8, ptr %.0249345.i, i64 %i.clq ; 4 uses
  %scevgep761 = getelementptr i8, ptr %.0251344.i, i64 %i.clq ; 4 uses
  %scevgep762 = getelementptr i8, ptr %.0253343.i, i64 %i.clq ; 4 uses
  %scevgep763 = getelementptr i8, ptr %.0255342.i, i64 %i.clq ; 4 uses
  %bound0764 = icmp ult ptr %.0249345.i, %scevgep761
  %bound1765 = icmp ult ptr %.0251344.i, %scevgep760
  %found.conflict766 = and i1 %bound0764, %bound1765
  %bound0767 = icmp ult ptr %.0249345.i, %scevgep762
  %bound1768 = icmp ult ptr %.0253343.i, %scevgep760
  %found.conflict769 = and i1 %bound0767, %bound1768
  %conflict.rdx770 = or i1 %found.conflict766, %found.conflict769
  %bound0771 = icmp ult ptr %.0249345.i, %scevgep763
  %bound1772 = icmp ult ptr %.0255342.i, %scevgep760
  %found.conflict773 = and i1 %bound0771, %bound1772
  %conflict.rdx774 = or i1 %conflict.rdx770, %found.conflict773
  %bound0775 = icmp ult ptr %.0249345.i, %scevgep607
  %bound1776 = icmp ult ptr %i.clc, %scevgep760
  %found.conflict777 = and i1 %bound0775, %bound1776
  %conflict.rdx778 = or i1 %conflict.rdx774, %found.conflict777
  %bound0779 = icmp ult ptr %.0251344.i, %scevgep762
  %bound1780 = icmp ult ptr %.0253343.i, %scevgep761
  %found.conflict781 = and i1 %bound0779, %bound1780
  %conflict.rdx782 = or i1 %conflict.rdx778, %found.conflict781
  %bound0783 = icmp ult ptr %.0251344.i, %scevgep763
  %bound1784 = icmp ult ptr %.0255342.i, %scevgep761
  %found.conflict785 = and i1 %bound0783, %bound1784
  %conflict.rdx786 = or i1 %conflict.rdx782, %found.conflict785
  %bound0787 = icmp ult ptr %.0251344.i, %scevgep607
  %bound1788 = icmp ult ptr %i.clc, %scevgep761
  %found.conflict789 = and i1 %bound0787, %bound1788
  %conflict.rdx790 = or i1 %conflict.rdx786, %found.conflict789
  %bound0791 = icmp ult ptr %.0253343.i, %scevgep763
  %bound1792 = icmp ult ptr %.0255342.i, %scevgep762
  %found.conflict793 = and i1 %bound0791, %bound1792
  %conflict.rdx794 = or i1 %conflict.rdx790, %found.conflict793
  %bound0795 = icmp ult ptr %.0253343.i, %scevgep607
  %bound1796 = icmp ult ptr %i.clc, %scevgep762
  %found.conflict797 = and i1 %bound0795, %bound1796
  %conflict.rdx798 = or i1 %conflict.rdx794, %found.conflict797
  %bound0799 = icmp ult ptr %.0255342.i, %scevgep607
  %bound1800 = icmp ult ptr %i.clc, %scevgep763
  %found.conflict801 = and i1 %bound0799, %bound1800
  %conflict.rdx802 = or i1 %conflict.rdx798, %found.conflict801
  br i1 %conflict.rdx802, label %.lr.ph.i158.preheader, label %vector.main.loop.iter.check804

vector.main.loop.iter.check804:                   ; preds = %vector.memcheck759
  br i1 %min.iters.check805, label %vec.epilog.ph825, label %vector.body808

vector.body808:                                   ; preds = %vector.main.loop.iter.check804, %vector.body808
  %index809 = phi i64 [ %index.next817, %vector.body808 ], [ 0, %vector.main.loop.iter.check804 ] ; 7 uses
  %i.fjq = shl i64 %index809, 4
  %next.gep810 = getelementptr i8, ptr %i.clc, i64 %i.fjq
  %i.fjr = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index809
  %wide.load811 = load <16 x i32>, ptr %i.fjr, align 4, !tbaa !25
  %i.fjs = sext <16 x i32> %wide.load811 to <16 x i64> ; 16 uses
  %i.fjt = extractelement <16 x i64> %i.fjs, i64 0 ; 4 uses
  %i.fju = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fjt ; 4 uses
  %i.fjv = extractelement <16 x i64> %i.fjs, i64 1 ; 4 uses
  %i.fjw = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fjv ; 4 uses
  %i.fjx = extractelement <16 x i64> %i.fjs, i64 2 ; 4 uses
  %i.fjy = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fjx ; 4 uses
  %i.fjz = extractelement <16 x i64> %i.fjs, i64 3 ; 4 uses
  %i.fka = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fjz ; 4 uses
  %i.fkb = extractelement <16 x i64> %i.fjs, i64 4 ; 4 uses
  %i.fkc = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkb ; 4 uses
  %i.fkd = extractelement <16 x i64> %i.fjs, i64 5 ; 4 uses
  %i.fke = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkd ; 4 uses
  %i.fkf = extractelement <16 x i64> %i.fjs, i64 6 ; 4 uses
  %i.fkg = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkf ; 4 uses
  %i.fkh = extractelement <16 x i64> %i.fjs, i64 7 ; 4 uses
  %i.fki = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkh ; 4 uses
  %i.fkj = extractelement <16 x i64> %i.fjs, i64 8 ; 4 uses
  %i.fkk = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkj ; 4 uses
  %i.fkl = extractelement <16 x i64> %i.fjs, i64 9 ; 4 uses
  %i.fkm = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkl ; 4 uses
  %i.fkn = extractelement <16 x i64> %i.fjs, i64 10 ; 4 uses
  %i.fko = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkn ; 4 uses
  %i.fkp = extractelement <16 x i64> %i.fjs, i64 11 ; 4 uses
  %i.fkq = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkp ; 4 uses
  %i.fkr = extractelement <16 x i64> %i.fjs, i64 12 ; 4 uses
  %i.fks = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkr ; 4 uses
  %i.fkt = extractelement <16 x i64> %i.fjs, i64 13 ; 4 uses
  %i.fku = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkt ; 4 uses
  %i.fkv = extractelement <16 x i64> %i.fjs, i64 14 ; 4 uses
  %i.fkw = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkv ; 4 uses
  %i.fkx = extractelement <16 x i64> %i.fjs, i64 15 ; 4 uses
  %i.fky = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.fkx ; 4 uses
  %i.fkz = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fjt ; 4 uses
  %i.fla = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fjv ; 4 uses
  %i.flb = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fjx ; 4 uses
  %i.flc = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fjz ; 4 uses
  %i.fld = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkb ; 4 uses
  %i.fle = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkd ; 4 uses
  %i.flf = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkf ; 4 uses
  %i.flg = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkh ; 4 uses
  %i.flh = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkj ; 4 uses
  %i.fli = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkl ; 4 uses
  %i.flj = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkn ; 4 uses
  %i.flk = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkp ; 4 uses
  %i.fll = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkr ; 4 uses
  %i.flm = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkt ; 4 uses
  %i.fln = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkv ; 4 uses
  %i.flo = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.fkx ; 4 uses
  %i.flp = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fjt ; 4 uses
  %i.flq = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fjv ; 4 uses
  %i.flr = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fjx ; 4 uses
  %i.fls = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fjz ; 4 uses
  %i.flt = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkb ; 4 uses
  %i.flu = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkd ; 4 uses
  %i.flv = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkf ; 4 uses
  %i.flw = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkh ; 4 uses
  %i.flx = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkj ; 4 uses
  %i.fly = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkl ; 4 uses
  %i.flz = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkn ; 4 uses
  %i.fma = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkp ; 4 uses
  %i.fmb = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkr ; 4 uses
  %i.fmc = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkt ; 4 uses
  %i.fmd = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkv ; 4 uses
  %i.fme = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.fkx ; 4 uses
  %i.fmf = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fjt ; 4 uses
  %i.fmg = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fjv ; 4 uses
  %i.fmh = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fjx ; 4 uses
  %i.fmi = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fjz ; 4 uses
  %i.fmj = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkb ; 4 uses
  %i.fmk = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkd ; 4 uses
  %i.fml = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkf ; 4 uses
  %i.fmm = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkh ; 4 uses
  %i.fmn = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkj ; 4 uses
  %i.fmo = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkl ; 4 uses
  %i.fmp = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkn ; 4 uses
  %i.fmq = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkp ; 4 uses
  %i.fmr = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkr ; 4 uses
  %i.fms = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkt ; 4 uses
  %i.fmt = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkv ; 4 uses
  %i.fmu = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.fkx ; 4 uses
  %wide.vec812 = load <64 x float>, ptr %next.gep810, align 4, !tbaa !70, !alias.scope !414 ; 4 uses
  %strided.vec813 = shufflevector <64 x float> %wide.vec812, <64 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60> ; 4 uses
  %strided.vec814 = shufflevector <64 x float> %wide.vec812, <64 x float> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61> ; 4 uses
  %strided.vec815 = shufflevector <64 x float> %wide.vec812, <64 x float> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62> ; 4 uses
  %strided.vec816 = shufflevector <64 x float> %wide.vec812, <64 x float> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63> ; 4 uses
  %i.fmv = getelementptr inbounds i8, ptr %i.fju, i64 -2
  %i.fmw = getelementptr inbounds i8, ptr %i.fjw, i64 -2
  %i.fmx = getelementptr inbounds i8, ptr %i.fjy, i64 -2
  %i.fmy = getelementptr inbounds i8, ptr %i.fka, i64 -2
  %i.fmz = getelementptr inbounds i8, ptr %i.fkc, i64 -2
  %i.fna = getelementptr inbounds i8, ptr %i.fke, i64 -2
  %i.fnb = getelementptr inbounds i8, ptr %i.fkg, i64 -2
  %i.fnc = getelementptr inbounds i8, ptr %i.fki, i64 -2
  %i.fnd = getelementptr inbounds i8, ptr %i.fkk, i64 -2
  %i.fne = getelementptr inbounds i8, ptr %i.fkm, i64 -2
  %i.fnf = getelementptr inbounds i8, ptr %i.fko, i64 -2
  %i.fng = getelementptr inbounds i8, ptr %i.fkq, i64 -2
  %i.fnh = getelementptr inbounds i8, ptr %i.fks, i64 -2
  %i.fni = getelementptr inbounds i8, ptr %i.fku, i64 -2
  %i.fnj = getelementptr inbounds i8, ptr %i.fkw, i64 -2
  %i.fnk = getelementptr inbounds i8, ptr %i.fky, i64 -2
  %i.fnl = load i16, ptr %i.fmv, align 2, !tbaa !269
  %i.fnm = load i16, ptr %i.fmw, align 2, !tbaa !269
  %i.fnn = load i16, ptr %i.fmx, align 2, !tbaa !269
  %i.fno = load i16, ptr %i.fmy, align 2, !tbaa !269
  %i.fnp = load i16, ptr %i.fmz, align 2, !tbaa !269
  %i.fnq = load i16, ptr %i.fna, align 2, !tbaa !269
  %i.fnr = load i16, ptr %i.fnb, align 2, !tbaa !269
  %i.fns = load i16, ptr %i.fnc, align 2, !tbaa !269
  %i.fnt = load i16, ptr %i.fnd, align 2, !tbaa !269
  %i.fnu = load i16, ptr %i.fne, align 2, !tbaa !269
  %i.fnv = load i16, ptr %i.fnf, align 2, !tbaa !269
  %i.fnw = load i16, ptr %i.fng, align 2, !tbaa !269
  %i.fnx = load i16, ptr %i.fnh, align 2, !tbaa !269
  %i.fny = load i16, ptr %i.fni, align 2, !tbaa !269
  %i.fnz = load i16, ptr %i.fnj, align 2, !tbaa !269
  %i.foa = load i16, ptr %i.fnk, align 2, !tbaa !269
  %i.fob = insertelement <16 x i16> poison, i16 %i.fnl, i64 0
  %i.foc = insertelement <16 x i16> %i.fob, i16 %i.fnm, i64 1
  %i.fod = insertelement <16 x i16> %i.foc, i16 %i.fnn, i64 2
  %i.foe = insertelement <16 x i16> %i.fod, i16 %i.fno, i64 3
  %i.fof = insertelement <16 x i16> %i.foe, i16 %i.fnp, i64 4
  %i.fog = insertelement <16 x i16> %i.fof, i16 %i.fnq, i64 5
  %i.foh = insertelement <16 x i16> %i.fog, i16 %i.fnr, i64 6
  %i.foi = insertelement <16 x i16> %i.foh, i16 %i.fns, i64 7
  %i.foj = insertelement <16 x i16> %i.foi, i16 %i.fnt, i64 8
  %i.fok = insertelement <16 x i16> %i.foj, i16 %i.fnu, i64 9
  %i.fol = insertelement <16 x i16> %i.fok, i16 %i.fnv, i64 10
  %i.fom = insertelement <16 x i16> %i.fol, i16 %i.fnw, i64 11
  %i.fon = insertelement <16 x i16> %i.fom, i16 %i.fnx, i64 12
  %i.foo = insertelement <16 x i16> %i.fon, i16 %i.fny, i64 13
  %i.fop = insertelement <16 x i16> %i.foo, i16 %i.fnz, i64 14
  %i.foq = insertelement <16 x i16> %i.fop, i16 %i.foa, i64 15
  %i.for = zext <16 x i16> %i.foq to <16 x i32>
  %i.fos = shl nuw <16 x i32> %i.for, splat (i32 16)
  %i.fot = bitcast <16 x i32> %i.fos to <16 x float>
  %i.fou = fmul fast <16 x float> %strided.vec813, %i.fot
  %i.fov = load i16, ptr %i.fju, align 2, !tbaa !269
  %i.fow = load i16, ptr %i.fjw, align 2, !tbaa !269
  %i.fox = load i16, ptr %i.fjy, align 2, !tbaa !269
  %i.foy = load i16, ptr %i.fka, align 2, !tbaa !269
  %i.foz = load i16, ptr %i.fkc, align 2, !tbaa !269
  %i.fpa = load i16, ptr %i.fke, align 2, !tbaa !269
  %i.fpb = load i16, ptr %i.fkg, align 2, !tbaa !269
  %i.fpc = load i16, ptr %i.fki, align 2, !tbaa !269
  %i.fpd = load i16, ptr %i.fkk, align 2, !tbaa !269
  %i.fpe = load i16, ptr %i.fkm, align 2, !tbaa !269
  %i.fpf = load i16, ptr %i.fko, align 2, !tbaa !269
  %i.fpg = load i16, ptr %i.fkq, align 2, !tbaa !269
  %i.fph = load i16, ptr %i.fks, align 2, !tbaa !269
  %i.fpi = load i16, ptr %i.fku, align 2, !tbaa !269
  %i.fpj = load i16, ptr %i.fkw, align 2, !tbaa !269
  %i.fpk = load i16, ptr %i.fky, align 2, !tbaa !269
  %i.fpl = insertelement <16 x i16> poison, i16 %i.fov, i64 0
  %i.fpm = insertelement <16 x i16> %i.fpl, i16 %i.fow, i64 1
  %i.fpn = insertelement <16 x i16> %i.fpm, i16 %i.fox, i64 2
  %i.fpo = insertelement <16 x i16> %i.fpn, i16 %i.foy, i64 3
  %i.fpp = insertelement <16 x i16> %i.fpo, i16 %i.foz, i64 4
  %i.fpq = insertelement <16 x i16> %i.fpp, i16 %i.fpa, i64 5
  %i.fpr = insertelement <16 x i16> %i.fpq, i16 %i.fpb, i64 6
  %i.fps = insertelement <16 x i16> %i.fpr, i16 %i.fpc, i64 7
  %i.fpt = insertelement <16 x i16> %i.fps, i16 %i.fpd, i64 8
  %i.fpu = insertelement <16 x i16> %i.fpt, i16 %i.fpe, i64 9
  %i.fpv = insertelement <16 x i16> %i.fpu, i16 %i.fpf, i64 10
  %i.fpw = insertelement <16 x i16> %i.fpv, i16 %i.fpg, i64 11
  %i.fpx = insertelement <16 x i16> %i.fpw, i16 %i.fph, i64 12
  %i.fpy = insertelement <16 x i16> %i.fpx, i16 %i.fpi, i64 13
  %i.fpz = insertelement <16 x i16> %i.fpy, i16 %i.fpj, i64 14
  %i.fqa = insertelement <16 x i16> %i.fpz, i16 %i.fpk, i64 15
  %i.fqb = zext <16 x i16> %i.fqa to <16 x i32>
  %i.fqc = shl nuw <16 x i32> %i.fqb, splat (i32 16)
  %i.fqd = bitcast <16 x i32> %i.fqc to <16 x float>
  %i.fqe = fmul fast <16 x float> %strided.vec814, %i.fqd
  %i.fqf = fadd fast <16 x float> %i.fou, %i.fqe
  %i.fqg = getelementptr inbounds nuw i8, ptr %i.fju, i64 2
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fjw, i64 2
  %i.fqi = getelementptr inbounds nuw i8, ptr %i.fjy, i64 2
  %i.fqj = getelementptr inbounds nuw i8, ptr %i.fka, i64 2
  %i.fqk = getelementptr inbounds nuw i8, ptr %i.fkc, i64 2
  %i.fql = getelementptr inbounds nuw i8, ptr %i.fke, i64 2
  %i.fqm = getelementptr inbounds nuw i8, ptr %i.fkg, i64 2
  %i.fqn = getelementptr inbounds nuw i8, ptr %i.fki, i64 2
  %i.fqo = getelementptr inbounds nuw i8, ptr %i.fkk, i64 2
  %i.fqp = getelementptr inbounds nuw i8, ptr %i.fkm, i64 2
  %i.fqq = getelementptr inbounds nuw i8, ptr %i.fko, i64 2
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.fkq, i64 2
  %i.fqs = getelementptr inbounds nuw i8, ptr %i.fks, i64 2
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.fku, i64 2
  %i.fqu = getelementptr inbounds nuw i8, ptr %i.fkw, i64 2
  %i.fqv = getelementptr inbounds nuw i8, ptr %i.fky, i64 2
  %i.fqw = load i16, ptr %i.fqg, align 2, !tbaa !269
  %i.fqx = load i16, ptr %i.fqh, align 2, !tbaa !269
  %i.fqy = load i16, ptr %i.fqi, align 2, !tbaa !269
  %i.fqz = load i16, ptr %i.fqj, align 2, !tbaa !269
  %i.fra = load i16, ptr %i.fqk, align 2, !tbaa !269
  %i.frb = load i16, ptr %i.fql, align 2, !tbaa !269
  %i.frc = load i16, ptr %i.fqm, align 2, !tbaa !269
  %i.frd = load i16, ptr %i.fqn, align 2, !tbaa !269
  %i.fre = load i16, ptr %i.fqo, align 2, !tbaa !269
  %i.frf = load i16, ptr %i.fqp, align 2, !tbaa !269
  %i.frg = load i16, ptr %i.fqq, align 2, !tbaa !269
  %i.frh = load i16, ptr %i.fqr, align 2, !tbaa !269
  %i.fri = load i16, ptr %i.fqs, align 2, !tbaa !269
  %i.frj = load i16, ptr %i.fqt, align 2, !tbaa !269
  %i.frk = load i16, ptr %i.fqu, align 2, !tbaa !269
  %i.frl = load i16, ptr %i.fqv, align 2, !tbaa !269
  %i.frm = insertelement <16 x i16> poison, i16 %i.fqw, i64 0
  %i.frn = insertelement <16 x i16> %i.frm, i16 %i.fqx, i64 1
  %i.fro = insertelement <16 x i16> %i.frn, i16 %i.fqy, i64 2
  %i.frp = insertelement <16 x i16> %i.fro, i16 %i.fqz, i64 3
  %i.frq = insertelement <16 x i16> %i.frp, i16 %i.fra, i64 4
  %i.frr = insertelement <16 x i16> %i.frq, i16 %i.frb, i64 5
  %i.frs = insertelement <16 x i16> %i.frr, i16 %i.frc, i64 6
  %i.frt = insertelement <16 x i16> %i.frs, i16 %i.frd, i64 7
  %i.fru = insertelement <16 x i16> %i.frt, i16 %i.fre, i64 8
  %i.frv = insertelement <16 x i16> %i.fru, i16 %i.frf, i64 9
  %i.frw = insertelement <16 x i16> %i.frv, i16 %i.frg, i64 10
  %i.frx = insertelement <16 x i16> %i.frw, i16 %i.frh, i64 11
  %i.fry = insertelement <16 x i16> %i.frx, i16 %i.fri, i64 12
  %i.frz = insertelement <16 x i16> %i.fry, i16 %i.frj, i64 13
  %i.fsa = insertelement <16 x i16> %i.frz, i16 %i.frk, i64 14
  %i.fsb = insertelement <16 x i16> %i.fsa, i16 %i.frl, i64 15
  %i.fsc = zext <16 x i16> %i.fsb to <16 x i32>
  %i.fsd = shl nuw <16 x i32> %i.fsc, splat (i32 16)
  %i.fse = bitcast <16 x i32> %i.fsd to <16 x float>
  %i.fsf = fmul fast <16 x float> %strided.vec815, %i.fse
  %i.fsg = fadd fast <16 x float> %i.fqf, %i.fsf
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fju, i64 4
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fjw, i64 4
  %i.fsj = getelementptr inbounds nuw i8, ptr %i.fjy, i64 4
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.fka, i64 4
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fkc, i64 4
  %i.fsm = getelementptr inbounds nuw i8, ptr %i.fke, i64 4
  %i.fsn = getelementptr inbounds nuw i8, ptr %i.fkg, i64 4
  %i.fso = getelementptr inbounds nuw i8, ptr %i.fki, i64 4
  %i.fsp = getelementptr inbounds nuw i8, ptr %i.fkk, i64 4
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.fkm, i64 4
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fko, i64 4
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fkq, i64 4
  %i.fst = getelementptr inbounds nuw i8, ptr %i.fks, i64 4
  %i.fsu = getelementptr inbounds nuw i8, ptr %i.fku, i64 4
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.fkw, i64 4
  %i.fsw = getelementptr inbounds nuw i8, ptr %i.fky, i64 4
  %i.fsx = load i16, ptr %i.fsh, align 2, !tbaa !269
  %i.fsy = load i16, ptr %i.fsi, align 2, !tbaa !269
  %i.fsz = load i16, ptr %i.fsj, align 2, !tbaa !269
  %i.fta = load i16, ptr %i.fsk, align 2, !tbaa !269
  %i.ftb = load i16, ptr %i.fsl, align 2, !tbaa !269
  %i.ftc = load i16, ptr %i.fsm, align 2, !tbaa !269
  %i.ftd = load i16, ptr %i.fsn, align 2, !tbaa !269
  %i.fte = load i16, ptr %i.fso, align 2, !tbaa !269
  %i.ftf = load i16, ptr %i.fsp, align 2, !tbaa !269
  %i.ftg = load i16, ptr %i.fsq, align 2, !tbaa !269
  %i.fth = load i16, ptr %i.fsr, align 2, !tbaa !269
  %i.fti = load i16, ptr %i.fss, align 2, !tbaa !269
  %i.ftj = load i16, ptr %i.fst, align 2, !tbaa !269
  %i.ftk = load i16, ptr %i.fsu, align 2, !tbaa !269
  %i.ftl = load i16, ptr %i.fsv, align 2, !tbaa !269
  %i.ftm = load i16, ptr %i.fsw, align 2, !tbaa !269
  %i.ftn = insertelement <16 x i16> poison, i16 %i.fsx, i64 0
  %i.fto = insertelement <16 x i16> %i.ftn, i16 %i.fsy, i64 1
  %i.ftp = insertelement <16 x i16> %i.fto, i16 %i.fsz, i64 2
  %i.ftq = insertelement <16 x i16> %i.ftp, i16 %i.fta, i64 3
  %i.ftr = insertelement <16 x i16> %i.ftq, i16 %i.ftb, i64 4
  %i.fts = insertelement <16 x i16> %i.ftr, i16 %i.ftc, i64 5
  %i.ftt = insertelement <16 x i16> %i.fts, i16 %i.ftd, i64 6
  %i.ftu = insertelement <16 x i16> %i.ftt, i16 %i.fte, i64 7
  %i.ftv = insertelement <16 x i16> %i.ftu, i16 %i.ftf, i64 8
  %i.ftw = insertelement <16 x i16> %i.ftv, i16 %i.ftg, i64 9
  %i.ftx = insertelement <16 x i16> %i.ftw, i16 %i.fth, i64 10
  %i.fty = insertelement <16 x i16> %i.ftx, i16 %i.fti, i64 11
  %i.ftz = insertelement <16 x i16> %i.fty, i16 %i.ftj, i64 12
  %i.fua = insertelement <16 x i16> %i.ftz, i16 %i.ftk, i64 13
  %i.fub = insertelement <16 x i16> %i.fua, i16 %i.ftl, i64 14
  %i.fuc = insertelement <16 x i16> %i.fub, i16 %i.ftm, i64 15
  %i.fud = zext <16 x i16> %i.fuc to <16 x i32>
  %i.fue = shl nuw <16 x i32> %i.fud, splat (i32 16)
  %i.fuf = bitcast <16 x i32> %i.fue to <16 x float>
  %i.fug = fmul fast <16 x float> %strided.vec816, %i.fuf
  %i.fuh = fadd fast <16 x float> %i.fsg, %i.fug
  %i.fui = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index809
  store <16 x float> %i.fuh, ptr %i.fui, align 4, !tbaa !70, !alias.scope !417, !noalias !419
  %i.fuj = getelementptr inbounds i8, ptr %i.fkz, i64 -2
  %i.fuk = getelementptr inbounds i8, ptr %i.fla, i64 -2
  %i.ful = getelementptr inbounds i8, ptr %i.flb, i64 -2
  %i.fum = getelementptr inbounds i8, ptr %i.flc, i64 -2
  %i.fun = getelementptr inbounds i8, ptr %i.fld, i64 -2
  %i.fuo = getelementptr inbounds i8, ptr %i.fle, i64 -2
  %i.fup = getelementptr inbounds i8, ptr %i.flf, i64 -2
  %i.fuq = getelementptr inbounds i8, ptr %i.flg, i64 -2
  %i.fur = getelementptr inbounds i8, ptr %i.flh, i64 -2
  %i.fus = getelementptr inbounds i8, ptr %i.fli, i64 -2
  %i.fut = getelementptr inbounds i8, ptr %i.flj, i64 -2
  %i.fuu = getelementptr inbounds i8, ptr %i.flk, i64 -2
  %i.fuv = getelementptr inbounds i8, ptr %i.fll, i64 -2
  %i.fuw = getelementptr inbounds i8, ptr %i.flm, i64 -2
  %i.fux = getelementptr inbounds i8, ptr %i.fln, i64 -2
  %i.fuy = getelementptr inbounds i8, ptr %i.flo, i64 -2
  %i.fuz = load i16, ptr %i.fuj, align 2, !tbaa !269
  %i.fva = load i16, ptr %i.fuk, align 2, !tbaa !269
  %i.fvb = load i16, ptr %i.ful, align 2, !tbaa !269
  %i.fvc = load i16, ptr %i.fum, align 2, !tbaa !269
  %i.fvd = load i16, ptr %i.fun, align 2, !tbaa !269
  %i.fve = load i16, ptr %i.fuo, align 2, !tbaa !269
  %i.fvf = load i16, ptr %i.fup, align 2, !tbaa !269
  %i.fvg = load i16, ptr %i.fuq, align 2, !tbaa !269
  %i.fvh = load i16, ptr %i.fur, align 2, !tbaa !269
  %i.fvi = load i16, ptr %i.fus, align 2, !tbaa !269
  %i.fvj = load i16, ptr %i.fut, align 2, !tbaa !269
  %i.fvk = load i16, ptr %i.fuu, align 2, !tbaa !269
  %i.fvl = load i16, ptr %i.fuv, align 2, !tbaa !269
  %i.fvm = load i16, ptr %i.fuw, align 2, !tbaa !269
  %i.fvn = load i16, ptr %i.fux, align 2, !tbaa !269
  %i.fvo = load i16, ptr %i.fuy, align 2, !tbaa !269
  %i.fvp = insertelement <16 x i16> poison, i16 %i.fuz, i64 0
  %i.fvq = insertelement <16 x i16> %i.fvp, i16 %i.fva, i64 1
  %i.fvr = insertelement <16 x i16> %i.fvq, i16 %i.fvb, i64 2
  %i.fvs = insertelement <16 x i16> %i.fvr, i16 %i.fvc, i64 3
  %i.fvt = insertelement <16 x i16> %i.fvs, i16 %i.fvd, i64 4
  %i.fvu = insertelement <16 x i16> %i.fvt, i16 %i.fve, i64 5
  %i.fvv = insertelement <16 x i16> %i.fvu, i16 %i.fvf, i64 6
  %i.fvw = insertelement <16 x i16> %i.fvv, i16 %i.fvg, i64 7
  %i.fvx = insertelement <16 x i16> %i.fvw, i16 %i.fvh, i64 8
  %i.fvy = insertelement <16 x i16> %i.fvx, i16 %i.fvi, i64 9
  %i.fvz = insertelement <16 x i16> %i.fvy, i16 %i.fvj, i64 10
  %i.fwa = insertelement <16 x i16> %i.fvz, i16 %i.fvk, i64 11
  %i.fwb = insertelement <16 x i16> %i.fwa, i16 %i.fvl, i64 12
  %i.fwc = insertelement <16 x i16> %i.fwb, i16 %i.fvm, i64 13
  %i.fwd = insertelement <16 x i16> %i.fwc, i16 %i.fvn, i64 14
  %i.fwe = insertelement <16 x i16> %i.fwd, i16 %i.fvo, i64 15
  %i.fwf = zext <16 x i16> %i.fwe to <16 x i32>
  %i.fwg = shl nuw <16 x i32> %i.fwf, splat (i32 16)
  %i.fwh = bitcast <16 x i32> %i.fwg to <16 x float>
  %i.fwi = fmul fast <16 x float> %strided.vec813, %i.fwh
  %i.fwj = load i16, ptr %i.fkz, align 2, !tbaa !269
  %i.fwk = load i16, ptr %i.fla, align 2, !tbaa !269
  %i.fwl = load i16, ptr %i.flb, align 2, !tbaa !269
  %i.fwm = load i16, ptr %i.flc, align 2, !tbaa !269
  %i.fwn = load i16, ptr %i.fld, align 2, !tbaa !269
  %i.fwo = load i16, ptr %i.fle, align 2, !tbaa !269
  %i.fwp = load i16, ptr %i.flf, align 2, !tbaa !269
  %i.fwq = load i16, ptr %i.flg, align 2, !tbaa !269
  %i.fwr = load i16, ptr %i.flh, align 2, !tbaa !269
  %i.fws = load i16, ptr %i.fli, align 2, !tbaa !269
  %i.fwt = load i16, ptr %i.flj, align 2, !tbaa !269
  %i.fwu = load i16, ptr %i.flk, align 2, !tbaa !269
  %i.fwv = load i16, ptr %i.fll, align 2, !tbaa !269
  %i.fww = load i16, ptr %i.flm, align 2, !tbaa !269
  %i.fwx = load i16, ptr %i.fln, align 2, !tbaa !269
  %i.fwy = load i16, ptr %i.flo, align 2, !tbaa !269
  %i.fwz = insertelement <16 x i16> poison, i16 %i.fwj, i64 0
  %i.fxa = insertelement <16 x i16> %i.fwz, i16 %i.fwk, i64 1
  %i.fxb = insertelement <16 x i16> %i.fxa, i16 %i.fwl, i64 2
  %i.fxc = insertelement <16 x i16> %i.fxb, i16 %i.fwm, i64 3
  %i.fxd = insertelement <16 x i16> %i.fxc, i16 %i.fwn, i64 4
  %i.fxe = insertelement <16 x i16> %i.fxd, i16 %i.fwo, i64 5
  %i.fxf = insertelement <16 x i16> %i.fxe, i16 %i.fwp, i64 6
  %i.fxg = insertelement <16 x i16> %i.fxf, i16 %i.fwq, i64 7
  %i.fxh = insertelement <16 x i16> %i.fxg, i16 %i.fwr, i64 8
  %i.fxi = insertelement <16 x i16> %i.fxh, i16 %i.fws, i64 9
  %i.fxj = insertelement <16 x i16> %i.fxi, i16 %i.fwt, i64 10
  %i.fxk = insertelement <16 x i16> %i.fxj, i16 %i.fwu, i64 11
  %i.fxl = insertelement <16 x i16> %i.fxk, i16 %i.fwv, i64 12
  %i.fxm = insertelement <16 x i16> %i.fxl, i16 %i.fww, i64 13
  %i.fxn = insertelement <16 x i16> %i.fxm, i16 %i.fwx, i64 14
  %i.fxo = insertelement <16 x i16> %i.fxn, i16 %i.fwy, i64 15
  %i.fxp = zext <16 x i16> %i.fxo to <16 x i32>
  %i.fxq = shl nuw <16 x i32> %i.fxp, splat (i32 16)
  %i.fxr = bitcast <16 x i32> %i.fxq to <16 x float>
  %i.fxs = fmul fast <16 x float> %strided.vec814, %i.fxr
  %i.fxt = fadd fast <16 x float> %i.fwi, %i.fxs
  %i.fxu = getelementptr inbounds nuw i8, ptr %i.fkz, i64 2
  %i.fxv = getelementptr inbounds nuw i8, ptr %i.fla, i64 2
  %i.fxw = getelementptr inbounds nuw i8, ptr %i.flb, i64 2
  %i.fxx = getelementptr inbounds nuw i8, ptr %i.flc, i64 2
  %i.fxy = getelementptr inbounds nuw i8, ptr %i.fld, i64 2
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.fle, i64 2
  %i.fya = getelementptr inbounds nuw i8, ptr %i.flf, i64 2
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.flg, i64 2
  %i.fyc = getelementptr inbounds nuw i8, ptr %i.flh, i64 2
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fli, i64 2
  %i.fye = getelementptr inbounds nuw i8, ptr %i.flj, i64 2
  %i.fyf = getelementptr inbounds nuw i8, ptr %i.flk, i64 2
  %i.fyg = getelementptr inbounds nuw i8, ptr %i.fll, i64 2
  %i.fyh = getelementptr inbounds nuw i8, ptr %i.flm, i64 2
  %i.fyi = getelementptr inbounds nuw i8, ptr %i.fln, i64 2
  %i.fyj = getelementptr inbounds nuw i8, ptr %i.flo, i64 2
  %i.fyk = load i16, ptr %i.fxu, align 2, !tbaa !269
  %i.fyl = load i16, ptr %i.fxv, align 2, !tbaa !269
  %i.fym = load i16, ptr %i.fxw, align 2, !tbaa !269
  %i.fyn = load i16, ptr %i.fxx, align 2, !tbaa !269
  %i.fyo = load i16, ptr %i.fxy, align 2, !tbaa !269
  %i.fyp = load i16, ptr %i.fxz, align 2, !tbaa !269
  %i.fyq = load i16, ptr %i.fya, align 2, !tbaa !269
  %i.fyr = load i16, ptr %i.fyb, align 2, !tbaa !269
  %i.fys = load i16, ptr %i.fyc, align 2, !tbaa !269
  %i.fyt = load i16, ptr %i.fyd, align 2, !tbaa !269
  %i.fyu = load i16, ptr %i.fye, align 2, !tbaa !269
  %i.fyv = load i16, ptr %i.fyf, align 2, !tbaa !269
  %i.fyw = load i16, ptr %i.fyg, align 2, !tbaa !269
  %i.fyx = load i16, ptr %i.fyh, align 2, !tbaa !269
  %i.fyy = load i16, ptr %i.fyi, align 2, !tbaa !269
  %i.fyz = load i16, ptr %i.fyj, align 2, !tbaa !269
  %i.fza = insertelement <16 x i16> poison, i16 %i.fyk, i64 0
  %i.fzb = insertelement <16 x i16> %i.fza, i16 %i.fyl, i64 1
  %i.fzc = insertelement <16 x i16> %i.fzb, i16 %i.fym, i64 2
  %i.fzd = insertelement <16 x i16> %i.fzc, i16 %i.fyn, i64 3
  %i.fze = insertelement <16 x i16> %i.fzd, i16 %i.fyo, i64 4
  %i.fzf = insertelement <16 x i16> %i.fze, i16 %i.fyp, i64 5
  %i.fzg = insertelement <16 x i16> %i.fzf, i16 %i.fyq, i64 6
  %i.fzh = insertelement <16 x i16> %i.fzg, i16 %i.fyr, i64 7
  %i.fzi = insertelement <16 x i16> %i.fzh, i16 %i.fys, i64 8
  %i.fzj = insertelement <16 x i16> %i.fzi, i16 %i.fyt, i64 9
  %i.fzk = insertelement <16 x i16> %i.fzj, i16 %i.fyu, i64 10
  %i.fzl = insertelement <16 x i16> %i.fzk, i16 %i.fyv, i64 11
  %i.fzm = insertelement <16 x i16> %i.fzl, i16 %i.fyw, i64 12
  %i.fzn = insertelement <16 x i16> %i.fzm, i16 %i.fyx, i64 13
  %i.fzo = insertelement <16 x i16> %i.fzn, i16 %i.fyy, i64 14
  %i.fzp = insertelement <16 x i16> %i.fzo, i16 %i.fyz, i64 15
  %i.fzq = zext <16 x i16> %i.fzp to <16 x i32>
  %i.fzr = shl nuw <16 x i32> %i.fzq, splat (i32 16)
  %i.fzs = bitcast <16 x i32> %i.fzr to <16 x float>
  %i.fzt = fmul fast <16 x float> %strided.vec815, %i.fzs
  %i.fzu = fadd fast <16 x float> %i.fxt, %i.fzt
  %i.fzv = getelementptr inbounds nuw i8, ptr %i.fkz, i64 4
  %i.fzw = getelementptr inbounds nuw i8, ptr %i.fla, i64 4
  %i.fzx = getelementptr inbounds nuw i8, ptr %i.flb, i64 4
  %i.fzy = getelementptr inbounds nuw i8, ptr %i.flc, i64 4
  %i.fzz = getelementptr inbounds nuw i8, ptr %i.fld, i64 4
  %i.gaa = getelementptr inbounds nuw i8, ptr %i.fle, i64 4
  %i.gab = getelementptr inbounds nuw i8, ptr %i.flf, i64 4
  %i.gac = getelementptr inbounds nuw i8, ptr %i.flg, i64 4
  %i.gad = getelementptr inbounds nuw i8, ptr %i.flh, i64 4
  %i.gae = getelementptr inbounds nuw i8, ptr %i.fli, i64 4
  %i.gaf = getelementptr inbounds nuw i8, ptr %i.flj, i64 4
  %i.gag = getelementptr inbounds nuw i8, ptr %i.flk, i64 4
  %i.gah = getelementptr inbounds nuw i8, ptr %i.fll, i64 4
  %i.gai = getelementptr inbounds nuw i8, ptr %i.flm, i64 4
  %i.gaj = getelementptr inbounds nuw i8, ptr %i.fln, i64 4
  %i.gak = getelementptr inbounds nuw i8, ptr %i.flo, i64 4
  %i.gal = load i16, ptr %i.fzv, align 2, !tbaa !269
  %i.gam = load i16, ptr %i.fzw, align 2, !tbaa !269
  %i.gan = load i16, ptr %i.fzx, align 2, !tbaa !269
  %i.gao = load i16, ptr %i.fzy, align 2, !tbaa !269
  %i.gap = load i16, ptr %i.fzz, align 2, !tbaa !269
  %i.gaq = load i16, ptr %i.gaa, align 2, !tbaa !269
  %i.gar = load i16, ptr %i.gab, align 2, !tbaa !269
  %i.gas = load i16, ptr %i.gac, align 2, !tbaa !269
  %i.gat = load i16, ptr %i.gad, align 2, !tbaa !269
  %i.gau = load i16, ptr %i.gae, align 2, !tbaa !269
  %i.gav = load i16, ptr %i.gaf, align 2, !tbaa !269
  %i.gaw = load i16, ptr %i.gag, align 2, !tbaa !269
  %i.gax = load i16, ptr %i.gah, align 2, !tbaa !269
  %i.gay = load i16, ptr %i.gai, align 2, !tbaa !269
  %i.gaz = load i16, ptr %i.gaj, align 2, !tbaa !269
  %i.gba = load i16, ptr %i.gak, align 2, !tbaa !269
  %i.gbb = insertelement <16 x i16> poison, i16 %i.gal, i64 0
  %i.gbc = insertelement <16 x i16> %i.gbb, i16 %i.gam, i64 1
  %i.gbd = insertelement <16 x i16> %i.gbc, i16 %i.gan, i64 2
  %i.gbe = insertelement <16 x i16> %i.gbd, i16 %i.gao, i64 3
  %i.gbf = insertelement <16 x i16> %i.gbe, i16 %i.gap, i64 4
  %i.gbg = insertelement <16 x i16> %i.gbf, i16 %i.gaq, i64 5
  %i.gbh = insertelement <16 x i16> %i.gbg, i16 %i.gar, i64 6
  %i.gbi = insertelement <16 x i16> %i.gbh, i16 %i.gas, i64 7
  %i.gbj = insertelement <16 x i16> %i.gbi, i16 %i.gat, i64 8
  %i.gbk = insertelement <16 x i16> %i.gbj, i16 %i.gau, i64 9
  %i.gbl = insertelement <16 x i16> %i.gbk, i16 %i.gav, i64 10
  %i.gbm = insertelement <16 x i16> %i.gbl, i16 %i.gaw, i64 11
  %i.gbn = insertelement <16 x i16> %i.gbm, i16 %i.gax, i64 12
  %i.gbo = insertelement <16 x i16> %i.gbn, i16 %i.gay, i64 13
  %i.gbp = insertelement <16 x i16> %i.gbo, i16 %i.gaz, i64 14
  %i.gbq = insertelement <16 x i16> %i.gbp, i16 %i.gba, i64 15
  %i.gbr = zext <16 x i16> %i.gbq to <16 x i32>
  %i.gbs = shl nuw <16 x i32> %i.gbr, splat (i32 16)
  %i.gbt = bitcast <16 x i32> %i.gbs to <16 x float>
  %i.gbu = fmul fast <16 x float> %strided.vec816, %i.gbt
  %i.gbv = fadd fast <16 x float> %i.fzu, %i.gbu
  %i.gbw = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index809
  store <16 x float> %i.gbv, ptr %i.gbw, align 4, !tbaa !70, !alias.scope !423, !noalias !424
  %i.gbx = getelementptr inbounds i8, ptr %i.flp, i64 -2
  %i.gby = getelementptr inbounds i8, ptr %i.flq, i64 -2
  %i.gbz = getelementptr inbounds i8, ptr %i.flr, i64 -2
  %i.gca = getelementptr inbounds i8, ptr %i.fls, i64 -2
  %i.gcb = getelementptr inbounds i8, ptr %i.flt, i64 -2
  %i.gcc = getelementptr inbounds i8, ptr %i.flu, i64 -2
  %i.gcd = getelementptr inbounds i8, ptr %i.flv, i64 -2
  %i.gce = getelementptr inbounds i8, ptr %i.flw, i64 -2
  %i.gcf = getelementptr inbounds i8, ptr %i.flx, i64 -2
  %i.gcg = getelementptr inbounds i8, ptr %i.fly, i64 -2
  %i.gch = getelementptr inbounds i8, ptr %i.flz, i64 -2
  %i.gci = getelementptr inbounds i8, ptr %i.fma, i64 -2
  %i.gcj = getelementptr inbounds i8, ptr %i.fmb, i64 -2
  %i.gck = getelementptr inbounds i8, ptr %i.fmc, i64 -2
  %i.gcl = getelementptr inbounds i8, ptr %i.fmd, i64 -2
  %i.gcm = getelementptr inbounds i8, ptr %i.fme, i64 -2
  %i.gcn = load i16, ptr %i.gbx, align 2, !tbaa !269
  %i.gco = load i16, ptr %i.gby, align 2, !tbaa !269
  %i.gcp = load i16, ptr %i.gbz, align 2, !tbaa !269
  %i.gcq = load i16, ptr %i.gca, align 2, !tbaa !269
  %i.gcr = load i16, ptr %i.gcb, align 2, !tbaa !269
  %i.gcs = load i16, ptr %i.gcc, align 2, !tbaa !269
  %i.gct = load i16, ptr %i.gcd, align 2, !tbaa !269
  %i.gcu = load i16, ptr %i.gce, align 2, !tbaa !269
  %i.gcv = load i16, ptr %i.gcf, align 2, !tbaa !269
  %i.gcw = load i16, ptr %i.gcg, align 2, !tbaa !269
  %i.gcx = load i16, ptr %i.gch, align 2, !tbaa !269
  %i.gcy = load i16, ptr %i.gci, align 2, !tbaa !269
  %i.gcz = load i16, ptr %i.gcj, align 2, !tbaa !269
  %i.gda = load i16, ptr %i.gck, align 2, !tbaa !269
  %i.gdb = load i16, ptr %i.gcl, align 2, !tbaa !269
  %i.gdc = load i16, ptr %i.gcm, align 2, !tbaa !269
  %i.gdd = insertelement <16 x i16> poison, i16 %i.gcn, i64 0
  %i.gde = insertelement <16 x i16> %i.gdd, i16 %i.gco, i64 1
  %i.gdf = insertelement <16 x i16> %i.gde, i16 %i.gcp, i64 2
  %i.gdg = insertelement <16 x i16> %i.gdf, i16 %i.gcq, i64 3
  %i.gdh = insertelement <16 x i16> %i.gdg, i16 %i.gcr, i64 4
  %i.gdi = insertelement <16 x i16> %i.gdh, i16 %i.gcs, i64 5
  %i.gdj = insertelement <16 x i16> %i.gdi, i16 %i.gct, i64 6
  %i.gdk = insertelement <16 x i16> %i.gdj, i16 %i.gcu, i64 7
  %i.gdl = insertelement <16 x i16> %i.gdk, i16 %i.gcv, i64 8
  %i.gdm = insertelement <16 x i16> %i.gdl, i16 %i.gcw, i64 9
  %i.gdn = insertelement <16 x i16> %i.gdm, i16 %i.gcx, i64 10
  %i.gdo = insertelement <16 x i16> %i.gdn, i16 %i.gcy, i64 11
  %i.gdp = insertelement <16 x i16> %i.gdo, i16 %i.gcz, i64 12
  %i.gdq = insertelement <16 x i16> %i.gdp, i16 %i.gda, i64 13
  %i.gdr = insertelement <16 x i16> %i.gdq, i16 %i.gdb, i64 14
  %i.gds = insertelement <16 x i16> %i.gdr, i16 %i.gdc, i64 15
  %i.gdt = zext <16 x i16> %i.gds to <16 x i32>
  %i.gdu = shl nuw <16 x i32> %i.gdt, splat (i32 16)
  %i.gdv = bitcast <16 x i32> %i.gdu to <16 x float>
  %i.gdw = fmul fast <16 x float> %strided.vec813, %i.gdv
  %i.gdx = load i16, ptr %i.flp, align 2, !tbaa !269
  %i.gdy = load i16, ptr %i.flq, align 2, !tbaa !269
  %i.gdz = load i16, ptr %i.flr, align 2, !tbaa !269
  %i.gea = load i16, ptr %i.fls, align 2, !tbaa !269
  %i.geb = load i16, ptr %i.flt, align 2, !tbaa !269
  %i.gec = load i16, ptr %i.flu, align 2, !tbaa !269
  %i.ged = load i16, ptr %i.flv, align 2, !tbaa !269
  %i.gee = load i16, ptr %i.flw, align 2, !tbaa !269
  %i.gef = load i16, ptr %i.flx, align 2, !tbaa !269
  %i.geg = load i16, ptr %i.fly, align 2, !tbaa !269
  %i.geh = load i16, ptr %i.flz, align 2, !tbaa !269
  %i.gei = load i16, ptr %i.fma, align 2, !tbaa !269
  %i.gej = load i16, ptr %i.fmb, align 2, !tbaa !269
  %i.gek = load i16, ptr %i.fmc, align 2, !tbaa !269
  %i.gel = load i16, ptr %i.fmd, align 2, !tbaa !269
  %i.gem = load i16, ptr %i.fme, align 2, !tbaa !269
  %i.gen = insertelement <16 x i16> poison, i16 %i.gdx, i64 0
  %i.geo = insertelement <16 x i16> %i.gen, i16 %i.gdy, i64 1
  %i.gep = insertelement <16 x i16> %i.geo, i16 %i.gdz, i64 2
  %i.geq = insertelement <16 x i16> %i.gep, i16 %i.gea, i64 3
  %i.ger = insertelement <16 x i16> %i.geq, i16 %i.geb, i64 4
  %i.ges = insertelement <16 x i16> %i.ger, i16 %i.gec, i64 5
  %i.get = insertelement <16 x i16> %i.ges, i16 %i.ged, i64 6
  %i.geu = insertelement <16 x i16> %i.get, i16 %i.gee, i64 7
  %i.gev = insertelement <16 x i16> %i.geu, i16 %i.gef, i64 8
  %i.gew = insertelement <16 x i16> %i.gev, i16 %i.geg, i64 9
  %i.gex = insertelement <16 x i16> %i.gew, i16 %i.geh, i64 10
  %i.gey = insertelement <16 x i16> %i.gex, i16 %i.gei, i64 11
  %i.gez = insertelement <16 x i16> %i.gey, i16 %i.gej, i64 12
  %i.gfa = insertelement <16 x i16> %i.gez, i16 %i.gek, i64 13
  %i.gfb = insertelement <16 x i16> %i.gfa, i16 %i.gel, i64 14
  %i.gfc = insertelement <16 x i16> %i.gfb, i16 %i.gem, i64 15
  %i.gfd = zext <16 x i16> %i.gfc to <16 x i32>
  %i.gfe = shl nuw <16 x i32> %i.gfd, splat (i32 16)
  %i.gff = bitcast <16 x i32> %i.gfe to <16 x float>
  %i.gfg = fmul fast <16 x float> %strided.vec814, %i.gff
  %i.gfh = fadd fast <16 x float> %i.gdw, %i.gfg
  %i.gfi = getelementptr inbounds nuw i8, ptr %i.flp, i64 2
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.flq, i64 2
  %i.gfk = getelementptr inbounds nuw i8, ptr %i.flr, i64 2
  %i.gfl = getelementptr inbounds nuw i8, ptr %i.fls, i64 2
  %i.gfm = getelementptr inbounds nuw i8, ptr %i.flt, i64 2
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.flu, i64 2
  %i.gfo = getelementptr inbounds nuw i8, ptr %i.flv, i64 2
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.flw, i64 2
  %i.gfq = getelementptr inbounds nuw i8, ptr %i.flx, i64 2
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.fly, i64 2
  %i.gfs = getelementptr inbounds nuw i8, ptr %i.flz, i64 2
  %i.gft = getelementptr inbounds nuw i8, ptr %i.fma, i64 2
  %i.gfu = getelementptr inbounds nuw i8, ptr %i.fmb, i64 2
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.fmc, i64 2
  %i.gfw = getelementptr inbounds nuw i8, ptr %i.fmd, i64 2
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.fme, i64 2
  %i.gfy = load i16, ptr %i.gfi, align 2, !tbaa !269
  %i.gfz = load i16, ptr %i.gfj, align 2, !tbaa !269
  %i.gga = load i16, ptr %i.gfk, align 2, !tbaa !269
  %i.ggb = load i16, ptr %i.gfl, align 2, !tbaa !269
  %i.ggc = load i16, ptr %i.gfm, align 2, !tbaa !269
  %i.ggd = load i16, ptr %i.gfn, align 2, !tbaa !269
  %i.gge = load i16, ptr %i.gfo, align 2, !tbaa !269
  %i.ggf = load i16, ptr %i.gfp, align 2, !tbaa !269
  %i.ggg = load i16, ptr %i.gfq, align 2, !tbaa !269
  %i.ggh = load i16, ptr %i.gfr, align 2, !tbaa !269
  %i.ggi = load i16, ptr %i.gfs, align 2, !tbaa !269
  %i.ggj = load i16, ptr %i.gft, align 2, !tbaa !269
  %i.ggk = load i16, ptr %i.gfu, align 2, !tbaa !269
  %i.ggl = load i16, ptr %i.gfv, align 2, !tbaa !269
  %i.ggm = load i16, ptr %i.gfw, align 2, !tbaa !269
  %i.ggn = load i16, ptr %i.gfx, align 2, !tbaa !269
  %i.ggo = insertelement <16 x i16> poison, i16 %i.gfy, i64 0
  %i.ggp = insertelement <16 x i16> %i.ggo, i16 %i.gfz, i64 1
  %i.ggq = insertelement <16 x i16> %i.ggp, i16 %i.gga, i64 2
  %i.ggr = insertelement <16 x i16> %i.ggq, i16 %i.ggb, i64 3
  %i.ggs = insertelement <16 x i16> %i.ggr, i16 %i.ggc, i64 4
  %i.ggt = insertelement <16 x i16> %i.ggs, i16 %i.ggd, i64 5
  %i.ggu = insertelement <16 x i16> %i.ggt, i16 %i.gge, i64 6
  %i.ggv = insertelement <16 x i16> %i.ggu, i16 %i.ggf, i64 7
  %i.ggw = insertelement <16 x i16> %i.ggv, i16 %i.ggg, i64 8
  %i.ggx = insertelement <16 x i16> %i.ggw, i16 %i.ggh, i64 9
  %i.ggy = insertelement <16 x i16> %i.ggx, i16 %i.ggi, i64 10
  %i.ggz = insertelement <16 x i16> %i.ggy, i16 %i.ggj, i64 11
  %i.gha = insertelement <16 x i16> %i.ggz, i16 %i.ggk, i64 12
  %i.ghb = insertelement <16 x i16> %i.gha, i16 %i.ggl, i64 13
  %i.ghc = insertelement <16 x i16> %i.ghb, i16 %i.ggm, i64 14
  %i.ghd = insertelement <16 x i16> %i.ghc, i16 %i.ggn, i64 15
  %i.ghe = zext <16 x i16> %i.ghd to <16 x i32>
  %i.ghf = shl nuw <16 x i32> %i.ghe, splat (i32 16)
  %i.ghg = bitcast <16 x i32> %i.ghf to <16 x float>
  %i.ghh = fmul fast <16 x float> %strided.vec815, %i.ghg
  %i.ghi = fadd fast <16 x float> %i.gfh, %i.ghh
  %i.ghj = getelementptr inbounds nuw i8, ptr %i.flp, i64 4
  %i.ghk = getelementptr inbounds nuw i8, ptr %i.flq, i64 4
  %i.ghl = getelementptr inbounds nuw i8, ptr %i.flr, i64 4
  %i.ghm = getelementptr inbounds nuw i8, ptr %i.fls, i64 4
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.flt, i64 4
  %i.gho = getelementptr inbounds nuw i8, ptr %i.flu, i64 4
  %i.ghp = getelementptr inbounds nuw i8, ptr %i.flv, i64 4
  %i.ghq = getelementptr inbounds nuw i8, ptr %i.flw, i64 4
  %i.ghr = getelementptr inbounds nuw i8, ptr %i.flx, i64 4
  %i.ghs = getelementptr inbounds nuw i8, ptr %i.fly, i64 4
  %i.ght = getelementptr inbounds nuw i8, ptr %i.flz, i64 4
  %i.ghu = getelementptr inbounds nuw i8, ptr %i.fma, i64 4
  %i.ghv = getelementptr inbounds nuw i8, ptr %i.fmb, i64 4
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.fmc, i64 4
  %i.ghx = getelementptr inbounds nuw i8, ptr %i.fmd, i64 4
  %i.ghy = getelementptr inbounds nuw i8, ptr %i.fme, i64 4
  %i.ghz = load i16, ptr %i.ghj, align 2, !tbaa !269
  %i.gia = load i16, ptr %i.ghk, align 2, !tbaa !269
  %i.gib = load i16, ptr %i.ghl, align 2, !tbaa !269
  %i.gic = load i16, ptr %i.ghm, align 2, !tbaa !269
  %i.gid = load i16, ptr %i.ghn, align 2, !tbaa !269
  %i.gie = load i16, ptr %i.gho, align 2, !tbaa !269
  %i.gif = load i16, ptr %i.ghp, align 2, !tbaa !269
  %i.gig = load i16, ptr %i.ghq, align 2, !tbaa !269
  %i.gih = load i16, ptr %i.ghr, align 2, !tbaa !269
  %i.gii = load i16, ptr %i.ghs, align 2, !tbaa !269
  %i.gij = load i16, ptr %i.ght, align 2, !tbaa !269
  %i.gik = load i16, ptr %i.ghu, align 2, !tbaa !269
  %i.gil = load i16, ptr %i.ghv, align 2, !tbaa !269
  %i.gim = load i16, ptr %i.ghw, align 2, !tbaa !269
  %i.gin = load i16, ptr %i.ghx, align 2, !tbaa !269
  %i.gio = load i16, ptr %i.ghy, align 2, !tbaa !269
  %i.gip = insertelement <16 x i16> poison, i16 %i.ghz, i64 0
  %i.giq = insertelement <16 x i16> %i.gip, i16 %i.gia, i64 1
  %i.gir = insertelement <16 x i16> %i.giq, i16 %i.gib, i64 2
  %i.gis = insertelement <16 x i16> %i.gir, i16 %i.gic, i64 3
  %i.git = insertelement <16 x i16> %i.gis, i16 %i.gid, i64 4
  %i.giu = insertelement <16 x i16> %i.git, i16 %i.gie, i64 5
  %i.giv = insertelement <16 x i16> %i.giu, i16 %i.gif, i64 6
  %i.giw = insertelement <16 x i16> %i.giv, i16 %i.gig, i64 7
  %i.gix = insertelement <16 x i16> %i.giw, i16 %i.gih, i64 8
  %i.giy = insertelement <16 x i16> %i.gix, i16 %i.gii, i64 9
  %i.giz = insertelement <16 x i16> %i.giy, i16 %i.gij, i64 10
  %i.gja = insertelement <16 x i16> %i.giz, i16 %i.gik, i64 11
  %i.gjb = insertelement <16 x i16> %i.gja, i16 %i.gil, i64 12
  %i.gjc = insertelement <16 x i16> %i.gjb, i16 %i.gim, i64 13
  %i.gjd = insertelement <16 x i16> %i.gjc, i16 %i.gin, i64 14
  %i.gje = insertelement <16 x i16> %i.gjd, i16 %i.gio, i64 15
  %i.gjf = zext <16 x i16> %i.gje to <16 x i32>
  %i.gjg = shl nuw <16 x i32> %i.gjf, splat (i32 16)
  %i.gjh = bitcast <16 x i32> %i.gjg to <16 x float>
  %i.gji = fmul fast <16 x float> %strided.vec816, %i.gjh
  %i.gjj = fadd fast <16 x float> %i.ghi, %i.gji
  %i.gjk = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index809
  store <16 x float> %i.gjj, ptr %i.gjk, align 4, !tbaa !70, !alias.scope !425, !noalias !426
  %i.gjl = getelementptr inbounds i8, ptr %i.fmf, i64 -2
  %i.gjm = getelementptr inbounds i8, ptr %i.fmg, i64 -2
  %i.gjn = getelementptr inbounds i8, ptr %i.fmh, i64 -2
  %i.gjo = getelementptr inbounds i8, ptr %i.fmi, i64 -2
  %i.gjp = getelementptr inbounds i8, ptr %i.fmj, i64 -2
  %i.gjq = getelementptr inbounds i8, ptr %i.fmk, i64 -2
  %i.gjr = getelementptr inbounds i8, ptr %i.fml, i64 -2
  %i.gjs = getelementptr inbounds i8, ptr %i.fmm, i64 -2
  %i.gjt = getelementptr inbounds i8, ptr %i.fmn, i64 -2
  %i.gju = getelementptr inbounds i8, ptr %i.fmo, i64 -2
  %i.gjv = getelementptr inbounds i8, ptr %i.fmp, i64 -2
  %i.gjw = getelementptr inbounds i8, ptr %i.fmq, i64 -2
  %i.gjx = getelementptr inbounds i8, ptr %i.fmr, i64 -2
  %i.gjy = getelementptr inbounds i8, ptr %i.fms, i64 -2
  %i.gjz = getelementptr inbounds i8, ptr %i.fmt, i64 -2
  %i.gka = getelementptr inbounds i8, ptr %i.fmu, i64 -2
  %i.gkb = load i16, ptr %i.gjl, align 2, !tbaa !269
  %i.gkc = load i16, ptr %i.gjm, align 2, !tbaa !269
  %i.gkd = load i16, ptr %i.gjn, align 2, !tbaa !269
  %i.gke = load i16, ptr %i.gjo, align 2, !tbaa !269
  %i.gkf = load i16, ptr %i.gjp, align 2, !tbaa !269
  %i.gkg = load i16, ptr %i.gjq, align 2, !tbaa !269
  %i.gkh = load i16, ptr %i.gjr, align 2, !tbaa !269
  %i.gki = load i16, ptr %i.gjs, align 2, !tbaa !269
  %i.gkj = load i16, ptr %i.gjt, align 2, !tbaa !269
  %i.gkk = load i16, ptr %i.gju, align 2, !tbaa !269
  %i.gkl = load i16, ptr %i.gjv, align 2, !tbaa !269
  %i.gkm = load i16, ptr %i.gjw, align 2, !tbaa !269
  %i.gkn = load i16, ptr %i.gjx, align 2, !tbaa !269
  %i.gko = load i16, ptr %i.gjy, align 2, !tbaa !269
  %i.gkp = load i16, ptr %i.gjz, align 2, !tbaa !269
  %i.gkq = load i16, ptr %i.gka, align 2, !tbaa !269
  %i.gkr = insertelement <16 x i16> poison, i16 %i.gkb, i64 0
  %i.gks = insertelement <16 x i16> %i.gkr, i16 %i.gkc, i64 1
  %i.gkt = insertelement <16 x i16> %i.gks, i16 %i.gkd, i64 2
  %i.gku = insertelement <16 x i16> %i.gkt, i16 %i.gke, i64 3
  %i.gkv = insertelement <16 x i16> %i.gku, i16 %i.gkf, i64 4
  %i.gkw = insertelement <16 x i16> %i.gkv, i16 %i.gkg, i64 5
  %i.gkx = insertelement <16 x i16> %i.gkw, i16 %i.gkh, i64 6
  %i.gky = insertelement <16 x i16> %i.gkx, i16 %i.gki, i64 7
  %i.gkz = insertelement <16 x i16> %i.gky, i16 %i.gkj, i64 8
  %i.gla = insertelement <16 x i16> %i.gkz, i16 %i.gkk, i64 9
  %i.glb = insertelement <16 x i16> %i.gla, i16 %i.gkl, i64 10
  %i.glc = insertelement <16 x i16> %i.glb, i16 %i.gkm, i64 11
  %i.gld = insertelement <16 x i16> %i.glc, i16 %i.gkn, i64 12
  %i.gle = insertelement <16 x i16> %i.gld, i16 %i.gko, i64 13
  %i.glf = insertelement <16 x i16> %i.gle, i16 %i.gkp, i64 14
  %i.glg = insertelement <16 x i16> %i.glf, i16 %i.gkq, i64 15
  %i.glh = zext <16 x i16> %i.glg to <16 x i32>
  %i.gli = shl nuw <16 x i32> %i.glh, splat (i32 16)
  %i.glj = bitcast <16 x i32> %i.gli to <16 x float>
  %i.glk = fmul fast <16 x float> %strided.vec813, %i.glj
  %i.gll = load i16, ptr %i.fmf, align 2, !tbaa !269
  %i.glm = load i16, ptr %i.fmg, align 2, !tbaa !269
  %i.gln = load i16, ptr %i.fmh, align 2, !tbaa !269
  %i.glo = load i16, ptr %i.fmi, align 2, !tbaa !269
  %i.glp = load i16, ptr %i.fmj, align 2, !tbaa !269
  %i.glq = load i16, ptr %i.fmk, align 2, !tbaa !269
  %i.glr = load i16, ptr %i.fml, align 2, !tbaa !269
  %i.gls = load i16, ptr %i.fmm, align 2, !tbaa !269
  %i.glt = load i16, ptr %i.fmn, align 2, !tbaa !269
  %i.glu = load i16, ptr %i.fmo, align 2, !tbaa !269
  %i.glv = load i16, ptr %i.fmp, align 2, !tbaa !269
  %i.glw = load i16, ptr %i.fmq, align 2, !tbaa !269
  %i.glx = load i16, ptr %i.fmr, align 2, !tbaa !269
  %i.gly = load i16, ptr %i.fms, align 2, !tbaa !269
  %i.glz = load i16, ptr %i.fmt, align 2, !tbaa !269
  %i.gma = load i16, ptr %i.fmu, align 2, !tbaa !269
  %i.gmb = insertelement <16 x i16> poison, i16 %i.gll, i64 0
  %i.gmc = insertelement <16 x i16> %i.gmb, i16 %i.glm, i64 1
  %i.gmd = insertelement <16 x i16> %i.gmc, i16 %i.gln, i64 2
  %i.gme = insertelement <16 x i16> %i.gmd, i16 %i.glo, i64 3
  %i.gmf = insertelement <16 x i16> %i.gme, i16 %i.glp, i64 4
  %i.gmg = insertelement <16 x i16> %i.gmf, i16 %i.glq, i64 5
  %i.gmh = insertelement <16 x i16> %i.gmg, i16 %i.glr, i64 6
  %i.gmi = insertelement <16 x i16> %i.gmh, i16 %i.gls, i64 7
  %i.gmj = insertelement <16 x i16> %i.gmi, i16 %i.glt, i64 8
  %i.gmk = insertelement <16 x i16> %i.gmj, i16 %i.glu, i64 9
  %i.gml = insertelement <16 x i16> %i.gmk, i16 %i.glv, i64 10
  %i.gmm = insertelement <16 x i16> %i.gml, i16 %i.glw, i64 11
  %i.gmn = insertelement <16 x i16> %i.gmm, i16 %i.glx, i64 12
  %i.gmo = insertelement <16 x i16> %i.gmn, i16 %i.gly, i64 13
  %i.gmp = insertelement <16 x i16> %i.gmo, i16 %i.glz, i64 14
  %i.gmq = insertelement <16 x i16> %i.gmp, i16 %i.gma, i64 15
  %i.gmr = zext <16 x i16> %i.gmq to <16 x i32>
  %i.gms = shl nuw <16 x i32> %i.gmr, splat (i32 16)
  %i.gmt = bitcast <16 x i32> %i.gms to <16 x float>
  %i.gmu = fmul fast <16 x float> %strided.vec814, %i.gmt
  %i.gmv = fadd fast <16 x float> %i.glk, %i.gmu
  %i.gmw = getelementptr inbounds nuw i8, ptr %i.fmf, i64 2
  %i.gmx = getelementptr inbounds nuw i8, ptr %i.fmg, i64 2
  %i.gmy = getelementptr inbounds nuw i8, ptr %i.fmh, i64 2
  %i.gmz = getelementptr inbounds nuw i8, ptr %i.fmi, i64 2
  %i.gna = getelementptr inbounds nuw i8, ptr %i.fmj, i64 2
  %i.gnb = getelementptr inbounds nuw i8, ptr %i.fmk, i64 2
  %i.gnc = getelementptr inbounds nuw i8, ptr %i.fml, i64 2
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.fmm, i64 2
  %i.gne = getelementptr inbounds nuw i8, ptr %i.fmn, i64 2
  %i.gnf = getelementptr inbounds nuw i8, ptr %i.fmo, i64 2
  %i.gng = getelementptr inbounds nuw i8, ptr %i.fmp, i64 2
  %i.gnh = getelementptr inbounds nuw i8, ptr %i.fmq, i64 2
  %i.gni = getelementptr inbounds nuw i8, ptr %i.fmr, i64 2
  %i.gnj = getelementptr inbounds nuw i8, ptr %i.fms, i64 2
  %i.gnk = getelementptr inbounds nuw i8, ptr %i.fmt, i64 2
  %i.gnl = getelementptr inbounds nuw i8, ptr %i.fmu, i64 2
  %i.gnm = load i16, ptr %i.gmw, align 2, !tbaa !269
  %i.gnn = load i16, ptr %i.gmx, align 2, !tbaa !269
  %i.gno = load i16, ptr %i.gmy, align 2, !tbaa !269
  %i.gnp = load i16, ptr %i.gmz, align 2, !tbaa !269
  %i.gnq = load i16, ptr %i.gna, align 2, !tbaa !269
  %i.gnr = load i16, ptr %i.gnb, align 2, !tbaa !269
  %i.gns = load i16, ptr %i.gnc, align 2, !tbaa !269
  %i.gnt = load i16, ptr %i.gnd, align 2, !tbaa !269
  %i.gnu = load i16, ptr %i.gne, align 2, !tbaa !269
  %i.gnv = load i16, ptr %i.gnf, align 2, !tbaa !269
  %i.gnw = load i16, ptr %i.gng, align 2, !tbaa !269
  %i.gnx = load i16, ptr %i.gnh, align 2, !tbaa !269
  %i.gny = load i16, ptr %i.gni, align 2, !tbaa !269
  %i.gnz = load i16, ptr %i.gnj, align 2, !tbaa !269
  %i.goa = load i16, ptr %i.gnk, align 2, !tbaa !269
  %i.gob = load i16, ptr %i.gnl, align 2, !tbaa !269
  %i.goc = insertelement <16 x i16> poison, i16 %i.gnm, i64 0
  %i.god = insertelement <16 x i16> %i.goc, i16 %i.gnn, i64 1
  %i.goe = insertelement <16 x i16> %i.god, i16 %i.gno, i64 2
  %i.gof = insertelement <16 x i16> %i.goe, i16 %i.gnp, i64 3
  %i.gog = insertelement <16 x i16> %i.gof, i16 %i.gnq, i64 4
  %i.goh = insertelement <16 x i16> %i.gog, i16 %i.gnr, i64 5
  %i.goi = insertelement <16 x i16> %i.goh, i16 %i.gns, i64 6
  %i.goj = insertelement <16 x i16> %i.goi, i16 %i.gnt, i64 7
  %i.gok = insertelement <16 x i16> %i.goj, i16 %i.gnu, i64 8
  %i.gol = insertelement <16 x i16> %i.gok, i16 %i.gnv, i64 9
  %i.gom = insertelement <16 x i16> %i.gol, i16 %i.gnw, i64 10
  %i.gon = insertelement <16 x i16> %i.gom, i16 %i.gnx, i64 11
  %i.goo = insertelement <16 x i16> %i.gon, i16 %i.gny, i64 12
  %i.gop = insertelement <16 x i16> %i.goo, i16 %i.gnz, i64 13
  %i.goq = insertelement <16 x i16> %i.gop, i16 %i.goa, i64 14
  %i.gor = insertelement <16 x i16> %i.goq, i16 %i.gob, i64 15
  %i.gos = zext <16 x i16> %i.gor to <16 x i32>
  %i.got = shl nuw <16 x i32> %i.gos, splat (i32 16)
  %i.gou = bitcast <16 x i32> %i.got to <16 x float>
  %i.gov = fmul fast <16 x float> %strided.vec815, %i.gou
  %i.gow = fadd fast <16 x float> %i.gmv, %i.gov
  %i.gox = getelementptr inbounds nuw i8, ptr %i.fmf, i64 4
  %i.goy = getelementptr inbounds nuw i8, ptr %i.fmg, i64 4
  %i.goz = getelementptr inbounds nuw i8, ptr %i.fmh, i64 4
  %i.gpa = getelementptr inbounds nuw i8, ptr %i.fmi, i64 4
  %i.gpb = getelementptr inbounds nuw i8, ptr %i.fmj, i64 4
  %i.gpc = getelementptr inbounds nuw i8, ptr %i.fmk, i64 4
  %i.gpd = getelementptr inbounds nuw i8, ptr %i.fml, i64 4
  %i.gpe = getelementptr inbounds nuw i8, ptr %i.fmm, i64 4
  %i.gpf = getelementptr inbounds nuw i8, ptr %i.fmn, i64 4
  %i.gpg = getelementptr inbounds nuw i8, ptr %i.fmo, i64 4
  %i.gph = getelementptr inbounds nuw i8, ptr %i.fmp, i64 4
  %i.gpi = getelementptr inbounds nuw i8, ptr %i.fmq, i64 4
  %i.gpj = getelementptr inbounds nuw i8, ptr %i.fmr, i64 4
  %i.gpk = getelementptr inbounds nuw i8, ptr %i.fms, i64 4
  %i.gpl = getelementptr inbounds nuw i8, ptr %i.fmt, i64 4
  %i.gpm = getelementptr inbounds nuw i8, ptr %i.fmu, i64 4
  %i.gpn = load i16, ptr %i.gox, align 2, !tbaa !269
  %i.gpo = load i16, ptr %i.goy, align 2, !tbaa !269
  %i.gpp = load i16, ptr %i.goz, align 2, !tbaa !269
  %i.gpq = load i16, ptr %i.gpa, align 2, !tbaa !269
  %i.gpr = load i16, ptr %i.gpb, align 2, !tbaa !269
  %i.gps = load i16, ptr %i.gpc, align 2, !tbaa !269
  %i.gpt = load i16, ptr %i.gpd, align 2, !tbaa !269
  %i.gpu = load i16, ptr %i.gpe, align 2, !tbaa !269
  %i.gpv = load i16, ptr %i.gpf, align 2, !tbaa !269
  %i.gpw = load i16, ptr %i.gpg, align 2, !tbaa !269
  %i.gpx = load i16, ptr %i.gph, align 2, !tbaa !269
  %i.gpy = load i16, ptr %i.gpi, align 2, !tbaa !269
  %i.gpz = load i16, ptr %i.gpj, align 2, !tbaa !269
  %i.gqa = load i16, ptr %i.gpk, align 2, !tbaa !269
  %i.gqb = load i16, ptr %i.gpl, align 2, !tbaa !269
  %i.gqc = load i16, ptr %i.gpm, align 2, !tbaa !269
  %i.gqd = insertelement <16 x i16> poison, i16 %i.gpn, i64 0
  %i.gqe = insertelement <16 x i16> %i.gqd, i16 %i.gpo, i64 1
  %i.gqf = insertelement <16 x i16> %i.gqe, i16 %i.gpp, i64 2
  %i.gqg = insertelement <16 x i16> %i.gqf, i16 %i.gpq, i64 3
  %i.gqh = insertelement <16 x i16> %i.gqg, i16 %i.gpr, i64 4
  %i.gqi = insertelement <16 x i16> %i.gqh, i16 %i.gps, i64 5
  %i.gqj = insertelement <16 x i16> %i.gqi, i16 %i.gpt, i64 6
  %i.gqk = insertelement <16 x i16> %i.gqj, i16 %i.gpu, i64 7
  %i.gql = insertelement <16 x i16> %i.gqk, i16 %i.gpv, i64 8
  %i.gqm = insertelement <16 x i16> %i.gql, i16 %i.gpw, i64 9
  %i.gqn = insertelement <16 x i16> %i.gqm, i16 %i.gpx, i64 10
  %i.gqo = insertelement <16 x i16> %i.gqn, i16 %i.gpy, i64 11
  %i.gqp = insertelement <16 x i16> %i.gqo, i16 %i.gpz, i64 12
  %i.gqq = insertelement <16 x i16> %i.gqp, i16 %i.gqa, i64 13
  %i.gqr = insertelement <16 x i16> %i.gqq, i16 %i.gqb, i64 14
  %i.gqs = insertelement <16 x i16> %i.gqr, i16 %i.gqc, i64 15
  %i.gqt = zext <16 x i16> %i.gqs to <16 x i32>
  %i.gqu = shl nuw <16 x i32> %i.gqt, splat (i32 16)
  %i.gqv = bitcast <16 x i32> %i.gqu to <16 x float>
  %i.gqw = fmul fast <16 x float> %strided.vec816, %i.gqv
  %i.gqx = fadd fast <16 x float> %i.gow, %i.gqw
  %i.gqy = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %index809
  store <16 x float> %i.gqx, ptr %i.gqy, align 4, !tbaa !70, !alias.scope !427, !noalias !414
  %index.next817 = add nuw i64 %index809, 16      ; 2 uses
  %i.gqz = icmp eq i64 %index.next817, %n.vec807
  br i1 %i.gqz, label %middle.block818, label %vector.body808, !llvm.loop !428

middle.block818:                                  ; preds = %vector.body808
  br i1 %cmp.n819, label %.loopexit.i132, label %vec.epilog.iter.check823

vec.epilog.iter.check823:                         ; preds = %middle.block818
  br i1 %min.epilog.iters.check824, label %.lr.ph.i158.preheader, label %vec.epilog.ph825, !prof !120

vec.epilog.ph825:                                 ; preds = %vector.main.loop.iter.check804, %vec.epilog.iter.check823
  %vec.epilog.resume.val820 = phi i64 [ %n.vec807, %vec.epilog.iter.check823 ], [ 0, %vector.main.loop.iter.check804 ]
  br label %vec.epilog.vector.body827

vec.epilog.vector.body827:                        ; preds = %vec.epilog.vector.body827, %vec.epilog.ph825
  %index828 = phi i64 [ %vec.epilog.resume.val820, %vec.epilog.ph825 ], [ %index.next836, %vec.epilog.vector.body827 ] ; 7 uses
  %i.gra = shl i64 %index828, 4
  %next.gep829 = getelementptr i8, ptr %i.clc, i64 %i.gra
  %i.grb = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %index828
  %wide.load830 = load <4 x i32>, ptr %i.grb, align 4, !tbaa !25
  %i.grc = sext <4 x i32> %wide.load830 to <4 x i64> ; 4 uses
  %i.grd = extractelement <4 x i64> %i.grc, i64 0 ; 4 uses
  %i.gre = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.grd ; 4 uses
  %i.grf = extractelement <4 x i64> %i.grc, i64 1 ; 4 uses
  %i.grg = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.grf ; 4 uses
  %i.grh = extractelement <4 x i64> %i.grc, i64 2 ; 4 uses
  %i.gri = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.grh ; 4 uses
  %i.grj = extractelement <4 x i64> %i.grc, i64 3 ; 4 uses
  %i.grk = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.grj ; 4 uses
  %i.grl = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.grd ; 4 uses
  %i.grm = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.grf ; 4 uses
  %i.grn = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.grh ; 4 uses
  %i.gro = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.grj ; 4 uses
  %i.grp = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.grd ; 4 uses
  %i.grq = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.grf ; 4 uses
  %i.grr = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.grh ; 4 uses
  %i.grs = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.grj ; 4 uses
  %i.grt = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.grd ; 4 uses
  %i.gru = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.grf ; 4 uses
  %i.grv = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.grh ; 4 uses
  %i.grw = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.grj ; 4 uses
  %wide.vec831 = load <16 x float>, ptr %next.gep829, align 4, !tbaa !70, !alias.scope !414 ; 4 uses
  %strided.vec832 = shufflevector <16 x float> %wide.vec831, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 4 uses
  %strided.vec833 = shufflevector <16 x float> %wide.vec831, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 4 uses
  %strided.vec834 = shufflevector <16 x float> %wide.vec831, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 4 uses
  %strided.vec835 = shufflevector <16 x float> %wide.vec831, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15> ; 4 uses
  %i.grx = getelementptr inbounds i8, ptr %i.gre, i64 -2
  %i.gry = getelementptr inbounds i8, ptr %i.grg, i64 -2
  %i.grz = getelementptr inbounds i8, ptr %i.gri, i64 -2
  %i.gsa = getelementptr inbounds i8, ptr %i.grk, i64 -2
  %i.gsb = load i16, ptr %i.grx, align 2, !tbaa !269
  %i.gsc = load i16, ptr %i.gry, align 2, !tbaa !269
  %i.gsd = load i16, ptr %i.grz, align 2, !tbaa !269
  %i.gse = load i16, ptr %i.gsa, align 2, !tbaa !269
  %i.gsf = insertelement <4 x i16> poison, i16 %i.gsb, i64 0
  %i.gsg = insertelement <4 x i16> %i.gsf, i16 %i.gsc, i64 1
  %i.gsh = insertelement <4 x i16> %i.gsg, i16 %i.gsd, i64 2
  %i.gsi = insertelement <4 x i16> %i.gsh, i16 %i.gse, i64 3
  %i.gsj = zext <4 x i16> %i.gsi to <4 x i32>
  %i.gsk = shl nuw <4 x i32> %i.gsj, splat (i32 16)
  %i.gsl = bitcast <4 x i32> %i.gsk to <4 x float>
  %i.gsm = fmul fast <4 x float> %strided.vec832, %i.gsl
  %i.gsn = load i16, ptr %i.gre, align 2, !tbaa !269
  %i.gso = load i16, ptr %i.grg, align 2, !tbaa !269
  %i.gsp = load i16, ptr %i.gri, align 2, !tbaa !269
  %i.gsq = load i16, ptr %i.grk, align 2, !tbaa !269
  %i.gsr = insertelement <4 x i16> poison, i16 %i.gsn, i64 0
  %i.gss = insertelement <4 x i16> %i.gsr, i16 %i.gso, i64 1
  %i.gst = insertelement <4 x i16> %i.gss, i16 %i.gsp, i64 2
  %i.gsu = insertelement <4 x i16> %i.gst, i16 %i.gsq, i64 3
  %i.gsv = zext <4 x i16> %i.gsu to <4 x i32>
  %i.gsw = shl nuw <4 x i32> %i.gsv, splat (i32 16)
  %i.gsx = bitcast <4 x i32> %i.gsw to <4 x float>
  %i.gsy = fmul fast <4 x float> %strided.vec833, %i.gsx
  %i.gsz = fadd fast <4 x float> %i.gsm, %i.gsy
  %i.gta = getelementptr inbounds nuw i8, ptr %i.gre, i64 2
  %i.gtb = getelementptr inbounds nuw i8, ptr %i.grg, i64 2
  %i.gtc = getelementptr inbounds nuw i8, ptr %i.gri, i64 2
  %i.gtd = getelementptr inbounds nuw i8, ptr %i.grk, i64 2
  %i.gte = load i16, ptr %i.gta, align 2, !tbaa !269
  %i.gtf = load i16, ptr %i.gtb, align 2, !tbaa !269
  %i.gtg = load i16, ptr %i.gtc, align 2, !tbaa !269
  %i.gth = load i16, ptr %i.gtd, align 2, !tbaa !269
  %i.gti = insertelement <4 x i16> poison, i16 %i.gte, i64 0
  %i.gtj = insertelement <4 x i16> %i.gti, i16 %i.gtf, i64 1
  %i.gtk = insertelement <4 x i16> %i.gtj, i16 %i.gtg, i64 2
  %i.gtl = insertelement <4 x i16> %i.gtk, i16 %i.gth, i64 3
  %i.gtm = zext <4 x i16> %i.gtl to <4 x i32>
  %i.gtn = shl nuw <4 x i32> %i.gtm, splat (i32 16)
  %i.gto = bitcast <4 x i32> %i.gtn to <4 x float>
  %i.gtp = fmul fast <4 x float> %strided.vec834, %i.gto
  %i.gtq = fadd fast <4 x float> %i.gsz, %i.gtp
  %i.gtr = getelementptr inbounds nuw i8, ptr %i.gre, i64 4
  %i.gts = getelementptr inbounds nuw i8, ptr %i.grg, i64 4
  %i.gtt = getelementptr inbounds nuw i8, ptr %i.gri, i64 4
  %i.gtu = getelementptr inbounds nuw i8, ptr %i.grk, i64 4
  %i.gtv = load i16, ptr %i.gtr, align 2, !tbaa !269
  %i.gtw = load i16, ptr %i.gts, align 2, !tbaa !269
  %i.gtx = load i16, ptr %i.gtt, align 2, !tbaa !269
  %i.gty = load i16, ptr %i.gtu, align 2, !tbaa !269
  %i.gtz = insertelement <4 x i16> poison, i16 %i.gtv, i64 0
  %i.gua = insertelement <4 x i16> %i.gtz, i16 %i.gtw, i64 1
  %i.gub = insertelement <4 x i16> %i.gua, i16 %i.gtx, i64 2
  %i.guc = insertelement <4 x i16> %i.gub, i16 %i.gty, i64 3
  %i.gud = zext <4 x i16> %i.guc to <4 x i32>
  %i.gue = shl nuw <4 x i32> %i.gud, splat (i32 16)
  %i.guf = bitcast <4 x i32> %i.gue to <4 x float>
  %i.gug = fmul fast <4 x float> %strided.vec835, %i.guf
  %i.guh = fadd fast <4 x float> %i.gtq, %i.gug
  %i.gui = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %index828
  store <4 x float> %i.guh, ptr %i.gui, align 4, !tbaa !70, !alias.scope !417, !noalias !419
  %i.guj = getelementptr inbounds i8, ptr %i.grl, i64 -2
  %i.guk = getelementptr inbounds i8, ptr %i.grm, i64 -2
  %i.gul = getelementptr inbounds i8, ptr %i.grn, i64 -2
  %i.gum = getelementptr inbounds i8, ptr %i.gro, i64 -2
  %i.gun = load i16, ptr %i.guj, align 2, !tbaa !269
  %i.guo = load i16, ptr %i.guk, align 2, !tbaa !269
  %i.gup = load i16, ptr %i.gul, align 2, !tbaa !269
  %i.guq = load i16, ptr %i.gum, align 2, !tbaa !269
  %i.gur = insertelement <4 x i16> poison, i16 %i.gun, i64 0
  %i.gus = insertelement <4 x i16> %i.gur, i16 %i.guo, i64 1
  %i.gut = insertelement <4 x i16> %i.gus, i16 %i.gup, i64 2
  %i.guu = insertelement <4 x i16> %i.gut, i16 %i.guq, i64 3
  %i.guv = zext <4 x i16> %i.guu to <4 x i32>
  %i.guw = shl nuw <4 x i32> %i.guv, splat (i32 16)
  %i.gux = bitcast <4 x i32> %i.guw to <4 x float>
  %i.guy = fmul fast <4 x float> %strided.vec832, %i.gux
  %i.guz = load i16, ptr %i.grl, align 2, !tbaa !269
  %i.gva = load i16, ptr %i.grm, align 2, !tbaa !269
  %i.gvb = load i16, ptr %i.grn, align 2, !tbaa !269
  %i.gvc = load i16, ptr %i.gro, align 2, !tbaa !269
  %i.gvd = insertelement <4 x i16> poison, i16 %i.guz, i64 0
  %i.gve = insertelement <4 x i16> %i.gvd, i16 %i.gva, i64 1
  %i.gvf = insertelement <4 x i16> %i.gve, i16 %i.gvb, i64 2
  %i.gvg = insertelement <4 x i16> %i.gvf, i16 %i.gvc, i64 3
  %i.gvh = zext <4 x i16> %i.gvg to <4 x i32>
  %i.gvi = shl nuw <4 x i32> %i.gvh, splat (i32 16)
  %i.gvj = bitcast <4 x i32> %i.gvi to <4 x float>
  %i.gvk = fmul fast <4 x float> %strided.vec833, %i.gvj
  %i.gvl = fadd fast <4 x float> %i.guy, %i.gvk
  %i.gvm = getelementptr inbounds nuw i8, ptr %i.grl, i64 2
  %i.gvn = getelementptr inbounds nuw i8, ptr %i.grm, i64 2
  %i.gvo = getelementptr inbounds nuw i8, ptr %i.grn, i64 2
  %i.gvp = getelementptr inbounds nuw i8, ptr %i.gro, i64 2
  %i.gvq = load i16, ptr %i.gvm, align 2, !tbaa !269
  %i.gvr = load i16, ptr %i.gvn, align 2, !tbaa !269
  %i.gvs = load i16, ptr %i.gvo, align 2, !tbaa !269
  %i.gvt = load i16, ptr %i.gvp, align 2, !tbaa !269
  %i.gvu = insertelement <4 x i16> poison, i16 %i.gvq, i64 0
  %i.gvv = insertelement <4 x i16> %i.gvu, i16 %i.gvr, i64 1
  %i.gvw = insertelement <4 x i16> %i.gvv, i16 %i.gvs, i64 2
  %i.gvx = insertelement <4 x i16> %i.gvw, i16 %i.gvt, i64 3
  %i.gvy = zext <4 x i16> %i.gvx to <4 x i32>
  %i.gvz = shl nuw <4 x i32> %i.gvy, splat (i32 16)
  %i.gwa = bitcast <4 x i32> %i.gvz to <4 x float>
  %i.gwb = fmul fast <4 x float> %strided.vec834, %i.gwa
  %i.gwc = fadd fast <4 x float> %i.gvl, %i.gwb
  %i.gwd = getelementptr inbounds nuw i8, ptr %i.grl, i64 4
  %i.gwe = getelementptr inbounds nuw i8, ptr %i.grm, i64 4
  %i.gwf = getelementptr inbounds nuw i8, ptr %i.grn, i64 4
  %i.gwg = getelementptr inbounds nuw i8, ptr %i.gro, i64 4
  %i.gwh = load i16, ptr %i.gwd, align 2, !tbaa !269
  %i.gwi = load i16, ptr %i.gwe, align 2, !tbaa !269
  %i.gwj = load i16, ptr %i.gwf, align 2, !tbaa !269
  %i.gwk = load i16, ptr %i.gwg, align 2, !tbaa !269
  %i.gwl = insertelement <4 x i16> poison, i16 %i.gwh, i64 0
  %i.gwm = insertelement <4 x i16> %i.gwl, i16 %i.gwi, i64 1
  %i.gwn = insertelement <4 x i16> %i.gwm, i16 %i.gwj, i64 2
  %i.gwo = insertelement <4 x i16> %i.gwn, i16 %i.gwk, i64 3
  %i.gwp = zext <4 x i16> %i.gwo to <4 x i32>
  %i.gwq = shl nuw <4 x i32> %i.gwp, splat (i32 16)
  %i.gwr = bitcast <4 x i32> %i.gwq to <4 x float>
  %i.gws = fmul fast <4 x float> %strided.vec835, %i.gwr
  %i.gwt = fadd fast <4 x float> %i.gwc, %i.gws
  %i.gwu = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %index828
  store <4 x float> %i.gwt, ptr %i.gwu, align 4, !tbaa !70, !alias.scope !423, !noalias !424
  %i.gwv = getelementptr inbounds i8, ptr %i.grp, i64 -2
  %i.gww = getelementptr inbounds i8, ptr %i.grq, i64 -2
  %i.gwx = getelementptr inbounds i8, ptr %i.grr, i64 -2
  %i.gwy = getelementptr inbounds i8, ptr %i.grs, i64 -2
  %i.gwz = load i16, ptr %i.gwv, align 2, !tbaa !269
  %i.gxa = load i16, ptr %i.gww, align 2, !tbaa !269
  %i.gxb = load i16, ptr %i.gwx, align 2, !tbaa !269
  %i.gxc = load i16, ptr %i.gwy, align 2, !tbaa !269
  %i.gxd = insertelement <4 x i16> poison, i16 %i.gwz, i64 0
  %i.gxe = insertelement <4 x i16> %i.gxd, i16 %i.gxa, i64 1
  %i.gxf = insertelement <4 x i16> %i.gxe, i16 %i.gxb, i64 2
  %i.gxg = insertelement <4 x i16> %i.gxf, i16 %i.gxc, i64 3
  %i.gxh = zext <4 x i16> %i.gxg to <4 x i32>
  %i.gxi = shl nuw <4 x i32> %i.gxh, splat (i32 16)
  %i.gxj = bitcast <4 x i32> %i.gxi to <4 x float>
  %i.gxk = fmul fast <4 x float> %strided.vec832, %i.gxj
  %i.gxl = load i16, ptr %i.grp, align 2, !tbaa !269
  %i.gxm = load i16, ptr %i.grq, align 2, !tbaa !269
  %i.gxn = load i16, ptr %i.grr, align 2, !tbaa !269
  %i.gxo = load i16, ptr %i.grs, align 2, !tbaa !269
  %i.gxp = insertelement <4 x i16> poison, i16 %i.gxl, i64 0
  %i.gxq = insertelement <4 x i16> %i.gxp, i16 %i.gxm, i64 1
  %i.gxr = insertelement <4 x i16> %i.gxq, i16 %i.gxn, i64 2
  %i.gxs = insertelement <4 x i16> %i.gxr, i16 %i.gxo, i64 3
  %i.gxt = zext <4 x i16> %i.gxs to <4 x i32>
  %i.gxu = shl nuw <4 x i32> %i.gxt, splat (i32 16)
  %i.gxv = bitcast <4 x i32> %i.gxu to <4 x float>
  %i.gxw = fmul fast <4 x float> %strided.vec833, %i.gxv
  %i.gxx = fadd fast <4 x float> %i.gxk, %i.gxw
  %i.gxy = getelementptr inbounds nuw i8, ptr %i.grp, i64 2
  %i.gxz = getelementptr inbounds nuw i8, ptr %i.grq, i64 2
  %i.gya = getelementptr inbounds nuw i8, ptr %i.grr, i64 2
  %i.gyb = getelementptr inbounds nuw i8, ptr %i.grs, i64 2
  %i.gyc = load i16, ptr %i.gxy, align 2, !tbaa !269
  %i.gyd = load i16, ptr %i.gxz, align 2, !tbaa !269
  %i.gye = load i16, ptr %i.gya, align 2, !tbaa !269
  %i.gyf = load i16, ptr %i.gyb, align 2, !tbaa !269
  %i.gyg = insertelement <4 x i16> poison, i16 %i.gyc, i64 0
  %i.gyh = insertelement <4 x i16> %i.gyg, i16 %i.gyd, i64 1
  %i.gyi = insertelement <4 x i16> %i.gyh, i16 %i.gye, i64 2
  %i.gyj = insertelement <4 x i16> %i.gyi, i16 %i.gyf, i64 3
  %i.gyk = zext <4 x i16> %i.gyj to <4 x i32>
  %i.gyl = shl nuw <4 x i32> %i.gyk, splat (i32 16)
  %i.gym = bitcast <4 x i32> %i.gyl to <4 x float>
  %i.gyn = fmul fast <4 x float> %strided.vec834, %i.gym
  %i.gyo = fadd fast <4 x float> %i.gxx, %i.gyn
  %i.gyp = getelementptr inbounds nuw i8, ptr %i.grp, i64 4
  %i.gyq = getelementptr inbounds nuw i8, ptr %i.grq, i64 4
  %i.gyr = getelementptr inbounds nuw i8, ptr %i.grr, i64 4
  %i.gys = getelementptr inbounds nuw i8, ptr %i.grs, i64 4
  %i.gyt = load i16, ptr %i.gyp, align 2, !tbaa !269
  %i.gyu = load i16, ptr %i.gyq, align 2, !tbaa !269
  %i.gyv = load i16, ptr %i.gyr, align 2, !tbaa !269
  %i.gyw = load i16, ptr %i.gys, align 2, !tbaa !269
  %i.gyx = insertelement <4 x i16> poison, i16 %i.gyt, i64 0
  %i.gyy = insertelement <4 x i16> %i.gyx, i16 %i.gyu, i64 1
  %i.gyz = insertelement <4 x i16> %i.gyy, i16 %i.gyv, i64 2
  %i.gza = insertelement <4 x i16> %i.gyz, i16 %i.gyw, i64 3
  %i.gzb = zext <4 x i16> %i.gza to <4 x i32>
  %i.gzc = shl nuw <4 x i32> %i.gzb, splat (i32 16)
  %i.gzd = bitcast <4 x i32> %i.gzc to <4 x float>
  %i.gze = fmul fast <4 x float> %strided.vec835, %i.gzd
  %i.gzf = fadd fast <4 x float> %i.gyo, %i.gze
  %i.gzg = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %index828
  store <4 x float> %i.gzf, ptr %i.gzg, align 4, !tbaa !70, !alias.scope !425, !noalias !426
  %i.gzh = getelementptr inbounds i8, ptr %i.grt, i64 -2
  %i.gzi = getelementptr inbounds i8, ptr %i.gru, i64 -2
  %i.gzj = getelementptr inbounds i8, ptr %i.grv, i64 -2
  %i.gzk = getelementptr inbounds i8, ptr %i.grw, i64 -2
  %i.gzl = load i16, ptr %i.gzh, align 2, !tbaa !269
  %i.gzm = load i16, ptr %i.gzi, align 2, !tbaa !269
  %i.gzn = load i16, ptr %i.gzj, align 2, !tbaa !269
  %i.gzo = load i16, ptr %i.gzk, align 2, !tbaa !269
  %i.gzp = insertelement <4 x i16> poison, i16 %i.gzl, i64 0
  %i.gzq = insertelement <4 x i16> %i.gzp, i16 %i.gzm, i64 1
  %i.gzr = insertelement <4 x i16> %i.gzq, i16 %i.gzn, i64 2
  %i.gzs = insertelement <4 x i16> %i.gzr, i16 %i.gzo, i64 3
  %i.gzt = zext <4 x i16> %i.gzs to <4 x i32>
  %i.gzu = shl nuw <4 x i32> %i.gzt, splat (i32 16)
  %i.gzv = bitcast <4 x i32> %i.gzu to <4 x float>
  %i.gzw = fmul fast <4 x float> %strided.vec832, %i.gzv
  %i.gzx = load i16, ptr %i.grt, align 2, !tbaa !269
  %i.gzy = load i16, ptr %i.gru, align 2, !tbaa !269
  %i.gzz = load i16, ptr %i.grv, align 2, !tbaa !269
  %i.haa = load i16, ptr %i.grw, align 2, !tbaa !269
  %i.hab = insertelement <4 x i16> poison, i16 %i.gzx, i64 0
  %i.hac = insertelement <4 x i16> %i.hab, i16 %i.gzy, i64 1
  %i.had = insertelement <4 x i16> %i.hac, i16 %i.gzz, i64 2
  %i.hae = insertelement <4 x i16> %i.had, i16 %i.haa, i64 3
  %i.haf = zext <4 x i16> %i.hae to <4 x i32>
  %i.hag = shl nuw <4 x i32> %i.haf, splat (i32 16)
  %i.hah = bitcast <4 x i32> %i.hag to <4 x float>
  %i.hai = fmul fast <4 x float> %strided.vec833, %i.hah
  %i.haj = fadd fast <4 x float> %i.gzw, %i.hai
  %i.hak = getelementptr inbounds nuw i8, ptr %i.grt, i64 2
  %i.hal = getelementptr inbounds nuw i8, ptr %i.gru, i64 2
  %i.ham = getelementptr inbounds nuw i8, ptr %i.grv, i64 2
  %i.han = getelementptr inbounds nuw i8, ptr %i.grw, i64 2
  %i.hao = load i16, ptr %i.hak, align 2, !tbaa !269
  %i.hap = load i16, ptr %i.hal, align 2, !tbaa !269
  %i.haq = load i16, ptr %i.ham, align 2, !tbaa !269
  %i.har = load i16, ptr %i.han, align 2, !tbaa !269
  %i.has = insertelement <4 x i16> poison, i16 %i.hao, i64 0
  %i.hat = insertelement <4 x i16> %i.has, i16 %i.hap, i64 1
  %i.hau = insertelement <4 x i16> %i.hat, i16 %i.haq, i64 2
  %i.hav = insertelement <4 x i16> %i.hau, i16 %i.har, i64 3
  %i.haw = zext <4 x i16> %i.hav to <4 x i32>
  %i.hax = shl nuw <4 x i32> %i.haw, splat (i32 16)
  %i.hay = bitcast <4 x i32> %i.hax to <4 x float>
  %i.haz = fmul fast <4 x float> %strided.vec834, %i.hay
  %i.hba = fadd fast <4 x float> %i.haj, %i.haz
  %i.hbb = getelementptr inbounds nuw i8, ptr %i.grt, i64 4
  %i.hbc = getelementptr inbounds nuw i8, ptr %i.gru, i64 4
  %i.hbd = getelementptr inbounds nuw i8, ptr %i.grv, i64 4
  %i.hbe = getelementptr inbounds nuw i8, ptr %i.grw, i64 4
  %i.hbf = load i16, ptr %i.hbb, align 2, !tbaa !269
  %i.hbg = load i16, ptr %i.hbc, align 2, !tbaa !269
  %i.hbh = load i16, ptr %i.hbd, align 2, !tbaa !269
  %i.hbi = load i16, ptr %i.hbe, align 2, !tbaa !269
  %i.hbj = insertelement <4 x i16> poison, i16 %i.hbf, i64 0
  %i.hbk = insertelement <4 x i16> %i.hbj, i16 %i.hbg, i64 1
  %i.hbl = insertelement <4 x i16> %i.hbk, i16 %i.hbh, i64 2
  %i.hbm = insertelement <4 x i16> %i.hbl, i16 %i.hbi, i64 3
  %i.hbn = zext <4 x i16> %i.hbm to <4 x i32>
  %i.hbo = shl nuw <4 x i32> %i.hbn, splat (i32 16)
  %i.hbp = bitcast <4 x i32> %i.hbo to <4 x float>
  %i.hbq = fmul fast <4 x float> %strided.vec835, %i.hbp
  %i.hbr = fadd fast <4 x float> %i.hba, %i.hbq
  %i.hbs = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %index828
  store <4 x float> %i.hbr, ptr %i.hbs, align 4, !tbaa !70, !alias.scope !427, !noalias !414
  %index.next836 = add nuw i64 %index828, 4       ; 2 uses
  %i.hbt = icmp eq i64 %index.next836, %n.vec826
  br i1 %i.hbt, label %vec.epilog.middle.block837, label %vec.epilog.vector.body827, !llvm.loop !429

vec.epilog.middle.block837:                       ; preds = %vec.epilog.vector.body827
  br i1 %cmp.n838, label %.loopexit.i132, label %.lr.ph.i158.preheader

.lr.ph.i158.preheader:                            ; preds = %vector.memcheck759, %iter.check821, %vec.epilog.iter.check823, %vec.epilog.middle.block837
  %indvars.iv.i159.ph = phi i64 [ 0, %iter.check821 ], [ 0, %vector.memcheck759 ], [ %n.vec807, %vec.epilog.iter.check823 ], [ %n.vec826, %vec.epilog.middle.block837 ]
  %.0264329.i.ph = phi ptr [ %i.clc, %iter.check821 ], [ %i.clc, %vector.memcheck759 ], [ %i.clu, %vec.epilog.iter.check823 ], [ %i.clw, %vec.epilog.middle.block837 ]
  br label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.lr.ph.i158.preheader, %.lr.ph.i158
  %indvars.iv.i159 = phi i64 [ %indvars.iv.next.i160, %.lr.ph.i158 ], [ %indvars.iv.i159.ph, %.lr.ph.i158.preheader ] ; 6 uses
  %.0264329.i = phi ptr [ %i.hdi, %.lr.ph.i158 ], [ %.0264329.i.ph, %.lr.ph.i158.preheader ] ; 2 uses
  %i.hbu = getelementptr inbounds nuw [4 x i8], ptr %i.cld, i64 %indvars.iv.i159
  %i.hbv = load i32, ptr %i.hbu, align 4, !tbaa !25
  %i.hbw = sext i32 %i.hbv to i64                 ; 4 uses
  %i.hbx = getelementptr inbounds [2 x i8], ptr %i.fje, i64 %i.hbw
  %i.hby = getelementptr inbounds [2 x i8], ptr %i.fjh, i64 %i.hbw
  %i.hbz = getelementptr inbounds [2 x i8], ptr %i.fjl, i64 %i.hbw
  %i.hca = getelementptr inbounds [2 x i8], ptr %i.fjp, i64 %i.hbw
  %i.hcb = getelementptr inbounds i8, ptr %i.hbx, i64 -2
  %i.hcc = load <4 x float>, ptr %.0264329.i, align 4, !tbaa !70 ; 4 uses
  %i.hcd = load <4 x i16>, ptr %i.hcb, align 2, !tbaa !269
  %i.hce = zext <4 x i16> %i.hcd to <4 x i32>
  %i.hcf = shl nuw <4 x i32> %i.hce, splat (i32 16)
  %i.hcg = bitcast <4 x i32> %i.hcf to <4 x float>
  %i.hch = fmul fast <4 x float> %i.hcc, %i.hcg
  %i.hci = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hch)
  %i.hcj = getelementptr inbounds nuw [4 x i8], ptr %.0249345.i, i64 %indvars.iv.i159
  store float %i.hci, ptr %i.hcj, align 4, !tbaa !70
  %i.hck = getelementptr inbounds i8, ptr %i.hby, i64 -2
  %i.hcl = load <4 x i16>, ptr %i.hck, align 2, !tbaa !269
  %i.hcm = zext <4 x i16> %i.hcl to <4 x i32>
  %i.hcn = shl nuw <4 x i32> %i.hcm, splat (i32 16)
  %i.hco = bitcast <4 x i32> %i.hcn to <4 x float>
  %i.hcp = fmul fast <4 x float> %i.hcc, %i.hco
  %i.hcq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hcp)
  %i.hcr = getelementptr inbounds nuw [4 x i8], ptr %.0251344.i, i64 %indvars.iv.i159
  store float %i.hcq, ptr %i.hcr, align 4, !tbaa !70
  %i.hcs = getelementptr inbounds i8, ptr %i.hbz, i64 -2
  %i.hct = load <4 x i16>, ptr %i.hcs, align 2, !tbaa !269
  %i.hcu = zext <4 x i16> %i.hct to <4 x i32>
  %i.hcv = shl nuw <4 x i32> %i.hcu, splat (i32 16)
  %i.hcw = bitcast <4 x i32> %i.hcv to <4 x float>
  %i.hcx = fmul fast <4 x float> %i.hcc, %i.hcw
  %i.hcy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hcx)
  %i.hcz = getelementptr inbounds nuw [4 x i8], ptr %.0253343.i, i64 %indvars.iv.i159
  store float %i.hcy, ptr %i.hcz, align 4, !tbaa !70
  %i.hda = getelementptr inbounds i8, ptr %i.hca, i64 -2
  %i.hdb = load <4 x i16>, ptr %i.hda, align 2, !tbaa !269
  %i.hdc = zext <4 x i16> %i.hdb to <4 x i32>
  %i.hdd = shl nuw <4 x i32> %i.hdc, splat (i32 16)
  %i.hde = bitcast <4 x i32> %i.hdd to <4 x float>
  %i.hdf = fmul fast <4 x float> %i.hcc, %i.hde
  %i.hdg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hdf)
  %i.hdh = getelementptr inbounds nuw [4 x i8], ptr %.0255342.i, i64 %indvars.iv.i159
  store float %i.hdg, ptr %i.hdh, align 4, !tbaa !70
  %i.hdi = getelementptr inbounds nuw i8, ptr %.0264329.i, i64 16
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %i.cln
  br i1 %exitcond.not.i161, label %.loopexit.i132, label %.lr.ph.i158, !llvm.loop !430

.loopexit.i132:                                   ; preds = %.lr.ph.i158, %.lr.ph333.i, %.lr.ph336.i, %.lr.ph339.i.prol.loopexit, %.lr.ph339.i, %middle.block818, %vec.epilog.middle.block837, %middle.block736, %vec.epilog.middle.block755, %middle.block671, %vec.epilog.middle.block690, %middle.block620, %vec.epilog.middle.block639, %bb.gx, %bb.gw, %bb.gu, %bb.gs, %bb.gq
  %.1256.i133 = phi ptr [ %.0255342.i, %bb.gq ], [ %.0249345.i, %bb.gs ], [ %.0251344.i, %bb.gu ], [ %.0253343.i, %bb.gw ], [ %.0255342.i, %bb.gx ], [ %.0251344.i, %middle.block671 ], [ %.0253343.i, %middle.block736 ], [ %.0249345.i, %middle.block620 ], [ %.0255342.i, %middle.block818 ], [ %.0249345.i, %vec.epilog.middle.block639 ], [ %.0253343.i, %.lr.ph333.i ], [ %.0251344.i, %vec.epilog.middle.block690 ], [ %.0249345.i, %.lr.ph339.i.prol.loopexit ], [ %.0253343.i, %vec.epilog.middle.block755 ], [ %.0251344.i, %.lr.ph336.i ], [ %.0255342.i, %vec.epilog.middle.block837 ], [ %.0249345.i, %.lr.ph339.i ], [ %.0255342.i, %.lr.ph.i158 ] ; 7 uses
  %.1254.i = phi ptr [ %.0253343.i, %bb.gq ], [ %.0255342.i, %bb.gs ], [ %.0249345.i, %bb.gu ], [ %.0251344.i, %bb.gw ], [ %.0253343.i, %bb.gx ], [ %.0249345.i, %middle.block671 ], [ %.0251344.i, %middle.block736 ], [ %.0255342.i, %middle.block620 ], [ %.0253343.i, %middle.block818 ], [ %.0255342.i, %vec.epilog.middle.block639 ], [ %.0251344.i, %.lr.ph333.i ], [ %.0249345.i, %vec.epilog.middle.block690 ], [ %.0255342.i, %.lr.ph339.i.prol.loopexit ], [ %.0251344.i, %vec.epilog.middle.block755 ], [ %.0249345.i, %.lr.ph336.i ], [ %.0253343.i, %vec.epilog.middle.block837 ], [ %.0255342.i, %.lr.ph339.i ], [ %.0253343.i, %.lr.ph.i158 ] ; 7 uses
  %.1252.i = phi ptr [ %.0251344.i, %bb.gq ], [ %.0253343.i, %bb.gs ], [ %.0255342.i, %bb.gu ], [ %.0249345.i, %bb.gw ], [ %.0251344.i, %bb.gx ], [ %.0255342.i, %middle.block671 ], [ %.0249345.i, %middle.block736 ], [ %.0253343.i, %middle.block620 ], [ %.0251344.i, %middle.block818 ], [ %.0253343.i, %vec.epilog.middle.block639 ], [ %.0249345.i, %.lr.ph333.i ], [ %.0255342.i, %vec.epilog.middle.block690 ], [ %.0253343.i, %.lr.ph339.i.prol.loopexit ], [ %.0249345.i, %vec.epilog.middle.block755 ], [ %.0255342.i, %.lr.ph336.i ], [ %.0251344.i, %vec.epilog.middle.block837 ], [ %.0253343.i, %.lr.ph339.i ], [ %.0251344.i, %.lr.ph.i158 ] ; 7 uses
  %.1250.i = phi ptr [ %.0249345.i, %bb.gq ], [ %.0251344.i, %bb.gs ], [ %.0253343.i, %bb.gu ], [ %.0255342.i, %bb.gw ], [ %.0249345.i, %bb.gx ], [ %.0253343.i, %middle.block671 ], [ %.0255342.i, %middle.block736 ], [ %.0251344.i, %middle.block620 ], [ %.0249345.i, %middle.block818 ], [ %.0251344.i, %vec.epilog.middle.block639 ], [ %.0255342.i, %.lr.ph333.i ], [ %.0253343.i, %vec.epilog.middle.block690 ], [ %.0251344.i, %.lr.ph339.i.prol.loopexit ], [ %.0255342.i, %vec.epilog.middle.block755 ], [ %.0253343.i, %.lr.ph336.i ], [ %.0249345.i, %vec.epilog.middle.block837 ], [ %.0251344.i, %.lr.ph339.i ], [ %.0249345.i, %.lr.ph.i158 ] ; 7 uses
  %i.hdj = mul i64 %i.clo, %indvars.iv367.i
  %i.hdk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.hdj ; 6 uses
  %i.hdl = load float, ptr %.0346.i, align 4, !tbaa !70 ; 6 uses
  %i.hdm = getelementptr inbounds nuw i8, ptr %.0346.i, i64 4
  %i.hdn = load float, ptr %i.hdm, align 4, !tbaa !70 ; 6 uses
  %i.hdo = getelementptr inbounds nuw i8, ptr %.0346.i, i64 8
  %i.hdp = load float, ptr %i.hdo, align 4, !tbaa !70 ; 6 uses
  %i.hdq = getelementptr inbounds nuw i8, ptr %.0346.i, i64 12
  %i.hdr = load float, ptr %i.hdq, align 4, !tbaa !70 ; 6 uses
  %i.hds = insertelement <16 x float> poison, float %i.hdl, i64 0
  %i.hdt = shufflevector <16 x float> %i.hds, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hdu = insertelement <16 x float> poison, float %i.hdn, i64 0
  %i.hdv = shufflevector <16 x float> %i.hdu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hdw = insertelement <16 x float> poison, float %i.hdp, i64 0
  %i.hdx = shufflevector <16 x float> %i.hdw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hdy = insertelement <16 x float> poison, float %i.hdr, i64 0
  %i.hdz = shufflevector <16 x float> %i.hdy, <16 x float> poison, <16 x i32> zeroinitializer
  br i1 %i.clm, label %.lr.ph.i.i154, label %._crit_edge.i.i134

.lr.ph.i.i154:                                    ; preds = %.loopexit.i132, %.lr.ph.i.i154
  %indvars.iv.i.i155 = phi i64 [ %indvars.iv.next.i.i156, %.lr.ph.i.i154 ], [ 0, %.loopexit.i132 ] ; 6 uses
  %i.hea = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv.i.i155
  %i.heb = load <16 x float>, ptr %i.hea, align 1, !tbaa !17
  %i.hec = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv.i.i155
  %i.hed = load <16 x float>, ptr %i.hec, align 1, !tbaa !17
  %i.hee = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv.i.i155
  %i.hef = load <16 x float>, ptr %i.hee, align 1, !tbaa !17
  %i.heg = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %indvars.iv.i.i155
  %i.heh = load <16 x float>, ptr %i.heg, align 1, !tbaa !17
  %i.hei = fmul fast <16 x float> %i.heb, %i.hdt
  %i.hej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hed, <16 x float> nofpclass(nan inf) %i.hdv, <16 x float> nofpclass(nan inf) %i.hei)
  %i.hek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hef, <16 x float> nofpclass(nan inf) %i.hdx, <16 x float> nofpclass(nan inf) %i.hej)
  %i.hel = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.heh, <16 x float> nofpclass(nan inf) %i.hdz, <16 x float> nofpclass(nan inf) %i.hek)
  %i.hem = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %indvars.iv.i.i155
  %i.hen = bitcast <16 x float> %i.hel to <16 x i32>
  %i.heo = lshr <16 x i32> %i.hen, splat (i32 16) ; 2 uses
  %i.hep = shufflevector <16 x i32> %i.heo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.heq = shufflevector <16 x i32> %i.heo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.her = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.hep, <8 x i32> %i.heq)
  %i.hes = bitcast <16 x i16> %i.her to <4 x i64>
  %i.het = shufflevector <4 x i64> %i.hes, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.het, ptr %i.hem, align 1, !tbaa !17
  %indvars.iv.next.i.i156 = add nuw nsw i64 %indvars.iv.i.i155, 16 ; 3 uses
  %i.heu = or disjoint i64 %indvars.iv.next.i.i156, 15
  %i.hev = icmp samesign ult i64 %i.heu, %i.cln
  br i1 %i.hev, label %.lr.ph.i.i154, label %._crit_edge.loopexit.i.i157, !llvm.loop !358

._crit_edge.loopexit.i.i157:                      ; preds = %.lr.ph.i.i154
  %i.hew = trunc nuw nsw i64 %indvars.iv.next.i.i156 to i32
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %._crit_edge.loopexit.i.i157, %.loopexit.i132
  %.0.lcssa.i.i135 = phi i32 [ 0, %.loopexit.i132 ], [ %i.hew, %._crit_edge.loopexit.i.i157 ] ; 3 uses
  %i.hex = insertelement <8 x float> poison, float %i.hdl, i64 0
  %i.hey = shufflevector <8 x float> %i.hex, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hez = insertelement <8 x float> poison, float %i.hdn, i64 0
  %i.hfa = shufflevector <8 x float> %i.hez, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hfb = insertelement <8 x float> poison, float %i.hdp, i64 0
  %i.hfc = shufflevector <8 x float> %i.hfb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hfd = insertelement <8 x float> poison, float %i.hdr, i64 0
  %i.hfe = shufflevector <8 x float> %i.hfd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hff = or disjoint i32 %.0.lcssa.i.i135, 7
  %i.hfg = icmp slt i32 %i.hff, %i.bx
  br i1 %i.hfg, label %.lr.ph104.preheader.i.i149, label %._crit_edge105.i.i136

.lr.ph104.preheader.i.i149:                       ; preds = %._crit_edge.i.i134
  %i.hfh = zext nneg i32 %.0.lcssa.i.i135 to i64
  br label %.lr.ph104.i.i150

.lr.ph104.i.i150:                                 ; preds = %.lr.ph104.i.i150, %.lr.ph104.preheader.i.i149
  %indvars.iv117.i.i151 = phi i64 [ %i.hfh, %.lr.ph104.preheader.i.i149 ], [ %indvars.iv.next118.i.i152, %.lr.ph104.i.i150 ] ; 6 uses
  %i.hfi = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv117.i.i151
  %i.hfj = load <8 x float>, ptr %i.hfi, align 1, !tbaa !17
  %i.hfk = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv117.i.i151
  %i.hfl = load <8 x float>, ptr %i.hfk, align 1, !tbaa !17
  %i.hfm = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv117.i.i151
  %i.hfn = load <8 x float>, ptr %i.hfm, align 1, !tbaa !17
  %i.hfo = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %indvars.iv117.i.i151
  %i.hfp = load <8 x float>, ptr %i.hfo, align 1, !tbaa !17
  %i.hfq = fmul fast <8 x float> %i.hfj, %i.hey
  %i.hfr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hfl, <8 x float> nofpclass(nan inf) %i.hfa, <8 x float> nofpclass(nan inf) %i.hfq)
  %i.hfs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hfn, <8 x float> nofpclass(nan inf) %i.hfc, <8 x float> nofpclass(nan inf) %i.hfr)
  %i.hft = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hfp, <8 x float> nofpclass(nan inf) %i.hfe, <8 x float> nofpclass(nan inf) %i.hfs)
  %i.hfu = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %indvars.iv117.i.i151
  %i.hfv = bitcast <8 x float> %i.hft to <8 x i32>
  %i.hfw = lshr <8 x i32> %i.hfv, splat (i32 16)  ; 2 uses
  %i.hfx = shufflevector <8 x i32> %i.hfw, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hfy = shufflevector <8 x i32> %i.hfw, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hfz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hfx, <4 x i32> %i.hfy)
  store <8 x i16> %i.hfz, ptr %i.hfu, align 1, !tbaa !17
  %indvars.iv.next118.i.i152 = add nuw nsw i64 %indvars.iv117.i.i151, 8 ; 3 uses
  %i.hga = icmp slt i64 %indvars.iv.next118.i.i152, %invariant.op.i.i131
  br i1 %i.hga, label %.lr.ph104.i.i150, label %._crit_edge105.loopexit.i.i153, !llvm.loop !359

._crit_edge105.loopexit.i.i153:                   ; preds = %.lr.ph104.i.i150
  %i.hgb = trunc nuw nsw i64 %indvars.iv.next118.i.i152 to i32
  br label %._crit_edge105.i.i136

._crit_edge105.i.i136:                            ; preds = %._crit_edge105.loopexit.i.i153, %._crit_edge.i.i134
  %.1.lcssa.i.i137 = phi i32 [ %.0.lcssa.i.i135, %._crit_edge.i.i134 ], [ %i.hgb, %._crit_edge105.loopexit.i.i153 ] ; 3 uses
  %i.hgc = insertelement <4 x float> poison, float %i.hdl, i64 0
  %i.hgd = shufflevector <4 x float> %i.hgc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hge = insertelement <4 x float> poison, float %i.hdn, i64 0
  %i.hgf = shufflevector <4 x float> %i.hge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hgg = insertelement <4 x float> poison, float %i.hdp, i64 0
  %i.hgh = shufflevector <4 x float> %i.hgg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hgi = insertelement <4 x float> poison, float %i.hdr, i64 0
  %i.hgj = shufflevector <4 x float> %i.hgi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hgk = or disjoint i32 %.1.lcssa.i.i137, 3
  %i.hgl = icmp slt i32 %i.hgk, %i.bx
  br i1 %i.hgl, label %.lr.ph109.preheader.i.i145, label %.preheader.i.i138

.lr.ph109.preheader.i.i145:                       ; preds = %._crit_edge105.i.i136
  %i.hgm = zext nneg i32 %.1.lcssa.i.i137 to i64
  br label %.lr.ph109.i.i146

.preheader.i.i138:                                ; preds = %.lr.ph109.i.i146, %._crit_edge105.i.i136
  %.2.lcssa.i.i139 = phi i32 [ %.1.lcssa.i.i137, %._crit_edge105.i.i136 ], [ %i.hkp, %.lr.ph109.i.i146 ] ; 3 uses
  %i.hgn = icmp slt i32 %.2.lcssa.i.i139, %i.bx
  br i1 %i.hgn, label %iter.check, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140

iter.check:                                       ; preds = %.preheader.i.i138
  %i.hgo = zext i32 %.2.lcssa.i.i139 to i64       ; 5 uses
  %i.hgp = xor i32 %.2.lcssa.i.i139, -1
  %i.hgq = add i32 %i.bx, %i.hgp                  ; 3 uses
  %i.hgr = zext i32 %i.hgq to i64
  %i.hgs = add nuw nsw i64 %i.hgr, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hgq, 7
  br i1 %min.iters.check, label %.lr.ph112.i.i142.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check568 = icmp ult i32 %i.hgq, 63
  br i1 %min.iters.check568, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hgt = and i64 %i.hgs, 56
  %n.vec = and i64 %i.hgs, 8589934528             ; 4 uses
  %i.hgu = add nuw nsw i64 %n.vec, %i.hgo
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.hdl, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert569 = insertelement <16 x float> poison, float %i.hdn, i64 0
  %broadcast.splat570 = shufflevector <16 x float> %broadcast.splatinsert569, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert571 = insertelement <16 x float> poison, float %i.hdp, i64 0
  %broadcast.splat572 = shufflevector <16 x float> %broadcast.splatinsert571, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert573 = insertelement <16 x float> poison, float %i.hdr, i64 0
  %broadcast.splat574 = shufflevector <16 x float> %broadcast.splatinsert573, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hgv = add nuw i64 %index, %i.hgo             ; 5 uses
  %i.hgw = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.hgv ; 4 uses
  %i.hgx = getelementptr inbounds nuw i8, ptr %i.hgw, i64 64
  %i.hgy = getelementptr inbounds nuw i8, ptr %i.hgw, i64 128
  %i.hgz = getelementptr inbounds nuw i8, ptr %i.hgw, i64 192
  %wide.load = load <16 x float>, ptr %i.hgw, align 4, !tbaa !70
  %wide.load575 = load <16 x float>, ptr %i.hgx, align 4, !tbaa !70
  %wide.load576 = load <16 x float>, ptr %i.hgy, align 4, !tbaa !70
  %wide.load577 = load <16 x float>, ptr %i.hgz, align 4, !tbaa !70
  %i.hha = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.hhb = fmul fast <16 x float> %wide.load575, %broadcast.splat
  %i.hhc = fmul fast <16 x float> %wide.load576, %broadcast.splat
  %i.hhd = fmul fast <16 x float> %wide.load577, %broadcast.splat
  %i.hhe = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.hgv ; 4 uses
  %i.hhf = getelementptr inbounds nuw i8, ptr %i.hhe, i64 64
  %i.hhg = getelementptr inbounds nuw i8, ptr %i.hhe, i64 128
  %i.hhh = getelementptr inbounds nuw i8, ptr %i.hhe, i64 192
  %wide.load578 = load <16 x float>, ptr %i.hhe, align 4, !tbaa !70
  %wide.load579 = load <16 x float>, ptr %i.hhf, align 4, !tbaa !70
  %wide.load580 = load <16 x float>, ptr %i.hhg, align 4, !tbaa !70
  %wide.load581 = load <16 x float>, ptr %i.hhh, align 4, !tbaa !70
  %i.hhi = fmul fast <16 x float> %wide.load578, %broadcast.splat570
  %i.hhj = fmul fast <16 x float> %wide.load579, %broadcast.splat570
  %i.hhk = fmul fast <16 x float> %wide.load580, %broadcast.splat570
  %i.hhl = fmul fast <16 x float> %wide.load581, %broadcast.splat570
  %i.hhm = fadd fast <16 x float> %i.hha, %i.hhi
  %i.hhn = fadd fast <16 x float> %i.hhb, %i.hhj
  %i.hho = fadd fast <16 x float> %i.hhc, %i.hhk
  %i.hhp = fadd fast <16 x float> %i.hhd, %i.hhl
  %i.hhq = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.hgv ; 4 uses
  %i.hhr = getelementptr inbounds nuw i8, ptr %i.hhq, i64 64
  %i.hhs = getelementptr inbounds nuw i8, ptr %i.hhq, i64 128
  %i.hht = getelementptr inbounds nuw i8, ptr %i.hhq, i64 192
  %wide.load582 = load <16 x float>, ptr %i.hhq, align 4, !tbaa !70
  %wide.load583 = load <16 x float>, ptr %i.hhr, align 4, !tbaa !70
  %wide.load584 = load <16 x float>, ptr %i.hhs, align 4, !tbaa !70
  %wide.load585 = load <16 x float>, ptr %i.hht, align 4, !tbaa !70
  %i.hhu = fmul fast <16 x float> %wide.load582, %broadcast.splat572
  %i.hhv = fmul fast <16 x float> %wide.load583, %broadcast.splat572
  %i.hhw = fmul fast <16 x float> %wide.load584, %broadcast.splat572
  %i.hhx = fmul fast <16 x float> %wide.load585, %broadcast.splat572
  %i.hhy = fadd fast <16 x float> %i.hhm, %i.hhu
  %i.hhz = fadd fast <16 x float> %i.hhn, %i.hhv
  %i.hia = fadd fast <16 x float> %i.hho, %i.hhw
  %i.hib = fadd fast <16 x float> %i.hhp, %i.hhx
  %i.hic = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %i.hgv ; 4 uses
  %i.hid = getelementptr inbounds nuw i8, ptr %i.hic, i64 64
  %i.hie = getelementptr inbounds nuw i8, ptr %i.hic, i64 128
  %i.hif = getelementptr inbounds nuw i8, ptr %i.hic, i64 192
  %wide.load586 = load <16 x float>, ptr %i.hic, align 4, !tbaa !70
  %wide.load587 = load <16 x float>, ptr %i.hid, align 4, !tbaa !70
  %wide.load588 = load <16 x float>, ptr %i.hie, align 4, !tbaa !70
  %wide.load589 = load <16 x float>, ptr %i.hif, align 4, !tbaa !70
  %i.hig = fmul fast <16 x float> %wide.load586, %broadcast.splat574
  %i.hih = fmul fast <16 x float> %wide.load587, %broadcast.splat574
  %i.hii = fmul fast <16 x float> %wide.load588, %broadcast.splat574
  %i.hij = fmul fast <16 x float> %wide.load589, %broadcast.splat574
  %i.hik = fadd fast <16 x float> %i.hhy, %i.hig
  %i.hil = fadd fast <16 x float> %i.hhz, %i.hih
  %i.him = fadd fast <16 x float> %i.hia, %i.hii
  %i.hin = fadd fast <16 x float> %i.hib, %i.hij
  %i.hio = bitcast <16 x float> %i.hik to <16 x i32>
  %i.hip = bitcast <16 x float> %i.hil to <16 x i32>
  %i.hiq = bitcast <16 x float> %i.him to <16 x i32>
  %i.hir = bitcast <16 x float> %i.hin to <16 x i32>
  %i.his = lshr <16 x i32> %i.hio, splat (i32 16)
  %i.hit = lshr <16 x i32> %i.hip, splat (i32 16)
  %i.hiu = lshr <16 x i32> %i.hiq, splat (i32 16)
  %i.hiv = lshr <16 x i32> %i.hir, splat (i32 16)
  %i.hiw = trunc nuw <16 x i32> %i.his to <16 x i16>
  %i.hix = trunc nuw <16 x i32> %i.hit to <16 x i16>
  %i.hiy = trunc nuw <16 x i32> %i.hiu to <16 x i16>
  %i.hiz = trunc nuw <16 x i32> %i.hiv to <16 x i16>
  %i.hja = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %i.hgv ; 4 uses
  %i.hjb = getelementptr inbounds nuw i8, ptr %i.hja, i64 32
  %i.hjc = getelementptr inbounds nuw i8, ptr %i.hja, i64 64
  %i.hjd = getelementptr inbounds nuw i8, ptr %i.hja, i64 96
  store <16 x i16> %i.hiw, ptr %i.hja, align 2, !tbaa !269
  store <16 x i16> %i.hix, ptr %i.hjb, align 2, !tbaa !269
  store <16 x i16> %i.hiy, ptr %i.hjc, align 2, !tbaa !269
  store <16 x i16> %i.hiz, ptr %i.hjd, align 2, !tbaa !269
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.hje = icmp eq i64 %index.next, %n.vec
  br i1 %i.hje, label %middle.block, label %vector.body, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hgs, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hgt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.i.i142.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec590 = and i64 %i.hgs, 8589934584          ; 3 uses
  %i.hjf = add nuw nsw i64 %n.vec590, %i.hgo
  %broadcast.splatinsert591 = insertelement <8 x float> poison, float %i.hdl, i64 0
  %broadcast.splat592 = shufflevector <8 x float> %broadcast.splatinsert591, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert593 = insertelement <8 x float> poison, float %i.hdn, i64 0
  %broadcast.splat594 = shufflevector <8 x float> %broadcast.splatinsert593, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert595 = insertelement <8 x float> poison, float %i.hdp, i64 0
  %broadcast.splat596 = shufflevector <8 x float> %broadcast.splatinsert595, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert597 = insertelement <8 x float> poison, float %i.hdr, i64 0
  %broadcast.splat598 = shufflevector <8 x float> %broadcast.splatinsert597, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index599 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next604, %vec.epilog.vector.body ] ; 2 uses
  %i.hjg = add nuw i64 %index599, %i.hgo          ; 5 uses
  %i.hjh = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %i.hjg
  %wide.load600 = load <8 x float>, ptr %i.hjh, align 4, !tbaa !70
  %i.hji = fmul fast <8 x float> %wide.load600, %broadcast.splat592
  %i.hjj = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %i.hjg
  %wide.load601 = load <8 x float>, ptr %i.hjj, align 4, !tbaa !70
  %i.hjk = fmul fast <8 x float> %wide.load601, %broadcast.splat594
  %i.hjl = fadd fast <8 x float> %i.hji, %i.hjk
  %i.hjm = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %i.hjg
  %wide.load602 = load <8 x float>, ptr %i.hjm, align 4, !tbaa !70
  %i.hjn = fmul fast <8 x float> %wide.load602, %broadcast.splat596
  %i.hjo = fadd fast <8 x float> %i.hjl, %i.hjn
  %i.hjp = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %i.hjg
  %wide.load603 = load <8 x float>, ptr %i.hjp, align 4, !tbaa !70
  %i.hjq = fmul fast <8 x float> %wide.load603, %broadcast.splat598
  %i.hjr = fadd fast <8 x float> %i.hjo, %i.hjq
  %i.hjs = bitcast <8 x float> %i.hjr to <8 x i32>
  %i.hjt = lshr <8 x i32> %i.hjs, splat (i32 16)
  %i.hju = trunc nuw <8 x i32> %i.hjt to <8 x i16>
  %i.hjv = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %i.hjg
  store <8 x i16> %i.hju, ptr %i.hjv, align 2, !tbaa !269
  %index.next604 = add nuw i64 %index599, 8       ; 2 uses
  %i.hjw = icmp eq i64 %index.next604, %n.vec590
  br i1 %i.hjw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !432

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n605 = icmp eq i64 %i.hgs, %n.vec590
  br i1 %cmp.n605, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140, label %.lr.ph112.i.i142.preheader

.lr.ph112.i.i142.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv123.i.i143.ph = phi i64 [ %i.hgo, %iter.check ], [ %i.hgu, %vec.epilog.iter.check ], [ %i.hjf, %vec.epilog.middle.block ]
  br label %.lr.ph112.i.i142

.lr.ph109.i.i146:                                 ; preds = %.lr.ph109.i.i146, %.lr.ph109.preheader.i.i145
  %indvars.iv120.i.i147 = phi i64 [ %i.hgm, %.lr.ph109.preheader.i.i145 ], [ %indvars.iv.next121.i.i148, %.lr.ph109.i.i146 ] ; 6 uses
  %i.hjx = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv120.i.i147
  %i.hjy = load <4 x float>, ptr %i.hjx, align 1, !tbaa !17
  %i.hjz = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv120.i.i147
  %i.hka = load <4 x float>, ptr %i.hjz, align 1, !tbaa !17
  %i.hkb = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv120.i.i147
  %i.hkc = load <4 x float>, ptr %i.hkb, align 1, !tbaa !17
  %i.hkd = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %indvars.iv120.i.i147
  %i.hke = load <4 x float>, ptr %i.hkd, align 1, !tbaa !17
  %i.hkf = fmul fast <4 x float> %i.hjy, %i.hgd
  %i.hkg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hka, <4 x float> nofpclass(nan inf) %i.hgf, <4 x float> nofpclass(nan inf) %i.hkf)
  %i.hkh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hkc, <4 x float> nofpclass(nan inf) %i.hgh, <4 x float> nofpclass(nan inf) %i.hkg)
  %i.hki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hke, <4 x float> nofpclass(nan inf) %i.hgj, <4 x float> nofpclass(nan inf) %i.hkh)
  %i.hkj = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %indvars.iv120.i.i147
  %i.hkk = bitcast <4 x float> %i.hki to <4 x i32>
  %i.hkl = lshr <4 x i32> %i.hkk, splat (i32 16)
  %i.hkm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hkl, <4 x i32> poison)
  %i.hkn = bitcast <8 x i16> %i.hkm to <2 x i64>
  %i.hko = extractelement <2 x i64> %i.hkn, i64 0
  store i64 %i.hko, ptr %i.hkj, align 1, !tbaa !17
  %indvars.iv.next121.i.i148 = add nuw nsw i64 %indvars.iv120.i.i147, 4 ; 2 uses
  %i.hkp = trunc i64 %indvars.iv.next121.i.i148 to i32 ; 2 uses
  %i.hkq = or i32 %i.hkp, 3
  %i.hkr = icmp slt i32 %i.hkq, %i.bx
  br i1 %i.hkr, label %.lr.ph109.i.i146, label %.preheader.i.i138, !llvm.loop !362

.lr.ph112.i.i142:                                 ; preds = %.lr.ph112.i.i142.preheader, %.lr.ph112.i.i142
  %indvars.iv123.i.i143 = phi i64 [ %indvars.iv.next124.i.i144, %.lr.ph112.i.i142 ], [ %indvars.iv123.i.i143.ph, %.lr.ph112.i.i142.preheader ] ; 6 uses
  %i.hks = getelementptr inbounds nuw [4 x i8], ptr %.1250.i, i64 %indvars.iv123.i.i143
  %i.hkt = load float, ptr %i.hks, align 4, !tbaa !70
  %i.hku = fmul fast float %i.hkt, %i.hdl
  %i.hkv = getelementptr inbounds nuw [4 x i8], ptr %.1252.i, i64 %indvars.iv123.i.i143
  %i.hkw = load float, ptr %i.hkv, align 4, !tbaa !70
  %i.hkx = fmul fast float %i.hkw, %i.hdn
  %i.hky = fadd fast float %i.hku, %i.hkx
  %i.hkz = getelementptr inbounds nuw [4 x i8], ptr %.1254.i, i64 %indvars.iv123.i.i143
  %i.hla = load float, ptr %i.hkz, align 4, !tbaa !70
  %i.hlb = fmul fast float %i.hla, %i.hdp
  %i.hlc = fadd fast float %i.hky, %i.hlb
  %i.hld = getelementptr inbounds nuw [4 x i8], ptr %.1256.i133, i64 %indvars.iv123.i.i143
  %i.hle = load float, ptr %i.hld, align 4, !tbaa !70
  %i.hlf = fmul fast float %i.hle, %i.hdr
  %i.hlg = fadd fast float %i.hlc, %i.hlf
  %i.hlh = bitcast float %i.hlg to i32
  %i.hli = lshr i32 %i.hlh, 16
  %i.hlj = trunc nuw i32 %i.hli to i16
  %i.hlk = getelementptr inbounds nuw [2 x i8], ptr %i.hdk, i64 %indvars.iv123.i.i143
  store i16 %i.hlj, ptr %i.hlk, align 2, !tbaa !269
  %indvars.iv.next124.i.i144 = add nuw nsw i64 %indvars.iv123.i.i143, 1 ; 2 uses
  %i.hll = trunc nuw i64 %indvars.iv.next124.i.i144 to i32
  %i.hlm = icmp sgt i32 %i.bx, %i.hll
  br i1 %i.hlm, label %.lr.ph112.i.i142, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140, !llvm.loop !433

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i140: ; preds = %.lr.ph112.i.i142, %middle.block, %vec.epilog.middle.block, %.preheader.i.i138
  %i.hln = getelementptr inbounds nuw i8, ptr %.0346.i, i64 16
  %indvars.iv.next368.i = add nuw nsw i64 %indvars.iv367.i, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next368.i, %wide.trip.count370.i
  br i1 %exitcond371.not.i, label %._crit_edge.i130, label %bb.gq, !llvm.loop !434

bb.gy:                                            ; preds = %bb.gp
  %i.hlo = atomicrmw add ptr %i.coe, i32 -1 acq_rel, align 4
  %i.hlp = icmp eq i32 %i.hlo, 1
  br i1 %i.hlp, label %bb.gz, label %_ZN4ncnn3MatD2Ev.exit272.i

bb.gz:                                            ; preds = %bb.gy
  %i.hlq = load ptr, ptr %i.bj, align 8, !tbaa !44 ; 3 uses
  %.not3.i295.i = icmp eq ptr %i.hlq, null
  %i.hlr = load ptr, ptr %12, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i295.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.hls = load ptr, ptr %i.hlq, align 8, !tbaa !9
  %i.hlt = getelementptr inbounds nuw i8, ptr %i.hls, i64 24
  %i.hlu = load ptr, ptr %i.hlt, align 8
  invoke void %i.hlu(ptr noundef nonnull align 8 dereferenceable(8) %i.hlq, ptr noundef %i.hlr)
          to label %_ZN4ncnn3MatD2Ev.exit272.i unwind label %bb.hd, !inline_history !46

bb.hb:                                            ; preds = %bb.gz
  %.not.i309.i = icmp eq ptr %i.hlr, null
  br i1 %.not.i309.i, label %_ZN4ncnn3MatD2Ev.exit272.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @free(ptr noundef nonnull %i.hlr) #6
  br label %_ZN4ncnn3MatD2Ev.exit272.i

bb.hd:                                            ; preds = %bb.ha
  %i.hlv = landingpad { ptr, i32 }
          catch ptr null
  %i.hlw = extractvalue { ptr, i32 } %i.hlv, 0
  call void @__clang_call_terminate(ptr %i.hlw) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit272.i:                       ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gy, %bb.gp, %bb.go
  %.pn.pn.i = phi { ptr, i32 } [ %i.coc, %bb.go ], [ %i.cod, %bb.gy ], [ %i.cod, %bb.gp ], [ %i.cod, %bb.ha ], [ %i.cod, %bb.hb ], [ %i.cod, %bb.hc ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  %i.hlx = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.hlx, null
  br i1 %.not.i298.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.he

bb.he:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit272.i
  %i.hly = atomicrmw add ptr %i.hlx, i32 -1 acq_rel, align 4
  %i.hlz = icmp eq i32 %i.hly, 1
  br i1 %i.hlz, label %bb.hf, label %_ZN4ncnn3MatD2Ev.exit271.i

bb.hf:                                            ; preds = %bb.he
  %i.hma = load ptr, ptr %i.bg, align 8, !tbaa !44 ; 3 uses
  %.not3.i299.i = icmp eq ptr %i.hma, null
  %i.hmb = load ptr, ptr %11, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i299.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.hmc = load ptr, ptr %i.hma, align 8, !tbaa !9
  %i.hmd = getelementptr inbounds nuw i8, ptr %i.hmc, i64 24
  %i.hme = load ptr, ptr %i.hmd, align 8
  invoke void %i.hme(ptr noundef nonnull align 8 dereferenceable(8) %i.hma, ptr noundef %i.hmb)
          to label %_ZN4ncnn3MatD2Ev.exit271.i unwind label %bb.hj, !inline_history !46

bb.hh:                                            ; preds = %bb.hf
  %.not.i307.i = icmp eq ptr %i.hmb, null
  br i1 %.not.i307.i, label %_ZN4ncnn3MatD2Ev.exit271.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @free(ptr noundef nonnull %i.hmb) #6
  br label %_ZN4ncnn3MatD2Ev.exit271.i

bb.hj:                                            ; preds = %bb.hg
  %i.hmf = landingpad { ptr, i32 }
          catch ptr null
  %i.hmg = extractvalue { ptr, i32 } %i.hmf, 0
  call void @__clang_call_terminate(ptr %i.hmg) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit271.i:                       ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.he, %_ZN4ncnn3MatD2Ev.exit272.i, %bb.gn
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cob, %bb.gn ], [ %.pn.pn.i, %bb.he ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit272.i ], [ %.pn.pn.i, %bb.hg ], [ %.pn.pn.i, %bb.hh ], [ %.pn.pn.i, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.hmh = load ptr, ptr %i.bc, align 8, !tbaa !43 ; 2 uses
  %.not.i302.i = icmp eq ptr %i.hmh, null
  br i1 %.not.i302.i, label %_ZN4ncnn3MatD2Ev.exit.i129, label %bb.hk

bb.hk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit271.i
  %i.hmi = atomicrmw add ptr %i.hmh, i32 -1 acq_rel, align 4
  %i.hmj = icmp eq i32 %i.hmi, 1
  br i1 %i.hmj, label %bb.hl, label %_ZN4ncnn3MatD2Ev.exit.i129

bb.hl:                                            ; preds = %bb.hk
  %i.hmk = load ptr, ptr %i.bd, align 8, !tbaa !44 ; 3 uses
  %.not3.i303.i = icmp eq ptr %i.hmk, null
  %i.hml = load ptr, ptr %10, align 8, !tbaa !45  ; 3 uses
  br i1 %.not3.i303.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.hmm = load ptr, ptr %i.hmk, align 8, !tbaa !9
  %i.hmn = getelementptr inbounds nuw i8, ptr %i.hmm, i64 24
  %i.hmo = load ptr, ptr %i.hmn, align 8
  invoke void %i.hmo(ptr noundef nonnull align 8 dereferenceable(8) %i.hmk, ptr noundef %i.hml)
          to label %_ZN4ncnn3MatD2Ev.exit.i129 unwind label %bb.hp, !inline_history !46

bb.hn:                                            ; preds = %bb.hl
  %.not.i306.i = icmp eq ptr %i.hml, null
  br i1 %.not.i306.i, label %_ZN4ncnn3MatD2Ev.exit.i129, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @free(ptr noundef nonnull %i.hml) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i129

bb.hp:                                            ; preds = %bb.hm
  %i.hmp = landingpad { ptr, i32 }
          catch ptr null
  %i.hmq = extractvalue { ptr, i32 } %i.hmp, 0
  call void @__clang_call_terminate(ptr %i.hmq) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i129:                       ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk, %_ZN4ncnn3MatD2Ev.exit271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %.body

_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit274.i, %bb.gh, %bb.gj, %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL26resize_bicubic_image_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, %bb.fn
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hmr = load i32, ptr %i.b, align 4, !tbaa !25
  %i.hms = sext i32 %i.hmr to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hms
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.hq

bb.hq:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.hr:                                            ; preds = %bb.fo, %bb.dk, %bb.bg, %bb.c
  %i.hmt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i30, %bb.hr, %_ZN4ncnn3MatD2Ev.exit.i129, %_ZN4ncnn3MatD2Ev.exit.i78, %_ZN4ncnn3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn326.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.pn316.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i30 ], [ %.pn284.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i78 ], [ %i.hmt, %bb.hr ], [ %.pn.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit.i129 ]
  %i.hmu = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.hmu) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #19

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.floor.v16f32(<16 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_9
